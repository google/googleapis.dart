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

/// Discovery Engine API - v1
///
/// Discovery Engine API.
///
/// For more information, see
/// <https://cloud.google.com/generative-ai-app-builder/docs/>
///
/// Create an instance of [DiscoveryEngineApi] to access these resources:
///
/// - [MediaResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCmekConfigsResource]
///     - [ProjectsLocationsCollectionsResource]
///       - [ProjectsLocationsCollectionsDataConnectorResource]
///         - [ProjectsLocationsCollectionsDataConnectorOperationsResource]
///       - [ProjectsLocationsCollectionsDataStoresResource]
///         - [ProjectsLocationsCollectionsDataStoresBranchesResource]
/// - [ProjectsLocationsCollectionsDataStoresBranchesDocumentsResource]
/// - [ProjectsLocationsCollectionsDataStoresBranchesOperationsResource]
///         - [ProjectsLocationsCollectionsDataStoresCompletionConfigResource]
/// - [ProjectsLocationsCollectionsDataStoresCompletionSuggestionsResource]
///         - [ProjectsLocationsCollectionsDataStoresControlsResource]
///         - [ProjectsLocationsCollectionsDataStoresConversationsResource]
///         - [ProjectsLocationsCollectionsDataStoresCustomModelsResource]
///         - [ProjectsLocationsCollectionsDataStoresModelsResource]
/// - [ProjectsLocationsCollectionsDataStoresModelsOperationsResource]
///         - [ProjectsLocationsCollectionsDataStoresOperationsResource]
///         - [ProjectsLocationsCollectionsDataStoresSchemasResource]
/// - [ProjectsLocationsCollectionsDataStoresSchemasOperationsResource]
///         - [ProjectsLocationsCollectionsDataStoresServingConfigsResource]
///         - [ProjectsLocationsCollectionsDataStoresSessionsResource]
///           - [ProjectsLocationsCollectionsDataStoresSessionsAnswersResource]
///         - [ProjectsLocationsCollectionsDataStoresSiteSearchEngineResource]
/// - [ProjectsLocationsCollectionsDataStoresSiteSearchEngineOperationsResource]
/// - [ProjectsLocationsCollectionsDataStoresSiteSearchEngineSitemapsResource]
/// -
/// [ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesResource]
/// -
/// [ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesOperationsResource]
/// - [ProjectsLocationsCollectionsDataStoresSuggestionDenyListEntriesResource]
///         - [ProjectsLocationsCollectionsDataStoresUserEventsResource]
///       - [ProjectsLocationsCollectionsEnginesResource]
///         - [ProjectsLocationsCollectionsEnginesAssistantsResource]
///         - [ProjectsLocationsCollectionsEnginesCompletionConfigResource]
///         - [ProjectsLocationsCollectionsEnginesControlsResource]
///         - [ProjectsLocationsCollectionsEnginesConversationsResource]
///         - [ProjectsLocationsCollectionsEnginesOperationsResource]
///         - [ProjectsLocationsCollectionsEnginesServingConfigsResource]
///         - [ProjectsLocationsCollectionsEnginesSessionsResource]
///           - [ProjectsLocationsCollectionsEnginesSessionsAnswersResource]
///       - [ProjectsLocationsCollectionsOperationsResource]
///     - [ProjectsLocationsDataStoresResource]
///       - [ProjectsLocationsDataStoresBranchesResource]
///         - [ProjectsLocationsDataStoresBranchesDocumentsResource]
///         - [ProjectsLocationsDataStoresBranchesOperationsResource]
///       - [ProjectsLocationsDataStoresCompletionConfigResource]
///       - [ProjectsLocationsDataStoresCompletionSuggestionsResource]
///       - [ProjectsLocationsDataStoresControlsResource]
///       - [ProjectsLocationsDataStoresConversationsResource]
///       - [ProjectsLocationsDataStoresModelsResource]
///         - [ProjectsLocationsDataStoresModelsOperationsResource]
///       - [ProjectsLocationsDataStoresOperationsResource]
///       - [ProjectsLocationsDataStoresSchemasResource]
///       - [ProjectsLocationsDataStoresServingConfigsResource]
///       - [ProjectsLocationsDataStoresSessionsResource]
///         - [ProjectsLocationsDataStoresSessionsAnswersResource]
///       - [ProjectsLocationsDataStoresSiteSearchEngineResource]
///         - [ProjectsLocationsDataStoresSiteSearchEngineSitemapsResource]
///         - [ProjectsLocationsDataStoresSiteSearchEngineTargetSitesResource]
///       - [ProjectsLocationsDataStoresSuggestionDenyListEntriesResource]
///       - [ProjectsLocationsDataStoresUserEventsResource]
///     - [ProjectsLocationsGroundingConfigsResource]
///     - [ProjectsLocationsIdentityMappingStoresResource]
///       - [ProjectsLocationsIdentityMappingStoresOperationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPodcastsResource]
///       - [ProjectsLocationsPodcastsOperationsResource]
///     - [ProjectsLocationsRankingConfigsResource]
///     - [ProjectsLocationsUserEventsResource]
///     - [ProjectsLocationsUserStoresResource]
///       - [ProjectsLocationsUserStoresUserLicensesResource]
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
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// Discovery Engine API.
class DiscoveryEngineApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Search your organization's data in the Cloud Search index
  static const cloudSearchQueryScope =
      'https://www.googleapis.com/auth/cloud_search.query';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  DiscoveryEngineApi(
    http.Client client, {
    core.String rootUrl = 'https://discoveryengine.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Downloads a file from the session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [fileId] - Required. The ID of the file to be downloaded.
  ///
  /// [viewId] - Optional. The ID of the view to be downloaded.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [GdataMedia] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String name, {
    core.String? fileId,
    core.String? viewId,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fileId != null) 'fileId': [fileId],
      if (viewId != null) 'viewId': [viewId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':downloadFile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return GdataMedia.fromJson(
        response_ as core.Map<core.String, core.dynamic>,
      );
    } else {
      return response_ as commons.Media;
    }
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Provisions the project resource.
  ///
  /// During the process, related systems will get prepared and initialized.
  /// Caller must read the
  /// [Terms for data use](https://cloud.google.com/retail/data-use-terms), and
  /// optionally specify in request to provide consent to that service terms.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of a Project, such as
  /// `projects/{project_id_or_number}`.
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
  async.Future<GoogleLongrunningOperation> provision(
    GoogleCloudDiscoveryengineV1ProvisionProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':provision';

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

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCmekConfigsResource get cmekConfigs =>
      ProjectsLocationsCmekConfigsResource(_requester);
  ProjectsLocationsCollectionsResource get collections =>
      ProjectsLocationsCollectionsResource(_requester);
  ProjectsLocationsDataStoresResource get dataStores =>
      ProjectsLocationsDataStoresResource(_requester);
  ProjectsLocationsGroundingConfigsResource get groundingConfigs =>
      ProjectsLocationsGroundingConfigsResource(_requester);
  ProjectsLocationsIdentityMappingStoresResource get identityMappingStores =>
      ProjectsLocationsIdentityMappingStoresResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPodcastsResource get podcasts =>
      ProjectsLocationsPodcastsResource(_requester);
  ProjectsLocationsRankingConfigsResource get rankingConfigs =>
      ProjectsLocationsRankingConfigsResource(_requester);
  ProjectsLocationsUserEventsResource get userEvents =>
      ProjectsLocationsUserEventsResource(_requester);
  ProjectsLocationsUserStoresResource get userStores =>
      ProjectsLocationsUserStoresResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the CmekConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of CmekConfig, such as `projects / *
  /// /locations / * /cmekConfig` or `projects / * /locations / * /cmekConfigs /
  /// * `. If the caller does not have permission to access the CmekConfig,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/cmekConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1CmekConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1CmekConfig> getCmekConfig(
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
    return GoogleCloudDiscoveryengineV1CmekConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Provisions a CMEK key for use in a location of a customer's project.
  ///
  /// This method will also conduct location validation on the provided
  /// cmekConfig to make sure the key is valid and can be used in the selected
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CmekConfig of the form
  /// `projects/{project}/locations/{location}/cmekConfig` or
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/cmekConfig$`.
  ///
  /// [setDefault] - Set the following CmekConfig as the default to be used for
  /// child resources if one is not specified.
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
  async.Future<GoogleLongrunningOperation> updateCmekConfig(
    GoogleCloudDiscoveryengineV1CmekConfig request,
    core.String name, {
    core.bool? setDefault,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (setDefault != null) 'setDefault': ['${setDefault}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsCmekConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCmekConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// De-provisions a CmekConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CmekConfig to delete, such as
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cmekConfigs/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the CmekConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of CmekConfig, such as `projects / *
  /// /locations / * /cmekConfig` or `projects / * /locations / * /cmekConfigs /
  /// * `. If the caller does not have permission to access the CmekConfig,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cmekConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1CmekConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1CmekConfig> get(
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
    return GoogleCloudDiscoveryengineV1CmekConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the CmekConfigs with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location resource name, such as
  /// `projects/{project}/locations/{location}`. If the caller does not have
  /// permission to list CmekConfigs under this location, regardless of whether
  /// or not a CmekConfig exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListCmekConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListCmekConfigsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cmekConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListCmekConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Provisions a CMEK key for use in a location of a customer's project.
  ///
  /// This method will also conduct location validation on the provided
  /// cmekConfig to make sure the key is valid and can be used in the selected
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CmekConfig of the form
  /// `projects/{project}/locations/{location}/cmekConfig` or
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cmekConfigs/\[^/\]+$`.
  ///
  /// [setDefault] - Set the following CmekConfig as the default to be used for
  /// child resources if one is not specified.
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
    GoogleCloudDiscoveryengineV1CmekConfig request,
    core.String name, {
    core.bool? setDefault,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (setDefault != null) 'setDefault': ['${setDefault}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsCollectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataConnectorResource get dataConnector =>
      ProjectsLocationsCollectionsDataConnectorResource(_requester);
  ProjectsLocationsCollectionsDataStoresResource get dataStores =>
      ProjectsLocationsCollectionsDataStoresResource(_requester);
  ProjectsLocationsCollectionsEnginesResource get engines =>
      ProjectsLocationsCollectionsEnginesResource(_requester);
  ProjectsLocationsCollectionsOperationsResource get operations =>
      ProjectsLocationsCollectionsOperationsResource(_requester);

  ProjectsLocationsCollectionsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsCollectionsDataConnectorResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataConnectorOperationsResource get operations =>
      ProjectsLocationsCollectionsDataConnectorOperationsResource(_requester);

  ProjectsLocationsCollectionsDataConnectorResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsCollectionsDataConnectorOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataConnectorOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataConnector/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataConnector$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresBranchesResource get branches =>
      ProjectsLocationsCollectionsDataStoresBranchesResource(_requester);
  ProjectsLocationsCollectionsDataStoresCompletionConfigResource
  get completionConfig =>
      ProjectsLocationsCollectionsDataStoresCompletionConfigResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresCompletionSuggestionsResource
  get completionSuggestions =>
      ProjectsLocationsCollectionsDataStoresCompletionSuggestionsResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresControlsResource get controls =>
      ProjectsLocationsCollectionsDataStoresControlsResource(_requester);
  ProjectsLocationsCollectionsDataStoresConversationsResource
  get conversations =>
      ProjectsLocationsCollectionsDataStoresConversationsResource(_requester);
  ProjectsLocationsCollectionsDataStoresCustomModelsResource get customModels =>
      ProjectsLocationsCollectionsDataStoresCustomModelsResource(_requester);
  ProjectsLocationsCollectionsDataStoresModelsResource get models =>
      ProjectsLocationsCollectionsDataStoresModelsResource(_requester);
  ProjectsLocationsCollectionsDataStoresOperationsResource get operations =>
      ProjectsLocationsCollectionsDataStoresOperationsResource(_requester);
  ProjectsLocationsCollectionsDataStoresSchemasResource get schemas =>
      ProjectsLocationsCollectionsDataStoresSchemasResource(_requester);
  ProjectsLocationsCollectionsDataStoresServingConfigsResource
  get servingConfigs =>
      ProjectsLocationsCollectionsDataStoresServingConfigsResource(_requester);
  ProjectsLocationsCollectionsDataStoresSessionsResource get sessions =>
      ProjectsLocationsCollectionsDataStoresSessionsResource(_requester);
  ProjectsLocationsCollectionsDataStoresSiteSearchEngineResource
  get siteSearchEngine =>
      ProjectsLocationsCollectionsDataStoresSiteSearchEngineResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresSuggestionDenyListEntriesResource
  get suggestionDenyListEntries =>
      ProjectsLocationsCollectionsDataStoresSuggestionDenyListEntriesResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresUserEventsResource get userEvents =>
      ProjectsLocationsCollectionsDataStoresUserEventsResource(_requester);

  ProjectsLocationsCollectionsDataStoresResource(commons.ApiRequester client)
    : _requester = client;

  /// Completes the specified user input with keyword suggestions.
  ///
  /// Request parameters:
  ///
  /// [dataStore] - Required. The parent data store resource name for which the
  /// completion is performed, such as `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [includeTailSuggestions] - Indicates if tail suggestions should be
  /// returned if there are no suggestions that match the full query. Even if
  /// set to true, if there are suggestions that match the full query, those are
  /// returned and no tail suggestions are returned.
  ///
  /// [query] - Required. The typeahead input used to fetch suggestions. Maximum
  /// length is 128 characters.
  ///
  /// [queryModel] - Specifies the autocomplete data model. This overrides any
  /// model specified in the Configuration \> Autocomplete section of the Cloud
  /// console. Currently supported values: * `document` - Using suggestions
  /// generated from user-imported documents. * `search-history` - Using
  /// suggestions generated from the past history of SearchService.Search API
  /// calls. Do not use it when there is no traffic for Search API. *
  /// `user-event` - Using suggestions generated from user-imported search
  /// events. * `document-completable` - Using suggestions taken directly from
  /// user-imported document fields marked as completable. Default values: *
  /// `document` is the default model for regular dataStores. * `search-history`
  /// is the default model for site search dataStores.
  ///
  /// [userPseudoId] - A unique identifier for tracking visitors. For example,
  /// this could be implemented with an HTTP cookie, which should be able to
  /// uniquely identify a visitor on a single device. This unique identifier
  /// should not change if the visitor logs in or out of the website. This field
  /// should NOT have a fixed value such as `unknown_visitor`. This should be
  /// the same identifier as UserEvent.user_pseudo_id and
  /// SearchRequest.user_pseudo_id. The field must be a UTF-8 encoded string
  /// with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT`
  /// error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1CompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1CompleteQueryResponse> completeQuery(
    core.String dataStore, {
    core.bool? includeTailSuggestions,
    core.String? query,
    core.String? queryModel,
    core.String? userPseudoId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeTailSuggestions != null)
        'includeTailSuggestions': ['${includeTailSuggestions}'],
      if (query != null) 'query': [query],
      if (queryModel != null) 'queryModel': [queryModel],
      if (userPseudoId != null) 'userPseudoId': [userPseudoId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataStore') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1CompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a DataStore.
  ///
  /// DataStore is for storing Documents. To serve these documents for Search,
  /// or Recommendation use case, an Engine needs to be created separately.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+$`.
  ///
  /// [cmekConfigName] - Resource name of the CmekConfig to use for protecting
  /// this DataStore.
  ///
  /// [createAdvancedSiteSearch] - A boolean flag indicating whether user want
  /// to directly create an advanced data store for site search. If the data
  /// store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE content_config), this flag will be ignored.
  ///
  /// [dataStoreId] - Required. The ID to use for the DataStore, which will
  /// become the final component of the DataStore's resource name. This field
  /// must conform to \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard
  /// with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [disableCmek] - DataStore without CMEK protections. If a default
  /// CmekConfig is set for the project, setting this field will override the
  /// default CmekConfig as well.
  ///
  /// [skipDefaultSchemaCreation] - A boolean flag indicating whether to skip
  /// the default schema creation for the data store. Only enable this flag if
  /// you are certain that the default schema is incompatible with your use
  /// case. If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested. This flag cannot be specified if
  /// `data_store.starting_schema` is specified.
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
    GoogleCloudDiscoveryengineV1DataStore request,
    core.String parent, {
    core.String? cmekConfigName,
    core.bool? createAdvancedSiteSearch,
    core.String? dataStoreId,
    core.bool? disableCmek,
    core.bool? skipDefaultSchemaCreation,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cmekConfigName != null) 'cmekConfigName': [cmekConfigName],
      if (createAdvancedSiteSearch != null)
        'createAdvancedSiteSearch': ['${createAdvancedSiteSearch}'],
      if (dataStoreId != null) 'dataStoreId': [dataStoreId],
      if (disableCmek != null) 'disableCmek': ['${disableCmek}'],
      if (skipDefaultSchemaCreation != null)
        'skipDefaultSchemaCreation': ['${skipDefaultSchemaCreation}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataStores';

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

  /// Deletes a DataStore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of DataStore, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// If the caller does not have permission to delete the DataStore, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// DataStore to delete does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a DataStore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of DataStore, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// If the caller does not have permission to access the DataStore, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested DataStore does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1DataStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1DataStore> get(
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
    return GoogleCloudDiscoveryengineV1DataStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the SiteSearchEngine.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of SiteSearchEngine, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// If the caller does not have permission to access the \[SiteSearchEngine\],
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SiteSearchEngine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SiteSearchEngine>
  getSiteSearchEngine(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SiteSearchEngine.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the DataStores associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}`. If
  /// the caller does not have permission to list DataStores under this
  /// location, regardless of whether or not this data store exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+$`.
  ///
  /// [filter] - Filter by solution type . For example: `filter =
  /// 'solution_type:SOLUTION_TYPE_SEARCH'`
  ///
  /// [pageSize] - Maximum number of DataStores to return. If unspecified,
  /// defaults to 10. The maximum allowed value is 50. Values above 50 will be
  /// coerced to 50. If this field is negative, an INVALID_ARGUMENT is returned.
  ///
  /// [pageToken] - A page token ListDataStoresResponse.next_page_token,
  /// received from a previous DataStoreService.ListDataStores call. Provide
  /// this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to DataStoreService.ListDataStores must match the call
  /// that provided the page token. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListDataStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListDataStoresResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListDataStoresResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a DataStore
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The full resource name of the data store.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided DataStore to update.
  /// If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1DataStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1DataStore> patch(
    GoogleCloudDiscoveryengineV1DataStore request,
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
    return GoogleCloudDiscoveryengineV1DataStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Trains a custom model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataStore] - Required. The resource name of the Data Store, such as
  /// `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store`.
  /// This field is used to identify the data store where to train the models.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> trainCustomModel(
    GoogleCloudDiscoveryengineV1TrainCustomModelRequest request,
    core.String dataStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$dataStore') + ':trainCustomModel';

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

class ProjectsLocationsCollectionsDataStoresBranchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresBranchesDocumentsResource
  get documents =>
      ProjectsLocationsCollectionsDataStoresBranchesDocumentsResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresBranchesOperationsResource
  get operations =>
      ProjectsLocationsCollectionsDataStoresBranchesOperationsResource(
        _requester,
      );

  ProjectsLocationsCollectionsDataStoresBranchesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets index freshness metadata for Documents.
  ///
  /// Supported for website search only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [matcher_fhirMatcher_fhirResources] - Required. The FHIR resources to
  /// match by. Format:
  /// projects/{project}/locations/{location}/datasets/{dataset}/fhirStores/{fhir_store}/fhir/{resource_type}/{fhir_resource_id}
  ///
  /// [matcher_urisMatcher_uris] - The exact URIs to match by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse>
  batchGetDocumentsMetadata(
    core.String parent, {
    core.List<core.String>? matcher_fhirMatcher_fhirResources,
    core.List<core.String>? matcher_urisMatcher_uris,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (matcher_fhirMatcher_fhirResources != null)
        'matcher.fhirMatcher.fhirResources': matcher_fhirMatcher_fhirResources,
      if (matcher_urisMatcher_uris != null)
        'matcher.urisMatcher.uris': matcher_urisMatcher_uris,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/batchGetDocumentsMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresBranchesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresBranchesDocumentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [documentId] - Required. The ID to use for the Document, which becomes the
  /// final component of the Document.name. If the caller does not have
  /// permission to create the Document, regardless of whether or not it exists,
  /// a `PERMISSION_DENIED` error is returned. This field must be unique among
  /// all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error
  /// is returned. This field must conform to
  /// \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a length
  /// limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> create(
    GoogleCloudDiscoveryengineV1Document request,
    core.String parent, {
    core.String? documentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (documentId != null) 'documentId': [documentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Document, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
  /// If the caller does not have permission to delete the Document, regardless
  /// of whether or not it exists, a `PERMISSION_DENIED` error is returned. If
  /// the Document to delete does not exist, a `NOT_FOUND` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Document, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
  /// If the caller does not have permission to access the Document, regardless
  /// of whether or not it exists, a `PERMISSION_DENIED` error is returned. If
  /// the requested Document does not exist, a `NOT_FOUND` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> get(
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
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of multiple Documents.
  ///
  /// Request processing may be synchronous. Non-existing items are created.
  /// Note: It is possible for a subset of the Documents to be successfully
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Requires create/update permission.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Gets a list of Documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Use `default_branch` as the branch ID, to list documents under the default
  /// branch. If the caller does not have permission to list Documents under
  /// this branch, regardless of whether or not this branch exists, a
  /// `PERMISSION_DENIED` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Documents to return. If unspecified,
  /// defaults to 100. The maximum allowed value is 1000. Values above 1000 are
  /// set to 1000. If this field is negative, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [pageToken] - A page token ListDocumentsResponse.next_page_token, received
  /// from a previous DocumentService.ListDocuments call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to DocumentService.ListDocuments must match the call that
  /// provided the page token. Otherwise, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListDocumentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The full resource name of the document. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to `true` and the Document is not found, a new
  /// Document is be created.
  ///
  /// [updateMask] - Indicates which fields in the provided imported 'document'
  /// to update. If not set, by default updates all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> patch(
    GoogleCloudDiscoveryengineV1Document request,
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Permanently deletes all selected Documents in a branch.
  ///
  /// This process is asynchronous. Depending on the number of Documents to be
  /// deleted, this operation can take hours to complete. Before the delete
  /// operation completes, some Documents might still be returned by
  /// DocumentService.GetDocument or DocumentService.ListDocuments. To get a
  /// list of the Documents to be deleted, set PurgeDocumentsRequest.force to
  /// false.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents:purge';

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

class ProjectsLocationsCollectionsDataStoresBranchesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresBranchesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresCompletionConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresCompletionConfigResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Completes the user input with advanced keyword suggestions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [completionConfig] - Required. The completion_config of the parent
  /// dataStore or engine resource name for which the completion is performed,
  /// such as `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /completionConfig` `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /completionConfig`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/completionConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse>
  completeQuery(
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest request,
    core.String completionConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$completionConfig') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresCompletionSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresCompletionSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Imports CompletionSuggestions for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import customer autocomplete suggestions. Follows pattern `projects / *
  /// /locations / * /collections / * /dataStores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/completionSuggestions:import';

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

  /// Permanently deletes all CompletionSuggestions for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// purge completion suggestions. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/completionSuggestions:purge';

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

class ProjectsLocationsCollectionsDataStoresControlsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresControlsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Control.
  ///
  /// By default 1000 controls are allowed for a data store. A request can be
  /// submitted to adjust this limit. If the Control to create already exists,
  /// an ALREADY_EXISTS error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [controlId] - Required. The ID to use for the Control, which will become
  /// the final component of the Control's resource name. This value must be
  /// within 1-63 characters. Valid characters are /a-z-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> create(
    GoogleCloudDiscoveryengineV1Control request,
    core.String parent, {
    core.String? controlId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (controlId != null) 'controlId': [controlId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Control.fromJson(
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
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Control.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Control to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> get(
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Controls by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply on the list results. Supported
  /// features: * List all the products under the parent branch if filter is
  /// unset. Currently this field is unsupported.
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
  /// Completes with a [GoogleCloudDiscoveryengineV1ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListControlsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Control.
  ///
  /// Control action type cannot be changed. If the Control to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name `projects / *
  /// /locations/global/dataStore / * /controls / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided Control to
  /// update. The following are NOT supported: * Control.name *
  /// Control.solution_type If not set or empty, all supported fields are
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> patch(
    GoogleCloudDiscoveryengineV1Control request,
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresConversationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Converses a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`.
  /// Use
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/-`
  /// to activate auto session mode, which automatically creates a new
  /// conversation inside a ConverseConversation session.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1ConverseConversationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ConverseConversationResponse>
  converse(
    GoogleCloudDiscoveryengineV1ConverseConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':converse';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ConverseConversationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a Conversation.
  ///
  /// If the Conversation to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> create(
    GoogleCloudDiscoveryengineV1Conversation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Conversation.
  ///
  /// If the Conversation to delete does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> get(
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Conversations by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - A filter to apply on the list results. The supported features
  /// are: user_pseudo_id, state. Example: "user_pseudo_id = some_id"
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `conversation_name` Example:
  /// "update_time desc" "create_time"
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListConversations`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListConversationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Conversation.
  ///
  /// Conversation action type cannot be changed. If the Conversation to update
  /// does not exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/dataStore /
  /// * /conversations / * ` or
  /// `projects/{project}/locations/global/collections/{collection}/engines / *
  /// /conversations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Conversation to
  /// update. The following are NOT supported: * Conversation.name If not set or
  /// empty, all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> patch(
    GoogleCloudDiscoveryengineV1Conversation request,
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresCustomModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresCustomModelsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a list of all the custom models.
  ///
  /// Request parameters:
  ///
  /// [dataStore] - Required. The resource name of the parent Data Store, such
  /// as `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store`.
  /// This field is used to identify the data store where to fetch the models
  /// from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListCustomModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListCustomModelsResponse> list(
    core.String dataStore, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataStore') + '/customModels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListCustomModelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresModelsOperationsResource
  get operations =>
      ProjectsLocationsCollectionsDataStoresModelsOperationsResource(
        _requester,
      );

  ProjectsLocationsCollectionsDataStoresModelsResource(
    commons.ApiRequester client,
  ) : _requester = client;
}

class ProjectsLocationsCollectionsDataStoresModelsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresModelsOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/models/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/models/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSchemasOperationsResource
  get operations =>
      ProjectsLocationsCollectionsDataStoresSchemasOperationsResource(
        _requester,
      );

  ProjectsLocationsCollectionsDataStoresSchemasResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [schemaId] - Required. The ID to use for the Schema, which becomes the
  /// final component of the Schema.name. This field should conform to
  /// \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a length
  /// limit of 63 characters.
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
    GoogleCloudDiscoveryengineV1Schema request,
    core.String parent, {
    core.String? schemaId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (schemaId != null) 'schemaId': [schemaId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

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

  /// Deletes a Schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Schema> get(
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
    return GoogleCloudDiscoveryengineV1Schema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a list of Schemas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Schemas to return. The service may
  /// return fewer than this value. If unspecified, at most 100 Schemas are
  /// returned. The maximum value is 1000; values above 1000 are set to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// SchemaService.ListSchemas call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// SchemaService.ListSchemas must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListSchemasResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the Schema is not found, a new Schema
  /// is created. In this situation, `update_mask` is ignored.
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
    GoogleCloudDiscoveryengineV1Schema request,
    core.String name, {
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsCollectionsDataStoresSchemasOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSchemasOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresServingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresServingConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Answer query method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> answer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':answer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ServingConfig.
  ///
  /// Returns a NOT_FOUND error if the ServingConfig does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided ServingConfig to
  /// update. The following are NOT supported: * ServingConfig.name If not set,
  /// all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ServingConfig> patch(
    GoogleCloudDiscoveryengineV1ServingConfig request,
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
    return GoogleCloudDiscoveryengineV1ServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Makes a recommendation, which requires a contextual user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. Full resource name of a ServingConfig:
  /// `projects / * /locations/global/collections / * /engines / *
  /// /servingConfigs / * `, or `projects / * /locations/global/collections / *
  /// /dataStores / * /servingConfigs / * ` One default serving config is
  /// created along with your recommendation engine creation. The engine ID is
  /// used as the ID of the default serving config. For example, for Engine
  /// `projects / * /locations/global/collections / * /engines/my-engine`, you
  /// can use `projects / * /locations/global/collections / *
  /// /engines/my-engine/servingConfigs/my-engine` for your
  /// RecommendationService.Recommend requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1RecommendResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1RecommendResponse> recommend(
    GoogleCloudDiscoveryengineV1RecommendRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':recommend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1RecommendResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> search(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// Similar to the SearchService.Search method, but a lite version that allows
  /// API key for authentication, where OAuth and IAM checks are not required.
  /// Only public website search is supported by this method. If data stores and
  /// engines not associated with public website search are specified, a
  /// `FAILED_PRECONDITION` error is returned. This method can be used for easy
  /// onboarding without having to implement an authentication backend. However,
  /// it is strongly recommended to use SearchService.Search instead with
  /// required OAuth and IAM checks to provide better data security.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> searchLite(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':searchLite';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Answer query method (streaming).
  ///
  /// It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse
  /// messages in a stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> streamAnswer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$servingConfig') + ':streamAnswer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSessionsAnswersResource get answers =>
      ProjectsLocationsCollectionsDataStoresSessionsAnswersResource(_requester);

  ProjectsLocationsCollectionsDataStoresSessionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Session.
  ///
  /// If the Session to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> create(
    GoogleCloudDiscoveryengineV1Session request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Session.
  ///
  /// If the Session to delete does not exist, a NOT_FOUND error is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to delete. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [includeAnswerDetails] - Optional. If set to true, the full session
  /// including all answer details will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> get(
    core.String name, {
    core.bool? includeAnswerDetails,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeAnswerDetails != null)
        'includeAnswerDetails': ['${includeAnswerDetails}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Sessions by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - A comma-separated list of fields to filter by, in EBNF grammar.
  /// The supported fields are: * `user_pseudo_id` * `state` * `display_name` *
  /// `starred` * `is_pinned` * `labels` * `create_time` * `update_time`
  /// Examples: * `user_pseudo_id = some_id` * `display_name = "some_name"` *
  /// `starred = true` * `is_pinned=true AND (NOT labels:hidden)` * `create_time
  /// > "1970-01-01T12:00:00Z"`
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `session_name` * `is_pinned`
  /// Example: * "update_time desc" * "create_time" * "is_pinned
  /// desc,update_time desc": list sessions by is_pinned first, then by
  /// update_time.
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSessions` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListSessionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListSessionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Session.
  ///
  /// Session action type cannot be changed. If the Session to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions
  /// / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Session to update.
  /// The following are NOT supported: * Session.name If not set or empty, all
  /// supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> patch(
    GoogleCloudDiscoveryengineV1Session request,
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
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSessionsAnswersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSessionsAnswersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a Answer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Answer to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}/sessions/{session_id}/answers/{answer_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+/answers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Answer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Answer> get(
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
    return GoogleCloudDiscoveryengineV1Answer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSiteSearchEngineResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineOperationsResource
  get operations =>
      ProjectsLocationsCollectionsDataStoresSiteSearchEngineOperationsResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresSiteSearchEngineSitemapsResource
  get sitemaps =>
      ProjectsLocationsCollectionsDataStoresSiteSearchEngineSitemapsResource(
        _requester,
      );
  ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesResource
  get targetSites =>
      ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesResource(
        _requester,
      );

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Verify target sites' ownership and validity.
  ///
  /// This API sends all the target sites under site search engine for
  /// verification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource shared by all TargetSites being
  /// verified.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> batchVerifyTargetSites(
    GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':batchVerifyTargetSites';

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

  /// Downgrade from advanced site search to basic site search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as
  /// `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> disableAdvancedSiteSearch(
    GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$siteSearchEngine') +
        ':disableAdvancedSiteSearch';

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

  /// Upgrade from basic site search to advanced site search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as
  /// `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> enableAdvancedSiteSearch(
    GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$siteSearchEngine') +
        ':enableAdvancedSiteSearch';

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

  /// Returns list of target sites with its domain verification status.
  ///
  /// This method can only be called under data store with BASIC_SITE_SEARCH
  /// state at the moment.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. The site search engine resource under which
  /// we fetch all the domain verification status.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000. If this
  /// field is negative, an INVALID_ARGUMENT error is returned.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `FetchDomainVerificationStatus` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `FetchDomainVerificationStatus` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse
  >
  fetchDomainVerificationStatus(
    core.String siteSearchEngine, {
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
        'v1/' +
        core.Uri.encodeFull('$siteSearchEngine') +
        ':fetchDomainVerificationStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request on-demand recrawl for a list of URIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> recrawlUris(
    GoogleCloudDiscoveryengineV1RecrawlUrisRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$siteSearchEngine') + ':recrawlUris';

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

class ProjectsLocationsCollectionsDataStoresSiteSearchEngineOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSiteSearchEngineSitemapsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineSitemapsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Sitemap.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of the SiteSearchEngine, such as
  /// `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
    GoogleCloudDiscoveryengineV1Sitemap request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sitemaps';

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

  /// Deletes a Sitemap.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Sitemap, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/sitemaps/{sitemap}`.
  /// If the caller does not have permission to access the Sitemap, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested Sitemap does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/sitemaps/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch Sitemaps in a DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of the SiteSearchEngine, such as
  /// `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [matcher_urisMatcher_uris] - The Sitemap uris.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1FetchSitemapsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1FetchSitemapsResponse> fetch(
    core.String parent, {
    core.List<core.String>? matcher_urisMatcher_uris,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (matcher_urisMatcher_uris != null)
        'matcher.urisMatcher.uris': matcher_urisMatcher_uris,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sitemaps:fetch';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1FetchSitemapsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesOperationsResource
  get operations =>
      ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesOperationsResource(
        _requester,
      );

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates TargetSite in a batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource shared by all TargetSites being
  /// created.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// The parent field in the CreateBookRequest messages must either be empty or
  /// match this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> batchCreate(
    GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/targetSites:batchCreate';

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

  /// Creates a TargetSite.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
    GoogleCloudDiscoveryengineV1TargetSite request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetSites';

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

  /// Deletes a TargetSite.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
  /// If the caller does not have permission to access the TargetSite,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the requested TargetSite does not exist, a NOT_FOUND error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a TargetSite.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
  /// If the caller does not have permission to access the TargetSite,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the requested TargetSite does not exist, a NOT_FOUND error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1TargetSite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1TargetSite> get(
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
    return GoogleCloudDiscoveryengineV1TargetSite.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a list of TargetSites.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent site search engine resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// If the caller does not have permission to list TargetSites under this site
  /// search engine, regardless of whether or not this branch exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000. If this
  /// field is negative, an INVALID_ARGUMENT error is returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListTargetSites`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListTargetSites` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListTargetSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListTargetSitesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetSites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListTargetSitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a TargetSite.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully qualified resource name of the target
  /// site.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`
  /// The `target_site_id` is system-generated.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1TargetSite request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSiteSearchEngineTargetSitesOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsDataStoresSuggestionDenyListEntriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresSuggestionDenyListEntriesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Imports all SuggestionDenyListEntry for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import denylist entries. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestionDenyListEntries:import';

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

  /// Permanently deletes all SuggestionDenyListEntry for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import denylist entries. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestionDenyListEntries:purge';

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

class ProjectsLocationsCollectionsDataStoresUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsDataStoresUserEventsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// This uses a GET request to due to browser restriction of POST-ing to a
  /// third-party domain. This method is used only by the Discovery Engine API
  /// JavaScript pixel and Google Tag Manager. Users should not call this method
  /// directly.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. If the collect user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the collect user event action is applied in Location level, for
  /// example, the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [ets] - The event timestamp in milliseconds. This prevents browser caching
  /// of otherwise identical get requests. The name is abbreviated to reduce the
  /// payload bytes.
  ///
  /// [uri] - The URL including cgi-parameters but excluding the hash fragment
  /// with a length limit of 5,000 characters. This is often more useful than
  /// the referer URL, because many browsers only send the domain for
  /// third-party requests.
  ///
  /// [userEvent] - Required. URL encoded UserEvent proto with a length limit of
  /// 2,000,000 characters.
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
    core.String parent, {
    core.String? ets,
    core.String? uri,
    core.String? userEvent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ets != null) 'ets': [ets],
      if (uri != null) 'uri': [uri],
      if (userEvent != null) 'userEvent': [userEvent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of user events.
  ///
  /// Request processing might be synchronous. Events that already exist are
  /// skipped. Use this method for backfilling historical user events.
  /// Operation.response is of type ImportResponse. Note that it is possible for
  /// a subset of the items to be successfully inserted. Operation.metadata is
  /// of type ImportMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent DataStore resource name, of the form
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

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
  /// `projects/{project}/locations/global/collections/{collection}/dataStores/{dataStore}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:purge';

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
  /// [parent] - Required. The parent resource name. If the write user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the write user event action is applied in Location level, for example,
  /// the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [writeAsync] - If set to true, the user event is written asynchronously
  /// after validation, and the API responds without waiting for the write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1UserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1UserEvent> write(
    GoogleCloudDiscoveryengineV1UserEvent request,
    core.String parent, {
    core.bool? writeAsync,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (writeAsync != null) 'writeAsync': ['${writeAsync}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1UserEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesAssistantsResource get assistants =>
      ProjectsLocationsCollectionsEnginesAssistantsResource(_requester);
  ProjectsLocationsCollectionsEnginesCompletionConfigResource
  get completionConfig =>
      ProjectsLocationsCollectionsEnginesCompletionConfigResource(_requester);
  ProjectsLocationsCollectionsEnginesControlsResource get controls =>
      ProjectsLocationsCollectionsEnginesControlsResource(_requester);
  ProjectsLocationsCollectionsEnginesConversationsResource get conversations =>
      ProjectsLocationsCollectionsEnginesConversationsResource(_requester);
  ProjectsLocationsCollectionsEnginesOperationsResource get operations =>
      ProjectsLocationsCollectionsEnginesOperationsResource(_requester);
  ProjectsLocationsCollectionsEnginesServingConfigsResource
  get servingConfigs =>
      ProjectsLocationsCollectionsEnginesServingConfigsResource(_requester);
  ProjectsLocationsCollectionsEnginesSessionsResource get sessions =>
      ProjectsLocationsCollectionsEnginesSessionsResource(_requester);

  ProjectsLocationsCollectionsEnginesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Engine.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+$`.
  ///
  /// [engineId] - Required. The ID to use for the Engine, which will become the
  /// final component of the Engine's resource name. This field must conform to
  /// \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a length
  /// limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
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
    GoogleCloudDiscoveryengineV1Engine request,
    core.String parent, {
    core.String? engineId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (engineId != null) 'engineId': [engineId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/engines';

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

  /// Deletes a Engine.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Engine, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// If the caller does not have permission to delete the Engine, regardless of
  /// whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// Engine to delete does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Engine.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Engine, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Engine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Engine> get(
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
    return GoogleCloudDiscoveryengineV1Engine.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the Engines associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter by solution type. For example:
  /// solution_type=SOLUTION_TYPE_SEARCH
  ///
  /// [pageSize] - Optional. Not supported.
  ///
  /// [pageToken] - Optional. Not supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListEnginesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListEnginesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/engines';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListEnginesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an Engine
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The fully qualified resource name of the
  /// engine. This field must be a UTF-8 encoded string with a length limit of
  /// 1024 characters. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  /// engine should be 1-63 characters, and valid characters are /a-z0-9 * / .
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Engine to update. If
  /// an unsupported or unknown field is provided, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Engine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Engine> patch(
    GoogleCloudDiscoveryengineV1Engine request,
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
    return GoogleCloudDiscoveryengineV1Engine.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesAssistantsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesAssistantsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets an Assistant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of Assistant. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/assistants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Assistant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Assistant> get(
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
    return GoogleCloudDiscoveryengineV1Assistant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an Assistant
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Resource name of the assistant. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// It must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/assistants/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Assistant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Assistant> patch(
    GoogleCloudDiscoveryengineV1Assistant request,
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
    return GoogleCloudDiscoveryengineV1Assistant.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Assists the user with a query in a streaming fashion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Assistant. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/assistants/{assistant}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/assistants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1StreamAssistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1StreamAssistResponse> streamAssist(
    GoogleCloudDiscoveryengineV1StreamAssistRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':streamAssist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1StreamAssistResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesCompletionConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesCompletionConfigResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Completes the user input with advanced keyword suggestions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [completionConfig] - Required. The completion_config of the parent
  /// dataStore or engine resource name for which the completion is performed,
  /// such as `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /completionConfig` `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /completionConfig`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/completionConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse>
  completeQuery(
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest request,
    core.String completionConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$completionConfig') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesControlsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesControlsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Control.
  ///
  /// By default 1000 controls are allowed for a data store. A request can be
  /// submitted to adjust this limit. If the Control to create already exists,
  /// an ALREADY_EXISTS error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [controlId] - Required. The ID to use for the Control, which will become
  /// the final component of the Control's resource name. This value must be
  /// within 1-63 characters. Valid characters are /a-z-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> create(
    GoogleCloudDiscoveryengineV1Control request,
    core.String parent, {
    core.String? controlId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (controlId != null) 'controlId': [controlId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Control.fromJson(
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
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/controls/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Control.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Control to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> get(
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Controls by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply on the list results. Supported
  /// features: * List all the products under the parent branch if filter is
  /// unset. Currently this field is unsupported.
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
  /// Completes with a [GoogleCloudDiscoveryengineV1ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListControlsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Control.
  ///
  /// Control action type cannot be changed. If the Control to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name `projects / *
  /// /locations/global/dataStore / * /controls / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided Control to
  /// update. The following are NOT supported: * Control.name *
  /// Control.solution_type If not set or empty, all supported fields are
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> patch(
    GoogleCloudDiscoveryengineV1Control request,
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesConversationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Converses a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`.
  /// Use
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/-`
  /// to activate auto session mode, which automatically creates a new
  /// conversation inside a ConverseConversation session.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1ConverseConversationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ConverseConversationResponse>
  converse(
    GoogleCloudDiscoveryengineV1ConverseConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':converse';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ConverseConversationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a Conversation.
  ///
  /// If the Conversation to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> create(
    GoogleCloudDiscoveryengineV1Conversation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Conversation.
  ///
  /// If the Conversation to delete does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/conversations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> get(
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Conversations by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [filter] - A filter to apply on the list results. The supported features
  /// are: user_pseudo_id, state. Example: "user_pseudo_id = some_id"
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `conversation_name` Example:
  /// "update_time desc" "create_time"
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListConversations`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListConversationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Conversation.
  ///
  /// Conversation action type cannot be changed. If the Conversation to update
  /// does not exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/dataStore /
  /// * /conversations / * ` or
  /// `projects/{project}/locations/global/collections/{collection}/engines / *
  /// /conversations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Conversation to
  /// update. The following are NOT supported: * Conversation.name If not set or
  /// empty, all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> patch(
    GoogleCloudDiscoveryengineV1Conversation request,
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/operations/\[^/\]+$`.
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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesServingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesServingConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Answer query method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> answer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':answer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ServingConfig.
  ///
  /// Returns a NOT_FOUND error if the ServingConfig does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided ServingConfig to
  /// update. The following are NOT supported: * ServingConfig.name If not set,
  /// all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ServingConfig> patch(
    GoogleCloudDiscoveryengineV1ServingConfig request,
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
    return GoogleCloudDiscoveryengineV1ServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Makes a recommendation, which requires a contextual user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. Full resource name of a ServingConfig:
  /// `projects / * /locations/global/collections / * /engines / *
  /// /servingConfigs / * `, or `projects / * /locations/global/collections / *
  /// /dataStores / * /servingConfigs / * ` One default serving config is
  /// created along with your recommendation engine creation. The engine ID is
  /// used as the ID of the default serving config. For example, for Engine
  /// `projects / * /locations/global/collections / * /engines/my-engine`, you
  /// can use `projects / * /locations/global/collections / *
  /// /engines/my-engine/servingConfigs/my-engine` for your
  /// RecommendationService.Recommend requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1RecommendResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1RecommendResponse> recommend(
    GoogleCloudDiscoveryengineV1RecommendRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':recommend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1RecommendResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> search(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// Similar to the SearchService.Search method, but a lite version that allows
  /// API key for authentication, where OAuth and IAM checks are not required.
  /// Only public website search is supported by this method. If data stores and
  /// engines not associated with public website search are specified, a
  /// `FAILED_PRECONDITION` error is returned. This method can be used for easy
  /// onboarding without having to implement an authentication backend. However,
  /// it is strongly recommended to use SearchService.Search instead with
  /// required OAuth and IAM checks to provide better data security.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> searchLite(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':searchLite';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Answer query method (streaming).
  ///
  /// It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse
  /// messages in a stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> streamAnswer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$servingConfig') + ':streamAnswer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesSessionsAnswersResource get answers =>
      ProjectsLocationsCollectionsEnginesSessionsAnswersResource(_requester);

  ProjectsLocationsCollectionsEnginesSessionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Session.
  ///
  /// If the Session to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> create(
    GoogleCloudDiscoveryengineV1Session request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Session.
  ///
  /// If the Session to delete does not exist, a NOT_FOUND error is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to delete. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/sessions/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [includeAnswerDetails] - Optional. If set to true, the full session
  /// including all answer details will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> get(
    core.String name, {
    core.bool? includeAnswerDetails,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeAnswerDetails != null)
        'includeAnswerDetails': ['${includeAnswerDetails}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Sessions by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+$`.
  ///
  /// [filter] - A comma-separated list of fields to filter by, in EBNF grammar.
  /// The supported fields are: * `user_pseudo_id` * `state` * `display_name` *
  /// `starred` * `is_pinned` * `labels` * `create_time` * `update_time`
  /// Examples: * `user_pseudo_id = some_id` * `display_name = "some_name"` *
  /// `starred = true` * `is_pinned=true AND (NOT labels:hidden)` * `create_time
  /// > "1970-01-01T12:00:00Z"`
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `session_name` * `is_pinned`
  /// Example: * "update_time desc" * "create_time" * "is_pinned
  /// desc,update_time desc": list sessions by is_pinned first, then by
  /// update_time.
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSessions` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListSessionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListSessionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Session.
  ///
  /// Session action type cannot be changed. If the Session to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions
  /// / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Session to update.
  /// The following are NOT supported: * Session.name If not set or empty, all
  /// supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> patch(
    GoogleCloudDiscoveryengineV1Session request,
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
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsEnginesSessionsAnswersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsEnginesSessionsAnswersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a Answer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Answer to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}/sessions/{session_id}/answers/{answer_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/engines/\[^/\]+/sessions/\[^/\]+/answers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Answer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Answer> get(
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
    return GoogleCloudDiscoveryengineV1Answer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCollectionsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCollectionsOperationsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/collections/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresBranchesResource get branches =>
      ProjectsLocationsDataStoresBranchesResource(_requester);
  ProjectsLocationsDataStoresCompletionConfigResource get completionConfig =>
      ProjectsLocationsDataStoresCompletionConfigResource(_requester);
  ProjectsLocationsDataStoresCompletionSuggestionsResource
  get completionSuggestions =>
      ProjectsLocationsDataStoresCompletionSuggestionsResource(_requester);
  ProjectsLocationsDataStoresControlsResource get controls =>
      ProjectsLocationsDataStoresControlsResource(_requester);
  ProjectsLocationsDataStoresConversationsResource get conversations =>
      ProjectsLocationsDataStoresConversationsResource(_requester);
  ProjectsLocationsDataStoresModelsResource get models =>
      ProjectsLocationsDataStoresModelsResource(_requester);
  ProjectsLocationsDataStoresOperationsResource get operations =>
      ProjectsLocationsDataStoresOperationsResource(_requester);
  ProjectsLocationsDataStoresSchemasResource get schemas =>
      ProjectsLocationsDataStoresSchemasResource(_requester);
  ProjectsLocationsDataStoresServingConfigsResource get servingConfigs =>
      ProjectsLocationsDataStoresServingConfigsResource(_requester);
  ProjectsLocationsDataStoresSessionsResource get sessions =>
      ProjectsLocationsDataStoresSessionsResource(_requester);
  ProjectsLocationsDataStoresSiteSearchEngineResource get siteSearchEngine =>
      ProjectsLocationsDataStoresSiteSearchEngineResource(_requester);
  ProjectsLocationsDataStoresSuggestionDenyListEntriesResource
  get suggestionDenyListEntries =>
      ProjectsLocationsDataStoresSuggestionDenyListEntriesResource(_requester);
  ProjectsLocationsDataStoresUserEventsResource get userEvents =>
      ProjectsLocationsDataStoresUserEventsResource(_requester);

  ProjectsLocationsDataStoresResource(commons.ApiRequester client)
    : _requester = client;

  /// Completes the specified user input with keyword suggestions.
  ///
  /// Request parameters:
  ///
  /// [dataStore] - Required. The parent data store resource name for which the
  /// completion is performed, such as `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [includeTailSuggestions] - Indicates if tail suggestions should be
  /// returned if there are no suggestions that match the full query. Even if
  /// set to true, if there are suggestions that match the full query, those are
  /// returned and no tail suggestions are returned.
  ///
  /// [query] - Required. The typeahead input used to fetch suggestions. Maximum
  /// length is 128 characters.
  ///
  /// [queryModel] - Specifies the autocomplete data model. This overrides any
  /// model specified in the Configuration \> Autocomplete section of the Cloud
  /// console. Currently supported values: * `document` - Using suggestions
  /// generated from user-imported documents. * `search-history` - Using
  /// suggestions generated from the past history of SearchService.Search API
  /// calls. Do not use it when there is no traffic for Search API. *
  /// `user-event` - Using suggestions generated from user-imported search
  /// events. * `document-completable` - Using suggestions taken directly from
  /// user-imported document fields marked as completable. Default values: *
  /// `document` is the default model for regular dataStores. * `search-history`
  /// is the default model for site search dataStores.
  ///
  /// [userPseudoId] - A unique identifier for tracking visitors. For example,
  /// this could be implemented with an HTTP cookie, which should be able to
  /// uniquely identify a visitor on a single device. This unique identifier
  /// should not change if the visitor logs in or out of the website. This field
  /// should NOT have a fixed value such as `unknown_visitor`. This should be
  /// the same identifier as UserEvent.user_pseudo_id and
  /// SearchRequest.user_pseudo_id. The field must be a UTF-8 encoded string
  /// with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT`
  /// error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1CompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1CompleteQueryResponse> completeQuery(
    core.String dataStore, {
    core.bool? includeTailSuggestions,
    core.String? query,
    core.String? queryModel,
    core.String? userPseudoId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeTailSuggestions != null)
        'includeTailSuggestions': ['${includeTailSuggestions}'],
      if (query != null) 'query': [query],
      if (queryModel != null) 'queryModel': [queryModel],
      if (userPseudoId != null) 'userPseudoId': [userPseudoId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataStore') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1CompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a DataStore.
  ///
  /// DataStore is for storing Documents. To serve these documents for Search,
  /// or Recommendation use case, an Engine needs to be created separately.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [cmekConfigName] - Resource name of the CmekConfig to use for protecting
  /// this DataStore.
  ///
  /// [createAdvancedSiteSearch] - A boolean flag indicating whether user want
  /// to directly create an advanced data store for site search. If the data
  /// store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE content_config), this flag will be ignored.
  ///
  /// [dataStoreId] - Required. The ID to use for the DataStore, which will
  /// become the final component of the DataStore's resource name. This field
  /// must conform to \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard
  /// with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [disableCmek] - DataStore without CMEK protections. If a default
  /// CmekConfig is set for the project, setting this field will override the
  /// default CmekConfig as well.
  ///
  /// [skipDefaultSchemaCreation] - A boolean flag indicating whether to skip
  /// the default schema creation for the data store. Only enable this flag if
  /// you are certain that the default schema is incompatible with your use
  /// case. If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested. This flag cannot be specified if
  /// `data_store.starting_schema` is specified.
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
    GoogleCloudDiscoveryengineV1DataStore request,
    core.String parent, {
    core.String? cmekConfigName,
    core.bool? createAdvancedSiteSearch,
    core.String? dataStoreId,
    core.bool? disableCmek,
    core.bool? skipDefaultSchemaCreation,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cmekConfigName != null) 'cmekConfigName': [cmekConfigName],
      if (createAdvancedSiteSearch != null)
        'createAdvancedSiteSearch': ['${createAdvancedSiteSearch}'],
      if (dataStoreId != null) 'dataStoreId': [dataStoreId],
      if (disableCmek != null) 'disableCmek': ['${disableCmek}'],
      if (skipDefaultSchemaCreation != null)
        'skipDefaultSchemaCreation': ['${skipDefaultSchemaCreation}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataStores';

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

  /// Deletes a DataStore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of DataStore, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// If the caller does not have permission to delete the DataStore, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// DataStore to delete does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a DataStore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of DataStore, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// If the caller does not have permission to access the DataStore, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested DataStore does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1DataStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1DataStore> get(
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
    return GoogleCloudDiscoveryengineV1DataStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the SiteSearchEngine.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of SiteSearchEngine, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// If the caller does not have permission to access the \[SiteSearchEngine\],
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SiteSearchEngine].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SiteSearchEngine>
  getSiteSearchEngine(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SiteSearchEngine.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the DataStores associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}`. If
  /// the caller does not have permission to list DataStores under this
  /// location, regardless of whether or not this data store exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter by solution type . For example: `filter =
  /// 'solution_type:SOLUTION_TYPE_SEARCH'`
  ///
  /// [pageSize] - Maximum number of DataStores to return. If unspecified,
  /// defaults to 10. The maximum allowed value is 50. Values above 50 will be
  /// coerced to 50. If this field is negative, an INVALID_ARGUMENT is returned.
  ///
  /// [pageToken] - A page token ListDataStoresResponse.next_page_token,
  /// received from a previous DataStoreService.ListDataStores call. Provide
  /// this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to DataStoreService.ListDataStores must match the call
  /// that provided the page token. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListDataStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListDataStoresResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListDataStoresResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a DataStore
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The full resource name of the data store.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided DataStore to update.
  /// If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1DataStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1DataStore> patch(
    GoogleCloudDiscoveryengineV1DataStore request,
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
    return GoogleCloudDiscoveryengineV1DataStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresBranchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresBranchesDocumentsResource get documents =>
      ProjectsLocationsDataStoresBranchesDocumentsResource(_requester);
  ProjectsLocationsDataStoresBranchesOperationsResource get operations =>
      ProjectsLocationsDataStoresBranchesOperationsResource(_requester);

  ProjectsLocationsDataStoresBranchesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets index freshness metadata for Documents.
  ///
  /// Supported for website search only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [matcher_fhirMatcher_fhirResources] - Required. The FHIR resources to
  /// match by. Format:
  /// projects/{project}/locations/{location}/datasets/{dataset}/fhirStores/{fhir_store}/fhir/{resource_type}/{fhir_resource_id}
  ///
  /// [matcher_urisMatcher_uris] - The exact URIs to match by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse>
  batchGetDocumentsMetadata(
    core.String parent, {
    core.List<core.String>? matcher_fhirMatcher_fhirResources,
    core.List<core.String>? matcher_urisMatcher_uris,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (matcher_fhirMatcher_fhirResources != null)
        'matcher.fhirMatcher.fhirResources': matcher_fhirMatcher_fhirResources,
      if (matcher_urisMatcher_uris != null)
        'matcher.urisMatcher.uris': matcher_urisMatcher_uris,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/batchGetDocumentsMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresBranchesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresBranchesDocumentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [documentId] - Required. The ID to use for the Document, which becomes the
  /// final component of the Document.name. If the caller does not have
  /// permission to create the Document, regardless of whether or not it exists,
  /// a `PERMISSION_DENIED` error is returned. This field must be unique among
  /// all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error
  /// is returned. This field must conform to
  /// \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a length
  /// limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> create(
    GoogleCloudDiscoveryengineV1Document request,
    core.String parent, {
    core.String? documentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (documentId != null) 'documentId': [documentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Document, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
  /// If the caller does not have permission to delete the Document, regardless
  /// of whether or not it exists, a `PERMISSION_DENIED` error is returned. If
  /// the Document to delete does not exist, a `NOT_FOUND` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Document, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
  /// If the caller does not have permission to access the Document, regardless
  /// of whether or not it exists, a `PERMISSION_DENIED` error is returned. If
  /// the requested Document does not exist, a `NOT_FOUND` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> get(
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
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of multiple Documents.
  ///
  /// Request processing may be synchronous. Non-existing items are created.
  /// Note: It is possible for a subset of the Documents to be successfully
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Requires create/update permission.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents:import';

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

  /// Gets a list of Documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Use `default_branch` as the branch ID, to list documents under the default
  /// branch. If the caller does not have permission to list Documents under
  /// this branch, regardless of whether or not this branch exists, a
  /// `PERMISSION_DENIED` error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Documents to return. If unspecified,
  /// defaults to 100. The maximum allowed value is 1000. Values above 1000 are
  /// set to 1000. If this field is negative, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [pageToken] - A page token ListDocumentsResponse.next_page_token, received
  /// from a previous DocumentService.ListDocuments call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to DocumentService.ListDocuments must match the call that
  /// provided the page token. Otherwise, an `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListDocumentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The full resource name of the document. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to `true` and the Document is not found, a new
  /// Document is be created.
  ///
  /// [updateMask] - Indicates which fields in the provided imported 'document'
  /// to update. If not set, by default updates all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Document> patch(
    GoogleCloudDiscoveryengineV1Document request,
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Document.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Permanently deletes all selected Documents in a branch.
  ///
  /// This process is asynchronous. Depending on the number of Documents to be
  /// deleted, this operation can take hours to complete. Before the delete
  /// operation completes, some Documents might still be returned by
  /// DocumentService.GetDocument or DocumentService.ListDocuments. To get a
  /// list of the Documents to be deleted, set PurgeDocumentsRequest.force to
  /// false.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents:purge';

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

class ProjectsLocationsDataStoresBranchesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresBranchesOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/branches/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresCompletionConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresCompletionConfigResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Completes the user input with advanced keyword suggestions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [completionConfig] - Required. The completion_config of the parent
  /// dataStore or engine resource name for which the completion is performed,
  /// such as `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /completionConfig` `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /completionConfig`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/completionConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse>
  completeQuery(
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest request,
    core.String completionConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$completionConfig') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresCompletionSuggestionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresCompletionSuggestionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Imports CompletionSuggestions for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import customer autocomplete suggestions. Follows pattern `projects / *
  /// /locations / * /collections / * /dataStores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/completionSuggestions:import';

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

  /// Permanently deletes all CompletionSuggestions for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// purge completion suggestions. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/completionSuggestions:purge';

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

class ProjectsLocationsDataStoresControlsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresControlsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Control.
  ///
  /// By default 1000 controls are allowed for a data store. A request can be
  /// submitted to adjust this limit. If the Control to create already exists,
  /// an ALREADY_EXISTS error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [controlId] - Required. The ID to use for the Control, which will become
  /// the final component of the Control's resource name. This value must be
  /// within 1-63 characters. Valid characters are /a-z-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> create(
    GoogleCloudDiscoveryengineV1Control request,
    core.String parent, {
    core.String? controlId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (controlId != null) 'controlId': [controlId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Control.fromJson(
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
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Control.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Control to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/controls/{control_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> get(
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Controls by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`
  /// or
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply on the list results. Supported
  /// features: * List all the products under the parent branch if filter is
  /// unset. Currently this field is unsupported.
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
  /// Completes with a [GoogleCloudDiscoveryengineV1ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListControlsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Control.
  ///
  /// Control action type cannot be changed. If the Control to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name `projects / *
  /// /locations/global/dataStore / * /controls / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/controls/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided Control to
  /// update. The following are NOT supported: * Control.name *
  /// Control.solution_type If not set or empty, all supported fields are
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Control].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Control> patch(
    GoogleCloudDiscoveryengineV1Control request,
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
    return GoogleCloudDiscoveryengineV1Control.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresConversationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresConversationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Converses a conversation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`.
  /// Use
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/-`
  /// to activate auto session mode, which automatically creates a new
  /// conversation inside a ConverseConversation session.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1ConverseConversationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ConverseConversationResponse>
  converse(
    GoogleCloudDiscoveryengineV1ConverseConversationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':converse';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ConverseConversationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a Conversation.
  ///
  /// If the Conversation to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> create(
    GoogleCloudDiscoveryengineV1Conversation request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Conversation.
  ///
  /// If the Conversation to delete does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Conversation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Conversation to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/conversations/{conversation_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> get(
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Conversations by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - A filter to apply on the list results. The supported features
  /// are: user_pseudo_id, state. Example: "user_pseudo_id = some_id"
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `conversation_name` Example:
  /// "update_time desc" "create_time"
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListConversations`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListConversationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListConversationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/conversations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListConversationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Conversation.
  ///
  /// Conversation action type cannot be changed. If the Conversation to update
  /// does not exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/dataStore /
  /// * /conversations / * ` or
  /// `projects/{project}/locations/global/collections/{collection}/engines / *
  /// /conversations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/conversations/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Conversation to
  /// update. The following are NOT supported: * Conversation.name If not set or
  /// empty, all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Conversation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Conversation> patch(
    GoogleCloudDiscoveryengineV1Conversation request,
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
    return GoogleCloudDiscoveryengineV1Conversation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresModelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresModelsOperationsResource get operations =>
      ProjectsLocationsDataStoresModelsOperationsResource(_requester);

  ProjectsLocationsDataStoresModelsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsDataStoresModelsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresModelsOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/models/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/models/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresOperationsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSchemasResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [schemaId] - Required. The ID to use for the Schema, which becomes the
  /// final component of the Schema.name. This field should conform to
  /// \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a length
  /// limit of 63 characters.
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
    GoogleCloudDiscoveryengineV1Schema request,
    core.String parent, {
    core.String? schemaId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (schemaId != null) 'schemaId': [schemaId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

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

  /// Deletes a Schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Schema> get(
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
    return GoogleCloudDiscoveryengineV1Schema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a list of Schemas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of Schemas to return. The service may
  /// return fewer than this value. If unspecified, at most 100 Schemas are
  /// returned. The maximum value is 1000; values above 1000 are set to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// SchemaService.ListSchemas call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// SchemaService.ListSchemas must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListSchemasResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The full resource name of the schema, in the format of
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the Schema is not found, a new Schema
  /// is created. In this situation, `update_mask` is ignored.
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
    GoogleCloudDiscoveryengineV1Schema request,
    core.String name, {
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsDataStoresServingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresServingConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Answer query method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> answer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':answer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a ServingConfig.
  ///
  /// Returns a NOT_FOUND error if the ServingConfig does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided ServingConfig to
  /// update. The following are NOT supported: * ServingConfig.name If not set,
  /// all supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ServingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ServingConfig> patch(
    GoogleCloudDiscoveryengineV1ServingConfig request,
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
    return GoogleCloudDiscoveryengineV1ServingConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Makes a recommendation, which requires a contextual user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. Full resource name of a ServingConfig:
  /// `projects / * /locations/global/collections / * /engines / *
  /// /servingConfigs / * `, or `projects / * /locations/global/collections / *
  /// /dataStores / * /servingConfigs / * ` One default serving config is
  /// created along with your recommendation engine creation. The engine ID is
  /// used as the ID of the default serving config. For example, for Engine
  /// `projects / * /locations/global/collections / * /engines/my-engine`, you
  /// can use `projects / * /locations/global/collections / *
  /// /engines/my-engine/servingConfigs/my-engine` for your
  /// RecommendationService.Recommend requests.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1RecommendResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1RecommendResponse> recommend(
    GoogleCloudDiscoveryengineV1RecommendRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':recommend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1RecommendResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> search(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Performs a search.
  ///
  /// Similar to the SearchService.Search method, but a lite version that allows
  /// API key for authentication, where OAuth and IAM checks are not required.
  /// Only public website search is supported by this method. If data stores and
  /// engines not associated with public website search are specified, a
  /// `FAILED_PRECONDITION` error is returned. This method can be used for easy
  /// onboarding without having to implement an authentication backend. However,
  /// it is strongly recommended to use SearchService.Search instead with
  /// required OAuth and IAM checks to provide better data security.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
  /// This field is used to identify the serving configuration name, set of
  /// models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1SearchResponse> searchLite(
    GoogleCloudDiscoveryengineV1SearchRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$servingConfig') + ':searchLite';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1SearchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Answer query method (streaming).
  ///
  /// It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse
  /// messages in a stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [servingConfig] - Required. The resource name of the Search serving
  /// config, such as `projects / *
  /// /locations/global/collections/default_collection/engines / *
  /// /servingConfigs/default_serving_config`, or `projects / *
  /// /locations/global/collections/default_collection/dataStores / *
  /// /servingConfigs/default_serving_config`. This field is used to identify
  /// the serving configuration name, set of models used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/servingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1AnswerQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1AnswerQueryResponse> streamAnswer(
    GoogleCloudDiscoveryengineV1AnswerQueryRequest request,
    core.String servingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$servingConfig') + ':streamAnswer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSessionsAnswersResource get answers =>
      ProjectsLocationsDataStoresSessionsAnswersResource(_requester);

  ProjectsLocationsDataStoresSessionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Session.
  ///
  /// If the Session to create already exists, an ALREADY_EXISTS error is
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of parent data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> create(
    GoogleCloudDiscoveryengineV1Session request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Session.
  ///
  /// If the Session to delete does not exist, a NOT_FOUND error is returned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to delete. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a Session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Session to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/sessions/{session_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [includeAnswerDetails] - Optional. If set to true, the full session
  /// including all answer details will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> get(
    core.String name, {
    core.bool? includeAnswerDetails,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeAnswerDetails != null)
        'includeAnswerDetails': ['${includeAnswerDetails}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all Sessions by their parent DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The data store resource name. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [filter] - A comma-separated list of fields to filter by, in EBNF grammar.
  /// The supported fields are: * `user_pseudo_id` * `state` * `display_name` *
  /// `starred` * `is_pinned` * `labels` * `create_time` * `update_time`
  /// Examples: * `user_pseudo_id = some_id` * `display_name = "some_name"` *
  /// `starred = true` * `is_pinned=true AND (NOT labels:hidden)` * `create_time
  /// > "1970-01-01T12:00:00Z"`
  ///
  /// [orderBy] - A comma-separated list of fields to order by, sorted in
  /// ascending order. Use "desc" after a field name for descending. Supported
  /// fields: * `update_time` * `create_time` * `session_name` * `is_pinned`
  /// Example: * "update_time desc" * "create_time" * "is_pinned
  /// desc,update_time desc": list sessions by is_pinned first, then by
  /// update_time.
  ///
  /// [pageSize] - Maximum number of results to return. If unspecified, defaults
  /// to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSessions` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListSessionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListSessionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Session.
  ///
  /// Session action type cannot be changed. If the Session to update does not
  /// exist, a NOT_FOUND error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions
  /// / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Session to update.
  /// The following are NOT supported: * Session.name If not set or empty, all
  /// supported fields are updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Session> patch(
    GoogleCloudDiscoveryengineV1Session request,
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
    return GoogleCloudDiscoveryengineV1Session.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresSessionsAnswersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSessionsAnswersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a Answer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Answer to get. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}/sessions/{session_id}/answers/{answer_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/sessions/\[^/\]+/answers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1Answer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1Answer> get(
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
    return GoogleCloudDiscoveryengineV1Answer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresSiteSearchEngineResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSiteSearchEngineSitemapsResource get sitemaps =>
      ProjectsLocationsDataStoresSiteSearchEngineSitemapsResource(_requester);
  ProjectsLocationsDataStoresSiteSearchEngineTargetSitesResource
  get targetSites =>
      ProjectsLocationsDataStoresSiteSearchEngineTargetSitesResource(
        _requester,
      );

  ProjectsLocationsDataStoresSiteSearchEngineResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Downgrade from advanced site search to basic site search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as
  /// `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> disableAdvancedSiteSearch(
    GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$siteSearchEngine') +
        ':disableAdvancedSiteSearch';

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

  /// Upgrade from basic site search to advanced site search.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as
  /// `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> enableAdvancedSiteSearch(
    GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$siteSearchEngine') +
        ':enableAdvancedSiteSearch';

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

  /// Request on-demand recrawl for a list of URIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [siteSearchEngine] - Required. Full resource name of the SiteSearchEngine,
  /// such as `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> recrawlUris(
    GoogleCloudDiscoveryengineV1RecrawlUrisRequest request,
    core.String siteSearchEngine, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$siteSearchEngine') + ':recrawlUris';

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

class ProjectsLocationsDataStoresSiteSearchEngineSitemapsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSiteSearchEngineSitemapsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a Sitemap.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of the SiteSearchEngine, such as
  /// `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
    GoogleCloudDiscoveryengineV1Sitemap request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sitemaps';

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

  /// Deletes a Sitemap.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Sitemap, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/sitemaps/{sitemap}`.
  /// If the caller does not have permission to access the Sitemap, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested Sitemap does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/sitemaps/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Fetch Sitemaps in a DataStore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of the SiteSearchEngine, such as
  /// `projects / * /locations / * /collections / * /dataStores / *
  /// /siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [matcher_urisMatcher_uris] - The Sitemap uris.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1FetchSitemapsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1FetchSitemapsResponse> fetch(
    core.String parent, {
    core.List<core.String>? matcher_urisMatcher_uris,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (matcher_urisMatcher_uris != null)
        'matcher.urisMatcher.uris': matcher_urisMatcher_uris,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sitemaps:fetch';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1FetchSitemapsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataStoresSiteSearchEngineTargetSitesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSiteSearchEngineTargetSitesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates TargetSite in a batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource shared by all TargetSites being
  /// created.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// The parent field in the CreateBookRequest messages must either be empty or
  /// match this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
  async.Future<GoogleLongrunningOperation> batchCreate(
    GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/targetSites:batchCreate';

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

  /// Creates a TargetSite.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
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
    GoogleCloudDiscoveryengineV1TargetSite request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetSites';

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

  /// Deletes a TargetSite.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
  /// If the caller does not have permission to access the TargetSite,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the requested TargetSite does not exist, a NOT_FOUND error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a TargetSite.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
  /// If the caller does not have permission to access the TargetSite,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the requested TargetSite does not exist, a NOT_FOUND error is
  /// returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1TargetSite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1TargetSite> get(
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
    return GoogleCloudDiscoveryengineV1TargetSite.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a list of TargetSites.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent site search engine resource name, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  /// If the caller does not have permission to list TargetSites under this site
  /// search engine, regardless of whether or not this branch exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000. If this
  /// field is negative, an INVALID_ARGUMENT error is returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListTargetSites`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListTargetSites` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListTargetSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListTargetSitesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targetSites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListTargetSitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a TargetSite.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully qualified resource name of the target
  /// site.
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`
  /// The `target_site_id` is system-generated.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+/siteSearchEngine/targetSites/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1TargetSite request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
}

class ProjectsLocationsDataStoresSuggestionDenyListEntriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresSuggestionDenyListEntriesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Imports all SuggestionDenyListEntry for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import denylist entries. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestionDenyListEntries:import';

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

  /// Permanently deletes all SuggestionDenyListEntry for a DataStore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent data store resource name for which to
  /// import denylist entries. Follows pattern projects / * /locations / *
  /// /collections / * /dataStores / * .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/.*$`.
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
    GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/suggestionDenyListEntries:purge';

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

class ProjectsLocationsDataStoresUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataStoresUserEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// This uses a GET request to due to browser restriction of POST-ing to a
  /// third-party domain. This method is used only by the Discovery Engine API
  /// JavaScript pixel and Google Tag Manager. Users should not call this method
  /// directly.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. If the collect user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the collect user event action is applied in Location level, for
  /// example, the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [ets] - The event timestamp in milliseconds. This prevents browser caching
  /// of otherwise identical get requests. The name is abbreviated to reduce the
  /// payload bytes.
  ///
  /// [uri] - The URL including cgi-parameters but excluding the hash fragment
  /// with a length limit of 5,000 characters. This is often more useful than
  /// the referer URL, because many browsers only send the domain for
  /// third-party requests.
  ///
  /// [userEvent] - Required. URL encoded UserEvent proto with a length limit of
  /// 2,000,000 characters.
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
    core.String parent, {
    core.String? ets,
    core.String? uri,
    core.String? userEvent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ets != null) 'ets': [ets],
      if (uri != null) 'uri': [uri],
      if (userEvent != null) 'userEvent': [userEvent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of user events.
  ///
  /// Request processing might be synchronous. Events that already exist are
  /// skipped. Use this method for backfilling historical user events.
  /// Operation.response is of type ImportResponse. Note that it is possible for
  /// a subset of the items to be successfully inserted. Operation.metadata is
  /// of type ImportMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent DataStore resource name, of the form
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1ImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

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
  /// `projects/{project}/locations/global/collections/{collection}/dataStores/{dataStore}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
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
    GoogleCloudDiscoveryengineV1PurgeUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:purge';

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
  /// [parent] - Required. The parent resource name. If the write user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the write user event action is applied in Location level, for example,
  /// the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataStores/\[^/\]+$`.
  ///
  /// [writeAsync] - If set to true, the user event is written asynchronously
  /// after validation, and the API responds without waiting for the write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1UserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1UserEvent> write(
    GoogleCloudDiscoveryengineV1UserEvent request,
    core.String parent, {
    core.bool? writeAsync,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (writeAsync != null) 'writeAsync': ['${writeAsync}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1UserEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGroundingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGroundingConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Performs a grounding check.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groundingConfig] - Required. The resource name of the grounding config,
  /// such as `projects / *
  /// /locations/global/groundingConfigs/default_grounding_config`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groundingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1CheckGroundingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1CheckGroundingResponse> check(
    GoogleCloudDiscoveryengineV1CheckGroundingRequest request,
    core.String groundingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$groundingConfig') + ':check';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1CheckGroundingResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIdentityMappingStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIdentityMappingStoresOperationsResource get operations =>
      ProjectsLocationsIdentityMappingStoresOperationsResource(_requester);

  ProjectsLocationsIdentityMappingStoresResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Identity Mapping Store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection resource name, such as
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [cmekConfigName] - Resource name of the CmekConfig to use for protecting
  /// this Identity Mapping Store.
  ///
  /// [disableCmek] - Identity Mapping Store without CMEK protections. If a
  /// default CmekConfig is set for the project, setting this field will
  /// override the default CmekConfig as well.
  ///
  /// [identityMappingStoreId] - Required. The ID of the Identity Mapping Store
  /// to create. The ID must contain only letters (a-z, A-Z), numbers (0-9),
  /// underscores (_), and hyphens (-). The maximum length is 63 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1IdentityMappingStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1IdentityMappingStore> create(
    GoogleCloudDiscoveryengineV1IdentityMappingStore request,
    core.String parent, {
    core.String? cmekConfigName,
    core.bool? disableCmek,
    core.String? identityMappingStoreId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cmekConfigName != null) 'cmekConfigName': [cmekConfigName],
      if (disableCmek != null) 'disableCmek': ['${disableCmek}'],
      if (identityMappingStoreId != null)
        'identityMappingStoreId': [identityMappingStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/identityMappingStores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1IdentityMappingStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the Identity Mapping Store.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Identity Mapping Store to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identityMappingStore}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the Identity Mapping Store.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Identity Mapping Store to get. Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identityMappingStore}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1IdentityMappingStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1IdentityMappingStore> get(
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
    return GoogleCloudDiscoveryengineV1IdentityMappingStore.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Imports a list of Identity Mapping Entries to an Identity Mapping Store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [identityMappingStore] - Required. The name of the Identity Mapping Store
  /// to import Identity Mapping Entries to. Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identityMappingStore}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importIdentityMappings(
    GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest request,
    core.String identityMappingStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$identityMappingStore') +
        ':importIdentityMappings';

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

  /// Lists all Identity Mapping Stores.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the Identity Mapping Stores to list.
  /// Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of IdentityMappingStores to return. If
  /// unspecified, defaults to 100. The maximum allowed value is 1000. Values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIdentityMappingStores` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListIdentityMappingStores` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse>
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/identityMappingStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Identity Mappings in an Identity Mapping Store.
  ///
  /// Request parameters:
  ///
  /// [identityMappingStore] - Required. The name of the Identity Mapping Store
  /// to list Identity Mapping Entries in. Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identityMappingStore}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of IdentityMappings to return. If unspecified,
  /// defaults to 2000. The maximum allowed value is 10000. Values above 10000
  /// will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIdentityMappings` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListIdentityMappings`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse>
  listIdentityMappings(
    core.String identityMappingStore, {
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
        'v1/' +
        core.Uri.encodeFull('$identityMappingStore') +
        ':listIdentityMappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Purges specified or all Identity Mapping Entries from an Identity Mapping
  /// Store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [identityMappingStore] - Required. The name of the Identity Mapping Store
  /// to purge Identity Mapping Entries from. Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identityMappingStore}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> purgeIdentityMappings(
    GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest request,
    core.String identityMappingStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$identityMappingStore') +
        ':purgeIdentityMappings';

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

class ProjectsLocationsIdentityMappingStoresOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIdentityMappingStoresOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/identityMappingStores/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsPodcastsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPodcastsOperationsResource get operations =>
      ProjectsLocationsPodcastsOperationsResource(_requester);

  ProjectsLocationsPodcastsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsPodcastsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPodcastsOperationsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/podcasts/\[^/\]+/operations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRankingConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRankingConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Ranks a list of text records based on the given input query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [rankingConfig] - Required. The resource name of the rank service config,
  /// such as
  /// `projects/{project_num}/locations/{location}/rankingConfigs/default_ranking_config`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rankingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1RankResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1RankResponse> rank(
    GoogleCloudDiscoveryengineV1RankRequest request,
    core.String rankingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$rankingConfig') + ':rank';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1RankResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUserEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// This uses a GET request to due to browser restriction of POST-ing to a
  /// third-party domain. This method is used only by the Discovery Engine API
  /// JavaScript pixel and Google Tag Manager. Users should not call this method
  /// directly.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. If the collect user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the collect user event action is applied in Location level, for
  /// example, the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [ets] - The event timestamp in milliseconds. This prevents browser caching
  /// of otherwise identical get requests. The name is abbreviated to reduce the
  /// payload bytes.
  ///
  /// [uri] - The URL including cgi-parameters but excluding the hash fragment
  /// with a length limit of 5,000 characters. This is often more useful than
  /// the referer URL, because many browsers only send the domain for
  /// third-party requests.
  ///
  /// [userEvent] - Required. URL encoded UserEvent proto with a length limit of
  /// 2,000,000 characters.
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
    core.String parent, {
    core.String? ets,
    core.String? uri,
    core.String? userEvent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ets != null) 'ets': [ets],
      if (uri != null) 'uri': [uri],
      if (userEvent != null) 'userEvent': [userEvent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleApiHttpBody.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Bulk import of user events.
  ///
  /// Request processing might be synchronous. Events that already exist are
  /// skipped. Use this method for backfilling historical user events.
  /// Operation.response is of type ImportResponse. Note that it is possible for
  /// a subset of the items to be successfully inserted. Operation.metadata is
  /// of type ImportMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent DataStore resource name, of the form
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
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
    GoogleCloudDiscoveryengineV1ImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

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
  /// [parent] - Required. The parent resource name. If the write user event
  /// action is applied in DataStore level, the format is:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
  /// If the write user event action is applied in Location level, for example,
  /// the event with Document across multiple DataStore, the format is:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [writeAsync] - If set to true, the user event is written asynchronously
  /// after validation, and the API responds without waiting for the write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1UserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1UserEvent> write(
    GoogleCloudDiscoveryengineV1UserEvent request,
    core.String parent, {
    core.bool? writeAsync,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (writeAsync != null) 'writeAsync': ['${writeAsync}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1UserEvent.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsUserStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUserStoresUserLicensesResource get userLicenses =>
      ProjectsLocationsUserStoresUserLicensesResource(_requester);

  ProjectsLocationsUserStoresResource(commons.ApiRequester client)
    : _requester = client;

  /// Updates the User License.
  ///
  /// This method is used for batch assign/unassign licenses to users.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent UserStore resource name, format:
  /// `projects/{project}/locations/{location}/userStores/{user_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/userStores/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> batchUpdateUserLicenses(
    GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':batchUpdateUserLicenses';

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

class ProjectsLocationsUserStoresUserLicensesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUserStoresUserLicensesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the User Licenses.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent UserStore resource name, format:
  /// `projects/{project}/locations/{location}/userStores/{user_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/userStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter for the list request. Supported fields: *
  /// `license_assignment_state` Examples: * `license_assignment_state =
  /// ASSIGNED` to list assigned user licenses. * `license_assignment_state =
  /// NO_LICENSE` to list not licensed users. * `license_assignment_state =
  /// NO_LICENSE_ATTEMPTED_LOGIN` to list users who attempted login but no
  /// license assigned. * `license_assignment_state !=
  /// NO_LICENSE_ATTEMPTED_LOGIN` to filter out users who attempted login but no
  /// license assigned.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, defaults to 10. The maximum value is 50;
  /// values above 50 will be coerced to 50. If this field is negative, an
  /// INVALID_ARGUMENT error is returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListUserLicenses` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListUserLicenses` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDiscoveryengineV1ListUserLicensesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDiscoveryengineV1ListUserLicensesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLicenses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDiscoveryengineV1ListUserLicensesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

/// Information to read/write to blobstore2.
typedef GdataBlobstore2Info = $Blobstore2Info00;

/// A sequence of media data references representing composite data.
///
/// Introduced to support Bigstore composite objects. For details, visit
/// http://go/bigstore-composites.
class GdataCompositeMedia {
  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// crc32.c hash for the payload.
  core.int? crc32cHash;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Size of the data, in bytes
  core.String? length;

  /// MD5 hash for the payload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  core.String? referenceType;

  /// SHA-1 hash for the payload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GdataCompositeMedia({
    this.blobRef,
    this.blobstore2Info,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.inline,
    this.length,
    this.md5Hash,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
  });

  GdataCompositeMedia.fromJson(core.Map json_)
    : this(
        blobRef: json_['blobRef'] as core.String?,
        blobstore2Info:
            json_.containsKey('blobstore2Info')
                ? GdataBlobstore2Info.fromJson(
                  json_['blobstore2Info']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
        crc32cHash: json_['crc32cHash'] as core.int?,
        inline: json_['inline'] as core.String?,
        length: json_['length'] as core.String?,
        md5Hash: json_['md5Hash'] as core.String?,
        objectId:
            json_.containsKey('objectId')
                ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        path: json_['path'] as core.String?,
        referenceType: json_['referenceType'] as core.String?,
        sha1Hash: json_['sha1Hash'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blobRef != null) 'blobRef': blobRef!,
    if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
    if (cosmoBinaryReference != null)
      'cosmoBinaryReference': cosmoBinaryReference!,
    if (crc32cHash != null) 'crc32cHash': crc32cHash!,
    if (inline != null) 'inline': inline!,
    if (length != null) 'length': length!,
    if (md5Hash != null) 'md5Hash': md5Hash!,
    if (objectId != null) 'objectId': objectId!,
    if (path != null) 'path': path!,
    if (referenceType != null) 'referenceType': referenceType!,
    if (sha1Hash != null) 'sha1Hash': sha1Hash!,
  };
}

/// Detailed Content-Type information from Scotty.
///
/// The Content-Type of the media will typically be filled in by the header or
/// Scotty's best_guess, but this extended information provides the backend with
/// more information so that it can make a better decision if needed. This is
/// only used on media upload requests from Scotty.
typedef GdataContentTypeInfo = $ContentTypeInfo00;

/// Backend response for a Diff get checksums response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffChecksumsResponse {
  /// Exactly one of these fields must be populated.
  ///
  /// If checksums_location is filled, the server will return the corresponding
  /// contents to the user. If object_location is filled, the server will
  /// calculate the checksums based on the content there and return that to the
  /// user. For details on the format of the checksums, see
  /// http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsLocation;

  /// The chunk size of checksums.
  ///
  /// Must be a multiple of 256KB.
  core.String? chunkSizeBytes;

  /// If set, calculate the checksums based on the contents and return them to
  /// the caller.
  GdataCompositeMedia? objectLocation;

  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The object version of the object the checksums are being returned for.
  core.String? objectVersion;

  GdataDiffChecksumsResponse({
    this.checksumsLocation,
    this.chunkSizeBytes,
    this.objectLocation,
    this.objectSizeBytes,
    this.objectVersion,
  });

  GdataDiffChecksumsResponse.fromJson(core.Map json_)
    : this(
        checksumsLocation:
            json_.containsKey('checksumsLocation')
                ? GdataCompositeMedia.fromJson(
                  json_['checksumsLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        chunkSizeBytes: json_['chunkSizeBytes'] as core.String?,
        objectLocation:
            json_.containsKey('objectLocation')
                ? GdataCompositeMedia.fromJson(
                  json_['objectLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        objectSizeBytes: json_['objectSizeBytes'] as core.String?,
        objectVersion: json_['objectVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
    if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
    if (objectLocation != null) 'objectLocation': objectLocation!,
    if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
    if (objectVersion != null) 'objectVersion': objectVersion!,
  };
}

/// Backend response for a Diff download response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffDownloadResponse {
  /// The original object location.
  GdataCompositeMedia? objectLocation;

  GdataDiffDownloadResponse({this.objectLocation});

  GdataDiffDownloadResponse.fromJson(core.Map json_)
    : this(
        objectLocation:
            json_.containsKey('objectLocation')
                ? GdataCompositeMedia.fromJson(
                  json_['objectLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (objectLocation != null) 'objectLocation': objectLocation!,
  };
}

/// A Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadRequest {
  /// The location of the checksums for the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received. For details on the format
  /// of the checksums, see http://go/scotty-diff-protocol.
  GdataCompositeMedia? checksumsInfo;

  /// The location of the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received.
  GdataCompositeMedia? objectInfo;

  /// The object version of the object that is the base version the incoming
  /// diff script will be applied to.
  ///
  /// This field will always be filled in.
  core.String? objectVersion;

  GdataDiffUploadRequest({
    this.checksumsInfo,
    this.objectInfo,
    this.objectVersion,
  });

  GdataDiffUploadRequest.fromJson(core.Map json_)
    : this(
        checksumsInfo:
            json_.containsKey('checksumsInfo')
                ? GdataCompositeMedia.fromJson(
                  json_['checksumsInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        objectInfo:
            json_.containsKey('objectInfo')
                ? GdataCompositeMedia.fromJson(
                  json_['objectInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        objectVersion: json_['objectVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
    if (objectInfo != null) 'objectInfo': objectInfo!,
    if (objectVersion != null) 'objectVersion': objectVersion!,
  };
}

/// Backend response for a Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class GdataDiffUploadResponse {
  /// The object version of the object at the server.
  ///
  /// Must be included in the end notification response. The version in the end
  /// notification response must correspond to the new version of the object
  /// that is now stored at the server, after the upload.
  core.String? objectVersion;

  /// The location of the original file for a diff upload request.
  ///
  /// Must be filled in if responding to an upload start notification.
  GdataCompositeMedia? originalObject;

  GdataDiffUploadResponse({this.objectVersion, this.originalObject});

  GdataDiffUploadResponse.fromJson(core.Map json_)
    : this(
        objectVersion: json_['objectVersion'] as core.String?,
        originalObject:
            json_.containsKey('originalObject')
                ? GdataCompositeMedia.fromJson(
                  json_['originalObject']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (objectVersion != null) 'objectVersion': objectVersion!,
    if (originalObject != null) 'originalObject': originalObject!,
  };
}

/// Backend response for a Diff get version response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
typedef GdataDiffVersionResponse = $DiffVersionResponse00;

/// Parameters specific to media downloads.
typedef GdataDownloadParameters = $DownloadParameters00;

/// A reference to data stored on the filesystem, on GFS or in blobstore.
class GdataMedia {
  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// Algorithm used for calculating the hash. As of 2011/01/21, "MD5" is the
  /// only possible value for this field. New values may be added at any time.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? algorithm;

  /// Use object_id instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> bytes_) {
    bigstoreObjectRef = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  GdataBlobstore2Info? blobstore2Info;

  /// A composite media composed of one or more media objects, set if
  /// reference_type is COMPOSITE_MEDIA.
  ///
  /// The media length field must be set to the sum of the lengths of all
  /// composite media objects. Note: All composite media must have length
  /// specified.
  core.List<GdataCompositeMedia>? compositeMedia;

  /// MIME type of the data
  core.String? contentType;

  /// Extended content type information provided for Scotty uploads.
  GdataContentTypeInfo? contentTypeInfo;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// For Scotty Uploads: Scotty-provided hashes for uploads For Scotty
  /// Downloads: (WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.)
  /// A Hash provided by the agent to be used to verify the data being
  /// downloaded.
  ///
  /// Currently only supported for inline payloads. Further, only crc32c_hash is
  /// currently supported.
  core.int? crc32cHash;

  /// Set if reference_type is DIFF_CHECKSUMS_RESPONSE.
  GdataDiffChecksumsResponse? diffChecksumsResponse;

  /// Set if reference_type is DIFF_DOWNLOAD_RESPONSE.
  GdataDiffDownloadResponse? diffDownloadResponse;

  /// Set if reference_type is DIFF_UPLOAD_REQUEST.
  GdataDiffUploadRequest? diffUploadRequest;

  /// Set if reference_type is DIFF_UPLOAD_RESPONSE.
  GdataDiffUploadResponse? diffUploadResponse;

  /// Set if reference_type is DIFF_VERSION_RESPONSE.
  GdataDiffVersionResponse? diffVersionResponse;

  /// Parameters for a media download.
  GdataDownloadParameters? downloadParameters;

  /// Original file name
  core.String? filename;

  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// These two hash related fields will only be populated on Scotty based media
  /// uploads and will contain the content of the hash group in the
  /// NotificationRequest:
  /// http://cs/#google3/blobstore2/api/scotty/service/proto/upload_listener.proto&q=class:Hash
  /// Hex encoded hash value of the uploaded media.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hash;

  /// For Scotty uploads only.
  ///
  /// If a user sends a hash code and the backend has requested that Scotty
  /// verify the upload against the client hash, Scotty will perform the check
  /// on behalf of the backend and will reject it if the hashes don't match.
  /// This is set to true if Scotty performed this verification.
  core.bool? hashVerified;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// |is_potential_retry| is set false only when Scotty is certain that it has
  /// not sent the request before.
  ///
  /// When a client resumes an upload, this field must be set true in agent
  /// calls, because Scotty cannot be certain that it has never sent the request
  /// before due to potential failure in the session state persistence.
  core.bool? isPotentialRetry;

  /// Size of the data, in bytes
  core.String? length;

  /// Scotty-provided MD5 hash for an upload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Media id to forward to the operation GetMedia.
  ///
  /// Can be set if reference_type is GET_MEDIA.
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> bytes_) {
    mediaId = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  GdataObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "GET_MEDIA" : Data should be accessed from the current service using the
  /// operation GetMedia.
  /// - "COMPOSITE_MEDIA" : The content for this media object is stored across
  /// multiple partial media objects under the composite_media field.
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "DIFF_VERSION_RESPONSE" : Indicates the data is stored in
  /// diff_version_response.
  /// - "DIFF_CHECKSUMS_RESPONSE" : Indicates the data is stored in
  /// diff_checksums_response.
  /// - "DIFF_DOWNLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_download_response.
  /// - "DIFF_UPLOAD_REQUEST" : Indicates the data is stored in
  /// diff_upload_request.
  /// - "DIFF_UPLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_upload_response.
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  /// - "ARBITRARY_BYTES" : Informs Scotty to generate a response payload with
  /// the size specified in the length field. The contents of the payload are
  /// generated by Scotty and are undefined. This is useful for testing download
  /// speeds between the user and Scotty without involving a real payload
  /// source. Note: range is not supported when using arbitrary_bytes.
  core.String? referenceType;

  /// Scotty-provided SHA1 hash for an upload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Scotty-provided SHA256 hash for an upload.
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> bytes_) {
    sha256Hash = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Time at which the media data was last updated, in milliseconds since UNIX
  /// epoch
  core.String? timestamp;

  /// A unique fingerprint/version id for the media data
  core.String? token;

  GdataMedia({
    this.algorithm,
    this.bigstoreObjectRef,
    this.blobRef,
    this.blobstore2Info,
    this.compositeMedia,
    this.contentType,
    this.contentTypeInfo,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.diffChecksumsResponse,
    this.diffDownloadResponse,
    this.diffUploadRequest,
    this.diffUploadResponse,
    this.diffVersionResponse,
    this.downloadParameters,
    this.filename,
    this.hash,
    this.hashVerified,
    this.inline,
    this.isPotentialRetry,
    this.length,
    this.md5Hash,
    this.mediaId,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
    this.sha256Hash,
    this.timestamp,
    this.token,
  });

  GdataMedia.fromJson(core.Map json_)
    : this(
        algorithm: json_['algorithm'] as core.String?,
        bigstoreObjectRef: json_['bigstoreObjectRef'] as core.String?,
        blobRef: json_['blobRef'] as core.String?,
        blobstore2Info:
            json_.containsKey('blobstore2Info')
                ? GdataBlobstore2Info.fromJson(
                  json_['blobstore2Info']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        compositeMedia:
            (json_['compositeMedia'] as core.List?)
                ?.map(
                  (value) => GdataCompositeMedia.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        contentType: json_['contentType'] as core.String?,
        contentTypeInfo:
            json_.containsKey('contentTypeInfo')
                ? GdataContentTypeInfo.fromJson(
                  json_['contentTypeInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
        crc32cHash: json_['crc32cHash'] as core.int?,
        diffChecksumsResponse:
            json_.containsKey('diffChecksumsResponse')
                ? GdataDiffChecksumsResponse.fromJson(
                  json_['diffChecksumsResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diffDownloadResponse:
            json_.containsKey('diffDownloadResponse')
                ? GdataDiffDownloadResponse.fromJson(
                  json_['diffDownloadResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diffUploadRequest:
            json_.containsKey('diffUploadRequest')
                ? GdataDiffUploadRequest.fromJson(
                  json_['diffUploadRequest']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diffUploadResponse:
            json_.containsKey('diffUploadResponse')
                ? GdataDiffUploadResponse.fromJson(
                  json_['diffUploadResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diffVersionResponse:
            json_.containsKey('diffVersionResponse')
                ? GdataDiffVersionResponse.fromJson(
                  json_['diffVersionResponse']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        downloadParameters:
            json_.containsKey('downloadParameters')
                ? GdataDownloadParameters.fromJson(
                  json_['downloadParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        filename: json_['filename'] as core.String?,
        hash: json_['hash'] as core.String?,
        hashVerified: json_['hashVerified'] as core.bool?,
        inline: json_['inline'] as core.String?,
        isPotentialRetry: json_['isPotentialRetry'] as core.bool?,
        length: json_['length'] as core.String?,
        md5Hash: json_['md5Hash'] as core.String?,
        mediaId: json_['mediaId'] as core.String?,
        objectId:
            json_.containsKey('objectId')
                ? GdataObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        path: json_['path'] as core.String?,
        referenceType: json_['referenceType'] as core.String?,
        sha1Hash: json_['sha1Hash'] as core.String?,
        sha256Hash: json_['sha256Hash'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (algorithm != null) 'algorithm': algorithm!,
    if (bigstoreObjectRef != null) 'bigstoreObjectRef': bigstoreObjectRef!,
    if (blobRef != null) 'blobRef': blobRef!,
    if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
    if (compositeMedia != null) 'compositeMedia': compositeMedia!,
    if (contentType != null) 'contentType': contentType!,
    if (contentTypeInfo != null) 'contentTypeInfo': contentTypeInfo!,
    if (cosmoBinaryReference != null)
      'cosmoBinaryReference': cosmoBinaryReference!,
    if (crc32cHash != null) 'crc32cHash': crc32cHash!,
    if (diffChecksumsResponse != null)
      'diffChecksumsResponse': diffChecksumsResponse!,
    if (diffDownloadResponse != null)
      'diffDownloadResponse': diffDownloadResponse!,
    if (diffUploadRequest != null) 'diffUploadRequest': diffUploadRequest!,
    if (diffUploadResponse != null) 'diffUploadResponse': diffUploadResponse!,
    if (diffVersionResponse != null)
      'diffVersionResponse': diffVersionResponse!,
    if (downloadParameters != null) 'downloadParameters': downloadParameters!,
    if (filename != null) 'filename': filename!,
    if (hash != null) 'hash': hash!,
    if (hashVerified != null) 'hashVerified': hashVerified!,
    if (inline != null) 'inline': inline!,
    if (isPotentialRetry != null) 'isPotentialRetry': isPotentialRetry!,
    if (length != null) 'length': length!,
    if (md5Hash != null) 'md5Hash': md5Hash!,
    if (mediaId != null) 'mediaId': mediaId!,
    if (objectId != null) 'objectId': objectId!,
    if (path != null) 'path': path!,
    if (referenceType != null) 'referenceType': referenceType!,
    if (sha1Hash != null) 'sha1Hash': sha1Hash!,
    if (sha256Hash != null) 'sha256Hash': sha256Hash!,
    if (timestamp != null) 'timestamp': timestamp!,
    if (token != null) 'token': token!,
  };
}

/// This is a copy of the tech.blob.ObjectId proto, which could not be used
/// directly here due to transitive closure issues with JavaScript support; see
/// http://b/8801763.
typedef GdataObjectId = $ObjectId00;

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

/// Request message for CompletionService.AdvancedCompleteQuery method.
///
/// .
class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest {
  /// Specification to boost suggestions matching the condition.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec? boostSpec;

  /// Experiment ids for this request.
  ///
  /// Optional.
  core.List<core.String>? experimentIds;

  /// Indicates if tail suggestions should be returned if there are no
  /// suggestions that match the full query.
  ///
  /// Even if set to true, if there are suggestions that match the full query,
  /// those are returned and no tail suggestions are returned.
  core.bool? includeTailSuggestions;

  /// The typeahead input used to fetch suggestions.
  ///
  /// Maximum length is 128 characters. The query can not be empty for most of
  /// the suggestion types. If it is empty, an `INVALID_ARGUMENT` error is
  /// returned. The exception is when the suggestion_types contains only the
  /// type `RECENT_SEARCH`, the query can be an empty string. The is called
  /// "zero prefix" feature, which returns user's recently searched queries
  /// given the empty query.
  ///
  /// Required.
  core.String? query;

  /// Specifies the autocomplete query model, which only applies to the QUERY
  /// SuggestionType.
  ///
  /// This overrides any model specified in the Configuration \> Autocomplete
  /// section of the Cloud console. Currently supported values: * `document` -
  /// Using suggestions generated from user-imported documents. *
  /// `search-history` - Using suggestions generated from the past history of
  /// SearchService.Search API calls. Do not use it when there is no traffic for
  /// Search API. * `user-event` - Using suggestions generated from
  /// user-imported search events. * `document-completable` - Using suggestions
  /// taken directly from user-imported document fields marked as completable.
  /// Default values: * `document` is the default model for regular dataStores.
  /// * `search-history` is the default model for site search dataStores.
  core.String? queryModel;

  /// Specification of each suggestion type.
  ///
  /// Optional.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec
  >?
  suggestionTypeSpecs;

  /// Suggestion types to return.
  ///
  /// If empty or unspecified, query suggestions are returned. Only one
  /// suggestion type is supported at the moment.
  ///
  /// Optional.
  core.List<core.String>? suggestionTypes;

  /// Information about the end user.
  ///
  /// This should be the same identifier information as UserEvent.user_info and
  /// SearchRequest.user_info.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1UserInfo? userInfo;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This field should NOT have a fixed value such as `unknown_visitor`. This
  /// should be the same identifier as UserEvent.user_pseudo_id and
  /// SearchRequest.user_pseudo_id. The field must be a UTF-8 encoded string
  /// with a length limit of 128
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest({
    this.boostSpec,
    this.experimentIds,
    this.includeTailSuggestions,
    this.query,
    this.queryModel,
    this.suggestionTypeSpecs,
    this.suggestionTypes,
    this.userInfo,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest.fromJson(
    core.Map json_,
  ) : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        experimentIds:
            (json_['experimentIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includeTailSuggestions: json_['includeTailSuggestions'] as core.bool?,
        query: json_['query'] as core.String?,
        queryModel: json_['queryModel'] as core.String?,
        suggestionTypeSpecs:
            (json_['suggestionTypeSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        suggestionTypes:
            (json_['suggestionTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudDiscoveryengineV1UserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (experimentIds != null) 'experimentIds': experimentIds!,
    if (includeTailSuggestions != null)
      'includeTailSuggestions': includeTailSuggestions!,
    if (query != null) 'query': query!,
    if (queryModel != null) 'queryModel': queryModel!,
    if (suggestionTypeSpecs != null)
      'suggestionTypeSpecs': suggestionTypeSpecs!,
    if (suggestionTypes != null) 'suggestionTypes': suggestionTypes!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Specification to boost suggestions based on the condtion of the suggestion.
class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec {
  /// Condition boost specifications.
  ///
  /// If a suggestion matches multiple conditions in the specifications, boost
  /// values from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20. Note: Currently
  /// only support language condition boost.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
  >?
  conditionBoostSpecs;

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec({
    this.conditionBoostSpecs,
  });

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        conditionBoostSpecs:
            (json_['conditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditionBoostSpecs != null)
      'conditionBoostSpecs': conditionBoostSpecs!,
  };
}

/// Boost applies to suggestions which match a condition.
typedef GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec =
    $AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec;

/// Specification of each suggestion type.
typedef GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec =
    $AdvancedCompleteQueryRequestSuggestionTypeSpec;

/// Response message for CompletionService.AdvancedCompleteQuery method.
class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse {
  /// Results of the matched content suggestions.
  ///
  /// The result list is ordered and the first result is the top suggestion.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion
  >?
  contentSuggestions;

  /// Results of the matched people suggestions.
  ///
  /// The result list is ordered and the first result is the top suggestion.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion
  >?
  peopleSuggestions;

  /// Results of the matched query suggestions.
  ///
  /// The result list is ordered and the first result is a top suggestion.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion
  >?
  querySuggestions;

  /// Results of the matched "recent search" suggestions.
  ///
  /// The result list is ordered and the first result is the top suggestion.
  core.List<
    GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion
  >?
  recentSearchSuggestions;

  /// True if the returned suggestions are all tail suggestions.
  ///
  /// For tail matching to be triggered, include_tail_suggestions in the request
  /// must be true and there must be no suggestions that match the full query.
  core.bool? tailMatchTriggered;

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse({
    this.contentSuggestions,
    this.peopleSuggestions,
    this.querySuggestions,
    this.recentSearchSuggestions,
    this.tailMatchTriggered,
  });

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse.fromJson(
    core.Map json_,
  ) : this(
        contentSuggestions:
            (json_['contentSuggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        peopleSuggestions:
            (json_['peopleSuggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        querySuggestions:
            (json_['querySuggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        recentSearchSuggestions:
            (json_['recentSearchSuggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tailMatchTriggered: json_['tailMatchTriggered'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentSuggestions != null) 'contentSuggestions': contentSuggestions!,
    if (peopleSuggestions != null) 'peopleSuggestions': peopleSuggestions!,
    if (querySuggestions != null) 'querySuggestions': querySuggestions!,
    if (recentSearchSuggestions != null)
      'recentSearchSuggestions': recentSearchSuggestions!,
    if (tailMatchTriggered != null) 'tailMatchTriggered': tailMatchTriggered!,
  };
}

/// Suggestions as content.
class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion {
  /// The type of the content suggestion.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Default value.
  /// - "GOOGLE_WORKSPACE" : The suggestion is from a Google Workspace source.
  /// - "THIRD_PARTY" : The suggestion is from a third party source.
  core.String? contentType;

  /// The name of the dataStore that this suggestion belongs to.
  core.String? dataStore;

  /// The destination uri of the content suggestion.
  core.String? destinationUri;

  /// The document data snippet in the suggestion.
  ///
  /// Only a subset of fields will be populated.
  GoogleCloudDiscoveryengineV1Document? document;

  /// The icon uri of the content suggestion.
  core.String? iconUri;

  /// The score of each suggestion.
  ///
  /// The score is in the range of \[0, 1\].
  core.double? score;

  /// The suggestion for the query.
  core.String? suggestion;

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion({
    this.contentType,
    this.dataStore,
    this.destinationUri,
    this.document,
    this.iconUri,
    this.score,
    this.suggestion,
  });

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion.fromJson(
    core.Map json_,
  ) : this(
        contentType: json_['contentType'] as core.String?,
        dataStore: json_['dataStore'] as core.String?,
        destinationUri: json_['destinationUri'] as core.String?,
        document:
            json_.containsKey('document')
                ? GoogleCloudDiscoveryengineV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        iconUri: json_['iconUri'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        suggestion: json_['suggestion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentType != null) 'contentType': contentType!,
    if (dataStore != null) 'dataStore': dataStore!,
    if (destinationUri != null) 'destinationUri': destinationUri!,
    if (document != null) 'document': document!,
    if (iconUri != null) 'iconUri': iconUri!,
    if (score != null) 'score': score!,
    if (suggestion != null) 'suggestion': suggestion!,
  };
}

/// Suggestions as people.
class GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion {
  /// The name of the dataStore that this suggestion belongs to.
  core.String? dataStore;

  /// The destination uri of the person suggestion.
  core.String? destinationUri;

  /// The photo uri of the person suggestion.
  core.String? displayPhotoUri;

  /// The document data snippet in the suggestion.
  ///
  /// Only a subset of fields is populated.
  GoogleCloudDiscoveryengineV1Document? document;

  /// The type of the person.
  /// Possible string values are:
  /// - "PERSON_TYPE_UNSPECIFIED" : Default value.
  /// - "CLOUD_IDENTITY" : The suggestion is from a GOOGLE_IDENTITY source.
  /// - "THIRD_PARTY_IDENTITY" : The suggestion is from a THIRD_PARTY_IDENTITY
  /// source.
  core.String? personType;

  /// The score of each suggestion.
  ///
  /// The score is in the range of \[0, 1\].
  core.double? score;

  /// The suggestion for the query.
  core.String? suggestion;

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion({
    this.dataStore,
    this.destinationUri,
    this.displayPhotoUri,
    this.document,
    this.personType,
    this.score,
    this.suggestion,
  });

  GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion.fromJson(
    core.Map json_,
  ) : this(
        dataStore: json_['dataStore'] as core.String?,
        destinationUri: json_['destinationUri'] as core.String?,
        displayPhotoUri: json_['displayPhotoUri'] as core.String?,
        document:
            json_.containsKey('document')
                ? GoogleCloudDiscoveryengineV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        personType: json_['personType'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        suggestion: json_['suggestion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStore != null) 'dataStore': dataStore!,
    if (destinationUri != null) 'destinationUri': destinationUri!,
    if (displayPhotoUri != null) 'displayPhotoUri': displayPhotoUri!,
    if (document != null) 'document': document!,
    if (personType != null) 'personType': personType!,
    if (score != null) 'score': score!,
    if (suggestion != null) 'suggestion': suggestion!,
  };
}

/// Suggestions as search queries.
typedef GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion =
    $AdvancedCompleteQueryResponseQuerySuggestion;

/// Suggestions from recent search history.
typedef GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion =
    $AdvancedCompleteQueryResponseRecentSearchSuggestion;

/// Configuration data for advance site search.
typedef GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig =
    $AdvancedSiteSearchConfig;

/// AlloyDB source import data from.
typedef GoogleCloudDiscoveryengineV1AlloyDbSource = $AlloyDbSource;

/// Defines an answer.
class GoogleCloudDiscoveryengineV1Answer {
  /// Additional answer-skipped reasons.
  ///
  /// This provides the reason for ignored cases. If nothing is skipped, this
  /// field is not set.
  core.List<core.String>? answerSkippedReasons;

  /// The textual answer.
  core.String? answerText;

  /// Citations.
  core.List<GoogleCloudDiscoveryengineV1AnswerCitation>? citations;

  /// Answer completed timestamp.
  ///
  /// Output only.
  core.String? completeTime;

  /// Answer creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// A score in the range of \[0, 1\] describing how grounded the answer is by
  /// the reference chunks.
  core.double? groundingScore;

  /// Grounding supports.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1AnswerGroundingSupport>?
  groundingSupports;

  /// Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions
  /// / * /answers / * `
  ///
  /// Immutable.
  core.String? name;

  /// Query understanding information.
  GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo?
  queryUnderstandingInfo;

  /// References.
  core.List<GoogleCloudDiscoveryengineV1AnswerReference>? references;

  /// Suggested related questions.
  core.List<core.String>? relatedQuestions;

  /// Safety ratings.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1SafetyRating>? safetyRatings;

  /// The state of the answer generation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Answer generation is currently in progress.
  /// - "FAILED" : Answer generation currently failed.
  /// - "SUCCEEDED" : Answer generation has succeeded.
  /// - "STREAMING" : Answer generation is currently in progress.
  core.String? state;

  /// Answer generation steps.
  core.List<GoogleCloudDiscoveryengineV1AnswerStep>? steps;

  GoogleCloudDiscoveryengineV1Answer({
    this.answerSkippedReasons,
    this.answerText,
    this.citations,
    this.completeTime,
    this.createTime,
    this.groundingScore,
    this.groundingSupports,
    this.name,
    this.queryUnderstandingInfo,
    this.references,
    this.relatedQuestions,
    this.safetyRatings,
    this.state,
    this.steps,
  });

  GoogleCloudDiscoveryengineV1Answer.fromJson(core.Map json_)
    : this(
        answerSkippedReasons:
            (json_['answerSkippedReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        answerText: json_['answerText'] as core.String?,
        citations:
            (json_['citations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerCitation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        completeTime: json_['completeTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        groundingScore: (json_['groundingScore'] as core.num?)?.toDouble(),
        groundingSupports:
            (json_['groundingSupports'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerGroundingSupport.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        queryUnderstandingInfo:
            json_.containsKey('queryUnderstandingInfo')
                ? GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo.fromJson(
                  json_['queryUnderstandingInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        references:
            (json_['references'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerReference.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        relatedQuestions:
            (json_['relatedQuestions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        safetyRatings:
            (json_['safetyRatings'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1SafetyRating.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        state: json_['state'] as core.String?,
        steps:
            (json_['steps'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1AnswerStep.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerSkippedReasons != null)
      'answerSkippedReasons': answerSkippedReasons!,
    if (answerText != null) 'answerText': answerText!,
    if (citations != null) 'citations': citations!,
    if (completeTime != null) 'completeTime': completeTime!,
    if (createTime != null) 'createTime': createTime!,
    if (groundingScore != null) 'groundingScore': groundingScore!,
    if (groundingSupports != null) 'groundingSupports': groundingSupports!,
    if (name != null) 'name': name!,
    if (queryUnderstandingInfo != null)
      'queryUnderstandingInfo': queryUnderstandingInfo!,
    if (references != null) 'references': references!,
    if (relatedQuestions != null) 'relatedQuestions': relatedQuestions!,
    if (safetyRatings != null) 'safetyRatings': safetyRatings!,
    if (state != null) 'state': state!,
    if (steps != null) 'steps': steps!,
  };
}

/// Citation info for a segment.
class GoogleCloudDiscoveryengineV1AnswerCitation {
  /// End of the attributed segment, exclusive.
  ///
  /// Measured in bytes (UTF-8 unicode). If there are multi-byte characters,such
  /// as non-ASCII characters, the index measurement is longer than the string
  /// length.
  core.String? endIndex;

  /// Citation sources for the attributed segment.
  core.List<GoogleCloudDiscoveryengineV1AnswerCitationSource>? sources;

  /// Index indicates the start of the segment, measured in bytes (UTF-8
  /// unicode).
  ///
  /// If there are multi-byte characters,such as non-ASCII characters, the index
  /// measurement is longer than the string length.
  core.String? startIndex;

  GoogleCloudDiscoveryengineV1AnswerCitation({
    this.endIndex,
    this.sources,
    this.startIndex,
  });

  GoogleCloudDiscoveryengineV1AnswerCitation.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerCitationSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        startIndex: json_['startIndex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endIndex != null) 'endIndex': endIndex!,
    if (sources != null) 'sources': sources!,
    if (startIndex != null) 'startIndex': startIndex!,
  };
}

/// Citation source.
typedef GoogleCloudDiscoveryengineV1AnswerCitationSource =
    $AnswerCitationSource;

/// The specification for answer generation.
class GoogleCloudDiscoveryengineV1AnswerGenerationSpec {
  /// The specification for user specified classifier spec.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec?
  userDefinedClassifierSpec;

  GoogleCloudDiscoveryengineV1AnswerGenerationSpec({
    this.userDefinedClassifierSpec,
  });

  GoogleCloudDiscoveryengineV1AnswerGenerationSpec.fromJson(core.Map json_)
    : this(
        userDefinedClassifierSpec:
            json_.containsKey('userDefinedClassifierSpec')
                ? GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec.fromJson(
                  json_['userDefinedClassifierSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userDefinedClassifierSpec != null)
      'userDefinedClassifierSpec': userDefinedClassifierSpec!,
  };
}

/// The specification for user defined classifier.
typedef GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec =
    $AnswerGenerationSpecUserDefinedClassifierSpec;

/// Grounding support for a claim in `answer_text`.
class GoogleCloudDiscoveryengineV1AnswerGroundingSupport {
  /// End of the claim, exclusive.
  ///
  /// Required.
  core.String? endIndex;

  /// Indicates that this claim required grounding check.
  ///
  /// When the system decided this claim didn't require attribution/grounding
  /// check, this field is set to false. In that case, no grounding check was
  /// done for the claim and therefore `grounding_score`, `sources` is not
  /// returned.
  core.bool? groundingCheckRequired;

  /// A score in the range of \[0, 1\] describing how grounded is a specific
  /// claim by the references.
  ///
  /// Higher value means that the claim is better supported by the reference
  /// chunks.
  core.double? groundingScore;

  /// Citation sources for the claim.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1AnswerCitationSource>? sources;

  /// Index indicates the start of the claim, measured in bytes (UTF-8 unicode).
  ///
  /// Required.
  core.String? startIndex;

  GoogleCloudDiscoveryengineV1AnswerGroundingSupport({
    this.endIndex,
    this.groundingCheckRequired,
    this.groundingScore,
    this.sources,
    this.startIndex,
  });

  GoogleCloudDiscoveryengineV1AnswerGroundingSupport.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.String?,
        groundingCheckRequired: json_['groundingCheckRequired'] as core.bool?,
        groundingScore: (json_['groundingScore'] as core.num?)?.toDouble(),
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerCitationSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        startIndex: json_['startIndex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endIndex != null) 'endIndex': endIndex!,
    if (groundingCheckRequired != null)
      'groundingCheckRequired': groundingCheckRequired!,
    if (groundingScore != null) 'groundingScore': groundingScore!,
    if (sources != null) 'sources': sources!,
    if (startIndex != null) 'startIndex': startIndex!,
  };
}

/// Request message for ConversationalSearchService.AnswerQuery method.
class GoogleCloudDiscoveryengineV1AnswerQueryRequest {
  /// Answer generation specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec?
  answerGenerationSpec;

  /// Deprecated: This field is deprecated.
  ///
  /// Streaming Answer API will be supported. Asynchronous mode control. If
  /// enabled, the response will be returned with answer/session resource name
  /// without final answer. The API users need to do the polling to get the
  /// latest status of answer/session by calling
  /// ConversationalSearchService.GetAnswer or
  /// ConversationalSearchService.GetSession method.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? asynchronousMode;

  /// End user specification.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec? endUserSpec;

  /// Grounding specification.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec? groundingSpec;

  /// Current user query.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1Query? query;

  /// Query understanding specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec?
  queryUnderstandingSpec;

  /// Related questions specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec?
  relatedQuestionsSpec;

  /// Model specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec? safetySpec;

  /// Search specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec? searchSpec;

  /// The session resource name.
  ///
  /// Not required. When session field is not set, the API is in sessionless
  /// mode. We support auto session mode: users can use the wildcard symbol `-`
  /// as session ID. A new ID will be automatically generated and assigned.
  core.String? session;

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
  core.Map<core.String, core.String>? userLabels;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This field should NOT have a fixed value such as `unknown_visitor`. The
  /// field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1AnswerQueryRequest({
    this.answerGenerationSpec,
    this.asynchronousMode,
    this.endUserSpec,
    this.groundingSpec,
    this.query,
    this.queryUnderstandingSpec,
    this.relatedQuestionsSpec,
    this.safetySpec,
    this.searchSpec,
    this.session,
    this.userLabels,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequest.fromJson(core.Map json_)
    : this(
        answerGenerationSpec:
            json_.containsKey('answerGenerationSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec.fromJson(
                  json_['answerGenerationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        asynchronousMode: json_['asynchronousMode'] as core.bool?,
        endUserSpec:
            json_.containsKey('endUserSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec.fromJson(
                  json_['endUserSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        groundingSpec:
            json_.containsKey('groundingSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec.fromJson(
                  json_['groundingSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? GoogleCloudDiscoveryengineV1Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryUnderstandingSpec:
            json_.containsKey('queryUnderstandingSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec.fromJson(
                  json_['queryUnderstandingSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relatedQuestionsSpec:
            json_.containsKey('relatedQuestionsSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec.fromJson(
                  json_['relatedQuestionsSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        safetySpec:
            json_.containsKey('safetySpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec.fromJson(
                  json_['safetySpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchSpec:
            json_.containsKey('searchSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec.fromJson(
                  json_['searchSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        session: json_['session'] as core.String?,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerGenerationSpec != null)
      'answerGenerationSpec': answerGenerationSpec!,
    if (asynchronousMode != null) 'asynchronousMode': asynchronousMode!,
    if (endUserSpec != null) 'endUserSpec': endUserSpec!,
    if (groundingSpec != null) 'groundingSpec': groundingSpec!,
    if (query != null) 'query': query!,
    if (queryUnderstandingSpec != null)
      'queryUnderstandingSpec': queryUnderstandingSpec!,
    if (relatedQuestionsSpec != null)
      'relatedQuestionsSpec': relatedQuestionsSpec!,
    if (safetySpec != null) 'safetySpec': safetySpec!,
    if (searchSpec != null) 'searchSpec': searchSpec!,
    if (session != null) 'session': session!,
    if (userLabels != null) 'userLabels': userLabels!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Answer generation specification.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec {
  /// Language code for Answer.
  ///
  /// Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This is an
  /// experimental feature.
  core.String? answerLanguageCode;

  /// Specifies whether to filter out adversarial queries.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect adversarial queries. No answer is returned if the search query
  /// is classified as an adversarial query. For example, a user might ask a
  /// question regarding negative comments about the company or submit a query
  /// designed to generate unsafe, policy-violating output. If this field is set
  /// to `true`, we skip generating answers for adversarial queries and return
  /// fallback messages instead.
  core.bool? ignoreAdversarialQuery;

  /// Specifies whether to filter out jail-breaking queries.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect jail-breaking queries. No summary is returned if the search
  /// query is classified as a jail-breaking query. A user might add
  /// instructions to the query to change the tone, style, language, content of
  /// the answer, or ask the model to act as a different entity, e.g. "Reply in
  /// the tone of a competing company's CEO". If this field is set to `true`, we
  /// skip generating summaries for jail-breaking queries and return fallback
  /// messages instead.
  ///
  /// Optional.
  core.bool? ignoreJailBreakingQuery;

  /// Specifies whether to filter out queries that have low relevance.
  ///
  /// If this field is set to `false`, all search results are used regardless of
  /// relevance to generate answers. If set to `true` or unset, the behavior
  /// will be determined automatically by the service.
  core.bool? ignoreLowRelevantContent;

  /// Specifies whether to filter out queries that are not answer-seeking.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect answer-seeking queries. No answer is returned if the search
  /// query is classified as a non-answer seeking query. If this field is set to
  /// `true`, we skip generating answers for non-answer seeking queries and
  /// return fallback messages instead.
  core.bool? ignoreNonAnswerSeekingQuery;

  /// Specifies whether to include citation metadata in the answer.
  ///
  /// The default value is `false`.
  core.bool? includeCitations;

  /// Answer generation model specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec?
  modelSpec;

  /// Answer generation prompt specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec?
  promptSpec;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec({
    this.answerLanguageCode,
    this.ignoreAdversarialQuery,
    this.ignoreJailBreakingQuery,
    this.ignoreLowRelevantContent,
    this.ignoreNonAnswerSeekingQuery,
    this.includeCitations,
    this.modelSpec,
    this.promptSpec,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec.fromJson(
    core.Map json_,
  ) : this(
        answerLanguageCode: json_['answerLanguageCode'] as core.String?,
        ignoreAdversarialQuery: json_['ignoreAdversarialQuery'] as core.bool?,
        ignoreJailBreakingQuery: json_['ignoreJailBreakingQuery'] as core.bool?,
        ignoreLowRelevantContent:
            json_['ignoreLowRelevantContent'] as core.bool?,
        ignoreNonAnswerSeekingQuery:
            json_['ignoreNonAnswerSeekingQuery'] as core.bool?,
        includeCitations: json_['includeCitations'] as core.bool?,
        modelSpec:
            json_.containsKey('modelSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec.fromJson(
                  json_['modelSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        promptSpec:
            json_.containsKey('promptSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec.fromJson(
                  json_['promptSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerLanguageCode != null) 'answerLanguageCode': answerLanguageCode!,
    if (ignoreAdversarialQuery != null)
      'ignoreAdversarialQuery': ignoreAdversarialQuery!,
    if (ignoreJailBreakingQuery != null)
      'ignoreJailBreakingQuery': ignoreJailBreakingQuery!,
    if (ignoreLowRelevantContent != null)
      'ignoreLowRelevantContent': ignoreLowRelevantContent!,
    if (ignoreNonAnswerSeekingQuery != null)
      'ignoreNonAnswerSeekingQuery': ignoreNonAnswerSeekingQuery!,
    if (includeCitations != null) 'includeCitations': includeCitations!,
    if (modelSpec != null) 'modelSpec': modelSpec!,
    if (promptSpec != null) 'promptSpec': promptSpec!,
  };
}

/// Answer Generation Model specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec =
    $AnswerQueryRequestAnswerGenerationSpecModelSpec;

/// Answer generation prompt specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec =
    $AnswerQueryRequestAnswerGenerationSpecPromptSpec;

/// End user specification.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec {
  /// End user metadata.
  ///
  /// Optional.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData
  >?
  endUserMetadata;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec({
    this.endUserMetadata,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec.fromJson(
    core.Map json_,
  ) : this(
        endUserMetadata:
            (json_['endUserMetadata'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endUserMetadata != null) 'endUserMetadata': endUserMetadata!,
  };
}

/// End user metadata.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData {
  /// Chunk information.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo?
  chunkInfo;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData({
    this.chunkInfo,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData.fromJson(
    core.Map json_,
  ) : this(
        chunkInfo:
            json_.containsKey('chunkInfo')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo.fromJson(
                  json_['chunkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkInfo != null) 'chunkInfo': chunkInfo!,
  };
}

/// Chunk information.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo {
  /// Chunk textual content.
  ///
  /// It is limited to 8000 characters.
  core.String? content;

  /// Metadata of the document from the current chunk.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata?
  documentMetadata;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo({
    this.content,
    this.documentMetadata,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        documentMetadata:
            json_.containsKey('documentMetadata')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata.fromJson(
                  json_['documentMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
  };
}

/// Document metadata contains the information of the document of the current
/// chunk.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata =
    $AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata;

/// Grounding specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec =
    $AnswerQueryRequestGroundingSpec;

/// Query understanding specification.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec {
  /// Whether to disable spell correction.
  ///
  /// The default value is `false`.
  ///
  /// Optional.
  core.bool? disableSpellCorrection;

  /// Query classification specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec?
  queryClassificationSpec;

  /// Query rephraser specification.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec?
  queryRephraserSpec;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec({
    this.disableSpellCorrection,
    this.queryClassificationSpec,
    this.queryRephraserSpec,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec.fromJson(
    core.Map json_,
  ) : this(
        disableSpellCorrection: json_['disableSpellCorrection'] as core.bool?,
        queryClassificationSpec:
            json_.containsKey('queryClassificationSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec.fromJson(
                  json_['queryClassificationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryRephraserSpec:
            json_.containsKey('queryRephraserSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec.fromJson(
                  json_['queryRephraserSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disableSpellCorrection != null)
      'disableSpellCorrection': disableSpellCorrection!,
    if (queryClassificationSpec != null)
      'queryClassificationSpec': queryClassificationSpec!,
    if (queryRephraserSpec != null) 'queryRephraserSpec': queryRephraserSpec!,
  };
}

/// Query classification specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec =
    $AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec;

/// Query rephraser specification.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec {
  /// Disable query rephraser.
  core.bool? disable;

  /// Max rephrase steps.
  ///
  /// The max number is 5 steps. If not set or set to \< 1, it will be set to 1
  /// by default.
  core.int? maxRephraseSteps;

  /// Query Rephraser Model specification.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec?
  modelSpec;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec({
    this.disable,
    this.maxRephraseSteps,
    this.modelSpec,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec.fromJson(
    core.Map json_,
  ) : this(
        disable: json_['disable'] as core.bool?,
        maxRephraseSteps: json_['maxRephraseSteps'] as core.int?,
        modelSpec:
            json_.containsKey('modelSpec')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec.fromJson(
                  json_['modelSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disable != null) 'disable': disable!,
    if (maxRephraseSteps != null) 'maxRephraseSteps': maxRephraseSteps!,
    if (modelSpec != null) 'modelSpec': modelSpec!,
  };
}

/// Query Rephraser Model specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec =
    $AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec;

/// Related questions specification.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec =
    $AnswerQueryRequestRelatedQuestionsSpec;

/// Safety specification.
///
/// There are two use cases: 1. when only safety_spec.enable is set, the
/// BLOCK_LOW_AND_ABOVE threshold will be applied for all categories. 2. when
/// safety_spec.enable is set and some safety_settings are set, only specified
/// safety_settings are applied.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec {
  /// Enable the safety filtering on the answer response.
  ///
  /// It is false by default.
  core.bool? enable;

  /// Safety settings.
  ///
  /// This settings are effective only when the safety_spec.enable is true.
  ///
  /// Optional.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting
  >?
  safetySettings;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec({
    this.enable,
    this.safetySettings,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec.fromJson(
    core.Map json_,
  ) : this(
        enable: json_['enable'] as core.bool?,
        safetySettings:
            (json_['safetySettings'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enable != null) 'enable': enable!,
    if (safetySettings != null) 'safetySettings': safetySettings!,
  };
}

/// Safety settings.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting =
    $AnswerQueryRequestSafetySpecSafetySetting;

/// Search specification.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec {
  /// Search parameters.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams?
  searchParams;

  /// Search result list.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList?
  searchResultList;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec({
    this.searchParams,
    this.searchResultList,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec.fromJson(
    core.Map json_,
  ) : this(
        searchParams:
            json_.containsKey('searchParams')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams.fromJson(
                  json_['searchParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchResultList:
            json_.containsKey('searchResultList')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList.fromJson(
                  json_['searchResultList']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (searchParams != null) 'searchParams': searchParams!,
    if (searchResultList != null) 'searchResultList': searchResultList!,
  };
}

/// Search parameters.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams {
  /// Boost specification to boost certain documents in search results which may
  /// affect the answer query response.
  ///
  /// For more information on boosting, see
  /// [Boosting](https://cloud.google.com/retail/docs/boosting#boost)
  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec? boostSpec;

  /// Specs defining dataStores to filter on in a search call and configurations
  /// for those dataStores.
  ///
  /// This is only considered for engines with multiple dataStores use case. For
  /// single dataStore within an engine, they should use the specs at the top
  /// level.
  core.List<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>?
  dataStoreSpecs;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the documents being filtered.
  ///
  /// Filter expression is case-sensitive. This will be used to filter search
  /// results which may affect the Answer response. If this field is
  /// unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI
  /// Search is done by mapping the LHS filter key to a key property defined in
  /// the Vertex AI Search backend -- this mapping is defined by the customer in
  /// their schema. For example a media customers might have a field 'name' in
  /// their schema. In this case the filter would look like this: filter --\>
  /// name:'ANY("king kong")' For more information about filtering including
  /// syntax and filter operators, see
  /// [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  core.String? filter;

  /// Number of search results to return.
  ///
  /// The default value is 10.
  core.int? maxReturnResults;

  /// The order in which documents are returned.
  ///
  /// Documents can be ordered by a field in an Document object. Leave it unset
  /// if ordered by relevance. `order_by` expression is case-sensitive. For more
  /// information on ordering, see
  /// [Ordering](https://cloud.google.com/retail/docs/filter-and-order#order) If
  /// this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
  core.String? orderBy;

  /// Specifies the search result mode.
  ///
  /// If unspecified, the search result mode defaults to `DOCUMENTS`. See
  /// [parse and chunk documents](https://cloud.google.com/generative-ai-app-builder/docs/parse-chunk-documents)
  /// Possible string values are:
  /// - "SEARCH_RESULT_MODE_UNSPECIFIED" : Default value.
  /// - "DOCUMENTS" : Returns documents in the search result.
  /// - "CHUNKS" : Returns chunks in the search result. Only available if the
  /// DocumentProcessingConfig.chunking_config is specified.
  core.String? searchResultMode;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams({
    this.boostSpec,
    this.dataStoreSpecs,
    this.filter,
    this.maxReturnResults,
    this.orderBy,
    this.searchResultMode,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams.fromJson(
    core.Map json_,
  ) : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataStoreSpecs:
            (json_['dataStoreSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        filter: json_['filter'] as core.String?,
        maxReturnResults: json_['maxReturnResults'] as core.int?,
        orderBy: json_['orderBy'] as core.String?,
        searchResultMode: json_['searchResultMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (dataStoreSpecs != null) 'dataStoreSpecs': dataStoreSpecs!,
    if (filter != null) 'filter': filter!,
    if (maxReturnResults != null) 'maxReturnResults': maxReturnResults!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (searchResultMode != null) 'searchResultMode': searchResultMode!,
  };
}

/// Search result list.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList {
  /// Search results.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult
  >?
  searchResults;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList({
    this.searchResults,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList.fromJson(
    core.Map json_,
  ) : this(
        searchResults:
            (json_['searchResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (searchResults != null) 'searchResults': searchResults!,
  };
}

/// Search result.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult {
  /// Chunk information.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo?
  chunkInfo;

  /// Unstructured document information.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo?
  unstructuredDocumentInfo;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult({
    this.chunkInfo,
    this.unstructuredDocumentInfo,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult.fromJson(
    core.Map json_,
  ) : this(
        chunkInfo:
            json_.containsKey('chunkInfo')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo.fromJson(
                  json_['chunkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        unstructuredDocumentInfo:
            json_.containsKey('unstructuredDocumentInfo')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo.fromJson(
                  json_['unstructuredDocumentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkInfo != null) 'chunkInfo': chunkInfo!,
    if (unstructuredDocumentInfo != null)
      'unstructuredDocumentInfo': unstructuredDocumentInfo!,
  };
}

/// Chunk information.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo {
  /// Chunk resource name.
  core.String? chunk;

  /// Chunk textual content.
  core.String? content;

  /// Metadata of the document from the current chunk.
  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata?
  documentMetadata;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo({
    this.chunk,
    this.content,
    this.documentMetadata,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo.fromJson(
    core.Map json_,
  ) : this(
        chunk: json_['chunk'] as core.String?,
        content: json_['content'] as core.String?,
        documentMetadata:
            json_.containsKey('documentMetadata')
                ? GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata.fromJson(
                  json_['documentMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunk != null) 'chunk': chunk!,
    if (content != null) 'content': content!,
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
  };
}

/// Document metadata contains the information of the document of the current
/// chunk.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata =
    $AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata;

/// Unstructured document information.
class GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo {
  /// Document resource name.
  core.String? document;

  /// List of document contexts.
  ///
  /// The content will be used for Answer Generation. This is supposed to be the
  /// main content of the document that can be long and comprehensive.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
  >?
  documentContexts;

  /// Deprecated: This field is deprecated and will have no effect on the Answer
  /// generation.
  ///
  /// Please use document_contexts and extractive_segments fields. List of
  /// extractive answers.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
  >?
  extractiveAnswers;

  /// List of extractive segments.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
  >?
  extractiveSegments;

  /// Title.
  core.String? title;

  /// URI for the document.
  core.String? uri;

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo({
    this.document,
    this.documentContexts,
    this.extractiveAnswers,
    this.extractiveSegments,
    this.title,
    this.uri,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo.fromJson(
    core.Map json_,
  ) : this(
        document: json_['document'] as core.String?,
        documentContexts:
            (json_['documentContexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        extractiveAnswers:
            (json_['extractiveAnswers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        extractiveSegments:
            (json_['extractiveSegments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (documentContexts != null) 'documentContexts': documentContexts!,
    if (extractiveAnswers != null) 'extractiveAnswers': extractiveAnswers!,
    if (extractiveSegments != null) 'extractiveSegments': extractiveSegments!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Document context.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext =
    $AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext;

/// Extractive answer.
///
/// [Guide](https://cloud.google.com/generative-ai-app-builder/docs/snippets#get-answers)
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer =
    $AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer;

/// Extractive segment.
///
/// [Guide](https://cloud.google.com/generative-ai-app-builder/docs/snippets#extractive-segments)
/// Answer generation will only use it if document_contexts is empty. This is
/// supposed to be shorter snippets.
typedef GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment =
    $AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment;

/// Response message for ConversationalSearchService.AnswerQuery method.
class GoogleCloudDiscoveryengineV1AnswerQueryResponse {
  /// Answer resource object.
  ///
  /// If
  /// AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.max_rephrase_steps
  /// is greater than 1, use Answer.name to fetch answer information using
  /// ConversationalSearchService.GetAnswer API.
  GoogleCloudDiscoveryengineV1Answer? answer;

  /// A global unique ID used for logging.
  core.String? answerQueryToken;

  /// Session resource object.
  ///
  /// It will be only available when session field is set and valid in the
  /// AnswerQueryRequest request.
  GoogleCloudDiscoveryengineV1Session? session;

  GoogleCloudDiscoveryengineV1AnswerQueryResponse({
    this.answer,
    this.answerQueryToken,
    this.session,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryResponse.fromJson(core.Map json_)
    : this(
        answer:
            json_.containsKey('answer')
                ? GoogleCloudDiscoveryengineV1Answer.fromJson(
                  json_['answer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        answerQueryToken: json_['answerQueryToken'] as core.String?,
        session:
            json_.containsKey('session')
                ? GoogleCloudDiscoveryengineV1Session.fromJson(
                  json_['session'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (answerQueryToken != null) 'answerQueryToken': answerQueryToken!,
    if (session != null) 'session': session!,
  };
}

/// Query understanding information.
class GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo {
  /// Query classification information.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo
  >?
  queryClassificationInfo;

  GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo({
    this.queryClassificationInfo,
  });

  GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo.fromJson(
    core.Map json_,
  ) : this(
        queryClassificationInfo:
            (json_['queryClassificationInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (queryClassificationInfo != null)
      'queryClassificationInfo': queryClassificationInfo!,
  };
}

/// Query classification information.
typedef GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo =
    $AnswerQueryUnderstandingInfoQueryClassificationInfo;

/// Reference.
class GoogleCloudDiscoveryengineV1AnswerReference {
  /// Chunk information.
  GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo? chunkInfo;

  /// Structured document information.
  GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo?
  structuredDocumentInfo;

  /// Unstructured document information.
  GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo?
  unstructuredDocumentInfo;

  GoogleCloudDiscoveryengineV1AnswerReference({
    this.chunkInfo,
    this.structuredDocumentInfo,
    this.unstructuredDocumentInfo,
  });

  GoogleCloudDiscoveryengineV1AnswerReference.fromJson(core.Map json_)
    : this(
        chunkInfo:
            json_.containsKey('chunkInfo')
                ? GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo.fromJson(
                  json_['chunkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        structuredDocumentInfo:
            json_.containsKey('structuredDocumentInfo')
                ? GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo.fromJson(
                  json_['structuredDocumentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        unstructuredDocumentInfo:
            json_.containsKey('unstructuredDocumentInfo')
                ? GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo.fromJson(
                  json_['unstructuredDocumentInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkInfo != null) 'chunkInfo': chunkInfo!,
    if (structuredDocumentInfo != null)
      'structuredDocumentInfo': structuredDocumentInfo!,
    if (unstructuredDocumentInfo != null)
      'unstructuredDocumentInfo': unstructuredDocumentInfo!,
  };
}

/// Chunk information.
class GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo {
  /// Chunk resource name.
  core.String? chunk;

  /// Chunk textual content.
  core.String? content;

  /// Document metadata.
  GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata?
  documentMetadata;

  /// The relevance of the chunk for a given query.
  ///
  /// Values range from 0.0 (completely irrelevant) to 1.0 (completely
  /// relevant). This value is for informational purpose only. It may change for
  /// the same query and chunk at any time due to a model retraining or change
  /// in implementation.
  core.double? relevanceScore;

  GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo({
    this.chunk,
    this.content,
    this.documentMetadata,
    this.relevanceScore,
  });

  GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo.fromJson(core.Map json_)
    : this(
        chunk: json_['chunk'] as core.String?,
        content: json_['content'] as core.String?,
        documentMetadata:
            json_.containsKey('documentMetadata')
                ? GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata.fromJson(
                  json_['documentMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relevanceScore: (json_['relevanceScore'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunk != null) 'chunk': chunk!,
    if (content != null) 'content': content!,
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
    if (relevanceScore != null) 'relevanceScore': relevanceScore!,
  };
}

/// Document metadata.
typedef GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata =
    $AnswerReferenceChunkInfoDocumentMetadata;

/// Structured search information.
typedef GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo =
    $AnswerReferenceStructuredDocumentInfo;

/// Unstructured document information.
class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo {
  /// List of cited chunk contents derived from document content.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent
  >?
  chunkContents;

  /// Document resource name.
  core.String? document;

  /// The structured JSON metadata for the document.
  ///
  /// It is populated from the struct data from the Chunk in search result.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? structData;

  /// Title.
  core.String? title;

  /// URI for the document.
  core.String? uri;

  GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo({
    this.chunkContents,
    this.document,
    this.structData,
    this.title,
    this.uri,
  });

  GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo.fromJson(
    core.Map json_,
  ) : this(
        chunkContents:
            (json_['chunkContents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        document: json_['document'] as core.String?,
        structData:
            json_.containsKey('structData')
                ? json_['structData'] as core.Map<core.String, core.dynamic>
                : null,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkContents != null) 'chunkContents': chunkContents!,
    if (document != null) 'document': document!,
    if (structData != null) 'structData': structData!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Chunk content.
class GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent {
  /// Chunk textual content.
  core.String? content;

  /// Page identifier.
  core.String? pageIdentifier;

  /// The relevance of the chunk for a given query.
  ///
  /// Values range from 0.0 (completely irrelevant) to 1.0 (completely
  /// relevant). This value is for informational purpose only. It may change for
  /// the same query and chunk at any time due to a model retraining or change
  /// in implementation.
  core.double? relevanceScore;

  GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent({
    this.content,
    this.pageIdentifier,
    this.relevanceScore,
  });

  GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        pageIdentifier: json_['pageIdentifier'] as core.String?,
        relevanceScore: (json_['relevanceScore'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (pageIdentifier != null) 'pageIdentifier': pageIdentifier!,
    if (relevanceScore != null) 'relevanceScore': relevanceScore!,
  };
}

/// Step information.
class GoogleCloudDiscoveryengineV1AnswerStep {
  /// Actions.
  core.List<GoogleCloudDiscoveryengineV1AnswerStepAction>? actions;

  /// The description of the step.
  core.String? description;

  /// The state of the step.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Step is currently in progress.
  /// - "FAILED" : Step currently failed.
  /// - "SUCCEEDED" : Step has succeeded.
  core.String? state;

  /// The thought of the step.
  core.String? thought;

  GoogleCloudDiscoveryengineV1AnswerStep({
    this.actions,
    this.description,
    this.state,
    this.thought,
  });

  GoogleCloudDiscoveryengineV1AnswerStep.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerStepAction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        description: json_['description'] as core.String?,
        state: json_['state'] as core.String?,
        thought: json_['thought'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (description != null) 'description': description!,
    if (state != null) 'state': state!,
    if (thought != null) 'thought': thought!,
  };
}

/// Action.
class GoogleCloudDiscoveryengineV1AnswerStepAction {
  /// Observation.
  GoogleCloudDiscoveryengineV1AnswerStepActionObservation? observation;

  /// Search action.
  GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction? searchAction;

  GoogleCloudDiscoveryengineV1AnswerStepAction({
    this.observation,
    this.searchAction,
  });

  GoogleCloudDiscoveryengineV1AnswerStepAction.fromJson(core.Map json_)
    : this(
        observation:
            json_.containsKey('observation')
                ? GoogleCloudDiscoveryengineV1AnswerStepActionObservation.fromJson(
                  json_['observation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchAction:
            json_.containsKey('searchAction')
                ? GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction.fromJson(
                  json_['searchAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (observation != null) 'observation': observation!,
    if (searchAction != null) 'searchAction': searchAction!,
  };
}

/// Observation.
class GoogleCloudDiscoveryengineV1AnswerStepActionObservation {
  /// Search results observed by the search action, it can be snippets info or
  /// chunk info, depending on the citation type set by the user.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult
  >?
  searchResults;

  GoogleCloudDiscoveryengineV1AnswerStepActionObservation({this.searchResults});

  GoogleCloudDiscoveryengineV1AnswerStepActionObservation.fromJson(
    core.Map json_,
  ) : this(
        searchResults:
            (json_['searchResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (searchResults != null) 'searchResults': searchResults!,
  };
}

class GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult {
  /// If citation_type is CHUNK_LEVEL_CITATION and chunk mode is on, populate
  /// chunk info.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo
  >?
  chunkInfo;

  /// Document resource name.
  core.String? document;

  /// If citation_type is DOCUMENT_LEVEL_CITATION, populate document level
  /// snippets.
  core.List<
    GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo
  >?
  snippetInfo;

  /// Data representation.
  ///
  /// The structured JSON data for the document. It's populated from the struct
  /// data from the Document, or the Chunk in search result.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? structData;

  /// Title.
  core.String? title;

  /// URI for the document.
  core.String? uri;

  GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult({
    this.chunkInfo,
    this.document,
    this.snippetInfo,
    this.structData,
    this.title,
    this.uri,
  });

  GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult.fromJson(
    core.Map json_,
  ) : this(
        chunkInfo:
            (json_['chunkInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        document: json_['document'] as core.String?,
        snippetInfo:
            (json_['snippetInfo'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        structData:
            json_.containsKey('structData')
                ? json_['structData'] as core.Map<core.String, core.dynamic>
                : null,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkInfo != null) 'chunkInfo': chunkInfo!,
    if (document != null) 'document': document!,
    if (snippetInfo != null) 'snippetInfo': snippetInfo!,
    if (structData != null) 'structData': structData!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Chunk information.
typedef GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo =
    $AnswerStepActionObservationSearchResultChunkInfo;

/// Snippet information.
typedef GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo =
    $AnswerStepActionObservationSearchResultSnippetInfo;

/// Search action.
typedef GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction =
    $AnswerStepActionSearchAction;

/// AssistAnswer resource, main part of AssistResponse.
class GoogleCloudDiscoveryengineV1AssistAnswer {
  /// Reasons for not answering the assist call.
  core.List<core.String>? assistSkippedReasons;

  /// Identifier.
  ///
  /// Resource name of the `AssistAnswer`. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}/assistAnswers/{assist_answer}`
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  ///
  /// Immutable.
  core.String? name;

  /// Replies of the assistant.
  core.List<GoogleCloudDiscoveryengineV1AssistAnswerReply>? replies;

  /// State of the answer generation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Assist operation is currently in progress.
  /// - "FAILED" : Assist operation has failed.
  /// - "SUCCEEDED" : Assist operation has succeeded.
  /// - "SKIPPED" : Assist operation has been skipped.
  core.String? state;

  GoogleCloudDiscoveryengineV1AssistAnswer({
    this.assistSkippedReasons,
    this.name,
    this.replies,
    this.state,
  });

  GoogleCloudDiscoveryengineV1AssistAnswer.fromJson(core.Map json_)
    : this(
        assistSkippedReasons:
            (json_['assistSkippedReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        replies:
            (json_['replies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AssistAnswerReply.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assistSkippedReasons != null)
      'assistSkippedReasons': assistSkippedReasons!,
    if (name != null) 'name': name!,
    if (replies != null) 'replies': replies!,
    if (state != null) 'state': state!,
  };
}

/// One part of the multi-part response of the assist call.
class GoogleCloudDiscoveryengineV1AssistAnswerReply {
  /// Possibly grounded response text or media from the assistant.
  GoogleCloudDiscoveryengineV1AssistantGroundedContent? groundedContent;

  GoogleCloudDiscoveryengineV1AssistAnswerReply({this.groundedContent});

  GoogleCloudDiscoveryengineV1AssistAnswerReply.fromJson(core.Map json_)
    : this(
        groundedContent:
            json_.containsKey('groundedContent')
                ? GoogleCloudDiscoveryengineV1AssistantGroundedContent.fromJson(
                  json_['groundedContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (groundedContent != null) 'groundedContent': groundedContent!,
  };
}

/// User metadata of the request.
typedef GoogleCloudDiscoveryengineV1AssistUserMetadata = $AssistUserMetadata;

/// Discovery Engine Assistant resource.
typedef GoogleCloudDiscoveryengineV1Assistant = $Assistant;

/// Multi-modal content.
class GoogleCloudDiscoveryengineV1AssistantContent {
  /// Result of executing an ExecutableCode.
  GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult?
  codeExecutionResult;

  /// Code generated by the model that is meant to be executed.
  GoogleCloudDiscoveryengineV1AssistantContentExecutableCode? executableCode;

  /// A file, e.g., an audio summary.
  GoogleCloudDiscoveryengineV1AssistantContentFile? file;

  /// Inline binary data.
  GoogleCloudDiscoveryengineV1AssistantContentBlob? inlineData;

  /// The producer of the content.
  ///
  /// Can be "model" or "user".
  core.String? role;

  /// Inline text.
  core.String? text;

  /// Indicates if the part is thought from the model.
  ///
  /// Optional.
  core.bool? thought;

  GoogleCloudDiscoveryengineV1AssistantContent({
    this.codeExecutionResult,
    this.executableCode,
    this.file,
    this.inlineData,
    this.role,
    this.text,
    this.thought,
  });

  GoogleCloudDiscoveryengineV1AssistantContent.fromJson(core.Map json_)
    : this(
        codeExecutionResult:
            json_.containsKey('codeExecutionResult')
                ? GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult.fromJson(
                  json_['codeExecutionResult']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executableCode:
            json_.containsKey('executableCode')
                ? GoogleCloudDiscoveryengineV1AssistantContentExecutableCode.fromJson(
                  json_['executableCode']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        file:
            json_.containsKey('file')
                ? GoogleCloudDiscoveryengineV1AssistantContentFile.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineData:
            json_.containsKey('inlineData')
                ? GoogleCloudDiscoveryengineV1AssistantContentBlob.fromJson(
                  json_['inlineData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        role: json_['role'] as core.String?,
        text: json_['text'] as core.String?,
        thought: json_['thought'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (codeExecutionResult != null)
      'codeExecutionResult': codeExecutionResult!,
    if (executableCode != null) 'executableCode': executableCode!,
    if (file != null) 'file': file!,
    if (inlineData != null) 'inlineData': inlineData!,
    if (role != null) 'role': role!,
    if (text != null) 'text': text!,
    if (thought != null) 'thought': thought!,
  };
}

/// Inline blob.
typedef GoogleCloudDiscoveryengineV1AssistantContentBlob =
    $AssistantContentBlob;

/// Result of executing ExecutableCode.
typedef GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult =
    $CodeExecutionResult;

/// Code generated by the model that is meant to be executed by the model.
typedef GoogleCloudDiscoveryengineV1AssistantContentExecutableCode =
    $AssistantContentExecutableCode;

/// A file, e.g., an audio summary.
typedef GoogleCloudDiscoveryengineV1AssistantContentFile =
    $AssistantContentFile;

/// A piece of content and possibly its grounding information.
///
/// Not all content needs grounding. Phrases like "Of course, I will gladly
/// search it for you." do not need grounding.
class GoogleCloudDiscoveryengineV1AssistantGroundedContent {
  /// The content.
  GoogleCloudDiscoveryengineV1AssistantContent? content;

  /// Metadata for grounding based on text sources.
  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata?
  textGroundingMetadata;

  GoogleCloudDiscoveryengineV1AssistantGroundedContent({
    this.content,
    this.textGroundingMetadata,
  });

  GoogleCloudDiscoveryengineV1AssistantGroundedContent.fromJson(core.Map json_)
    : this(
        content:
            json_.containsKey('content')
                ? GoogleCloudDiscoveryengineV1AssistantContent.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        textGroundingMetadata:
            json_.containsKey('textGroundingMetadata')
                ? GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata.fromJson(
                  json_['textGroundingMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (textGroundingMetadata != null)
      'textGroundingMetadata': textGroundingMetadata!,
  };
}

/// Grounding details for text sources.
class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata {
  /// References for the grounded text.
  core.List<
    GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference
  >?
  references;

  /// Grounding information for parts of the text.
  core.List<
    GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment
  >?
  segments;

  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata({
    this.references,
    this.segments,
  });

  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata.fromJson(
    core.Map json_,
  ) : this(
        references:
            (json_['references'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        segments:
            (json_['segments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (references != null) 'references': references!,
    if (segments != null) 'segments': segments!,
  };
}

/// Referenced content and related document metadata.
class GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference {
  /// Referenced text content.
  core.String? content;

  /// Document metadata.
  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata?
  documentMetadata;

  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference({
    this.content,
    this.documentMetadata,
  });

  GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        documentMetadata:
            json_.containsKey('documentMetadata')
                ? GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata.fromJson(
                  json_['documentMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
  };
}

/// Document metadata.
typedef GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata =
    $AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata;

/// Grounding information for a segment of the text.
typedef GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment =
    $AssistantGroundedContentTextGroundingMetadataSegment;

/// Request message for SiteSearchEngineService.BatchCreateTargetSites method.
class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest {
  /// The request message specifying the resources to create.
  ///
  /// A maximum of 20 TargetSites can be created in a batch.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1CreateTargetSiteRequest>? requests;

  GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest({this.requests});

  GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CreateTargetSiteRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// Response message for DocumentService.BatchGetDocumentsMetadata method.
class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse {
  /// The metadata of the Documents.
  core.List<
    GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata
  >?
  documentsMetadata;

  GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse({
    this.documentsMetadata,
  });

  GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse.fromJson(
    core.Map json_,
  ) : this(
        documentsMetadata:
            (json_['documentsMetadata'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentsMetadata != null) 'documentsMetadata': documentsMetadata!,
  };
}

/// The metadata of a Document.
class GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata {
  /// The data ingestion source of the Document.
  ///
  /// Allowed values are: * `batch`: Data ingested via Batch API, e.g.,
  /// ImportDocuments. * `streaming` Data ingested via Streaming API, e.g., FHIR
  /// streaming.
  core.String? dataIngestionSource;

  /// The timestamp of the last time the Document was last indexed.
  core.String? lastRefreshedTime;

  /// The value of the matcher that was used to match the Document.
  GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue?
  matcherValue;

  /// The state of the document.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Should never be set.
  /// - "INDEXED" : The Document is indexed.
  /// - "NOT_IN_TARGET_SITE" : The Document is not indexed because its URI is
  /// not in the TargetSite.
  /// - "NOT_IN_INDEX" : The Document is not indexed.
  core.String? state;

  GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata({
    this.dataIngestionSource,
    this.lastRefreshedTime,
    this.matcherValue,
    this.state,
  });

  GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata.fromJson(
    core.Map json_,
  ) : this(
        dataIngestionSource: json_['dataIngestionSource'] as core.String?,
        lastRefreshedTime: json_['lastRefreshedTime'] as core.String?,
        matcherValue:
            json_.containsKey('matcherValue')
                ? GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue.fromJson(
                  json_['matcherValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataIngestionSource != null)
      'dataIngestionSource': dataIngestionSource!,
    if (lastRefreshedTime != null) 'lastRefreshedTime': lastRefreshedTime!,
    if (matcherValue != null) 'matcherValue': matcherValue!,
    if (state != null) 'state': state!,
  };
}

/// The value of the matcher that was used to match the Document.
typedef GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue =
    $BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue;

/// Request message for UserLicenseService.BatchUpdateUserLicenses method.
class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest {
  /// If true, if user licenses removed associated license config, the user
  /// license will be deleted.
  ///
  /// By default which is false, the user license will be updated to unassigned
  /// state.
  ///
  /// Optional.
  core.bool? deleteUnassignedUserLicenses;

  /// The inline source for the input content for document embeddings.
  GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource?
  inlineSource;

  GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest({
    this.deleteUnassignedUserLicenses,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest.fromJson(
    core.Map json_,
  ) : this(
        deleteUnassignedUserLicenses:
            json_['deleteUnassignedUserLicenses'] as core.bool?,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deleteUnassignedUserLicenses != null)
      'deleteUnassignedUserLicenses': deleteUnassignedUserLicenses!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source for the input config for BatchUpdateUserLicenses method.
class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource {
  /// The list of fields to update.
  ///
  /// Optional.
  core.String? updateMask;

  /// A list of user licenses to update.
  ///
  /// Each user license must have a valid UserLicense.user_principal.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1UserLicense>? userLicenses;

  GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource({
    this.updateMask,
    this.userLicenses,
  });

  GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        updateMask: json_['updateMask'] as core.String?,
        userLicenses:
            (json_['userLicenses'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1UserLicense.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (updateMask != null) 'updateMask': updateMask!,
    if (userLicenses != null) 'userLicenses': userLicenses!,
  };
}

/// Request message for SiteSearchEngineService.BatchVerifyTargetSites method.
typedef GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest = $Empty;

/// BigQuery source import data from.
class GoogleCloudDiscoveryengineV1BigQuerySource {
  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for user event imports: * `user_event` (default): One
  /// UserEvent per row. Supported values for document imports: * `document`
  /// (default): One Document format per row. Each document must have a valid
  /// Document.id and one of Document.json_data or Document.struct_data. *
  /// `custom`: One custom data per row in arbitrary format that conforms to the
  /// defined Schema of the data store. This can only be used by the GENERIC
  /// Data Store vertical.
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

  /// The project ID or the project number that contains the BigQuery source.
  ///
  /// Has a length limit of 128 characters. If not specified, inherits the
  /// project ID from the parent request.
  core.String? projectId;

  /// The BigQuery table to copy the data from with a length limit of 1,024
  /// characters.
  ///
  /// Required.
  core.String? tableId;

  GoogleCloudDiscoveryengineV1BigQuerySource({
    this.dataSchema,
    this.datasetId,
    this.gcsStagingDir,
    this.partitionDate,
    this.projectId,
    this.tableId,
  });

  GoogleCloudDiscoveryengineV1BigQuerySource.fromJson(core.Map json_)
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

/// The Bigtable Options object that contains information to support the import.
class GoogleCloudDiscoveryengineV1BigtableOptions {
  /// The mapping from family names to an object that contains column families
  /// level information for the given column family.
  ///
  /// If a family is not present in this map it will be ignored.
  core.Map<
    core.String,
    GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily
  >?
  families;

  /// The field name used for saving row key value in the document.
  ///
  /// The name has to match the pattern `a-zA-Z0-9*`.
  core.String? keyFieldName;

  GoogleCloudDiscoveryengineV1BigtableOptions({
    this.families,
    this.keyFieldName,
  });

  GoogleCloudDiscoveryengineV1BigtableOptions.fromJson(core.Map json_)
    : this(
        families: (json_['families'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily.fromJson(
              value as core.Map<core.String, core.dynamic>,
            ),
          ),
        ),
        keyFieldName: json_['keyFieldName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (families != null) 'families': families!,
    if (keyFieldName != null) 'keyFieldName': keyFieldName!,
  };
}

/// The column of the Bigtable.
typedef GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn =
    $BigtableOptionsBigtableColumn;

/// The column family of the Bigtable.
class GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily {
  /// The list of objects that contains column level information for each
  /// column.
  ///
  /// If a column is not present in this list it will be ignored.
  core.List<GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn>? columns;

  /// The encoding mode of the values when the type is not STRING.
  ///
  /// Acceptable encoding values are: * `TEXT`: indicates values are
  /// alphanumeric text strings. * `BINARY`: indicates values are encoded using
  /// `HBase Bytes.toBytes` family of functions. This can be overridden for a
  /// specific column by listing that column in `columns` and specifying an
  /// encoding for it.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : The encoding is unspecified.
  /// - "TEXT" : Text encoding.
  /// - "BINARY" : Binary encoding.
  core.String? encoding;

  /// The field name to use for this column family in the document.
  ///
  /// The name has to match the pattern `a-zA-Z0-9*`. If not set, it is parsed
  /// from the family name with best effort. However, due to different naming
  /// patterns, field name collisions could happen, where parsing behavior is
  /// undefined.
  core.String? fieldName;

  /// The type of values in this column family.
  ///
  /// The values are expected to be encoded using `HBase Bytes.toBytes` function
  /// when the encoding value is set to `BINARY`.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is unspecified.
  /// - "STRING" : String type.
  /// - "NUMBER" : Numerical type.
  /// - "INTEGER" : Integer type.
  /// - "VAR_INTEGER" : Variable length integer type.
  /// - "BIG_NUMERIC" : BigDecimal type.
  /// - "BOOLEAN" : Boolean type.
  /// - "JSON" : JSON type.
  core.String? type;

  GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily({
    this.columns,
    this.encoding,
    this.fieldName,
    this.type,
  });

  GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily.fromJson(
    core.Map json_,
  ) : this(
        columns:
            (json_['columns'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        encoding: json_['encoding'] as core.String?,
        fieldName: json_['fieldName'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
    if (encoding != null) 'encoding': encoding!,
    if (fieldName != null) 'fieldName': fieldName!,
    if (type != null) 'type': type!,
  };
}

/// The Cloud Bigtable source for importing data.
class GoogleCloudDiscoveryengineV1BigtableSource {
  /// Bigtable options that contains information needed when parsing data into
  /// typed structures.
  ///
  /// For example, column type annotations.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1BigtableOptions? bigtableOptions;

  /// The instance ID of the Cloud Bigtable that needs to be imported.
  ///
  /// Required.
  core.String? instanceId;

  /// The project ID that contains the Bigtable source.
  ///
  /// Has a length limit of 128 characters. If not specified, inherits the
  /// project ID from the parent request.
  core.String? projectId;

  /// The table ID of the Cloud Bigtable that needs to be imported.
  ///
  /// Required.
  core.String? tableId;

  GoogleCloudDiscoveryengineV1BigtableSource({
    this.bigtableOptions,
    this.instanceId,
    this.projectId,
    this.tableId,
  });

  GoogleCloudDiscoveryengineV1BigtableSource.fromJson(core.Map json_)
    : this(
        bigtableOptions:
            json_.containsKey('bigtableOptions')
                ? GoogleCloudDiscoveryengineV1BigtableOptions.fromJson(
                  json_['bigtableOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        instanceId: json_['instanceId'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigtableOptions != null) 'bigtableOptions': bigtableOptions!,
    if (instanceId != null) 'instanceId': instanceId!,
    if (projectId != null) 'projectId': projectId!,
    if (tableId != null) 'tableId': tableId!,
  };
}

/// Request message for GroundedGenerationService.CheckGrounding method.
class GoogleCloudDiscoveryengineV1CheckGroundingRequest {
  /// Answer candidate to check.
  ///
  /// It can have a maximum length of 4096 tokens.
  core.String? answerCandidate;

  /// List of facts for the grounding check.
  ///
  /// We support up to 200 facts.
  core.List<GoogleCloudDiscoveryengineV1GroundingFact>? facts;

  /// Configuration of the grounding check.
  GoogleCloudDiscoveryengineV1CheckGroundingSpec? groundingSpec;

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
  core.Map<core.String, core.String>? userLabels;

  GoogleCloudDiscoveryengineV1CheckGroundingRequest({
    this.answerCandidate,
    this.facts,
    this.groundingSpec,
    this.userLabels,
  });

  GoogleCloudDiscoveryengineV1CheckGroundingRequest.fromJson(core.Map json_)
    : this(
        answerCandidate: json_['answerCandidate'] as core.String?,
        facts:
            (json_['facts'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1GroundingFact.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        groundingSpec:
            json_.containsKey('groundingSpec')
                ? GoogleCloudDiscoveryengineV1CheckGroundingSpec.fromJson(
                  json_['groundingSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerCandidate != null) 'answerCandidate': answerCandidate!,
    if (facts != null) 'facts': facts!,
    if (groundingSpec != null) 'groundingSpec': groundingSpec!,
    if (userLabels != null) 'userLabels': userLabels!,
  };
}

/// Response message for the GroundedGenerationService.CheckGrounding method.
class GoogleCloudDiscoveryengineV1CheckGroundingResponse {
  /// List of facts cited across all claims in the answer candidate.
  ///
  /// These are derived from the facts supplied in the request.
  core.List<GoogleCloudDiscoveryengineV1FactChunk>? citedChunks;

  /// List of facts cited across all claims in the answer candidate.
  ///
  /// These are derived from the facts supplied in the request.
  core.List<
    GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk
  >?
  citedFacts;

  /// Claim texts and citation info across all claims in the answer candidate.
  core.List<GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim>? claims;

  /// The support score for the input answer candidate.
  ///
  /// Higher the score, higher is the fraction of claims that are supported by
  /// the provided facts. This is always set when a response is returned.
  core.double? supportScore;

  GoogleCloudDiscoveryengineV1CheckGroundingResponse({
    this.citedChunks,
    this.citedFacts,
    this.claims,
    this.supportScore,
  });

  GoogleCloudDiscoveryengineV1CheckGroundingResponse.fromJson(core.Map json_)
    : this(
        citedChunks:
            (json_['citedChunks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1FactChunk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        citedFacts:
            (json_['citedFacts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        claims:
            (json_['claims'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        supportScore: (json_['supportScore'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (citedChunks != null) 'citedChunks': citedChunks!,
    if (citedFacts != null) 'citedFacts': citedFacts!,
    if (claims != null) 'claims': claims!,
    if (supportScore != null) 'supportScore': supportScore!,
  };
}

/// Fact chunk for grounding check.
typedef GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk =
    $CheckGroundingResponseCheckGroundingFactChunk;

/// Text and citation info for a claim in the answer candidate.
typedef GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim =
    $CheckGroundingResponseClaim;

/// Specification for the grounding check.
typedef GoogleCloudDiscoveryengineV1CheckGroundingSpec = $CheckGroundingSpec;

/// Chunk captures all raw metadata information of items to be recommended or
/// searched in the chunk mode.
class GoogleCloudDiscoveryengineV1Chunk {
  /// Annotation contents if the current chunk contains annotations.
  ///
  /// Output only.
  core.List<core.String>? annotationContents;

  /// The annotation metadata includes structured content in the current chunk.
  ///
  /// Output only.
  core.List<GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata>?
  annotationMetadata;

  /// Metadata of the current chunk.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1ChunkChunkMetadata? chunkMetadata;

  /// Content is a string from a document (parsed content).
  core.String? content;

  /// Image Data URLs if the current chunk contains images.
  ///
  /// Data URLs are composed of four parts: a prefix (data:), a MIME type
  /// indicating the type of data, an optional base64 token if non-textual, and
  /// the data itself: data:,
  ///
  /// Output only.
  core.List<core.String>? dataUrls;

  /// This field is OUTPUT_ONLY.
  ///
  /// It contains derived data that are not in the original input document.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? derivedStructData;

  /// Metadata of the document from the current chunk.
  GoogleCloudDiscoveryengineV1ChunkDocumentMetadata? documentMetadata;

  /// Unique chunk ID of the current chunk.
  core.String? id;

  /// The full resource name of the chunk.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}/chunks/{chunk_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  core.String? name;

  /// Page span of the chunk.
  GoogleCloudDiscoveryengineV1ChunkPageSpan? pageSpan;

  /// Represents the relevance score based on similarity.
  ///
  /// Higher score indicates higher chunk relevance. The score is in range
  /// \[-1.0, 1.0\]. Only populated on SearchResponse.
  ///
  /// Output only.
  core.double? relevanceScore;

  GoogleCloudDiscoveryengineV1Chunk({
    this.annotationContents,
    this.annotationMetadata,
    this.chunkMetadata,
    this.content,
    this.dataUrls,
    this.derivedStructData,
    this.documentMetadata,
    this.id,
    this.name,
    this.pageSpan,
    this.relevanceScore,
  });

  GoogleCloudDiscoveryengineV1Chunk.fromJson(core.Map json_)
    : this(
        annotationContents:
            (json_['annotationContents'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        annotationMetadata:
            (json_['annotationMetadata'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        chunkMetadata:
            json_.containsKey('chunkMetadata')
                ? GoogleCloudDiscoveryengineV1ChunkChunkMetadata.fromJson(
                  json_['chunkMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        content: json_['content'] as core.String?,
        dataUrls:
            (json_['dataUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        derivedStructData:
            json_.containsKey('derivedStructData')
                ? json_['derivedStructData']
                    as core.Map<core.String, core.dynamic>
                : null,
        documentMetadata:
            json_.containsKey('documentMetadata')
                ? GoogleCloudDiscoveryengineV1ChunkDocumentMetadata.fromJson(
                  json_['documentMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudDiscoveryengineV1ChunkPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        relevanceScore: (json_['relevanceScore'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotationContents != null) 'annotationContents': annotationContents!,
    if (annotationMetadata != null) 'annotationMetadata': annotationMetadata!,
    if (chunkMetadata != null) 'chunkMetadata': chunkMetadata!,
    if (content != null) 'content': content!,
    if (dataUrls != null) 'dataUrls': dataUrls!,
    if (derivedStructData != null) 'derivedStructData': derivedStructData!,
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (relevanceScore != null) 'relevanceScore': relevanceScore!,
  };
}

/// The annotation metadata includes structured content in the current chunk.
class GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata {
  /// Image id is provided if the structured content is based on an image.
  ///
  /// Output only.
  core.String? imageId;

  /// The structured content information.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1ChunkStructuredContent? structuredContent;

  GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata({
    this.imageId,
    this.structuredContent,
  });

  GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata.fromJson(core.Map json_)
    : this(
        imageId: json_['imageId'] as core.String?,
        structuredContent:
            json_.containsKey('structuredContent')
                ? GoogleCloudDiscoveryengineV1ChunkStructuredContent.fromJson(
                  json_['structuredContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageId != null) 'imageId': imageId!,
    if (structuredContent != null) 'structuredContent': structuredContent!,
  };
}

/// Metadata of the current chunk.
///
/// This field is only populated on SearchService.Search API.
class GoogleCloudDiscoveryengineV1ChunkChunkMetadata {
  /// The next chunks of the current chunk.
  ///
  /// The number is controlled by
  /// SearchRequest.ContentSearchSpec.ChunkSpec.num_next_chunks. This field is
  /// only populated on SearchService.Search API.
  core.List<GoogleCloudDiscoveryengineV1Chunk>? nextChunks;

  /// The previous chunks of the current chunk.
  ///
  /// The number is controlled by
  /// SearchRequest.ContentSearchSpec.ChunkSpec.num_previous_chunks. This field
  /// is only populated on SearchService.Search API.
  core.List<GoogleCloudDiscoveryengineV1Chunk>? previousChunks;

  GoogleCloudDiscoveryengineV1ChunkChunkMetadata({
    this.nextChunks,
    this.previousChunks,
  });

  GoogleCloudDiscoveryengineV1ChunkChunkMetadata.fromJson(core.Map json_)
    : this(
        nextChunks:
            (json_['nextChunks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Chunk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        previousChunks:
            (json_['previousChunks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Chunk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextChunks != null) 'nextChunks': nextChunks!,
    if (previousChunks != null) 'previousChunks': previousChunks!,
  };
}

/// Document metadata contains the information of the document of the current
/// chunk.
typedef GoogleCloudDiscoveryengineV1ChunkDocumentMetadata =
    $ChunkDocumentMetadata;

/// Page span of the chunk.
typedef GoogleCloudDiscoveryengineV1ChunkPageSpan = $ChunkPageSpan;

/// The structured content information.
typedef GoogleCloudDiscoveryengineV1ChunkStructuredContent =
    $ChunkStructuredContent;

/// Cloud SQL source import data from.
typedef GoogleCloudDiscoveryengineV1CloudSqlSource = $CloudSqlSource;

/// Configurations used to enable CMEK data encryption with Cloud KMS keys.
class GoogleCloudDiscoveryengineV1CmekConfig {
  /// The default CmekConfig for the Customer.
  ///
  /// Output only.
  core.bool? isDefault;

  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  ///
  /// Required.
  core.String? kmsKey;

  /// KMS key version resource name which will be used to encrypt resources
  /// `/cryptoKeyVersions/{keyVersion}`.
  ///
  /// Output only.
  core.String? kmsKeyVersion;

  /// The timestamp of the last key rotation.
  ///
  /// Output only.
  core.String? lastRotationTimestampMicros;

  /// The name of the CmekConfig of the form
  /// `projects/{project}/locations/{location}/cmekConfig` or
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config}`.
  ///
  /// Required.
  core.String? name;

  /// Whether the NotebookLM Corpus is ready to be used.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NOTEBOOK_LM_STATE_UNSPECIFIED" : The NotebookLM state is unknown.
  /// - "NOTEBOOK_LM_NOT_READY" : The NotebookLM is not ready.
  /// - "NOTEBOOK_LM_READY" : The NotebookLM is ready to be used.
  /// - "NOTEBOOK_LM_NOT_ENABLED" : The NotebookLM is not enabled.
  core.String? notebooklmState;

  /// Single-regional CMEKs that are required for some VAIS features.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1SingleRegionKey>? singleRegionKeys;

  /// The states of the CmekConfig.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The CmekConfig state is unknown.
  /// - "CREATING" : The CmekConfig is creating.
  /// - "ACTIVE" : The CmekConfig can be used with DataStores.
  /// - "KEY_ISSUE" : The CmekConfig is unavailable, most likely due to the KMS
  /// Key being revoked.
  /// - "DELETING" : The CmekConfig is deleting.
  /// - "DELETE_FAILED" : The CmekConfig deletion process failed.
  /// - "UNUSABLE" : The CmekConfig is not usable, most likely due to some
  /// internal issue.
  /// - "ACTIVE_ROTATING" : The KMS key version is being rotated.
  /// - "DELETED" : The KMS key is soft deleted. Some cleanup policy will
  /// eventually be applied.
  core.String? state;

  GoogleCloudDiscoveryengineV1CmekConfig({
    this.isDefault,
    this.kmsKey,
    this.kmsKeyVersion,
    this.lastRotationTimestampMicros,
    this.name,
    this.notebooklmState,
    this.singleRegionKeys,
    this.state,
  });

  GoogleCloudDiscoveryengineV1CmekConfig.fromJson(core.Map json_)
    : this(
        isDefault: json_['isDefault'] as core.bool?,
        kmsKey: json_['kmsKey'] as core.String?,
        kmsKeyVersion: json_['kmsKeyVersion'] as core.String?,
        lastRotationTimestampMicros:
            json_['lastRotationTimestampMicros'] as core.String?,
        name: json_['name'] as core.String?,
        notebooklmState: json_['notebooklmState'] as core.String?,
        singleRegionKeys:
            (json_['singleRegionKeys'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SingleRegionKey.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (isDefault != null) 'isDefault': isDefault!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (kmsKeyVersion != null) 'kmsKeyVersion': kmsKeyVersion!,
    if (lastRotationTimestampMicros != null)
      'lastRotationTimestampMicros': lastRotationTimestampMicros!,
    if (name != null) 'name': name!,
    if (notebooklmState != null) 'notebooklmState': notebooklmState!,
    if (singleRegionKeys != null) 'singleRegionKeys': singleRegionKeys!,
    if (state != null) 'state': state!,
  };
}

/// Response message for CompletionService.CompleteQuery method.
class GoogleCloudDiscoveryengineV1CompleteQueryResponse {
  /// Results of the matched query suggestions.
  ///
  /// The result list is ordered and the first result is a top suggestion.
  core.List<GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion>?
  querySuggestions;

  /// True if the returned suggestions are all tail suggestions.
  ///
  /// For tail matching to be triggered, include_tail_suggestions in the request
  /// must be true and there must be no suggestions that match the full query.
  core.bool? tailMatchTriggered;

  GoogleCloudDiscoveryengineV1CompleteQueryResponse({
    this.querySuggestions,
    this.tailMatchTriggered,
  });

  GoogleCloudDiscoveryengineV1CompleteQueryResponse.fromJson(core.Map json_)
    : this(
        querySuggestions:
            (json_['querySuggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tailMatchTriggered: json_['tailMatchTriggered'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (querySuggestions != null) 'querySuggestions': querySuggestions!,
    if (tailMatchTriggered != null) 'tailMatchTriggered': tailMatchTriggered!,
  };
}

/// Suggestions as search queries.
typedef GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion =
    $CompleteQueryResponseQuerySuggestion;

/// Detailed completion information including completion attribution token and
/// clicked completion info.
typedef GoogleCloudDiscoveryengineV1CompletionInfo = $CompletionInfo;

/// Autocomplete suggestions that are imported from Customer.
typedef GoogleCloudDiscoveryengineV1CompletionSuggestion =
    $CompletionSuggestion;

/// Defines circumstances to be checked before allowing a behavior
class GoogleCloudDiscoveryengineV1Condition {
  /// Range of time(s) specifying when condition is active.
  ///
  /// Maximum of 10 time ranges.
  core.List<GoogleCloudDiscoveryengineV1ConditionTimeRange>? activeTimeRange;

  /// Query regex to match the whole search query.
  ///
  /// Cannot be set when Condition.query_terms is set. Only supported for Basic
  /// Site Search promotion serving controls.
  ///
  /// Optional.
  core.String? queryRegex;

  /// Search only A list of terms to match the query on.
  ///
  /// Cannot be set when Condition.query_regex is set. Maximum of 10 query
  /// terms.
  core.List<GoogleCloudDiscoveryengineV1ConditionQueryTerm>? queryTerms;

  GoogleCloudDiscoveryengineV1Condition({
    this.activeTimeRange,
    this.queryRegex,
    this.queryTerms,
  });

  GoogleCloudDiscoveryengineV1Condition.fromJson(core.Map json_)
    : this(
        activeTimeRange:
            (json_['activeTimeRange'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1ConditionTimeRange.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        queryRegex: json_['queryRegex'] as core.String?,
        queryTerms:
            (json_['queryTerms'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1ConditionQueryTerm.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeTimeRange != null) 'activeTimeRange': activeTimeRange!,
    if (queryRegex != null) 'queryRegex': queryRegex!,
    if (queryTerms != null) 'queryTerms': queryTerms!,
  };
}

/// Matcher for search request query
typedef GoogleCloudDiscoveryengineV1ConditionQueryTerm = $ConditionQueryTerm00;

/// Used for time-dependent conditions.
typedef GoogleCloudDiscoveryengineV1ConditionTimeRange = $ConditionTimeRange00;

/// Defines a conditioned behavior to employ during serving.
///
/// Must be attached to a ServingConfig to be considered at serving time.
/// Permitted actions dependent on `SolutionType`.
class GoogleCloudDiscoveryengineV1Control {
  /// List of all ServingConfig IDs this control is attached to.
  ///
  /// May take up to 10 minutes to update after changes.
  ///
  /// Output only.
  core.List<core.String>? associatedServingConfigIds;

  /// Defines a boost-type control
  GoogleCloudDiscoveryengineV1ControlBoostAction? boostAction;

  /// Determines when the associated action will trigger.
  ///
  /// Omit to always apply the action. Currently only a single condition may be
  /// specified. Otherwise an INVALID ARGUMENT error is thrown.
  core.List<GoogleCloudDiscoveryengineV1Condition>? conditions;

  /// Human readable name.
  ///
  /// The identifier used in UI views. Must be UTF-8 encoded string. Length
  /// limit is 128 characters. Otherwise an INVALID ARGUMENT error is thrown.
  ///
  /// Required.
  core.String? displayName;

  /// Defines a filter-type control Currently not supported by Recommendation
  GoogleCloudDiscoveryengineV1ControlFilterAction? filterAction;

  /// Fully qualified name `projects / * /locations/global/dataStore / *
  /// /controls / * `
  ///
  /// Immutable.
  core.String? name;

  /// Promote certain links based on predefined trigger queries.
  GoogleCloudDiscoveryengineV1ControlPromoteAction? promoteAction;

  /// Defines a redirect-type control.
  GoogleCloudDiscoveryengineV1ControlRedirectAction? redirectAction;

  /// What solution the control belongs to.
  ///
  /// Must be compatible with vertical of resource. Otherwise an INVALID
  /// ARGUMENT error is thrown.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "SOLUTION_TYPE_UNSPECIFIED" : Default value.
  /// - "SOLUTION_TYPE_RECOMMENDATION" : Used for Recommendations AI.
  /// - "SOLUTION_TYPE_SEARCH" : Used for Discovery Search.
  /// - "SOLUTION_TYPE_CHAT" : Used for use cases related to the Generative AI
  /// agent.
  /// - "SOLUTION_TYPE_GENERATIVE_CHAT" : Used for use cases related to the
  /// Generative Chat agent. It's used for Generative chat engine only, the
  /// associated data stores must enrolled with `SOLUTION_TYPE_CHAT` solution.
  core.String? solutionType;

  /// Treats a group of terms as synonyms of one another.
  GoogleCloudDiscoveryengineV1ControlSynonymsAction? synonymsAction;

  /// Specifies the use case for the control.
  ///
  /// Affects what condition fields can be set. Only applies to
  /// SOLUTION_TYPE_SEARCH. Currently only allow one use case per control. Must
  /// be set when solution_type is SolutionType.SOLUTION_TYPE_SEARCH.
  core.List<core.String>? useCases;

  GoogleCloudDiscoveryengineV1Control({
    this.associatedServingConfigIds,
    this.boostAction,
    this.conditions,
    this.displayName,
    this.filterAction,
    this.name,
    this.promoteAction,
    this.redirectAction,
    this.solutionType,
    this.synonymsAction,
    this.useCases,
  });

  GoogleCloudDiscoveryengineV1Control.fromJson(core.Map json_)
    : this(
        associatedServingConfigIds:
            (json_['associatedServingConfigIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        boostAction:
            json_.containsKey('boostAction')
                ? GoogleCloudDiscoveryengineV1ControlBoostAction.fromJson(
                  json_['boostAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Condition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        filterAction:
            json_.containsKey('filterAction')
                ? GoogleCloudDiscoveryengineV1ControlFilterAction.fromJson(
                  json_['filterAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        promoteAction:
            json_.containsKey('promoteAction')
                ? GoogleCloudDiscoveryengineV1ControlPromoteAction.fromJson(
                  json_['promoteAction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirectAction:
            json_.containsKey('redirectAction')
                ? GoogleCloudDiscoveryengineV1ControlRedirectAction.fromJson(
                  json_['redirectAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        solutionType: json_['solutionType'] as core.String?,
        synonymsAction:
            json_.containsKey('synonymsAction')
                ? GoogleCloudDiscoveryengineV1ControlSynonymsAction.fromJson(
                  json_['synonymsAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        useCases:
            (json_['useCases'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associatedServingConfigIds != null)
      'associatedServingConfigIds': associatedServingConfigIds!,
    if (boostAction != null) 'boostAction': boostAction!,
    if (conditions != null) 'conditions': conditions!,
    if (displayName != null) 'displayName': displayName!,
    if (filterAction != null) 'filterAction': filterAction!,
    if (name != null) 'name': name!,
    if (promoteAction != null) 'promoteAction': promoteAction!,
    if (redirectAction != null) 'redirectAction': redirectAction!,
    if (solutionType != null) 'solutionType': solutionType!,
    if (synonymsAction != null) 'synonymsAction': synonymsAction!,
    if (useCases != null) 'useCases': useCases!,
  };
}

/// Adjusts order of products in returned list.
class GoogleCloudDiscoveryengineV1ControlBoostAction {
  /// Strength of the boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0 (No-op).
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.double? boost;

  /// Specifies which data store's documents can be boosted by this control.
  ///
  /// Full data store name e.g.
  /// projects/123/locations/global/collections/default_collection/dataStores/default_data_store
  ///
  /// Required.
  core.String? dataStore;

  /// Specifies which products to apply the boost to.
  ///
  /// If no filter is provided all products will be boosted (No-op). Syntax
  /// documentation: https://cloud.google.com/retail/docs/filter-and-order
  /// Maximum length is 5000 characters. Otherwise an INVALID ARGUMENT error is
  /// thrown.
  ///
  /// Required.
  core.String? filter;

  /// Strength of the boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0 (No-op).
  ///
  /// Optional.
  core.double? fixedBoost;

  /// Complex specification for custom ranking based on customer defined
  /// attribute value.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec?
  interpolationBoostSpec;

  GoogleCloudDiscoveryengineV1ControlBoostAction({
    this.boost,
    this.dataStore,
    this.filter,
    this.fixedBoost,
    this.interpolationBoostSpec,
  });

  GoogleCloudDiscoveryengineV1ControlBoostAction.fromJson(core.Map json_)
    : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        dataStore: json_['dataStore'] as core.String?,
        filter: json_['filter'] as core.String?,
        fixedBoost: (json_['fixedBoost'] as core.num?)?.toDouble(),
        interpolationBoostSpec:
            json_.containsKey('interpolationBoostSpec')
                ? GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec.fromJson(
                  json_['interpolationBoostSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boost != null) 'boost': boost!,
    if (dataStore != null) 'dataStore': dataStore!,
    if (filter != null) 'filter': filter!,
    if (fixedBoost != null) 'fixedBoost': fixedBoost!,
    if (interpolationBoostSpec != null)
      'interpolationBoostSpec': interpolationBoostSpec!,
  };
}

/// Specification for custom ranking based on customer specified attribute
/// value.
///
/// It provides more controls for customized ranking than the simple (condition,
/// boost) combination above.
class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec {
  /// The attribute type to be used to determine the boost amount.
  ///
  /// The attribute value can be derived from the field value of the specified
  /// field_name. In the case of numerical it is straightforward i.e.
  /// attribute_value = numerical_field_value. In the case of freshness however,
  /// attribute_value = (time.now() - datetime_field_value).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ATTRIBUTE_TYPE_UNSPECIFIED" : Unspecified AttributeType.
  /// - "NUMERICAL" : The value of the numerical field will be used to
  /// dynamically update the boost amount. In this case, the attribute_value
  /// (the x value) of the control point will be the actual value of the
  /// numerical field for which the boost_amount is specified.
  /// - "FRESHNESS" : For the freshness use case the attribute value will be the
  /// duration between the current time and the date in the datetime field
  /// specified. The value must be formatted as an XSD `dayTimeDuration` value
  /// (a restricted subset of an ISO 8601 duration value). The pattern for this
  /// is: `nDnM]`. For example, `5D`, `3DT12H30M`, `T24H`.
  core.String? attributeType;

  /// The control points used to define the curve.
  ///
  /// The monotonic function (defined through the interpolation_type above)
  /// passes through the control points listed here.
  ///
  /// Optional.
  core.List<
    GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint
  >?
  controlPoints;

  /// The name of the field whose value will be used to determine the boost
  /// amount.
  ///
  /// Optional.
  core.String? fieldName;

  /// The interpolation type to be applied to connect the control points listed
  /// below.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INTERPOLATION_TYPE_UNSPECIFIED" : Interpolation type is unspecified. In
  /// this case, it defaults to Linear.
  /// - "LINEAR" : Piecewise linear interpolation will be applied.
  core.String? interpolationType;

  GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints:
            (json_['controlPoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fieldName: json_['fieldName'] as core.String?,
        interpolationType: json_['interpolationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeType != null) 'attributeType': attributeType!,
    if (controlPoints != null) 'controlPoints': controlPoints!,
    if (fieldName != null) 'fieldName': fieldName!,
    if (interpolationType != null) 'interpolationType': interpolationType!,
  };
}

/// The control points used to define the curve.
///
/// The curve defined through these control points can only be monotonically
/// increasing or decreasing(constant values are acceptable).
typedef GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint =
    $SpecControlPoint;

/// Specified which products may be included in results.
///
/// Uses same filter as boost.
typedef GoogleCloudDiscoveryengineV1ControlFilterAction = $ControlFilterAction;

/// Promote certain links based on some trigger queries.
///
/// Example: Promote shoe store link when searching for `shoe` keyword. The link
/// can be outside of associated data store.
class GoogleCloudDiscoveryengineV1ControlPromoteAction {
  /// Data store with which this promotion is attached to.
  ///
  /// Required.
  core.String? dataStore;

  /// Promotion attached to this action.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1SearchLinkPromotion? searchLinkPromotion;

  GoogleCloudDiscoveryengineV1ControlPromoteAction({
    this.dataStore,
    this.searchLinkPromotion,
  });

  GoogleCloudDiscoveryengineV1ControlPromoteAction.fromJson(core.Map json_)
    : this(
        dataStore: json_['dataStore'] as core.String?,
        searchLinkPromotion:
            json_.containsKey('searchLinkPromotion')
                ? GoogleCloudDiscoveryengineV1SearchLinkPromotion.fromJson(
                  json_['searchLinkPromotion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStore != null) 'dataStore': dataStore!,
    if (searchLinkPromotion != null)
      'searchLinkPromotion': searchLinkPromotion!,
  };
}

/// Redirects a shopper to the provided URI.
typedef GoogleCloudDiscoveryengineV1ControlRedirectAction =
    $ControlRedirectAction;

/// Creates a set of terms that will act as synonyms of one another.
///
/// Example: "happy" will also be considered as "glad", "glad" will also be
/// considered as "happy".
typedef GoogleCloudDiscoveryengineV1ControlSynonymsAction =
    $ControlSynonymsAction;

/// External conversation proto definition.
class GoogleCloudDiscoveryengineV1Conversation {
  /// The time the conversation finished.
  ///
  /// Output only.
  core.String? endTime;

  /// Conversation messages.
  core.List<GoogleCloudDiscoveryengineV1ConversationMessage>? messages;

  /// Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/dataStore /
  /// * /conversations / * ` or
  /// `projects/{project}/locations/global/collections/{collection}/engines / *
  /// /conversations / * `.
  ///
  /// Immutable.
  core.String? name;

  /// The time the conversation started.
  ///
  /// Output only.
  core.String? startTime;

  /// The state of the Conversation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown.
  /// - "IN_PROGRESS" : Conversation is currently open.
  /// - "COMPLETED" : Conversation has been completed.
  core.String? state;

  /// A unique identifier for tracking users.
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1Conversation({
    this.endTime,
    this.messages,
    this.name,
    this.startTime,
    this.state,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1Conversation.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1ConversationMessage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (messages != null) 'messages': messages!,
    if (name != null) 'name': name!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Defines context of the conversation
typedef GoogleCloudDiscoveryengineV1ConversationContext = $ConversationContext;

/// Defines a conversation message.
class GoogleCloudDiscoveryengineV1ConversationMessage {
  /// Message creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Search reply.
  GoogleCloudDiscoveryengineV1Reply? reply;

  /// User text input.
  GoogleCloudDiscoveryengineV1TextInput? userInput;

  GoogleCloudDiscoveryengineV1ConversationMessage({
    this.createTime,
    this.reply,
    this.userInput,
  });

  GoogleCloudDiscoveryengineV1ConversationMessage.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        reply:
            json_.containsKey('reply')
                ? GoogleCloudDiscoveryengineV1Reply.fromJson(
                  json_['reply'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userInput:
            json_.containsKey('userInput')
                ? GoogleCloudDiscoveryengineV1TextInput.fromJson(
                  json_['userInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (reply != null) 'reply': reply!,
    if (userInput != null) 'userInput': userInput!,
  };
}

/// Request message for ConversationalSearchService.ConverseConversation method.
class GoogleCloudDiscoveryengineV1ConverseConversationRequest {
  /// Boost specification to boost certain documents in search results which may
  /// affect the converse response.
  ///
  /// For more information on boosting, see
  /// [Boosting](https://cloud.google.com/retail/docs/boosting#boost)
  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec? boostSpec;

  /// The conversation to be used by auto session only.
  ///
  /// The name field will be ignored as we automatically assign new name for the
  /// conversation in auto session.
  GoogleCloudDiscoveryengineV1Conversation? conversation;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the documents being filtered.
  ///
  /// Filter expression is case-sensitive. This will be used to filter search
  /// results which may affect the summary response. If this field is
  /// unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI
  /// Search is done by mapping the LHS filter key to a key property defined in
  /// the Vertex AI Search backend -- this mapping is defined by the customer in
  /// their schema. For example a media customer might have a field 'name' in
  /// their schema. In this case the filter would look like this: filter --\>
  /// name:'ANY("king kong")' For more information about filtering including
  /// syntax and filter operators, see
  /// [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  core.String? filter;

  /// Current user input.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1TextInput? query;

  /// Whether to turn on safe search.
  core.bool? safeSearch;

  /// The resource name of the Serving Config to use.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store_id}/servingConfigs/{serving_config_id}`
  /// If this is not set, the default serving config will be used.
  core.String? servingConfig;

  /// A specification for configuring the summary returned in the response.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec?
  summarySpec;

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
  core.Map<core.String, core.String>? userLabels;

  GoogleCloudDiscoveryengineV1ConverseConversationRequest({
    this.boostSpec,
    this.conversation,
    this.filter,
    this.query,
    this.safeSearch,
    this.servingConfig,
    this.summarySpec,
    this.userLabels,
  });

  GoogleCloudDiscoveryengineV1ConverseConversationRequest.fromJson(
    core.Map json_,
  ) : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversation:
            json_.containsKey('conversation')
                ? GoogleCloudDiscoveryengineV1Conversation.fromJson(
                  json_['conversation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
        query:
            json_.containsKey('query')
                ? GoogleCloudDiscoveryengineV1TextInput.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        safeSearch: json_['safeSearch'] as core.bool?,
        servingConfig: json_['servingConfig'] as core.String?,
        summarySpec:
            json_.containsKey('summarySpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec.fromJson(
                  json_['summarySpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (conversation != null) 'conversation': conversation!,
    if (filter != null) 'filter': filter!,
    if (query != null) 'query': query!,
    if (safeSearch != null) 'safeSearch': safeSearch!,
    if (servingConfig != null) 'servingConfig': servingConfig!,
    if (summarySpec != null) 'summarySpec': summarySpec!,
    if (userLabels != null) 'userLabels': userLabels!,
  };
}

/// Response message for ConversationalSearchService.ConverseConversation
/// method.
class GoogleCloudDiscoveryengineV1ConverseConversationResponse {
  /// Updated conversation including the answer.
  GoogleCloudDiscoveryengineV1Conversation? conversation;

  /// Answer to the current query.
  GoogleCloudDiscoveryengineV1Reply? reply;

  /// Search Results.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseSearchResult>?
  searchResults;

  GoogleCloudDiscoveryengineV1ConverseConversationResponse({
    this.conversation,
    this.reply,
    this.searchResults,
  });

  GoogleCloudDiscoveryengineV1ConverseConversationResponse.fromJson(
    core.Map json_,
  ) : this(
        conversation:
            json_.containsKey('conversation')
                ? GoogleCloudDiscoveryengineV1Conversation.fromJson(
                  json_['conversation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reply:
            json_.containsKey('reply')
                ? GoogleCloudDiscoveryengineV1Reply.fromJson(
                  json_['reply'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchResults:
            (json_['searchResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversation != null) 'conversation': conversation!,
    if (reply != null) 'reply': reply!,
    if (searchResults != null) 'searchResults': searchResults!,
  };
}

/// Request message for SiteSearchEngineService.CreateTargetSite method.
class GoogleCloudDiscoveryengineV1CreateTargetSiteRequest {
  /// Parent resource name of TargetSite, such as
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
  ///
  /// Required.
  core.String? parent;

  /// The TargetSite to create.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1TargetSite? targetSite;

  GoogleCloudDiscoveryengineV1CreateTargetSiteRequest({
    this.parent,
    this.targetSite,
  });

  GoogleCloudDiscoveryengineV1CreateTargetSiteRequest.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        targetSite:
            json_.containsKey('targetSite')
                ? GoogleCloudDiscoveryengineV1TargetSite.fromJson(
                  json_['targetSite'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parent != null) 'parent': parent!,
    if (targetSite != null) 'targetSite': targetSite!,
  };
}

/// A custom attribute that is not explicitly modeled in a resource, e.g.
/// UserEvent.
typedef GoogleCloudDiscoveryengineV1CustomAttribute = $CustomAttribute00;

/// Metadata that describes a custom tuned model.
typedef GoogleCloudDiscoveryengineV1CustomTuningModel = $CustomTuningModel;

/// DataStore captures global settings and configs at the DataStore level.
class GoogleCloudDiscoveryengineV1DataStore {
  /// Whether data in the DataStore has ACL information.
  ///
  /// If set to `true`, the source data must have ACL. ACL will be ingested when
  /// data is ingested by DocumentService.ImportDocuments methods. When ACL is
  /// enabled for the DataStore, Document can't be accessed by calling
  /// DocumentService.GetDocument or DocumentService.ListDocuments. Currently
  /// ACL is only supported in `GENERIC` industry vertical with
  /// non-`PUBLIC_WEBSITE` content config.
  ///
  /// Immutable.
  core.bool? aclEnabled;

  /// Configuration for advanced site search.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig?
  advancedSiteSearchConfig;

  /// Data size estimation for billing.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1DataStoreBillingEstimation? billingEstimation;

  /// CMEK-related information for the DataStore.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1CmekConfig? cmekConfig;

  /// The content config of the data store.
  ///
  /// If this field is unset, the server behavior defaults to
  /// ContentConfig.NO_CONTENT.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CONTENT_CONFIG_UNSPECIFIED" : Default value.
  /// - "NO_CONTENT" : Only contains documents without any Document.content.
  /// - "CONTENT_REQUIRED" : Only contains documents with Document.content.
  /// - "PUBLIC_WEBSITE" : The data store is used for public website search.
  /// - "GOOGLE_WORKSPACE" : The data store is used for workspace search.
  /// Details of workspace data store are specified in the WorkspaceConfig.
  core.String? contentConfig;

  /// Timestamp the DataStore was created at.
  ///
  /// Output only.
  core.String? createTime;

  /// The id of the default Schema associated to this data store.
  ///
  /// Output only.
  core.String? defaultSchemaId;

  /// The data store display name.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.String? displayName;

  /// Configuration for Document understanding and enrichment.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfig?
  documentProcessingConfig;

  /// Configuration for `HEALTHCARE_FHIR` vertical.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1HealthcareFhirConfig? healthcareFhirConfig;

  /// The fully qualified resource name of the associated IdentityMappingStore.
  ///
  /// This field can only be set for acl_enabled DataStores with `THIRD_PARTY`
  /// or `GSUITE` IdP. Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identity_mapping_store}`.
  ///
  /// Immutable.
  core.String? identityMappingStore;

  /// The industry vertical that the data store registers.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "INDUSTRY_VERTICAL_UNSPECIFIED" : Value used when unset.
  /// - "GENERIC" : The generic vertical for documents that are not specific to
  /// any industry vertical.
  /// - "MEDIA" : The media industry vertical.
  /// - "HEALTHCARE_FHIR" : The healthcare FHIR vertical.
  core.String? industryVertical;

  /// If set, this DataStore is an Infobot FAQ DataStore.
  ///
  /// Optional.
  core.bool? isInfobotFaqDataStore;

  /// Input only.
  ///
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections. If
  /// this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  core.String? kmsKeyName;

  /// Identifier.
  ///
  /// The full resource name of the data store. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  ///
  /// Immutable.
  core.String? name;

  /// Stores serving config at DataStore level.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore?
  servingConfigDataStore;

  /// The solutions that the data store enrolls.
  ///
  /// Available solutions for each industry_vertical: * `MEDIA`:
  /// `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. *
  /// `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other
  /// solutions cannot be enrolled.
  core.List<core.String>? solutionTypes;

  /// The start schema to use for this DataStore when provisioning it.
  ///
  /// If unset, a default vertical specialized schema will be used. This field
  /// is only used by CreateDataStore API, and will be ignored if used in other
  /// APIs. This field will be omitted from all API responses including
  /// CreateDataStore API. To retrieve a schema of a DataStore, use
  /// SchemaService.GetSchema API instead. The provided schema will be validated
  /// against certain rules on schema. Learn more from
  /// [this doc](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema).
  GoogleCloudDiscoveryengineV1Schema? startingSchema;

  /// Config to store data store type configuration for workspace data.
  ///
  /// This must be set when DataStore.content_config is set as
  /// DataStore.ContentConfig.GOOGLE_WORKSPACE.
  GoogleCloudDiscoveryengineV1WorkspaceConfig? workspaceConfig;

  GoogleCloudDiscoveryengineV1DataStore({
    this.aclEnabled,
    this.advancedSiteSearchConfig,
    this.billingEstimation,
    this.cmekConfig,
    this.contentConfig,
    this.createTime,
    this.defaultSchemaId,
    this.displayName,
    this.documentProcessingConfig,
    this.healthcareFhirConfig,
    this.identityMappingStore,
    this.industryVertical,
    this.isInfobotFaqDataStore,
    this.kmsKeyName,
    this.name,
    this.servingConfigDataStore,
    this.solutionTypes,
    this.startingSchema,
    this.workspaceConfig,
  });

  GoogleCloudDiscoveryengineV1DataStore.fromJson(core.Map json_)
    : this(
        aclEnabled: json_['aclEnabled'] as core.bool?,
        advancedSiteSearchConfig:
            json_.containsKey('advancedSiteSearchConfig')
                ? GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig.fromJson(
                  json_['advancedSiteSearchConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        billingEstimation:
            json_.containsKey('billingEstimation')
                ? GoogleCloudDiscoveryengineV1DataStoreBillingEstimation.fromJson(
                  json_['billingEstimation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cmekConfig:
            json_.containsKey('cmekConfig')
                ? GoogleCloudDiscoveryengineV1CmekConfig.fromJson(
                  json_['cmekConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        contentConfig: json_['contentConfig'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        defaultSchemaId: json_['defaultSchemaId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentProcessingConfig:
            json_.containsKey('documentProcessingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfig.fromJson(
                  json_['documentProcessingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        healthcareFhirConfig:
            json_.containsKey('healthcareFhirConfig')
                ? GoogleCloudDiscoveryengineV1HealthcareFhirConfig.fromJson(
                  json_['healthcareFhirConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        identityMappingStore: json_['identityMappingStore'] as core.String?,
        industryVertical: json_['industryVertical'] as core.String?,
        isInfobotFaqDataStore: json_['isInfobotFaqDataStore'] as core.bool?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        name: json_['name'] as core.String?,
        servingConfigDataStore:
            json_.containsKey('servingConfigDataStore')
                ? GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore.fromJson(
                  json_['servingConfigDataStore']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        solutionTypes:
            (json_['solutionTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        startingSchema:
            json_.containsKey('startingSchema')
                ? GoogleCloudDiscoveryengineV1Schema.fromJson(
                  json_['startingSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        workspaceConfig:
            json_.containsKey('workspaceConfig')
                ? GoogleCloudDiscoveryengineV1WorkspaceConfig.fromJson(
                  json_['workspaceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aclEnabled != null) 'aclEnabled': aclEnabled!,
    if (advancedSiteSearchConfig != null)
      'advancedSiteSearchConfig': advancedSiteSearchConfig!,
    if (billingEstimation != null) 'billingEstimation': billingEstimation!,
    if (cmekConfig != null) 'cmekConfig': cmekConfig!,
    if (contentConfig != null) 'contentConfig': contentConfig!,
    if (createTime != null) 'createTime': createTime!,
    if (defaultSchemaId != null) 'defaultSchemaId': defaultSchemaId!,
    if (displayName != null) 'displayName': displayName!,
    if (documentProcessingConfig != null)
      'documentProcessingConfig': documentProcessingConfig!,
    if (healthcareFhirConfig != null)
      'healthcareFhirConfig': healthcareFhirConfig!,
    if (identityMappingStore != null)
      'identityMappingStore': identityMappingStore!,
    if (industryVertical != null) 'industryVertical': industryVertical!,
    if (isInfobotFaqDataStore != null)
      'isInfobotFaqDataStore': isInfobotFaqDataStore!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (name != null) 'name': name!,
    if (servingConfigDataStore != null)
      'servingConfigDataStore': servingConfigDataStore!,
    if (solutionTypes != null) 'solutionTypes': solutionTypes!,
    if (startingSchema != null) 'startingSchema': startingSchema!,
    if (workspaceConfig != null) 'workspaceConfig': workspaceConfig!,
  };
}

/// Estimation of data size per data store.
typedef GoogleCloudDiscoveryengineV1DataStoreBillingEstimation =
    $DataStoreBillingEstimation;

/// Stores information regarding the serving configurations at DataStore level.
typedef GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore =
    $DataStoreServingConfigDataStore;

/// Request message for SiteSearchEngineService.DisableAdvancedSiteSearch
/// method.
typedef GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest = $Empty;

/// Document captures all raw metadata information of items to be recommended or
/// searched.
class GoogleCloudDiscoveryengineV1Document {
  /// Access control information for the document.
  GoogleCloudDiscoveryengineV1DocumentAclInfo? aclInfo;

  /// The unstructured data linked to this document.
  ///
  /// Content can only be set and must be set if this document is under a
  /// `CONTENT_REQUIRED` data store.
  GoogleCloudDiscoveryengineV1DocumentContent? content;

  /// This field is OUTPUT_ONLY.
  ///
  /// It contains derived data that are not in the original input document.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? derivedStructData;

  /// The identifier of the document.
  ///
  /// Id should conform to \[RFC-1034\](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 128 characters.
  ///
  /// Immutable.
  core.String? id;

  /// The index status of the document.
  ///
  /// * If document is indexed successfully, the index_time field is populated.
  /// * Otherwise, if document is not indexed due to errors, the error_samples
  /// field is populated. * Otherwise, if document's index is in progress, the
  /// pending_message field is populated.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1DocumentIndexStatus? indexStatus;

  /// The last time the document was indexed.
  ///
  /// If this field is set, the document could be returned in search results.
  /// This field is OUTPUT_ONLY. If this field is not populated, it means the
  /// document has never been indexed.
  ///
  /// Output only.
  core.String? indexTime;

  /// The JSON string representation of the document.
  ///
  /// It should conform to the registered Schema or an `INVALID_ARGUMENT` error
  /// is thrown.
  core.String? jsonData;

  /// The full resource name of the document.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  ///
  /// Immutable.
  core.String? name;

  /// The identifier of the parent document.
  ///
  /// Currently supports at most two level document hierarchy. Id should conform
  /// to \[RFC-1034\](https://tools.ietf.org/html/rfc1034) standard with a
  /// length limit of 63 characters.
  core.String? parentDocumentId;

  /// The identifier of the schema located in the same data store.
  core.String? schemaId;

  /// The structured JSON data for the document.
  ///
  /// It should conform to the registered Schema or an `INVALID_ARGUMENT` error
  /// is thrown.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? structData;

  GoogleCloudDiscoveryengineV1Document({
    this.aclInfo,
    this.content,
    this.derivedStructData,
    this.id,
    this.indexStatus,
    this.indexTime,
    this.jsonData,
    this.name,
    this.parentDocumentId,
    this.schemaId,
    this.structData,
  });

  GoogleCloudDiscoveryengineV1Document.fromJson(core.Map json_)
    : this(
        aclInfo:
            json_.containsKey('aclInfo')
                ? GoogleCloudDiscoveryengineV1DocumentAclInfo.fromJson(
                  json_['aclInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        content:
            json_.containsKey('content')
                ? GoogleCloudDiscoveryengineV1DocumentContent.fromJson(
                  json_['content'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        derivedStructData:
            json_.containsKey('derivedStructData')
                ? json_['derivedStructData']
                    as core.Map<core.String, core.dynamic>
                : null,
        id: json_['id'] as core.String?,
        indexStatus:
            json_.containsKey('indexStatus')
                ? GoogleCloudDiscoveryengineV1DocumentIndexStatus.fromJson(
                  json_['indexStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        indexTime: json_['indexTime'] as core.String?,
        jsonData: json_['jsonData'] as core.String?,
        name: json_['name'] as core.String?,
        parentDocumentId: json_['parentDocumentId'] as core.String?,
        schemaId: json_['schemaId'] as core.String?,
        structData:
            json_.containsKey('structData')
                ? json_['structData'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aclInfo != null) 'aclInfo': aclInfo!,
    if (content != null) 'content': content!,
    if (derivedStructData != null) 'derivedStructData': derivedStructData!,
    if (id != null) 'id': id!,
    if (indexStatus != null) 'indexStatus': indexStatus!,
    if (indexTime != null) 'indexTime': indexTime!,
    if (jsonData != null) 'jsonData': jsonData!,
    if (name != null) 'name': name!,
    if (parentDocumentId != null) 'parentDocumentId': parentDocumentId!,
    if (schemaId != null) 'schemaId': schemaId!,
    if (structData != null) 'structData': structData!,
  };
}

/// ACL Information of the Document.
class GoogleCloudDiscoveryengineV1DocumentAclInfo {
  /// Readers of the document.
  core.List<GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction>?
  readers;

  GoogleCloudDiscoveryengineV1DocumentAclInfo({this.readers});

  GoogleCloudDiscoveryengineV1DocumentAclInfo.fromJson(core.Map json_)
    : this(
        readers:
            (json_['readers'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (readers != null) 'readers': readers!,
  };
}

/// AclRestriction to model complex inheritance restrictions.
///
/// Example: Modeling a "Both Permit" inheritance, where to access a child
/// document, user needs to have access to parent document. Document Hierarchy -
/// Space_S --\> Page_P. Readers: Space_S: group_1, user_1 Page_P: group_2,
/// group_3, user_2 Space_S ACL Restriction - { "acl_info": { "readers": \[ {
/// "principals": \[ { "group_id": "group_1" }, { "user_id": "user_1" } \] } \]
/// } } Page_P ACL Restriction. { "acl_info": { "readers": \[ { "principals": \[
/// { "group_id": "group_2" }, { "group_id": "group_3" }, { "user_id": "user_2"
/// } \], }, { "principals": \[ { "group_id": "group_1" }, { "user_id": "user_1"
/// } \], } \] } }
class GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction {
  /// All users within the Identity Provider.
  core.bool? idpWide;

  /// List of principals.
  core.List<GoogleCloudDiscoveryengineV1Principal>? principals;

  GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction({
    this.idpWide,
    this.principals,
  });

  GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction.fromJson(
    core.Map json_,
  ) : this(
        idpWide: json_['idpWide'] as core.bool?,
        principals:
            (json_['principals'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Principal.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (idpWide != null) 'idpWide': idpWide!,
    if (principals != null) 'principals': principals!,
  };
}

/// Unstructured data linked to this document.
typedef GoogleCloudDiscoveryengineV1DocumentContent = $DocumentContent;

/// Index status of the document.
class GoogleCloudDiscoveryengineV1DocumentIndexStatus {
  /// A sample of errors encountered while indexing the document.
  ///
  /// If this field is populated, the document is not indexed due to errors.
  core.List<GoogleRpcStatus>? errorSamples;

  /// The time when the document was indexed.
  ///
  /// If this field is populated, it means the document has been indexed.
  core.String? indexTime;

  /// The message indicates the document index is in progress.
  ///
  /// If this field is populated, the document index is pending.
  ///
  /// Immutable.
  core.String? pendingMessage;

  GoogleCloudDiscoveryengineV1DocumentIndexStatus({
    this.errorSamples,
    this.indexTime,
    this.pendingMessage,
  });

  GoogleCloudDiscoveryengineV1DocumentIndexStatus.fromJson(core.Map json_)
    : this(
        errorSamples:
            (json_['errorSamples'] as core.List?)
                ?.map(
                  (value) => GoogleRpcStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        indexTime: json_['indexTime'] as core.String?,
        pendingMessage: json_['pendingMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorSamples != null) 'errorSamples': errorSamples!,
    if (indexTime != null) 'indexTime': indexTime!,
    if (pendingMessage != null) 'pendingMessage': pendingMessage!,
  };
}

/// Detailed document information associated with a user event.
typedef GoogleCloudDiscoveryengineV1DocumentInfo = $DocumentInfo;

/// A singleton resource of DataStore.
///
/// If it's empty when DataStore is created and DataStore is set to
/// DataStore.ContentConfig.CONTENT_REQUIRED, the default parser will default to
/// digital parser.
class GoogleCloudDiscoveryengineV1DocumentProcessingConfig {
  /// Whether chunking mode is enabled.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig?
  chunkingConfig;

  /// Configurations for default Document parser.
  ///
  /// If not specified, we will configure it as default DigitalParsingConfig,
  /// and the default parsing config will be applied to all file types for
  /// Document parsing.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig?
  defaultParsingConfig;

  /// The full resource name of the Document Processing Config.
  ///
  /// Format: `projects / * /locations / * /collections / * /dataStores / *
  /// /documentProcessingConfig`.
  core.String? name;

  /// Map from file type to override the default parsing configuration based on
  /// the file type.
  ///
  /// Supported keys: * `pdf`: Override parsing config for PDF files, either
  /// digital parsing, ocr parsing or layout parsing is supported. * `html`:
  /// Override parsing config for HTML files, only digital parsing and layout
  /// parsing are supported. * `docx`: Override parsing config for DOCX files,
  /// only digital parsing and layout parsing are supported. * `pptx`: Override
  /// parsing config for PPTX files, only digital parsing and layout parsing are
  /// supported. * `xlsm`: Override parsing config for XLSM files, only digital
  /// parsing and layout parsing are supported. * `xlsx`: Override parsing
  /// config for XLSX files, only digital parsing and layout parsing are
  /// supported.
  core.Map<
    core.String,
    GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig
  >?
  parsingConfigOverrides;

  GoogleCloudDiscoveryengineV1DocumentProcessingConfig({
    this.chunkingConfig,
    this.defaultParsingConfig,
    this.name,
    this.parsingConfigOverrides,
  });

  GoogleCloudDiscoveryengineV1DocumentProcessingConfig.fromJson(core.Map json_)
    : this(
        chunkingConfig:
            json_.containsKey('chunkingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig.fromJson(
                  json_['chunkingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultParsingConfig:
            json_.containsKey('defaultParsingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig.fromJson(
                  json_['defaultParsingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        parsingConfigOverrides: (json_['parsingConfigOverrides']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkingConfig != null) 'chunkingConfig': chunkingConfig!,
    if (defaultParsingConfig != null)
      'defaultParsingConfig': defaultParsingConfig!,
    if (name != null) 'name': name!,
    if (parsingConfigOverrides != null)
      'parsingConfigOverrides': parsingConfigOverrides!,
  };
}

/// Configuration for chunking config.
class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig {
  /// Configuration for the layout based chunking.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig?
  layoutBasedChunkingConfig;

  GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig({
    this.layoutBasedChunkingConfig,
  });

  GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig.fromJson(
    core.Map json_,
  ) : this(
        layoutBasedChunkingConfig:
            json_.containsKey('layoutBasedChunkingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromJson(
                  json_['layoutBasedChunkingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (layoutBasedChunkingConfig != null)
      'layoutBasedChunkingConfig': layoutBasedChunkingConfig!,
  };
}

/// Configuration for the layout based chunking.
typedef GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig =
    $DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig;

/// Related configurations applied to a specific type of document parser.
class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig {
  /// Configurations applied to digital parser.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig?
  digitalParsingConfig;

  /// Configurations applied to layout parser.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig?
  layoutParsingConfig;

  /// Configurations applied to OCR parser.
  ///
  /// Currently it only applies to PDFs.
  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig?
  ocrParsingConfig;

  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig({
    this.digitalParsingConfig,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig.fromJson(
    core.Map json_,
  ) : this(
        digitalParsingConfig:
            json_.containsKey('digitalParsingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig.fromJson(
                  json_['digitalParsingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        layoutParsingConfig:
            json_.containsKey('layoutParsingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig.fromJson(
                  json_['layoutParsingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        ocrParsingConfig:
            json_.containsKey('ocrParsingConfig')
                ? GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig.fromJson(
                  json_['ocrParsingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (digitalParsingConfig != null)
      'digitalParsingConfig': digitalParsingConfig!,
    if (layoutParsingConfig != null)
      'layoutParsingConfig': layoutParsingConfig!,
    if (ocrParsingConfig != null) 'ocrParsingConfig': ocrParsingConfig!,
  };
}

/// The digital parsing configurations for documents.
typedef GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig =
    $Empty;

/// The layout parsing configurations for documents.
typedef GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig =
    $DocumentProcessingConfigParsingConfigLayoutParsingConfig;

/// The OCR parsing configurations for documents.
typedef GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig =
    $DocumentProcessingConfigParsingConfigOcrParsingConfig;

/// Double list.
typedef GoogleCloudDiscoveryengineV1DoubleList = $DoubleList00;

/// Request message for SiteSearchEngineService.EnableAdvancedSiteSearch method.
typedef GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest = $Empty;

/// Metadata that describes the training and serving parameters of an Engine.
class GoogleCloudDiscoveryengineV1Engine {
  /// Configurations for the Chat Engine.
  ///
  /// Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  GoogleCloudDiscoveryengineV1EngineChatEngineConfig? chatEngineConfig;

  /// Additional information of the Chat Engine.
  ///
  /// Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1EngineChatEngineMetadata? chatEngineMetadata;

  /// Common config spec that specifies the metadata of the engine.
  GoogleCloudDiscoveryengineV1EngineCommonConfig? commonConfig;

  /// Timestamp the Recommendation Engine was created at.
  ///
  /// Output only.
  core.String? createTime;

  /// The data stores associated with this engine.
  ///
  /// For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines,
  /// they can only associate with at most one data store. If solution_type is
  /// SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be
  /// associated here. Note that when used in CreateEngineRequest, one DataStore
  /// id must be provided as the system will use it for necessary
  /// initializations.
  ///
  /// Optional.
  core.List<core.String>? dataStoreIds;

  /// Whether to disable analytics for searches performed on this engine.
  ///
  /// Optional.
  core.bool? disableAnalytics;

  /// The display name of the engine.
  ///
  /// Should be human readable. UTF-8 encoded string with limit of 1024
  /// characters.
  ///
  /// Required.
  core.String? displayName;

  /// Feature config for the engine to opt in or opt out of features.
  ///
  /// Supported keys: * `*`: all features, if it's present, all other feature
  /// state settings are ignored. * `agent-gallery` * `no-code-agent-builder` *
  /// `prompt-gallery` * `model-selector` * `notebook-lm` * `people-search` *
  /// `people-search-org-chart` * `bi-directional-audio` * `feedback` *
  /// `session-sharing` * `personalization-memory` - Enables personalization
  /// based on user preferences.
  ///
  /// Optional.
  core.Map<core.String, core.String>? features;

  /// The industry vertical that the engine registers.
  ///
  /// The restriction of the Engine industry vertical is based on DataStore:
  /// Vertical on Engine has to match vertical of the DataStore linked to the
  /// engine.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INDUSTRY_VERTICAL_UNSPECIFIED" : Value used when unset.
  /// - "GENERIC" : The generic vertical for documents that are not specific to
  /// any industry vertical.
  /// - "MEDIA" : The media industry vertical.
  /// - "HEALTHCARE_FHIR" : The healthcare FHIR vertical.
  core.String? industryVertical;

  /// Configurations for the Media Engine.
  ///
  /// Only applicable on the data stores with solution_type
  /// SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig?
  mediaRecommendationEngineConfig;

  /// Identifier.
  ///
  /// The fully qualified resource name of the engine. This field must be a
  /// UTF-8 encoded string with a length limit of 1024 characters. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}`
  /// engine should be 1-63 characters, and valid characters are /a-z0-9 * / .
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Immutable.
  core.String? name;

  /// Configurations for the Search Engine.
  ///
  /// Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  GoogleCloudDiscoveryengineV1EngineSearchEngineConfig? searchEngineConfig;

  /// The solutions of the engine.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SOLUTION_TYPE_UNSPECIFIED" : Default value.
  /// - "SOLUTION_TYPE_RECOMMENDATION" : Used for Recommendations AI.
  /// - "SOLUTION_TYPE_SEARCH" : Used for Discovery Search.
  /// - "SOLUTION_TYPE_CHAT" : Used for use cases related to the Generative AI
  /// agent.
  /// - "SOLUTION_TYPE_GENERATIVE_CHAT" : Used for use cases related to the
  /// Generative Chat agent. It's used for Generative chat engine only, the
  /// associated data stores must enrolled with `SOLUTION_TYPE_CHAT` solution.
  core.String? solutionType;

  /// Timestamp the Recommendation Engine was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDiscoveryengineV1Engine({
    this.chatEngineConfig,
    this.chatEngineMetadata,
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.disableAnalytics,
    this.displayName,
    this.features,
    this.industryVertical,
    this.mediaRecommendationEngineConfig,
    this.name,
    this.searchEngineConfig,
    this.solutionType,
    this.updateTime,
  });

  GoogleCloudDiscoveryengineV1Engine.fromJson(core.Map json_)
    : this(
        chatEngineConfig:
            json_.containsKey('chatEngineConfig')
                ? GoogleCloudDiscoveryengineV1EngineChatEngineConfig.fromJson(
                  json_['chatEngineConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        chatEngineMetadata:
            json_.containsKey('chatEngineMetadata')
                ? GoogleCloudDiscoveryengineV1EngineChatEngineMetadata.fromJson(
                  json_['chatEngineMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        commonConfig:
            json_.containsKey('commonConfig')
                ? GoogleCloudDiscoveryengineV1EngineCommonConfig.fromJson(
                  json_['commonConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        dataStoreIds:
            (json_['dataStoreIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disableAnalytics: json_['disableAnalytics'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        features: (json_['features'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        industryVertical: json_['industryVertical'] as core.String?,
        mediaRecommendationEngineConfig:
            json_.containsKey('mediaRecommendationEngineConfig')
                ? GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig.fromJson(
                  json_['mediaRecommendationEngineConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        searchEngineConfig:
            json_.containsKey('searchEngineConfig')
                ? GoogleCloudDiscoveryengineV1EngineSearchEngineConfig.fromJson(
                  json_['searchEngineConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        solutionType: json_['solutionType'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chatEngineConfig != null) 'chatEngineConfig': chatEngineConfig!,
    if (chatEngineMetadata != null) 'chatEngineMetadata': chatEngineMetadata!,
    if (commonConfig != null) 'commonConfig': commonConfig!,
    if (createTime != null) 'createTime': createTime!,
    if (dataStoreIds != null) 'dataStoreIds': dataStoreIds!,
    if (disableAnalytics != null) 'disableAnalytics': disableAnalytics!,
    if (displayName != null) 'displayName': displayName!,
    if (features != null) 'features': features!,
    if (industryVertical != null) 'industryVertical': industryVertical!,
    if (mediaRecommendationEngineConfig != null)
      'mediaRecommendationEngineConfig': mediaRecommendationEngineConfig!,
    if (name != null) 'name': name!,
    if (searchEngineConfig != null) 'searchEngineConfig': searchEngineConfig!,
    if (solutionType != null) 'solutionType': solutionType!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Configurations for a Chat Engine.
class GoogleCloudDiscoveryengineV1EngineChatEngineConfig {
  /// The configurationt generate the Dialogflow agent that is associated to
  /// this Engine.
  ///
  /// Note that these configurations are one-time consumed by and passed to
  /// Dialogflow service. It means they cannot be retrieved using
  /// EngineService.GetEngine or EngineService.ListEngines API after engine
  /// creation.
  GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig?
  agentCreationConfig;

  /// If the flag set to true, we allow the agent and engine are in different
  /// locations, otherwise the agent and engine are required to be in the same
  /// location.
  ///
  /// The flag is set to false by default. Note that the `allow_cross_region`
  /// are one-time consumed by and passed to EngineService.CreateEngine. It
  /// means they cannot be retrieved using EngineService.GetEngine or
  /// EngineService.ListEngines API after engine creation.
  ///
  /// Optional.
  core.bool? allowCrossRegion;

  /// The resource name of an exist Dialogflow agent to link to this Chat
  /// Engine.
  ///
  /// Customers can either provide `agent_creation_config` to create agent or
  /// provide an agent name that links the agent with the Chat engine. Format:
  /// `projects//locations//agents/`. Note that the `dialogflow_agent_to_link`
  /// are one-time consumed by and passed to Dialogflow service. It means they
  /// cannot be retrieved using EngineService.GetEngine or
  /// EngineService.ListEngines API after engine creation. Use
  /// ChatEngineMetadata.dialogflow_agent for actual agent association after
  /// Engine is created.
  core.String? dialogflowAgentToLink;

  GoogleCloudDiscoveryengineV1EngineChatEngineConfig({
    this.agentCreationConfig,
    this.allowCrossRegion,
    this.dialogflowAgentToLink,
  });

  GoogleCloudDiscoveryengineV1EngineChatEngineConfig.fromJson(core.Map json_)
    : this(
        agentCreationConfig:
            json_.containsKey('agentCreationConfig')
                ? GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig.fromJson(
                  json_['agentCreationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        allowCrossRegion: json_['allowCrossRegion'] as core.bool?,
        dialogflowAgentToLink: json_['dialogflowAgentToLink'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (agentCreationConfig != null)
      'agentCreationConfig': agentCreationConfig!,
    if (allowCrossRegion != null) 'allowCrossRegion': allowCrossRegion!,
    if (dialogflowAgentToLink != null)
      'dialogflowAgentToLink': dialogflowAgentToLink!,
  };
}

/// Configurations for generating a Dialogflow agent.
///
/// Note that these configurations are one-time consumed by and passed to
/// Dialogflow service. It means they cannot be retrieved using
/// EngineService.GetEngine or EngineService.ListEngines API after engine
/// creation.
typedef GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig =
    $EngineChatEngineConfigAgentCreationConfig;

/// Additional information of a Chat Engine.
///
/// Fields in this message are output only.
typedef GoogleCloudDiscoveryengineV1EngineChatEngineMetadata =
    $EngineChatEngineMetadata;

/// Common configurations for an Engine.
typedef GoogleCloudDiscoveryengineV1EngineCommonConfig = $EngineCommonConfig;

/// Additional config specs for a Media Recommendation engine.
class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig {
  /// Additional engine features config.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig?
  engineFeaturesConfig;

  /// The optimization objective.
  ///
  /// e.g., `cvr`. This field together with optimization_objective describe
  /// engine metadata to use to control engine training and serving. Currently
  /// supported values: `ctr`, `cvr`. If not specified, we choose default based
  /// on engine type. Default depends on type of recommendation:
  /// `recommended-for-you` =\> `ctr` `others-you-may-like` =\> `ctr`
  core.String? optimizationObjective;

  /// Name and value of the custom threshold for cvr optimization_objective.
  ///
  /// For target_field `watch-time`, target_field_value must be an integer value
  /// indicating the media progress time in seconds between (0, 86400\]
  /// (excludes 0, includes 86400) (e.g., 90). For target_field
  /// `watch-percentage`, the target_field_value must be a valid float value
  /// between (0, 1.0\] (excludes 0, includes 1.0) (e.g., 0.5).
  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig?
  optimizationObjectiveConfig;

  /// The training state that the engine is in (e.g. `TRAINING` or `PAUSED`).
  ///
  /// Since part of the cost of running the service is frequency of training -
  /// this can be used to determine when to train engine in order to control
  /// cost. If not specified: the default value for `CreateEngine` method is
  /// `TRAINING`. The default value for `UpdateEngine` method is to keep the
  /// state the same as before.
  /// Possible string values are:
  /// - "TRAINING_STATE_UNSPECIFIED" : Unspecified training state.
  /// - "PAUSED" : The engine training is paused.
  /// - "TRAINING" : The engine is training.
  core.String? trainingState;

  /// The type of engine.
  ///
  /// e.g., `recommended-for-you`. This field together with
  /// optimization_objective describe engine metadata to use to control engine
  /// training and serving. Currently supported values: `recommended-for-you`,
  /// `others-you-may-like`, `more-like-this`, `most-popular-items`.
  ///
  /// Required.
  core.String? type;

  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig({
    this.engineFeaturesConfig,
    this.optimizationObjective,
    this.optimizationObjectiveConfig,
    this.trainingState,
    this.type,
  });

  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig.fromJson(
    core.Map json_,
  ) : this(
        engineFeaturesConfig:
            json_.containsKey('engineFeaturesConfig')
                ? GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig.fromJson(
                  json_['engineFeaturesConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        optimizationObjective: json_['optimizationObjective'] as core.String?,
        optimizationObjectiveConfig:
            json_.containsKey('optimizationObjectiveConfig')
                ? GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig.fromJson(
                  json_['optimizationObjectiveConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        trainingState: json_['trainingState'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (engineFeaturesConfig != null)
      'engineFeaturesConfig': engineFeaturesConfig!,
    if (optimizationObjective != null)
      'optimizationObjective': optimizationObjective!,
    if (optimizationObjectiveConfig != null)
      'optimizationObjectiveConfig': optimizationObjectiveConfig!,
    if (trainingState != null) 'trainingState': trainingState!,
    if (type != null) 'type': type!,
  };
}

/// More feature configs of the selected engine type.
class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig {
  /// Most popular engine feature config.
  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig?
  mostPopularConfig;

  /// Recommended for you engine feature config.
  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig?
  recommendedForYouConfig;

  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig({
    this.mostPopularConfig,
    this.recommendedForYouConfig,
  });

  GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig.fromJson(
    core.Map json_,
  ) : this(
        mostPopularConfig:
            json_.containsKey('mostPopularConfig')
                ? GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig.fromJson(
                  json_['mostPopularConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        recommendedForYouConfig:
            json_.containsKey('recommendedForYouConfig')
                ? GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig.fromJson(
                  json_['recommendedForYouConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mostPopularConfig != null) 'mostPopularConfig': mostPopularConfig!,
    if (recommendedForYouConfig != null)
      'recommendedForYouConfig': recommendedForYouConfig!,
  };
}

/// Feature configurations that are required for creating a Most Popular engine.
typedef GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig =
    $EngineMediaRecommendationEngineConfigMostPopularFeatureConfig;

/// Custom threshold for `cvr` optimization_objective.
typedef GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig =
    $EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig;

/// Additional feature configurations for creating a `recommended-for-you`
/// engine.
typedef GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig =
    $EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig;

/// Configurations for a Search Engine.
typedef GoogleCloudDiscoveryengineV1EngineSearchEngineConfig =
    $EngineSearchEngineConfig;

/// Fact Chunk.
typedef GoogleCloudDiscoveryengineV1FactChunk = $FactChunk;

/// Response message for SiteSearchEngineService.FetchDomainVerificationStatus
/// method.
class GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of TargetSites containing the site verification status.
  core.List<GoogleCloudDiscoveryengineV1TargetSite>? targetSites;

  /// The total number of items matching the request.
  ///
  /// This will always be populated in the response.
  core.int? totalSize;

  GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse({
    this.nextPageToken,
    this.targetSites,
    this.totalSize,
  });

  GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        targetSites:
            (json_['targetSites'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1TargetSite.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (targetSites != null) 'targetSites': targetSites!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response message for SiteSearchEngineService.FetchSitemaps method.
class GoogleCloudDiscoveryengineV1FetchSitemapsResponse {
  /// List of Sitemaps fetched.
  core.List<GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata>?
  sitemapsMetadata;

  GoogleCloudDiscoveryengineV1FetchSitemapsResponse({this.sitemapsMetadata});

  GoogleCloudDiscoveryengineV1FetchSitemapsResponse.fromJson(core.Map json_)
    : this(
        sitemapsMetadata:
            (json_['sitemapsMetadata'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sitemapsMetadata != null) 'sitemapsMetadata': sitemapsMetadata!,
  };
}

/// Contains a Sitemap and its metadata.
class GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata {
  /// The Sitemap.
  GoogleCloudDiscoveryengineV1Sitemap? sitemap;

  GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata({
    this.sitemap,
  });

  GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata.fromJson(
    core.Map json_,
  ) : this(
        sitemap:
            json_.containsKey('sitemap')
                ? GoogleCloudDiscoveryengineV1Sitemap.fromJson(
                  json_['sitemap'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sitemap != null) 'sitemap': sitemap!,
  };
}

/// Cloud FhirStore source import data from.
typedef GoogleCloudDiscoveryengineV1FhirStoreSource = $FhirStoreSource;

/// Firestore source import data from.
typedef GoogleCloudDiscoveryengineV1FirestoreSource = $FirestoreSource;

/// Cloud Storage location for input content.
typedef GoogleCloudDiscoveryengineV1GcsSource = $GcsSource01;

/// Grounding Fact.
typedef GoogleCloudDiscoveryengineV1GroundingFact = $GroundingFact;

/// Config to data store for `HEALTHCARE_FHIR` vertical.
typedef GoogleCloudDiscoveryengineV1HealthcareFhirConfig =
    $HealthcareFhirConfig;

/// Identity Mapping Entry that maps an external identity to an internal
/// identity.
typedef GoogleCloudDiscoveryengineV1IdentityMappingEntry =
    $IdentityMappingEntry;

/// Identity Mapping Store which contains Identity Mapping Entries.
class GoogleCloudDiscoveryengineV1IdentityMappingStore {
  /// CMEK-related information for the Identity Mapping Store.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1CmekConfig? cmekConfig;

  /// Input only.
  ///
  /// The KMS key to be used to protect this Identity Mapping Store at creation
  /// time. Must be set for requests that need to comply with CMEK Org Policy
  /// protections. If this field is set and processed successfully, the Identity
  /// Mapping Store will be protected by the KMS key, as indicated in the
  /// cmek_config field.
  core.String? kmsKeyName;

  /// The full resource name of the identity mapping store.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/identityMappingStores/{identity_mapping_store}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  ///
  /// Immutable.
  core.String? name;

  GoogleCloudDiscoveryengineV1IdentityMappingStore({
    this.cmekConfig,
    this.kmsKeyName,
    this.name,
  });

  GoogleCloudDiscoveryengineV1IdentityMappingStore.fromJson(core.Map json_)
    : this(
        cmekConfig:
            json_.containsKey('cmekConfig')
                ? GoogleCloudDiscoveryengineV1CmekConfig.fromJson(
                  json_['cmekConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cmekConfig != null) 'cmekConfig': cmekConfig!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (name != null) 'name': name!,
  };
}

/// Request message for CompletionService.ImportCompletionSuggestions method.
class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest {
  /// BigQuery input source.
  GoogleCloudDiscoveryengineV1BigQuerySource? bigquerySource;

  /// The desired location of errors incurred during the Import.
  GoogleCloudDiscoveryengineV1ImportErrorConfig? errorConfig;

  /// Cloud Storage location for the input content.
  GoogleCloudDiscoveryengineV1GcsSource? gcsSource;

  /// The Inline source for suggestion entries.
  GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource?
  inlineSource;

  GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest({
    this.bigquerySource,
    this.errorConfig,
    this.gcsSource,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest.fromJson(
    core.Map json_,
  ) : this(
        bigquerySource:
            json_.containsKey('bigquerySource')
                ? GoogleCloudDiscoveryengineV1BigQuerySource.fromJson(
                  json_['bigquerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorConfig:
            json_.containsKey('errorConfig')
                ? GoogleCloudDiscoveryengineV1ImportErrorConfig.fromJson(
                  json_['errorConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDiscoveryengineV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigquerySource != null) 'bigquerySource': bigquerySource!,
    if (errorConfig != null) 'errorConfig': errorConfig!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source for CompletionSuggestions.
class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource {
  /// A list of all denylist entries to import.
  ///
  /// Max of 1000 items.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1CompletionSuggestion>? suggestions;

  GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource({
    this.suggestions,
  });

  GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        suggestions:
            (json_['suggestions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CompletionSuggestion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (suggestions != null) 'suggestions': suggestions!,
  };
}

/// Request message for Import methods.
class GoogleCloudDiscoveryengineV1ImportDocumentsRequest {
  /// AlloyDB input source.
  GoogleCloudDiscoveryengineV1AlloyDbSource? alloyDbSource;

  /// Whether to automatically generate IDs for the documents if absent.
  ///
  /// If set to `true`, Document.ids are automatically generated based on the
  /// hash of the payload, where IDs may not be consistent during multiple
  /// imports. In which case ReconciliationMode.FULL is highly recommended to
  /// avoid duplicate contents. If unset or set to `false`, Document.ids have to
  /// be specified using id_field, otherwise, documents without IDs fail to be
  /// imported. Supported data sources: * GcsSource. GcsSource.data_schema must
  /// be `custom` or `csv`. Otherwise, an INVALID_ARGUMENT error is thrown. *
  /// BigQuerySource. BigQuerySource.data_schema must be `custom` or `csv`.
  /// Otherwise, an INVALID_ARGUMENT error is thrown. * SpannerSource. *
  /// CloudSqlSource. * FirestoreSource. * BigtableSource.
  core.bool? autoGenerateIds;

  /// BigQuery input source.
  GoogleCloudDiscoveryengineV1BigQuerySource? bigquerySource;

  /// Cloud Bigtable input source.
  GoogleCloudDiscoveryengineV1BigtableSource? bigtableSource;

  /// Cloud SQL input source.
  GoogleCloudDiscoveryengineV1CloudSqlSource? cloudSqlSource;

  /// The desired location of errors incurred during the Import.
  GoogleCloudDiscoveryengineV1ImportErrorConfig? errorConfig;

  /// FhirStore input source.
  GoogleCloudDiscoveryengineV1FhirStoreSource? fhirStoreSource;

  /// Firestore input source.
  GoogleCloudDiscoveryengineV1FirestoreSource? firestoreSource;

  /// Whether to force refresh the unstructured content of the documents.
  ///
  /// If set to `true`, the content part of the documents will be refreshed
  /// regardless of the update status of the referencing content.
  ///
  /// Optional.
  core.bool? forceRefreshContent;

  /// Cloud Storage location for the input content.
  GoogleCloudDiscoveryengineV1GcsSource? gcsSource;

  /// The field indicates the ID field or column to be used as unique IDs of the
  /// documents.
  ///
  /// For GcsSource it is the key of the JSON field. For instance, `my_id` for
  /// JSON `{"my_id": "some_uuid"}`. For others, it may be the column name of
  /// the table where the unique ids are stored. The values of the JSON field or
  /// the table column are used as the Document.ids. The JSON field or the table
  /// column must be of string type, and the values must be set as valid strings
  /// conform to \[RFC-1034\](https://tools.ietf.org/html/rfc1034) with 1-63
  /// characters. Otherwise, documents without valid IDs fail to be imported.
  /// Only set this field when auto_generate_ids is unset or set as `false`.
  /// Otherwise, an INVALID_ARGUMENT error is thrown. If it is unset, a default
  /// value `_id` is used when importing from the allowed data sources.
  /// Supported data sources: * GcsSource. GcsSource.data_schema must be
  /// `custom` or `csv`. Otherwise, an INVALID_ARGUMENT error is thrown. *
  /// BigQuerySource. BigQuerySource.data_schema must be `custom` or `csv`.
  /// Otherwise, an INVALID_ARGUMENT error is thrown. * SpannerSource. *
  /// CloudSqlSource. * BigtableSource.
  core.String? idField;

  /// The Inline source for the input content for documents.
  GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource? inlineSource;

  /// The mode of reconciliation between existing documents and the documents to
  /// be imported.
  ///
  /// Defaults to ReconciliationMode.INCREMENTAL.
  /// Possible string values are:
  /// - "RECONCILIATION_MODE_UNSPECIFIED" : Defaults to `INCREMENTAL`.
  /// - "INCREMENTAL" : Inserts new documents or updates existing documents.
  /// - "FULL" : Calculates diff and replaces the entire document dataset.
  /// Existing documents may be deleted if they are not present in the source
  /// location. When using this mode, there won't be any downtime on the dataset
  /// targeted. Any document that should remain unchanged or that should be
  /// updated will continue serving while the operation is running.
  core.String? reconciliationMode;

  /// Spanner input source.
  GoogleCloudDiscoveryengineV1SpannerSource? spannerSource;

  /// Indicates which fields in the provided imported documents to update.
  ///
  /// If not set, the default is to update all fields.
  core.String? updateMask;

  GoogleCloudDiscoveryengineV1ImportDocumentsRequest({
    this.alloyDbSource,
    this.autoGenerateIds,
    this.bigquerySource,
    this.bigtableSource,
    this.cloudSqlSource,
    this.errorConfig,
    this.fhirStoreSource,
    this.firestoreSource,
    this.forceRefreshContent,
    this.gcsSource,
    this.idField,
    this.inlineSource,
    this.reconciliationMode,
    this.spannerSource,
    this.updateMask,
  });

  GoogleCloudDiscoveryengineV1ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        alloyDbSource:
            json_.containsKey('alloyDbSource')
                ? GoogleCloudDiscoveryengineV1AlloyDbSource.fromJson(
                  json_['alloyDbSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        autoGenerateIds: json_['autoGenerateIds'] as core.bool?,
        bigquerySource:
            json_.containsKey('bigquerySource')
                ? GoogleCloudDiscoveryengineV1BigQuerySource.fromJson(
                  json_['bigquerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        bigtableSource:
            json_.containsKey('bigtableSource')
                ? GoogleCloudDiscoveryengineV1BigtableSource.fromJson(
                  json_['bigtableSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudSqlSource:
            json_.containsKey('cloudSqlSource')
                ? GoogleCloudDiscoveryengineV1CloudSqlSource.fromJson(
                  json_['cloudSqlSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorConfig:
            json_.containsKey('errorConfig')
                ? GoogleCloudDiscoveryengineV1ImportErrorConfig.fromJson(
                  json_['errorConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fhirStoreSource:
            json_.containsKey('fhirStoreSource')
                ? GoogleCloudDiscoveryengineV1FhirStoreSource.fromJson(
                  json_['fhirStoreSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        firestoreSource:
            json_.containsKey('firestoreSource')
                ? GoogleCloudDiscoveryengineV1FirestoreSource.fromJson(
                  json_['firestoreSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        forceRefreshContent: json_['forceRefreshContent'] as core.bool?,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDiscoveryengineV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        idField: json_['idField'] as core.String?,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reconciliationMode: json_['reconciliationMode'] as core.String?,
        spannerSource:
            json_.containsKey('spannerSource')
                ? GoogleCloudDiscoveryengineV1SpannerSource.fromJson(
                  json_['spannerSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alloyDbSource != null) 'alloyDbSource': alloyDbSource!,
    if (autoGenerateIds != null) 'autoGenerateIds': autoGenerateIds!,
    if (bigquerySource != null) 'bigquerySource': bigquerySource!,
    if (bigtableSource != null) 'bigtableSource': bigtableSource!,
    if (cloudSqlSource != null) 'cloudSqlSource': cloudSqlSource!,
    if (errorConfig != null) 'errorConfig': errorConfig!,
    if (fhirStoreSource != null) 'fhirStoreSource': fhirStoreSource!,
    if (firestoreSource != null) 'firestoreSource': firestoreSource!,
    if (forceRefreshContent != null)
      'forceRefreshContent': forceRefreshContent!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (idField != null) 'idField': idField!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
    if (reconciliationMode != null) 'reconciliationMode': reconciliationMode!,
    if (spannerSource != null) 'spannerSource': spannerSource!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The inline source for the input config for ImportDocuments method.
class GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource {
  /// A list of documents to update/create.
  ///
  /// Each document must have a valid Document.id. Recommended max of 100 items.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1Document>? documents;

  GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource({
    this.documents,
  });

  GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Document.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
  };
}

/// Configuration of destination for Import related errors.
typedef GoogleCloudDiscoveryengineV1ImportErrorConfig = $ImportErrorConfig;

/// Request message for IdentityMappingStoreService.ImportIdentityMappings
class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest {
  /// The inline source to import identity mapping entries from.
  GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource?
  inlineSource;

  GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest({
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest.fromJson(
    core.Map json_,
  ) : this(
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source to import identity mapping entries from.
class GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource {
  /// A maximum of 10000 entries can be imported at one time
  core.List<GoogleCloudDiscoveryengineV1IdentityMappingEntry>?
  identityMappingEntries;

  GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource({
    this.identityMappingEntries,
  });

  GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        identityMappingEntries:
            (json_['identityMappingEntries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1IdentityMappingEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityMappingEntries != null)
      'identityMappingEntries': identityMappingEntries!,
  };
}

/// Request message for CompletionService.ImportSuggestionDenyListEntries
/// method.
class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest {
  /// Cloud Storage location for the input content.
  ///
  /// Only 1 file can be specified that contains all entries to import.
  /// Supported values `gcs_source.schema` for autocomplete suggestion deny list
  /// entry imports: * `suggestion_deny_list` (default): One JSON
  /// \[SuggestionDenyListEntry\] per line.
  GoogleCloudDiscoveryengineV1GcsSource? gcsSource;

  /// The Inline source for the input content for suggestion deny list entries.
  GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource?
  inlineSource;

  GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest({
    this.gcsSource,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest.fromJson(
    core.Map json_,
  ) : this(
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDiscoveryengineV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source for SuggestionDenyListEntry.
class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource {
  /// A list of all denylist entries to import.
  ///
  /// Max of 1000 items.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1SuggestionDenyListEntry>? entries;

  GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource({
    this.entries,
  });

  GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SuggestionDenyListEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Request message for the ImportUserEvents request.
class GoogleCloudDiscoveryengineV1ImportUserEventsRequest {
  /// BigQuery input source.
  GoogleCloudDiscoveryengineV1BigQuerySource? bigquerySource;

  /// The desired location of errors incurred during the Import.
  ///
  /// Cannot be set for inline user event imports.
  GoogleCloudDiscoveryengineV1ImportErrorConfig? errorConfig;

  /// Cloud Storage location for the input content.
  GoogleCloudDiscoveryengineV1GcsSource? gcsSource;

  /// The Inline source for the input content for UserEvents.
  GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource? inlineSource;

  GoogleCloudDiscoveryengineV1ImportUserEventsRequest({
    this.bigquerySource,
    this.errorConfig,
    this.gcsSource,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1ImportUserEventsRequest.fromJson(core.Map json_)
    : this(
        bigquerySource:
            json_.containsKey('bigquerySource')
                ? GoogleCloudDiscoveryengineV1BigQuerySource.fromJson(
                  json_['bigquerySource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorConfig:
            json_.containsKey('errorConfig')
                ? GoogleCloudDiscoveryengineV1ImportErrorConfig.fromJson(
                  json_['errorConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDiscoveryengineV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigquerySource != null) 'bigquerySource': bigquerySource!,
    if (errorConfig != null) 'errorConfig': errorConfig!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source for the input config for ImportUserEvents method.
class GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource {
  /// A list of user events to import.
  ///
  /// Recommended max of 10k items.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1UserEvent>? userEvents;

  GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource({
    this.userEvents,
  });

  GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        userEvents:
            (json_['userEvents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1UserEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userEvents != null) 'userEvents': userEvents!,
  };
}

/// A floating point interval.
typedef GoogleCloudDiscoveryengineV1Interval = $Interval01;

/// Response message for CmekConfigService.ListCmekConfigs method.
class GoogleCloudDiscoveryengineV1ListCmekConfigsResponse {
  /// All the customer's CmekConfigs.
  core.List<GoogleCloudDiscoveryengineV1CmekConfig>? cmekConfigs;

  GoogleCloudDiscoveryengineV1ListCmekConfigsResponse({this.cmekConfigs});

  GoogleCloudDiscoveryengineV1ListCmekConfigsResponse.fromJson(core.Map json_)
    : this(
        cmekConfigs:
            (json_['cmekConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1CmekConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cmekConfigs != null) 'cmekConfigs': cmekConfigs!,
  };
}

/// Response for ListControls method.
class GoogleCloudDiscoveryengineV1ListControlsResponse {
  /// All the Controls for a given data store.
  core.List<GoogleCloudDiscoveryengineV1Control>? controls;

  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListControlsResponse({
    this.controls,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListControlsResponse.fromJson(core.Map json_)
    : this(
        controls:
            (json_['controls'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Control.fromJson(
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

/// Response for ListConversations method.
class GoogleCloudDiscoveryengineV1ListConversationsResponse {
  /// All the Conversations for a given data store.
  core.List<GoogleCloudDiscoveryengineV1Conversation>? conversations;

  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListConversationsResponse({
    this.conversations,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListConversationsResponse.fromJson(core.Map json_)
    : this(
        conversations:
            (json_['conversations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Conversation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conversations != null) 'conversations': conversations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for SearchTuningService.ListCustomModels method.
class GoogleCloudDiscoveryengineV1ListCustomModelsResponse {
  /// List of custom tuning models.
  core.List<GoogleCloudDiscoveryengineV1CustomTuningModel>? models;

  GoogleCloudDiscoveryengineV1ListCustomModelsResponse({this.models});

  GoogleCloudDiscoveryengineV1ListCustomModelsResponse.fromJson(core.Map json_)
    : this(
        models:
            (json_['models'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1CustomTuningModel.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (models != null) 'models': models!,
  };
}

/// Response message for DataStoreService.ListDataStores method.
class GoogleCloudDiscoveryengineV1ListDataStoresResponse {
  /// All the customer's DataStores.
  core.List<GoogleCloudDiscoveryengineV1DataStore>? dataStores;

  /// A token that can be sent as ListDataStoresRequest.page_token to retrieve
  /// the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListDataStoresResponse({
    this.dataStores,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListDataStoresResponse.fromJson(core.Map json_)
    : this(
        dataStores:
            (json_['dataStores'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1DataStore.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStores != null) 'dataStores': dataStores!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for DocumentService.ListDocuments method.
class GoogleCloudDiscoveryengineV1ListDocumentsResponse {
  /// The Documents.
  core.List<GoogleCloudDiscoveryengineV1Document>? documents;

  /// A token that can be sent as ListDocumentsRequest.page_token to retrieve
  /// the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Document.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for EngineService.ListEngines method.
class GoogleCloudDiscoveryengineV1ListEnginesResponse {
  /// All the customer's Engines.
  core.List<GoogleCloudDiscoveryengineV1Engine>? engines;

  /// Not supported.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListEnginesResponse({
    this.engines,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListEnginesResponse.fromJson(core.Map json_)
    : this(
        engines:
            (json_['engines'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Engine.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (engines != null) 'engines': engines!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for IdentityMappingStoreService.ListIdentityMappingStores
class GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse {
  /// The Identity Mapping Stores.
  core.List<GoogleCloudDiscoveryengineV1IdentityMappingStore>?
  identityMappingStores;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse({
    this.identityMappingStores,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse.fromJson(
    core.Map json_,
  ) : this(
        identityMappingStores:
            (json_['identityMappingStores'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1IdentityMappingStore.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityMappingStores != null)
      'identityMappingStores': identityMappingStores!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for IdentityMappingStoreService.ListIdentityMappings
class GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse {
  /// The Identity Mapping Entries.
  core.List<GoogleCloudDiscoveryengineV1IdentityMappingEntry>?
  identityMappingEntries;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse({
    this.identityMappingEntries,
    this.nextPageToken,
  });

  GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse.fromJson(
    core.Map json_,
  ) : this(
        identityMappingEntries:
            (json_['identityMappingEntries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1IdentityMappingEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityMappingEntries != null)
      'identityMappingEntries': identityMappingEntries!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for SchemaService.ListSchemas method.
class GoogleCloudDiscoveryengineV1ListSchemasResponse {
  /// A token that can be sent as ListSchemasRequest.page_token to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The Schemas.
  core.List<GoogleCloudDiscoveryengineV1Schema>? schemas;

  GoogleCloudDiscoveryengineV1ListSchemasResponse({
    this.nextPageToken,
    this.schemas,
  });

  GoogleCloudDiscoveryengineV1ListSchemasResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        schemas:
            (json_['schemas'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Schema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (schemas != null) 'schemas': schemas!,
  };
}

/// Response for ListSessions method.
class GoogleCloudDiscoveryengineV1ListSessionsResponse {
  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  /// All the Sessions for a given data store.
  core.List<GoogleCloudDiscoveryengineV1Session>? sessions;

  GoogleCloudDiscoveryengineV1ListSessionsResponse({
    this.nextPageToken,
    this.sessions,
  });

  GoogleCloudDiscoveryengineV1ListSessionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sessions:
            (json_['sessions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1Session.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sessions != null) 'sessions': sessions!,
  };
}

/// Response message for SiteSearchEngineService.ListTargetSites method.
class GoogleCloudDiscoveryengineV1ListTargetSitesResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of TargetSites.
  core.List<GoogleCloudDiscoveryengineV1TargetSite>? targetSites;

  /// The total number of items matching the request.
  ///
  /// This will always be populated in the response.
  core.int? totalSize;

  GoogleCloudDiscoveryengineV1ListTargetSitesResponse({
    this.nextPageToken,
    this.targetSites,
    this.totalSize,
  });

  GoogleCloudDiscoveryengineV1ListTargetSitesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        targetSites:
            (json_['targetSites'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1TargetSite.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (targetSites != null) 'targetSites': targetSites!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// Response message for UserLicenseService.ListUserLicenses.
class GoogleCloudDiscoveryengineV1ListUserLicensesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// All the customer's UserLicenses.
  core.List<GoogleCloudDiscoveryengineV1UserLicense>? userLicenses;

  GoogleCloudDiscoveryengineV1ListUserLicensesResponse({
    this.nextPageToken,
    this.userLicenses,
  });

  GoogleCloudDiscoveryengineV1ListUserLicensesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userLicenses:
            (json_['userLicenses'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1UserLicense.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (userLicenses != null) 'userLicenses': userLicenses!,
  };
}

/// Media-specific user event information.
typedef GoogleCloudDiscoveryengineV1MediaInfo = $MediaInfo;

/// Detailed page information.
typedef GoogleCloudDiscoveryengineV1PageInfo = $PageInfo00;

/// Detailed panel information associated with a user event.
class GoogleCloudDiscoveryengineV1PanelInfo {
  /// The display name of the panel.
  core.String? displayName;

  /// The document IDs associated with this panel.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1DocumentInfo>? documents;

  /// The panel ID.
  ///
  /// Required.
  core.String? panelId;

  /// The ordered position of the panel, if shown to the user with other panels.
  ///
  /// If set, then total_panels must also be set.
  core.int? panelPosition;

  /// The total number of panels, including this one, shown to the user.
  ///
  /// Must be set if panel_position is set.
  core.int? totalPanels;

  GoogleCloudDiscoveryengineV1PanelInfo({
    this.displayName,
    this.documents,
    this.panelId,
    this.panelPosition,
    this.totalPanels,
  });

  GoogleCloudDiscoveryengineV1PanelInfo.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1DocumentInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        panelId: json_['panelId'] as core.String?,
        panelPosition: json_['panelPosition'] as core.int?,
        totalPanels: json_['totalPanels'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (documents != null) 'documents': documents!,
    if (panelId != null) 'panelId': panelId!,
    if (panelPosition != null) 'panelPosition': panelPosition!,
    if (totalPanels != null) 'totalPanels': totalPanels!,
  };
}

/// Principal identifier of a user or a group.
typedef GoogleCloudDiscoveryengineV1Principal = $Principal;

/// Request for ProjectService.ProvisionProject method.
class GoogleCloudDiscoveryengineV1ProvisionProjectRequest {
  /// Set to `true` to specify that caller has read and would like to give
  /// consent to the
  /// [Terms for data use](https://cloud.google.com/retail/data-use-terms).
  ///
  /// Required.
  core.bool? acceptDataUseTerms;

  /// The version of the
  /// [Terms for data use](https://cloud.google.com/retail/data-use-terms) that
  /// caller has read and would like to give consent to.
  ///
  /// Acceptable version is `2022-11-23`, and this may change over time.
  ///
  /// Required.
  core.String? dataUseTermsVersion;

  /// Parameters for Agentspace.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams? saasParams;

  GoogleCloudDiscoveryengineV1ProvisionProjectRequest({
    this.acceptDataUseTerms,
    this.dataUseTermsVersion,
    this.saasParams,
  });

  GoogleCloudDiscoveryengineV1ProvisionProjectRequest.fromJson(core.Map json_)
    : this(
        acceptDataUseTerms: json_['acceptDataUseTerms'] as core.bool?,
        dataUseTermsVersion: json_['dataUseTermsVersion'] as core.String?,
        saasParams:
            json_.containsKey('saasParams')
                ? GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams.fromJson(
                  json_['saasParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceptDataUseTerms != null) 'acceptDataUseTerms': acceptDataUseTerms!,
    if (dataUseTermsVersion != null)
      'dataUseTermsVersion': dataUseTermsVersion!,
    if (saasParams != null) 'saasParams': saasParams!,
  };
}

/// Parameters for Agentspace.
typedef GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams =
    $ProvisionProjectRequestSaasParams;

/// Request message for CompletionService.PurgeCompletionSuggestions method.
typedef GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest = $Empty;

/// Request message for DocumentService.PurgeDocuments method.
class GoogleCloudDiscoveryengineV1PurgeDocumentsRequest {
  /// The desired location of errors incurred during the purge.
  GoogleCloudDiscoveryengineV1PurgeErrorConfig? errorConfig;

  /// Filter matching documents to purge.
  ///
  /// Only currently supported value is `*` (all items).
  ///
  /// Required.
  core.String? filter;

  /// Actually performs the purge.
  ///
  /// If `force` is set to false, return the expected purge count without
  /// deleting any documents.
  core.bool? force;

  /// Cloud Storage location for the input content.
  ///
  /// Supported `data_schema`: * `document_id`: One valid Document.id per line.
  GoogleCloudDiscoveryengineV1GcsSource? gcsSource;

  /// Inline source for the input content for purge.
  GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource? inlineSource;

  GoogleCloudDiscoveryengineV1PurgeDocumentsRequest({
    this.errorConfig,
    this.filter,
    this.force,
    this.gcsSource,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1PurgeDocumentsRequest.fromJson(core.Map json_)
    : this(
        errorConfig:
            json_.containsKey('errorConfig')
                ? GoogleCloudDiscoveryengineV1PurgeErrorConfig.fromJson(
                  json_['errorConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
        force: json_['force'] as core.bool?,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudDiscoveryengineV1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorConfig != null) 'errorConfig': errorConfig!,
    if (filter != null) 'filter': filter!,
    if (force != null) 'force': force!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source for the input config for DocumentService.PurgeDocuments
/// method.
typedef GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource =
    $PurgeDocumentsRequestInlineSource;

/// Configuration of destination for Purge related errors.
typedef GoogleCloudDiscoveryengineV1PurgeErrorConfig = $PurgeErrorConfig;

/// Request message for IdentityMappingStoreService.PurgeIdentityMappings
class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest {
  /// Filter matching identity mappings to purge.
  ///
  /// The eligible field for filtering is: * `update_time`: in ISO 8601 "zulu"
  /// format. * `external_id` Examples: * Deleting all identity mappings updated
  /// in a time range: `update_time > "2012-04-23T18:25:43.511Z" AND update_time
  /// < "2012-04-23T18:30:43.511Z"` * Deleting all identity mappings for a given
  /// external_id: `external_id = "id1"` * Deleting all identity mappings inside
  /// an identity mapping store: `*` The filtering fields are assumed to have an
  /// implicit AND. Should not be used with source. An error will be thrown, if
  /// both are provided.
  core.String? filter;

  /// Actually performs the purge.
  ///
  /// If `force` is set to false, return the expected purge count without
  /// deleting any identity mappings. This field is only supported for purge
  /// with filter. For input source this field is ignored and data will be
  /// purged regardless of the value of this field.
  core.bool? force;

  /// The inline source to purge identity mapping entries from.
  GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource?
  inlineSource;

  GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest({
    this.filter,
    this.force,
    this.inlineSource,
  });

  GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest.fromJson(
    core.Map json_,
  ) : this(
        filter: json_['filter'] as core.String?,
        force: json_['force'] as core.bool?,
        inlineSource:
            json_.containsKey('inlineSource')
                ? GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (force != null) 'force': force!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// The inline source to purge identity mapping entries from.
class GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource {
  /// A maximum of 10000 entries can be purged at one time
  core.List<GoogleCloudDiscoveryengineV1IdentityMappingEntry>?
  identityMappingEntries;

  GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource({
    this.identityMappingEntries,
  });

  GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource.fromJson(
    core.Map json_,
  ) : this(
        identityMappingEntries:
            (json_['identityMappingEntries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1IdentityMappingEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (identityMappingEntries != null)
      'identityMappingEntries': identityMappingEntries!,
  };
}

/// Request message for CompletionService.PurgeSuggestionDenyListEntries method.
typedef GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest =
    $Empty;

/// Request message for PurgeUserEvents method.
typedef GoogleCloudDiscoveryengineV1PurgeUserEventsRequest =
    $PurgeUserEventsRequest00;

/// Defines a user inputed query.
typedef GoogleCloudDiscoveryengineV1Query = $Query00;

/// Request message for RankService.Rank method.
class GoogleCloudDiscoveryengineV1RankRequest {
  /// If true, the response will contain only record ID and score.
  ///
  /// By default, it is false, the response will contain record details.
  core.bool? ignoreRecordDetailsInResponse;

  /// The identifier of the model to use.
  ///
  /// It is one of: * `semantic-ranker-512@latest`: Semantic ranking model with
  /// maximum input token size 512. It is set to `semantic-ranker-512@latest` by
  /// default if unspecified.
  core.String? model;

  /// The query to use.
  core.String? query;

  /// A list of records to rank.
  ///
  /// Required.
  core.List<GoogleCloudDiscoveryengineV1RankingRecord>? records;

  /// The number of results to return.
  ///
  /// If this is unset or no bigger than zero, returns all results.
  core.int? topN;

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
  core.Map<core.String, core.String>? userLabels;

  GoogleCloudDiscoveryengineV1RankRequest({
    this.ignoreRecordDetailsInResponse,
    this.model,
    this.query,
    this.records,
    this.topN,
    this.userLabels,
  });

  GoogleCloudDiscoveryengineV1RankRequest.fromJson(core.Map json_)
    : this(
        ignoreRecordDetailsInResponse:
            json_['ignoreRecordDetailsInResponse'] as core.bool?,
        model: json_['model'] as core.String?,
        query: json_['query'] as core.String?,
        records:
            (json_['records'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1RankingRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        topN: json_['topN'] as core.int?,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ignoreRecordDetailsInResponse != null)
      'ignoreRecordDetailsInResponse': ignoreRecordDetailsInResponse!,
    if (model != null) 'model': model!,
    if (query != null) 'query': query!,
    if (records != null) 'records': records!,
    if (topN != null) 'topN': topN!,
    if (userLabels != null) 'userLabels': userLabels!,
  };
}

/// Response message for RankService.Rank method.
class GoogleCloudDiscoveryengineV1RankResponse {
  /// A list of records sorted by descending score.
  core.List<GoogleCloudDiscoveryengineV1RankingRecord>? records;

  GoogleCloudDiscoveryengineV1RankResponse({this.records});

  GoogleCloudDiscoveryengineV1RankResponse.fromJson(core.Map json_)
    : this(
        records:
            (json_['records'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1RankingRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (records != null) 'records': records!,
  };
}

/// Record message for RankService.Rank method.
typedef GoogleCloudDiscoveryengineV1RankingRecord = $RankingRecord;

/// Request message for Recommend method.
class GoogleCloudDiscoveryengineV1RecommendRequest {
  /// Filter for restricting recommendation results with a length limit of 5,000
  /// characters.
  ///
  /// Currently, only filter expressions on the `filter_tags` attribute is
  /// supported. Examples: * `(filter_tags: ANY("Red", "Blue") OR filter_tags:
  /// ANY("Hot", "Cold"))` * `(filter_tags: ANY("Red", "Blue")) AND NOT
  /// (filter_tags: ANY("Green"))` If `attributeFilteringSyntax` is set to true
  /// under the `params` field, then attribute-based expressions are expected
  /// instead of the above described tag-based syntax. Examples: * (language:
  /// ANY("en", "es")) AND NOT (categories: ANY("Movie")) * (available: true)
  /// AND (language: ANY("en", "es")) OR (categories: ANY("Movie")) If your
  /// filter blocks all results, the API returns generic (unfiltered) popular
  /// Documents. If you only want results strictly matching the filters, set
  /// `strictFiltering` to `true` in RecommendRequest.params to receive empty
  /// results instead. Note that the API never returns Documents with
  /// `storageStatus` as `EXPIRED` or `DELETED` regardless of filter choices.
  core.String? filter;

  /// Maximum number of results to return.
  ///
  /// Set this property to the number of recommendation results needed. If zero,
  /// the service chooses a reasonable default. The maximum allowed value is
  /// 100. Values above 100 are set to 100.
  core.int? pageSize;

  /// Additional domain specific parameters for the recommendations.
  ///
  /// Allowed values: * `returnDocument`: Boolean. If set to `true`, the
  /// associated Document object is returned in
  /// RecommendResponse.RecommendationResult.document. * `returnScore`: Boolean.
  /// If set to true, the recommendation score corresponding to each returned
  /// Document is set in RecommendResponse.RecommendationResult.metadata. The
  /// given score indicates the probability of a Document conversion given the
  /// user's context and history. * `strictFiltering`: Boolean. True by default.
  /// If set to `false`, the service returns generic (unfiltered) popular
  /// Documents instead of empty if your filter blocks all recommendation
  /// results. * `diversityLevel`: String. Default empty. If set to be
  /// non-empty, then it needs to be one of: * `no-diversity` * `low-diversity`
  /// * `medium-diversity` * `high-diversity` * `auto-diversity` This gives
  /// request-level control and adjusts recommendation results based on Document
  /// category. * `attributeFilteringSyntax`: Boolean. False by default. If set
  /// to true, the `filter` field is interpreted according to the new,
  /// attribute-based syntax.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Context about the user, what they are looking at and what action they took
  /// to trigger the Recommend request.
  ///
  /// Note that this user event detail won't be ingested to userEvent logs.
  /// Thus, a separate userEvent write request is required for event logging.
  /// Don't set UserEvent.user_pseudo_id or UserEvent.user_info.user_id to the
  /// same fixed ID for different users. If you are trying to receive
  /// non-personalized recommendations (not recommended; this can negatively
  /// impact model performance), instead set UserEvent.user_pseudo_id to a
  /// random unique ID and leave UserEvent.user_info.user_id unset.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1UserEvent? userEvent;

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
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// for more details.
  core.Map<core.String, core.String>? userLabels;

  /// Use validate only mode for this recommendation query.
  ///
  /// If set to `true`, a fake model is used that returns arbitrary Document
  /// IDs. Note that the validate only mode should only be used for testing the
  /// API, or if the model is not ready.
  core.bool? validateOnly;

  GoogleCloudDiscoveryengineV1RecommendRequest({
    this.filter,
    this.pageSize,
    this.params,
    this.userEvent,
    this.userLabels,
    this.validateOnly,
  });

  GoogleCloudDiscoveryengineV1RecommendRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        params:
            json_.containsKey('params')
                ? json_['params'] as core.Map<core.String, core.dynamic>
                : null,
        userEvent:
            json_.containsKey('userEvent')
                ? GoogleCloudDiscoveryengineV1UserEvent.fromJson(
                  json_['userEvent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (params != null) 'params': params!,
    if (userEvent != null) 'userEvent': userEvent!,
    if (userLabels != null) 'userLabels': userLabels!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response message for Recommend method.
class GoogleCloudDiscoveryengineV1RecommendResponse {
  /// A unique attribution token.
  ///
  /// This should be included in the UserEvent logs resulting from this
  /// recommendation, which enables accurate attribution of recommendation model
  /// performance.
  core.String? attributionToken;

  /// IDs of documents in the request that were missing from the default Branch
  /// associated with the requested ServingConfig.
  core.List<core.String>? missingIds;

  /// A list of recommended Documents.
  ///
  /// The order represents the ranking (from the most relevant Document to the
  /// least).
  core.List<GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult>?
  results;

  /// True if RecommendRequest.validate_only was set.
  core.bool? validateOnly;

  GoogleCloudDiscoveryengineV1RecommendResponse({
    this.attributionToken,
    this.missingIds,
    this.results,
    this.validateOnly,
  });

  GoogleCloudDiscoveryengineV1RecommendResponse.fromJson(core.Map json_)
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
                      GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult.fromJson(
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

/// RecommendationResult represents a generic recommendation result with
/// associated metadata.
class GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult {
  /// Set if `returnDocument` is set to true in RecommendRequest.params.
  GoogleCloudDiscoveryengineV1Document? document;

  /// Resource ID of the recommended Document.
  core.String? id;

  /// Additional Document metadata or annotations.
  ///
  /// Possible values: * `score`: Recommendation score in double value. Is set
  /// if `returnScore` is set to true in RecommendRequest.params.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult({
    this.document,
    this.id,
    this.metadata,
  });

  GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult.fromJson(
    core.Map json_,
  ) : this(
        document:
            json_.containsKey('document')
                ? GoogleCloudDiscoveryengineV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (id != null) 'id': id!,
    if (metadata != null) 'metadata': metadata!,
  };
}

/// Request message for SiteSearchEngineService.RecrawlUris method.
typedef GoogleCloudDiscoveryengineV1RecrawlUrisRequest = $RecrawlUrisRequest;

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1Reply {
  /// Summary based on search results.
  GoogleCloudDiscoveryengineV1SearchResponseSummary? summary;

  GoogleCloudDiscoveryengineV1Reply({this.summary});

  GoogleCloudDiscoveryengineV1Reply.fromJson(core.Map json_)
    : this(
        summary:
            json_.containsKey('summary')
                ? GoogleCloudDiscoveryengineV1SearchResponseSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (summary != null) 'summary': summary!,
  };
}

/// Safety rating corresponding to the generated content.
typedef GoogleCloudDiscoveryengineV1SafetyRating = $SafetyRating01;

/// Defines the structure and layout of a type of document data.
typedef GoogleCloudDiscoveryengineV1Schema = $Schema;

/// Detailed search information.
typedef GoogleCloudDiscoveryengineV1SearchInfo = $SearchInfo;

/// Promotion proto includes uri and other helping information to display the
/// promotion.
typedef GoogleCloudDiscoveryengineV1SearchLinkPromotion = $SearchLinkPromotion;

/// Request message for SearchService.Search method.
class GoogleCloudDiscoveryengineV1SearchRequest {
  /// Boost specification to boost certain documents.
  ///
  /// For more information on boosting, see
  /// [Boosting](https://cloud.google.com/generative-ai-app-builder/docs/boost-search-results)
  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec? boostSpec;

  /// The branch resource name, such as `projects / *
  /// /locations/global/collections/default_collection/dataStores/default_data_store/branches/0`.
  ///
  /// Use `default_branch` as the branch ID or leave this field empty, to search
  /// documents under the default branch.
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

  /// A specification for configuring the behavior of content search.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec? contentSearchSpec;

  /// Specifications that define the specific DataStores to be searched, along
  /// with configurations for those data stores.
  ///
  /// This is only considered for Engines with multiple data stores. For engines
  /// with a single data store, the specs directly under SearchRequest should be
  /// used.
  core.List<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>?
  dataStoreSpecs;

  /// Config for display feature, like match highlighting on search results.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec? displaySpec;

  /// Facet specifications for faceted search.
  ///
  /// If empty, no facets are returned. A maximum of 100 values are allowed.
  /// Otherwise, an `INVALID_ARGUMENT` error is returned.
  core.List<GoogleCloudDiscoveryengineV1SearchRequestFacetSpec>? facetSpecs;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the documents being filtered.
  ///
  /// Filter expression is case-sensitive. If this field is unrecognizable, an
  /// `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by
  /// mapping the LHS filter key to a key property defined in the Vertex AI
  /// Search backend -- this mapping is defined by the customer in their schema.
  /// For example a media customer might have a field 'name' in their schema. In
  /// this case the filter would look like this: filter --\> name:'ANY("king
  /// kong")' For more information about filtering including syntax and filter
  /// operators, see
  /// [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  core.String? filter;

  /// Raw image query.
  GoogleCloudDiscoveryengineV1SearchRequestImageQuery? imageQuery;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// [Standard fields](https://cloud.google.com/apis/design/standard_fields).
  /// This field helps to better interpret the query. If a value isn't
  /// specified, the query language code is automatically detected, which may
  /// not be accurate.
  core.String? languageCode;

  /// A 0-indexed integer that specifies the current offset (that is, starting
  /// result location, amongst the Documents deemed by the API as relevant) in
  /// search results.
  ///
  /// This field is only considered if page_token is unset. If this field is
  /// negative, an `INVALID_ARGUMENT` is returned.
  core.int? offset;

  /// The maximum number of results to return for OneBox.
  ///
  /// This applies to each OneBox type individually. Default number is 10.
  core.int? oneBoxPageSize;

  /// The order in which documents are returned.
  ///
  /// Documents can be ordered by a field in an Document object. Leave it unset
  /// if ordered by relevance. `order_by` expression is case-sensitive. For more
  /// information on ordering the website search results, see
  /// [Order web search results](https://cloud.google.com/generative-ai-app-builder/docs/order-web-search-results).
  /// For more information on ordering the healthcare search results, see
  /// [Order healthcare search results](https://cloud.google.com/generative-ai-app-builder/docs/order-hc-results).
  /// If this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
  core.String? orderBy;

  /// Maximum number of Documents to return.
  ///
  /// The maximum allowed value depends on the data type. Values above the
  /// maximum value are coerced to the maximum value. * Websites with basic
  /// indexing: Default `10`, Maximum `25`. * Websites with advanced indexing:
  /// Default `25`, Maximum `50`. * Other: Default `50`, Maximum `100`. If this
  /// field is negative, an `INVALID_ARGUMENT` is returned.
  core.int? pageSize;

  /// A page token received from a previous SearchService.Search call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to SearchService.Search must match the call that
  /// provided the page token. Otherwise, an `INVALID_ARGUMENT` error is
  /// returned.
  core.String? pageToken;

  /// Additional search parameters.
  ///
  /// For public website search only, supported values are: *
  /// `user_country_code`: string. Default empty. If set to non-empty, results
  /// are restricted or boosted based on the location provided. For example,
  /// `user_country_code: "au"` For available codes see
  /// [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes)
  /// * `search_type`: double. Default empty. Enables non-webpage searching
  /// depending on the value. The only valid non-default value is 1, which
  /// enables image searching. For example, `search_type: 1`
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Raw search query.
  core.String? query;

  /// The query expansion specification that specifies the conditions under
  /// which query expansion occurs.
  GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec?
  queryExpansionSpec;

  /// The specification for returning the relevance score.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec?
  relevanceScoreSpec;

  /// The relevance threshold of the search results.
  ///
  /// Default to Google defined threshold, leveraging a balance of precision and
  /// recall to deliver both highly accurate results and comprehensive coverage
  /// of relevant information. This feature is not supported for healthcare
  /// search.
  /// Possible string values are:
  /// - "RELEVANCE_THRESHOLD_UNSPECIFIED" : Default value. In this case, server
  /// behavior defaults to Google defined threshold.
  /// - "LOWEST" : Lowest relevance threshold.
  /// - "LOW" : Low relevance threshold.
  /// - "MEDIUM" : Medium relevance threshold.
  /// - "HIGH" : High relevance threshold.
  core.String? relevanceThreshold;

  /// Whether to turn on safe search.
  ///
  /// This is only supported for website search.
  core.bool? safeSearch;

  /// Search as you type configuration.
  ///
  /// Only supported for the IndustryVertical.MEDIA vertical.
  GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec?
  searchAsYouTypeSpec;

  /// The session resource name.
  ///
  /// Optional. Session allows users to do multi-turn /search API calls or
  /// coordination between /search API calls and /answer API calls. Example #1
  /// (multi-turn /search API calls): Call /search API with the session ID
  /// generated in the first call. Here, the previous search query gets
  /// considered in query standing. I.e., if the first query is "How did
  /// Alphabet do in 2022?" and the current query is "How about 2023?", the
  /// current query will be interpreted as "How did Alphabet do in 2023?".
  /// Example #2 (coordination between /search API calls and /answer API calls):
  /// Call /answer API with the session ID generated in the first call. Here,
  /// the answer generation happens in the context of the search results from
  /// the first search call. Multi-turn Search feature is currently at private
  /// GA stage. Please use v1alpha or v1beta version instead before we launch
  /// this feature to public GA. Or ask for allowlisting through Google Support
  /// team.
  core.String? session;

  /// Session specification.
  ///
  /// Can be used only when `session` is set.
  GoogleCloudDiscoveryengineV1SearchRequestSessionSpec? sessionSpec;

  /// The spell correction specification that specifies the mode under which
  /// spell correction takes effect.
  GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec?
  spellCorrectionSpec;

  /// Information about the end user.
  ///
  /// Highly recommended for analytics and personalization. UserInfo.user_agent
  /// is used to deduce `device_type` for analytics.
  GoogleCloudDiscoveryengineV1UserInfo? userInfo;

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
  core.Map<core.String, core.String>? userLabels;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This field should NOT have a fixed value such as `unknown_visitor`. This
  /// should be the same identifier as UserEvent.user_pseudo_id and
  /// CompleteQueryRequest.user_pseudo_id The field must be a UTF-8 encoded
  /// string with a length limit of 128 characters. Otherwise, an
  /// `INVALID_ARGUMENT` error is returned.
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1SearchRequest({
    this.boostSpec,
    this.branch,
    this.canonicalFilter,
    this.contentSearchSpec,
    this.dataStoreSpecs,
    this.displaySpec,
    this.facetSpecs,
    this.filter,
    this.imageQuery,
    this.languageCode,
    this.offset,
    this.oneBoxPageSize,
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.params,
    this.query,
    this.queryExpansionSpec,
    this.relevanceScoreSpec,
    this.relevanceThreshold,
    this.safeSearch,
    this.searchAsYouTypeSpec,
    this.session,
    this.sessionSpec,
    this.spellCorrectionSpec,
    this.userInfo,
    this.userLabels,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1SearchRequest.fromJson(core.Map json_)
    : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        branch: json_['branch'] as core.String?,
        canonicalFilter: json_['canonicalFilter'] as core.String?,
        contentSearchSpec:
            json_.containsKey('contentSearchSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec.fromJson(
                  json_['contentSearchSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataStoreSpecs:
            (json_['dataStoreSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        displaySpec:
            json_.containsKey('displaySpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec.fromJson(
                  json_['displaySpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        facetSpecs:
            (json_['facetSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestFacetSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        filter: json_['filter'] as core.String?,
        imageQuery:
            json_.containsKey('imageQuery')
                ? GoogleCloudDiscoveryengineV1SearchRequestImageQuery.fromJson(
                  json_['imageQuery'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        offset: json_['offset'] as core.int?,
        oneBoxPageSize: json_['oneBoxPageSize'] as core.int?,
        orderBy: json_['orderBy'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        params:
            json_.containsKey('params')
                ? json_['params'] as core.Map<core.String, core.dynamic>
                : null,
        query: json_['query'] as core.String?,
        queryExpansionSpec:
            json_.containsKey('queryExpansionSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec.fromJson(
                  json_['queryExpansionSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relevanceScoreSpec:
            json_.containsKey('relevanceScoreSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec.fromJson(
                  json_['relevanceScoreSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relevanceThreshold: json_['relevanceThreshold'] as core.String?,
        safeSearch: json_['safeSearch'] as core.bool?,
        searchAsYouTypeSpec:
            json_.containsKey('searchAsYouTypeSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec.fromJson(
                  json_['searchAsYouTypeSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        session: json_['session'] as core.String?,
        sessionSpec:
            json_.containsKey('sessionSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestSessionSpec.fromJson(
                  json_['sessionSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spellCorrectionSpec:
            json_.containsKey('spellCorrectionSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec.fromJson(
                  json_['spellCorrectionSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudDiscoveryengineV1UserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (branch != null) 'branch': branch!,
    if (canonicalFilter != null) 'canonicalFilter': canonicalFilter!,
    if (contentSearchSpec != null) 'contentSearchSpec': contentSearchSpec!,
    if (dataStoreSpecs != null) 'dataStoreSpecs': dataStoreSpecs!,
    if (displaySpec != null) 'displaySpec': displaySpec!,
    if (facetSpecs != null) 'facetSpecs': facetSpecs!,
    if (filter != null) 'filter': filter!,
    if (imageQuery != null) 'imageQuery': imageQuery!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (offset != null) 'offset': offset!,
    if (oneBoxPageSize != null) 'oneBoxPageSize': oneBoxPageSize!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (params != null) 'params': params!,
    if (query != null) 'query': query!,
    if (queryExpansionSpec != null) 'queryExpansionSpec': queryExpansionSpec!,
    if (relevanceScoreSpec != null) 'relevanceScoreSpec': relevanceScoreSpec!,
    if (relevanceThreshold != null) 'relevanceThreshold': relevanceThreshold!,
    if (safeSearch != null) 'safeSearch': safeSearch!,
    if (searchAsYouTypeSpec != null)
      'searchAsYouTypeSpec': searchAsYouTypeSpec!,
    if (session != null) 'session': session!,
    if (sessionSpec != null) 'sessionSpec': sessionSpec!,
    if (spellCorrectionSpec != null)
      'spellCorrectionSpec': spellCorrectionSpec!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (userLabels != null) 'userLabels': userLabels!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Boost specification to boost certain documents.
class GoogleCloudDiscoveryengineV1SearchRequestBoostSpec {
  /// Condition boost specifications.
  ///
  /// If a document matches multiple conditions in the specifications, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  core.List<
    GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec
  >?
  conditionBoostSpecs;

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec({
    this.conditionBoostSpecs,
  });

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.fromJson(core.Map json_)
    : this(
        conditionBoostSpecs:
            (json_['conditionBoostSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditionBoostSpecs != null)
      'conditionBoostSpecs': conditionBoostSpecs!,
  };
}

/// Boost applies to documents which match a condition.
class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec {
  /// Strength of the condition boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the
  /// document a big promotion. However, it does not necessarily mean that the
  /// boosted document will be the top result at all times, nor that other
  /// documents will be excluded. Results could still be shown even when none of
  /// them matches the condition. And results that are significantly more
  /// relevant to the search query can still trump your heavily favored but
  /// irrelevant documents. Setting to -1.0 gives the document a big demotion.
  /// However, results that are deeply relevant might still be shown. The
  /// document will have an upstream battle to get a fairly high ranking, but it
  /// is not blocked out completely. Setting to 0.0 means no boost applied. The
  /// boosting condition is ignored. Only one of the (condition, boost)
  /// combination or the boost_control_spec below are set. If both are set then
  /// the global boost is ignored and the more fine-grained boost_control_spec
  /// is applied.
  core.double? boost;

  /// Complex specification for custom ranking based on customer defined
  /// attribute value.
  GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec?
  boostControlSpec;

  /// An expression which specifies a boost condition.
  ///
  /// The syntax and supported fields are the same as a filter expression. See
  /// SearchRequest.filter for detail syntax and limitations. Examples: * To
  /// boost documents with document ID "doc_1" or "doc_2", and color "Red" or
  /// "Blue": `(document_id: ANY("doc_1", "doc_2")) AND (color: ANY("Red",
  /// "Blue"))`
  core.String? condition;

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    this.condition,
  });

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec.fromJson(
    core.Map json_,
  ) : this(
        boost: (json_['boost'] as core.num?)?.toDouble(),
        boostControlSpec:
            json_.containsKey('boostControlSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
                  json_['boostControlSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        condition: json_['condition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boost != null) 'boost': boost!,
    if (boostControlSpec != null) 'boostControlSpec': boostControlSpec!,
    if (condition != null) 'condition': condition!,
  };
}

/// Specification for custom ranking based on customer specified attribute
/// value.
///
/// It provides more controls for customized ranking than the simple (condition,
/// boost) combination above.
class GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec {
  /// The attribute type to be used to determine the boost amount.
  ///
  /// The attribute value can be derived from the field value of the specified
  /// field_name. In the case of numerical it is straightforward i.e.
  /// attribute_value = numerical_field_value. In the case of freshness however,
  /// attribute_value = (time.now() - datetime_field_value).
  /// Possible string values are:
  /// - "ATTRIBUTE_TYPE_UNSPECIFIED" : Unspecified AttributeType.
  /// - "NUMERICAL" : The value of the numerical field will be used to
  /// dynamically update the boost amount. In this case, the attribute_value
  /// (the x value) of the control point will be the actual value of the
  /// numerical field for which the boost_amount is specified.
  /// - "FRESHNESS" : For the freshness use case the attribute value will be the
  /// duration between the current time and the date in the datetime field
  /// specified. The value must be formatted as an XSD `dayTimeDuration` value
  /// (a restricted subset of an ISO 8601 duration value). The pattern for this
  /// is: `nDnM]`. For example, `5D`, `3DT12H30M`, `T24H`.
  core.String? attributeType;

  /// The control points used to define the curve.
  ///
  /// The monotonic function (defined through the interpolation_type above)
  /// passes through the control points listed here.
  core.List<
    GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
  >?
  controlPoints;

  /// The name of the field whose value will be used to determine the boost
  /// amount.
  core.String? fieldName;

  /// The interpolation type to be applied to connect the control points listed
  /// below.
  /// Possible string values are:
  /// - "INTERPOLATION_TYPE_UNSPECIFIED" : Interpolation type is unspecified. In
  /// this case, it defaults to Linear.
  /// - "LINEAR" : Piecewise linear interpolation will be applied.
  core.String? interpolationType;

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec.fromJson(
    core.Map json_,
  ) : this(
        attributeType: json_['attributeType'] as core.String?,
        controlPoints:
            (json_['controlPoints'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fieldName: json_['fieldName'] as core.String?,
        interpolationType: json_['interpolationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributeType != null) 'attributeType': attributeType!,
    if (controlPoints != null) 'controlPoints': controlPoints!,
    if (fieldName != null) 'fieldName': fieldName!,
    if (interpolationType != null) 'interpolationType': interpolationType!,
  };
}

/// The control points used to define the curve.
///
/// The curve defined through these control points can only be monotonically
/// increasing or decreasing(constant values are acceptable).
typedef GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint =
    $SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint;

/// A specification for configuring the behavior of content search.
class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec {
  /// Specifies the chunk spec to be returned from the search response.
  ///
  /// Only available if the SearchRequest.ContentSearchSpec.search_result_mode
  /// is set to CHUNKS
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec?
  chunkSpec;

  /// If there is no extractive_content_spec provided, there will be no
  /// extractive answer in the search response.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec?
  extractiveContentSpec;

  /// Specifies the search result mode.
  ///
  /// If unspecified, the search result mode defaults to `DOCUMENTS`.
  /// Possible string values are:
  /// - "SEARCH_RESULT_MODE_UNSPECIFIED" : Default value.
  /// - "DOCUMENTS" : Returns documents in the search result.
  /// - "CHUNKS" : Returns chunks in the search result. Only available if the
  /// DocumentProcessingConfig.chunking_config is specified.
  core.String? searchResultMode;

  /// If `snippetSpec` is not specified, snippets are not included in the search
  /// response.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec?
  snippetSpec;

  /// If `summarySpec` is not specified, summaries are not included in the
  /// search response.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec?
  summarySpec;

  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec({
    this.chunkSpec,
    this.extractiveContentSpec,
    this.searchResultMode,
    this.snippetSpec,
    this.summarySpec,
  });

  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec.fromJson(
    core.Map json_,
  ) : this(
        chunkSpec:
            json_.containsKey('chunkSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec.fromJson(
                  json_['chunkSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        extractiveContentSpec:
            json_.containsKey('extractiveContentSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec.fromJson(
                  json_['extractiveContentSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        searchResultMode: json_['searchResultMode'] as core.String?,
        snippetSpec:
            json_.containsKey('snippetSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec.fromJson(
                  json_['snippetSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        summarySpec:
            json_.containsKey('summarySpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec.fromJson(
                  json_['summarySpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkSpec != null) 'chunkSpec': chunkSpec!,
    if (extractiveContentSpec != null)
      'extractiveContentSpec': extractiveContentSpec!,
    if (searchResultMode != null) 'searchResultMode': searchResultMode!,
    if (snippetSpec != null) 'snippetSpec': snippetSpec!,
    if (summarySpec != null) 'summarySpec': summarySpec!,
  };
}

/// Specifies the chunk spec to be returned from the search response.
///
/// Only available if the SearchRequest.ContentSearchSpec.search_result_mode is
/// set to CHUNKS
typedef GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec =
    $SearchRequestContentSearchSpecChunkSpec;

/// A specification for configuring the extractive content in a search response.
typedef GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec =
    $SearchRequestContentSearchSpecExtractiveContentSpec;

/// A specification for configuring snippets in a search response.
typedef GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec =
    $SearchRequestContentSearchSpecSnippetSpec;

/// A specification for configuring a summary returned in a search response.
class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec {
  /// Specifies whether to filter out adversarial queries.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect adversarial queries. No summary is returned if the search query
  /// is classified as an adversarial query. For example, a user might ask a
  /// question regarding negative comments about the company or submit a query
  /// designed to generate unsafe, policy-violating output. If this field is set
  /// to `true`, we skip generating summaries for adversarial queries and return
  /// fallback messages instead.
  core.bool? ignoreAdversarialQuery;

  /// Specifies whether to filter out jail-breaking queries.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect jail-breaking queries. No summary is returned if the search
  /// query is classified as a jail-breaking query. A user might add
  /// instructions to the query to change the tone, style, language, content of
  /// the answer, or ask the model to act as a different entity, e.g. "Reply in
  /// the tone of a competing company's CEO". If this field is set to `true`, we
  /// skip generating summaries for jail-breaking queries and return fallback
  /// messages instead.
  ///
  /// Optional.
  core.bool? ignoreJailBreakingQuery;

  /// Specifies whether to filter out queries that have low relevance.
  ///
  /// The default value is `false`. If this field is set to `false`, all search
  /// results are used regardless of relevance to generate answers. If set to
  /// `true`, only queries with high relevance search results will generate
  /// answers.
  core.bool? ignoreLowRelevantContent;

  /// Specifies whether to filter out queries that are not summary-seeking.
  ///
  /// The default value is `false`. Google employs search-query classification
  /// to detect summary-seeking queries. No summary is returned if the search
  /// query is classified as a non-summary seeking query. For example, `why is
  /// the sky blue` and `Who is the best soccer player in the world?` are
  /// summary-seeking queries, but `SFO airport` and `world cup 2026` are not.
  /// They are most likely navigational queries. If this field is set to `true`,
  /// we skip generating summaries for non-summary seeking queries and return
  /// fallback messages instead.
  core.bool? ignoreNonSummarySeekingQuery;

  /// Specifies whether to include citations in the summary.
  ///
  /// The default value is `false`. When this field is set to `true`, summaries
  /// include in-line citation numbers. Example summary including citations:
  /// BigQuery is Google Cloud's fully managed and completely serverless
  /// enterprise data warehouse \[1\]. BigQuery supports all data types, works
  /// across clouds, and has built-in machine learning and business
  /// intelligence, all within a unified platform \[2, 3\]. The citation numbers
  /// refer to the returned search results and are 1-indexed. For example, \[1\]
  /// means that the sentence is attributed to the first search result. \[2, 3\]
  /// means that the sentence is attributed to both the second and third search
  /// results.
  core.bool? includeCitations;

  /// Language code for Summary.
  ///
  /// Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This is an
  /// experimental feature.
  core.String? languageCode;

  /// If specified, the spec will be used to modify the prompt provided to the
  /// LLM.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec?
  modelPromptSpec;

  /// If specified, the spec will be used to modify the model specification
  /// provided to the LLM.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec?
  modelSpec;

  /// The number of top results to generate the summary from.
  ///
  /// If the number of results returned is less than `summaryResultCount`, the
  /// summary is generated from all of the results. At most 10 results for
  /// documents mode, or 50 for chunks mode, can be used to generate a summary.
  /// The chunks mode is used when
  /// SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS.
  core.int? summaryResultCount;

  /// If true, answer will be generated from most relevant chunks from top
  /// search results.
  ///
  /// This feature will improve summary quality. Note that with this feature
  /// enabled, not all top search results will be referenced and included in the
  /// reference list, so the citation source index only points to the search
  /// results listed in the reference list.
  core.bool? useSemanticChunks;

  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec({
    this.ignoreAdversarialQuery,
    this.ignoreJailBreakingQuery,
    this.ignoreLowRelevantContent,
    this.ignoreNonSummarySeekingQuery,
    this.includeCitations,
    this.languageCode,
    this.modelPromptSpec,
    this.modelSpec,
    this.summaryResultCount,
    this.useSemanticChunks,
  });

  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec.fromJson(
    core.Map json_,
  ) : this(
        ignoreAdversarialQuery: json_['ignoreAdversarialQuery'] as core.bool?,
        ignoreJailBreakingQuery: json_['ignoreJailBreakingQuery'] as core.bool?,
        ignoreLowRelevantContent:
            json_['ignoreLowRelevantContent'] as core.bool?,
        ignoreNonSummarySeekingQuery:
            json_['ignoreNonSummarySeekingQuery'] as core.bool?,
        includeCitations: json_['includeCitations'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        modelPromptSpec:
            json_.containsKey('modelPromptSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec.fromJson(
                  json_['modelPromptSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelSpec:
            json_.containsKey('modelSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec.fromJson(
                  json_['modelSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        summaryResultCount: json_['summaryResultCount'] as core.int?,
        useSemanticChunks: json_['useSemanticChunks'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ignoreAdversarialQuery != null)
      'ignoreAdversarialQuery': ignoreAdversarialQuery!,
    if (ignoreJailBreakingQuery != null)
      'ignoreJailBreakingQuery': ignoreJailBreakingQuery!,
    if (ignoreLowRelevantContent != null)
      'ignoreLowRelevantContent': ignoreLowRelevantContent!,
    if (ignoreNonSummarySeekingQuery != null)
      'ignoreNonSummarySeekingQuery': ignoreNonSummarySeekingQuery!,
    if (includeCitations != null) 'includeCitations': includeCitations!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (modelPromptSpec != null) 'modelPromptSpec': modelPromptSpec!,
    if (modelSpec != null) 'modelSpec': modelSpec!,
    if (summaryResultCount != null) 'summaryResultCount': summaryResultCount!,
    if (useSemanticChunks != null) 'useSemanticChunks': useSemanticChunks!,
  };
}

/// Specification of the prompt to use with the model.
typedef GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec =
    $SearchRequestContentSearchSpecSummarySpecModelPromptSpec;

/// Specification of the model.
typedef GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec =
    $SearchRequestContentSearchSpecSummarySpecModelSpec;

/// A struct to define data stores to filter on in a search call and
/// configurations for those data stores.
///
/// Otherwise, an `INVALID_ARGUMENT` error is returned.
class GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec {
  /// Boost specification to boost certain documents.
  ///
  /// For more information on boosting, see
  /// [Boosting](https://cloud.google.com/generative-ai-app-builder/docs/boost-search-results)
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1SearchRequestBoostSpec? boostSpec;

  /// Custom search operators which if specified will be used to filter results
  /// from workspace data stores.
  ///
  /// For more information on custom search operators, see
  /// [SearchOperators](https://support.google.com/cloudsearch/answer/6172299).
  ///
  /// Optional.
  core.String? customSearchOperators;

  /// Full resource name of DataStore, such as
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  ///
  /// Required.
  core.String? dataStore;

  /// Filter specification to filter documents in the data store specified by
  /// data_store field.
  ///
  /// For more information on filtering, see
  /// [Filtering](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  ///
  /// Optional.
  core.String? filter;

  GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec({
    this.boostSpec,
    this.customSearchOperators,
    this.dataStore,
    this.filter,
  });

  GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.fromJson(
    core.Map json_,
  ) : this(
        boostSpec:
            json_.containsKey('boostSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestBoostSpec.fromJson(
                  json_['boostSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customSearchOperators: json_['customSearchOperators'] as core.String?,
        dataStore: json_['dataStore'] as core.String?,
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boostSpec != null) 'boostSpec': boostSpec!,
    if (customSearchOperators != null)
      'customSearchOperators': customSearchOperators!,
    if (dataStore != null) 'dataStore': dataStore!,
    if (filter != null) 'filter': filter!,
  };
}

/// Specifies features for display, like match highlighting.
typedef GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec =
    $SearchRequestDisplaySpec;

/// A facet specification to perform faceted search.
class GoogleCloudDiscoveryengineV1SearchRequestFacetSpec {
  /// Enables dynamic position for this facet.
  ///
  /// If set to true, the position of this facet among all facets in the
  /// response is determined automatically. If dynamic facets are enabled, it is
  /// ordered together. If set to false, the position of this facet in the
  /// response is the same as in the request, and it is ranked before the facets
  /// with dynamic position enable and all dynamic facets. For example, you may
  /// always want to have rating facet returned in the response, but it's not
  /// necessarily to always display the rating facet at the top. In that case,
  /// you can set enable_dynamic_position to true so that the position of rating
  /// facet in response is determined automatically. Another example, assuming
  /// you have the following facets in the request: * "rating",
  /// enable_dynamic_position = true * "price", enable_dynamic_position = false
  /// * "brands", enable_dynamic_position = false And also you have a dynamic
  /// facets enabled, which generates a facet `gender`. Then the final order of
  /// the facets in the response can be ("price", "brands", "rating", "gender")
  /// or ("price", "brands", "gender", "rating") depends on how API orders
  /// "gender" and "rating" facets. However, notice that "price" and "brands"
  /// are always ranked at first and second position because their
  /// enable_dynamic_position is false.
  core.bool? enableDynamicPosition;

  /// List of keys to exclude when faceting.
  ///
  /// By default, FacetKey.key is not excluded from the filter unless it is
  /// listed in this field. Listing a facet key in this field allows its values
  /// to appear as facet results, even when they are filtered out of search
  /// results. Using this field does not affect what search results are
  /// returned. For example, suppose there are 100 documents with the color
  /// facet "Red" and 200 documents with the color facet "Blue". A query
  /// containing the filter "color:ANY("Red")" and having "color" as
  /// FacetKey.key would by default return only "Red" documents in the search
  /// results, and also return "Red" with count 100 as the only color facet.
  /// Although there are also blue documents available, "Blue" would not be
  /// shown as an available facet value. If "color" is listed in
  /// "excludedFilterKeys", then the query returns the facet values "Red" with
  /// count 100 and "Blue" with count 200, because the "color" key is now
  /// excluded from the filter. Because this field doesn't affect search
  /// results, the search results are still correctly filtered to return only
  /// "Red" documents. A maximum of 100 values are allowed. Otherwise, an
  /// `INVALID_ARGUMENT` error is returned.
  core.List<core.String>? excludedFilterKeys;

  /// The facet key specification.
  ///
  /// Required.
  GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey? facetKey;

  /// Maximum facet values that are returned for this facet.
  ///
  /// If unspecified, defaults to 20. The maximum allowed value is 300. Values
  /// above 300 are coerced to 300. For aggregation in healthcare search, when
  /// the \[FacetKey.key\] is "healthcare_aggregation_key", the limit will be
  /// overridden to 10,000 internally, regardless of the value set here. If this
  /// field is negative, an `INVALID_ARGUMENT` is returned.
  core.int? limit;

  GoogleCloudDiscoveryengineV1SearchRequestFacetSpec({
    this.enableDynamicPosition,
    this.excludedFilterKeys,
    this.facetKey,
    this.limit,
  });

  GoogleCloudDiscoveryengineV1SearchRequestFacetSpec.fromJson(core.Map json_)
    : this(
        enableDynamicPosition: json_['enableDynamicPosition'] as core.bool?,
        excludedFilterKeys:
            (json_['excludedFilterKeys'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        facetKey:
            json_.containsKey('facetKey')
                ? GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey.fromJson(
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
class GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey {
  /// True to make facet keys case insensitive when getting faceting values with
  /// prefixes or contains; false otherwise.
  core.bool? caseInsensitive;

  /// Only get facet values that contain the given strings.
  ///
  /// For example, suppose "category" has three values "Action \> 2022", "Action
  /// \> 2021" and "Sci-Fi \> 2022". If set "contains" to "2022", the "category"
  /// facet only contains "Action \> 2022" and "Sci-Fi \> 2022". Only supported
  /// on textual fields. Maximum is 10.
  core.List<core.String>? contains;

  /// Set only if values should be bucketed into intervals.
  ///
  /// Must be set for facets with numerical values. Must not be set for facet
  /// with text values. Maximum number of intervals is 30.
  core.List<GoogleCloudDiscoveryengineV1Interval>? intervals;

  /// Supported textual and numerical facet keys in Document object, over which
  /// the facet values are computed.
  ///
  /// Facet key is case-sensitive.
  ///
  /// Required.
  core.String? key;

  /// The order in which documents are returned.
  ///
  /// Allowed values are: * "count desc", which means order by
  /// SearchResponse.Facet.values.count descending. * "value desc", which means
  /// order by SearchResponse.Facet.values.value descending. Only applies to
  /// textual facets. If not set, textual values are sorted in
  /// [natural order](https://en.wikipedia.org/wiki/Natural_sort_order);
  /// numerical intervals are sorted in the order given by
  /// FacetSpec.FacetKey.intervals.
  core.String? orderBy;

  /// Only get facet values that start with the given string prefix.
  ///
  /// For example, suppose "category" has three values "Action \> 2022", "Action
  /// \> 2021" and "Sci-Fi \> 2022". If set "prefixes" to "Action", the
  /// "category" facet only contains "Action \> 2022" and "Action \> 2021". Only
  /// supported on textual fields. Maximum is 10.
  core.List<core.String>? prefixes;

  /// Only get facet for the given restricted values.
  ///
  /// Only supported on textual fields. For example, suppose "category" has
  /// three values "Action \> 2022", "Action \> 2021" and "Sci-Fi \> 2022". If
  /// set "restricted_values" to "Action \> 2022", the "category" facet only
  /// contains "Action \> 2022". Only supported on textual fields. Maximum is
  /// 10.
  core.List<core.String>? restrictedValues;

  GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey({
    this.caseInsensitive,
    this.contains,
    this.intervals,
    this.key,
    this.orderBy,
    this.prefixes,
    this.restrictedValues,
  });

  GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey.fromJson(
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
                  (value) => GoogleCloudDiscoveryengineV1Interval.fromJson(
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
        restrictedValues:
            (json_['restrictedValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caseInsensitive != null) 'caseInsensitive': caseInsensitive!,
    if (contains != null) 'contains': contains!,
    if (intervals != null) 'intervals': intervals!,
    if (key != null) 'key': key!,
    if (orderBy != null) 'orderBy': orderBy!,
    if (prefixes != null) 'prefixes': prefixes!,
    if (restrictedValues != null) 'restrictedValues': restrictedValues!,
  };
}

/// Specifies the image query input.
typedef GoogleCloudDiscoveryengineV1SearchRequestImageQuery =
    $SearchRequestImageQuery;

/// Specification to determine under which conditions query expansion should
/// occur.
typedef GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec =
    $SearchRequestQueryExpansionSpec00;

/// The specification for returning the document relevance score.
typedef GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec =
    $SearchRequestRelevanceScoreSpec;

/// Specification for search as you type in search requests.
typedef GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec =
    $SearchRequestSearchAsYouTypeSpec;

/// Session specification.
///
/// Multi-turn Search feature is currently at private GA stage. Please use
/// v1alpha or v1beta version instead before we launch this feature to public
/// GA. Or ask for allowlisting through Google Support team.
typedef GoogleCloudDiscoveryengineV1SearchRequestSessionSpec =
    $SearchRequestSessionSpec;

/// The specification for query spell correction.
typedef GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec =
    $SearchRequestSpellCorrectionSpec00;

/// Response message for SearchService.Search method.
class GoogleCloudDiscoveryengineV1SearchResponse {
  /// A unique search token.
  ///
  /// This should be included in the UserEvent logs resulting from this search,
  /// which enables accurate attribution of search model performance. This also
  /// helps to identify a request during the customer support scenarios.
  core.String? attributionToken;

  /// Contains the spell corrected query, if found.
  ///
  /// If the spell correction type is AUTOMATIC, then the search results are
  /// based on corrected_query. Otherwise the original query is used for search.
  core.String? correctedQuery;

  /// Results of facets requested by user.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseFacet>? facets;

  /// A token that can be sent as SearchRequest.page_token to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Query expansion information for the returned results.
  GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo?
  queryExpansionInfo;

  /// The URI of a customer-defined redirect page.
  ///
  /// If redirect action is triggered, no search is performed, and only
  /// redirect_uri and attribution_token are set in the response.
  core.String? redirectUri;

  /// A list of matched documents.
  ///
  /// The order represents the ranking.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseSearchResult>? results;

  /// Promotions for site search.
  core.List<GoogleCloudDiscoveryengineV1SearchLinkPromotion>?
  searchLinkPromotions;

  /// Session information.
  ///
  /// Only set if SearchRequest.session is provided. See its description for
  /// more details.
  GoogleCloudDiscoveryengineV1SearchResponseSessionInfo? sessionInfo;

  /// A summary as part of the search results.
  ///
  /// This field is only returned if
  /// SearchRequest.ContentSearchSpec.summary_spec is set.
  GoogleCloudDiscoveryengineV1SearchResponseSummary? summary;

  /// The estimated total count of matched items irrespective of pagination.
  ///
  /// The count of results returned by pagination may be less than the
  /// total_size that matches.
  core.int? totalSize;

  GoogleCloudDiscoveryengineV1SearchResponse({
    this.attributionToken,
    this.correctedQuery,
    this.facets,
    this.nextPageToken,
    this.queryExpansionInfo,
    this.redirectUri,
    this.results,
    this.searchLinkPromotions,
    this.sessionInfo,
    this.summary,
    this.totalSize,
  });

  GoogleCloudDiscoveryengineV1SearchResponse.fromJson(core.Map json_)
    : this(
        attributionToken: json_['attributionToken'] as core.String?,
        correctedQuery: json_['correctedQuery'] as core.String?,
        facets:
            (json_['facets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseFacet.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        queryExpansionInfo:
            json_.containsKey('queryExpansionInfo')
                ? GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo.fromJson(
                  json_['queryExpansionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirectUri: json_['redirectUri'] as core.String?,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        searchLinkPromotions:
            (json_['searchLinkPromotions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchLinkPromotion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        sessionInfo:
            json_.containsKey('sessionInfo')
                ? GoogleCloudDiscoveryengineV1SearchResponseSessionInfo.fromJson(
                  json_['sessionInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        summary:
            json_.containsKey('summary')
                ? GoogleCloudDiscoveryengineV1SearchResponseSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (correctedQuery != null) 'correctedQuery': correctedQuery!,
    if (facets != null) 'facets': facets!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (queryExpansionInfo != null) 'queryExpansionInfo': queryExpansionInfo!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (results != null) 'results': results!,
    if (searchLinkPromotions != null)
      'searchLinkPromotions': searchLinkPromotions!,
    if (sessionInfo != null) 'sessionInfo': sessionInfo!,
    if (summary != null) 'summary': summary!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// A facet result.
class GoogleCloudDiscoveryengineV1SearchResponseFacet {
  /// Whether the facet is dynamically generated.
  core.bool? dynamicFacet;

  /// The key for this facet.
  ///
  /// For example, `"colors"` or `"price"`. It matches
  /// SearchRequest.FacetSpec.FacetKey.key.
  core.String? key;

  /// The facet values for this field.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue>? values;

  GoogleCloudDiscoveryengineV1SearchResponseFacet({
    this.dynamicFacet,
    this.key,
    this.values,
  });

  GoogleCloudDiscoveryengineV1SearchResponseFacet.fromJson(core.Map json_)
    : this(
        dynamicFacet: json_['dynamicFacet'] as core.bool?,
        key: json_['key'] as core.String?,
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue.fromJson(
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
class GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue {
  /// Number of items that have this facet value.
  core.String? count;

  /// Interval value for a facet, such as 10, 20) for facet "price".
  ///
  /// It matches \[SearchRequest.FacetSpec.FacetKey.intervals.
  GoogleCloudDiscoveryengineV1Interval? interval;

  /// Text value of a facet, such as "Black" for facet "colors".
  core.String? value;

  GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue({
    this.count,
    this.interval,
    this.value,
  });

  GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue.fromJson(
    core.Map json_,
  ) : this(
        count: json_['count'] as core.String?,
        interval:
            json_.containsKey('interval')
                ? GoogleCloudDiscoveryengineV1Interval.fromJson(
                  json_['interval'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (interval != null) 'interval': interval!,
    if (value != null) 'value': value!,
  };
}

/// Information describing query expansion including whether expansion has
/// occurred.
typedef GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo =
    $SearchResponseQueryExpansionInfo;

/// Represents the search results.
class GoogleCloudDiscoveryengineV1SearchResponseSearchResult {
  /// The chunk data in the search response if the
  /// SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS.
  GoogleCloudDiscoveryengineV1Chunk? chunk;

  /// The document data snippet in the search response.
  ///
  /// Only fields that are marked as `retrievable` are populated.
  GoogleCloudDiscoveryengineV1Document? document;

  /// Document.id of the searched Document.
  core.String? id;

  /// Google provided available scores.
  ///
  /// Output only.
  core.Map<core.String, GoogleCloudDiscoveryengineV1DoubleList>? modelScores;

  GoogleCloudDiscoveryengineV1SearchResponseSearchResult({
    this.chunk,
    this.document,
    this.id,
    this.modelScores,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSearchResult.fromJson(
    core.Map json_,
  ) : this(
        chunk:
            json_.containsKey('chunk')
                ? GoogleCloudDiscoveryengineV1Chunk.fromJson(
                  json_['chunk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        document:
            json_.containsKey('document')
                ? GoogleCloudDiscoveryengineV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        modelScores:
            (json_['modelScores'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDiscoveryengineV1DoubleList.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunk != null) 'chunk': chunk!,
    if (document != null) 'document': document!,
    if (id != null) 'id': id!,
    if (modelScores != null) 'modelScores': modelScores!,
  };
}

/// Information about the session.
typedef GoogleCloudDiscoveryengineV1SearchResponseSessionInfo =
    $SearchResponseSessionInfo;

/// Summary of the top N search results specified by the summary spec.
class GoogleCloudDiscoveryengineV1SearchResponseSummary {
  /// A collection of Safety Attribute categories and their associated
  /// confidence scores.
  GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes?
  safetyAttributes;

  /// Additional summary-skipped reasons.
  ///
  /// This provides the reason for ignored cases. If nothing is skipped, this
  /// field is not set.
  core.List<core.String>? summarySkippedReasons;

  /// The summary content.
  core.String? summaryText;

  /// Summary with metadata information.
  GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata?
  summaryWithMetadata;

  GoogleCloudDiscoveryengineV1SearchResponseSummary({
    this.safetyAttributes,
    this.summarySkippedReasons,
    this.summaryText,
    this.summaryWithMetadata,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummary.fromJson(core.Map json_)
    : this(
        safetyAttributes:
            json_.containsKey('safetyAttributes')
                ? GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes.fromJson(
                  json_['safetyAttributes']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        summarySkippedReasons:
            (json_['summarySkippedReasons'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        summaryText: json_['summaryText'] as core.String?,
        summaryWithMetadata:
            json_.containsKey('summaryWithMetadata')
                ? GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata.fromJson(
                  json_['summaryWithMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (safetyAttributes != null) 'safetyAttributes': safetyAttributes!,
    if (summarySkippedReasons != null)
      'summarySkippedReasons': summarySkippedReasons!,
    if (summaryText != null) 'summaryText': summaryText!,
    if (summaryWithMetadata != null)
      'summaryWithMetadata': summaryWithMetadata!,
  };
}

/// Citation info for a segment.
class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation {
  /// End of the attributed segment, exclusive.
  core.String? endIndex;

  /// Citation sources for the attributed segment.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource>?
  sources;

  /// Index indicates the start of the segment, measured in bytes/unicode.
  core.String? startIndex;

  GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation({
    this.endIndex,
    this.sources,
    this.startIndex,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation.fromJson(
    core.Map json_,
  ) : this(
        endIndex: json_['endIndex'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        startIndex: json_['startIndex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endIndex != null) 'endIndex': endIndex!,
    if (sources != null) 'sources': sources!,
    if (startIndex != null) 'startIndex': startIndex!,
  };
}

/// Citation metadata.
class GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata {
  /// Citations for segments.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation>?
  citations;

  GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata({
    this.citations,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata.fromJson(
    core.Map json_,
  ) : this(
        citations:
            (json_['citations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (citations != null) 'citations': citations!,
  };
}

/// Citation source.
typedef GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource =
    $SearchResponseSummaryCitationSource;

/// Document reference.
class GoogleCloudDiscoveryengineV1SearchResponseSummaryReference {
  /// List of cited chunk contents derived from document content.
  core.List<
    GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent
  >?
  chunkContents;

  /// Document.name of the document.
  ///
  /// Full resource name of the referenced document, in the format `projects / *
  /// /locations / * /collections / * /dataStores / * /branches / * /documents /
  /// * `.
  ///
  /// Required.
  core.String? document;

  /// Title of the document.
  core.String? title;

  /// Cloud Storage or HTTP uri for the document.
  core.String? uri;

  GoogleCloudDiscoveryengineV1SearchResponseSummaryReference({
    this.chunkContents,
    this.document,
    this.title,
    this.uri,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummaryReference.fromJson(
    core.Map json_,
  ) : this(
        chunkContents:
            (json_['chunkContents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        document: json_['document'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkContents != null) 'chunkContents': chunkContents!,
    if (document != null) 'document': document!,
    if (title != null) 'title': title!,
    if (uri != null) 'uri': uri!,
  };
}

/// Chunk content.
class GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent {
  /// Chunk textual content.
  core.String? content;

  /// Page identifier.
  core.String? pageIdentifier;

  GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent({
    this.content,
    this.pageIdentifier,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        pageIdentifier: json_['pageIdentifier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (pageIdentifier != null) 'pageIdentifier': pageIdentifier!,
  };
}

/// Safety Attribute categories and their associated confidence scores.
typedef GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes =
    $SearchResponseSummarySafetyAttributes;

/// Summary with metadata information.
class GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata {
  /// Citation metadata for given summary.
  GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata?
  citationMetadata;

  /// Document References.
  core.List<GoogleCloudDiscoveryengineV1SearchResponseSummaryReference>?
  references;

  /// Summary text with no citation information.
  core.String? summary;

  GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata({
    this.citationMetadata,
    this.references,
    this.summary,
  });

  GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata.fromJson(
    core.Map json_,
  ) : this(
        citationMetadata:
            json_.containsKey('citationMetadata')
                ? GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata.fromJson(
                  json_['citationMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        references:
            (json_['references'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchResponseSummaryReference.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (citationMetadata != null) 'citationMetadata': citationMetadata!,
    if (references != null) 'references': references!,
    if (summary != null) 'summary': summary!,
  };
}

/// Configures metadata that is used to generate serving time results (e.g.
/// search results or recommendation predictions).
///
/// The ServingConfig is passed in the search and predict request and generates
/// results.
class GoogleCloudDiscoveryengineV1ServingConfig {
  /// The specification for answer generation.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AnswerGenerationSpec? answerGenerationSpec;

  /// Boost controls to use in serving path.
  ///
  /// All triggered boost controls will be applied. Boost controls must be in
  /// the same data store as the serving config. Maximum of 20 boost controls.
  core.List<core.String>? boostControlIds;

  /// ServingConfig created timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The human readable serving config display name.
  ///
  /// Used in Discovery UI. This field must be a UTF-8 encoded string with a
  /// length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  ///
  /// Required.
  core.String? displayName;

  /// Condition do not associate specifications.
  ///
  /// If multiple do not associate conditions match, all matching do not
  /// associate controls in the list will execute. Order does not matter.
  /// Maximum number of specifications is 100. Can only be set if SolutionType
  /// is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? dissociateControlIds;

  /// How much diversity to use in recommendation model results e.g.
  /// `medium-diversity` or `high-diversity`.
  ///
  /// Currently supported values: * `no-diversity` * `low-diversity` *
  /// `medium-diversity` * `high-diversity` * `auto-diversity` If not specified,
  /// we choose default based on recommendation model type. Default value:
  /// `no-diversity`. Can only be set if SolutionType is
  /// SOLUTION_TYPE_RECOMMENDATION.
  core.String? diversityLevel;

  /// Filter controls to use in serving path.
  ///
  /// All triggered filter controls will be applied. Filter controls must be in
  /// the same data store as the serving config. Maximum of 20 filter controls.
  core.List<core.String>? filterControlIds;

  /// The GenericConfig of the serving configuration.
  GoogleCloudDiscoveryengineV1ServingConfigGenericConfig? genericConfig;

  /// Condition ignore specifications.
  ///
  /// If multiple ignore conditions match, all matching ignore controls in the
  /// list will execute. Order does not matter. Maximum number of specifications
  /// is 100.
  core.List<core.String>? ignoreControlIds;

  /// The MediaConfig of the serving configuration.
  GoogleCloudDiscoveryengineV1ServingConfigMediaConfig? mediaConfig;

  /// The id of the model to use at serving time.
  ///
  /// Currently only RecommendationModels are supported. Can be changed but only
  /// to a compatible model (e.g. others-you-may-like CTR to others-you-may-like
  /// CVR). Required when SolutionType is SOLUTION_TYPE_RECOMMENDATION.
  core.String? modelId;

  /// Fully qualified name
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
  ///
  /// Immutable.
  core.String? name;

  /// Condition oneway synonyms specifications.
  ///
  /// If multiple oneway synonyms conditions match, all matching oneway synonyms
  /// controls in the list will execute. Maximum number of specifications is
  /// 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? onewaySynonymsControlIds;

  /// Condition promote specifications.
  ///
  /// Maximum number of specifications is 100.
  core.List<core.String>? promoteControlIds;

  /// The ranking expression controls the customized ranking on retrieval
  /// documents.
  ///
  /// To leverage this, document embedding is required. The ranking expression
  /// setting in ServingConfig applies to all search requests served by the
  /// serving config. However, if `SearchRequest.ranking_expression` is
  /// specified, it overrides the ServingConfig ranking expression. The ranking
  /// expression is a single function or multiple functions that are joined by
  /// "+". * ranking_expression = function, { " + ", function }; Supported
  /// functions: * double * relevance_score * double *
  /// dotProduct(embedding_field_path) Function variables: * `relevance_score`:
  /// pre-defined keywords, used for measure relevance between query and
  /// document. * `embedding_field_path`: the document embedding field used with
  /// query embedding vector. * `dotProduct`: embedding function between
  /// embedding_field_path and query embedding vector. Example ranking
  /// expression: If document has an embedding field doc_embedding, the ranking
  /// expression could be `0.5 * relevance_score + 0.3 *
  /// dotProduct(doc_embedding)`.
  core.String? rankingExpression;

  /// IDs of the redirect controls.
  ///
  /// Only the first triggered redirect action is applied, even if multiple
  /// apply. Maximum number of specifications is 100. Can only be set if
  /// SolutionType is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? redirectControlIds;

  /// Condition replacement specifications.
  ///
  /// Applied according to the order in the list. A previously replaced term can
  /// not be re-replaced. Maximum number of specifications is 100. Can only be
  /// set if SolutionType is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? replacementControlIds;

  /// Specifies the solution type that a serving config can be associated with.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "SOLUTION_TYPE_UNSPECIFIED" : Default value.
  /// - "SOLUTION_TYPE_RECOMMENDATION" : Used for Recommendations AI.
  /// - "SOLUTION_TYPE_SEARCH" : Used for Discovery Search.
  /// - "SOLUTION_TYPE_CHAT" : Used for use cases related to the Generative AI
  /// agent.
  /// - "SOLUTION_TYPE_GENERATIVE_CHAT" : Used for use cases related to the
  /// Generative Chat agent. It's used for Generative chat engine only, the
  /// associated data stores must enrolled with `SOLUTION_TYPE_CHAT` solution.
  core.String? solutionType;

  /// Condition synonyms specifications.
  ///
  /// If multiple synonyms conditions match, all matching synonyms controls in
  /// the list will execute. Maximum number of specifications is 100. Can only
  /// be set if SolutionType is SOLUTION_TYPE_SEARCH.
  core.List<core.String>? synonymsControlIds;

  /// ServingConfig updated timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDiscoveryengineV1ServingConfig({
    this.answerGenerationSpec,
    this.boostControlIds,
    this.createTime,
    this.displayName,
    this.dissociateControlIds,
    this.diversityLevel,
    this.filterControlIds,
    this.genericConfig,
    this.ignoreControlIds,
    this.mediaConfig,
    this.modelId,
    this.name,
    this.onewaySynonymsControlIds,
    this.promoteControlIds,
    this.rankingExpression,
    this.redirectControlIds,
    this.replacementControlIds,
    this.solutionType,
    this.synonymsControlIds,
    this.updateTime,
  });

  GoogleCloudDiscoveryengineV1ServingConfig.fromJson(core.Map json_)
    : this(
        answerGenerationSpec:
            json_.containsKey('answerGenerationSpec')
                ? GoogleCloudDiscoveryengineV1AnswerGenerationSpec.fromJson(
                  json_['answerGenerationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        boostControlIds:
            (json_['boostControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        dissociateControlIds:
            (json_['dissociateControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        diversityLevel: json_['diversityLevel'] as core.String?,
        filterControlIds:
            (json_['filterControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        genericConfig:
            json_.containsKey('genericConfig')
                ? GoogleCloudDiscoveryengineV1ServingConfigGenericConfig.fromJson(
                  json_['genericConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ignoreControlIds:
            (json_['ignoreControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mediaConfig:
            json_.containsKey('mediaConfig')
                ? GoogleCloudDiscoveryengineV1ServingConfigMediaConfig.fromJson(
                  json_['mediaConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelId: json_['modelId'] as core.String?,
        name: json_['name'] as core.String?,
        onewaySynonymsControlIds:
            (json_['onewaySynonymsControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        promoteControlIds:
            (json_['promoteControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        rankingExpression: json_['rankingExpression'] as core.String?,
        redirectControlIds:
            (json_['redirectControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        replacementControlIds:
            (json_['replacementControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        solutionType: json_['solutionType'] as core.String?,
        synonymsControlIds:
            (json_['synonymsControlIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answerGenerationSpec != null)
      'answerGenerationSpec': answerGenerationSpec!,
    if (boostControlIds != null) 'boostControlIds': boostControlIds!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (dissociateControlIds != null)
      'dissociateControlIds': dissociateControlIds!,
    if (diversityLevel != null) 'diversityLevel': diversityLevel!,
    if (filterControlIds != null) 'filterControlIds': filterControlIds!,
    if (genericConfig != null) 'genericConfig': genericConfig!,
    if (ignoreControlIds != null) 'ignoreControlIds': ignoreControlIds!,
    if (mediaConfig != null) 'mediaConfig': mediaConfig!,
    if (modelId != null) 'modelId': modelId!,
    if (name != null) 'name': name!,
    if (onewaySynonymsControlIds != null)
      'onewaySynonymsControlIds': onewaySynonymsControlIds!,
    if (promoteControlIds != null) 'promoteControlIds': promoteControlIds!,
    if (rankingExpression != null) 'rankingExpression': rankingExpression!,
    if (redirectControlIds != null) 'redirectControlIds': redirectControlIds!,
    if (replacementControlIds != null)
      'replacementControlIds': replacementControlIds!,
    if (solutionType != null) 'solutionType': solutionType!,
    if (synonymsControlIds != null) 'synonymsControlIds': synonymsControlIds!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Specifies the configurations needed for Generic Discovery.Currently we
/// support: * `content_search_spec`: configuration for generic content search.
class GoogleCloudDiscoveryengineV1ServingConfigGenericConfig {
  /// Specifies the expected behavior of content search.
  ///
  /// Only valid for content-search enabled data store.
  GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec? contentSearchSpec;

  GoogleCloudDiscoveryengineV1ServingConfigGenericConfig({
    this.contentSearchSpec,
  });

  GoogleCloudDiscoveryengineV1ServingConfigGenericConfig.fromJson(
    core.Map json_,
  ) : this(
        contentSearchSpec:
            json_.containsKey('contentSearchSpec')
                ? GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec.fromJson(
                  json_['contentSearchSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentSearchSpec != null) 'contentSearchSpec': contentSearchSpec!,
  };
}

/// Specifies the configurations needed for Media Discovery.
///
/// Currently we support: * `demote_content_watched`: Threshold for watched
/// content demotion. Customers can specify if using watched content demotion or
/// use viewed detail page. Using the content watched demotion, customers need
/// to specify the watched minutes or percentage exceeds the threshold, the
/// content will be demoted in the recommendation result. *
/// `promote_fresh_content`: cutoff days for fresh content promotion. Customers
/// can specify if using content freshness promotion. If the content was
/// published within the cutoff days, the content will be promoted in the
/// recommendation result. Can only be set if SolutionType is
/// SOLUTION_TYPE_RECOMMENDATION.
typedef GoogleCloudDiscoveryengineV1ServingConfigMediaConfig =
    $ServingConfigMediaConfig;

/// External session proto definition.
class GoogleCloudDiscoveryengineV1Session {
  /// The display name of the session.
  ///
  /// This field is used to identify the session in the UI. By default, the
  /// display name is the first turn query text in the session.
  ///
  /// Optional.
  core.String? displayName;

  /// The time the session finished.
  ///
  /// Output only.
  core.String? endTime;

  /// Whether the session is pinned, pinned session will be displayed on the top
  /// of the session list.
  ///
  /// Optional.
  core.bool? isPinned;

  /// Fully qualified name
  /// `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessions
  /// / * `
  ///
  /// Immutable.
  core.String? name;

  /// The time the session started.
  ///
  /// Output only.
  core.String? startTime;

  /// The state of the session.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unspecified.
  /// - "IN_PROGRESS" : The session is currently open.
  core.String? state;

  /// Turns.
  core.List<GoogleCloudDiscoveryengineV1SessionTurn>? turns;

  /// A unique identifier for tracking users.
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1Session({
    this.displayName,
    this.endTime,
    this.isPinned,
    this.name,
    this.startTime,
    this.state,
    this.turns,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1Session.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        isPinned: json_['isPinned'] as core.bool?,
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        turns:
            (json_['turns'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1SessionTurn.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (endTime != null) 'endTime': endTime!,
    if (isPinned != null) 'isPinned': isPinned!,
    if (name != null) 'name': name!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
    if (turns != null) 'turns': turns!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Represents a turn, including a query from the user and a answer from
/// service.
class GoogleCloudDiscoveryengineV1SessionTurn {
  /// The resource name of the answer to the user query.
  ///
  /// Only set if the answer generation (/answer API call) happened in this
  /// turn.
  ///
  /// Optional.
  core.String? answer;

  /// In ConversationalSearchService.GetSession API, if
  /// GetSessionRequest.include_answer_details is set to true, this field will
  /// be populated when getting answer query session.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1Answer? detailedAnswer;

  /// The user query.
  ///
  /// May not be set if this turn is merely regenerating an answer to a
  /// different turn
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1Query? query;

  /// Represents metadata related to the query config, for example LLM model and
  /// version used, model parameters (temperature, grounding parameters, etc.).
  ///
  /// The prefix "google." is reserved for Google-developed functionality.
  ///
  /// Optional.
  core.Map<core.String, core.String>? queryConfig;

  GoogleCloudDiscoveryengineV1SessionTurn({
    this.answer,
    this.detailedAnswer,
    this.query,
    this.queryConfig,
  });

  GoogleCloudDiscoveryengineV1SessionTurn.fromJson(core.Map json_)
    : this(
        answer: json_['answer'] as core.String?,
        detailedAnswer:
            json_.containsKey('detailedAnswer')
                ? GoogleCloudDiscoveryengineV1Answer.fromJson(
                  json_['detailedAnswer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? GoogleCloudDiscoveryengineV1Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryConfig: (json_['queryConfig']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (detailedAnswer != null) 'detailedAnswer': detailedAnswer!,
    if (query != null) 'query': query!,
    if (queryConfig != null) 'queryConfig': queryConfig!,
  };
}

/// Metadata for single-regional CMEKs.
typedef GoogleCloudDiscoveryengineV1SingleRegionKey = $SingleRegionKey;

/// SiteSearchEngine captures DataStore level site search persisting
/// configurations.
///
/// It is a singleton value per data store.
typedef GoogleCloudDiscoveryengineV1SiteSearchEngine = $SiteSearchEngine;

/// Verification information for target sites in advanced site search.
typedef GoogleCloudDiscoveryengineV1SiteVerificationInfo =
    $SiteVerificationInfo;

/// A sitemap for the SiteSearchEngine.
typedef GoogleCloudDiscoveryengineV1Sitemap = $Sitemap;

/// The Spanner source for importing data
typedef GoogleCloudDiscoveryengineV1SpannerSource = $SpannerSource;

/// Request for the AssistantService.StreamAssist method.
class GoogleCloudDiscoveryengineV1StreamAssistRequest {
  /// Specification of the generation configuration for the request.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec? generationSpec;

  /// Current user query.
  ///
  /// Empty query is only supported if `file_ids` are provided. In this case,
  /// the answer will be generated based on those context files.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1Query? query;

  /// The session to use for the request.
  ///
  /// If specified, the assistant has access to the session history, and the
  /// query and the answer are stored there. If `-` is specified as the session
  /// ID, or it is left empty, then a new session is created with an
  /// automatically generated ID. Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}`
  ///
  /// Optional.
  core.String? session;

  /// Specification of tools that are used to serve the request.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec? toolsSpec;

  /// Information about the user initiating the query.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1AssistUserMetadata? userMetadata;

  GoogleCloudDiscoveryengineV1StreamAssistRequest({
    this.generationSpec,
    this.query,
    this.session,
    this.toolsSpec,
    this.userMetadata,
  });

  GoogleCloudDiscoveryengineV1StreamAssistRequest.fromJson(core.Map json_)
    : this(
        generationSpec:
            json_.containsKey('generationSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec.fromJson(
                  json_['generationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? GoogleCloudDiscoveryengineV1Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        session: json_['session'] as core.String?,
        toolsSpec:
            json_.containsKey('toolsSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec.fromJson(
                  json_['toolsSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userMetadata:
            json_.containsKey('userMetadata')
                ? GoogleCloudDiscoveryengineV1AssistUserMetadata.fromJson(
                  json_['userMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generationSpec != null) 'generationSpec': generationSpec!,
    if (query != null) 'query': query!,
    if (session != null) 'session': session!,
    if (toolsSpec != null) 'toolsSpec': toolsSpec!,
    if (userMetadata != null) 'userMetadata': userMetadata!,
  };
}

/// Assistant generation specification for the request.
///
/// This allows to override the default generation configuration at the engine
/// level.
typedef GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec =
    $StreamAssistRequestGenerationSpec;

/// Specification of tools that are used to serve the request.
class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec {
  /// Specification of the image generation tool.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec?
  imageGenerationSpec;

  /// Specification of the Vertex AI Search tool.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec?
  vertexAiSearchSpec;

  /// Specification of the video generation tool.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec?
  videoGenerationSpec;

  /// Specification of the web grounding tool.
  ///
  /// If field is present, enables grounding with web search. Works only if
  /// Assistant.web_grounding_type is WEB_GROUNDING_TYPE_GOOGLE_SEARCH or
  /// WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH.
  ///
  /// Optional.
  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec?
  webGroundingSpec;

  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec({
    this.imageGenerationSpec,
    this.vertexAiSearchSpec,
    this.videoGenerationSpec,
    this.webGroundingSpec,
  });

  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec.fromJson(
    core.Map json_,
  ) : this(
        imageGenerationSpec:
            json_.containsKey('imageGenerationSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec.fromJson(
                  json_['imageGenerationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vertexAiSearchSpec:
            json_.containsKey('vertexAiSearchSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec.fromJson(
                  json_['vertexAiSearchSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        videoGenerationSpec:
            json_.containsKey('videoGenerationSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec.fromJson(
                  json_['videoGenerationSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        webGroundingSpec:
            json_.containsKey('webGroundingSpec')
                ? GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec.fromJson(
                  json_['webGroundingSpec']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageGenerationSpec != null)
      'imageGenerationSpec': imageGenerationSpec!,
    if (vertexAiSearchSpec != null) 'vertexAiSearchSpec': vertexAiSearchSpec!,
    if (videoGenerationSpec != null)
      'videoGenerationSpec': videoGenerationSpec!,
    if (webGroundingSpec != null) 'webGroundingSpec': webGroundingSpec!,
  };
}

/// Specification of the image generation tool.
typedef GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec =
    $Empty;

/// Specification of the Vertex AI Search tool.
class GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec {
  /// Specs defining DataStores to filter on in a search call and configurations
  /// for those data stores.
  ///
  /// This is only considered for Engines with multiple data stores.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>?
  dataStoreSpecs;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the documents being filtered.
  ///
  /// Filter expression is case-sensitive. If this field is unrecognizable, an
  /// `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by
  /// mapping the LHS filter key to a key property defined in the Vertex AI
  /// Search backend -- this mapping is defined by the customer in their schema.
  /// For example a media customer might have a field 'name' in their schema. In
  /// this case the filter would look like this: filter --\> name:'ANY("king
  /// kong")' For more information about filtering including syntax and filter
  /// operators, see
  /// [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  ///
  /// Optional.
  core.String? filter;

  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec({
    this.dataStoreSpecs,
    this.filter,
  });

  GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec.fromJson(
    core.Map json_,
  ) : this(
        dataStoreSpecs:
            (json_['dataStoreSpecs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataStoreSpecs != null) 'dataStoreSpecs': dataStoreSpecs!,
    if (filter != null) 'filter': filter!,
  };
}

/// Specification of the video generation tool.
typedef GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec =
    $Empty;

/// Specification of the web grounding tool.
typedef GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec =
    $Empty;

/// Response for the AssistantService.StreamAssist method.
class GoogleCloudDiscoveryengineV1StreamAssistResponse {
  /// Assist answer resource object containing parts of the assistant's final
  /// answer for the user's query.
  ///
  /// Not present if the current response doesn't add anything to previously
  /// sent AssistAnswer.replies. Observe AssistAnswer.state to see if more parts
  /// are to be expected. While the state is `IN_PROGRESS`, the
  /// AssistAnswer.replies field in each response will contain replies (reply
  /// fragments) to be appended to the ones received in previous responses.
  /// AssistAnswer.name won't be filled. If the state is `SUCCEEDED`, `FAILED`
  /// or `SKIPPED`, the response is the last response and AssistAnswer.name will
  /// have a value.
  GoogleCloudDiscoveryengineV1AssistAnswer? answer;

  /// A global unique ID that identifies the current pair of request and stream
  /// of responses.
  ///
  /// Used for feedback and support.
  core.String? assistToken;

  /// Session information.
  GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo? sessionInfo;

  GoogleCloudDiscoveryengineV1StreamAssistResponse({
    this.answer,
    this.assistToken,
    this.sessionInfo,
  });

  GoogleCloudDiscoveryengineV1StreamAssistResponse.fromJson(core.Map json_)
    : this(
        answer:
            json_.containsKey('answer')
                ? GoogleCloudDiscoveryengineV1AssistAnswer.fromJson(
                  json_['answer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        assistToken: json_['assistToken'] as core.String?,
        sessionInfo:
            json_.containsKey('sessionInfo')
                ? GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo.fromJson(
                  json_['sessionInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (answer != null) 'answer': answer!,
    if (assistToken != null) 'assistToken': assistToken!,
    if (sessionInfo != null) 'sessionInfo': sessionInfo!,
  };
}

/// Information about the session.
typedef GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo =
    $StreamAssistResponseSessionInfo;

/// Suggestion deny list entry identifying the phrase to block from suggestions
/// and the applied operation for the phrase.
typedef GoogleCloudDiscoveryengineV1SuggestionDenyListEntry =
    $SuggestionDenyListEntry;

/// A target site for the SiteSearchEngine.
class GoogleCloudDiscoveryengineV1TargetSite {
  /// If set to false, a uri_pattern is generated to include all pages whose
  /// address contains the provided_uri_pattern.
  ///
  /// If set to true, an uri_pattern is generated to try to be an exact match of
  /// the provided_uri_pattern or just the specific page if the
  /// provided_uri_pattern is a specific one. provided_uri_pattern is always
  /// normalized to generate the URI pattern to be used by the search engine.
  ///
  /// Immutable.
  core.bool? exactMatch;

  /// Failure reason.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1TargetSiteFailureReason? failureReason;

  /// This is system-generated based on the provided_uri_pattern.
  ///
  /// Output only.
  core.String? generatedUriPattern;

  /// Indexing status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INDEXING_STATUS_UNSPECIFIED" : Defaults to SUCCEEDED.
  /// - "PENDING" : The target site is in the update queue and will be picked up
  /// by indexing pipeline.
  /// - "FAILED" : The target site fails to be indexed.
  /// - "SUCCEEDED" : The target site has been indexed.
  /// - "DELETING" : The previously indexed target site has been marked to be
  /// deleted. This is a transitioning state which will resulted in either: 1.
  /// target site deleted if unindexing is successful; 2. state reverts to
  /// SUCCEEDED if the unindexing fails.
  /// - "CANCELLABLE" : The target site change is pending but cancellable.
  /// - "CANCELLED" : The target site change is cancelled.
  core.String? indexingStatus;

  /// The fully qualified resource name of the target site.
  ///
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`
  /// The `target_site_id` is system-generated.
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// The user provided URI pattern from which the `generated_uri_pattern` is
  /// generated.
  ///
  /// Required.
  core.String? providedUriPattern;

  /// Root domain of the provided_uri_pattern.
  ///
  /// Output only.
  core.String? rootDomainUri;

  /// Site ownership and validity verification status.
  ///
  /// Output only.
  GoogleCloudDiscoveryengineV1SiteVerificationInfo? siteVerificationInfo;

  /// The type of the target site, e.g., whether the site is to be included or
  /// excluded.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : This value is unused. In this case, server behavior
  /// defaults to Type.INCLUDE.
  /// - "INCLUDE" : Include the target site.
  /// - "EXCLUDE" : Exclude the target site.
  core.String? type;

  /// The target site's last updated time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDiscoveryengineV1TargetSite({
    this.exactMatch,
    this.failureReason,
    this.generatedUriPattern,
    this.indexingStatus,
    this.name,
    this.providedUriPattern,
    this.rootDomainUri,
    this.siteVerificationInfo,
    this.type,
    this.updateTime,
  });

  GoogleCloudDiscoveryengineV1TargetSite.fromJson(core.Map json_)
    : this(
        exactMatch: json_['exactMatch'] as core.bool?,
        failureReason:
            json_.containsKey('failureReason')
                ? GoogleCloudDiscoveryengineV1TargetSiteFailureReason.fromJson(
                  json_['failureReason'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        generatedUriPattern: json_['generatedUriPattern'] as core.String?,
        indexingStatus: json_['indexingStatus'] as core.String?,
        name: json_['name'] as core.String?,
        providedUriPattern: json_['providedUriPattern'] as core.String?,
        rootDomainUri: json_['rootDomainUri'] as core.String?,
        siteVerificationInfo:
            json_.containsKey('siteVerificationInfo')
                ? GoogleCloudDiscoveryengineV1SiteVerificationInfo.fromJson(
                  json_['siteVerificationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exactMatch != null) 'exactMatch': exactMatch!,
    if (failureReason != null) 'failureReason': failureReason!,
    if (generatedUriPattern != null)
      'generatedUriPattern': generatedUriPattern!,
    if (indexingStatus != null) 'indexingStatus': indexingStatus!,
    if (name != null) 'name': name!,
    if (providedUriPattern != null) 'providedUriPattern': providedUriPattern!,
    if (rootDomainUri != null) 'rootDomainUri': rootDomainUri!,
    if (siteVerificationInfo != null)
      'siteVerificationInfo': siteVerificationInfo!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Site search indexing failure reasons.
class GoogleCloudDiscoveryengineV1TargetSiteFailureReason {
  /// Failed due to insufficient quota.
  GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure? quotaFailure;

  GoogleCloudDiscoveryengineV1TargetSiteFailureReason({this.quotaFailure});

  GoogleCloudDiscoveryengineV1TargetSiteFailureReason.fromJson(core.Map json_)
    : this(
        quotaFailure:
            json_.containsKey('quotaFailure')
                ? GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure.fromJson(
                  json_['quotaFailure'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (quotaFailure != null) 'quotaFailure': quotaFailure!,
  };
}

/// Failed due to insufficient quota.
typedef GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure =
    $TargetSiteFailureReasonQuotaFailure;

/// Defines text input.
class GoogleCloudDiscoveryengineV1TextInput {
  /// Conversation context of the input.
  GoogleCloudDiscoveryengineV1ConversationContext? context;

  /// Text input.
  core.String? input;

  GoogleCloudDiscoveryengineV1TextInput({this.context, this.input});

  GoogleCloudDiscoveryengineV1TextInput.fromJson(core.Map json_)
    : this(
        context:
            json_.containsKey('context')
                ? GoogleCloudDiscoveryengineV1ConversationContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        input: json_['input'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (context != null) 'context': context!,
    if (input != null) 'input': input!,
  };
}

/// Request message for SearchTuningService.TrainCustomModel method.
class GoogleCloudDiscoveryengineV1TrainCustomModelRequest {
  /// The desired location of errors incurred during the data ingestion and
  /// training.
  GoogleCloudDiscoveryengineV1ImportErrorConfig? errorConfig;

  /// Cloud Storage training input.
  GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput?
  gcsTrainingInput;

  /// If not provided, a UUID will be generated.
  core.String? modelId;

  /// Model to be trained.
  ///
  /// Supported values are: * **search-tuning**: Fine tuning the search system
  /// based on data provided.
  core.String? modelType;

  GoogleCloudDiscoveryengineV1TrainCustomModelRequest({
    this.errorConfig,
    this.gcsTrainingInput,
    this.modelId,
    this.modelType,
  });

  GoogleCloudDiscoveryengineV1TrainCustomModelRequest.fromJson(core.Map json_)
    : this(
        errorConfig:
            json_.containsKey('errorConfig')
                ? GoogleCloudDiscoveryengineV1ImportErrorConfig.fromJson(
                  json_['errorConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsTrainingInput:
            json_.containsKey('gcsTrainingInput')
                ? GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput.fromJson(
                  json_['gcsTrainingInput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelId: json_['modelId'] as core.String?,
        modelType: json_['modelType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorConfig != null) 'errorConfig': errorConfig!,
    if (gcsTrainingInput != null) 'gcsTrainingInput': gcsTrainingInput!,
    if (modelId != null) 'modelId': modelId!,
    if (modelType != null) 'modelType': modelType!,
  };
}

/// Cloud Storage training data input.
typedef GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput =
    $TrainCustomModelRequestGcsTrainingInput;

/// A transaction represents the entire purchase transaction.
typedef GoogleCloudDiscoveryengineV1TransactionInfo = $TransactionInfo;

/// UserEvent captures all metadata information Discovery Engine API needs to
/// know about how end users interact with your website.
class GoogleCloudDiscoveryengineV1UserEvent {
  /// Extra user event features to include in the recommendation model.
  ///
  /// These attributes must NOT contain data that needs to be parsed or
  /// processed further, e.g. JSON or other encodings. If you provide custom
  /// attributes for ingested user events, also include them in the user events
  /// that you associate with prediction requests. Custom attribute formatting
  /// must be consistent between imported events and events provided with
  /// prediction requests. This lets the Discovery Engine API use those custom
  /// attributes when training models and serving predictions, which helps
  /// improve recommendation quality. This field needs to pass all below
  /// criteria, otherwise an `INVALID_ARGUMENT` error is returned: * The key
  /// must be a UTF-8 encoded string with a length limit of 5,000 characters. *
  /// For text attributes, at most 400 values are allowed. Empty values are not
  /// allowed. Each value must be a UTF-8 encoded string with a length limit of
  /// 256 characters. * For number attributes, at most 400 values are allowed.
  /// For product recommendations, an example of extra user information is
  /// `traffic_channel`, which is how a user arrives at the site. Users can
  /// arrive at the site by coming to the site directly, coming through Google
  /// search, or in other ways.
  core.Map<core.String, GoogleCloudDiscoveryengineV1CustomAttribute>?
  attributes;

  /// Token to attribute an API response to user action(s) to trigger the event.
  ///
  /// Highly recommended for user events that are the result of
  /// RecommendationService.Recommend. This field enables accurate attribution
  /// of recommendation model performance. The value must be one of: *
  /// RecommendResponse.attribution_token for events that are the result of
  /// RecommendationService.Recommend. * SearchResponse.attribution_token for
  /// events that are the result of SearchService.Search. This token enables us
  /// to accurately attribute page view or conversion completion back to the
  /// event and the particular predict response containing this
  /// clicked/purchased product. If user clicks on product K in the
  /// recommendation results, pass RecommendResponse.attribution_token as a URL
  /// parameter to product K's page. When recording events on product K's page,
  /// log the RecommendResponse.attribution_token to this field.
  core.String? attributionToken;

  /// CompletionService.CompleteQuery details related to the event.
  ///
  /// This field should be set for `search` event when autocomplete function is
  /// enabled and the user clicks a suggestion for search.
  GoogleCloudDiscoveryengineV1CompletionInfo? completionInfo;

  /// Conversion type.
  ///
  /// Required if UserEvent.event_type is `conversion`. This is a
  /// customer-defined conversion name in lowercase letters or numbers separated
  /// by "-", such as "watch", "good-visit" etc. Do not set the field if
  /// UserEvent.event_type is not `conversion`. This mixes the custom conversion
  /// event with predefined events like `search`, `view-item` etc.
  ///
  /// Optional.
  core.String? conversionType;

  /// The DataStore resource full name, of the form
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  ///
  /// Optional. Only required for user events whose data store can't by
  /// determined by UserEvent.engine or UserEvent.documents. If data store is
  /// set in the parent of write/import/collect user event requests, this field
  /// can be omitted.
  core.String? dataStore;

  /// Should set to true if the request is made directly from the end user, in
  /// which case the UserEvent.user_info.user_agent can be populated from the
  /// HTTP request.
  ///
  /// This flag should be set only if the API request is made directly from the
  /// end user such as a mobile app (and not if a gateway or a server is
  /// processing and pushing the user events). This should not be set when using
  /// the JavaScript tag in UserEventService.CollectUserEvent.
  core.bool? directUserRequest;

  /// List of Documents associated with this user event.
  ///
  /// This field is optional except for the following event types: * `view-item`
  /// * `add-to-cart` * `purchase` * `media-play` * `media-complete` In a
  /// `search` event, this field represents the documents returned to the end
  /// user on the current page (the end user may have not finished browsing the
  /// whole page yet). When a new page is returned to the end user, after
  /// pagination/filtering/ordering even for the same query, a new `search`
  /// event with different UserEvent.documents is desired.
  core.List<GoogleCloudDiscoveryengineV1DocumentInfo>? documents;

  /// The Engine resource name, in the form of
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  ///
  /// Optional. Only required for Engine produced user events. For example, user
  /// events from blended search.
  core.String? engine;

  /// Only required for UserEventService.ImportUserEvents method.
  ///
  /// Timestamp of when the user event happened.
  core.String? eventTime;

  /// User event type.
  ///
  /// Allowed values are: Generic values: * `search`: Search for Documents. *
  /// `view-item`: Detailed page view of a Document. * `view-item-list`: View of
  /// a panel or ordered list of Documents. * `view-home-page`: View of the home
  /// page. * `view-category-page`: View of a category page, e.g. Home \> Men \>
  /// Jeans * `add-feedback`: Add a user feedback. Retail-related values: *
  /// `add-to-cart`: Add an item(s) to cart, e.g. in Retail online shopping *
  /// `purchase`: Purchase an item(s) Media-related values: * `media-play`:
  /// Start/resume watching a video, playing a song, etc. * `media-complete`:
  /// Finished or stopped midway through a video, song, etc. Custom conversion
  /// value: * `conversion`: Customer defined conversion event.
  ///
  /// Required.
  core.String? eventType;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the documents being filtered.
  ///
  /// One example is for `search` events, the associated SearchRequest may
  /// contain a filter expression in SearchRequest.filter conforming to
  /// https://google.aip.dev/160#filtering. Similarly, for `view-item-list`
  /// events that are generated from a RecommendRequest, this field may be
  /// populated directly from RecommendRequest.filter conforming to
  /// https://google.aip.dev/160#filtering. The value must be a UTF-8 encoded
  /// string with a length limit of 1,000 characters. Otherwise, an
  /// `INVALID_ARGUMENT` error is returned.
  core.String? filter;

  /// Media-specific info.
  GoogleCloudDiscoveryengineV1MediaInfo? mediaInfo;

  /// Page metadata such as categories and other critical information for
  /// certain event types such as `view-category-page`.
  GoogleCloudDiscoveryengineV1PageInfo? pageInfo;

  /// Panel metadata associated with this user event.
  GoogleCloudDiscoveryengineV1PanelInfo? panel;

  /// List of panels associated with this event.
  ///
  /// Used for page-level impression data.
  ///
  /// Optional.
  core.List<GoogleCloudDiscoveryengineV1PanelInfo>? panels;

  /// The promotion IDs if this is an event associated with promotions.
  ///
  /// Currently, this field is restricted to at most one ID.
  core.List<core.String>? promotionIds;

  /// SearchService.Search details related to the event.
  ///
  /// This field should be set for `search` event.
  GoogleCloudDiscoveryengineV1SearchInfo? searchInfo;

  /// A unique identifier for tracking a visitor session with a length limit of
  /// 128 bytes.
  ///
  /// A session is an aggregation of an end user behavior in a time span. A
  /// general guideline to populate the session_id: 1. If user has no activity
  /// for 30 min, a new session_id should be assigned. 2. The session_id should
  /// be unique across users, suggest use uuid or add UserEvent.user_pseudo_id
  /// as prefix.
  core.String? sessionId;

  /// A list of identifiers for the independent experiment groups this user
  /// event belongs to.
  ///
  /// This is used to distinguish between user events associated with different
  /// experiment setups.
  core.List<core.String>? tagIds;

  /// The transaction metadata (if any) associated with this user event.
  GoogleCloudDiscoveryengineV1TransactionInfo? transactionInfo;

  /// Information about the end user.
  GoogleCloudDiscoveryengineV1UserInfo? userInfo;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor log in/out of the website. Do
  /// not set the field to the same fixed ID for different users. This mixes the
  /// event history of those users together, which results in degraded model
  /// quality. The field must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned. The
  /// field should not contain PII or user-data. We recommend to use Google
  /// Analytics
  /// [Client ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId)
  /// for this field.
  ///
  /// Required.
  core.String? userPseudoId;

  GoogleCloudDiscoveryengineV1UserEvent({
    this.attributes,
    this.attributionToken,
    this.completionInfo,
    this.conversionType,
    this.dataStore,
    this.directUserRequest,
    this.documents,
    this.engine,
    this.eventTime,
    this.eventType,
    this.filter,
    this.mediaInfo,
    this.pageInfo,
    this.panel,
    this.panels,
    this.promotionIds,
    this.searchInfo,
    this.sessionId,
    this.tagIds,
    this.transactionInfo,
    this.userInfo,
    this.userPseudoId,
  });

  GoogleCloudDiscoveryengineV1UserEvent.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDiscoveryengineV1CustomAttribute.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        attributionToken: json_['attributionToken'] as core.String?,
        completionInfo:
            json_.containsKey('completionInfo')
                ? GoogleCloudDiscoveryengineV1CompletionInfo.fromJson(
                  json_['completionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionType: json_['conversionType'] as core.String?,
        dataStore: json_['dataStore'] as core.String?,
        directUserRequest: json_['directUserRequest'] as core.bool?,
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1DocumentInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        engine: json_['engine'] as core.String?,
        eventTime: json_['eventTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        filter: json_['filter'] as core.String?,
        mediaInfo:
            json_.containsKey('mediaInfo')
                ? GoogleCloudDiscoveryengineV1MediaInfo.fromJson(
                  json_['mediaInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pageInfo:
            json_.containsKey('pageInfo')
                ? GoogleCloudDiscoveryengineV1PageInfo.fromJson(
                  json_['pageInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        panel:
            json_.containsKey('panel')
                ? GoogleCloudDiscoveryengineV1PanelInfo.fromJson(
                  json_['panel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        panels:
            (json_['panels'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDiscoveryengineV1PanelInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        promotionIds:
            (json_['promotionIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        searchInfo:
            json_.containsKey('searchInfo')
                ? GoogleCloudDiscoveryengineV1SearchInfo.fromJson(
                  json_['searchInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionId: json_['sessionId'] as core.String?,
        tagIds:
            (json_['tagIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        transactionInfo:
            json_.containsKey('transactionInfo')
                ? GoogleCloudDiscoveryengineV1TransactionInfo.fromJson(
                  json_['transactionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userInfo:
            json_.containsKey('userInfo')
                ? GoogleCloudDiscoveryengineV1UserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPseudoId: json_['userPseudoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (attributionToken != null) 'attributionToken': attributionToken!,
    if (completionInfo != null) 'completionInfo': completionInfo!,
    if (conversionType != null) 'conversionType': conversionType!,
    if (dataStore != null) 'dataStore': dataStore!,
    if (directUserRequest != null) 'directUserRequest': directUserRequest!,
    if (documents != null) 'documents': documents!,
    if (engine != null) 'engine': engine!,
    if (eventTime != null) 'eventTime': eventTime!,
    if (eventType != null) 'eventType': eventType!,
    if (filter != null) 'filter': filter!,
    if (mediaInfo != null) 'mediaInfo': mediaInfo!,
    if (pageInfo != null) 'pageInfo': pageInfo!,
    if (panel != null) 'panel': panel!,
    if (panels != null) 'panels': panels!,
    if (promotionIds != null) 'promotionIds': promotionIds!,
    if (searchInfo != null) 'searchInfo': searchInfo!,
    if (sessionId != null) 'sessionId': sessionId!,
    if (tagIds != null) 'tagIds': tagIds!,
    if (transactionInfo != null) 'transactionInfo': transactionInfo!,
    if (userInfo != null) 'userInfo': userInfo!,
    if (userPseudoId != null) 'userPseudoId': userPseudoId!,
  };
}

/// Information of an end user.
typedef GoogleCloudDiscoveryengineV1UserInfo = $UserInfo00;

/// User License information assigned by the admin.
typedef GoogleCloudDiscoveryengineV1UserLicense = $UserLicense;

/// Config to store data store type configuration for workspace data
typedef GoogleCloudDiscoveryengineV1WorkspaceConfig = $WorkspaceConfig;

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
