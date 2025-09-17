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

/// Migration Center API - v1alpha1
///
/// A unified platform that helps you accelerate your end-to-end cloud journey
/// from your current on-premises or cloud environments to Google Cloud.
///
/// For more information, see <https://cloud.google.com/migration-center>
///
/// Create an instance of [MigrationCenterApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAssetsResource]
///     - [ProjectsLocationsAssetsExportJobsResource]
///     - [ProjectsLocationsDiscoveryClientsResource]
///     - [ProjectsLocationsGroupsResource]
///     - [ProjectsLocationsImportJobsResource]
///       - [ProjectsLocationsImportJobsImportDataFilesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPreferenceSetsResource]
///     - [ProjectsLocationsRelationsResource]
///     - [ProjectsLocationsReportConfigsResource]
///       - [ProjectsLocationsReportConfigsReportsResource]
///     - [ProjectsLocationsSourcesResource]
///       - [ProjectsLocationsSourcesErrorFramesResource]
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

/// A unified platform that helps you accelerate your end-to-end cloud journey
/// from your current on-premises or cloud environments to Google Cloud.
class MigrationCenterApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  MigrationCenterApi(
    http.Client client, {
    core.String rootUrl = 'https://migrationcenter.googleapis.com/',
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

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAssetsResource get assets =>
      ProjectsLocationsAssetsResource(_requester);
  ProjectsLocationsAssetsExportJobsResource get assetsExportJobs =>
      ProjectsLocationsAssetsExportJobsResource(_requester);
  ProjectsLocationsDiscoveryClientsResource get discoveryClients =>
      ProjectsLocationsDiscoveryClientsResource(_requester);
  ProjectsLocationsGroupsResource get groups =>
      ProjectsLocationsGroupsResource(_requester);
  ProjectsLocationsImportJobsResource get importJobs =>
      ProjectsLocationsImportJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPreferenceSetsResource get preferenceSets =>
      ProjectsLocationsPreferenceSetsResource(_requester);
  ProjectsLocationsRelationsResource get relations =>
      ProjectsLocationsRelationsResource(_requester);
  ProjectsLocationsReportConfigsResource get reportConfigs =>
      ProjectsLocationsReportConfigsResource(_requester);
  ProjectsLocationsSourcesResource get sources =>
      ProjectsLocationsSourcesResource(_requester);

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
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of regional settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> getSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the regional-level project settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
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
  /// overwritten in the `Settings` resource by the update. The values specified
  /// in the `update_mask` field are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> updateSettings(
    Settings request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAssetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAssetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Aggregates the requested fields based on provided function.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `AggregateAssetsValuesRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AggregateAssetsValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AggregateAssetsValuesResponse> aggregateValues(
    AggregateAssetsValuesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$parent') +
        '/assets:aggregateValues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AggregateAssetsValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes list of Assets.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for batch asset delete.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    BatchDeleteAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/assets:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a list of assets.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for batch asset update.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateAssetsResponse> batchUpdate(
    BatchUpdateAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/assets:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an asset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assets/\[^/\]+$`.
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of an asset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [view] - View of the assets. Defaults to BASIC.
  /// Possible string values are:
  /// - "ASSET_VIEW_UNSPECIFIED" : The asset view is not specified. The API
  /// displays the basic view by default.
  /// - "ASSET_VIEW_BASIC" : The asset view includes only basic metadata of the
  /// asset.
  /// - "ASSET_VIEW_FULL" : The asset view includes all the metadata of an asset
  /// and performance data.
  /// - "ASSET_VIEW_STANDARD" : The asset view includes the standard metadata of
  /// an asset.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asset> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Asset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the assets in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListAssetsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [showHidden] - Optional. When this value is set to 'true' the response
  /// will include all assets, including those that are hidden.
  ///
  /// [view] - View of the assets. Defaults to BASIC.
  /// Possible string values are:
  /// - "ASSET_VIEW_UNSPECIFIED" : The asset view is not specified. The API
  /// displays the basic view by default.
  /// - "ASSET_VIEW_BASIC" : The asset view includes only basic metadata of the
  /// asset.
  /// - "ASSET_VIEW_FULL" : The asset view includes all the metadata of an asset
  /// and performance data.
  /// - "ASSET_VIEW_STANDARD" : The asset view includes the standard metadata of
  /// an asset.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showHidden,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showHidden != null) 'showHidden': ['${showHidden}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of an asset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the asset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assets/\[^/\]+$`.
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
  /// overwritten in the `Asset` resource by the update. The values specified in
  /// the `update_mask` field are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asset> patch(
    Asset request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Asset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports a set of frames.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent of the resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [source] - Required. Reference to a source.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportAssetFramesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportAssetFramesResponse> reportAssetFrames(
    Frames request,
    core.String parent, {
    core.String? source,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (source != null) 'source': [source],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$parent') +
        '/assets:reportAssetFrames';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportAssetFramesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAssetsExportJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAssetsExportJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new assets export job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the assts export job will
  /// be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [assetsExportJobId] - Required. The ID to use for the asset export job.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    AssetsExportJob request,
    core.String parent, {
    core.String? assetsExportJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (assetsExportJobId != null) 'assetsExportJobId': [assetsExportJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/assetsExportJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an assets export job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the assets export job to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assetsExportJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of an assets export job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assetsExportJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssetsExportJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssetsExportJob> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssetsExportJob.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the assets export jobs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. The server may return fewer
  /// items than requested. If unspecified, the server will pick an appropriate
  /// default value.
  ///
  /// [pageToken] - Optional. A token identifying a page of results that the
  /// server should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsExportJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsExportJobsResponse> list(
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
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/assetsExportJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsExportJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Runs an assets export job, returning an AssetsExportJobExecution.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/assetsExportJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> run(
    RunAssetsExportJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDiscoveryClientsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveryClientsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new discovery client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [discoveryClientId] - Required. User specified ID for the discovery
  /// client. It will become the last component of the discovery client name.
  /// The ID must be unique within the project, is restricted to lower-cased
  /// letters and has a maximum length of 63 characters. The ID must match the
  /// regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    DiscoveryClient request,
    core.String parent, {
    core.String? discoveryClientId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (discoveryClientId != null) 'discoveryClientId': [discoveryClientId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/discoveryClients';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a discovery client.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The discovery client name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryClients/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a discovery client.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The discovery client name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DiscoveryClient].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DiscoveryClient> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DiscoveryClient.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the discovery clients in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression to filter results by.
  ///
  /// [orderBy] - Optional. Field to sort by.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. The server
  /// may return fewer items than requested. If unspecified, the server will
  /// pick an appropriate default value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDiscoveryClients` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListDiscoveryClients`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDiscoveryClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDiscoveryClientsResponse> list(
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
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/discoveryClients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDiscoveryClientsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a discovery client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Full name of this discovery client.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryClients/\[^/\]+$`.
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
  /// [updateMask] - Required. Update mask is used to specify the fields to be
  /// overwritten in the `DiscoveryClient` resource by the update. The values
  /// specified in the `update_mask` field are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    DiscoveryClient request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sends a discovery client heartbeat.
  ///
  /// Healthy clients are expected to send heartbeats regularly (normally every
  /// few minutes).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The discovery client name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> sendHeartbeat(
    SendDiscoveryClientHeartbeatRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':sendHeartbeat';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds assets to a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. Group reference.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> addAssets(
    AddAssetsToGroupRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$group') + ':addAssets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new group in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [groupId] - Required. User specified ID for the group. It will become the
  /// last component of the group name. The ID must be unique within the
  /// project, must conform with RFC-1034, is restricted to lower-cased letters,
  /// and has a maximum length of 63 characters. The ID must match the regular
  /// expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Group request,
    core.String parent, {
    core.String? groupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupId != null) 'groupId': [groupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the group resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all groups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListGroupsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the group.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
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
  /// overwritten in the `Group` resource by the update. The values specified in
  /// the `update_mask` are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. A single * value in the
  /// mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Group request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes assets from a group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [group] - Required. Group reference.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> removeAssets(
    RemoveAssetsFromGroupRequest request,
    core.String group, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$group') + ':removeAssets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImportJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImportJobsImportDataFilesResource get importDataFiles =>
      ProjectsLocationsImportJobsImportDataFilesResource(_requester);

  ProjectsLocationsImportJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an import job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [importJobId] - Required. ID of the import job.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    ImportJob request,
    core.String parent, {
    core.String? importJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importJobId != null) 'importJobId': [importJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/importJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an import job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to `true`, any `ImportDataFiles` of this job
  /// will also be deleted If set to `false`, the request only works if the job
  /// has no data files.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of an import job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [view] - Optional. The level of details of the import job. Default value
  /// is FULL.
  /// Possible string values are:
  /// - "IMPORT_JOB_VIEW_UNSPECIFIED" : The import job view is not specified.
  /// The API displays the basic view by default.
  /// - "IMPORT_JOB_VIEW_BASIC" : The import job view includes basic metadata of
  /// an import job. This view does not include payload information.
  /// - "IMPORT_JOB_VIEW_FULL" : The import job view includes all metadata of an
  /// import job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImportJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImportJob> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ImportJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all import jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListImportJobsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - Optional. The level of details of each import job. Default value
  /// is BASIC.
  /// Possible string values are:
  /// - "IMPORT_JOB_VIEW_UNSPECIFIED" : The import job view is not specified.
  /// The API displays the basic view by default.
  /// - "IMPORT_JOB_VIEW_BASIC" : The import job view includes basic metadata of
  /// an import job. This view does not include payload information.
  /// - "IMPORT_JOB_VIEW_FULL" : The import job view includes all metadata of an
  /// import job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImportJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImportJobsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/importJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImportJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an import job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the import job.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
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
  /// overwritten in the `Asset` resource by the update. The values specified in
  /// the `update_mask` field are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    ImportJob request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs an import job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the import job to run.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> run(
    RunImportJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates an import job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the import job to validate.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> validate(
    ValidateImportJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImportJobsImportDataFilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImportJobsImportDataFilesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates an import data file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent of the ImportDataFile.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [importDataFileId] - Required. The ID of the new data file.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    ImportDataFile request,
    core.String parent, {
    core.String? importDataFileId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importDataFileId != null) 'importDataFileId': [importDataFileId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/importDataFiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an import data file.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ImportDataFile to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+/importDataFiles/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an import data file.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ImportDataFile.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+/importDataFiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImportDataFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImportDataFile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ImportDataFile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List import data files.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent of the `ImportDataFiles` resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - The maximum number of data files to return. The service may
  /// return fewer than this value. If unspecified, at most 500 data files will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListImportDataFiles`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListImportDataFiles` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImportDataFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImportDataFilesResponse> list(
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
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/importDataFiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImportDataFilesResponse.fromJson(
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
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsPreferenceSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPreferenceSetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new preference set in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [preferenceSetId] - null
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    PreferenceSet request,
    core.String parent, {
    core.String? preferenceSetId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (preferenceSetId != null) 'preferenceSetId': [preferenceSetId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/preferenceSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a preference set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the group resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/preferenceSets/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a preference set.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/preferenceSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PreferenceSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PreferenceSet> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PreferenceSet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the preference sets in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListPreferenceSetsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, at most 500 preference sets will be returned.
  /// The maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPreferenceSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPreferenceSetsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/preferenceSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPreferenceSetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a preference set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the PreferenceSet.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/preferenceSets/\[^/\]+$`.
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
  /// overwritten in the `PreferenceSet` resource by the update. The values
  /// specified in the `update_mask` field are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    PreferenceSet request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRelationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRelationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the details of an relation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/relations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Relation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Relation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Relation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the relations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListRelationsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRelationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRelationsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/relations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRelationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsReportConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReportConfigsReportsResource get reports =>
      ProjectsLocationsReportConfigsReportsResource(_requester);

  ProjectsLocationsReportConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a report configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [reportConfigId] - Required. User specified ID for the report config. It
  /// will become the last component of the report config name. The ID must be
  /// unique within the project, must conform with RFC-1034, is restricted to
  /// lower-cased letters, and has a maximum length of 63 characters. The ID
  /// must match the regular expression: \[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    ReportConfig request,
    core.String parent, {
    core.String? reportConfigId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reportConfigId != null) 'reportConfigId': [reportConfigId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/reportConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a ReportConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to `true`, any child `Reports` of this entity
  /// will also be deleted. If set to `false`, the request only works if the
  /// resource has no children.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ReportConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReportConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ReportConfigs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListReportConfigsRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportConfigsResponse> list(
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
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/reportConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsReportConfigsReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReportConfigsReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+$`.
  ///
  /// [reportId] - Required. User specified id for the report. It will become
  /// the last component of the report name. The id must be unique within the
  /// project, must conform with RFC-1034, is restricted to lower-cased letters,
  /// and has a maximum length of 63 characters. The id must match the regular
  /// expression: \[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Report request,
    core.String parent, {
    core.String? reportId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reportId != null) 'reportId': [reportId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+/reports/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [view] - Determines what information to retrieve for the Report.
  /// Possible string values are:
  /// - "REPORT_VIEW_UNSPECIFIED" : The report view is not specified. The API
  /// displays the basic view by default.
  /// - "REPORT_VIEW_BASIC" : The report view includes only basic metadata of
  /// the Report. Useful for list views.
  /// - "REPORT_VIEW_FULL" : The report view includes all the metadata of the
  /// Report. Useful for preview.
  /// - "REPORT_VIEW_STANDARD" : The report view includes the standard metadata
  /// of an report. Useful for detail view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Reports in a given ReportConfig.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListReportsRequest`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reportConfigs/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. The server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default
  /// value.
  ///
  /// [pageToken] - A token identifying a page of results that the server should
  /// return.
  ///
  /// [view] - Determines what information to retrieve for each Report.
  /// Possible string values are:
  /// - "REPORT_VIEW_UNSPECIFIED" : The report view is not specified. The API
  /// displays the basic view by default.
  /// - "REPORT_VIEW_BASIC" : The report view includes only basic metadata of
  /// the Report. Useful for list views.
  /// - "REPORT_VIEW_FULL" : The report view includes all the metadata of the
  /// Report. Useful for preview.
  /// - "REPORT_VIEW_STANDARD" : The report view includes the standard metadata
  /// of an report. Useful for detail view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesErrorFramesResource get errorFrames =>
      ProjectsLocationsSourcesErrorFramesResource(_requester);

  ProjectsLocationsSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new source in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// [sourceId] - Required. User specified ID for the source. It will become
  /// the last component of the source name. The ID must be unique within the
  /// project, must conform with RFC-1034, is restricted to lower-cased letters,
  /// and has a maximum length of 63 characters. The ID must match the regular
  /// expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Source request,
    core.String parent, {
    core.String? requestId,
    core.String? sourceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (sourceId != null) 'sourceId': [sourceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the sources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for `ListSourcesRequest`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. The server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default
  /// value.
  ///
  /// [pageToken] - A token identifying a page of results that the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the source.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
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
  /// overwritten in the `Source` resource by the update. The values specified
  /// in the `update_mask` field are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. A single *
  /// value in the mask lets you to overwrite all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Source request,
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSourcesErrorFramesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSourcesErrorFramesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the details of an error frame.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the frame to retrieve. Format:
  /// projects/{project}/locations/{location}/sources/{source}/errorFrames/{error_frame}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+/errorFrames/\[^/\]+$`.
  ///
  /// [view] - Optional. An optional view mode to control the level of details
  /// for the frame. The default is a basic frame view.
  /// Possible string values are:
  /// - "ERROR_FRAME_VIEW_UNSPECIFIED" : Value is unset. The system will
  /// fallback to the default value.
  /// - "ERROR_FRAME_VIEW_BASIC" : Include basic frame data, but not the full
  /// contents.
  /// - "ERROR_FRAME_VIEW_FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ErrorFrame].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ErrorFrame> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ErrorFrame.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all error frames in a given source and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value (the source) for
  /// `ListErrorFramesRequest`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [view] - Optional. An optional view mode to control the level of details
  /// of each error frame. The default is a BASIC frame view.
  /// Possible string values are:
  /// - "ERROR_FRAME_VIEW_UNSPECIFIED" : Value is unset. The system will
  /// fallback to the default value.
  /// - "ERROR_FRAME_VIEW_BASIC" : Include basic frame data, but not the full
  /// contents.
  /// - "ERROR_FRAME_VIEW_FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListErrorFramesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListErrorFramesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/errorFrames';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListErrorFramesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A request to add assets to a group.
class AddAssetsToGroupRequest {
  /// When this value is set to `false` and one of the given assets is already
  /// an existing member of the group, the operation fails with an `Already
  /// Exists` error.
  ///
  /// When set to `true` this situation is silently ignored by the server.
  /// Default value is `false`.
  ///
  /// Optional.
  core.bool? allowExisting;

  /// List of assets to be added.
  ///
  /// The maximum number of assets that can be added in a single request is
  /// 1000.
  ///
  /// Required.
  AssetList? assets;

  /// An optional request ID to identify requests.
  ///
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
  /// Optional.
  core.String? requestId;

  AddAssetsToGroupRequest({this.allowExisting, this.assets, this.requestId});

  AddAssetsToGroupRequest.fromJson(core.Map json_)
    : this(
        allowExisting: json_['allowExisting'] as core.bool?,
        assets:
            json_.containsKey('assets')
                ? AssetList.fromJson(
                  json_['assets'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowExisting != null) 'allowExisting': allowExisting!,
    if (assets != null) 'assets': assets!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// A request to aggregate one or more values.
class AggregateAssetsValuesRequest {
  /// Array of aggregations to perform.
  ///
  /// Up to 25 aggregations can be defined.
  core.List<Aggregation>? aggregations;

  /// The aggregation will be performed on assets that match the provided
  /// filter.
  ///
  /// Optional.
  core.String? filter;

  /// When this value is set to 'true' the response will include all assets,
  /// including those that are hidden.
  ///
  /// Optional.
  core.bool? showHidden;

  AggregateAssetsValuesRequest({
    this.aggregations,
    this.filter,
    this.showHidden,
  });

  AggregateAssetsValuesRequest.fromJson(core.Map json_)
    : this(
        aggregations:
            (json_['aggregations'] as core.List?)
                ?.map(
                  (value) => Aggregation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        filter: json_['filter'] as core.String?,
        showHidden: json_['showHidden'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregations != null) 'aggregations': aggregations!,
    if (filter != null) 'filter': filter!,
    if (showHidden != null) 'showHidden': showHidden!,
  };
}

/// A response to a request to aggregated assets values.
class AggregateAssetsValuesResponse {
  /// The aggregation results.
  core.List<AggregationResult>? results;

  AggregateAssetsValuesResponse({this.results});

  AggregateAssetsValuesResponse.fromJson(core.Map json_)
    : this(
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => AggregationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (results != null) 'results': results!,
  };
}

/// Message describing an aggregation.
///
/// The message includes the aggregation type, parameters, and the field on
/// which to perform the aggregation.
class Aggregation {
  /// Count the number of matching objects.
  AggregationCount? count;

  /// The name of the field on which to aggregate.
  core.String? field;

  /// Creates a frequency distribution of all field values.
  AggregationFrequency? frequency;

  /// Creates a bucketed histogram of field values.
  AggregationHistogram? histogram;

  /// Sum over a numeric field.
  AggregationSum? sum;

  Aggregation({
    this.count,
    this.field,
    this.frequency,
    this.histogram,
    this.sum,
  });

  Aggregation.fromJson(core.Map json_)
    : this(
        count:
            json_.containsKey('count')
                ? AggregationCount.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        field: json_['field'] as core.String?,
        frequency:
            json_.containsKey('frequency')
                ? AggregationFrequency.fromJson(
                  json_['frequency'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        histogram:
            json_.containsKey('histogram')
                ? AggregationHistogram.fromJson(
                  json_['histogram'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sum:
            json_.containsKey('sum')
                ? AggregationSum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (field != null) 'field': field!,
    if (frequency != null) 'frequency': frequency!,
    if (histogram != null) 'histogram': histogram!,
    if (sum != null) 'sum': sum!,
  };
}

/// Object count.
typedef AggregationCount = $Empty;

/// Frequency distribution of all field values.
typedef AggregationFrequency = $Empty;

/// Histogram of bucketed assets counts by field value.
typedef AggregationHistogram = $AggregationHistogram;

/// Message describing a result of an aggregation.
class AggregationResult {
  AggregationResultCount? count;
  core.String? field;
  AggregationResultFrequency? frequency;
  AggregationResultHistogram? histogram;
  AggregationResultSum? sum;

  AggregationResult({
    this.count,
    this.field,
    this.frequency,
    this.histogram,
    this.sum,
  });

  AggregationResult.fromJson(core.Map json_)
    : this(
        count:
            json_.containsKey('count')
                ? AggregationResultCount.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        field: json_['field'] as core.String?,
        frequency:
            json_.containsKey('frequency')
                ? AggregationResultFrequency.fromJson(
                  json_['frequency'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        histogram:
            json_.containsKey('histogram')
                ? AggregationResultHistogram.fromJson(
                  json_['histogram'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sum:
            json_.containsKey('sum')
                ? AggregationResultSum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (field != null) 'field': field!,
    if (frequency != null) 'frequency': frequency!,
    if (histogram != null) 'histogram': histogram!,
    if (sum != null) 'sum': sum!,
  };
}

/// The result of a count aggregation.
typedef AggregationResultCount = $AggregationResultCount;

/// The result of a frequency distribution aggregation.
typedef AggregationResultFrequency = $AggregationResultFrequency;

/// The result of a bucketed histogram aggregation.
class AggregationResultHistogram {
  /// Buckets in the histogram.
  ///
  /// There will be `n+1` buckets matching `n` lower bounds in the request. The
  /// first bucket will be from -infinity to the first bound. Subsequent buckets
  /// will be between one bound and the next. The final bucket will be from the
  /// final bound to infinity.
  core.List<AggregationResultHistogramBucket>? buckets;

  AggregationResultHistogram({this.buckets});

  AggregationResultHistogram.fromJson(core.Map json_)
    : this(
        buckets:
            (json_['buckets'] as core.List?)
                ?.map(
                  (value) => AggregationResultHistogramBucket.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buckets != null) 'buckets': buckets!,
  };
}

/// A histogram bucket with a lower and upper bound, and a count of items with a
/// field value between those bounds.
///
/// The lower bound is inclusive and the upper bound is exclusive. Lower bound
/// may be -infinity and upper bound may be infinity.
typedef AggregationResultHistogramBucket = $AggregationResultHistogramBucket;

/// The result of a sum aggregation.
typedef AggregationResultSum = $AggregationResultSum;

/// Sum of field values.
typedef AggregationSum = $Empty;

/// An asset represents a resource in your environment.
///
/// Asset types include virtual machines and databases.
class Asset {
  /// The list of groups that the asset is assigned to.
  ///
  /// Output only.
  core.List<core.String>? assignedGroups;

  /// Generic asset attributes.
  core.Map<core.String, core.String>? attributes;

  /// The timestamp when the asset was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Asset information specific for database deployments.
  ///
  /// Output only.
  DatabaseDeploymentDetails? databaseDeploymentDetails;

  /// Asset information specific for logical databases.
  ///
  /// Output only.
  DatabaseDetails? databaseDetails;

  /// Indicates if the asset is hidden.
  ///
  /// Optional.
  core.bool? hidden;

  /// An optional reason for marking this asset as hidden.
  ///
  /// Optional.
  core.String? hideReason;

  /// The timestamp when the asset was marked as hidden.
  ///
  /// Output only.
  core.String? hideTime;

  /// The list of insights associated with the asset.
  ///
  /// Output only.
  InsightList? insightList;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Asset information specific for virtual machines.
  ///
  /// Output only.
  MachineDetails? machineDetails;

  /// The full name of the asset.
  ///
  /// Output only.
  core.String? name;

  /// Performance data for the asset.
  AssetPerformanceData? performanceData;

  /// The list of sources contributing to the asset.
  ///
  /// Output only.
  core.List<core.String>? sources;

  /// Server generated human readable name of the asset.
  ///
  /// Output only.
  core.String? title;

  /// The timestamp when the asset was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Asset information specific for virtual machines.
  ///
  /// Output only.
  VirtualMachineDetails? virtualMachineDetails;

  Asset({
    this.assignedGroups,
    this.attributes,
    this.createTime,
    this.databaseDeploymentDetails,
    this.databaseDetails,
    this.hidden,
    this.hideReason,
    this.hideTime,
    this.insightList,
    this.labels,
    this.machineDetails,
    this.name,
    this.performanceData,
    this.sources,
    this.title,
    this.updateTime,
    this.virtualMachineDetails,
  });

  Asset.fromJson(core.Map json_)
    : this(
        assignedGroups:
            (json_['assignedGroups'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        databaseDeploymentDetails:
            json_.containsKey('databaseDeploymentDetails')
                ? DatabaseDeploymentDetails.fromJson(
                  json_['databaseDeploymentDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databaseDetails:
            json_.containsKey('databaseDetails')
                ? DatabaseDetails.fromJson(
                  json_['databaseDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        hidden: json_['hidden'] as core.bool?,
        hideReason: json_['hideReason'] as core.String?,
        hideTime: json_['hideTime'] as core.String?,
        insightList:
            json_.containsKey('insightList')
                ? InsightList.fromJson(
                  json_['insightList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        machineDetails:
            json_.containsKey('machineDetails')
                ? MachineDetails.fromJson(
                  json_['machineDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        performanceData:
            json_.containsKey('performanceData')
                ? AssetPerformanceData.fromJson(
                  json_['performanceData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sources:
            (json_['sources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        title: json_['title'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        virtualMachineDetails:
            json_.containsKey('virtualMachineDetails')
                ? VirtualMachineDetails.fromJson(
                  json_['virtualMachineDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignedGroups != null) 'assignedGroups': assignedGroups!,
    if (attributes != null) 'attributes': attributes!,
    if (createTime != null) 'createTime': createTime!,
    if (databaseDeploymentDetails != null)
      'databaseDeploymentDetails': databaseDeploymentDetails!,
    if (databaseDetails != null) 'databaseDetails': databaseDetails!,
    if (hidden != null) 'hidden': hidden!,
    if (hideReason != null) 'hideReason': hideReason!,
    if (hideTime != null) 'hideTime': hideTime!,
    if (insightList != null) 'insightList': insightList!,
    if (labels != null) 'labels': labels!,
    if (machineDetails != null) 'machineDetails': machineDetails!,
    if (name != null) 'name': name!,
    if (performanceData != null) 'performanceData': performanceData!,
    if (sources != null) 'sources': sources!,
    if (title != null) 'title': title!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (virtualMachineDetails != null)
      'virtualMachineDetails': virtualMachineDetails!,
  };
}

/// Contains data reported from an inventory source on an asset.
class AssetFrame {
  /// Generic asset attributes.
  core.Map<core.String, core.String>? attributes;

  /// Frame collection type, if not specified the collection type will be based
  /// on the source type of the source the frame was reported on.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNKNOWN" : Unspecified
  /// - "SOURCE_TYPE_UPLOAD" : Manually uploaded file (e.g. CSV)
  /// - "SOURCE_TYPE_GUEST_OS_SCAN" : Guest-level info
  /// - "SOURCE_TYPE_INVENTORY_SCAN" : Inventory-level scan
  /// - "SOURCE_TYPE_CUSTOM" : Third-party owned sources.
  /// - "SOURCE_TYPE_DISCOVERY_CLIENT" : Discovery clients
  core.String? collectionType;

  /// Asset information specific for database deployments.
  DatabaseDeploymentDetails? databaseDeploymentDetails;

  /// Asset information specific for logical databases.
  DatabaseDetails? databaseDetails;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Asset information specific for virtual and physical machines.
  MachineDetails? machineDetails;

  /// Asset performance data samples.
  ///
  /// Samples that are from more than 40 days ago or after tomorrow are ignored.
  core.List<PerformanceSample>? performanceSamples;

  /// The time the data was reported.
  core.String? reportTime;

  /// Trace token is optionally provided to assist with debugging and
  /// traceability.
  ///
  /// Optional.
  core.String? traceToken;

  /// Asset information specific for virtual machines.
  VirtualMachineDetails? virtualMachineDetails;

  AssetFrame({
    this.attributes,
    this.collectionType,
    this.databaseDeploymentDetails,
    this.databaseDetails,
    this.labels,
    this.machineDetails,
    this.performanceSamples,
    this.reportTime,
    this.traceToken,
    this.virtualMachineDetails,
  });

  AssetFrame.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        collectionType: json_['collectionType'] as core.String?,
        databaseDeploymentDetails:
            json_.containsKey('databaseDeploymentDetails')
                ? DatabaseDeploymentDetails.fromJson(
                  json_['databaseDeploymentDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databaseDetails:
            json_.containsKey('databaseDetails')
                ? DatabaseDetails.fromJson(
                  json_['databaseDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        machineDetails:
            json_.containsKey('machineDetails')
                ? MachineDetails.fromJson(
                  json_['machineDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        performanceSamples:
            (json_['performanceSamples'] as core.List?)
                ?.map(
                  (value) => PerformanceSample.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reportTime: json_['reportTime'] as core.String?,
        traceToken: json_['traceToken'] as core.String?,
        virtualMachineDetails:
            json_.containsKey('virtualMachineDetails')
                ? VirtualMachineDetails.fromJson(
                  json_['virtualMachineDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (collectionType != null) 'collectionType': collectionType!,
    if (databaseDeploymentDetails != null)
      'databaseDeploymentDetails': databaseDeploymentDetails!,
    if (databaseDetails != null) 'databaseDetails': databaseDetails!,
    if (labels != null) 'labels': labels!,
    if (machineDetails != null) 'machineDetails': machineDetails!,
    if (performanceSamples != null) 'performanceSamples': performanceSamples!,
    if (reportTime != null) 'reportTime': reportTime!,
    if (traceToken != null) 'traceToken': traceToken!,
    if (virtualMachineDetails != null)
      'virtualMachineDetails': virtualMachineDetails!,
  };
}

/// Lists the asset IDs of all assets.
typedef AssetList = $AssetList;

/// Performance data for an asset.
class AssetPerformanceData {
  /// Daily resource usage aggregations.
  ///
  /// Contains all of the data available for an asset, up to the last 420 days.
  /// Aggregations are sorted from oldest to most recent.
  core.List<DailyResourceUsageAggregation>? dailyResourceUsageAggregations;

  AssetPerformanceData({this.dailyResourceUsageAggregations});

  AssetPerformanceData.fromJson(core.Map json_)
    : this(
        dailyResourceUsageAggregations:
            (json_['dailyResourceUsageAggregations'] as core.List?)
                ?.map(
                  (value) => DailyResourceUsageAggregation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dailyResourceUsageAggregations != null)
      'dailyResourceUsageAggregations': dailyResourceUsageAggregations!,
  };
}

/// Assets export job message.
class AssetsExportJob {
  /// Conditions for selecting assets to export.
  ///
  /// Optional.
  AssetsExportJobExportCondition? condition;

  /// Resource creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Export asset inventory details.
  AssetsExportJobInventory? inventory;

  /// Labels as key value pairs.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// Export data regarding asset network dependencies.
  AssetsExportJobNetworkDependencies? networkDependencies;

  /// Export asset with performance data.
  AssetsExportJobPerformanceData? performanceData;

  /// Recent non expired executions of the job.
  ///
  /// Output only.
  core.List<AssetsExportJobExecution>? recentExecutions;

  /// When this value is set to 'true' the response will include all assets,
  /// including those that are hidden.
  ///
  /// Optional.
  core.bool? showHidden;

  /// Export to Cloud Storage files downloadable using signed URIs.
  SignedUriDestination? signedUriDestination;

  /// Resource update time.
  ///
  /// Output only.
  core.String? updateTime;

  AssetsExportJob({
    this.condition,
    this.createTime,
    this.inventory,
    this.labels,
    this.name,
    this.networkDependencies,
    this.performanceData,
    this.recentExecutions,
    this.showHidden,
    this.signedUriDestination,
    this.updateTime,
  });

  AssetsExportJob.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? AssetsExportJobExportCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        inventory:
            json_.containsKey('inventory')
                ? AssetsExportJobInventory.fromJson(
                  json_['inventory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        networkDependencies:
            json_.containsKey('networkDependencies')
                ? AssetsExportJobNetworkDependencies.fromJson(
                  json_['networkDependencies']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        performanceData:
            json_.containsKey('performanceData')
                ? AssetsExportJobPerformanceData.fromJson(
                  json_['performanceData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        recentExecutions:
            (json_['recentExecutions'] as core.List?)
                ?.map(
                  (value) => AssetsExportJobExecution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        showHidden: json_['showHidden'] as core.bool?,
        signedUriDestination:
            json_.containsKey('signedUriDestination')
                ? SignedUriDestination.fromJson(
                  json_['signedUriDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (createTime != null) 'createTime': createTime!,
    if (inventory != null) 'inventory': inventory!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (networkDependencies != null)
      'networkDependencies': networkDependencies!,
    if (performanceData != null) 'performanceData': performanceData!,
    if (recentExecutions != null) 'recentExecutions': recentExecutions!,
    if (showHidden != null) 'showHidden': showHidden!,
    if (signedUriDestination != null)
      'signedUriDestination': signedUriDestination!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Execution status of assets export job.
class AssetsExportJobExecution {
  /// Completion time of the export.
  ///
  /// Output only.
  core.String? endTime;

  /// Globally unique identifier of the execution.
  ///
  /// Output only.
  core.String? executionId;

  /// Expiration time for the export and artifacts.
  ///
  /// Output only.
  core.String? expireTime;

  /// Number of assets requested for export after resolving the requested
  /// filters.
  ///
  /// Output only.
  core.int? requestedAssetCount;

  /// Result of the export execution.
  ///
  /// Output only.
  AssetsExportJobExecutionResult? result;

  /// Execution timestamp.
  ///
  /// Output only.
  core.String? startTime;

  AssetsExportJobExecution({
    this.endTime,
    this.executionId,
    this.expireTime,
    this.requestedAssetCount,
    this.result,
    this.startTime,
  });

  AssetsExportJobExecution.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        executionId: json_['executionId'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        requestedAssetCount: json_['requestedAssetCount'] as core.int?,
        result:
            json_.containsKey('result')
                ? AssetsExportJobExecutionResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (executionId != null) 'executionId': executionId!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (requestedAssetCount != null)
      'requestedAssetCount': requestedAssetCount!,
    if (result != null) 'result': result!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Contains the result of the assets export.
class AssetsExportJobExecutionResult {
  /// Error encountered during export.
  ///
  /// Output only.
  Status? error;

  /// List of output files.
  ///
  /// Output only.
  OutputFileList? outputFiles;

  /// Signed URLs for downloading export artifacts.
  ///
  /// Output only.
  SignedUris? signedUris;

  AssetsExportJobExecutionResult({
    this.error,
    this.outputFiles,
    this.signedUris,
  });

  AssetsExportJobExecutionResult.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputFiles:
            json_.containsKey('outputFiles')
                ? OutputFileList.fromJson(
                  json_['outputFiles'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        signedUris:
            json_.containsKey('signedUris')
                ? SignedUris.fromJson(
                  json_['signedUris'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (outputFiles != null) 'outputFiles': outputFiles!,
    if (signedUris != null) 'signedUris': signedUris!,
  };
}

/// Conditions for selecting assets to export.
class AssetsExportJobExportCondition {
  /// Assets filter, supports the same syntax as asset listing.
  ///
  /// Optional.
  core.String? filter;

  AssetsExportJobExportCondition({this.filter});

  AssetsExportJobExportCondition.fromJson(core.Map json_)
    : this(filter: json_['filter'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
  };
}

/// Configuration for asset inventory details exports.
typedef AssetsExportJobInventory = $Empty;

/// Configuration for network dependencies exports.
class AssetsExportJobNetworkDependencies {
  /// When this value is set to a positive integer, network connections data
  /// will be returned for the most recent days for which data is available.
  ///
  /// When this value is unset (or set to zero), all available data is returned.
  ///
  /// Optional.
  core.int? maxDays;

  AssetsExportJobNetworkDependencies({this.maxDays});

  AssetsExportJobNetworkDependencies.fromJson(core.Map json_)
    : this(maxDays: json_['maxDays'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxDays != null) 'maxDays': maxDays!,
  };
}

/// Configuration for performance data exports.
class AssetsExportJobPerformanceData {
  /// When this value is set to a positive integer, performance data will be
  /// returned for the most recent days for which data is available.
  ///
  /// When this value is unset (or set to zero), all available data is returned.
  /// The maximum value is 420; values above 420 will be coerced to 420. If
  /// unset (0 value) a default value of 40 will be used.
  ///
  /// Optional.
  core.int? maxDays;

  AssetsExportJobPerformanceData({this.maxDays});

  AssetsExportJobPerformanceData.fromJson(core.Map json_)
    : this(maxDays: json_['maxDays'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxDays != null) 'maxDays': maxDays!,
  };
}

/// AWS EC2 specific details.
typedef AwsEc2PlatformDetails = $AwsEc2PlatformDetails;

/// Specific details for an AWS RDS database deployment.
typedef AwsRds = $Empty;

/// Azure VM specific details.
typedef AzureVmPlatformDetails = $AzureVmPlatformDetails;

/// A request to delete a list of asset.
class BatchDeleteAssetsRequest {
  /// When this value is set to `true` the request is a no-op for non-existing
  /// assets.
  ///
  /// See https://google.aip.dev/135#delete-if-existing for additional details.
  /// Default value is `false`.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// Optional cascading rules for deleting related assets.
  ///
  /// Optional.
  core.List<CascadingRule>? cascadingRules;

  /// The IDs of the assets to delete.
  ///
  /// A maximum of 1000 assets can be deleted in a batch. Format:
  /// projects/{project}/locations/{location}/assets/{name}.
  ///
  /// Required.
  core.List<core.String>? names;

  BatchDeleteAssetsRequest({
    this.allowMissing,
    this.cascadingRules,
    this.names,
  });

  BatchDeleteAssetsRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        cascadingRules:
            (json_['cascadingRules'] as core.List?)
                ?.map(
                  (value) => CascadingRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        names:
            (json_['names'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowMissing != null) 'allowMissing': allowMissing!,
    if (cascadingRules != null) 'cascadingRules': cascadingRules!,
    if (names != null) 'names': names!,
  };
}

/// A request to update a list of assets.
class BatchUpdateAssetsRequest {
  /// The request message specifying the resources to update.
  ///
  /// A maximum of 1000 assets can be modified in a batch.
  ///
  /// Required.
  core.List<UpdateAssetRequest>? requests;

  BatchUpdateAssetsRequest({this.requests});

  BatchUpdateAssetsRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) => UpdateAssetRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// Response for updating a list of assets.
class BatchUpdateAssetsResponse {
  /// Update asset content.
  ///
  /// The content only includes values after field mask being applied.
  core.List<Asset>? assets;

  BatchUpdateAssetsResponse({this.assets});

  BatchUpdateAssetsResponse.fromJson(core.Map json_)
    : this(
        assets:
            (json_['assets'] as core.List?)
                ?.map(
                  (value) => Asset.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assets != null) 'assets': assets!,
  };
}

/// Details about the BIOS.
class BiosDetails {
  /// BIOS manufacturer.
  core.String? biosManufacturer;

  /// BIOS name.
  core.String? biosName;

  /// BIOS release date.
  core.String? biosReleaseDate;

  /// BIOS version.
  core.String? biosVersion;

  /// SMBIOS UUID.
  core.String? smbiosUuid;

  BiosDetails({
    this.biosManufacturer,
    this.biosName,
    this.biosReleaseDate,
    this.biosVersion,
    this.smbiosUuid,
  });

  BiosDetails.fromJson(core.Map json_)
    : this(
        biosManufacturer: json_['biosManufacturer'] as core.String?,
        biosName: json_['biosName'] as core.String?,
        biosReleaseDate: json_['biosReleaseDate'] as core.String?,
        biosVersion: json_['biosVersion'] as core.String?,
        smbiosUuid: json_['smbiosUuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (biosManufacturer != null) 'biosManufacturer': biosManufacturer!,
    if (biosName != null) 'biosName': biosName!,
    if (biosReleaseDate != null) 'biosReleaseDate': biosReleaseDate!,
    if (biosVersion != null) 'biosVersion': biosVersion!,
    if (smbiosUuid != null) 'smbiosUuid': smbiosUuid!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Cascading rule for related logical DBs.
typedef CascadeLogicalDBsRule = $Empty;

/// Specifies cascading rules for traversing relations.
class CascadingRule {
  /// Cascading rule for related logical DBs.
  CascadeLogicalDBsRule? cascadeLogicalDbs;

  CascadingRule({this.cascadeLogicalDbs});

  CascadingRule.fromJson(core.Map json_)
    : this(
        cascadeLogicalDbs:
            json_.containsKey('cascadeLogicalDbs')
                ? CascadeLogicalDBsRule.fromJson(
                  json_['cascadeLogicalDbs']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cascadeLogicalDbs != null) 'cascadeLogicalDbs': cascadeLogicalDbs!,
  };
}

/// Cloud database migration target.
class CloudDatabaseMigrationTarget {
  /// Cloud SQL for MySQL database shape.
  CloudSqlForMySqlShape? cloudSqlForMysqlShape;

  /// Cloud SQL for PostgreSQL database shape.
  CloudSqlForPostgreSqlShape? cloudSqlForPostgresqlShape;

  /// Cloud SQL for SQL Server database shape.
  CloudSqlForSqlServerShape? cloudSqlShape;

  CloudDatabaseMigrationTarget({
    this.cloudSqlForMysqlShape,
    this.cloudSqlForPostgresqlShape,
    this.cloudSqlShape,
  });

  CloudDatabaseMigrationTarget.fromJson(core.Map json_)
    : this(
        cloudSqlForMysqlShape:
            json_.containsKey('cloudSqlForMysqlShape')
                ? CloudSqlForMySqlShape.fromJson(
                  json_['cloudSqlForMysqlShape']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudSqlForPostgresqlShape:
            json_.containsKey('cloudSqlForPostgresqlShape')
                ? CloudSqlForPostgreSqlShape.fromJson(
                  json_['cloudSqlForPostgresqlShape']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudSqlShape:
            json_.containsKey('cloudSqlShape')
                ? CloudSqlForSqlServerShape.fromJson(
                  json_['cloudSqlShape'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudSqlForMysqlShape != null)
      'cloudSqlForMysqlShape': cloudSqlForMysqlShape!,
    if (cloudSqlForPostgresqlShape != null)
      'cloudSqlForPostgresqlShape': cloudSqlForPostgresqlShape!,
    if (cloudSqlShape != null) 'cloudSqlShape': cloudSqlShape!,
  };
}

/// Cloud SQL for MySQL database shape.
class CloudSqlForMySqlShape {
  /// Predicted backup storage size in GiB.
  ///
  /// Output only.
  core.int? backupStorageGb;

  /// Cloud SQL edition.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_EDITION_UNSPECIFIED" : An unspecified Cloud SQL edition.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE" : Provides all core capabilities of Cloud
  /// SQL and is suitable for applications requiring a balance of performance,
  /// availability, and cost.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE_PLUS" : Provides the best performance and
  /// availability to run applications requiring the highest level of
  /// availability and performance in addition to the capabilities of the Cloud
  /// SQL Enterprise edition. Note: SQL Server is not available in Enterprise
  /// Plus edition. For SQL Server, Enterprise will always be recommended.
  core.String? edition;

  /// Predicted Network Out traffic GiB per month.
  ///
  /// Output only.
  core.String? egressGbPerMonth;

  /// Number of logical cores.
  ///
  /// Output only.
  core.int? logicalCoreCount;

  /// Predicted amount of memory in MiB.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Predicted storage shape.
  ///
  /// Output only.
  ComputeStorageDescriptor? storage;

  /// MySQL version to be used on the Cloud SQL for MySQL instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MY_SQL_VERSION_UNSPECIFIED" : Unspecified MySQL version.
  /// - "MY_SQL_VERSION_5_6" : MySQL 5.6.
  /// - "MY_SQL_VERSION_5_7" : MySQL 5.7.
  /// - "MY_SQL_VERSION_8_0" : MySQL 8.0.
  core.String? version;

  /// Cloud SQL zone availability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_UNSPECIFIED" : An unspecified Cloud SQL
  /// zone availability.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_ZONAL" : The instance serves data from only
  /// one zone. In case of outage, no failover. Not recommended for production.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_REGIONAL" : The instance can serve data
  /// from multiple zones in a region. Highly available. Automatic failover to
  /// another zone within your selected region. Recommended for production
  /// instances. Increases cost.
  core.String? zoneAvailability;

  CloudSqlForMySqlShape({
    this.backupStorageGb,
    this.edition,
    this.egressGbPerMonth,
    this.logicalCoreCount,
    this.memoryMb,
    this.storage,
    this.version,
    this.zoneAvailability,
  });

  CloudSqlForMySqlShape.fromJson(core.Map json_)
    : this(
        backupStorageGb: json_['backupStorageGb'] as core.int?,
        edition: json_['edition'] as core.String?,
        egressGbPerMonth: json_['egressGbPerMonth'] as core.String?,
        logicalCoreCount: json_['logicalCoreCount'] as core.int?,
        memoryMb: json_['memoryMb'] as core.int?,
        storage:
            json_.containsKey('storage')
                ? ComputeStorageDescriptor.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
        zoneAvailability: json_['zoneAvailability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupStorageGb != null) 'backupStorageGb': backupStorageGb!,
    if (edition != null) 'edition': edition!,
    if (egressGbPerMonth != null) 'egressGbPerMonth': egressGbPerMonth!,
    if (logicalCoreCount != null) 'logicalCoreCount': logicalCoreCount!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (storage != null) 'storage': storage!,
    if (version != null) 'version': version!,
    if (zoneAvailability != null) 'zoneAvailability': zoneAvailability!,
  };
}

/// Cloud SQL for PostgreSQL database shape.
class CloudSqlForPostgreSqlShape {
  /// Predicted backup storage size in GiB.
  ///
  /// Output only.
  core.int? backupStorageGb;

  /// Cloud SQL edition.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_EDITION_UNSPECIFIED" : An unspecified Cloud SQL edition.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE" : Provides all core capabilities of Cloud
  /// SQL and is suitable for applications requiring a balance of performance,
  /// availability, and cost.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE_PLUS" : Provides the best performance and
  /// availability to run applications requiring the highest level of
  /// availability and performance in addition to the capabilities of the Cloud
  /// SQL Enterprise edition. Note: SQL Server is not available in Enterprise
  /// Plus edition. For SQL Server, Enterprise will always be recommended.
  core.String? edition;

  /// Predicted Network Out traffic GiB per month.
  ///
  /// Output only.
  core.String? egressGbPerMonth;

  /// Number of logical cores.
  ///
  /// Output only.
  core.int? logicalCoreCount;

  /// Predicted amount of memory in MiB.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Predicted storage shape.
  ///
  /// Output only.
  ComputeStorageDescriptor? storage;

  /// PostgreSql version to be used on the Cloud SQL for PostgreSql instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "POSTGRESQL_VERSION_UNSPECIFIED" : Unspecified PostgreSQL version.
  /// - "POSTGRESQL_VERSION_9_6" : PostgreSQL 9.6.
  /// - "POSTGRESQL_VERSION_10" : PostgreSQL 10
  /// - "POSTGRESQL_VERSION_11" : PostgreSQL 11
  /// - "POSTGRESQL_VERSION_12" : PostgreSQL 12
  /// - "POSTGRESQL_VERSION_13" : PostgreSQL 13
  /// - "POSTGRESQL_VERSION_14" : PostgreSQL 14
  /// - "POSTGRESQL_VERSION_15" : PostgreSQL 15
  core.String? version;

  /// Cloud SQL zone availability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_UNSPECIFIED" : An unspecified Cloud SQL
  /// zone availability.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_ZONAL" : The instance serves data from only
  /// one zone. In case of outage, no failover. Not recommended for production.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_REGIONAL" : The instance can serve data
  /// from multiple zones in a region. Highly available. Automatic failover to
  /// another zone within your selected region. Recommended for production
  /// instances. Increases cost.
  core.String? zoneAvailability;

  CloudSqlForPostgreSqlShape({
    this.backupStorageGb,
    this.edition,
    this.egressGbPerMonth,
    this.logicalCoreCount,
    this.memoryMb,
    this.storage,
    this.version,
    this.zoneAvailability,
  });

  CloudSqlForPostgreSqlShape.fromJson(core.Map json_)
    : this(
        backupStorageGb: json_['backupStorageGb'] as core.int?,
        edition: json_['edition'] as core.String?,
        egressGbPerMonth: json_['egressGbPerMonth'] as core.String?,
        logicalCoreCount: json_['logicalCoreCount'] as core.int?,
        memoryMb: json_['memoryMb'] as core.int?,
        storage:
            json_.containsKey('storage')
                ? ComputeStorageDescriptor.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
        zoneAvailability: json_['zoneAvailability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupStorageGb != null) 'backupStorageGb': backupStorageGb!,
    if (edition != null) 'edition': edition!,
    if (egressGbPerMonth != null) 'egressGbPerMonth': egressGbPerMonth!,
    if (logicalCoreCount != null) 'logicalCoreCount': logicalCoreCount!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (storage != null) 'storage': storage!,
    if (version != null) 'version': version!,
    if (zoneAvailability != null) 'zoneAvailability': zoneAvailability!,
  };
}

/// Cloud SQL for SQL Server database shape.
class CloudSqlForSqlServerShape {
  /// Predicted backup storage size in GiB.
  ///
  /// Output only.
  core.int? backupStorageGb;

  /// Cloud SQL edition.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_EDITION_UNSPECIFIED" : An unspecified Cloud SQL edition.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE" : Provides all core capabilities of Cloud
  /// SQL and is suitable for applications requiring a balance of performance,
  /// availability, and cost.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE_PLUS" : Provides the best performance and
  /// availability to run applications requiring the highest level of
  /// availability and performance in addition to the capabilities of the Cloud
  /// SQL Enterprise edition. Note: SQL Server is not available in Enterprise
  /// Plus edition. For SQL Server, Enterprise will always be recommended.
  core.String? edition;

  /// Predicted Network Out traffic GiB per month.
  ///
  /// Output only.
  core.String? egressGbPerMonth;

  /// Number of logical cores.
  ///
  /// Output only.
  core.int? logicalCoreCount;

  /// Predicted amount of memory in MiB.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Whether simultaneous multithreading is enabled (see
  /// https://cloud.google.com/sql/docs/sqlserver/create-instance#smt-create-instance).
  ///
  /// Output only.
  core.bool? smtEnabled;

  /// Predicted storage shape.
  ///
  /// Output only.
  ComputeStorageDescriptor? storage;

  /// Microsoft SQL Server version to be used on the Cloud SQL for SQL server
  /// instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_SERVER_VERSION_UNSPECIFIED" : Unspecified SQL Server version.
  /// - "SQL_SERVER_VERSION_2017_EXPRESS" : The database version is SQL Server
  /// 2017 Express.
  /// - "SQL_SERVER_VERSION_2017_WEB" : The database version is SQL Server 2017
  /// Web.
  /// - "SQL_SERVER_VERSION_2017_STANDARD" : The database version is SQL Server
  /// 2017 Standard.
  /// - "SQL_SERVER_VERSION_2017_ENTERPRISE" : The database version is SQL
  /// Server 2017 Enterprise.
  /// - "SQL_SERVER_VERSION_2019_EXPRESS" : The database version is SQL Server
  /// 2019 Express.
  /// - "SQL_SERVER_VERSION_2019_WEB" : The database version is SQL Server 2019
  /// Web.
  /// - "SQL_SERVER_VERSION_2019_STANDARD" : The database version is SQL Server
  /// 2019 Standard.
  /// - "SQL_SERVER_VERSION_2019_ENTERPRISE" : The database version is SQL
  /// Server 2019 Enterprise.
  /// - "SQL_SERVER_VERSION_2022_EXPRESS" : The database version is SQL Server
  /// 2022 Express.
  /// - "SQL_SERVER_VERSION_2022_WEB" : The database version is SQL Server 2022
  /// Web.
  /// - "SQL_SERVER_VERSION_2022_STANDARD" : The database version is SQL Server
  /// 2022 Standard.
  /// - "SQL_SERVER_VERSION_2022_ENTERPRISE" : The database version is SQL
  /// Server 2022 Enterprise.
  core.String? version;

  /// Cloud SQL zone availability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_UNSPECIFIED" : An unspecified Cloud SQL
  /// zone availability.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_ZONAL" : The instance serves data from only
  /// one zone. In case of outage, no failover. Not recommended for production.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_REGIONAL" : The instance can serve data
  /// from multiple zones in a region. Highly available. Automatic failover to
  /// another zone within your selected region. Recommended for production
  /// instances. Increases cost.
  core.String? zoneAvailability;

  CloudSqlForSqlServerShape({
    this.backupStorageGb,
    this.edition,
    this.egressGbPerMonth,
    this.logicalCoreCount,
    this.memoryMb,
    this.smtEnabled,
    this.storage,
    this.version,
    this.zoneAvailability,
  });

  CloudSqlForSqlServerShape.fromJson(core.Map json_)
    : this(
        backupStorageGb: json_['backupStorageGb'] as core.int?,
        edition: json_['edition'] as core.String?,
        egressGbPerMonth: json_['egressGbPerMonth'] as core.String?,
        logicalCoreCount: json_['logicalCoreCount'] as core.int?,
        memoryMb: json_['memoryMb'] as core.int?,
        smtEnabled: json_['smtEnabled'] as core.bool?,
        storage:
            json_.containsKey('storage')
                ? ComputeStorageDescriptor.fromJson(
                  json_['storage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
        zoneAvailability: json_['zoneAvailability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupStorageGb != null) 'backupStorageGb': backupStorageGb!,
    if (edition != null) 'edition': edition!,
    if (egressGbPerMonth != null) 'egressGbPerMonth': egressGbPerMonth!,
    if (logicalCoreCount != null) 'logicalCoreCount': logicalCoreCount!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (smtEnabled != null) 'smtEnabled': smtEnabled!,
    if (storage != null) 'storage': storage!,
    if (version != null) 'version': version!,
    if (zoneAvailability != null) 'zoneAvailability': zoneAvailability!,
  };
}

/// Compute engine migration target.
class ComputeEngineMigrationTarget {
  /// Description of the suggested shape for the migration target.
  ComputeEngineShapeDescriptor? shape;

  ComputeEngineMigrationTarget({this.shape});

  ComputeEngineMigrationTarget.fromJson(core.Map json_)
    : this(
        shape:
            json_.containsKey('shape')
                ? ComputeEngineShapeDescriptor.fromJson(
                  json_['shape'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (shape != null) 'shape': shape!,
  };
}

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences {
  /// License type to consider when calculating costs for operating systems.
  ///
  /// If unspecified, costs are calculated based on the default licensing plan.
  /// If os_pricing_preferences is specified, it overrides this field.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified (default value).
  /// - "LICENSE_TYPE_DEFAULT" : Default Google Cloud licensing plan. Licensing
  /// is charged per usage. This a good value to start with.
  /// - "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE" : Bring-your-own-license (BYOL)
  /// plan. User provides the license.
  core.String? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  MachinePreferences? machinePreferences;

  /// Preferences for multithreading support on Windows Server.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MULTITHREADING_UNSPECIFIED" : Same as MULTITHREADING_AUTO.
  /// - "MULTITHREADING_DISABLED" : Disable simultaneous multithreading.
  /// - "MULTITHREADING_ENABLED" : Enable simultaneous multithreading.
  /// - "MULTITHREADING_DISABLED_WITH_COMPENSATION" : Disable simultaneous
  /// multithreading and increase number of VCPUs to compensate.
  core.String? multithreading;

  /// Pricing options for OS images.
  ///
  /// Optional.
  OperatingSystemPricingPreferences? osPricingPreferences;

  /// Persistent disk type to use.
  ///
  /// If unspecified (default), all types are considered, based on available
  /// usage data.
  /// Possible string values are:
  /// - "PERSISTENT_DISK_TYPE_UNSPECIFIED" : Unspecified. Fallback to default
  /// value based on context.
  /// - "PERSISTENT_DISK_TYPE_STANDARD" : Standard HDD Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_BALANCED" : Balanced Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_SSD" : SSD Persistent Disk.
  core.String? persistentDiskType;

  ComputeEnginePreferences({
    this.licenseType,
    this.machinePreferences,
    this.multithreading,
    this.osPricingPreferences,
    this.persistentDiskType,
  });

  ComputeEnginePreferences.fromJson(core.Map json_)
    : this(
        licenseType: json_['licenseType'] as core.String?,
        machinePreferences:
            json_.containsKey('machinePreferences')
                ? MachinePreferences.fromJson(
                  json_['machinePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multithreading: json_['multithreading'] as core.String?,
        osPricingPreferences:
            json_.containsKey('osPricingPreferences')
                ? OperatingSystemPricingPreferences.fromJson(
                  json_['osPricingPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        persistentDiskType: json_['persistentDiskType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (licenseType != null) 'licenseType': licenseType!,
    if (machinePreferences != null) 'machinePreferences': machinePreferences!,
    if (multithreading != null) 'multithreading': multithreading!,
    if (osPricingPreferences != null)
      'osPricingPreferences': osPricingPreferences!,
    if (persistentDiskType != null) 'persistentDiskType': persistentDiskType!,
  };
}

/// Compute Engine target shape descriptor.
class ComputeEngineShapeDescriptor {
  /// Number of logical cores.
  ///
  /// Output only.
  core.int? logicalCoreCount;

  /// Compute Engine machine type.
  ///
  /// Output only.
  core.String? machineType;

  /// Memory in mebibytes.
  ///
  /// Output only.
  core.int? memoryMb;

  /// Number of physical cores.
  ///
  /// Output only.
  core.int? physicalCoreCount;

  /// Compute Engine machine series.
  ///
  /// Output only.
  core.String? series;

  /// Whether simultaneous multithreading is enabled (see
  /// https://cloud.google.com/compute/docs/instances/set-threads-per-core).
  ///
  /// Output only.
  core.bool? smtEnabled;

  /// Compute Engine storage.
  ///
  /// Never empty.
  ///
  /// Output only.
  core.List<ComputeStorageDescriptor>? storage;

  ComputeEngineShapeDescriptor({
    this.logicalCoreCount,
    this.machineType,
    this.memoryMb,
    this.physicalCoreCount,
    this.series,
    this.smtEnabled,
    this.storage,
  });

  ComputeEngineShapeDescriptor.fromJson(core.Map json_)
    : this(
        logicalCoreCount: json_['logicalCoreCount'] as core.int?,
        machineType: json_['machineType'] as core.String?,
        memoryMb: json_['memoryMb'] as core.int?,
        physicalCoreCount: json_['physicalCoreCount'] as core.int?,
        series: json_['series'] as core.String?,
        smtEnabled: json_['smtEnabled'] as core.bool?,
        storage:
            (json_['storage'] as core.List?)
                ?.map(
                  (value) => ComputeStorageDescriptor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (logicalCoreCount != null) 'logicalCoreCount': logicalCoreCount!,
    if (machineType != null) 'machineType': machineType!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (physicalCoreCount != null) 'physicalCoreCount': physicalCoreCount!,
    if (series != null) 'series': series!,
    if (smtEnabled != null) 'smtEnabled': smtEnabled!,
    if (storage != null) 'storage': storage!,
  };
}

/// Compute engine sole tenant migration target.
typedef ComputeEngineSoleTenantMigrationTarget = $Empty;

/// Compute Engine storage option descriptor.
class ComputeStorageDescriptor {
  /// Disk size in GiB.
  core.int? sizeGb;

  /// Disk type backing the storage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PERSISTENT_DISK_TYPE_UNSPECIFIED" : Unspecified. Fallback to default
  /// value based on context.
  /// - "PERSISTENT_DISK_TYPE_STANDARD" : Standard HDD Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_BALANCED" : Balanced Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_SSD" : SSD Persistent Disk.
  core.String? type;

  ComputeStorageDescriptor({this.sizeGb, this.type});

  ComputeStorageDescriptor.fromJson(core.Map json_)
    : this(
        sizeGb: json_['sizeGb'] as core.int?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sizeGb != null) 'sizeGb': sizeGb!,
    if (type != null) 'type': type!,
  };
}

/// CPU usage sample.
typedef CpuUsageSample = $CpuUsageSample;

/// Contains a single output file of type CSV.
class CsvOutputFile {
  /// Number of columns in the file.
  ///
  /// Output only.
  core.int? columnsCount;

  /// Number of rows in the file.
  ///
  /// Output only.
  core.int? rowCount;

  /// Signed URI destination.
  ///
  /// Output only.
  SignedUri? signedUri;

  CsvOutputFile({this.columnsCount, this.rowCount, this.signedUri});

  CsvOutputFile.fromJson(core.Map json_)
    : this(
        columnsCount: json_['columnsCount'] as core.int?,
        rowCount: json_['rowCount'] as core.int?,
        signedUri:
            json_.containsKey('signedUri')
                ? SignedUri.fromJson(
                  json_['signedUri'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columnsCount != null) 'columnsCount': columnsCount!,
    if (rowCount != null) 'rowCount': rowCount!,
    if (signedUri != null) 'signedUri': signedUri!,
  };
}

/// Usage data aggregation for a single day.
class DailyResourceUsageAggregation {
  /// CPU usage.
  DailyResourceUsageAggregationCPU? cpu;

  /// Aggregation date.
  ///
  /// Day boundaries are at midnight UTC.
  Date? date;

  /// Disk usage.
  DailyResourceUsageAggregationDisk? disk;

  /// Memory usage.
  DailyResourceUsageAggregationMemory? memory;

  /// Network usage.
  DailyResourceUsageAggregationNetwork? network;

  DailyResourceUsageAggregation({
    this.cpu,
    this.date,
    this.disk,
    this.memory,
    this.network,
  });

  DailyResourceUsageAggregation.fromJson(core.Map json_)
    : this(
        cpu:
            json_.containsKey('cpu')
                ? DailyResourceUsageAggregationCPU.fromJson(
                  json_['cpu'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        date:
            json_.containsKey('date')
                ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disk:
            json_.containsKey('disk')
                ? DailyResourceUsageAggregationDisk.fromJson(
                  json_['disk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memory:
            json_.containsKey('memory')
                ? DailyResourceUsageAggregationMemory.fromJson(
                  json_['memory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        network:
            json_.containsKey('network')
                ? DailyResourceUsageAggregationNetwork.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpu != null) 'cpu': cpu!,
    if (date != null) 'date': date!,
    if (disk != null) 'disk': disk!,
    if (memory != null) 'memory': memory!,
    if (network != null) 'network': network!,
  };
}

/// Statistical aggregation of CPU usage.
class DailyResourceUsageAggregationCPU {
  /// CPU utilization percentage.
  DailyResourceUsageAggregationStats? utilizationPercentage;

  DailyResourceUsageAggregationCPU({this.utilizationPercentage});

  DailyResourceUsageAggregationCPU.fromJson(core.Map json_)
    : this(
        utilizationPercentage:
            json_.containsKey('utilizationPercentage')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['utilizationPercentage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (utilizationPercentage != null)
      'utilizationPercentage': utilizationPercentage!,
  };
}

/// Statistical aggregation of disk usage.
class DailyResourceUsageAggregationDisk {
  /// Disk I/O operations per second.
  DailyResourceUsageAggregationStats? iops;

  /// Disk read I/O operations per second.
  DailyResourceUsageAggregationStats? readIops;

  /// Disk write I/O operations per second.
  DailyResourceUsageAggregationStats? writeIops;

  DailyResourceUsageAggregationDisk({this.iops, this.readIops, this.writeIops});

  DailyResourceUsageAggregationDisk.fromJson(core.Map json_)
    : this(
        iops:
            json_.containsKey('iops')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['iops'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readIops:
            json_.containsKey('readIops')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['readIops'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        writeIops:
            json_.containsKey('writeIops')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['writeIops'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (iops != null) 'iops': iops!,
    if (readIops != null) 'readIops': readIops!,
    if (writeIops != null) 'writeIops': writeIops!,
  };
}

/// Statistical aggregation of memory usage.
class DailyResourceUsageAggregationMemory {
  /// Memory utilization percentage.
  DailyResourceUsageAggregationStats? utilizationPercentage;

  DailyResourceUsageAggregationMemory({this.utilizationPercentage});

  DailyResourceUsageAggregationMemory.fromJson(core.Map json_)
    : this(
        utilizationPercentage:
            json_.containsKey('utilizationPercentage')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['utilizationPercentage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (utilizationPercentage != null)
      'utilizationPercentage': utilizationPercentage!,
  };
}

/// Statistical aggregation of network usage.
class DailyResourceUsageAggregationNetwork {
  /// Network egress in B/s.
  DailyResourceUsageAggregationStats? egressBps;

  /// Network ingress in B/s.
  DailyResourceUsageAggregationStats? ingressBps;

  DailyResourceUsageAggregationNetwork({this.egressBps, this.ingressBps});

  DailyResourceUsageAggregationNetwork.fromJson(core.Map json_)
    : this(
        egressBps:
            json_.containsKey('egressBps')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['egressBps'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ingressBps:
            json_.containsKey('ingressBps')
                ? DailyResourceUsageAggregationStats.fromJson(
                  json_['ingressBps'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (egressBps != null) 'egressBps': egressBps!,
    if (ingressBps != null) 'ingressBps': ingressBps!,
  };
}

/// Statistical aggregation of samples for a single resource usage.
typedef DailyResourceUsageAggregationStats =
    $DailyResourceUsageAggregationStats;

/// The details of a database deployment asset.
class DatabaseDeploymentDetails {
  /// Aggregated stats for the database deployment.
  ///
  /// Output only.
  DatabaseDeploymentDetailsAggregatedStats? aggregatedStats;

  /// Details of an AWS RDS instance.
  ///
  /// Optional.
  AwsRds? awsRds;

  /// The database deployment edition.
  core.String? edition;

  /// The database deployment generated ID.
  core.String? generatedId;

  /// A manual unique ID set by the user.
  core.String? manualUniqueId;

  /// Details of a MYSQL database deployment.
  MysqlDatabaseDeployment? mysql;

  /// Details of a PostgreSQL database deployment.
  PostgreSqlDatabaseDeployment? postgresql;

  /// Details of a Microsoft SQL Server database deployment.
  SqlServerDatabaseDeployment? sqlServer;

  /// Details of the database deployment topology.
  DatabaseDeploymentTopology? topology;

  /// The database deployment version.
  core.String? version;

  DatabaseDeploymentDetails({
    this.aggregatedStats,
    this.awsRds,
    this.edition,
    this.generatedId,
    this.manualUniqueId,
    this.mysql,
    this.postgresql,
    this.sqlServer,
    this.topology,
    this.version,
  });

  DatabaseDeploymentDetails.fromJson(core.Map json_)
    : this(
        aggregatedStats:
            json_.containsKey('aggregatedStats')
                ? DatabaseDeploymentDetailsAggregatedStats.fromJson(
                  json_['aggregatedStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        awsRds:
            json_.containsKey('awsRds')
                ? AwsRds.fromJson(
                  json_['awsRds'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        edition: json_['edition'] as core.String?,
        generatedId: json_['generatedId'] as core.String?,
        manualUniqueId: json_['manualUniqueId'] as core.String?,
        mysql:
            json_.containsKey('mysql')
                ? MysqlDatabaseDeployment.fromJson(
                  json_['mysql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        postgresql:
            json_.containsKey('postgresql')
                ? PostgreSqlDatabaseDeployment.fromJson(
                  json_['postgresql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sqlServer:
            json_.containsKey('sqlServer')
                ? SqlServerDatabaseDeployment.fromJson(
                  json_['sqlServer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        topology:
            json_.containsKey('topology')
                ? DatabaseDeploymentTopology.fromJson(
                  json_['topology'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregatedStats != null) 'aggregatedStats': aggregatedStats!,
    if (awsRds != null) 'awsRds': awsRds!,
    if (edition != null) 'edition': edition!,
    if (generatedId != null) 'generatedId': generatedId!,
    if (manualUniqueId != null) 'manualUniqueId': manualUniqueId!,
    if (mysql != null) 'mysql': mysql!,
    if (postgresql != null) 'postgresql': postgresql!,
    if (sqlServer != null) 'sqlServer': sqlServer!,
    if (topology != null) 'topology': topology!,
    if (version != null) 'version': version!,
  };
}

/// Aggregated stats for the database deployment.
typedef DatabaseDeploymentDetailsAggregatedStats =
    $DatabaseDeploymentDetailsAggregatedStats;

/// Details of database deployment's topology.
class DatabaseDeploymentTopology {
  /// Number of total logical cores.
  ///
  /// Optional.
  core.int? coreCount;

  /// Number of total logical cores limited by db deployment.
  ///
  /// Optional.
  core.int? coreLimit;

  /// Disk allocated in bytes.
  ///
  /// Optional.
  core.String? diskAllocatedBytes;

  /// Disk used in bytes.
  ///
  /// Optional.
  core.String? diskUsedBytes;

  /// List of database instances.
  ///
  /// Optional.
  core.List<DatabaseInstance>? instances;

  /// Total memory in bytes.
  ///
  /// Optional.
  core.String? memoryBytes;

  /// Total memory in bytes limited by db deployment.
  ///
  /// Optional.
  core.String? memoryLimitBytes;

  /// Number of total physical cores.
  ///
  /// Optional.
  core.int? physicalCoreCount;

  /// Number of total physical cores limited by db deployment.
  ///
  /// Optional.
  core.int? physicalCoreLimit;

  DatabaseDeploymentTopology({
    this.coreCount,
    this.coreLimit,
    this.diskAllocatedBytes,
    this.diskUsedBytes,
    this.instances,
    this.memoryBytes,
    this.memoryLimitBytes,
    this.physicalCoreCount,
    this.physicalCoreLimit,
  });

  DatabaseDeploymentTopology.fromJson(core.Map json_)
    : this(
        coreCount: json_['coreCount'] as core.int?,
        coreLimit: json_['coreLimit'] as core.int?,
        diskAllocatedBytes: json_['diskAllocatedBytes'] as core.String?,
        diskUsedBytes: json_['diskUsedBytes'] as core.String?,
        instances:
            (json_['instances'] as core.List?)
                ?.map(
                  (value) => DatabaseInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        memoryBytes: json_['memoryBytes'] as core.String?,
        memoryLimitBytes: json_['memoryLimitBytes'] as core.String?,
        physicalCoreCount: json_['physicalCoreCount'] as core.int?,
        physicalCoreLimit: json_['physicalCoreLimit'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coreCount != null) 'coreCount': coreCount!,
    if (coreLimit != null) 'coreLimit': coreLimit!,
    if (diskAllocatedBytes != null) 'diskAllocatedBytes': diskAllocatedBytes!,
    if (diskUsedBytes != null) 'diskUsedBytes': diskUsedBytes!,
    if (instances != null) 'instances': instances!,
    if (memoryBytes != null) 'memoryBytes': memoryBytes!,
    if (memoryLimitBytes != null) 'memoryLimitBytes': memoryLimitBytes!,
    if (physicalCoreCount != null) 'physicalCoreCount': physicalCoreCount!,
    if (physicalCoreLimit != null) 'physicalCoreLimit': physicalCoreLimit!,
  };
}

/// Details of a logical database.
class DatabaseDetails {
  /// The allocated storage for the database in bytes.
  core.String? allocatedStorageBytes;

  /// The name of the database.
  core.String? databaseName;

  /// The parent database deployment that contains the logical database.
  DatabaseDetailsParentDatabaseDeployment? parentDatabaseDeployment;

  /// The database schemas.
  core.List<DatabaseSchema>? schemas;

  DatabaseDetails({
    this.allocatedStorageBytes,
    this.databaseName,
    this.parentDatabaseDeployment,
    this.schemas,
  });

  DatabaseDetails.fromJson(core.Map json_)
    : this(
        allocatedStorageBytes: json_['allocatedStorageBytes'] as core.String?,
        databaseName: json_['databaseName'] as core.String?,
        parentDatabaseDeployment:
            json_.containsKey('parentDatabaseDeployment')
                ? DatabaseDetailsParentDatabaseDeployment.fromJson(
                  json_['parentDatabaseDeployment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemas:
            (json_['schemas'] as core.List?)
                ?.map(
                  (value) => DatabaseSchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedStorageBytes != null)
      'allocatedStorageBytes': allocatedStorageBytes!,
    if (databaseName != null) 'databaseName': databaseName!,
    if (parentDatabaseDeployment != null)
      'parentDatabaseDeployment': parentDatabaseDeployment!,
    if (schemas != null) 'schemas': schemas!,
  };
}

/// The identifiers of the parent database deployment.
class DatabaseDetailsParentDatabaseDeployment {
  /// The parent database deployment generated ID.
  core.String? generatedId;

  /// The parent database deployment optional manual unique ID set by the user.
  core.String? manualUniqueId;

  DatabaseDetailsParentDatabaseDeployment({
    this.generatedId,
    this.manualUniqueId,
  });

  DatabaseDetailsParentDatabaseDeployment.fromJson(core.Map json_)
    : this(
        generatedId: json_['generatedId'] as core.String?,
        manualUniqueId: json_['manualUniqueId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (generatedId != null) 'generatedId': generatedId!,
    if (manualUniqueId != null) 'manualUniqueId': manualUniqueId!,
  };
}

/// Details of a database instance.
class DatabaseInstance {
  /// The instance's name.
  core.String? instanceName;

  /// Networking details.
  ///
  /// Optional.
  DatabaseInstanceNetwork? network;

  /// The instance role in the database engine.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Unspecified.
  /// - "PRIMARY" : Primary.
  /// - "SECONDARY" : Secondary.
  /// - "ARBITER" : Arbiter.
  core.String? role;

  DatabaseInstance({this.instanceName, this.network, this.role});

  DatabaseInstance.fromJson(core.Map json_)
    : this(
        instanceName: json_['instanceName'] as core.String?,
        network:
            json_.containsKey('network')
                ? DatabaseInstanceNetwork.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (instanceName != null) 'instanceName': instanceName!,
    if (network != null) 'network': network!,
    if (role != null) 'role': role!,
  };
}

/// Network details of a database instance.
typedef DatabaseInstanceNetwork = $DatabaseInstanceNetwork;

/// Details of a group of database objects.
class DatabaseObjects {
  /// The category of the objects.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Unspecified type.
  /// - "TABLE" : Table.
  /// - "INDEX" : Index.
  /// - "CONSTRAINTS" : Constraints.
  /// - "VIEWS" : Views.
  /// - "SOURCE_CODE" : Source code, e.g. procedures.
  /// - "OTHER" : Uncategorized objects.
  core.String? category;

  /// The number of objects.
  core.String? count;

  DatabaseObjects({this.category, this.count});

  DatabaseObjects.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        count: json_['count'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (category != null) 'category': category!,
    if (count != null) 'count': count!,
  };
}

/// DatabasePreferences enables you to create sets of preferences for your
/// migrated databases.
class DatabasePreferences {
  /// Preferences for target SQL Server on Cloud SQL when migrating from source
  /// Microsoft SQL server.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlSqlServer? mssqlToCloudSqlForSqlServerPreferences;

  /// Preferences for target MySQL on Cloud SQL when migrating from source
  /// MySQL.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlMySql? mysqlToCloudSqlForMysqlPreferences;

  /// Preferences for target PostgreSQL on Cloud SQL when migrating from source
  /// PostgreSQL.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlPostgreSql?
  postgresqlToCloudSqlForPostgresqlPreferences;

  DatabasePreferences({
    this.mssqlToCloudSqlForSqlServerPreferences,
    this.mysqlToCloudSqlForMysqlPreferences,
    this.postgresqlToCloudSqlForPostgresqlPreferences,
  });

  DatabasePreferences.fromJson(core.Map json_)
    : this(
        mssqlToCloudSqlForSqlServerPreferences:
            json_.containsKey('mssqlToCloudSqlForSqlServerPreferences')
                ? DatabasePreferencesCloudSqlSqlServer.fromJson(
                  json_['mssqlToCloudSqlForSqlServerPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        mysqlToCloudSqlForMysqlPreferences:
            json_.containsKey('mysqlToCloudSqlForMysqlPreferences')
                ? DatabasePreferencesCloudSqlMySql.fromJson(
                  json_['mysqlToCloudSqlForMysqlPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        postgresqlToCloudSqlForPostgresqlPreferences:
            json_.containsKey('postgresqlToCloudSqlForPostgresqlPreferences')
                ? DatabasePreferencesCloudSqlPostgreSql.fromJson(
                  json_['postgresqlToCloudSqlForPostgresqlPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mssqlToCloudSqlForSqlServerPreferences != null)
      'mssqlToCloudSqlForSqlServerPreferences':
          mssqlToCloudSqlForSqlServerPreferences!,
    if (mysqlToCloudSqlForMysqlPreferences != null)
      'mysqlToCloudSqlForMysqlPreferences': mysqlToCloudSqlForMysqlPreferences!,
    if (postgresqlToCloudSqlForPostgresqlPreferences != null)
      'postgresqlToCloudSqlForPostgresqlPreferences':
          postgresqlToCloudSqlForPostgresqlPreferences!,
  };
}

/// Preferences common to Cloud SQL databases.
class DatabasePreferencesCloudSqlCommon {
  /// Preferences for database backups.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlCommonBackup? backup;

  /// Commitment plan to consider when calculating costs.
  ///
  /// Only regular CUDs (not flexible) are currently available.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Unspecified commitment plan.
  /// - "COMMITMENT_PLAN_NONE" : No commitment plan.
  /// - "COMMITMENT_PLAN_ONE_YEAR" : 1-year regular committed use discount.
  /// - "COMMITMENT_PLAN_THREE_YEARS" : 3-year regular committed use discount.
  /// - "COMMITMENT_PLAN_FLEXIBLE_ONE_YEAR" : 1-year flexible committed use
  /// discount. While not supported in the v1 API, this value is converted to
  /// UNSPECIFIED in conversions to the v1 API.
  /// - "COMMITMENT_PLAN_FLEXIBLE_THREE_YEARS" : 3-year flexible committed use
  /// discount. While not supported in the v1 API, this value is converted to
  /// UNSPECIFIED in conversions to the v1 API.
  core.String? commitmentPlan;

  /// Preferred Cloud SQL edition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLOUD_SQL_EDITION_UNSPECIFIED" : An unspecified Cloud SQL edition.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE" : Provides all core capabilities of Cloud
  /// SQL and is suitable for applications requiring a balance of performance,
  /// availability, and cost.
  /// - "CLOUD_SQL_EDITION_ENTERPRISE_PLUS" : Provides the best performance and
  /// availability to run applications requiring the highest level of
  /// availability and performance in addition to the capabilities of the Cloud
  /// SQL Enterprise edition. Note: SQL Server is not available in Enterprise
  /// Plus edition. For SQL Server, Enterprise will always be recommended.
  core.String? edition;

  /// Persistent disk type to use.
  ///
  /// If unspecified, a disk type is recommended based on available usage data.
  /// For SQL Server, only SSD is available. For MySQL and PostgreSQL, only
  /// STANDARD (HDD) and SSD types are available.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PERSISTENT_DISK_TYPE_UNSPECIFIED" : Unspecified. Fallback to default
  /// value based on context.
  /// - "PERSISTENT_DISK_TYPE_STANDARD" : Standard HDD Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_BALANCED" : Balanced Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_SSD" : SSD Persistent Disk.
  core.String? persistentDiskType;

  /// Sizing optimization strategy of the database.
  ///
  /// Currently supported for Cloud SQL are just two values:
  /// SIZING_OPTIMIZATION_STRATEGY_MODERATE and
  /// SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE.
  /// SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED will behave like
  /// SIZING_OPTIMIZATION_STRATEGY_MODERATE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED" : Unspecified (default
  /// value).
  /// - "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE" : No optimization applied.
  /// Virtual machine sizing matches as closely as possible the machine shape on
  /// the source site, not considering any actual performance data.
  /// - "SIZING_OPTIMIZATION_STRATEGY_MODERATE" : Virtual machine sizing will
  /// match the reported usage and shape, with some slack. This a good value to
  /// start with.
  /// - "SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE" : Virtual machine sizing will
  /// match the reported usage, with little slack. Using this option can help
  /// reduce costs.
  /// - "SIZING_OPTIMIZATION_STRATEGY_CUSTOM" : Virtual machine sizing will be
  /// determined by custom parameters. While not supported in the v1 API, this
  /// value is converted to UNSPECIFIED in conversions to the v1 API.
  core.String? sizingOptimizationStrategy;

  /// Preferred zone availability.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_UNSPECIFIED" : An unspecified Cloud SQL
  /// zone availability.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_ZONAL" : The instance serves data from only
  /// one zone. In case of outage, no failover. Not recommended for production.
  /// - "CLOUD_SQL_ZONE_AVAILABILITY_REGIONAL" : The instance can serve data
  /// from multiple zones in a region. Highly available. Automatic failover to
  /// another zone within your selected region. Recommended for production
  /// instances. Increases cost.
  core.String? zoneAvailability;

  DatabasePreferencesCloudSqlCommon({
    this.backup,
    this.commitmentPlan,
    this.edition,
    this.persistentDiskType,
    this.sizingOptimizationStrategy,
    this.zoneAvailability,
  });

  DatabasePreferencesCloudSqlCommon.fromJson(core.Map json_)
    : this(
        backup:
            json_.containsKey('backup')
                ? DatabasePreferencesCloudSqlCommonBackup.fromJson(
                  json_['backup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        commitmentPlan: json_['commitmentPlan'] as core.String?,
        edition: json_['edition'] as core.String?,
        persistentDiskType: json_['persistentDiskType'] as core.String?,
        sizingOptimizationStrategy:
            json_['sizingOptimizationStrategy'] as core.String?,
        zoneAvailability: json_['zoneAvailability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backup != null) 'backup': backup!,
    if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
    if (edition != null) 'edition': edition!,
    if (persistentDiskType != null) 'persistentDiskType': persistentDiskType!,
    if (sizingOptimizationStrategy != null)
      'sizingOptimizationStrategy': sizingOptimizationStrategy!,
    if (zoneAvailability != null) 'zoneAvailability': zoneAvailability!,
  };
}

/// Preferences for database backups.
class DatabasePreferencesCloudSqlCommonBackup {
  /// Automated backup mode.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKUP_MODE_UNSPECIFIED" : An unspecified database backup mode.
  /// - "BACKUP_MODE_DISABLED" : Automatic backups disabled, no additional
  /// charges for storage.
  /// - "BACKUP_MODE_ENABLED" : Automatic backups enabled, there will be
  /// additional charges for storage.
  core.String? backupMode;

  DatabasePreferencesCloudSqlCommonBackup({this.backupMode});

  DatabasePreferencesCloudSqlCommonBackup.fromJson(core.Map json_)
    : this(backupMode: json_['backupMode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupMode != null) 'backupMode': backupMode!,
  };
}

/// Preferences for MySQL on Cloud SQL.
class DatabasePreferencesCloudSqlMySql {
  /// Preferences to Cloud SQL databases.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlCommon? common;

  DatabasePreferencesCloudSqlMySql({this.common});

  DatabasePreferencesCloudSqlMySql.fromJson(core.Map json_)
    : this(
        common:
            json_.containsKey('common')
                ? DatabasePreferencesCloudSqlCommon.fromJson(
                  json_['common'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (common != null) 'common': common!,
  };
}

/// Preferences for PostgreSQL on Cloud SQL.
class DatabasePreferencesCloudSqlPostgreSql {
  /// Preferences to Cloud SQL databases.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlCommon? common;

  DatabasePreferencesCloudSqlPostgreSql({this.common});

  DatabasePreferencesCloudSqlPostgreSql.fromJson(core.Map json_)
    : this(
        common:
            json_.containsKey('common')
                ? DatabasePreferencesCloudSqlCommon.fromJson(
                  json_['common'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (common != null) 'common': common!,
  };
}

/// Preferences for SQL Server on Cloud SQL.
class DatabasePreferencesCloudSqlSqlServer {
  /// Preferences to Cloud SQL databases.
  ///
  /// Optional.
  DatabasePreferencesCloudSqlCommon? common;

  /// Preferences for multithreading support.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MULTITHREADING_UNSPECIFIED" : Same as MULTITHREADING_AUTO.
  /// - "MULTITHREADING_DISABLED" : Disable simultaneous multithreading.
  /// - "MULTITHREADING_ENABLED" : Enable simultaneous multithreading.
  /// - "MULTITHREADING_DISABLED_WITH_COMPENSATION" : Disable simultaneous
  /// multithreading and increase number of VCPUs to compensate.
  core.String? multithreading;

  /// Edition of Microsoft SQL version that is used on a Cloud SQL for SQL
  /// server instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VERSION_TYPE_UNSPECIFIED" : Unspecified SQL Server version type.
  /// - "VERSION_TYPE_AUTO" : Version will be deduced from the source asset.
  /// - "VERSION_TYPE_EXPRESS" : Version will be one of "Express" versions.
  /// - "VERSION_TYPE_WEB" : Version will be one of "Web" versions.
  /// - "VERSION_TYPE_STANDARD" : Version will be one of "Standard" versions.
  /// - "VERSION_TYPE_ENTERPRISE" : Version will be one of "Enterprise"
  /// versions.
  core.String? versionType;

  DatabasePreferencesCloudSqlSqlServer({
    this.common,
    this.multithreading,
    this.versionType,
  });

  DatabasePreferencesCloudSqlSqlServer.fromJson(core.Map json_)
    : this(
        common:
            json_.containsKey('common')
                ? DatabasePreferencesCloudSqlCommon.fromJson(
                  json_['common'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        multithreading: json_['multithreading'] as core.String?,
        versionType: json_['versionType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (common != null) 'common': common!,
    if (multithreading != null) 'multithreading': multithreading!,
    if (versionType != null) 'versionType': versionType!,
  };
}

/// Details of a database schema.
class DatabaseSchema {
  /// Details of a Mysql schema.
  MySqlSchemaDetails? mysql;

  /// List of details of objects by category.
  core.List<DatabaseObjects>? objects;

  /// Details of a PostgreSql schema.
  PostgreSqlSchemaDetails? postgresql;

  /// The name of the schema.
  core.String? schemaName;

  /// Details of a SqlServer schema.
  SqlServerSchemaDetails? sqlServer;

  /// The total size of tables in bytes.
  core.String? tablesSizeBytes;

  DatabaseSchema({
    this.mysql,
    this.objects,
    this.postgresql,
    this.schemaName,
    this.sqlServer,
    this.tablesSizeBytes,
  });

  DatabaseSchema.fromJson(core.Map json_)
    : this(
        mysql:
            json_.containsKey('mysql')
                ? MySqlSchemaDetails.fromJson(
                  json_['mysql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        objects:
            (json_['objects'] as core.List?)
                ?.map(
                  (value) => DatabaseObjects.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        postgresql:
            json_.containsKey('postgresql')
                ? PostgreSqlSchemaDetails.fromJson(
                  json_['postgresql'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemaName: json_['schemaName'] as core.String?,
        sqlServer:
            json_.containsKey('sqlServer')
                ? SqlServerSchemaDetails.fromJson(
                  json_['sqlServer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tablesSizeBytes: json_['tablesSizeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mysql != null) 'mysql': mysql!,
    if (objects != null) 'objects': objects!,
    if (postgresql != null) 'postgresql': postgresql!,
    if (schemaName != null) 'schemaName': schemaName!,
    if (sqlServer != null) 'sqlServer': sqlServer!,
    if (tablesSizeBytes != null) 'tablesSizeBytes': tablesSizeBytes!,
  };
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

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class DateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  TimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  DateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  DateTime.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        month: json_['month'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
        timeZone:
            json_.containsKey('timeZone')
                ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        utcOffset: json_['utcOffset'] as core.String?,
        year: json_['year'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (hours != null) 'hours': hours!,
    if (minutes != null) 'minutes': minutes!,
    if (month != null) 'month': month!,
    if (nanos != null) 'nanos': nanos!,
    if (seconds != null) 'seconds': seconds!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (utcOffset != null) 'utcOffset': utcOffset!,
    if (year != null) 'year': year!,
  };
}

/// Information about software detected on an asset.
class DetectedSoftware {
  /// Software family of the detected software, e.g. Database, SAP family.
  ///
  /// Output only.
  core.String? softwareFamily;

  /// Software's name.
  ///
  /// Output only.
  core.String? softwareName;

  DetectedSoftware({this.softwareFamily, this.softwareName});

  DetectedSoftware.fromJson(core.Map json_)
    : this(
        softwareFamily: json_['softwareFamily'] as core.String?,
        softwareName: json_['softwareName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (softwareFamily != null) 'softwareFamily': softwareFamily!,
    if (softwareName != null) 'softwareName': softwareName!,
  };
}

/// Represents an installed Migration Center Discovery Client instance.
class DiscoveryClient {
  /// Time when the discovery client was first created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free text description.
  ///
  /// Maximum length is 1000 characters.
  ///
  /// Optional.
  core.String? description;

  /// Free text display name.
  ///
  /// Maximum length is 63 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Errors affecting client functionality.
  ///
  /// Output only.
  core.List<Status>? errors;

  /// Client expiration time in UTC.
  ///
  /// If specified, the backend will not accept new frames after this time.
  ///
  /// Optional.
  core.String? expireTime;

  /// Last heartbeat time.
  ///
  /// Healthy clients are expected to send heartbeats regularly (normally every
  /// few minutes).
  ///
  /// Output only.
  core.String? heartbeatTime;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Full name of this discovery client.
  ///
  /// Output only.
  core.String? name;

  /// The recommended versions of the discovery client.
  ///
  /// Output only.
  core.List<DiscoveryClientDiscoveryClientRecommendedVersion>?
  recommendedVersions;

  /// Service account used by the discovery client for various operation.
  ///
  /// Required.
  core.String? serviceAccount;

  /// This field is intended for internal use.
  ///
  /// Output only.
  core.String? signalsEndpoint;

  /// Full name of the source object associated with this discovery client.
  ///
  /// Required.
  core.String? source;

  /// Current state of the discovery client.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Client state is unspecified.
  /// - "ACTIVE" : Client is active.
  /// - "OFFLINE" : Client is offline.
  /// - "DEGRADED" : Client is in a degraded state. See the `errors` field for
  /// details.
  /// - "EXPIRED" : Client has expired. See the expire_time field for the expire
  /// time.
  core.String? state;

  /// Input only.
  ///
  /// Client time-to-live. If specified, the backend will not accept new frames
  /// after this time. This field is input only. The derived expiration time is
  /// provided as output through the `expire_time` field.
  ///
  /// Optional.
  core.String? ttl;

  /// Time when the discovery client was last updated.
  ///
  /// This value is not updated by heartbeats, to view the last heartbeat time
  /// please refer to the `heartbeat_time` field.
  ///
  /// Output only.
  core.String? updateTime;

  /// Client version, as reported in recent heartbeat.
  ///
  /// Output only.
  core.String? version;

  DiscoveryClient({
    this.createTime,
    this.description,
    this.displayName,
    this.errors,
    this.expireTime,
    this.heartbeatTime,
    this.labels,
    this.name,
    this.recommendedVersions,
    this.serviceAccount,
    this.signalsEndpoint,
    this.source,
    this.state,
    this.ttl,
    this.updateTime,
    this.version,
  });

  DiscoveryClient.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        expireTime: json_['expireTime'] as core.String?,
        heartbeatTime: json_['heartbeatTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        recommendedVersions:
            (json_['recommendedVersions'] as core.List?)
                ?.map(
                  (value) =>
                      DiscoveryClientDiscoveryClientRecommendedVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        serviceAccount: json_['serviceAccount'] as core.String?,
        signalsEndpoint: json_['signalsEndpoint'] as core.String?,
        source: json_['source'] as core.String?,
        state: json_['state'] as core.String?,
        ttl: json_['ttl'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (errors != null) 'errors': errors!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (heartbeatTime != null) 'heartbeatTime': heartbeatTime!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (recommendedVersions != null)
      'recommendedVersions': recommendedVersions!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (signalsEndpoint != null) 'signalsEndpoint': signalsEndpoint!,
    if (source != null) 'source': source!,
    if (state != null) 'state': state!,
    if (ttl != null) 'ttl': ttl!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// Discovery client recommended version.
class DiscoveryClientDiscoveryClientRecommendedVersion {
  /// The URI of the discovery client version.
  ///
  /// Output only.
  core.String? uri;

  /// The version of the discovery client.
  ///
  /// Output only.
  core.String? version;

  DiscoveryClientDiscoveryClientRecommendedVersion({this.uri, this.version});

  DiscoveryClientDiscoveryClientRecommendedVersion.fromJson(core.Map json_)
    : this(
        uri: json_['uri'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
    if (version != null) 'version': version!,
  };
}

/// Single disk entry.
class DiskEntry {
  /// Disk label.
  core.String? diskLabel;

  /// Disk label type (e.g. BIOS/GPT)
  core.String? diskLabelType;

  /// Disk hardware address (e.g. 0:1 for SCSI).
  core.String? hwAddress;

  /// Disks interface type (e.g. SATA/SCSI)
  core.String? interfaceType;

  /// Partition layout.
  DiskPartitionList? partitions;

  /// Disk status (e.g. online).
  core.String? status;

  /// Disk capacity.
  core.String? totalCapacityBytes;

  /// Disk free space.
  core.String? totalFreeBytes;

  DiskEntry({
    this.diskLabel,
    this.diskLabelType,
    this.hwAddress,
    this.interfaceType,
    this.partitions,
    this.status,
    this.totalCapacityBytes,
    this.totalFreeBytes,
  });

  DiskEntry.fromJson(core.Map json_)
    : this(
        diskLabel: json_['diskLabel'] as core.String?,
        diskLabelType: json_['diskLabelType'] as core.String?,
        hwAddress: json_['hwAddress'] as core.String?,
        interfaceType: json_['interfaceType'] as core.String?,
        partitions:
            json_.containsKey('partitions')
                ? DiskPartitionList.fromJson(
                  json_['partitions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status: json_['status'] as core.String?,
        totalCapacityBytes: json_['totalCapacityBytes'] as core.String?,
        totalFreeBytes: json_['totalFreeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (diskLabel != null) 'diskLabel': diskLabel!,
    if (diskLabelType != null) 'diskLabelType': diskLabelType!,
    if (hwAddress != null) 'hwAddress': hwAddress!,
    if (interfaceType != null) 'interfaceType': interfaceType!,
    if (partitions != null) 'partitions': partitions!,
    if (status != null) 'status': status!,
    if (totalCapacityBytes != null) 'totalCapacityBytes': totalCapacityBytes!,
    if (totalFreeBytes != null) 'totalFreeBytes': totalFreeBytes!,
  };
}

/// VM disks.
class DiskEntryList {
  /// Disk entries.
  core.List<DiskEntry>? entries;

  DiskEntryList({this.entries});

  DiskEntryList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DiskEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Disk Partition details.
class DiskPartition {
  /// Partition capacity.
  core.String? capacityBytes;

  /// Partition file system.
  core.String? fileSystem;

  /// Partition free space.
  core.String? freeBytes;

  /// Mount point (Linux/Windows) or drive letter (Windows).
  core.String? mountPoint;

  /// Sub-partitions.
  DiskPartitionList? subPartitions;

  /// Partition type (e.g. BIOS boot).
  core.String? type;

  /// Partition UUID.
  core.String? uuid;

  DiskPartition({
    this.capacityBytes,
    this.fileSystem,
    this.freeBytes,
    this.mountPoint,
    this.subPartitions,
    this.type,
    this.uuid,
  });

  DiskPartition.fromJson(core.Map json_)
    : this(
        capacityBytes: json_['capacityBytes'] as core.String?,
        fileSystem: json_['fileSystem'] as core.String?,
        freeBytes: json_['freeBytes'] as core.String?,
        mountPoint: json_['mountPoint'] as core.String?,
        subPartitions:
            json_.containsKey('subPartitions')
                ? DiskPartitionList.fromJson(
                  json_['subPartitions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (capacityBytes != null) 'capacityBytes': capacityBytes!,
    if (fileSystem != null) 'fileSystem': fileSystem!,
    if (freeBytes != null) 'freeBytes': freeBytes!,
    if (mountPoint != null) 'mountPoint': mountPoint!,
    if (subPartitions != null) 'subPartitions': subPartitions!,
    if (type != null) 'type': type!,
    if (uuid != null) 'uuid': uuid!,
  };
}

/// Disk partition details.
class DiskPartitionDetails {
  /// Total free space of all partitions.
  ///
  /// Output only.
  core.String? freeSpaceBytes;

  /// List of partitions.
  ///
  /// Optional.
  DiskPartitionList? partitions;

  /// Total capacity of all partitions.
  ///
  /// Output only.
  core.String? totalCapacityBytes;

  DiskPartitionDetails({
    this.freeSpaceBytes,
    this.partitions,
    this.totalCapacityBytes,
  });

  DiskPartitionDetails.fromJson(core.Map json_)
    : this(
        freeSpaceBytes: json_['freeSpaceBytes'] as core.String?,
        partitions:
            json_.containsKey('partitions')
                ? DiskPartitionList.fromJson(
                  json_['partitions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalCapacityBytes: json_['totalCapacityBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (freeSpaceBytes != null) 'freeSpaceBytes': freeSpaceBytes!,
    if (partitions != null) 'partitions': partitions!,
    if (totalCapacityBytes != null) 'totalCapacityBytes': totalCapacityBytes!,
  };
}

/// Disk partition list.
class DiskPartitionList {
  /// Partition entries.
  core.List<DiskPartition>? entries;

  DiskPartitionList({this.entries});

  DiskPartitionList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => DiskPartition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Disk usage sample.
///
/// Values are across all disks.
class DiskUsageSample {
  /// Average IOPS sampled over a short window.
  ///
  /// Must be non-negative. If read or write are set, the sum of read and write
  /// will override the value of the average_iops.
  core.double? averageIops;

  /// Average read IOPS sampled over a short window.
  ///
  /// Must be non-negative. If both read and write are zero they are ignored.
  core.double? averageReadIops;

  /// Average write IOPS sampled over a short window.
  ///
  /// Must be non-negative. If both read and write are zero they are ignored.
  core.double? averageWriteIops;

  DiskUsageSample({
    this.averageIops,
    this.averageReadIops,
    this.averageWriteIops,
  });

  DiskUsageSample.fromJson(core.Map json_)
    : this(
        averageIops: (json_['averageIops'] as core.num?)?.toDouble(),
        averageReadIops: (json_['averageReadIops'] as core.num?)?.toDouble(),
        averageWriteIops: (json_['averageWriteIops'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (averageIops != null) 'averageIops': averageIops!,
    if (averageReadIops != null) 'averageReadIops': averageReadIops!,
    if (averageWriteIops != null) 'averageWriteIops': averageWriteIops!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message representing a frame which failed to be processed due to an error.
class ErrorFrame {
  /// Frame ingestion time.
  ///
  /// Output only.
  core.String? ingestionTime;

  /// The identifier of the ErrorFrame.
  ///
  /// Output only.
  core.String? name;

  /// The frame that was originally reported.
  ///
  /// Output only.
  AssetFrame? originalFrame;

  /// All the violations that were detected for the frame.
  ///
  /// Output only.
  core.List<FrameViolationEntry>? violations;

  ErrorFrame({
    this.ingestionTime,
    this.name,
    this.originalFrame,
    this.violations,
  });

  ErrorFrame.fromJson(core.Map json_)
    : this(
        ingestionTime: json_['ingestionTime'] as core.String?,
        name: json_['name'] as core.String?,
        originalFrame:
            json_.containsKey('originalFrame')
                ? AssetFrame.fromJson(
                  json_['originalFrame'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        violations:
            (json_['violations'] as core.List?)
                ?.map(
                  (value) => FrameViolationEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ingestionTime != null) 'ingestionTime': ingestionTime!,
    if (name != null) 'name': name!,
    if (originalFrame != null) 'originalFrame': originalFrame!,
    if (violations != null) 'violations': violations!,
  };
}

/// A resource that reports result of the import job execution.
class ExecutionReport {
  /// Validation errors encountered during the execution of the import job.
  ValidationReport? executionErrors;

  /// Total number of asset frames reported for the import job.
  core.int? framesReported;

  /// List of job-level errors.
  ///
  /// Deprecated, use the job errors under execution_errors instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<ImportError>? jobErrors;

  /// Total number of rows in the import job.
  core.int? totalRowsCount;

  ExecutionReport({
    this.executionErrors,
    this.framesReported,
    this.jobErrors,
    this.totalRowsCount,
  });

  ExecutionReport.fromJson(core.Map json_)
    : this(
        executionErrors:
            json_.containsKey('executionErrors')
                ? ValidationReport.fromJson(
                  json_['executionErrors']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        framesReported: json_['framesReported'] as core.int?,
        jobErrors:
            (json_['jobErrors'] as core.List?)
                ?.map(
                  (value) => ImportError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        totalRowsCount: json_['totalRowsCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionErrors != null) 'executionErrors': executionErrors!,
    if (framesReported != null) 'framesReported': framesReported!,
    if (jobErrors != null) 'jobErrors': jobErrors!,
    if (totalRowsCount != null) 'totalRowsCount': totalRowsCount!,
  };
}

/// A resource that aggregates the validation errors found in an import job
/// file.
class FileValidationReport {
  /// List of file level errors.
  core.List<ImportError>? fileErrors;

  /// The name of the file.
  core.String? fileName;

  /// Flag indicating that processing was aborted due to maximum number of
  /// errors.
  core.bool? partialReport;

  /// Partial list of rows that encountered validation error.
  core.List<ImportRowError>? rowErrors;

  FileValidationReport({
    this.fileErrors,
    this.fileName,
    this.partialReport,
    this.rowErrors,
  });

  FileValidationReport.fromJson(core.Map json_)
    : this(
        fileErrors:
            (json_['fileErrors'] as core.List?)
                ?.map(
                  (value) => ImportError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        fileName: json_['fileName'] as core.String?,
        partialReport: json_['partialReport'] as core.bool?,
        rowErrors:
            (json_['rowErrors'] as core.List?)
                ?.map(
                  (value) => ImportRowError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileErrors != null) 'fileErrors': fileErrors!,
    if (fileName != null) 'fileName': fileName!,
    if (partialReport != null) 'partialReport': partialReport!,
    if (rowErrors != null) 'rowErrors': rowErrors!,
  };
}

/// Describes the fit level of an asset for migration to a specific target.
typedef FitDescriptor = $FitDescriptor;

/// A resource that contains a single violation of a reported `AssetFrame`
/// resource.
typedef FrameViolationEntry = $FrameViolationEntry;

/// Collection of frame data.
class Frames {
  /// A repeated field of asset data.
  core.List<AssetFrame>? framesData;

  Frames({this.framesData});

  Frames.fromJson(core.Map json_)
    : this(
        framesData:
            (json_['framesData'] as core.List?)
                ?.map(
                  (value) => AssetFrame.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (framesData != null) 'framesData': framesData!,
  };
}

/// Single fstab entry.
typedef FstabEntry = $FstabEntry;

/// Fstab content.
class FstabEntryList {
  /// Fstab entries.
  core.List<FstabEntry>? entries;

  FstabEntryList({this.entries});

  FstabEntryList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => FstabEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// A resource that represents a payload hosted on Google Cloud Storage.
class GCSPayloadInfo {
  /// The import job format.
  /// Possible string values are:
  /// - "IMPORT_JOB_FORMAT_UNSPECIFIED" : Default value.
  /// - "IMPORT_JOB_FORMAT_CMDB" : Configuration management DB format.
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_XLSX" : RVTools format (XLSX).
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_CSV" : RVTools format (CSV).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV" : CSV format exported from AWS
  /// using the
  /// [AWS collection script](https://github.com/GoogleCloudPlatform/aws-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV" : CSV format exported from Azure
  /// using the
  /// [Azure collection script](https://github.com/GoogleCloudPlatform/azure-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_MANUAL_CSV" : CSV format created manually. For more
  /// information, see
  /// [Manually create and upload data tables](https://cloud.google.com/migrate/stratozone/docs/import-data-portal).
  /// - "IMPORT_JOB_FORMAT_DATABASE_ZIP" : ZIP file with nested CSV files
  /// generated by a database collector.
  core.String? format;

  /// The payload path in Google Cloud Storage.
  core.String? path;

  GCSPayloadInfo({this.format, this.path});

  GCSPayloadInfo.fromJson(core.Map json_)
    : this(
        format: json_['format'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (format != null) 'format': format!,
    if (path != null) 'path': path!,
  };
}

/// A generic insight about an asset.
class GenericInsight {
  /// Additional information about the insight, each entry can be a logical
  /// entry and must make sense if it is displayed with line breaks between each
  /// entry.
  ///
  /// Text can contain md style links.
  ///
  /// Output only.
  core.List<core.String>? additionalInformation;

  /// In case message_code is not yet known by the client default_message will
  /// be the message to be used instead.
  ///
  /// Text can contain md file style links.
  ///
  /// Output only.
  core.String? defaultMessage;

  /// Represents a globally unique message id for this insight, can be used for
  /// localization purposes, in case message_code is not yet known by the client
  /// use default_message instead.
  ///
  /// Output only.
  core.String? messageId;

  GenericInsight({
    this.additionalInformation,
    this.defaultMessage,
    this.messageId,
  });

  GenericInsight.fromJson(core.Map json_)
    : this(
        additionalInformation:
            (json_['additionalInformation'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        defaultMessage: json_['defaultMessage'] as core.String?,
        messageId: json_['messageId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalInformation != null)
      'additionalInformation': additionalInformation!,
    if (defaultMessage != null) 'defaultMessage': defaultMessage!,
    if (messageId != null) 'messageId': messageId!,
  };
}

/// Generic platform details.
typedef GenericPlatformDetails = $GenericPlatformDetails;

/// GKE migration target.
typedef GoogleKubernetesEngineMigrationTarget = $Empty;

/// A resource that represents an asset group.
///
/// The purpose of an asset group is to bundle a set of assets that have
/// something in common, while allowing users to add annotations to the group.
/// An asset can belong to multiple groups.
typedef Group = $Group00;

/// Guest OS config information.
class GuestConfigDetails {
  /// Mount list (Linux fstab).
  FstabEntryList? fstab;

  /// Hosts file (/etc/hosts).
  ///
  /// Output only.
  HostsEntryList? hosts;

  /// OS issue (typically /etc/issue in Linux).
  core.String? issue;

  /// NFS exports.
  NfsExportList? nfsExports;

  /// SELinux details.
  Selinux? selinux;

  GuestConfigDetails({
    this.fstab,
    this.hosts,
    this.issue,
    this.nfsExports,
    this.selinux,
  });

  GuestConfigDetails.fromJson(core.Map json_)
    : this(
        fstab:
            json_.containsKey('fstab')
                ? FstabEntryList.fromJson(
                  json_['fstab'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hosts:
            json_.containsKey('hosts')
                ? HostsEntryList.fromJson(
                  json_['hosts'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        issue: json_['issue'] as core.String?,
        nfsExports:
            json_.containsKey('nfsExports')
                ? NfsExportList.fromJson(
                  json_['nfsExports'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        selinux:
            json_.containsKey('selinux')
                ? Selinux.fromJson(
                  json_['selinux'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fstab != null) 'fstab': fstab!,
    if (hosts != null) 'hosts': hosts!,
    if (issue != null) 'issue': issue!,
    if (nfsExports != null) 'nfsExports': nfsExports!,
    if (selinux != null) 'selinux': selinux!,
  };
}

/// Guest installed application information.
class GuestInstalledApplication {
  /// License strings associated with the installed application.
  core.List<core.String>? licenses;

  /// Installed application name.
  core.String? name;

  /// Source path.
  core.String? path;

  /// Date application was installed.
  core.String? time;

  /// Installed application vendor.
  core.String? vendor;

  /// Installed application version.
  core.String? version;

  GuestInstalledApplication({
    this.licenses,
    this.name,
    this.path,
    this.time,
    this.vendor,
    this.version,
  });

  GuestInstalledApplication.fromJson(core.Map json_)
    : this(
        licenses:
            (json_['licenses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        path: json_['path'] as core.String?,
        time: json_['time'] as core.String?,
        vendor: json_['vendor'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (licenses != null) 'licenses': licenses!,
    if (name != null) 'name': name!,
    if (path != null) 'path': path!,
    if (time != null) 'time': time!,
    if (vendor != null) 'vendor': vendor!,
    if (version != null) 'version': version!,
  };
}

/// Guest installed application list.
class GuestInstalledApplicationList {
  /// Application entries.
  core.List<GuestInstalledApplication>? entries;

  GuestInstalledApplicationList({this.entries});

  GuestInstalledApplicationList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => GuestInstalledApplication.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Information from Guest-level collections.
class GuestOsDetails {
  /// OS and app configuration.
  GuestConfigDetails? config;

  /// Runtime information.
  GuestRuntimeDetails? runtime;

  GuestOsDetails({this.config, this.runtime});

  GuestOsDetails.fromJson(core.Map json_)
    : this(
        config:
            json_.containsKey('config')
                ? GuestConfigDetails.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        runtime:
            json_.containsKey('runtime')
                ? GuestRuntimeDetails.fromJson(
                  json_['runtime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (config != null) 'config': config!,
    if (runtime != null) 'runtime': runtime!,
  };
}

/// Guest OS runtime information.
class GuestRuntimeDetails {
  /// Domain, e.g. c.stratozone-development.internal.
  core.String? domain;

  /// Installed applications information.
  GuestInstalledApplicationList? installedApps;

  /// Date since last booted (last uptime date).
  Date? lastUptime;

  /// Machine name.
  core.String? machineName;

  /// Runtime network information (connections, ports).
  RuntimeNetworkInfo? networkInfo;

  /// Open files information.
  OpenFileList? openFileList;

  /// Running processes.
  RunningProcessList? processes;

  /// Running background services.
  RunningServiceList? services;

  GuestRuntimeDetails({
    this.domain,
    this.installedApps,
    this.lastUptime,
    this.machineName,
    this.networkInfo,
    this.openFileList,
    this.processes,
    this.services,
  });

  GuestRuntimeDetails.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        installedApps:
            json_.containsKey('installedApps')
                ? GuestInstalledApplicationList.fromJson(
                  json_['installedApps'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastUptime:
            json_.containsKey('lastUptime')
                ? Date.fromJson(
                  json_['lastUptime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        machineName: json_['machineName'] as core.String?,
        networkInfo:
            json_.containsKey('networkInfo')
                ? RuntimeNetworkInfo.fromJson(
                  json_['networkInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        openFileList:
            json_.containsKey('openFileList')
                ? OpenFileList.fromJson(
                  json_['openFileList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        processes:
            json_.containsKey('processes')
                ? RunningProcessList.fromJson(
                  json_['processes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        services:
            json_.containsKey('services')
                ? RunningServiceList.fromJson(
                  json_['services'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domain != null) 'domain': domain!,
    if (installedApps != null) 'installedApps': installedApps!,
    if (lastUptime != null) 'lastUptime': lastUptime!,
    if (machineName != null) 'machineName': machineName!,
    if (networkInfo != null) 'networkInfo': networkInfo!,
    if (openFileList != null) 'openFileList': openFileList!,
    if (processes != null) 'processes': processes!,
    if (services != null) 'services': services!,
  };
}

/// Single /etc/hosts entry.
typedef HostsEntry = $HostsEntry;

/// Hosts content.
class HostsEntryList {
  /// Hosts entries.
  ///
  /// Output only.
  core.List<HostsEntry>? entries;

  HostsEntryList({this.entries});

  HostsEntryList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => HostsEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// A resource that represents a payload file in an import job.
class ImportDataFile {
  /// The timestamp when the file was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User-friendly display name.
  ///
  /// Maximum length is 256 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The payload format.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IMPORT_JOB_FORMAT_UNSPECIFIED" : Default value.
  /// - "IMPORT_JOB_FORMAT_CMDB" : Configuration management DB format.
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_XLSX" : RVTools format (XLSX).
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_CSV" : RVTools format (CSV).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV" : CSV format exported from AWS
  /// using the
  /// [AWS collection script](https://github.com/GoogleCloudPlatform/aws-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV" : CSV format exported from Azure
  /// using the
  /// [Azure collection script](https://github.com/GoogleCloudPlatform/azure-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_MANUAL_CSV" : CSV format created manually. For more
  /// information, see
  /// [Manually create and upload data tables](https://cloud.google.com/migrate/stratozone/docs/import-data-portal).
  /// - "IMPORT_JOB_FORMAT_DATABASE_ZIP" : ZIP file with nested CSV files
  /// generated by a database collector.
  core.String? format;

  /// The name of the file.
  ///
  /// Output only.
  core.String? name;

  /// The state of the import data file.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "CREATING" : The data file is being created.
  /// - "ACTIVE" : The data file completed initialization.
  core.String? state;

  /// Information about a file that is uploaded to a storage service.
  UploadFileInfo? uploadFileInfo;

  ImportDataFile({
    this.createTime,
    this.displayName,
    this.format,
    this.name,
    this.state,
    this.uploadFileInfo,
  });

  ImportDataFile.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        format: json_['format'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uploadFileInfo:
            json_.containsKey('uploadFileInfo')
                ? UploadFileInfo.fromJson(
                  json_['uploadFileInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (format != null) 'format': format!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (uploadFileInfo != null) 'uploadFileInfo': uploadFileInfo!,
  };
}

/// A resource that reports the errors encountered while processing an import
/// job.
typedef ImportError = $ImportError;

/// A resource that represents the background job that imports asset frames.
class ImportJob {
  /// Reference to a source.
  ///
  /// Required.
  core.String? assetSource;

  /// The timestamp when the import job was completed.
  ///
  /// Output only.
  core.String? completeTime;

  /// The timestamp when the import job was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User-friendly display name.
  ///
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// The report with the results of running the import job.
  ///
  /// Output only.
  ExecutionReport? executionReport;

  /// The payload is in Google Cloud Storage.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GCSPayloadInfo? gcsPayload;

  /// The payload is included in the request, mainly used for small import jobs.
  InlinePayloadInfo? inlinePayload;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// The full name of the import job.
  ///
  /// Output only.
  core.String? name;

  /// The state of the import job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "IMPORT_JOB_STATE_UNSPECIFIED" : Default value.
  /// - "IMPORT_JOB_STATE_PENDING" : The import job is pending.
  /// - "IMPORT_JOB_STATE_RUNNING" : The processing of the import job is
  /// ongoing.
  /// - "IMPORT_JOB_STATE_COMPLETED" : The import job processing has completed.
  /// - "IMPORT_JOB_STATE_FAILED" : The import job failed to be processed.
  /// - "IMPORT_JOB_STATE_VALIDATING" : The import job is being validated.
  /// - "IMPORT_JOB_STATE_FAILED_VALIDATION" : The import job contains blocking
  /// errors.
  /// - "IMPORT_JOB_STATE_READY" : The validation of the job completed with no
  /// blocking errors.
  core.String? state;

  /// The timestamp when the import job was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The report with the validation results of the import job.
  ///
  /// Output only.
  ValidationReport? validationReport;

  ImportJob({
    this.assetSource,
    this.completeTime,
    this.createTime,
    this.displayName,
    this.executionReport,
    this.gcsPayload,
    this.inlinePayload,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.validationReport,
  });

  ImportJob.fromJson(core.Map json_)
    : this(
        assetSource: json_['assetSource'] as core.String?,
        completeTime: json_['completeTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        executionReport:
            json_.containsKey('executionReport')
                ? ExecutionReport.fromJson(
                  json_['executionReport']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsPayload:
            json_.containsKey('gcsPayload')
                ? GCSPayloadInfo.fromJson(
                  json_['gcsPayload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inlinePayload:
            json_.containsKey('inlinePayload')
                ? InlinePayloadInfo.fromJson(
                  json_['inlinePayload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        validationReport:
            json_.containsKey('validationReport')
                ? ValidationReport.fromJson(
                  json_['validationReport']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetSource != null) 'assetSource': assetSource!,
    if (completeTime != null) 'completeTime': completeTime!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (executionReport != null) 'executionReport': executionReport!,
    if (gcsPayload != null) 'gcsPayload': gcsPayload!,
    if (inlinePayload != null) 'inlinePayload': inlinePayload!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (validationReport != null) 'validationReport': validationReport!,
  };
}

/// A resource that reports the import job errors at row level.
class ImportRowError {
  /// Error details for an archive file.
  ImportRowErrorArchiveErrorDetails? archiveError;

  /// The asset title.
  core.String? assetTitle;

  /// Error details for a CSV file.
  ImportRowErrorCsvErrorDetails? csvError;

  /// The list of errors detected in the row.
  core.List<ImportError>? errors;

  /// The row number where the error was detected.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? rowNumber;

  /// The name of the VM in the row.
  core.String? vmName;

  /// The VM UUID.
  core.String? vmUuid;

  /// Error details for an XLSX file.
  ImportRowErrorXlsxErrorDetails? xlsxError;

  ImportRowError({
    this.archiveError,
    this.assetTitle,
    this.csvError,
    this.errors,
    this.rowNumber,
    this.vmName,
    this.vmUuid,
    this.xlsxError,
  });

  ImportRowError.fromJson(core.Map json_)
    : this(
        archiveError:
            json_.containsKey('archiveError')
                ? ImportRowErrorArchiveErrorDetails.fromJson(
                  json_['archiveError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetTitle: json_['assetTitle'] as core.String?,
        csvError:
            json_.containsKey('csvError')
                ? ImportRowErrorCsvErrorDetails.fromJson(
                  json_['csvError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => ImportError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rowNumber: json_['rowNumber'] as core.int?,
        vmName: json_['vmName'] as core.String?,
        vmUuid: json_['vmUuid'] as core.String?,
        xlsxError:
            json_.containsKey('xlsxError')
                ? ImportRowErrorXlsxErrorDetails.fromJson(
                  json_['xlsxError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (archiveError != null) 'archiveError': archiveError!,
    if (assetTitle != null) 'assetTitle': assetTitle!,
    if (csvError != null) 'csvError': csvError!,
    if (errors != null) 'errors': errors!,
    if (rowNumber != null) 'rowNumber': rowNumber!,
    if (vmName != null) 'vmName': vmName!,
    if (vmUuid != null) 'vmUuid': vmUuid!,
    if (xlsxError != null) 'xlsxError': xlsxError!,
  };
}

/// Error details for an archive file.
class ImportRowErrorArchiveErrorDetails {
  /// Error details for a CSV file.
  ImportRowErrorCsvErrorDetails? csvError;

  /// The file path inside the archive where the error was detected.
  core.String? filePath;

  ImportRowErrorArchiveErrorDetails({this.csvError, this.filePath});

  ImportRowErrorArchiveErrorDetails.fromJson(core.Map json_)
    : this(
        csvError:
            json_.containsKey('csvError')
                ? ImportRowErrorCsvErrorDetails.fromJson(
                  json_['csvError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filePath: json_['filePath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (csvError != null) 'csvError': csvError!,
    if (filePath != null) 'filePath': filePath!,
  };
}

/// Error details for a CSV file.
typedef ImportRowErrorCsvErrorDetails = $ImportRowErrorCsvErrorDetails;

/// Error details for an XLSX file.
typedef ImportRowErrorXlsxErrorDetails = $ImportRowErrorXlsxErrorDetails;

/// A resource that represents the inline import job payload.
class InlinePayloadInfo {
  /// The import job format.
  /// Possible string values are:
  /// - "IMPORT_JOB_FORMAT_UNSPECIFIED" : Default value.
  /// - "IMPORT_JOB_FORMAT_CMDB" : Configuration management DB format.
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_XLSX" : RVTools format (XLSX).
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_CSV" : RVTools format (CSV).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV" : CSV format exported from AWS
  /// using the
  /// [AWS collection script](https://github.com/GoogleCloudPlatform/aws-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV" : CSV format exported from Azure
  /// using the
  /// [Azure collection script](https://github.com/GoogleCloudPlatform/azure-to-stratozone-export).
  /// - "IMPORT_JOB_FORMAT_MANUAL_CSV" : CSV format created manually. For more
  /// information, see
  /// [Manually create and upload data tables](https://cloud.google.com/migrate/stratozone/docs/import-data-portal).
  /// - "IMPORT_JOB_FORMAT_DATABASE_ZIP" : ZIP file with nested CSV files
  /// generated by a database collector.
  core.String? format;

  /// List of payload files.
  core.List<PayloadFile>? payload;

  InlinePayloadInfo({this.format, this.payload});

  InlinePayloadInfo.fromJson(core.Map json_)
    : this(
        format: json_['format'] as core.String?,
        payload:
            (json_['payload'] as core.List?)
                ?.map(
                  (value) => PayloadFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (format != null) 'format': format!,
    if (payload != null) 'payload': payload!,
  };
}

/// An insight about an asset.
class Insight {
  /// A generic insight about an asset.
  ///
  /// Output only.
  GenericInsight? genericInsight;

  /// An insight about potential migrations for an asset.
  ///
  /// Output only.
  MigrationInsight? migrationInsight;

  /// An insight regarding software detected on an asset.
  ///
  /// Output only.
  SoftwareInsight? softwareInsight;

  Insight({this.genericInsight, this.migrationInsight, this.softwareInsight});

  Insight.fromJson(core.Map json_)
    : this(
        genericInsight:
            json_.containsKey('genericInsight')
                ? GenericInsight.fromJson(
                  json_['genericInsight']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        migrationInsight:
            json_.containsKey('migrationInsight')
                ? MigrationInsight.fromJson(
                  json_['migrationInsight']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        softwareInsight:
            json_.containsKey('softwareInsight')
                ? SoftwareInsight.fromJson(
                  json_['softwareInsight']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (genericInsight != null) 'genericInsight': genericInsight!,
    if (migrationInsight != null) 'migrationInsight': migrationInsight!,
    if (softwareInsight != null) 'softwareInsight': softwareInsight!,
  };
}

/// Message containing insights list.
class InsightList {
  /// Insights of the list.
  ///
  /// Output only.
  core.List<Insight>? insights;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  InsightList({this.insights, this.updateTime});

  InsightList.fromJson(core.Map json_)
    : this(
        insights:
            (json_['insights'] as core.List?)
                ?.map(
                  (value) => Insight.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (insights != null) 'insights': insights!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An issue associated with a migration.
class Issue {
  /// Details about a compatibility issue.
  ///
  /// Output only.
  IssueCompatibilityIssue? compatibilityIssue;

  /// English description of the issue.
  ///
  /// Output only.
  core.String? description;

  /// Unique identifier for this issue type.
  ///
  /// Output only.
  core.String? issueCode;

  Issue({this.compatibilityIssue, this.description, this.issueCode});

  Issue.fromJson(core.Map json_)
    : this(
        compatibilityIssue:
            json_.containsKey('compatibilityIssue')
                ? IssueCompatibilityIssue.fromJson(
                  json_['compatibilityIssue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        issueCode: json_['issueCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compatibilityIssue != null) 'compatibilityIssue': compatibilityIssue!,
    if (description != null) 'description': description!,
    if (issueCode != null) 'issueCode': issueCode!,
  };
}

/// Details about a compatibility issue.
class IssueCompatibilityIssue {
  /// Name of the object associated with this compatibility issue relative to
  /// the relevant asset.
  ///
  /// Does not represent a fully qualified resource name and is not intended for
  /// programmatic use.
  ///
  /// Output only.
  core.String? associatedObject;

  /// Type of object associated with this migration compatibility issue.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OBJECT_TYPE_UNSPECIFIED" : An unspecified object type.
  /// - "DATABASE_DEPLOYMENT" : A database deployment object type.
  /// - "DATABASE" : A logical database object type.
  /// - "SCHEMA" : A schema object type.
  core.String? associatedObjectType;

  /// A string representation of actual value associated with this issue.
  ///
  /// Some values may contain aggregated information, such as a flag name and
  /// the actual value assigned to it.
  ///
  /// Output only.
  core.String? associatedValue;

  /// Category of this compatibility issue.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : An unspecified compatibility category.
  /// - "DATABASE_FLAG" : Database flag compatibility category.
  /// - "DATABASE_FEATURE" : Database feature compatibility category.
  core.String? category;

  IssueCompatibilityIssue({
    this.associatedObject,
    this.associatedObjectType,
    this.associatedValue,
    this.category,
  });

  IssueCompatibilityIssue.fromJson(core.Map json_)
    : this(
        associatedObject: json_['associatedObject'] as core.String?,
        associatedObjectType: json_['associatedObjectType'] as core.String?,
        associatedValue: json_['associatedValue'] as core.String?,
        category: json_['category'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associatedObject != null) 'associatedObject': associatedObject!,
    if (associatedObjectType != null)
      'associatedObjectType': associatedObjectType!,
    if (associatedValue != null) 'associatedValue': associatedValue!,
    if (category != null) 'category': category!,
  };
}

/// Response message for listing assets export jobs.
class ListAssetsExportJobsResponse {
  /// The list of assets export jobs.
  ///
  /// Output only.
  core.List<AssetsExportJob>? assetsExportJobs;

  /// A token identifying a page of results the server should return.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListAssetsExportJobsResponse({this.assetsExportJobs, this.nextPageToken});

  ListAssetsExportJobsResponse.fromJson(core.Map json_)
    : this(
        assetsExportJobs:
            (json_['assetsExportJobs'] as core.List?)
                ?.map(
                  (value) => AssetsExportJob.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetsExportJobs != null) 'assetsExportJobs': assetsExportJobs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for listing assets.
class ListAssetsResponse {
  /// A list of assets.
  core.List<Asset>? assets;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAssetsResponse({this.assets, this.nextPageToken, this.unreachable});

  ListAssetsResponse.fromJson(core.Map json_)
    : this(
        assets:
            (json_['assets'] as core.List?)
                ?.map(
                  (value) => Asset.fromJson(
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
    if (assets != null) 'assets': assets!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for listing discovery clients.
class ListDiscoveryClientsResponse {
  /// List of discovery clients.
  core.List<DiscoveryClient>? discoveryClients;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDiscoveryClientsResponse({
    this.discoveryClients,
    this.nextPageToken,
    this.unreachable,
  });

  ListDiscoveryClientsResponse.fromJson(core.Map json_)
    : this(
        discoveryClients:
            (json_['discoveryClients'] as core.List?)
                ?.map(
                  (value) => DiscoveryClient.fromJson(
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
    if (discoveryClients != null) 'discoveryClients': discoveryClients!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A response for listing error frames.
class ListErrorFramesResponse {
  /// The list of error frames.
  core.List<ErrorFrame>? errorFrames;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListErrorFramesResponse({
    this.errorFrames,
    this.nextPageToken,
    this.unreachable,
  });

  ListErrorFramesResponse.fromJson(core.Map json_)
    : this(
        errorFrames:
            (json_['errorFrames'] as core.List?)
                ?.map(
                  (value) => ErrorFrame.fromJson(
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
    if (errorFrames != null) 'errorFrames': errorFrames!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A response for listing groups.
class ListGroupsResponse {
  /// The list of Group
  core.List<Group>? groups;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGroupsResponse({this.groups, this.nextPageToken, this.unreachable});

  ListGroupsResponse.fromJson(core.Map json_)
    : this(
        groups:
            (json_['groups'] as core.List?)
                ?.map(
                  (value) => Group.fromJson(
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
    if (groups != null) 'groups': groups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response for listing payload files of an import job.
class ListImportDataFilesResponse {
  /// The list of import data files.
  core.List<ImportDataFile>? importDataFiles;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListImportDataFilesResponse({
    this.importDataFiles,
    this.nextPageToken,
    this.unreachable,
  });

  ListImportDataFilesResponse.fromJson(core.Map json_)
    : this(
        importDataFiles:
            (json_['importDataFiles'] as core.List?)
                ?.map(
                  (value) => ImportDataFile.fromJson(
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
    if (importDataFiles != null) 'importDataFiles': importDataFiles!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A response for listing import jobs.
class ListImportJobsResponse {
  /// The list of import jobs.
  core.List<ImportJob>? importJobs;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListImportJobsResponse({
    this.importJobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListImportJobsResponse.fromJson(core.Map json_)
    : this(
        importJobs:
            (json_['importJobs'] as core.List?)
                ?.map(
                  (value) => ImportJob.fromJson(
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
    if (importJobs != null) 'importJobs': importJobs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
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

/// Response message for listing preference sets.
class ListPreferenceSetsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of PreferenceSets
  core.List<PreferenceSet>? preferenceSets;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPreferenceSetsResponse({
    this.nextPageToken,
    this.preferenceSets,
    this.unreachable,
  });

  ListPreferenceSetsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        preferenceSets:
            (json_['preferenceSets'] as core.List?)
                ?.map(
                  (value) => PreferenceSet.fromJson(
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
    if (preferenceSets != null) 'preferenceSets': preferenceSets!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for listing relations.
class ListRelationsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// A list of relations.
  core.List<Relation>? relations;

  ListRelationsResponse({this.nextPageToken, this.relations});

  ListRelationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        relations:
            (json_['relations'] as core.List?)
                ?.map(
                  (value) => Relation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (relations != null) 'relations': relations!,
  };
}

/// Response message for listing report configs.
class ListReportConfigsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// A list of report configs.
  core.List<ReportConfig>? reportConfigs;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListReportConfigsResponse({
    this.nextPageToken,
    this.reportConfigs,
    this.unreachable,
  });

  ListReportConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reportConfigs:
            (json_['reportConfigs'] as core.List?)
                ?.map(
                  (value) => ReportConfig.fromJson(
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
    if (reportConfigs != null) 'reportConfigs': reportConfigs!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for listing Reports.
class ListReportsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of Reports.
  core.List<Report>? reports;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListReportsResponse({this.nextPageToken, this.reports, this.unreachable});

  ListReportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reports:
            (json_['reports'] as core.List?)
                ?.map(
                  (value) => Report.fromJson(
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
    if (reports != null) 'reports': reports!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for listing sources.
class ListSourcesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of sources.
  core.List<Source>? sources;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSourcesResponse({this.nextPageToken, this.sources, this.unreachable});

  ListSourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => Source.fromJson(
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
    if (sources != null) 'sources': sources!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Details of the machine architecture.
class MachineArchitectureDetails {
  /// BIOS Details.
  BiosDetails? bios;

  /// CPU architecture, e.g., "x64-based PC", "x86_64", "i686" etc.
  core.String? cpuArchitecture;

  /// CPU manufacturer, e.g., "Intel", "AMD".
  ///
  /// Optional.
  core.String? cpuManufacturer;

  /// CPU name, e.g., "Intel Xeon E5-2690", "AMD EPYC 7571" etc.
  core.String? cpuName;

  /// Number of processor sockets allocated to the machine.
  core.int? cpuSocketCount;

  /// Firmware type.
  /// Possible string values are:
  /// - "FIRMWARE_TYPE_UNSPECIFIED" : Unspecified or unknown.
  /// - "BIOS" : BIOS firmware.
  /// - "EFI" : EFI firmware.
  core.String? firmwareType;

  /// CPU hyper-threading support.
  /// Possible string values are:
  /// - "CPU_HYPER_THREADING_UNSPECIFIED" : Unspecified or unknown.
  /// - "DISABLED" : Hyper-threading is disabled.
  /// - "ENABLED" : Hyper-threading is enabled.
  core.String? hyperthreading;

  /// Hardware vendor.
  core.String? vendor;

  MachineArchitectureDetails({
    this.bios,
    this.cpuArchitecture,
    this.cpuManufacturer,
    this.cpuName,
    this.cpuSocketCount,
    this.firmwareType,
    this.hyperthreading,
    this.vendor,
  });

  MachineArchitectureDetails.fromJson(core.Map json_)
    : this(
        bios:
            json_.containsKey('bios')
                ? BiosDetails.fromJson(
                  json_['bios'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cpuArchitecture: json_['cpuArchitecture'] as core.String?,
        cpuManufacturer: json_['cpuManufacturer'] as core.String?,
        cpuName: json_['cpuName'] as core.String?,
        cpuSocketCount: json_['cpuSocketCount'] as core.int?,
        firmwareType: json_['firmwareType'] as core.String?,
        hyperthreading: json_['hyperthreading'] as core.String?,
        vendor: json_['vendor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bios != null) 'bios': bios!,
    if (cpuArchitecture != null) 'cpuArchitecture': cpuArchitecture!,
    if (cpuManufacturer != null) 'cpuManufacturer': cpuManufacturer!,
    if (cpuName != null) 'cpuName': cpuName!,
    if (cpuSocketCount != null) 'cpuSocketCount': cpuSocketCount!,
    if (firmwareType != null) 'firmwareType': firmwareType!,
    if (hyperthreading != null) 'hyperthreading': hyperthreading!,
    if (vendor != null) 'vendor': vendor!,
  };
}

/// Details of a machine.
class MachineDetails {
  /// Architecture details (vendor, CPU architecture).
  MachineArchitectureDetails? architecture;

  /// Number of logical CPU cores in the machine.
  ///
  /// Must be non-negative.
  core.int? coreCount;

  /// Machine creation time.
  core.String? createTime;

  /// Disk partitions details.
  ///
  /// Note: Partitions are not necessarily mounted on local disks and therefore
  /// might not have a one-to-one correspondence with local disks.
  ///
  /// Optional.
  DiskPartitionDetails? diskPartitions;

  /// Disk details.
  MachineDiskDetails? disks;

  /// Guest OS information.
  GuestOsDetails? guestOs;

  /// Machine name.
  core.String? machineName;

  /// The amount of memory in the machine.
  ///
  /// Must be non-negative.
  core.int? memoryMb;

  /// Network details.
  MachineNetworkDetails? network;

  /// Platform specific information.
  PlatformDetails? platform;

  /// Power state of the machine.
  /// Possible string values are:
  /// - "POWER_STATE_UNSPECIFIED" : Power state is unknown.
  /// - "PENDING" : The machine is preparing to enter the ACTIVE state. An
  /// instance may enter the PENDING state when it launches for the first time,
  /// or when it is started after being in the SUSPENDED state.
  /// - "ACTIVE" : The machine is active.
  /// - "SUSPENDING" : The machine is being turned off.
  /// - "SUSPENDED" : The machine is off.
  /// - "DELETING" : The machine is being deleted from the hosting platform.
  /// - "DELETED" : The machine is deleted from the hosting platform.
  core.String? powerState;

  /// Machine unique identifier.
  core.String? uuid;

  MachineDetails({
    this.architecture,
    this.coreCount,
    this.createTime,
    this.diskPartitions,
    this.disks,
    this.guestOs,
    this.machineName,
    this.memoryMb,
    this.network,
    this.platform,
    this.powerState,
    this.uuid,
  });

  MachineDetails.fromJson(core.Map json_)
    : this(
        architecture:
            json_.containsKey('architecture')
                ? MachineArchitectureDetails.fromJson(
                  json_['architecture'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        coreCount: json_['coreCount'] as core.int?,
        createTime: json_['createTime'] as core.String?,
        diskPartitions:
            json_.containsKey('diskPartitions')
                ? DiskPartitionDetails.fromJson(
                  json_['diskPartitions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disks:
            json_.containsKey('disks')
                ? MachineDiskDetails.fromJson(
                  json_['disks'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        guestOs:
            json_.containsKey('guestOs')
                ? GuestOsDetails.fromJson(
                  json_['guestOs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        machineName: json_['machineName'] as core.String?,
        memoryMb: json_['memoryMb'] as core.int?,
        network:
            json_.containsKey('network')
                ? MachineNetworkDetails.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        platform:
            json_.containsKey('platform')
                ? PlatformDetails.fromJson(
                  json_['platform'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        powerState: json_['powerState'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (architecture != null) 'architecture': architecture!,
    if (coreCount != null) 'coreCount': coreCount!,
    if (createTime != null) 'createTime': createTime!,
    if (diskPartitions != null) 'diskPartitions': diskPartitions!,
    if (disks != null) 'disks': disks!,
    if (guestOs != null) 'guestOs': guestOs!,
    if (machineName != null) 'machineName': machineName!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (network != null) 'network': network!,
    if (platform != null) 'platform': platform!,
    if (powerState != null) 'powerState': powerState!,
    if (uuid != null) 'uuid': uuid!,
  };
}

/// Details of machine disks.
class MachineDiskDetails {
  /// List of disks.
  DiskEntryList? disks;

  /// Raw disk scan result.
  ///
  /// This field is intended for human inspection. The format of this field may
  /// be lsblk output or any another raw output. The exact format may change
  /// without notice and should not be relied upon.
  core.String? rawScanResult;

  /// Disk total Capacity.
  core.String? totalCapacityBytes;

  /// Total disk free space.
  core.String? totalFreeBytes;

  MachineDiskDetails({
    this.disks,
    this.rawScanResult,
    this.totalCapacityBytes,
    this.totalFreeBytes,
  });

  MachineDiskDetails.fromJson(core.Map json_)
    : this(
        disks:
            json_.containsKey('disks')
                ? DiskEntryList.fromJson(
                  json_['disks'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rawScanResult: json_['rawScanResult'] as core.String?,
        totalCapacityBytes: json_['totalCapacityBytes'] as core.String?,
        totalFreeBytes: json_['totalFreeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disks != null) 'disks': disks!,
    if (rawScanResult != null) 'rawScanResult': rawScanResult!,
    if (totalCapacityBytes != null) 'totalCapacityBytes': totalCapacityBytes!,
    if (totalFreeBytes != null) 'totalFreeBytes': totalFreeBytes!,
  };
}

/// Details of network adapters and settings.
class MachineNetworkDetails {
  /// Default gateway address.
  core.String? defaultGateway;

  /// List of network adapters.
  NetworkAdapterList? networkAdapters;

  /// The primary IP address of the machine.
  core.String? primaryIpAddress;

  /// MAC address of the machine.
  ///
  /// This property is used to uniqly identify the machine.
  core.String? primaryMacAddress;

  /// The public IP address of the machine.
  core.String? publicIpAddress;

  MachineNetworkDetails({
    this.defaultGateway,
    this.networkAdapters,
    this.primaryIpAddress,
    this.primaryMacAddress,
    this.publicIpAddress,
  });

  MachineNetworkDetails.fromJson(core.Map json_)
    : this(
        defaultGateway: json_['defaultGateway'] as core.String?,
        networkAdapters:
            json_.containsKey('networkAdapters')
                ? NetworkAdapterList.fromJson(
                  json_['networkAdapters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        primaryIpAddress: json_['primaryIpAddress'] as core.String?,
        primaryMacAddress: json_['primaryMacAddress'] as core.String?,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultGateway != null) 'defaultGateway': defaultGateway!,
    if (networkAdapters != null) 'networkAdapters': networkAdapters!,
    if (primaryIpAddress != null) 'primaryIpAddress': primaryIpAddress!,
    if (primaryMacAddress != null) 'primaryMacAddress': primaryMacAddress!,
    if (publicIpAddress != null) 'publicIpAddress': publicIpAddress!,
  };
}

/// The type of machines to consider when calculating virtual machine migration
/// insights and recommendations for Compute Engine.
///
/// Not all machine types are available in all zones and regions.
class MachinePreferences {
  /// Compute Engine machine series to consider for insights and
  /// recommendations.
  ///
  /// If empty, no restriction is applied on the machine series.
  core.List<MachineSeries>? allowedMachineSeries;

  MachinePreferences({this.allowedMachineSeries});

  MachinePreferences.fromJson(core.Map json_)
    : this(
        allowedMachineSeries:
            (json_['allowedMachineSeries'] as core.List?)
                ?.map(
                  (value) => MachineSeries.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedMachineSeries != null)
      'allowedMachineSeries': allowedMachineSeries!,
  };
}

/// A machine series, for a target product (e.g. Compute Engine, Google Cloud
/// VMware Engine).
typedef MachineSeries = $MachineSeries;

/// Memory usage sample.
typedef MemoryUsageSample = $MemoryUsageSample;

/// An insight about potential migrations for an asset.
class MigrationInsight {
  /// A Cloud database migration target.
  ///
  /// Output only.
  CloudDatabaseMigrationTarget? cloudDatabaseTarget;

  /// A Google Compute Engine Sole Tenant target.
  ///
  /// Output only.
  ComputeEngineSoleTenantMigrationTarget? computeEngineSoleTenantTarget;

  /// A Google Compute Engine target.
  ///
  /// Output only.
  ComputeEngineMigrationTarget? computeEngineTarget;

  /// Description of how well the asset this insight is associated with fits the
  /// proposed migration.
  ///
  /// Output only.
  FitDescriptor? fit;

  /// A Google Kubernetes Engine target.
  ///
  /// Output only.
  GoogleKubernetesEngineMigrationTarget? gkeTarget;

  /// Issues associated with this migration.
  ///
  /// Output only.
  core.List<Issue>? issues;

  /// A VMWare Engine target.
  ///
  /// Output only.
  VmwareEngineMigrationTarget? vmwareEngineTarget;

  MigrationInsight({
    this.cloudDatabaseTarget,
    this.computeEngineSoleTenantTarget,
    this.computeEngineTarget,
    this.fit,
    this.gkeTarget,
    this.issues,
    this.vmwareEngineTarget,
  });

  MigrationInsight.fromJson(core.Map json_)
    : this(
        cloudDatabaseTarget:
            json_.containsKey('cloudDatabaseTarget')
                ? CloudDatabaseMigrationTarget.fromJson(
                  json_['cloudDatabaseTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        computeEngineSoleTenantTarget:
            json_.containsKey('computeEngineSoleTenantTarget')
                ? ComputeEngineSoleTenantMigrationTarget.fromJson(
                  json_['computeEngineSoleTenantTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        computeEngineTarget:
            json_.containsKey('computeEngineTarget')
                ? ComputeEngineMigrationTarget.fromJson(
                  json_['computeEngineTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fit:
            json_.containsKey('fit')
                ? FitDescriptor.fromJson(
                  json_['fit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gkeTarget:
            json_.containsKey('gkeTarget')
                ? GoogleKubernetesEngineMigrationTarget.fromJson(
                  json_['gkeTarget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => Issue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        vmwareEngineTarget:
            json_.containsKey('vmwareEngineTarget')
                ? VmwareEngineMigrationTarget.fromJson(
                  json_['vmwareEngineTarget']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudDatabaseTarget != null)
      'cloudDatabaseTarget': cloudDatabaseTarget!,
    if (computeEngineSoleTenantTarget != null)
      'computeEngineSoleTenantTarget': computeEngineSoleTenantTarget!,
    if (computeEngineTarget != null)
      'computeEngineTarget': computeEngineTarget!,
    if (fit != null) 'fit': fit!,
    if (gkeTarget != null) 'gkeTarget': gkeTarget!,
    if (issues != null) 'issues': issues!,
    if (vmwareEngineTarget != null) 'vmwareEngineTarget': vmwareEngineTarget!,
  };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// MySql plugin.
typedef MySqlPlugin = $MySqlPlugin;

/// MySql property.
typedef MySqlProperty = $SqlProperty;

/// Specific details for a Mysql database.
class MySqlSchemaDetails {
  /// Mysql storage engine tables.
  ///
  /// Optional.
  core.List<MySqlStorageEngineDetails>? storageEngines;

  MySqlSchemaDetails({this.storageEngines});

  MySqlSchemaDetails.fromJson(core.Map json_)
    : this(
        storageEngines:
            (json_['storageEngines'] as core.List?)
                ?.map(
                  (value) => MySqlStorageEngineDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (storageEngines != null) 'storageEngines': storageEngines!,
  };
}

/// Mysql storage engine tables.
typedef MySqlStorageEngineDetails = $MySqlStorageEngineDetails;

/// MySql variable.
typedef MySqlVariable = $MySqlVariable;

/// Specific details for a Mysql database deployment.
class MysqlDatabaseDeployment {
  /// List of MySql plugins.
  ///
  /// Optional.
  core.List<MySqlPlugin>? plugins;

  /// List of MySql properties.
  ///
  /// Optional.
  core.List<MySqlProperty>? properties;

  /// Number of resource groups.
  ///
  /// Optional.
  core.int? resourceGroupsCount;

  /// List of MySql variables.
  ///
  /// Optional.
  core.List<MySqlVariable>? variables;

  MysqlDatabaseDeployment({
    this.plugins,
    this.properties,
    this.resourceGroupsCount,
    this.variables,
  });

  MysqlDatabaseDeployment.fromJson(core.Map json_)
    : this(
        plugins:
            (json_['plugins'] as core.List?)
                ?.map(
                  (value) => MySqlPlugin.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) => MySqlProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resourceGroupsCount: json_['resourceGroupsCount'] as core.int?,
        variables:
            (json_['variables'] as core.List?)
                ?.map(
                  (value) => MySqlVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (plugins != null) 'plugins': plugins!,
    if (properties != null) 'properties': properties!,
    if (resourceGroupsCount != null)
      'resourceGroupsCount': resourceGroupsCount!,
    if (variables != null) 'variables': variables!,
  };
}

/// Details of network adapter.
class NetworkAdapterDetails {
  /// Network adapter type (e.g. VMXNET3).
  core.String? adapterType;

  /// NetworkAddressList
  NetworkAddressList? addresses;

  /// MAC address.
  core.String? macAddress;

  NetworkAdapterDetails({this.adapterType, this.addresses, this.macAddress});

  NetworkAdapterDetails.fromJson(core.Map json_)
    : this(
        adapterType: json_['adapterType'] as core.String?,
        addresses:
            json_.containsKey('addresses')
                ? NetworkAddressList.fromJson(
                  json_['addresses'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        macAddress: json_['macAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapterType != null) 'adapterType': adapterType!,
    if (addresses != null) 'addresses': addresses!,
    if (macAddress != null) 'macAddress': macAddress!,
  };
}

/// List of network adapters.
class NetworkAdapterList {
  /// Network adapter descriptions.
  core.List<NetworkAdapterDetails>? networkAdapters;

  NetworkAdapterList({this.networkAdapters});

  NetworkAdapterList.fromJson(core.Map json_)
    : this(
        networkAdapters:
            (json_['networkAdapters'] as core.List?)
                ?.map(
                  (value) => NetworkAdapterDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkAdapters != null) 'networkAdapters': networkAdapters!,
  };
}

/// Details of network address.
typedef NetworkAddress = $NetworkAddress;

/// List of allocated/assigned network addresses.
class NetworkAddressList {
  /// Network address entries.
  core.List<NetworkAddress>? addresses;

  NetworkAddressList({this.addresses});

  NetworkAddressList.fromJson(core.Map json_)
    : this(
        addresses:
            (json_['addresses'] as core.List?)
                ?.map(
                  (value) => NetworkAddress.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addresses != null) 'addresses': addresses!,
  };
}

class NetworkConnection {
  /// Local IP address.
  core.String? localIpAddress;

  /// Local port.
  core.int? localPort;

  /// Process ID.
  core.String? pid;

  /// Process or service name.
  core.String? processName;

  /// Connection protocol (e.g. TCP/UDP).
  core.String? protocol;

  /// Remote IP address.
  core.String? remoteIpAddress;

  /// Remote port.
  core.int? remotePort;

  /// Connection state (e.g. CONNECTED).
  core.String? state;

  NetworkConnection({
    this.localIpAddress,
    this.localPort,
    this.pid,
    this.processName,
    this.protocol,
    this.remoteIpAddress,
    this.remotePort,
    this.state,
  });

  NetworkConnection.fromJson(core.Map json_)
    : this(
        localIpAddress: json_['localIpAddress'] as core.String?,
        localPort: json_['localPort'] as core.int?,
        pid: json_['pid'] as core.String?,
        processName: json_['processName'] as core.String?,
        protocol: json_['protocol'] as core.String?,
        remoteIpAddress: json_['remoteIpAddress'] as core.String?,
        remotePort: json_['remotePort'] as core.int?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (localIpAddress != null) 'localIpAddress': localIpAddress!,
    if (localPort != null) 'localPort': localPort!,
    if (pid != null) 'pid': pid!,
    if (processName != null) 'processName': processName!,
    if (protocol != null) 'protocol': protocol!,
    if (remoteIpAddress != null) 'remoteIpAddress': remoteIpAddress!,
    if (remotePort != null) 'remotePort': remotePort!,
    if (state != null) 'state': state!,
  };
}

/// Network connection list.
class NetworkConnectionList {
  /// Network connection entries.
  core.List<NetworkConnection>? entries;

  NetworkConnectionList({this.entries});

  NetworkConnectionList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => NetworkConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Network usage sample.
///
/// Values are across all network interfaces.
typedef NetworkUsageSample = $NetworkUsageSample;

/// NFS export.
typedef NfsExport = $NfsExport;

/// NFS exports.
class NfsExportList {
  /// NFS export entries.
  core.List<NfsExport>? entries;

  NfsExportList({this.entries});

  NfsExportList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => NfsExport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Open file Information.
typedef OpenFileDetails = $OpenFileDetails;

/// Open file list.
class OpenFileList {
  /// Open file details entries.
  core.List<OpenFileDetails>? entries;

  OpenFileList({this.entries});

  OpenFileList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => OpenFileDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Pricing options for OS images.
class OperatingSystemPricingPreferences {
  /// Pricing options for RHEL images.
  ///
  /// Optional.
  OperatingSystemPricingPreferencesOperatingSystemPricing? rhel;

  /// Pricing options for SLES images.
  ///
  /// Optional.
  OperatingSystemPricingPreferencesOperatingSystemPricing? sles;

  /// Pricing options for SLES for SAP images.
  ///
  /// Optional.
  OperatingSystemPricingPreferencesOperatingSystemPricing? slesForSap;

  /// Pricing options for Windows images.
  ///
  /// No commitment plans are available, set it to unspecified.
  ///
  /// Optional.
  OperatingSystemPricingPreferencesOperatingSystemPricing? windows;

  OperatingSystemPricingPreferences({
    this.rhel,
    this.sles,
    this.slesForSap,
    this.windows,
  });

  OperatingSystemPricingPreferences.fromJson(core.Map json_)
    : this(
        rhel:
            json_.containsKey('rhel')
                ? OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
                  json_['rhel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sles:
            json_.containsKey('sles')
                ? OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
                  json_['sles'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        slesForSap:
            json_.containsKey('slesForSap')
                ? OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
                  json_['slesForSap'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        windows:
            json_.containsKey('windows')
                ? OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
                  json_['windows'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rhel != null) 'rhel': rhel!,
    if (sles != null) 'sles': sles!,
    if (slesForSap != null) 'slesForSap': slesForSap!,
    if (windows != null) 'windows': windows!,
  };
}

/// Pricing options of an OS image.
class OperatingSystemPricingPreferencesOperatingSystemPricing {
  /// The plan of commitments for committed use discounts (CUD).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Unspecified commitment plan.
  /// - "COMMITMENT_PLAN_ON_DEMAND" : No commitment plan (on-demand usage).
  /// - "COMMITMENT_PLAN_1_YEAR" : 1-year committed use discount.
  /// - "COMMITMENT_PLAN_3_YEAR" : 3-year committed use discount.
  core.String? commitmentPlan;

  /// License type for premium images (RHEL, RHEL for SAP, SLES, SLES for SAP,
  /// Windows Server).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified (default value).
  /// - "LICENSE_TYPE_DEFAULT" : Default Google Cloud licensing plan. Licensing
  /// is charged per usage. This a good value to start with.
  /// - "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE" : Bring-your-own-license (BYOL)
  /// plan. User provides the license.
  core.String? licenseType;

  OperatingSystemPricingPreferencesOperatingSystemPricing({
    this.commitmentPlan,
    this.licenseType,
  });

  OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
    core.Map json_,
  ) : this(
        commitmentPlan: json_['commitmentPlan'] as core.String?,
        licenseType: json_['licenseType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
    if (licenseType != null) 'licenseType': licenseType!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
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

/// Contains a single output file.
class OutputFile {
  /// CSV output file.
  ///
  /// Output only.
  CsvOutputFile? csvOutputFile;

  /// File size in bytes.
  ///
  /// Output only.
  core.String? fileSizeBytes;

  /// XLSX output file.
  ///
  /// Output only.
  XlsxOutputFile? xlsxOutputFile;

  OutputFile({this.csvOutputFile, this.fileSizeBytes, this.xlsxOutputFile});

  OutputFile.fromJson(core.Map json_)
    : this(
        csvOutputFile:
            json_.containsKey('csvOutputFile')
                ? CsvOutputFile.fromJson(
                  json_['csvOutputFile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileSizeBytes: json_['fileSizeBytes'] as core.String?,
        xlsxOutputFile:
            json_.containsKey('xlsxOutputFile')
                ? XlsxOutputFile.fromJson(
                  json_['xlsxOutputFile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (csvOutputFile != null) 'csvOutputFile': csvOutputFile!,
    if (fileSizeBytes != null) 'fileSizeBytes': fileSizeBytes!,
    if (xlsxOutputFile != null) 'xlsxOutputFile': xlsxOutputFile!,
  };
}

/// Contains a list of output files.
class OutputFileList {
  /// List of output files.
  core.List<OutputFile>? entries;

  OutputFileList({this.entries});

  OutputFileList.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) => OutputFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
  };
}

/// Payload file for inline import job payload.
class PayloadFile {
  /// The file data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The file name.
  core.String? name;

  PayloadFile({this.data, this.name});

  PayloadFile.fromJson(core.Map json_)
    : this(
        data: json_['data'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (data != null) 'data': data!,
    if (name != null) 'name': name!,
  };
}

/// Performance data sample.
class PerformanceSample {
  /// CPU usage sample.
  CpuUsageSample? cpu;

  /// Disk usage sample.
  DiskUsageSample? disk;

  /// Memory usage sample.
  MemoryUsageSample? memory;

  /// Network usage sample.
  NetworkUsageSample? network;

  /// Time the sample was collected.
  ///
  /// If omitted, the frame report time will be used.
  core.String? sampleTime;

  PerformanceSample({
    this.cpu,
    this.disk,
    this.memory,
    this.network,
    this.sampleTime,
  });

  PerformanceSample.fromJson(core.Map json_)
    : this(
        cpu:
            json_.containsKey('cpu')
                ? CpuUsageSample.fromJson(
                  json_['cpu'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disk:
            json_.containsKey('disk')
                ? DiskUsageSample.fromJson(
                  json_['disk'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memory:
            json_.containsKey('memory')
                ? MemoryUsageSample.fromJson(
                  json_['memory'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        network:
            json_.containsKey('network')
                ? NetworkUsageSample.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sampleTime: json_['sampleTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpu != null) 'cpu': cpu!,
    if (disk != null) 'disk': disk!,
    if (memory != null) 'memory': memory!,
    if (network != null) 'network': network!,
    if (sampleTime != null) 'sampleTime': sampleTime!,
  };
}

/// Platform specific details for Physical Machines.
typedef PhysicalPlatformDetails = $PhysicalPlatformDetails;

/// Information about the platform.
class PlatformDetails {
  /// AWS EC2 specific details.
  AwsEc2PlatformDetails? awsEc2Details;

  /// Azure VM specific details.
  AzureVmPlatformDetails? azureVmDetails;

  /// Generic platform details.
  GenericPlatformDetails? genericDetails;

  /// Physical machines platform details.
  PhysicalPlatformDetails? physicalDetails;

  /// VMware specific details.
  VmwarePlatformDetails? vmwareDetails;

  PlatformDetails({
    this.awsEc2Details,
    this.azureVmDetails,
    this.genericDetails,
    this.physicalDetails,
    this.vmwareDetails,
  });

  PlatformDetails.fromJson(core.Map json_)
    : this(
        awsEc2Details:
            json_.containsKey('awsEc2Details')
                ? AwsEc2PlatformDetails.fromJson(
                  json_['awsEc2Details'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        azureVmDetails:
            json_.containsKey('azureVmDetails')
                ? AzureVmPlatformDetails.fromJson(
                  json_['azureVmDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        genericDetails:
            json_.containsKey('genericDetails')
                ? GenericPlatformDetails.fromJson(
                  json_['genericDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        physicalDetails:
            json_.containsKey('physicalDetails')
                ? PhysicalPlatformDetails.fromJson(
                  json_['physicalDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vmwareDetails:
            json_.containsKey('vmwareDetails')
                ? VmwarePlatformDetails.fromJson(
                  json_['vmwareDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (awsEc2Details != null) 'awsEc2Details': awsEc2Details!,
    if (azureVmDetails != null) 'azureVmDetails': azureVmDetails!,
    if (genericDetails != null) 'genericDetails': genericDetails!,
    if (physicalDetails != null) 'physicalDetails': physicalDetails!,
    if (vmwareDetails != null) 'vmwareDetails': vmwareDetails!,
  };
}

/// Specific details for a PostgreSQL database deployment.
class PostgreSqlDatabaseDeployment {
  /// List of PostgreSql properties.
  ///
  /// Optional.
  core.List<PostgreSqlProperty>? properties;

  /// List of PostgreSql settings.
  ///
  /// Optional.
  core.List<PostgreSqlSetting>? settings;

  PostgreSqlDatabaseDeployment({this.properties, this.settings});

  PostgreSqlDatabaseDeployment.fromJson(core.Map json_)
    : this(
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) => PostgreSqlProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        settings:
            (json_['settings'] as core.List?)
                ?.map(
                  (value) => PostgreSqlSetting.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
    if (settings != null) 'settings': settings!,
  };
}

/// PostgreSql extension.
typedef PostgreSqlExtension = $PostgreSqlExtension;

/// PostgreSql property.
typedef PostgreSqlProperty = $SqlProperty;

/// Specific details for a PostgreSql schema.
class PostgreSqlSchemaDetails {
  /// PostgreSql foreign tables.
  ///
  /// Optional.
  core.int? foreignTablesCount;

  /// PostgreSql extensions.
  ///
  /// Optional.
  core.List<PostgreSqlExtension>? postgresqlExtensions;

  PostgreSqlSchemaDetails({this.foreignTablesCount, this.postgresqlExtensions});

  PostgreSqlSchemaDetails.fromJson(core.Map json_)
    : this(
        foreignTablesCount: json_['foreignTablesCount'] as core.int?,
        postgresqlExtensions:
            (json_['postgresqlExtensions'] as core.List?)
                ?.map(
                  (value) => PostgreSqlExtension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (foreignTablesCount != null) 'foreignTablesCount': foreignTablesCount!,
    if (postgresqlExtensions != null)
      'postgresqlExtensions': postgresqlExtensions!,
  };
}

/// PostgreSql setting.
typedef PostgreSqlSetting = $PostgreSqlSetting;

/// The preferences that apply to all assets in a given context.
class PreferenceSet {
  /// The timestamp when the preference set was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A set of preferences that applies to all databases in the context.
  ///
  /// Optional.
  DatabasePreferences? databasePreferences;

  /// A description of the preference set.
  core.String? description;

  /// User-friendly display name.
  ///
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// Name of the PreferenceSet.
  ///
  /// Output only.
  core.String? name;

  /// Region preferences for assets using this preference set.
  ///
  /// If you are unsure which value to set, the migration service API region is
  /// often a good value to start with. If unspecified,
  /// VirtualMachinePreferences.RegionPreferences is used.
  ///
  /// Optional.
  RegionPreferences? regionPreferences;

  /// The timestamp when the preference set was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  VirtualMachinePreferences? virtualMachinePreferences;

  PreferenceSet({
    this.createTime,
    this.databasePreferences,
    this.description,
    this.displayName,
    this.name,
    this.regionPreferences,
    this.updateTime,
    this.virtualMachinePreferences,
  });

  PreferenceSet.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        databasePreferences:
            json_.containsKey('databasePreferences')
                ? DatabasePreferences.fromJson(
                  json_['databasePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        regionPreferences:
            json_.containsKey('regionPreferences')
                ? RegionPreferences.fromJson(
                  json_['regionPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        virtualMachinePreferences:
            json_.containsKey('virtualMachinePreferences')
                ? VirtualMachinePreferences.fromJson(
                  json_['virtualMachinePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (databasePreferences != null)
      'databasePreferences': databasePreferences!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (regionPreferences != null) 'regionPreferences': regionPreferences!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (virtualMachinePreferences != null)
      'virtualMachinePreferences': virtualMachinePreferences!,
  };
}

/// The user preferences relating to target regions.
typedef RegionPreferences = $RegionPreferences;

/// Message representing a relation between 2 resource.
typedef Relation = $Relation;

/// A request to remove assets from a group.
class RemoveAssetsFromGroupRequest {
  /// When this value is set to `false` and one of the given assets is not an
  /// existing member of the group, the operation fails with a `Not Found`
  /// error.
  ///
  /// When set to `true` this situation is silently ignored by the server.
  /// Default value is `false`.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// List of assets to be removed.
  ///
  /// The maximum number of assets that can be removed in a single request is
  /// 1000.
  ///
  /// Required.
  AssetList? assets;

  /// An optional request ID to identify requests.
  ///
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
  /// Optional.
  core.String? requestId;

  RemoveAssetsFromGroupRequest({
    this.allowMissing,
    this.assets,
    this.requestId,
  });

  RemoveAssetsFromGroupRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        assets:
            json_.containsKey('assets')
                ? AssetList.fromJson(
                  json_['assets'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowMissing != null) 'allowMissing': allowMissing!,
    if (assets != null) 'assets': assets!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Report represents a point-in-time rendering of the ReportConfig results.
class Report {
  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description.
  core.String? description;

  /// User-friendly display name.
  ///
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// Name of resource.
  ///
  /// Output only.
  core.String? name;

  /// Report creation state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default Report creation state.
  /// - "PENDING" : Creating Report.
  /// - "SUCCEEDED" : Successfully created Report.
  /// - "FAILED" : Failed to create Report.
  core.String? state;

  /// Summary view of the Report.
  ///
  /// Output only.
  ReportSummary? summary;

  /// Report type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default report type.
  /// - "TOTAL_COST_OF_OWNERSHIP" : Total cost of ownership report type.
  core.String? type;

  /// Last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Report({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.state,
    this.summary,
    this.type,
    this.updateTime,
  });

  Report.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        summary:
            json_.containsKey('summary')
                ? ReportSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (summary != null) 'summary': summary!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A response to a call to `ReportAssetFrame`.
typedef ReportAssetFramesResponse = $Empty;

/// The groups and associated preference sets on which we can generate reports.
class ReportConfig {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description.
  core.String? description;

  /// User-friendly display name.
  ///
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// Collection of combinations of groups and preference sets.
  ///
  /// Required.
  core.List<ReportConfigGroupPreferenceSetAssignment>?
  groupPreferencesetAssignments;

  /// Name of resource.
  ///
  /// Output only.
  core.String? name;

  /// The timestamp when the resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ReportConfig({
    this.createTime,
    this.description,
    this.displayName,
    this.groupPreferencesetAssignments,
    this.name,
    this.updateTime,
  });

  ReportConfig.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        groupPreferencesetAssignments:
            (json_['groupPreferencesetAssignments'] as core.List?)
                ?.map(
                  (value) => ReportConfigGroupPreferenceSetAssignment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (groupPreferencesetAssignments != null)
      'groupPreferencesetAssignments': groupPreferencesetAssignments!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents a combination of a group with a preference set.
typedef ReportConfigGroupPreferenceSetAssignment =
    $ReportConfigGroupPreferenceSetAssignment;

/// Describes the Summary view of a Report, which contains aggregated values for
/// all the groups and preference sets included in this Report.
class ReportSummary {
  /// Aggregate statistics for unique assets across all the groups.
  ReportSummaryAssetAggregateStats? allAssetsStats;

  /// Aggregate statistics for unique database assets across all the groups.
  ///
  /// Output only.
  ReportSummaryAssetAggregateStats? databaseStats;

  /// Findings for each Group included in this report.
  core.List<ReportSummaryGroupFinding>? groupFindings;

  /// Aggregate statistics for unique virtual machine assets across all the
  /// groups.
  ///
  /// Output only.
  ReportSummaryAssetAggregateStats? virtualMachineStats;

  ReportSummary({
    this.allAssetsStats,
    this.databaseStats,
    this.groupFindings,
    this.virtualMachineStats,
  });

  ReportSummary.fromJson(core.Map json_)
    : this(
        allAssetsStats:
            json_.containsKey('allAssetsStats')
                ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['allAssetsStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databaseStats:
            json_.containsKey('databaseStats')
                ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['databaseStats'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        groupFindings:
            (json_['groupFindings'] as core.List?)
                ?.map(
                  (value) => ReportSummaryGroupFinding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        virtualMachineStats:
            json_.containsKey('virtualMachineStats')
                ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['virtualMachineStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allAssetsStats != null) 'allAssetsStats': allAssetsStats!,
    if (databaseStats != null) 'databaseStats': databaseStats!,
    if (groupFindings != null) 'groupFindings': groupFindings!,
    if (virtualMachineStats != null)
      'virtualMachineStats': virtualMachineStats!,
  };
}

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStats {
  /// Count of assets grouped by age.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ReportSummaryChartData? assetAge;

  /// Histogram showing a distribution of logical CPU core counts.
  ReportSummaryHistogramChartData? coreCountHistogram;

  /// Count of assets grouped by database type.
  ///
  /// Keys here are taken from DatabaseType enum. Only present for databases.
  ///
  /// Output only.
  ReportSummaryChartData? databaseTypes;

  /// Histogram showing a distribution of memory sizes.
  ReportSummaryHistogramChartData? memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ReportSummaryChartData? memoryUtilization;

  /// Total memory split into Used/Free buckets.
  ReportSummaryUtilizationChartData? memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  ///
  /// Only present for virtual machines.
  ReportSummaryChartData? operatingSystem;

  /// Histogram showing a distribution of storage sizes.
  ReportSummaryHistogramChartData? storageBytesHistogram;

  /// Total storage split into Used/Free buckets.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ReportSummaryChartData? storageUtilization;

  /// Total memory split into Used/Free buckets.
  ReportSummaryUtilizationChartData? storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  core.String? totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  core.String? totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  core.String? totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  core.String? totalStorageBytes;

  ReportSummaryAssetAggregateStats({
    this.assetAge,
    this.coreCountHistogram,
    this.databaseTypes,
    this.memoryBytesHistogram,
    this.memoryUtilization,
    this.memoryUtilizationChart,
    this.operatingSystem,
    this.storageBytesHistogram,
    this.storageUtilization,
    this.storageUtilizationChart,
    this.totalAssets,
    this.totalCores,
    this.totalMemoryBytes,
    this.totalStorageBytes,
  });

  ReportSummaryAssetAggregateStats.fromJson(core.Map json_)
    : this(
        assetAge:
            json_.containsKey('assetAge')
                ? ReportSummaryChartData.fromJson(
                  json_['assetAge'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        coreCountHistogram:
            json_.containsKey('coreCountHistogram')
                ? ReportSummaryHistogramChartData.fromJson(
                  json_['coreCountHistogram']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databaseTypes:
            json_.containsKey('databaseTypes')
                ? ReportSummaryChartData.fromJson(
                  json_['databaseTypes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryBytesHistogram:
            json_.containsKey('memoryBytesHistogram')
                ? ReportSummaryHistogramChartData.fromJson(
                  json_['memoryBytesHistogram']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryUtilization:
            json_.containsKey('memoryUtilization')
                ? ReportSummaryChartData.fromJson(
                  json_['memoryUtilization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryUtilizationChart:
            json_.containsKey('memoryUtilizationChart')
                ? ReportSummaryUtilizationChartData.fromJson(
                  json_['memoryUtilizationChart']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        operatingSystem:
            json_.containsKey('operatingSystem')
                ? ReportSummaryChartData.fromJson(
                  json_['operatingSystem']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageBytesHistogram:
            json_.containsKey('storageBytesHistogram')
                ? ReportSummaryHistogramChartData.fromJson(
                  json_['storageBytesHistogram']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageUtilization:
            json_.containsKey('storageUtilization')
                ? ReportSummaryChartData.fromJson(
                  json_['storageUtilization']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageUtilizationChart:
            json_.containsKey('storageUtilizationChart')
                ? ReportSummaryUtilizationChartData.fromJson(
                  json_['storageUtilizationChart']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        totalAssets: json_['totalAssets'] as core.String?,
        totalCores: json_['totalCores'] as core.String?,
        totalMemoryBytes: json_['totalMemoryBytes'] as core.String?,
        totalStorageBytes: json_['totalStorageBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetAge != null) 'assetAge': assetAge!,
    if (coreCountHistogram != null) 'coreCountHistogram': coreCountHistogram!,
    if (databaseTypes != null) 'databaseTypes': databaseTypes!,
    if (memoryBytesHistogram != null)
      'memoryBytesHistogram': memoryBytesHistogram!,
    if (memoryUtilization != null) 'memoryUtilization': memoryUtilization!,
    if (memoryUtilizationChart != null)
      'memoryUtilizationChart': memoryUtilizationChart!,
    if (operatingSystem != null) 'operatingSystem': operatingSystem!,
    if (storageBytesHistogram != null)
      'storageBytesHistogram': storageBytesHistogram!,
    if (storageUtilization != null) 'storageUtilization': storageUtilization!,
    if (storageUtilizationChart != null)
      'storageUtilizationChart': storageUtilizationChart!,
    if (totalAssets != null) 'totalAssets': totalAssets!,
    if (totalCores != null) 'totalCores': totalCores!,
    if (totalMemoryBytes != null) 'totalMemoryBytes': totalMemoryBytes!,
    if (totalStorageBytes != null) 'totalStorageBytes': totalStorageBytes!,
  };
}

/// Describes a collection of data points rendered as a Chart.
class ReportSummaryChartData {
  /// Each data point in the chart is represented as a name-value pair with the
  /// name being the x-axis label, and the value being the y-axis value.
  core.List<ReportSummaryChartDataDataPoint>? dataPoints;

  ReportSummaryChartData({this.dataPoints});

  ReportSummaryChartData.fromJson(core.Map json_)
    : this(
        dataPoints:
            (json_['dataPoints'] as core.List?)
                ?.map(
                  (value) => ReportSummaryChartDataDataPoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataPoints != null) 'dataPoints': dataPoints!,
  };
}

/// Describes a single data point in the Chart.
typedef ReportSummaryChartDataDataPoint = $ReportSummaryChartDataDataPoint;

/// DatabaseFinding contains an aggregate costs and shapes for a single database
/// type.
class ReportSummaryDatabaseFinding {
  /// Number of database assets which were successfully assigned in this
  /// finding.
  ///
  /// Output only.
  core.String? allocatedAssetCount;

  /// Number of database assets in this finding.
  ///
  /// Output only.
  core.String? totalAssets;

  ReportSummaryDatabaseFinding({this.allocatedAssetCount, this.totalAssets});

  ReportSummaryDatabaseFinding.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        totalAssets: json_['totalAssets'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (totalAssets != null) 'totalAssets': totalAssets!,
  };
}

/// Summary Findings for a specific Group.
class ReportSummaryGroupFinding {
  /// Summary statistics for all the assets in this group.
  ReportSummaryAssetAggregateStats? assetAggregateStats;

  /// Asset type for the group finding.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ASSET_TYPE_UNSPECIFIED" : Unknown asset type.
  /// - "VIRTUAL_MACHINE" : Virtual Machine asset type
  /// - "DATABASE" : Database asset type
  core.String? assetType;

  /// Source asset database type for the group finding.
  ///
  /// Only present for databases.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Unknown database type.
  /// - "SQL_SERVER" : SQL Server database.
  /// - "MYSQL" : MySQL database.
  /// - "POSTGRES" : PostgreSQL database.
  core.String? databaseType;

  /// Description for this group finding.
  core.String? description;

  /// Display Name for this group finding.
  core.String? displayName;

  /// Full name of the group.
  ///
  /// Output only.
  core.String? group;

  /// This field is deprecated, do not rely on it having a value.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? overlappingAssetCount;

  /// Findings for each of the PreferenceSets for this group.
  core.List<ReportSummaryGroupPreferenceSetFinding>? preferenceSetFindings;

  ReportSummaryGroupFinding({
    this.assetAggregateStats,
    this.assetType,
    this.databaseType,
    this.description,
    this.displayName,
    this.group,
    this.overlappingAssetCount,
    this.preferenceSetFindings,
  });

  ReportSummaryGroupFinding.fromJson(core.Map json_)
    : this(
        assetAggregateStats:
            json_.containsKey('assetAggregateStats')
                ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['assetAggregateStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        assetType: json_['assetType'] as core.String?,
        databaseType: json_['databaseType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        group: json_['group'] as core.String?,
        overlappingAssetCount: json_['overlappingAssetCount'] as core.String?,
        preferenceSetFindings:
            (json_['preferenceSetFindings'] as core.List?)
                ?.map(
                  (value) => ReportSummaryGroupPreferenceSetFinding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetAggregateStats != null)
      'assetAggregateStats': assetAggregateStats!,
    if (assetType != null) 'assetType': assetType!,
    if (databaseType != null) 'databaseType': databaseType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (group != null) 'group': group!,
    if (overlappingAssetCount != null)
      'overlappingAssetCount': overlappingAssetCount!,
    if (preferenceSetFindings != null)
      'preferenceSetFindings': preferenceSetFindings!,
  };
}

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFinding {
  /// Details about databases in this finding.
  ///
  /// Only present for databases.
  ///
  /// Output only.
  ReportSummaryDatabaseFinding? databaseFinding;

  /// Description for the Preference Set.
  core.String? description;

  /// Display Name of the Preference Set
  core.String? displayName;

  /// A set of findings that applies to all virtual machines in the input.
  ///
  /// Only present for virtual machines.
  ///
  /// Output only.
  ReportSummaryMachineFinding? machineFinding;

  /// A set of preferences that applies to all machines in the context.
  VirtualMachinePreferences? machinePreferences;

  /// Compute monthly cost for this preference set.
  ///
  /// Output only.
  Money? monthlyCostCompute;

  /// Backup monthly cost for this preference set.
  ///
  /// Only present for databases.
  ///
  /// Output only.
  Money? monthlyCostDatabaseBackup;

  /// Database licensing monthly cost for this preference set.
  ///
  /// Only present for databases.
  ///
  /// Output only.
  Money? monthlyCostDatabaseLicensing;

  /// GCVE Protected nodes cost for this preference set.
  ///
  /// Output only.
  Money? monthlyCostGcveProtected;

  /// Network Egress monthly cost for this preference set.
  ///
  /// Only present for virtual machines.
  ///
  /// Output only.
  Money? monthlyCostNetworkEgress;

  /// All operating systems licensing monthly cost for this preference set.
  ///
  /// Only present for virtual machines.
  ///
  /// Output only.
  Money? monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  ///
  /// Output only.
  Money? monthlyCostOther;

  /// VMware portable license monthly cost for this preference set.
  ///
  /// Only present for VMware target with portable license service type. This
  /// cost is not paid to google, but is an estimate of license costs paid to
  /// VMware.
  ///
  /// Output only.
  Money? monthlyCostPortableVmwareLicense;

  /// Storage monthly cost for this preference set.
  ///
  /// Output only.
  Money? monthlyCostStorage;

  /// Total monthly cost for this preference set.
  ///
  /// Output only.
  Money? monthlyCostTotal;

  /// A copy of the preference set used for this finding.
  ///
  /// Output only.
  PreferenceSet? preferenceSet;

  /// Target region for this Preference Set
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? preferredRegion;

  /// Text describing the pricing track specified for this Preference Set
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? pricingTrack;

  /// A set of findings that applies to Stole-Tenant machines in the input.
  ///
  /// Only present for virtual machines.
  ReportSummarySoleTenantFinding? soleTenantFinding;

  /// Text describing the business priority specified for this Preference Set
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? topPriority;

  /// A set of findings that applies to VMWare machines in the input.
  ///
  /// Only present for virtual machines.
  ReportSummaryVMWareEngineFinding? vmwareEngineFinding;

  ReportSummaryGroupPreferenceSetFinding({
    this.databaseFinding,
    this.description,
    this.displayName,
    this.machineFinding,
    this.machinePreferences,
    this.monthlyCostCompute,
    this.monthlyCostDatabaseBackup,
    this.monthlyCostDatabaseLicensing,
    this.monthlyCostGcveProtected,
    this.monthlyCostNetworkEgress,
    this.monthlyCostOsLicense,
    this.monthlyCostOther,
    this.monthlyCostPortableVmwareLicense,
    this.monthlyCostStorage,
    this.monthlyCostTotal,
    this.preferenceSet,
    this.preferredRegion,
    this.pricingTrack,
    this.soleTenantFinding,
    this.topPriority,
    this.vmwareEngineFinding,
  });

  ReportSummaryGroupPreferenceSetFinding.fromJson(core.Map json_)
    : this(
        databaseFinding:
            json_.containsKey('databaseFinding')
                ? ReportSummaryDatabaseFinding.fromJson(
                  json_['databaseFinding']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        machineFinding:
            json_.containsKey('machineFinding')
                ? ReportSummaryMachineFinding.fromJson(
                  json_['machineFinding']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        machinePreferences:
            json_.containsKey('machinePreferences')
                ? VirtualMachinePreferences.fromJson(
                  json_['machinePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostCompute:
            json_.containsKey('monthlyCostCompute')
                ? Money.fromJson(
                  json_['monthlyCostCompute']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostDatabaseBackup:
            json_.containsKey('monthlyCostDatabaseBackup')
                ? Money.fromJson(
                  json_['monthlyCostDatabaseBackup']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostDatabaseLicensing:
            json_.containsKey('monthlyCostDatabaseLicensing')
                ? Money.fromJson(
                  json_['monthlyCostDatabaseLicensing']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostGcveProtected:
            json_.containsKey('monthlyCostGcveProtected')
                ? Money.fromJson(
                  json_['monthlyCostGcveProtected']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostNetworkEgress:
            json_.containsKey('monthlyCostNetworkEgress')
                ? Money.fromJson(
                  json_['monthlyCostNetworkEgress']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostOsLicense:
            json_.containsKey('monthlyCostOsLicense')
                ? Money.fromJson(
                  json_['monthlyCostOsLicense']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostOther:
            json_.containsKey('monthlyCostOther')
                ? Money.fromJson(
                  json_['monthlyCostOther']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostPortableVmwareLicense:
            json_.containsKey('monthlyCostPortableVmwareLicense')
                ? Money.fromJson(
                  json_['monthlyCostPortableVmwareLicense']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostStorage:
            json_.containsKey('monthlyCostStorage')
                ? Money.fromJson(
                  json_['monthlyCostStorage']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        monthlyCostTotal:
            json_.containsKey('monthlyCostTotal')
                ? Money.fromJson(
                  json_['monthlyCostTotal']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        preferenceSet:
            json_.containsKey('preferenceSet')
                ? PreferenceSet.fromJson(
                  json_['preferenceSet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        preferredRegion: json_['preferredRegion'] as core.String?,
        pricingTrack: json_['pricingTrack'] as core.String?,
        soleTenantFinding:
            json_.containsKey('soleTenantFinding')
                ? ReportSummarySoleTenantFinding.fromJson(
                  json_['soleTenantFinding']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        topPriority: json_['topPriority'] as core.String?,
        vmwareEngineFinding:
            json_.containsKey('vmwareEngineFinding')
                ? ReportSummaryVMWareEngineFinding.fromJson(
                  json_['vmwareEngineFinding']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (databaseFinding != null) 'databaseFinding': databaseFinding!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (machineFinding != null) 'machineFinding': machineFinding!,
    if (machinePreferences != null) 'machinePreferences': machinePreferences!,
    if (monthlyCostCompute != null) 'monthlyCostCompute': monthlyCostCompute!,
    if (monthlyCostDatabaseBackup != null)
      'monthlyCostDatabaseBackup': monthlyCostDatabaseBackup!,
    if (monthlyCostDatabaseLicensing != null)
      'monthlyCostDatabaseLicensing': monthlyCostDatabaseLicensing!,
    if (monthlyCostGcveProtected != null)
      'monthlyCostGcveProtected': monthlyCostGcveProtected!,
    if (monthlyCostNetworkEgress != null)
      'monthlyCostNetworkEgress': monthlyCostNetworkEgress!,
    if (monthlyCostOsLicense != null)
      'monthlyCostOsLicense': monthlyCostOsLicense!,
    if (monthlyCostOther != null) 'monthlyCostOther': monthlyCostOther!,
    if (monthlyCostPortableVmwareLicense != null)
      'monthlyCostPortableVmwareLicense': monthlyCostPortableVmwareLicense!,
    if (monthlyCostStorage != null) 'monthlyCostStorage': monthlyCostStorage!,
    if (monthlyCostTotal != null) 'monthlyCostTotal': monthlyCostTotal!,
    if (preferenceSet != null) 'preferenceSet': preferenceSet!,
    if (preferredRegion != null) 'preferredRegion': preferredRegion!,
    if (pricingTrack != null) 'pricingTrack': pricingTrack!,
    if (soleTenantFinding != null) 'soleTenantFinding': soleTenantFinding!,
    if (topPriority != null) 'topPriority': topPriority!,
    if (vmwareEngineFinding != null)
      'vmwareEngineFinding': vmwareEngineFinding!,
  };
}

/// A Histogram Chart shows a distribution of values into buckets, showing a
/// count of values which fall into a bucket.
class ReportSummaryHistogramChartData {
  /// Buckets in the histogram.
  ///
  /// There will be `n+1` buckets matching `n` lower bounds in the request. The
  /// first bucket will be from -infinity to the first bound. Subsequent buckets
  /// will be between one bound and the next. The final bucket will be from the
  /// final bound to infinity.
  core.List<ReportSummaryHistogramChartDataBucket>? buckets;

  ReportSummaryHistogramChartData({this.buckets});

  ReportSummaryHistogramChartData.fromJson(core.Map json_)
    : this(
        buckets:
            (json_['buckets'] as core.List?)
                ?.map(
                  (value) => ReportSummaryHistogramChartDataBucket.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buckets != null) 'buckets': buckets!,
  };
}

/// A histogram bucket with a lower and upper bound, and a count of items with a
/// field value between those bounds.
///
/// The lower bound is inclusive and the upper bound is exclusive. Lower bound
/// may be -infinity and upper bound may be infinity.
typedef ReportSummaryHistogramChartDataBucket =
    $ReportSummaryHistogramChartDataBucket;

/// A set of findings that applies to assets of type Virtual/Physical Machine.
class ReportSummaryMachineFinding {
  /// Count of assets which were allocated.
  core.String? allocatedAssetCount;

  /// Set of disk types allocated to assets.
  core.List<core.String>? allocatedDiskTypes;

  /// Set of regions in which the assets were allocated.
  core.List<core.String>? allocatedRegions;

  /// Distribution of assets based on the Machine Series.
  core.List<ReportSummaryMachineSeriesAllocation>? machineSeriesAllocations;

  ReportSummaryMachineFinding({
    this.allocatedAssetCount,
    this.allocatedDiskTypes,
    this.allocatedRegions,
    this.machineSeriesAllocations,
  });

  ReportSummaryMachineFinding.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        allocatedDiskTypes:
            (json_['allocatedDiskTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allocatedRegions:
            (json_['allocatedRegions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        machineSeriesAllocations:
            (json_['machineSeriesAllocations'] as core.List?)
                ?.map(
                  (value) => ReportSummaryMachineSeriesAllocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (allocatedDiskTypes != null) 'allocatedDiskTypes': allocatedDiskTypes!,
    if (allocatedRegions != null) 'allocatedRegions': allocatedRegions!,
    if (machineSeriesAllocations != null)
      'machineSeriesAllocations': machineSeriesAllocations!,
  };
}

/// Represents a data point tracking the count of assets allocated for a
/// specific Machine Series.
class ReportSummaryMachineSeriesAllocation {
  /// Count of assets allocated to this machine series.
  core.String? allocatedAssetCount;

  /// The Machine Series (e.g. "E2", "N2")
  MachineSeries? machineSeries;

  ReportSummaryMachineSeriesAllocation({
    this.allocatedAssetCount,
    this.machineSeries,
  });

  ReportSummaryMachineSeriesAllocation.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        machineSeries:
            json_.containsKey('machineSeries')
                ? MachineSeries.fromJson(
                  json_['machineSeries'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (machineSeries != null) 'machineSeries': machineSeries!,
  };
}

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFinding {
  /// Count of assets which are allocated
  core.String? allocatedAssetCount;

  /// Set of regions in which the assets are allocated
  core.List<core.String>? allocatedRegions;

  /// Set of per-nodetype allocation records
  core.List<ReportSummarySoleTenantNodeAllocation>? nodeAllocations;

  ReportSummarySoleTenantFinding({
    this.allocatedAssetCount,
    this.allocatedRegions,
    this.nodeAllocations,
  });

  ReportSummarySoleTenantFinding.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        allocatedRegions:
            (json_['allocatedRegions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        nodeAllocations:
            (json_['nodeAllocations'] as core.List?)
                ?.map(
                  (value) => ReportSummarySoleTenantNodeAllocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (allocatedRegions != null) 'allocatedRegions': allocatedRegions!,
    if (nodeAllocations != null) 'nodeAllocations': nodeAllocations!,
  };
}

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocation {
  /// Count of assets allocated to these nodes
  core.String? allocatedAssetCount;

  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  SoleTenantNodeType? node;

  /// Count of this node type to be provisioned
  core.String? nodeCount;

  ReportSummarySoleTenantNodeAllocation({
    this.allocatedAssetCount,
    this.node,
    this.nodeCount,
  });

  ReportSummarySoleTenantNodeAllocation.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        node:
            json_.containsKey('node')
                ? SoleTenantNodeType.fromJson(
                  json_['node'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nodeCount: json_['nodeCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (node != null) 'node': node!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
  };
}

/// Utilization Chart is a specific type of visualization which displays a
/// metric classified into "Used" and "Free" buckets.
typedef ReportSummaryUtilizationChartData = $ReportSummaryUtilizationChartData;

/// A set of findings that applies to assets destined for VMWare Engine.
class ReportSummaryVMWareEngineFinding {
  /// Count of assets which are allocated
  core.String? allocatedAssetCount;

  /// Set of regions in which the assets were allocated
  core.List<core.String>? allocatedRegions;

  /// Set of per-nodetype allocation records
  core.List<ReportSummaryVMWareNodeAllocation>? nodeAllocations;

  ReportSummaryVMWareEngineFinding({
    this.allocatedAssetCount,
    this.allocatedRegions,
    this.nodeAllocations,
  });

  ReportSummaryVMWareEngineFinding.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        allocatedRegions:
            (json_['allocatedRegions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        nodeAllocations:
            (json_['nodeAllocations'] as core.List?)
                ?.map(
                  (value) => ReportSummaryVMWareNodeAllocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (allocatedRegions != null) 'allocatedRegions': allocatedRegions!,
    if (nodeAllocations != null) 'nodeAllocations': nodeAllocations!,
  };
}

/// A VMWare Engine Node
typedef ReportSummaryVMWareNode = $Node01;

/// Represents assets allocated to a specific VMWare Node type.
class ReportSummaryVMWareNodeAllocation {
  /// Count of assets allocated to these nodes
  core.String? allocatedAssetCount;

  /// Count of this node type to be provisioned
  core.String? nodeCount;

  /// VMWare node type, e.g. "ve1-standard-72"
  ReportSummaryVMWareNode? vmwareNode;

  ReportSummaryVMWareNodeAllocation({
    this.allocatedAssetCount,
    this.nodeCount,
    this.vmwareNode,
  });

  ReportSummaryVMWareNodeAllocation.fromJson(core.Map json_)
    : this(
        allocatedAssetCount: json_['allocatedAssetCount'] as core.String?,
        nodeCount: json_['nodeCount'] as core.String?,
        vmwareNode:
            json_.containsKey('vmwareNode')
                ? ReportSummaryVMWareNode.fromJson(
                  json_['vmwareNode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedAssetCount != null)
      'allocatedAssetCount': allocatedAssetCount!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
    if (vmwareNode != null) 'vmwareNode': vmwareNode!,
  };
}

/// A request to run an assets export job.
typedef RunAssetsExportJobRequest = $Request00;

/// A request to run an import job.
typedef RunImportJobRequest = $Request00;

/// Guest OS running process details.
typedef RunningProcess = $RunningProcess;

/// List of running guest OS processes.
class RunningProcessList {
  /// Running process entries.
  core.List<RunningProcess>? processes;

  RunningProcessList({this.processes});

  RunningProcessList.fromJson(core.Map json_)
    : this(
        processes:
            (json_['processes'] as core.List?)
                ?.map(
                  (value) => RunningProcess.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (processes != null) 'processes': processes!,
  };
}

/// Guest OS running service details.
class RunningService {
  /// Service command line.
  core.String? cmdline;

  /// Service binary path.
  core.String? exePath;

  /// Service name.
  core.String? name;

  /// Service pid.
  core.String? pid;

  /// Service start mode (raw, OS-agnostic).
  core.String? startMode;

  /// Service state (raw, OS-agnostic).
  core.String? state;

  /// Service status.
  core.String? status;

  RunningService({
    this.cmdline,
    this.exePath,
    this.name,
    this.pid,
    this.startMode,
    this.state,
    this.status,
  });

  RunningService.fromJson(core.Map json_)
    : this(
        cmdline: json_['cmdline'] as core.String?,
        exePath: json_['exePath'] as core.String?,
        name: json_['name'] as core.String?,
        pid: json_['pid'] as core.String?,
        startMode: json_['startMode'] as core.String?,
        state: json_['state'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cmdline != null) 'cmdline': cmdline!,
    if (exePath != null) 'exePath': exePath!,
    if (name != null) 'name': name!,
    if (pid != null) 'pid': pid!,
    if (startMode != null) 'startMode': startMode!,
    if (state != null) 'state': state!,
    if (status != null) 'status': status!,
  };
}

/// List of running guest OS services.
class RunningServiceList {
  /// Running service entries.
  core.List<RunningService>? services;

  RunningServiceList({this.services});

  RunningServiceList.fromJson(core.Map json_)
    : this(
        services:
            (json_['services'] as core.List?)
                ?.map(
                  (value) => RunningService.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (services != null) 'services': services!,
  };
}

/// Runtime networking information.
class RuntimeNetworkInfo {
  /// Network connections.
  NetworkConnectionList? connections;

  /// Netstat (raw, OS-agnostic).
  core.String? netstat;

  /// Netstat time collected.
  DateTime? netstatTime;

  RuntimeNetworkInfo({this.connections, this.netstat, this.netstatTime});

  RuntimeNetworkInfo.fromJson(core.Map json_)
    : this(
        connections:
            json_.containsKey('connections')
                ? NetworkConnectionList.fromJson(
                  json_['connections'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        netstat: json_['netstat'] as core.String?,
        netstatTime:
            json_.containsKey('netstatTime')
                ? DateTime.fromJson(
                  json_['netstatTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
    if (netstat != null) 'netstat': netstat!,
    if (netstatTime != null) 'netstatTime': netstatTime!,
  };
}

/// SELinux details.
class Selinux {
  /// Is SELinux enabled.
  core.bool? enabled;

  /// SELinux mode enforcing / permissive.
  core.String? mode;

  Selinux({this.enabled, this.mode});

  Selinux.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        mode: json_['mode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabled != null) 'enabled': enabled!,
    if (mode != null) 'mode': mode!,
  };
}

/// A request to send a discovery client heartbeat.
class SendDiscoveryClientHeartbeatRequest {
  /// Errors affecting client functionality.
  ///
  /// Optional.
  core.List<Status>? errors;

  /// Client application version.
  ///
  /// Optional.
  core.String? version;

  SendDiscoveryClientHeartbeatRequest({this.errors, this.version});

  SendDiscoveryClientHeartbeatRequest.fromJson(core.Map json_)
    : this(
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errors != null) 'errors': errors!,
    if (version != null) 'version': version!,
  };
}

/// Describes the Migration Center settings related to the project.
class Settings {
  /// Customer consent for Google sales to access their Cloud Migration Center
  /// project.
  core.bool? customerConsentForGoogleSalesToAccessMigrationCenter;

  /// Disable Cloud Logging for the Migration Center API.
  ///
  /// Users are billed for the logs.
  core.bool? disableCloudLogging;

  /// The name of the resource.
  ///
  /// Output only.
  core.String? name;

  /// The preference set used by default for a project.
  core.String? preferenceSet;

  Settings({
    this.customerConsentForGoogleSalesToAccessMigrationCenter,
    this.disableCloudLogging,
    this.name,
    this.preferenceSet,
  });

  Settings.fromJson(core.Map json_)
    : this(
        customerConsentForGoogleSalesToAccessMigrationCenter:
            json_['customerConsentForGoogleSalesToAccessMigrationCenter']
                as core.bool?,
        disableCloudLogging: json_['disableCloudLogging'] as core.bool?,
        name: json_['name'] as core.String?,
        preferenceSet: json_['preferenceSet'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerConsentForGoogleSalesToAccessMigrationCenter != null)
      'customerConsentForGoogleSalesToAccessMigrationCenter':
          customerConsentForGoogleSalesToAccessMigrationCenter!,
    if (disableCloudLogging != null)
      'disableCloudLogging': disableCloudLogging!,
    if (name != null) 'name': name!,
    if (preferenceSet != null) 'preferenceSet': preferenceSet!,
  };
}

/// Contains a signed URI.
class SignedUri {
  /// Name of the file the Signed URI references.
  ///
  /// Output only.
  core.String? file;

  /// Download URI for the file.
  ///
  /// Output only.
  core.String? uri;

  SignedUri({this.file, this.uri});

  SignedUri.fromJson(core.Map json_)
    : this(
        file: json_['file'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (file != null) 'file': file!,
    if (uri != null) 'uri': uri!,
  };
}

/// Signed URI destination configuration.
class SignedUriDestination {
  /// The file format to export.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format will be treated as
  /// CSV.
  /// - "CSV" : CSV file format.
  /// - "XLSX" : XLSX file format which used in Excel.
  core.String? fileFormat;

  SignedUriDestination({this.fileFormat});

  SignedUriDestination.fromJson(core.Map json_)
    : this(fileFormat: json_['fileFormat'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileFormat != null) 'fileFormat': fileFormat!,
  };
}

/// Contains a list of Signed URIs.
class SignedUris {
  /// List of signed URIs.
  ///
  /// Output only.
  core.List<SignedUri>? signedUris;

  SignedUris({this.signedUris});

  SignedUris.fromJson(core.Map json_)
    : this(
        signedUris:
            (json_['signedUris'] as core.List?)
                ?.map(
                  (value) => SignedUri.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (signedUris != null) 'signedUris': signedUris!,
  };
}

/// An insight regarding software detected on an asset.
class SoftwareInsight {
  /// Information about the detected software.
  ///
  /// Output only.
  DetectedSoftware? detectedSoftware;

  SoftwareInsight({this.detectedSoftware});

  SoftwareInsight.fromJson(core.Map json_)
    : this(
        detectedSoftware:
            json_.containsKey('detectedSoftware')
                ? DetectedSoftware.fromJson(
                  json_['detectedSoftware']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedSoftware != null) 'detectedSoftware': detectedSoftware!,
  };
}

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferences {
  /// Commitment plan to consider when calculating costs for virtual machine
  /// insights and recommendations.
  ///
  /// If you are unsure which value to set, a 3 year commitment plan is often a
  /// good value to start with.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Unspecified commitment plan.
  /// - "ON_DEMAND" : No commitment plan (on-demand usage).
  /// - "COMMITMENT_1_YEAR" : 1-year regular committed use discount.
  /// - "COMMITMENT_3_YEAR" : 3-year regular committed use discount.
  /// - "COMMITMENT_FLEXIBLE_1_YEAR" : 1-year flexible committed use discount.
  /// While not supported in the v1 API, this value is converted to UNSPECIFIED
  /// in conversions to the v1 API.
  /// - "COMMITMENT_FLEXIBLE_3_YEAR" : 3-year flexible committed use discount.
  /// While not supported in the v1 API, this value is converted to UNSPECIFIED
  /// in conversions to the v1 API.
  core.String? commitmentPlan;

  /// CPU overcommit ratio.
  ///
  /// Acceptable values are between 1.0 and 2.0 inclusive.
  core.double? cpuOvercommitRatio;

  /// Sole Tenancy nodes maintenance policy.
  /// Possible string values are:
  /// - "HOST_MAINTENANCE_POLICY_UNSPECIFIED" : Unspecified host maintenance
  /// policy.
  /// - "HOST_MAINTENANCE_POLICY_DEFAULT" : Default host maintenance policy.
  /// - "HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE" : Restart in place host
  /// maintenance policy.
  /// - "HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP" : Migrate within
  /// node group host maintenance policy.
  core.String? hostMaintenancePolicy;

  /// A list of sole tenant node types.
  ///
  /// An empty list means that all possible node types will be considered.
  core.List<SoleTenantNodeType>? nodeTypes;

  /// Pricing options for OS images.
  ///
  /// Optional.
  OperatingSystemPricingPreferences? osPricingPreferences;

  SoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
    this.osPricingPreferences,
  });

  SoleTenancyPreferences.fromJson(core.Map json_)
    : this(
        commitmentPlan: json_['commitmentPlan'] as core.String?,
        cpuOvercommitRatio:
            (json_['cpuOvercommitRatio'] as core.num?)?.toDouble(),
        hostMaintenancePolicy: json_['hostMaintenancePolicy'] as core.String?,
        nodeTypes:
            (json_['nodeTypes'] as core.List?)
                ?.map(
                  (value) => SoleTenantNodeType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        osPricingPreferences:
            json_.containsKey('osPricingPreferences')
                ? OperatingSystemPricingPreferences.fromJson(
                  json_['osPricingPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
    if (cpuOvercommitRatio != null) 'cpuOvercommitRatio': cpuOvercommitRatio!,
    if (hostMaintenancePolicy != null)
      'hostMaintenancePolicy': hostMaintenancePolicy!,
    if (nodeTypes != null) 'nodeTypes': nodeTypes!,
    if (osPricingPreferences != null)
      'osPricingPreferences': osPricingPreferences!,
  };
}

/// A Sole Tenant node type.
typedef SoleTenantNodeType = $SoleTenantNodeType;

/// Source represents an object from which asset information is streamed to
/// Migration Center.
class Source {
  /// The timestamp when the source was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description.
  core.String? description;

  /// User-friendly display name.
  core.String? displayName;

  /// The number of frames that were reported by the source and contained
  /// errors.
  ///
  /// Output only.
  core.int? errorFrameCount;

  /// If `true`, the source is managed by other service(s).
  core.bool? isManaged;

  /// The full name of the source.
  ///
  /// Output only.
  core.String? name;

  /// Number of frames that are still being processed.
  ///
  /// Output only.
  core.int? pendingFrameCount;

  /// The information confidence of the source.
  ///
  /// The higher the value, the higher the confidence.
  core.int? priority;

  /// The state of the source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "ACTIVE" : The source is active and ready to be used.
  /// - "DELETING" : In the process of being deleted.
  /// - "INVALID" : Source is in an invalid state. Asset frames reported to it
  /// will be ignored.
  core.String? state;

  /// Data source type.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNKNOWN" : Unspecified
  /// - "SOURCE_TYPE_UPLOAD" : Manually uploaded file (e.g. CSV)
  /// - "SOURCE_TYPE_GUEST_OS_SCAN" : Guest-level info
  /// - "SOURCE_TYPE_INVENTORY_SCAN" : Inventory-level scan
  /// - "SOURCE_TYPE_CUSTOM" : Third-party owned sources.
  /// - "SOURCE_TYPE_DISCOVERY_CLIENT" : Discovery clients
  core.String? type;

  /// The timestamp when the source was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Source({
    this.createTime,
    this.description,
    this.displayName,
    this.errorFrameCount,
    this.isManaged,
    this.name,
    this.pendingFrameCount,
    this.priority,
    this.state,
    this.type,
    this.updateTime,
  });

  Source.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorFrameCount: json_['errorFrameCount'] as core.int?,
        isManaged: json_['isManaged'] as core.bool?,
        name: json_['name'] as core.String?,
        pendingFrameCount: json_['pendingFrameCount'] as core.int?,
        priority: json_['priority'] as core.int?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (errorFrameCount != null) 'errorFrameCount': errorFrameCount!,
    if (isManaged != null) 'isManaged': isManaged!,
    if (name != null) 'name': name!,
    if (pendingFrameCount != null) 'pendingFrameCount': pendingFrameCount!,
    if (priority != null) 'priority': priority!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Specific details for a Microsoft SQL Server database deployment.
class SqlServerDatabaseDeployment {
  /// List of SQL Server features.
  ///
  /// Optional.
  core.List<SqlServerFeature>? features;

  /// List of SQL Server server flags.
  ///
  /// Optional.
  core.List<SqlServerServerFlag>? serverFlags;

  /// List of SQL Server trace flags.
  ///
  /// Optional.
  core.List<SqlServerTraceFlag>? traceFlags;

  SqlServerDatabaseDeployment({
    this.features,
    this.serverFlags,
    this.traceFlags,
  });

  SqlServerDatabaseDeployment.fromJson(core.Map json_)
    : this(
        features:
            (json_['features'] as core.List?)
                ?.map(
                  (value) => SqlServerFeature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        serverFlags:
            (json_['serverFlags'] as core.List?)
                ?.map(
                  (value) => SqlServerServerFlag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        traceFlags:
            (json_['traceFlags'] as core.List?)
                ?.map(
                  (value) => SqlServerTraceFlag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (features != null) 'features': features!,
    if (serverFlags != null) 'serverFlags': serverFlags!,
    if (traceFlags != null) 'traceFlags': traceFlags!,
  };
}

/// SQL Server feature details.
typedef SqlServerFeature = $SqlServerFeature;

/// Specific details for a SqlServer database.
typedef SqlServerSchemaDetails = $SqlServerSchemaDetails;

/// SQL Server server flag details.
typedef SqlServerServerFlag = $SqlServerServerFlag;

/// SQL Server trace flag details.
typedef SqlServerTraceFlag = $SqlServerTraceFlag;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// A request to update an asset.
class UpdateAssetRequest {
  /// The resource being updated.
  ///
  /// Required.
  Asset? asset;

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

  /// Field mask is used to specify the fields to be overwritten in the `Asset`
  /// resource by the update.
  ///
  /// The values specified in the `update_mask` field are relative to the
  /// resource, not the full request. A field will be overwritten if it is in
  /// the mask. A single * value in the mask lets you to overwrite all fields.
  ///
  /// Required.
  core.String? updateMask;

  UpdateAssetRequest({this.asset, this.requestId, this.updateMask});

  UpdateAssetRequest.fromJson(core.Map json_)
    : this(
        asset:
            json_.containsKey('asset')
                ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asset != null) 'asset': asset!,
    if (requestId != null) 'requestId': requestId!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfo {
  /// The headers that were used to sign the URL.
  ///
  /// Output only.
  core.Map<core.String, core.String>? headers;

  /// Upload URI for the file.
  ///
  /// Output only.
  core.String? signedUri;

  /// Expiration time of the upload URI.
  ///
  /// Output only.
  core.String? uriExpirationTime;

  UploadFileInfo({this.headers, this.signedUri, this.uriExpirationTime});

  UploadFileInfo.fromJson(core.Map json_)
    : this(
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        signedUri: json_['signedUri'] as core.String?,
        uriExpirationTime: json_['uriExpirationTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
    if (signedUri != null) 'signedUri': signedUri!,
    if (uriExpirationTime != null) 'uriExpirationTime': uriExpirationTime!,
  };
}

/// The type of machines to consider when calculating virtual machine migration
/// insights and recommendations for VMware Engine.
///
/// Not all machine types are available in all zones and regions.
class VMwareEngineMachinePreferences {
  /// VMware Engine on Google Cloud machine series to consider for insights and
  /// recommendations.
  ///
  /// If empty, no restriction is applied on the machine series.
  ///
  /// Optional.
  core.List<MachineSeries>? allowedMachineSeries;

  /// Whether to use VMware Engine Protected offering.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROTECTED_NODES_UNSPECIFIED" : Unspecified protected nodes preference.
  /// - "PROTECTED_NODES_ENABLED" : Use only protected nodes for the selected
  /// allowed_machine_series.
  /// - "PROTECTED_NODES_DISABLED" : Do not use protected nodes.
  core.String? protectedNodes;

  /// Whether to use storage-only nodes, if those are available.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STORAGE_ONLY_NODES_UNSPECIFIED" : Unspecified storage-only nodes
  /// preference.
  /// - "STORAGE_ONLY_NODES_ENABLED" : Use storage-only nodes for selected
  /// allowed_machine_series, if available.
  /// - "STORAGE_ONLY_NODES_DISABLED" : Do not use storage-only nodes.
  core.String? storageOnlyNodes;

  VMwareEngineMachinePreferences({
    this.allowedMachineSeries,
    this.protectedNodes,
    this.storageOnlyNodes,
  });

  VMwareEngineMachinePreferences.fromJson(core.Map json_)
    : this(
        allowedMachineSeries:
            (json_['allowedMachineSeries'] as core.List?)
                ?.map(
                  (value) => MachineSeries.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        protectedNodes: json_['protectedNodes'] as core.String?,
        storageOnlyNodes: json_['storageOnlyNodes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedMachineSeries != null)
      'allowedMachineSeries': allowedMachineSeries!,
    if (protectedNodes != null) 'protectedNodes': protectedNodes!,
    if (storageOnlyNodes != null) 'storageOnlyNodes': storageOnlyNodes!,
  };
}

/// A request to validate an import job.
typedef ValidateImportJobRequest = $Request00;

/// A resource that aggregates errors across import job files.
class ValidationReport {
  /// List of errors found in files.
  core.List<FileValidationReport>? fileValidations;

  /// List of job level errors.
  core.List<ImportError>? jobErrors;

  ValidationReport({this.fileValidations, this.jobErrors});

  ValidationReport.fromJson(core.Map json_)
    : this(
        fileValidations:
            (json_['fileValidations'] as core.List?)
                ?.map(
                  (value) => FileValidationReport.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        jobErrors:
            (json_['jobErrors'] as core.List?)
                ?.map(
                  (value) => ImportError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileValidations != null) 'fileValidations': fileValidations!,
    if (jobErrors != null) 'jobErrors': jobErrors!,
  };
}

/// Details of the VM architecture.
class VirtualMachineArchitectureDetails {
  /// BIOS Details.
  BiosDetails? bios;

  /// CPU architecture, e.g., "x64-based PC", "x86_64", "i686" etc.
  core.String? cpuArchitecture;

  /// CPU manufacturer, e.g., "Intel", "AMD".
  core.String? cpuManufacturer;

  /// CPU name, e.g., "Intel Xeon E5-2690", "AMD EPYC 7571" etc.
  core.String? cpuName;

  /// Number of processor sockets allocated to the machine.
  core.int? cpuSocketCount;

  /// Deprecated: use VirtualMachineDetails.core_count instead.
  ///
  /// Number of CPU threads allocated to the machine.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? cpuThreadCount;

  /// Firmware (BIOS/efi).
  core.String? firmware;

  /// CPU hyperthreading support.
  /// Possible string values are:
  /// - "HYPER_THREADING_UNSPECIFIED" : Unknown (default value).
  /// - "HYPER_THREADING_DISABLED" : Hyperthreading is disabled.
  /// - "HYPER_THREADING_ENABLED" : Hyperthreading is enabled.
  core.String? hyperthreading;

  /// Hardware vendor.
  core.String? vendor;

  VirtualMachineArchitectureDetails({
    this.bios,
    this.cpuArchitecture,
    this.cpuManufacturer,
    this.cpuName,
    this.cpuSocketCount,
    this.cpuThreadCount,
    this.firmware,
    this.hyperthreading,
    this.vendor,
  });

  VirtualMachineArchitectureDetails.fromJson(core.Map json_)
    : this(
        bios:
            json_.containsKey('bios')
                ? BiosDetails.fromJson(
                  json_['bios'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cpuArchitecture: json_['cpuArchitecture'] as core.String?,
        cpuManufacturer: json_['cpuManufacturer'] as core.String?,
        cpuName: json_['cpuName'] as core.String?,
        cpuSocketCount: json_['cpuSocketCount'] as core.int?,
        cpuThreadCount: json_['cpuThreadCount'] as core.int?,
        firmware: json_['firmware'] as core.String?,
        hyperthreading: json_['hyperthreading'] as core.String?,
        vendor: json_['vendor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bios != null) 'bios': bios!,
    if (cpuArchitecture != null) 'cpuArchitecture': cpuArchitecture!,
    if (cpuManufacturer != null) 'cpuManufacturer': cpuManufacturer!,
    if (cpuName != null) 'cpuName': cpuName!,
    if (cpuSocketCount != null) 'cpuSocketCount': cpuSocketCount!,
    if (cpuThreadCount != null) 'cpuThreadCount': cpuThreadCount!,
    if (firmware != null) 'firmware': firmware!,
    if (hyperthreading != null) 'hyperthreading': hyperthreading!,
    if (vendor != null) 'vendor': vendor!,
  };
}

/// Details of a VirtualMachine.
class VirtualMachineDetails {
  /// Number of logical CPU cores in the VirtualMachine.
  ///
  /// Must be non-negative.
  core.int? coreCount;

  /// VM creation timestamp.
  core.String? createTime;

  /// Disk partitions details.
  ///
  /// Note: Partitions are not necessarily mounted on local disks and therefore
  /// might not have a one-to-one correspondence with local disks.
  ///
  /// Optional.
  DiskPartitionDetails? diskPartitions;

  /// Guest OS information.
  GuestOsDetails? guestOs;

  /// The amount of memory in the VirtualMachine.
  ///
  /// Must be non-negative.
  core.int? memoryMb;

  /// What family the OS belong to, if known.
  /// Possible string values are:
  /// - "OS_FAMILY_UNKNOWN"
  /// - "OS_FAMILY_WINDOWS" : Microsoft Windows Server and Desktop.
  /// - "OS_FAMILY_LINUX" : Various Linux flavors.
  /// - "OS_FAMILY_UNIX" : Non-Linux Unix flavors.
  core.String? osFamily;

  /// The name of the operating system running on the VirtualMachine.
  core.String? osName;

  /// The version of the operating system running on the virtual machine.
  core.String? osVersion;

  /// Platform information.
  PlatformDetails? platform;

  /// Power state of VM (poweredOn or poweredOff).
  core.String? powerState;

  /// Folder name in vCenter where asset resides.
  core.String? vcenterFolder;

  /// vCenter URL used in collection.
  core.String? vcenterUrl;

  /// vCenter VM ID.
  core.String? vcenterVmId;

  /// VM architecture details (vendor, cpu arch).
  VirtualMachineArchitectureDetails? vmArchitecture;

  /// VM disk details.
  VirtualMachineDiskDetails? vmDisks;

  /// Virtual Machine display name.
  core.String? vmName;

  /// VM network details.
  VirtualMachineNetworkDetails? vmNetwork;

  /// Virtual Machine unique identifier.
  core.String? vmUuid;

  VirtualMachineDetails({
    this.coreCount,
    this.createTime,
    this.diskPartitions,
    this.guestOs,
    this.memoryMb,
    this.osFamily,
    this.osName,
    this.osVersion,
    this.platform,
    this.powerState,
    this.vcenterFolder,
    this.vcenterUrl,
    this.vcenterVmId,
    this.vmArchitecture,
    this.vmDisks,
    this.vmName,
    this.vmNetwork,
    this.vmUuid,
  });

  VirtualMachineDetails.fromJson(core.Map json_)
    : this(
        coreCount: json_['coreCount'] as core.int?,
        createTime: json_['createTime'] as core.String?,
        diskPartitions:
            json_.containsKey('diskPartitions')
                ? DiskPartitionDetails.fromJson(
                  json_['diskPartitions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        guestOs:
            json_.containsKey('guestOs')
                ? GuestOsDetails.fromJson(
                  json_['guestOs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryMb: json_['memoryMb'] as core.int?,
        osFamily: json_['osFamily'] as core.String?,
        osName: json_['osName'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
        platform:
            json_.containsKey('platform')
                ? PlatformDetails.fromJson(
                  json_['platform'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        powerState: json_['powerState'] as core.String?,
        vcenterFolder: json_['vcenterFolder'] as core.String?,
        vcenterUrl: json_['vcenterUrl'] as core.String?,
        vcenterVmId: json_['vcenterVmId'] as core.String?,
        vmArchitecture:
            json_.containsKey('vmArchitecture')
                ? VirtualMachineArchitectureDetails.fromJson(
                  json_['vmArchitecture']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vmDisks:
            json_.containsKey('vmDisks')
                ? VirtualMachineDiskDetails.fromJson(
                  json_['vmDisks'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vmName: json_['vmName'] as core.String?,
        vmNetwork:
            json_.containsKey('vmNetwork')
                ? VirtualMachineNetworkDetails.fromJson(
                  json_['vmNetwork'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vmUuid: json_['vmUuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (coreCount != null) 'coreCount': coreCount!,
    if (createTime != null) 'createTime': createTime!,
    if (diskPartitions != null) 'diskPartitions': diskPartitions!,
    if (guestOs != null) 'guestOs': guestOs!,
    if (memoryMb != null) 'memoryMb': memoryMb!,
    if (osFamily != null) 'osFamily': osFamily!,
    if (osName != null) 'osName': osName!,
    if (osVersion != null) 'osVersion': osVersion!,
    if (platform != null) 'platform': platform!,
    if (powerState != null) 'powerState': powerState!,
    if (vcenterFolder != null) 'vcenterFolder': vcenterFolder!,
    if (vcenterUrl != null) 'vcenterUrl': vcenterUrl!,
    if (vcenterVmId != null) 'vcenterVmId': vcenterVmId!,
    if (vmArchitecture != null) 'vmArchitecture': vmArchitecture!,
    if (vmDisks != null) 'vmDisks': vmDisks!,
    if (vmName != null) 'vmName': vmName!,
    if (vmNetwork != null) 'vmNetwork': vmNetwork!,
    if (vmUuid != null) 'vmUuid': vmUuid!,
  };
}

/// Details of VM disks.
class VirtualMachineDiskDetails {
  /// List of disks.
  DiskEntryList? disks;

  /// Disk total Capacity.
  core.String? hddTotalCapacityBytes;

  /// Total Disk Free Space.
  core.String? hddTotalFreeBytes;

  /// Raw lsblk output in json.
  core.String? lsblkJson;

  VirtualMachineDiskDetails({
    this.disks,
    this.hddTotalCapacityBytes,
    this.hddTotalFreeBytes,
    this.lsblkJson,
  });

  VirtualMachineDiskDetails.fromJson(core.Map json_)
    : this(
        disks:
            json_.containsKey('disks')
                ? DiskEntryList.fromJson(
                  json_['disks'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hddTotalCapacityBytes: json_['hddTotalCapacityBytes'] as core.String?,
        hddTotalFreeBytes: json_['hddTotalFreeBytes'] as core.String?,
        lsblkJson: json_['lsblkJson'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disks != null) 'disks': disks!,
    if (hddTotalCapacityBytes != null)
      'hddTotalCapacityBytes': hddTotalCapacityBytes!,
    if (hddTotalFreeBytes != null) 'hddTotalFreeBytes': hddTotalFreeBytes!,
    if (lsblkJson != null) 'lsblkJson': lsblkJson!,
  };
}

/// Details of network adapters and settings.
class VirtualMachineNetworkDetails {
  /// Default gateway address.
  core.String? defaultGw;

  /// List of network adapters.
  NetworkAdapterList? networkAdapters;

  /// IP address of the machine.
  core.String? primaryIpAddress;

  /// MAC address of the machine.
  ///
  /// This property is used to uniqly identify the machine.
  core.String? primaryMacAddress;

  /// Public IP address of the machine.
  core.String? publicIpAddress;

  VirtualMachineNetworkDetails({
    this.defaultGw,
    this.networkAdapters,
    this.primaryIpAddress,
    this.primaryMacAddress,
    this.publicIpAddress,
  });

  VirtualMachineNetworkDetails.fromJson(core.Map json_)
    : this(
        defaultGw: json_['defaultGw'] as core.String?,
        networkAdapters:
            json_.containsKey('networkAdapters')
                ? NetworkAdapterList.fromJson(
                  json_['networkAdapters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        primaryIpAddress: json_['primaryIpAddress'] as core.String?,
        primaryMacAddress: json_['primaryMacAddress'] as core.String?,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultGw != null) 'defaultGw': defaultGw!,
    if (networkAdapters != null) 'networkAdapters': networkAdapters!,
    if (primaryIpAddress != null) 'primaryIpAddress': primaryIpAddress!,
    if (primaryMacAddress != null) 'primaryMacAddress': primaryMacAddress!,
    if (publicIpAddress != null) 'publicIpAddress': publicIpAddress!,
  };
}

/// VirtualMachinePreferences enables you to create sets of preferences, for
/// example, a geographical location and pricing track, for your migrated
/// virtual machines.
///
/// The set of preferences influence recommendations for migrating virtual
/// machine assets.
class VirtualMachinePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine
  /// insights and recommendations.
  ///
  /// If you are unsure which value to set, a 3 year commitment plan is often a
  /// good value to start with.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Unspecified commitment plan.
  /// - "COMMITMENT_PLAN_NONE" : No commitment plan.
  /// - "COMMITMENT_PLAN_ONE_YEAR" : 1-year regular committed use discount.
  /// - "COMMITMENT_PLAN_THREE_YEARS" : 3-year regular committed use discount.
  /// - "COMMITMENT_PLAN_FLEXIBLE_ONE_YEAR" : 1-year flexible committed use
  /// discount. While not supported in the v1 API, this value is converted to
  /// UNSPECIFIED in conversions to the v1 API.
  /// - "COMMITMENT_PLAN_FLEXIBLE_THREE_YEARS" : 3-year flexible committed use
  /// discount. While not supported in the v1 API, this value is converted to
  /// UNSPECIFIED in conversions to the v1 API.
  core.String? commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for
  /// Compute Engine target.
  ///
  /// Optional.
  ComputeEnginePreferences? computeEnginePreferences;

  /// Parameters that affect network cost estimations.
  ///
  /// If not set, default values will be used for the parameters.
  ///
  /// Optional.
  VirtualMachinePreferencesNetworkCostParameters? networkCostParameters;

  /// Region preferences for assets using this preference set.
  ///
  /// If you are unsure which value to set, the migration service API region is
  /// often a good value to start with. If PreferenceSet.RegionPreferences is
  /// specified, it overrides this field.
  RegionPreferences? regionPreferences;

  /// Custom data to use for sizing optimizations.
  ///
  /// Relevant when SizingOptimizationStrategy is set to "custom".
  ///
  /// Optional.
  VirtualMachinePreferencesSizingOptimizationCustomParameters?
  sizingOptimizationCustomParameters;

  /// Sizing optimization strategy specifies the preferred strategy used when
  /// extrapolating usage data to calculate insights and recommendations for a
  /// virtual machine.
  ///
  /// If you are unsure which value to set, a moderate sizing optimization
  /// strategy is often a good value to start with.
  /// Possible string values are:
  /// - "SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED" : Unspecified (default
  /// value).
  /// - "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE" : No optimization applied.
  /// Virtual machine sizing matches as closely as possible the machine shape on
  /// the source site, not considering any actual performance data.
  /// - "SIZING_OPTIMIZATION_STRATEGY_MODERATE" : Virtual machine sizing will
  /// match the reported usage and shape, with some slack. This a good value to
  /// start with.
  /// - "SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE" : Virtual machine sizing will
  /// match the reported usage, with little slack. Using this option can help
  /// reduce costs.
  /// - "SIZING_OPTIMIZATION_STRATEGY_CUSTOM" : Virtual machine sizing will be
  /// determined by custom parameters. While not supported in the v1 API, this
  /// value is converted to UNSPECIFIED in conversions to the v1 API.
  core.String? sizingOptimizationStrategy;

  /// Preferences concerning Sole Tenant nodes and virtual machines.
  SoleTenancyPreferences? soleTenancyPreferences;

  /// Target product for assets using this preference set.
  ///
  /// Specify either target product or business goal, but not both.
  /// Possible string values are:
  /// - "COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED" : Unspecified (default
  /// value).
  /// - "COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE" : Prefer to migrate to
  /// Google Cloud Compute Engine.
  /// - "COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE" : Prefer to migrate to
  /// Google Cloud VMware Engine.
  /// - "COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY" : Prefer to migrate to
  /// Google Cloud Sole Tenant Nodes.
  core.String? targetProduct;

  /// Preferences concerning insights and recommendations for Google Cloud
  /// VMware Engine.
  VmwareEnginePreferences? vmwareEnginePreferences;

  VirtualMachinePreferences({
    this.commitmentPlan,
    this.computeEnginePreferences,
    this.networkCostParameters,
    this.regionPreferences,
    this.sizingOptimizationCustomParameters,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  VirtualMachinePreferences.fromJson(core.Map json_)
    : this(
        commitmentPlan: json_['commitmentPlan'] as core.String?,
        computeEnginePreferences:
            json_.containsKey('computeEnginePreferences')
                ? ComputeEnginePreferences.fromJson(
                  json_['computeEnginePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        networkCostParameters:
            json_.containsKey('networkCostParameters')
                ? VirtualMachinePreferencesNetworkCostParameters.fromJson(
                  json_['networkCostParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionPreferences:
            json_.containsKey('regionPreferences')
                ? RegionPreferences.fromJson(
                  json_['regionPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sizingOptimizationCustomParameters:
            json_.containsKey('sizingOptimizationCustomParameters')
                ? VirtualMachinePreferencesSizingOptimizationCustomParameters.fromJson(
                  json_['sizingOptimizationCustomParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sizingOptimizationStrategy:
            json_['sizingOptimizationStrategy'] as core.String?,
        soleTenancyPreferences:
            json_.containsKey('soleTenancyPreferences')
                ? SoleTenancyPreferences.fromJson(
                  json_['soleTenancyPreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetProduct: json_['targetProduct'] as core.String?,
        vmwareEnginePreferences:
            json_.containsKey('vmwareEnginePreferences')
                ? VmwareEnginePreferences.fromJson(
                  json_['vmwareEnginePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
    if (computeEnginePreferences != null)
      'computeEnginePreferences': computeEnginePreferences!,
    if (networkCostParameters != null)
      'networkCostParameters': networkCostParameters!,
    if (regionPreferences != null) 'regionPreferences': regionPreferences!,
    if (sizingOptimizationCustomParameters != null)
      'sizingOptimizationCustomParameters': sizingOptimizationCustomParameters!,
    if (sizingOptimizationStrategy != null)
      'sizingOptimizationStrategy': sizingOptimizationStrategy!,
    if (soleTenancyPreferences != null)
      'soleTenancyPreferences': soleTenancyPreferences!,
    if (targetProduct != null) 'targetProduct': targetProduct!,
    if (vmwareEnginePreferences != null)
      'vmwareEnginePreferences': vmwareEnginePreferences!,
  };
}

/// Parameters that affect network cost estimations.
class VirtualMachinePreferencesNetworkCostParameters {
  /// An estimated percentage of priced outbound traffic (egress traffic) from
  /// the measured outbound traffic.
  ///
  /// Must be in the interval \[0, 100\].
  ///
  /// Optional.
  core.int? estimatedEgressTrafficPercentage;

  VirtualMachinePreferencesNetworkCostParameters({
    this.estimatedEgressTrafficPercentage,
  });

  VirtualMachinePreferencesNetworkCostParameters.fromJson(core.Map json_)
    : this(
        estimatedEgressTrafficPercentage:
            json_['estimatedEgressTrafficPercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (estimatedEgressTrafficPercentage != null)
      'estimatedEgressTrafficPercentage': estimatedEgressTrafficPercentage!,
  };
}

/// Custom data to use for sizing optimizations.
class VirtualMachinePreferencesSizingOptimizationCustomParameters {
  /// Type of statistical aggregation of a resource utilization data, on which
  /// to base the sizing metrics.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AGGREGATION_METHOD_UNSPECIFIED" : Unspecified aggregation method. Can
  /// be used for default value.
  /// - "AGGREGATION_METHOD_AVERAGE" : Average of utilization data.
  /// - "AGGREGATION_METHOD_MEDIAN" : Median of utilization data.
  /// - "AGGREGATION_METHOD_NINETY_FIFTH_PERCENTILE" : 95th percentile of
  /// utilization data.
  /// - "AGGREGATION_METHOD_PEAK" : Peak of utilization data.
  core.String? aggregationMethod;

  /// Desired percentage of CPU usage.
  ///
  /// Must be in the interval \[1, 100\] (or 0 for default value).
  ///
  /// Optional.
  core.int? cpuUsagePercentage;

  /// Desired percentage of memory usage.
  ///
  /// Must be in the interval \[1, 100\] (or 0 for default value).
  ///
  /// Optional.
  core.int? memoryUsagePercentage;

  /// Desired increase factor of storage, relative to currently used storage.
  ///
  /// Must be in the interval \[1.0, 2.0\] (or 0 for default value).
  ///
  /// Optional.
  core.double? storageMultiplier;

  VirtualMachinePreferencesSizingOptimizationCustomParameters({
    this.aggregationMethod,
    this.cpuUsagePercentage,
    this.memoryUsagePercentage,
    this.storageMultiplier,
  });

  VirtualMachinePreferencesSizingOptimizationCustomParameters.fromJson(
    core.Map json_,
  ) : this(
        aggregationMethod: json_['aggregationMethod'] as core.String?,
        cpuUsagePercentage: json_['cpuUsagePercentage'] as core.int?,
        memoryUsagePercentage: json_['memoryUsagePercentage'] as core.int?,
        storageMultiplier:
            (json_['storageMultiplier'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationMethod != null) 'aggregationMethod': aggregationMethod!,
    if (cpuUsagePercentage != null) 'cpuUsagePercentage': cpuUsagePercentage!,
    if (memoryUsagePercentage != null)
      'memoryUsagePercentage': memoryUsagePercentage!,
    if (storageMultiplier != null) 'storageMultiplier': storageMultiplier!,
  };
}

/// VMWare engine migration target.
typedef VmwareEngineMigrationTarget = $Empty;

/// The user preferences relating to Google Cloud VMware Engine target platform.
class VmwareEnginePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine
  /// insights and recommendations.
  ///
  /// If you are unsure which value to set, a 3 year commitment plan is often a
  /// good value to start with.
  /// Possible string values are:
  /// - "COMMITMENT_PLAN_UNSPECIFIED" : Unspecified commitment plan.
  /// - "ON_DEMAND" : No commitment plan (on-demand usage).
  /// - "COMMITMENT_1_YEAR_MONTHLY_PAYMENTS" : 1 year commitment (monthly
  /// payments).
  /// - "COMMITMENT_3_YEAR_MONTHLY_PAYMENTS" : 3 year commitment (monthly
  /// payments).
  /// - "COMMITMENT_1_YEAR_UPFRONT_PAYMENT" : 1 year commitment (upfront
  /// payment).
  /// - "COMMITMENT_3_YEAR_UPFRONT_PAYMENT" : 3 years commitment (upfront
  /// payment).
  /// - "COMMITMENT_FLEXIBLE_3_YEAR_MONTHLY_PAYMENTS" : 3-year flexible
  /// commitment (monthly payments). While not supported in the v1 API, this
  /// value is converted to UNSPECIFIED in conversions to the v1 API.
  /// - "COMMITMENT_FLEXIBLE_3_YEAR_UPFRONT_PAYMENT" : 3-year flexible
  /// commitment (upfront payment). While not supported in the v1 API, this
  /// value is converted to UNSPECIFIED in conversions to the v1 API.
  core.String? commitmentPlan;

  /// CPU overcommit ratio.
  ///
  /// Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  core.double? cpuOvercommitRatio;

  /// Discount percentage for the license offered to you by Broadcom.
  ///
  /// Must be between 0 and 100. Only valid when service_type is set to
  /// SERVICE_TYPE_PORTABLE_LICENSE.
  ///
  /// Optional.
  core.double? licenseDiscountPercentage;

  /// Preferences concerning the machine types to consider on Google Cloud
  /// VMware Engine.
  ///
  /// Optional.
  VMwareEngineMachinePreferences? machinePreferences;

  /// Memory overcommit ratio.
  ///
  /// Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  core.double? memoryOvercommitRatio;

  /// GCVE service type (fully licensed or portable license).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SERVICE_TYPE_UNSPECIFIED" : Same as SERVICE_TYPE_FULLY_LICENSED.
  /// - "SERVICE_TYPE_FULLY_LICENSED" : Google provided VCF license.
  /// - "SERVICE_TYPE_PORTABLE_LICENSE" : Bring Your Own License.
  core.String? serviceType;

  /// The Deduplication and Compression ratio is based on the logical (Used
  /// Before) space required to store data before applying deduplication and
  /// compression, in relation to the physical (Used After) space required after
  /// applying deduplication and compression.
  ///
  /// Specifically, the ratio is the Used Before space divided by the Used After
  /// space. For example, if the Used Before space is 3 GB, but the physical
  /// Used After space is 1 GB, the deduplication and compression ratio is 3x.
  /// Acceptable values are between 1.0 and 4.0.
  core.double? storageDeduplicationCompressionRatio;

  VmwareEnginePreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.licenseDiscountPercentage,
    this.machinePreferences,
    this.memoryOvercommitRatio,
    this.serviceType,
    this.storageDeduplicationCompressionRatio,
  });

  VmwareEnginePreferences.fromJson(core.Map json_)
    : this(
        commitmentPlan: json_['commitmentPlan'] as core.String?,
        cpuOvercommitRatio:
            (json_['cpuOvercommitRatio'] as core.num?)?.toDouble(),
        licenseDiscountPercentage:
            (json_['licenseDiscountPercentage'] as core.num?)?.toDouble(),
        machinePreferences:
            json_.containsKey('machinePreferences')
                ? VMwareEngineMachinePreferences.fromJson(
                  json_['machinePreferences']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        memoryOvercommitRatio:
            (json_['memoryOvercommitRatio'] as core.num?)?.toDouble(),
        serviceType: json_['serviceType'] as core.String?,
        storageDeduplicationCompressionRatio:
            (json_['storageDeduplicationCompressionRatio'] as core.num?)
                ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
    if (cpuOvercommitRatio != null) 'cpuOvercommitRatio': cpuOvercommitRatio!,
    if (licenseDiscountPercentage != null)
      'licenseDiscountPercentage': licenseDiscountPercentage!,
    if (machinePreferences != null) 'machinePreferences': machinePreferences!,
    if (memoryOvercommitRatio != null)
      'memoryOvercommitRatio': memoryOvercommitRatio!,
    if (serviceType != null) 'serviceType': serviceType!,
    if (storageDeduplicationCompressionRatio != null)
      'storageDeduplicationCompressionRatio':
          storageDeduplicationCompressionRatio!,
  };
}

/// VMware specific details.
class VmwarePlatformDetails {
  /// Whether the ESX is hyperthreaded.
  /// Possible string values are:
  /// - "HYPERTHREADING_STATUS_UNSPECIFIED" : Simultaneous Multithreading status
  /// unknown.
  /// - "HYPERTHREADING_STATUS_DISABLED" : Simultaneous Multithreading is
  /// disabled or unavailable.
  /// - "HYPERTHREADING_STATUS_ENABLED" : Simultaneous Multithreading is
  /// enabled.
  core.String? esxHyperthreading;

  /// ESX version.
  core.String? esxVersion;

  /// VMware os enum -
  /// https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html.
  core.String? osid;

  /// vCenter version.
  core.String? vcenterVersion;

  VmwarePlatformDetails({
    this.esxHyperthreading,
    this.esxVersion,
    this.osid,
    this.vcenterVersion,
  });

  VmwarePlatformDetails.fromJson(core.Map json_)
    : this(
        esxHyperthreading: json_['esxHyperthreading'] as core.String?,
        esxVersion: json_['esxVersion'] as core.String?,
        osid: json_['osid'] as core.String?,
        vcenterVersion: json_['vcenterVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (esxHyperthreading != null) 'esxHyperthreading': esxHyperthreading!,
    if (esxVersion != null) 'esxVersion': esxVersion!,
    if (osid != null) 'osid': osid!,
    if (vcenterVersion != null) 'vcenterVersion': vcenterVersion!,
  };
}

/// Contains a single output file of type XLSX.
class XlsxOutputFile {
  /// Signed URI destination.
  ///
  /// Output only.
  SignedUri? signedUri;

  XlsxOutputFile({this.signedUri});

  XlsxOutputFile.fromJson(core.Map json_)
    : this(
        signedUri:
            json_.containsKey('signedUri')
                ? SignedUri.fromJson(
                  json_['signedUri'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (signedUri != null) 'signedUri': signedUri!,
  };
}
