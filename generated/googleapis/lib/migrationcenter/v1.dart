// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Migration Center API - v1
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
///     - [ProjectsLocationsDiscoveryClientsResource]
///     - [ProjectsLocationsGroupsResource]
///     - [ProjectsLocationsImportJobsResource]
///       - [ProjectsLocationsImportJobsImportDataFilesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPreferenceSetsResource]
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

  MigrationCenterApi(http.Client client,
      {core.String rootUrl = 'https://migrationcenter.googleapis.com/',
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

  ProjectsLocationsAssetsResource get assets =>
      ProjectsLocationsAssetsResource(_requester);
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
  async.Future<Location> get(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
        'v1/' + core.Uri.encodeFull('$parent') + '/assets:aggregateValues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AggregateAssetsValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:batchDelete';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
  /// [view] - View of the assets. Defaults to BASIC.
  /// Possible string values are:
  /// - "ASSET_VIEW_UNSPECIFIED" : The asset view is not specified. The API
  /// displays the basic view by default.
  /// - "ASSET_VIEW_BASIC" : The asset view includes only basic metadata of the
  /// asset.
  /// - "ASSET_VIEW_FULL" : The asset view includes all the metadata of an asset
  /// and performance data.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
        'v1/' + core.Uri.encodeFull('$parent') + '/assets:reportAssetFrames';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportAssetFramesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/discoveryClients';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DiscoveryClient.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/discoveryClients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDiscoveryClientsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':sendHeartbeat';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$group') + ':addAssets';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
  async.Future<Group> get(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$group') + ':removeAssets';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importJobs';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImportJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':validate';

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
      commons.ApiRequester client)
      : _requester = client;

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importDataFiles';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ImportDataFile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importDataFiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImportDataFilesResponse.fromJson(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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
  async.Future<Empty> delete(
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
  async.Future<Operation> get(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [preferenceSetId] - Required. User specified ID for the preference set. It
  /// will become the last component of the preference set name. The ID must be
  /// unique within the project, must conform with RFC-1034, is restricted to
  /// lower-cased letters, and has a maximum length of 63 characters. The ID
  /// must match the regular expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/preferenceSets';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PreferenceSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/preferenceSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPreferenceSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a preference set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the preference set.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reportConfigs';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReportConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reportConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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
  async.Future<Source> get(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ErrorFrame.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/errorFrames';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListErrorFramesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  AddAssetsToGroupRequest({
    this.allowExisting,
    this.assets,
    this.requestId,
  });

  AddAssetsToGroupRequest.fromJson(core.Map json_)
      : this(
          allowExisting: json_.containsKey('allowExisting')
              ? json_['allowExisting'] as core.bool
              : null,
          assets: json_.containsKey('assets')
              ? AssetList.fromJson(
                  json_['assets'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
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
  core.String? filter;

  AggregateAssetsValuesRequest({
    this.aggregations,
    this.filter,
  });

  AggregateAssetsValuesRequest.fromJson(core.Map json_)
      : this(
          aggregations: json_.containsKey('aggregations')
              ? (json_['aggregations'] as core.List)
                  .map((value) => Aggregation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregations != null) 'aggregations': aggregations!,
        if (filter != null) 'filter': filter!,
      };
}

/// A response to a request to aggregated assets values.
class AggregateAssetsValuesResponse {
  /// The aggregation results.
  core.List<AggregationResult>? results;

  AggregateAssetsValuesResponse({
    this.results,
  });

  AggregateAssetsValuesResponse.fromJson(core.Map json_)
      : this(
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => AggregationResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          count: json_.containsKey('count')
              ? AggregationCount.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          frequency: json_.containsKey('frequency')
              ? AggregationFrequency.fromJson(
                  json_['frequency'] as core.Map<core.String, core.dynamic>)
              : null,
          histogram: json_.containsKey('histogram')
              ? AggregationHistogram.fromJson(
                  json_['histogram'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? AggregationSum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
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
class AggregationHistogram {
  /// Lower bounds of buckets.
  ///
  /// The response will contain `n+1` buckets for `n` bounds. The first bucket
  /// will count all assets for which the field value is smaller than the first
  /// bound. Subsequent buckets will count assets for which the field value is
  /// greater or equal to a lower bound and smaller than the next one. The last
  /// bucket will count assets for which the field value is greater or equal to
  /// the final lower bound. You can define up to 20 lower bounds.
  core.List<core.double>? lowerBounds;

  AggregationHistogram({
    this.lowerBounds,
  });

  AggregationHistogram.fromJson(core.Map json_)
      : this(
          lowerBounds: json_.containsKey('lowerBounds')
              ? (json_['lowerBounds'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lowerBounds != null) 'lowerBounds': lowerBounds!,
      };
}

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
          count: json_.containsKey('count')
              ? AggregationResultCount.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          frequency: json_.containsKey('frequency')
              ? AggregationResultFrequency.fromJson(
                  json_['frequency'] as core.Map<core.String, core.dynamic>)
              : null,
          histogram: json_.containsKey('histogram')
              ? AggregationResultHistogram.fromJson(
                  json_['histogram'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? AggregationResultSum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
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
class AggregationResultCount {
  core.String? value;

  AggregationResultCount({
    this.value,
  });

  AggregationResultCount.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// The result of a frequency distribution aggregation.
class AggregationResultFrequency {
  core.Map<core.String, core.String>? values;

  AggregationResultFrequency({
    this.values,
  });

  AggregationResultFrequency.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// The result of a bucketed histogram aggregation.
class AggregationResultHistogram {
  /// Buckets in the histogram.
  ///
  /// There will be `n+1` buckets matching `n` lower bounds in the request. The
  /// first bucket will be from -infinity to the first bound. Subsequent buckets
  /// will be between one bound and the next. The final bucket will be from the
  /// final bound to infinity.
  core.List<AggregationResultHistogramBucket>? buckets;

  AggregationResultHistogram({
    this.buckets,
  });

  AggregationResultHistogram.fromJson(core.Map json_)
      : this(
          buckets: json_.containsKey('buckets')
              ? (json_['buckets'] as core.List)
                  .map((value) => AggregationResultHistogramBucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
class AggregationResultHistogramBucket {
  /// Count of items in the bucket.
  core.String? count;

  /// Lower bound - inclusive.
  core.double? lowerBound;

  /// Upper bound - exclusive.
  core.double? upperBound;

  AggregationResultHistogramBucket({
    this.count,
    this.lowerBound,
    this.upperBound,
  });

  AggregationResultHistogramBucket.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          lowerBound: json_.containsKey('lowerBound')
              ? (json_['lowerBound'] as core.num).toDouble()
              : null,
          upperBound: json_.containsKey('upperBound')
              ? (json_['upperBound'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (lowerBound != null) 'lowerBound': lowerBound!,
        if (upperBound != null) 'upperBound': upperBound!,
      };
}

/// The result of a sum aggregation.
class AggregationResultSum {
  core.double? value;

  AggregationResultSum({
    this.value,
  });

  AggregationResultSum.fromJson(core.Map json_)
      : this(
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

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

  /// The list of insights associated with the asset.
  ///
  /// Output only.
  InsightList? insightList;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Asset information specific for virtual and physical machines.
  ///
  /// Output only.
  MachineDetails? machineDetails;

  /// The full name of the asset.
  ///
  /// Output only.
  core.String? name;

  /// Performance data for the asset.
  ///
  /// Output only.
  AssetPerformanceData? performanceData;

  /// The list of sources contributing to the asset.
  ///
  /// Output only.
  core.List<core.String>? sources;

  /// The timestamp when the asset was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Asset({
    this.assignedGroups,
    this.attributes,
    this.createTime,
    this.insightList,
    this.labels,
    this.machineDetails,
    this.name,
    this.performanceData,
    this.sources,
    this.updateTime,
  });

  Asset.fromJson(core.Map json_)
      : this(
          assignedGroups: json_.containsKey('assignedGroups')
              ? (json_['assignedGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          insightList: json_.containsKey('insightList')
              ? InsightList.fromJson(
                  json_['insightList'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineDetails: json_.containsKey('machineDetails')
              ? MachineDetails.fromJson(json_['machineDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          performanceData: json_.containsKey('performanceData')
              ? AssetPerformanceData.fromJson(json_['performanceData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedGroups != null) 'assignedGroups': assignedGroups!,
        if (attributes != null) 'attributes': attributes!,
        if (createTime != null) 'createTime': createTime!,
        if (insightList != null) 'insightList': insightList!,
        if (labels != null) 'labels': labels!,
        if (machineDetails != null) 'machineDetails': machineDetails!,
        if (name != null) 'name': name!,
        if (performanceData != null) 'performanceData': performanceData!,
        if (sources != null) 'sources': sources!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Asset information specific for virtual machines.
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

  AssetFrame({
    this.attributes,
    this.collectionType,
    this.labels,
    this.machineDetails,
    this.performanceSamples,
    this.reportTime,
    this.traceToken,
  });

  AssetFrame.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          collectionType: json_.containsKey('collectionType')
              ? json_['collectionType'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineDetails: json_.containsKey('machineDetails')
              ? MachineDetails.fromJson(json_['machineDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          performanceSamples: json_.containsKey('performanceSamples')
              ? (json_['performanceSamples'] as core.List)
                  .map((value) => PerformanceSample.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          traceToken: json_.containsKey('traceToken')
              ? json_['traceToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (collectionType != null) 'collectionType': collectionType!,
        if (labels != null) 'labels': labels!,
        if (machineDetails != null) 'machineDetails': machineDetails!,
        if (performanceSamples != null)
          'performanceSamples': performanceSamples!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (traceToken != null) 'traceToken': traceToken!,
      };
}

/// Lists the asset IDs of all assets.
class AssetList {
  /// A list of asset IDs
  ///
  /// Required.
  core.List<core.String>? assetIds;

  AssetList({
    this.assetIds,
  });

  AssetList.fromJson(core.Map json_)
      : this(
          assetIds: json_.containsKey('assetIds')
              ? (json_['assetIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetIds != null) 'assetIds': assetIds!,
      };
}

/// Performance data for an asset.
class AssetPerformanceData {
  /// Daily resource usage aggregations.
  ///
  /// Contains all of the data available for an asset, up to the last 420 days.
  /// Aggregations are sorted from oldest to most recent.
  core.List<DailyResourceUsageAggregation>? dailyResourceUsageAggregations;

  AssetPerformanceData({
    this.dailyResourceUsageAggregations,
  });

  AssetPerformanceData.fromJson(core.Map json_)
      : this(
          dailyResourceUsageAggregations:
              json_.containsKey('dailyResourceUsageAggregations')
                  ? (json_['dailyResourceUsageAggregations'] as core.List)
                      .map((value) => DailyResourceUsageAggregation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyResourceUsageAggregations != null)
          'dailyResourceUsageAggregations': dailyResourceUsageAggregations!,
      };
}

/// AWS EC2 specific details.
class AwsEc2PlatformDetails {
  /// The location of the machine in the AWS format.
  core.String? location;

  /// AWS platform's machine type label.
  core.String? machineTypeLabel;

  AwsEc2PlatformDetails({
    this.location,
    this.machineTypeLabel,
  });

  AwsEc2PlatformDetails.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          machineTypeLabel: json_.containsKey('machineTypeLabel')
              ? json_['machineTypeLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (machineTypeLabel != null) 'machineTypeLabel': machineTypeLabel!,
      };
}

/// Azure VM specific details.
class AzureVmPlatformDetails {
  /// The location of the machine in the Azure format.
  core.String? location;

  /// Azure platform's machine type label.
  core.String? machineTypeLabel;

  /// Azure platform's provisioning state.
  core.String? provisioningState;

  AzureVmPlatformDetails({
    this.location,
    this.machineTypeLabel,
    this.provisioningState,
  });

  AzureVmPlatformDetails.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          machineTypeLabel: json_.containsKey('machineTypeLabel')
              ? json_['machineTypeLabel'] as core.String
              : null,
          provisioningState: json_.containsKey('provisioningState')
              ? json_['provisioningState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (machineTypeLabel != null) 'machineTypeLabel': machineTypeLabel!,
        if (provisioningState != null) 'provisioningState': provisioningState!,
      };
}

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

  /// The IDs of the assets to delete.
  ///
  /// A maximum of 1000 assets can be deleted in a batch. Format:
  /// projects/{project}/locations/{location}/assets/{name}.
  ///
  /// Required.
  core.List<core.String>? names;

  BatchDeleteAssetsRequest({
    this.allowMissing,
    this.names,
  });

  BatchDeleteAssetsRequest.fromJson(core.Map json_)
      : this(
          allowMissing: json_.containsKey('allowMissing')
              ? json_['allowMissing'] as core.bool
              : null,
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMissing != null) 'allowMissing': allowMissing!,
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

  BatchUpdateAssetsRequest({
    this.requests,
  });

  BatchUpdateAssetsRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => UpdateAssetRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  BatchUpdateAssetsResponse({
    this.assets,
  });

  BatchUpdateAssetsResponse.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null) 'assets': assets!,
      };
}

/// Details about the BIOS.
class BiosDetails {
  /// BIOS name.
  ///
  /// This fields is deprecated. Please use the `id` field instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? biosName;

  /// BIOS ID.
  core.String? id;

  /// BIOS manufacturer.
  core.String? manufacturer;

  /// BIOS release date.
  Date? releaseDate;

  /// SMBIOS UUID.
  core.String? smbiosUuid;

  /// BIOS version.
  core.String? version;

  BiosDetails({
    this.biosName,
    this.id,
    this.manufacturer,
    this.releaseDate,
    this.smbiosUuid,
    this.version,
  });

  BiosDetails.fromJson(core.Map json_)
      : this(
          biosName: json_.containsKey('biosName')
              ? json_['biosName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          manufacturer: json_.containsKey('manufacturer')
              ? json_['manufacturer'] as core.String
              : null,
          releaseDate: json_.containsKey('releaseDate')
              ? Date.fromJson(
                  json_['releaseDate'] as core.Map<core.String, core.dynamic>)
              : null,
          smbiosUuid: json_.containsKey('smbiosUuid')
              ? json_['smbiosUuid'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biosName != null) 'biosName': biosName!,
        if (id != null) 'id': id!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (releaseDate != null) 'releaseDate': releaseDate!,
        if (smbiosUuid != null) 'smbiosUuid': smbiosUuid!,
        if (version != null) 'version': version!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Compute engine migration target.
class ComputeEngineMigrationTarget {
  /// Description of the suggested shape for the migration target.
  ComputeEngineShapeDescriptor? shape;

  ComputeEngineMigrationTarget({
    this.shape,
  });

  ComputeEngineMigrationTarget.fromJson(core.Map json_)
      : this(
          shape: json_.containsKey('shape')
              ? ComputeEngineShapeDescriptor.fromJson(
                  json_['shape'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shape != null) 'shape': shape!,
      };
}

/// The user preferences relating to Compute Engine target platform.
class ComputeEnginePreferences {
  /// License type to consider when calculating costs for virtual machine
  /// insights and recommendations.
  ///
  /// If unspecified, costs are calculated based on the default licensing plan.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified (default value).
  /// - "LICENSE_TYPE_DEFAULT" : Default Google Cloud licensing plan. Licensing
  /// is charged per usage. This a good value to start with.
  /// - "LICENSE_TYPE_BRING_YOUR_OWN_LICENSE" : Bring-your-own-license (BYOL)
  /// plan. User provides the OS license.
  core.String? licenseType;

  /// Preferences concerning the machine types to consider on Compute Engine.
  MachinePreferences? machinePreferences;

  /// Persistent disk type to use.
  ///
  /// If unspecified (default), all types are considered, based on available
  /// usage data.
  /// Possible string values are:
  /// - "PERSISTENT_DISK_TYPE_UNSPECIFIED" : Unspecified (default value).
  /// Selecting this value allows the system to use any disk type according to
  /// reported usage. This a good value to start with.
  /// - "PERSISTENT_DISK_TYPE_STANDARD" : Standard HDD Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_BALANCED" : Balanced Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_SSD" : SSD Persistent Disk.
  core.String? persistentDiskType;

  ComputeEnginePreferences({
    this.licenseType,
    this.machinePreferences,
    this.persistentDiskType,
  });

  ComputeEnginePreferences.fromJson(core.Map json_)
      : this(
          licenseType: json_.containsKey('licenseType')
              ? json_['licenseType'] as core.String
              : null,
          machinePreferences: json_.containsKey('machinePreferences')
              ? MachinePreferences.fromJson(json_['machinePreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          persistentDiskType: json_.containsKey('persistentDiskType')
              ? json_['persistentDiskType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (licenseType != null) 'licenseType': licenseType!,
        if (machinePreferences != null)
          'machinePreferences': machinePreferences!,
        if (persistentDiskType != null)
          'persistentDiskType': persistentDiskType!,
      };
}

/// Compute Engine target shape descriptor.
class ComputeEngineShapeDescriptor {
  /// Number of logical cores.
  core.int? logicalCoreCount;

  /// Compute Engine machine type.
  core.String? machineType;

  /// Memory in mebibytes.
  core.int? memoryMb;

  /// Number of physical cores.
  core.int? physicalCoreCount;

  /// Compute Engine machine series.
  core.String? series;

  /// Compute Engine storage.
  ///
  /// Never empty.
  core.List<ComputeStorageDescriptor>? storage;

  ComputeEngineShapeDescriptor({
    this.logicalCoreCount,
    this.machineType,
    this.memoryMb,
    this.physicalCoreCount,
    this.series,
    this.storage,
  });

  ComputeEngineShapeDescriptor.fromJson(core.Map json_)
      : this(
          logicalCoreCount: json_.containsKey('logicalCoreCount')
              ? json_['logicalCoreCount'] as core.int
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          physicalCoreCount: json_.containsKey('physicalCoreCount')
              ? json_['physicalCoreCount'] as core.int
              : null,
          series: json_.containsKey('series')
              ? json_['series'] as core.String
              : null,
          storage: json_.containsKey('storage')
              ? (json_['storage'] as core.List)
                  .map((value) => ComputeStorageDescriptor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logicalCoreCount != null) 'logicalCoreCount': logicalCoreCount!,
        if (machineType != null) 'machineType': machineType!,
        if (memoryMb != null) 'memoryMb': memoryMb!,
        if (physicalCoreCount != null) 'physicalCoreCount': physicalCoreCount!,
        if (series != null) 'series': series!,
        if (storage != null) 'storage': storage!,
      };
}

/// Compute Engine storage option descriptor.
class ComputeStorageDescriptor {
  /// Disk size in GiB.
  core.int? sizeGb;

  /// Disk type backing the storage.
  /// Possible string values are:
  /// - "PERSISTENT_DISK_TYPE_UNSPECIFIED" : Unspecified (default value).
  /// Selecting this value allows the system to use any disk type according to
  /// reported usage. This a good value to start with.
  /// - "PERSISTENT_DISK_TYPE_STANDARD" : Standard HDD Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_BALANCED" : Balanced Persistent Disk.
  /// - "PERSISTENT_DISK_TYPE_SSD" : SSD Persistent Disk.
  core.String? type;

  ComputeStorageDescriptor({
    this.sizeGb,
    this.type,
  });

  ComputeStorageDescriptor.fromJson(core.Map json_)
      : this(
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (type != null) 'type': type!,
      };
}

/// CPU usage sample.
class CpuUsageSample {
  /// Percentage of total CPU capacity utilized.
  ///
  /// Must be in the interval \[0, 100\]. On most systems can be calculated
  /// using 100 - idle percentage.
  core.double? utilizedPercentage;

  CpuUsageSample({
    this.utilizedPercentage,
  });

  CpuUsageSample.fromJson(core.Map json_)
      : this(
          utilizedPercentage: json_.containsKey('utilizedPercentage')
              ? (json_['utilizedPercentage'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (utilizedPercentage != null)
          'utilizedPercentage': utilizedPercentage!,
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
          cpu: json_.containsKey('cpu')
              ? DailyResourceUsageAggregationCPU.fromJson(
                  json_['cpu'] as core.Map<core.String, core.dynamic>)
              : null,
          date: json_.containsKey('date')
              ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          disk: json_.containsKey('disk')
              ? DailyResourceUsageAggregationDisk.fromJson(
                  json_['disk'] as core.Map<core.String, core.dynamic>)
              : null,
          memory: json_.containsKey('memory')
              ? DailyResourceUsageAggregationMemory.fromJson(
                  json_['memory'] as core.Map<core.String, core.dynamic>)
              : null,
          network: json_.containsKey('network')
              ? DailyResourceUsageAggregationNetwork.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
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

  DailyResourceUsageAggregationCPU({
    this.utilizationPercentage,
  });

  DailyResourceUsageAggregationCPU.fromJson(core.Map json_)
      : this(
          utilizationPercentage: json_.containsKey('utilizationPercentage')
              ? DailyResourceUsageAggregationStats.fromJson(
                  json_['utilizationPercentage']
                      as core.Map<core.String, core.dynamic>)
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

  DailyResourceUsageAggregationDisk({
    this.iops,
  });

  DailyResourceUsageAggregationDisk.fromJson(core.Map json_)
      : this(
          iops: json_.containsKey('iops')
              ? DailyResourceUsageAggregationStats.fromJson(
                  json_['iops'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iops != null) 'iops': iops!,
      };
}

/// Statistical aggregation of memory usage.
class DailyResourceUsageAggregationMemory {
  /// Memory utilization percentage.
  DailyResourceUsageAggregationStats? utilizationPercentage;

  DailyResourceUsageAggregationMemory({
    this.utilizationPercentage,
  });

  DailyResourceUsageAggregationMemory.fromJson(core.Map json_)
      : this(
          utilizationPercentage: json_.containsKey('utilizationPercentage')
              ? DailyResourceUsageAggregationStats.fromJson(
                  json_['utilizationPercentage']
                      as core.Map<core.String, core.dynamic>)
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

  DailyResourceUsageAggregationNetwork({
    this.egressBps,
    this.ingressBps,
  });

  DailyResourceUsageAggregationNetwork.fromJson(core.Map json_)
      : this(
          egressBps: json_.containsKey('egressBps')
              ? DailyResourceUsageAggregationStats.fromJson(
                  json_['egressBps'] as core.Map<core.String, core.dynamic>)
              : null,
          ingressBps: json_.containsKey('ingressBps')
              ? DailyResourceUsageAggregationStats.fromJson(
                  json_['ingressBps'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (egressBps != null) 'egressBps': egressBps!,
        if (ingressBps != null) 'ingressBps': ingressBps!,
      };
}

/// Statistical aggregation of samples for a single resource usage.
class DailyResourceUsageAggregationStats {
  /// Average usage value.
  core.double? average;

  /// Median usage value.
  core.double? median;

  /// 95th percentile usage value.
  core.double? ninteyFifthPercentile;

  /// Peak usage value.
  core.double? peak;

  DailyResourceUsageAggregationStats({
    this.average,
    this.median,
    this.ninteyFifthPercentile,
    this.peak,
  });

  DailyResourceUsageAggregationStats.fromJson(core.Map json_)
      : this(
          average: json_.containsKey('average')
              ? (json_['average'] as core.num).toDouble()
              : null,
          median: json_.containsKey('median')
              ? (json_['median'] as core.num).toDouble()
              : null,
          ninteyFifthPercentile: json_.containsKey('ninteyFifthPercentile')
              ? (json_['ninteyFifthPercentile'] as core.num).toDouble()
              : null,
          peak: json_.containsKey('peak')
              ? (json_['peak'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (average != null) 'average': average!,
        if (median != null) 'median': median!,
        if (ninteyFifthPercentile != null)
          'ninteyFifthPercentile': ninteyFifthPercentile!,
        if (peak != null) 'peak': peak!,
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
  /// Required. Immutable.
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          heartbeatTime: json_.containsKey('heartbeatTime')
              ? json_['heartbeatTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          signalsEndpoint: json_.containsKey('signalsEndpoint')
              ? json_['signalsEndpoint'] as core.String
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
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
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (signalsEndpoint != null) 'signalsEndpoint': signalsEndpoint!,
        if (source != null) 'source': source!,
        if (state != null) 'state': state!,
        if (ttl != null) 'ttl': ttl!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// Single disk entry.
class DiskEntry {
  /// Disk capacity.
  core.String? capacityBytes;

  /// Disk label.
  core.String? diskLabel;

  /// Disk label type (e.g. BIOS/GPT)
  core.String? diskLabelType;

  /// Disk free space.
  core.String? freeBytes;

  /// Disk hardware address (e.g. 0:1 for SCSI).
  core.String? hwAddress;

  /// Disks interface type.
  /// Possible string values are:
  /// - "INTERFACE_TYPE_UNSPECIFIED" : Interface type unknown or unspecified.
  /// - "IDE" : IDE interface type.
  /// - "SATA" : SATA interface type.
  /// - "SAS" : SAS interface type.
  /// - "SCSI" : SCSI interface type.
  /// - "NVME" : NVME interface type.
  /// - "FC" : FC interface type.
  /// - "ISCSI" : iSCSI interface type.
  core.String? interfaceType;

  /// Partition layout.
  DiskPartitionList? partitions;

  /// VMware disk details.
  VmwareDiskConfig? vmware;

  DiskEntry({
    this.capacityBytes,
    this.diskLabel,
    this.diskLabelType,
    this.freeBytes,
    this.hwAddress,
    this.interfaceType,
    this.partitions,
    this.vmware,
  });

  DiskEntry.fromJson(core.Map json_)
      : this(
          capacityBytes: json_.containsKey('capacityBytes')
              ? json_['capacityBytes'] as core.String
              : null,
          diskLabel: json_.containsKey('diskLabel')
              ? json_['diskLabel'] as core.String
              : null,
          diskLabelType: json_.containsKey('diskLabelType')
              ? json_['diskLabelType'] as core.String
              : null,
          freeBytes: json_.containsKey('freeBytes')
              ? json_['freeBytes'] as core.String
              : null,
          hwAddress: json_.containsKey('hwAddress')
              ? json_['hwAddress'] as core.String
              : null,
          interfaceType: json_.containsKey('interfaceType')
              ? json_['interfaceType'] as core.String
              : null,
          partitions: json_.containsKey('partitions')
              ? DiskPartitionList.fromJson(
                  json_['partitions'] as core.Map<core.String, core.dynamic>)
              : null,
          vmware: json_.containsKey('vmware')
              ? VmwareDiskConfig.fromJson(
                  json_['vmware'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityBytes != null) 'capacityBytes': capacityBytes!,
        if (diskLabel != null) 'diskLabel': diskLabel!,
        if (diskLabelType != null) 'diskLabelType': diskLabelType!,
        if (freeBytes != null) 'freeBytes': freeBytes!,
        if (hwAddress != null) 'hwAddress': hwAddress!,
        if (interfaceType != null) 'interfaceType': interfaceType!,
        if (partitions != null) 'partitions': partitions!,
        if (vmware != null) 'vmware': vmware!,
      };
}

/// VM disks.
class DiskEntryList {
  /// Disk entries.
  core.List<DiskEntry>? entries;

  DiskEntryList({
    this.entries,
  });

  DiskEntryList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => DiskEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  /// Mount pount (Linux/Windows) or drive letter (Windows).
  core.String? mountPoint;

  /// Sub-partitions.
  DiskPartitionList? subPartitions;

  /// Partition type.
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
          capacityBytes: json_.containsKey('capacityBytes')
              ? json_['capacityBytes'] as core.String
              : null,
          fileSystem: json_.containsKey('fileSystem')
              ? json_['fileSystem'] as core.String
              : null,
          freeBytes: json_.containsKey('freeBytes')
              ? json_['freeBytes'] as core.String
              : null,
          mountPoint: json_.containsKey('mountPoint')
              ? json_['mountPoint'] as core.String
              : null,
          subPartitions: json_.containsKey('subPartitions')
              ? DiskPartitionList.fromJson(
                  json_['subPartitions'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uuid: json_.containsKey('uuid') ? json_['uuid'] as core.String : null,
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

/// Disk partition list.
class DiskPartitionList {
  /// Partition entries.
  core.List<DiskPartition>? entries;

  DiskPartitionList({
    this.entries,
  });

  DiskPartitionList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => DiskPartition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// Must be non-negative.
  core.double? averageIops;

  DiskUsageSample({
    this.averageIops,
  });

  DiskUsageSample.fromJson(core.Map json_)
      : this(
          averageIops: json_.containsKey('averageIops')
              ? (json_['averageIops'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageIops != null) 'averageIops': averageIops!,
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
          ingestionTime: json_.containsKey('ingestionTime')
              ? json_['ingestionTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          originalFrame: json_.containsKey('originalFrame')
              ? AssetFrame.fromJson(
                  json_['originalFrame'] as core.Map<core.String, core.dynamic>)
              : null,
          violations: json_.containsKey('violations')
              ? (json_['violations'] as core.List)
                  .map((value) => FrameViolationEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  /// Total number of rows in the import job.
  ///
  /// Output only.
  core.int? totalRowsCount;

  ExecutionReport({
    this.executionErrors,
    this.framesReported,
    this.totalRowsCount,
  });

  ExecutionReport.fromJson(core.Map json_)
      : this(
          executionErrors: json_.containsKey('executionErrors')
              ? ValidationReport.fromJson(json_['executionErrors']
                  as core.Map<core.String, core.dynamic>)
              : null,
          framesReported: json_.containsKey('framesReported')
              ? json_['framesReported'] as core.int
              : null,
          totalRowsCount: json_.containsKey('totalRowsCount')
              ? json_['totalRowsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionErrors != null) 'executionErrors': executionErrors!,
        if (framesReported != null) 'framesReported': framesReported!,
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
          fileErrors: json_.containsKey('fileErrors')
              ? (json_['fileErrors'] as core.List)
                  .map((value) => ImportError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          partialReport: json_.containsKey('partialReport')
              ? json_['partialReport'] as core.bool
              : null,
          rowErrors: json_.containsKey('rowErrors')
              ? (json_['rowErrors'] as core.List)
                  .map((value) => ImportRowError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileErrors != null) 'fileErrors': fileErrors!,
        if (fileName != null) 'fileName': fileName!,
        if (partialReport != null) 'partialReport': partialReport!,
        if (rowErrors != null) 'rowErrors': rowErrors!,
      };
}

/// Describes the fit level of an asset for migration to a specific target.
class FitDescriptor {
  /// Fit level.
  /// Possible string values are:
  /// - "FIT_LEVEL_UNSPECIFIED" : Not enough information.
  /// - "FIT" : Fit.
  /// - "NO_FIT" : No Fit.
  /// - "REQUIRES_EFFORT" : Fit with effort.
  core.String? fitLevel;

  FitDescriptor({
    this.fitLevel,
  });

  FitDescriptor.fromJson(core.Map json_)
      : this(
          fitLevel: json_.containsKey('fitLevel')
              ? json_['fitLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fitLevel != null) 'fitLevel': fitLevel!,
      };
}

/// A resource that contains a single violation of a reported `AssetFrame`
/// resource.
class FrameViolationEntry {
  /// The field of the original frame where the violation occurred.
  core.String? field;

  /// A message describing the violation.
  core.String? violation;

  FrameViolationEntry({
    this.field,
    this.violation,
  });

  FrameViolationEntry.fromJson(core.Map json_)
      : this(
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          violation: json_.containsKey('violation')
              ? json_['violation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (violation != null) 'violation': violation!,
      };
}

/// Collection of frame data.
class Frames {
  /// A repeated field of asset data.
  core.List<AssetFrame>? framesData;

  Frames({
    this.framesData,
  });

  Frames.fromJson(core.Map json_)
      : this(
          framesData: json_.containsKey('framesData')
              ? (json_['framesData'] as core.List)
                  .map((value) => AssetFrame.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (framesData != null) 'framesData': framesData!,
      };
}

/// Single fstab entry.
class FstabEntry {
  /// The mount point for the filesystem.
  core.String? file;

  /// Used by dump to determine which filesystems need to be dumped.
  core.int? freq;

  /// Mount options associated with the filesystem.
  core.String? mntops;

  /// Used by the fsck(8) program to determine the order in which filesystem
  /// checks are done at reboot time.
  core.int? passno;

  /// The block special device or remote filesystem to be mounted.
  core.String? spec;

  /// The type of the filesystem.
  core.String? vfstype;

  FstabEntry({
    this.file,
    this.freq,
    this.mntops,
    this.passno,
    this.spec,
    this.vfstype,
  });

  FstabEntry.fromJson(core.Map json_)
      : this(
          file: json_.containsKey('file') ? json_['file'] as core.String : null,
          freq: json_.containsKey('freq') ? json_['freq'] as core.int : null,
          mntops: json_.containsKey('mntops')
              ? json_['mntops'] as core.String
              : null,
          passno:
              json_.containsKey('passno') ? json_['passno'] as core.int : null,
          spec: json_.containsKey('spec') ? json_['spec'] as core.String : null,
          vfstype: json_.containsKey('vfstype')
              ? json_['vfstype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (file != null) 'file': file!,
        if (freq != null) 'freq': freq!,
        if (mntops != null) 'mntops': mntops!,
        if (passno != null) 'passno': passno!,
        if (spec != null) 'spec': spec!,
        if (vfstype != null) 'vfstype': vfstype!,
      };
}

/// Fstab content.
class FstabEntryList {
  /// Fstab entries.
  core.List<FstabEntry>? entries;

  FstabEntryList({
    this.entries,
  });

  FstabEntryList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => FstabEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
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
          additionalInformation: json_.containsKey('additionalInformation')
              ? (json_['additionalInformation'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          defaultMessage: json_.containsKey('defaultMessage')
              ? json_['defaultMessage'] as core.String
              : null,
          messageId: json_.containsKey('messageId')
              ? json_['messageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalInformation != null)
          'additionalInformation': additionalInformation!,
        if (defaultMessage != null) 'defaultMessage': defaultMessage!,
        if (messageId != null) 'messageId': messageId!,
      };
}

/// Generic platform details.
class GenericPlatformDetails {
  /// Free text representation of the machine location.
  ///
  /// The format of this field should not be relied on. Different VMs in the
  /// same location may have different string values for this field.
  core.String? location;

  GenericPlatformDetails({
    this.location,
  });

  GenericPlatformDetails.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// A resource that represents an asset group.
///
/// The purpose of an asset group is to bundle a set of assets that have
/// something in common, while allowing users to add annotations to the group.
/// An asset can belong to multiple groups.
class Group {
  /// The timestamp when the group was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the group.
  ///
  /// Optional.
  core.String? description;

  /// User-friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// The name of the group.
  ///
  /// Output only.
  core.String? name;

  /// The timestamp when the group was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Group({
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.name,
    this.updateTime,
  });

  Group.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Guest OS config information.
class GuestConfigDetails {
  /// Mount list (Linux fstab).
  FstabEntryList? fstab;

  /// Hosts file (/etc/hosts).
  HostsEntryList? hosts;

  /// OS issue (typically /etc/issue in Linux).
  core.String? issue;

  /// NFS exports.
  NfsExportList? nfsExports;

  /// Security-Enhanced Linux (SELinux) mode.
  /// Possible string values are:
  /// - "SE_LINUX_MODE_UNSPECIFIED" : SELinux mode unknown or unspecified.
  /// - "SE_LINUX_MODE_DISABLED" : SELinux is disabled.
  /// - "SE_LINUX_MODE_PERMISSIVE" : SELinux permissive mode.
  /// - "SE_LINUX_MODE_ENFORCING" : SELinux enforcing mode.
  core.String? selinuxMode;

  GuestConfigDetails({
    this.fstab,
    this.hosts,
    this.issue,
    this.nfsExports,
    this.selinuxMode,
  });

  GuestConfigDetails.fromJson(core.Map json_)
      : this(
          fstab: json_.containsKey('fstab')
              ? FstabEntryList.fromJson(
                  json_['fstab'] as core.Map<core.String, core.dynamic>)
              : null,
          hosts: json_.containsKey('hosts')
              ? HostsEntryList.fromJson(
                  json_['hosts'] as core.Map<core.String, core.dynamic>)
              : null,
          issue:
              json_.containsKey('issue') ? json_['issue'] as core.String : null,
          nfsExports: json_.containsKey('nfsExports')
              ? NfsExportList.fromJson(
                  json_['nfsExports'] as core.Map<core.String, core.dynamic>)
              : null,
          selinuxMode: json_.containsKey('selinuxMode')
              ? json_['selinuxMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fstab != null) 'fstab': fstab!,
        if (hosts != null) 'hosts': hosts!,
        if (issue != null) 'issue': issue!,
        if (nfsExports != null) 'nfsExports': nfsExports!,
        if (selinuxMode != null) 'selinuxMode': selinuxMode!,
      };
}

/// Guest installed application information.
class GuestInstalledApplication {
  /// Installed application name.
  core.String? applicationName;

  /// The time when the application was installed.
  core.String? installTime;

  /// License strings associated with the installed application.
  core.List<core.String>? licenses;

  /// Source path.
  core.String? path;

  /// Installed application vendor.
  core.String? vendor;

  /// Installed application version.
  core.String? version;

  GuestInstalledApplication({
    this.applicationName,
    this.installTime,
    this.licenses,
    this.path,
    this.vendor,
    this.version,
  });

  GuestInstalledApplication.fromJson(core.Map json_)
      : this(
          applicationName: json_.containsKey('applicationName')
              ? json_['applicationName'] as core.String
              : null,
          installTime: json_.containsKey('installTime')
              ? json_['installTime'] as core.String
              : null,
          licenses: json_.containsKey('licenses')
              ? (json_['licenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          vendor: json_.containsKey('vendor')
              ? json_['vendor'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationName != null) 'applicationName': applicationName!,
        if (installTime != null) 'installTime': installTime!,
        if (licenses != null) 'licenses': licenses!,
        if (path != null) 'path': path!,
        if (vendor != null) 'vendor': vendor!,
        if (version != null) 'version': version!,
      };
}

/// Guest installed application list.
class GuestInstalledApplicationList {
  /// Application entries.
  core.List<GuestInstalledApplication>? entries;

  GuestInstalledApplicationList({
    this.entries,
  });

  GuestInstalledApplicationList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => GuestInstalledApplication.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Information from Guest-level collections.
class GuestOsDetails {
  /// OS and app configuration.
  GuestConfigDetails? config;

  /// What family the OS belong to, if known.
  /// Possible string values are:
  /// - "OS_FAMILY_UNKNOWN"
  /// - "OS_FAMILY_WINDOWS" : Microsoft Windows Server and Desktop.
  /// - "OS_FAMILY_LINUX" : Various Linux flavors.
  /// - "OS_FAMILY_UNIX" : Non-Linux Unix flavors.
  core.String? family;

  /// The name of the operating system.
  core.String? osName;

  /// Runtime information.
  GuestRuntimeDetails? runtime;

  /// The version of the operating system.
  core.String? version;

  GuestOsDetails({
    this.config,
    this.family,
    this.osName,
    this.runtime,
    this.version,
  });

  GuestOsDetails.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GuestConfigDetails.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          family: json_.containsKey('family')
              ? json_['family'] as core.String
              : null,
          osName: json_.containsKey('osName')
              ? json_['osName'] as core.String
              : null,
          runtime: json_.containsKey('runtime')
              ? GuestRuntimeDetails.fromJson(
                  json_['runtime'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (family != null) 'family': family!,
        if (osName != null) 'osName': osName!,
        if (runtime != null) 'runtime': runtime!,
        if (version != null) 'version': version!,
      };
}

/// Guest OS runtime information.
class GuestRuntimeDetails {
  /// Domain, e.g. c.stratozone-development.internal.
  core.String? domain;

  /// Installed applications information.
  GuestInstalledApplicationList? installedApps;

  /// Last time the OS was booted.
  core.String? lastBootTime;

  /// Machine name.
  core.String? machineName;

  /// Runtime network information (connections, ports).
  RuntimeNetworkInfo? network;

  /// Open files information.
  OpenFileList? openFileList;

  /// Running processes.
  RunningProcessList? processes;

  /// Running background services.
  RunningServiceList? services;

  GuestRuntimeDetails({
    this.domain,
    this.installedApps,
    this.lastBootTime,
    this.machineName,
    this.network,
    this.openFileList,
    this.processes,
    this.services,
  });

  GuestRuntimeDetails.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          installedApps: json_.containsKey('installedApps')
              ? GuestInstalledApplicationList.fromJson(
                  json_['installedApps'] as core.Map<core.String, core.dynamic>)
              : null,
          lastBootTime: json_.containsKey('lastBootTime')
              ? json_['lastBootTime'] as core.String
              : null,
          machineName: json_.containsKey('machineName')
              ? json_['machineName'] as core.String
              : null,
          network: json_.containsKey('network')
              ? RuntimeNetworkInfo.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          openFileList: json_.containsKey('openFileList')
              ? OpenFileList.fromJson(
                  json_['openFileList'] as core.Map<core.String, core.dynamic>)
              : null,
          processes: json_.containsKey('processes')
              ? RunningProcessList.fromJson(
                  json_['processes'] as core.Map<core.String, core.dynamic>)
              : null,
          services: json_.containsKey('services')
              ? RunningServiceList.fromJson(
                  json_['services'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (installedApps != null) 'installedApps': installedApps!,
        if (lastBootTime != null) 'lastBootTime': lastBootTime!,
        if (machineName != null) 'machineName': machineName!,
        if (network != null) 'network': network!,
        if (openFileList != null) 'openFileList': openFileList!,
        if (processes != null) 'processes': processes!,
        if (services != null) 'services': services!,
      };
}

/// Single /etc/hosts entry.
class HostsEntry {
  /// List of host names / aliases.
  core.List<core.String>? hostNames;

  /// IP (raw, IPv4/6 agnostic).
  core.String? ip;

  HostsEntry({
    this.hostNames,
    this.ip,
  });

  HostsEntry.fromJson(core.Map json_)
      : this(
          hostNames: json_.containsKey('hostNames')
              ? (json_['hostNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          ip: json_.containsKey('ip') ? json_['ip'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostNames != null) 'hostNames': hostNames!,
        if (ip != null) 'ip': ip!,
      };
}

/// Hosts content.
class HostsEntryList {
  /// Hosts entries.
  core.List<HostsEntry>? entries;

  HostsEntryList({
    this.entries,
  });

  HostsEntryList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => HostsEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// The payload format.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IMPORT_JOB_FORMAT_UNSPECIFIED" : Default value.
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_XLSX" : RVTools format (XLSX).
  /// - "IMPORT_JOB_FORMAT_RVTOOLS_CSV" : RVTools format (CSV).
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AWS_CSV" : CSV format exported from AWS
  /// using the AWS collection script.
  /// - "IMPORT_JOB_FORMAT_EXPORTED_AZURE_CSV" : CSV format exported from Azure
  /// using the Azure collection script.
  /// - "IMPORT_JOB_FORMAT_STRATOZONE_CSV" : CSV format created manually and
  /// following the StratoZone format. For more information, see Manually create
  /// and upload data tables.
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uploadFileInfo: json_.containsKey('uploadFileInfo')
              ? UploadFileInfo.fromJson(json_['uploadFileInfo']
                  as core.Map<core.String, core.dynamic>)
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
class ImportError {
  /// The error information.
  core.String? errorDetails;

  /// The severity of the error.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "ERROR"
  /// - "WARNING"
  /// - "INFO"
  core.String? severity;

  ImportError({
    this.errorDetails,
    this.severity,
  });

  ImportError.fromJson(core.Map json_)
      : this(
          errorDetails: json_.containsKey('errorDetails')
              ? json_['errorDetails'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorDetails != null) 'errorDetails': errorDetails!,
        if (severity != null) 'severity': severity!,
      };
}

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
  /// Maximum length is 256 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The report with the results of running the import job.
  ///
  /// Output only.
  ExecutionReport? executionReport;

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
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.validationReport,
  });

  ImportJob.fromJson(core.Map json_)
      : this(
          assetSource: json_.containsKey('assetSource')
              ? json_['assetSource'] as core.String
              : null,
          completeTime: json_.containsKey('completeTime')
              ? json_['completeTime'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          executionReport: json_.containsKey('executionReport')
              ? ExecutionReport.fromJson(json_['executionReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          validationReport: json_.containsKey('validationReport')
              ? ValidationReport.fromJson(json_['validationReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetSource != null) 'assetSource': assetSource!,
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (executionReport != null) 'executionReport': executionReport!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (validationReport != null) 'validationReport': validationReport!,
      };
}

/// A resource that reports the import job errors at row level.
class ImportRowError {
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

  ImportRowError({
    this.errors,
    this.rowNumber,
    this.vmName,
    this.vmUuid,
  });

  ImportRowError.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ImportError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowNumber: json_.containsKey('rowNumber')
              ? json_['rowNumber'] as core.int
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
          vmUuid: json_.containsKey('vmUuid')
              ? json_['vmUuid'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (rowNumber != null) 'rowNumber': rowNumber!,
        if (vmName != null) 'vmName': vmName!,
        if (vmUuid != null) 'vmUuid': vmUuid!,
      };
}

/// An insight about an asset.
class Insight {
  /// A generic insight about an asset
  ///
  /// Output only.
  GenericInsight? genericInsight;

  /// An insight about potential migrations for an asset.
  ///
  /// Output only.
  MigrationInsight? migrationInsight;

  Insight({
    this.genericInsight,
    this.migrationInsight,
  });

  Insight.fromJson(core.Map json_)
      : this(
          genericInsight: json_.containsKey('genericInsight')
              ? GenericInsight.fromJson(json_['genericInsight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          migrationInsight: json_.containsKey('migrationInsight')
              ? MigrationInsight.fromJson(json_['migrationInsight']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (genericInsight != null) 'genericInsight': genericInsight!,
        if (migrationInsight != null) 'migrationInsight': migrationInsight!,
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

  InsightList({
    this.insights,
    this.updateTime,
  });

  InsightList.fromJson(core.Map json_)
      : this(
          insights: json_.containsKey('insights')
              ? (json_['insights'] as core.List)
                  .map((value) => Insight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insights != null) 'insights': insights!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  ListAssetsResponse({
    this.assets,
    this.nextPageToken,
    this.unreachable,
  });

  ListAssetsResponse.fromJson(core.Map json_)
      : this(
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          discoveryClients: json_.containsKey('discoveryClients')
              ? (json_['discoveryClients'] as core.List)
                  .map((value) => DiscoveryClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          errorFrames: json_.containsKey('errorFrames')
              ? (json_['errorFrames'] as core.List)
                  .map((value) => ErrorFrame.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  ListGroupsResponse({
    this.groups,
    this.nextPageToken,
    this.unreachable,
  });

  ListGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          importDataFiles: json_.containsKey('importDataFiles')
              ? (json_['importDataFiles'] as core.List)
                  .map((value) => ImportDataFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          importJobs: json_.containsKey('importJobs')
              ? (json_['importJobs'] as core.List)
                  .map((value) => ImportJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          preferenceSets: json_.containsKey('preferenceSets')
              ? (json_['preferenceSets'] as core.List)
                  .map((value) => PreferenceSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (preferenceSets != null) 'preferenceSets': preferenceSets!,
        if (unreachable != null) 'unreachable': unreachable!,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reportConfigs: json_.containsKey('reportConfigs')
              ? (json_['reportConfigs'] as core.List)
                  .map((value) => ReportConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  ListReportsResponse({
    this.nextPageToken,
    this.reports,
    this.unreachable,
  });

  ListReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reports: json_.containsKey('reports')
              ? (json_['reports'] as core.List)
                  .map((value) => Report.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  ListSourcesResponse({
    this.nextPageToken,
    this.sources,
    this.unreachable,
  });

  ListSourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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

  /// CPU name, e.g., "Intel Xeon E5-2690", "AMD EPYC 7571" etc.
  core.String? cpuName;

  /// Number of processor sockets allocated to the machine.
  core.int? cpuSocketCount;

  /// Number of CPU threads allocated to the machine.
  core.int? cpuThreadCount;

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
    this.cpuName,
    this.cpuSocketCount,
    this.cpuThreadCount,
    this.firmwareType,
    this.hyperthreading,
    this.vendor,
  });

  MachineArchitectureDetails.fromJson(core.Map json_)
      : this(
          bios: json_.containsKey('bios')
              ? BiosDetails.fromJson(
                  json_['bios'] as core.Map<core.String, core.dynamic>)
              : null,
          cpuArchitecture: json_.containsKey('cpuArchitecture')
              ? json_['cpuArchitecture'] as core.String
              : null,
          cpuName: json_.containsKey('cpuName')
              ? json_['cpuName'] as core.String
              : null,
          cpuSocketCount: json_.containsKey('cpuSocketCount')
              ? json_['cpuSocketCount'] as core.int
              : null,
          cpuThreadCount: json_.containsKey('cpuThreadCount')
              ? json_['cpuThreadCount'] as core.int
              : null,
          firmwareType: json_.containsKey('firmwareType')
              ? json_['firmwareType'] as core.String
              : null,
          hyperthreading: json_.containsKey('hyperthreading')
              ? json_['hyperthreading'] as core.String
              : null,
          vendor: json_.containsKey('vendor')
              ? json_['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bios != null) 'bios': bios!,
        if (cpuArchitecture != null) 'cpuArchitecture': cpuArchitecture!,
        if (cpuName != null) 'cpuName': cpuName!,
        if (cpuSocketCount != null) 'cpuSocketCount': cpuSocketCount!,
        if (cpuThreadCount != null) 'cpuThreadCount': cpuThreadCount!,
        if (firmwareType != null) 'firmwareType': firmwareType!,
        if (hyperthreading != null) 'hyperthreading': hyperthreading!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Details of a machine.
class MachineDetails {
  /// Architecture details (vendor, CPU architecture).
  MachineArchitectureDetails? architecture;

  /// Number of CPU cores in the machine.
  ///
  /// Must be non-negative.
  core.int? coreCount;

  /// Machine creation time.
  core.String? createTime;

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
          architecture: json_.containsKey('architecture')
              ? MachineArchitectureDetails.fromJson(
                  json_['architecture'] as core.Map<core.String, core.dynamic>)
              : null,
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.int
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? MachineDiskDetails.fromJson(
                  json_['disks'] as core.Map<core.String, core.dynamic>)
              : null,
          guestOs: json_.containsKey('guestOs')
              ? GuestOsDetails.fromJson(
                  json_['guestOs'] as core.Map<core.String, core.dynamic>)
              : null,
          machineName: json_.containsKey('machineName')
              ? json_['machineName'] as core.String
              : null,
          memoryMb: json_.containsKey('memoryMb')
              ? json_['memoryMb'] as core.int
              : null,
          network: json_.containsKey('network')
              ? MachineNetworkDetails.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          platform: json_.containsKey('platform')
              ? PlatformDetails.fromJson(
                  json_['platform'] as core.Map<core.String, core.dynamic>)
              : null,
          powerState: json_.containsKey('powerState')
              ? json_['powerState'] as core.String
              : null,
          uuid: json_.containsKey('uuid') ? json_['uuid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (coreCount != null) 'coreCount': coreCount!,
        if (createTime != null) 'createTime': createTime!,
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

  /// Disk total Capacity.
  core.String? totalCapacityBytes;

  /// Total disk free space.
  core.String? totalFreeBytes;

  MachineDiskDetails({
    this.disks,
    this.totalCapacityBytes,
    this.totalFreeBytes,
  });

  MachineDiskDetails.fromJson(core.Map json_)
      : this(
          disks: json_.containsKey('disks')
              ? DiskEntryList.fromJson(
                  json_['disks'] as core.Map<core.String, core.dynamic>)
              : null,
          totalCapacityBytes: json_.containsKey('totalCapacityBytes')
              ? json_['totalCapacityBytes'] as core.String
              : null,
          totalFreeBytes: json_.containsKey('totalFreeBytes')
              ? json_['totalFreeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disks != null) 'disks': disks!,
        if (totalCapacityBytes != null)
          'totalCapacityBytes': totalCapacityBytes!,
        if (totalFreeBytes != null) 'totalFreeBytes': totalFreeBytes!,
      };
}

/// Details of network adapters and settings.
class MachineNetworkDetails {
  /// List of network adapters.
  NetworkAdapterList? adapters;

  /// The primary IP address of the machine.
  core.String? primaryIpAddress;

  /// MAC address of the machine.
  ///
  /// This property is used to uniqly identify the machine.
  core.String? primaryMacAddress;

  /// The public IP address of the machine.
  core.String? publicIpAddress;

  MachineNetworkDetails({
    this.adapters,
    this.primaryIpAddress,
    this.primaryMacAddress,
    this.publicIpAddress,
  });

  MachineNetworkDetails.fromJson(core.Map json_)
      : this(
          adapters: json_.containsKey('adapters')
              ? NetworkAdapterList.fromJson(
                  json_['adapters'] as core.Map<core.String, core.dynamic>)
              : null,
          primaryIpAddress: json_.containsKey('primaryIpAddress')
              ? json_['primaryIpAddress'] as core.String
              : null,
          primaryMacAddress: json_.containsKey('primaryMacAddress')
              ? json_['primaryMacAddress'] as core.String
              : null,
          publicIpAddress: json_.containsKey('publicIpAddress')
              ? json_['publicIpAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adapters != null) 'adapters': adapters!,
        if (primaryIpAddress != null) 'primaryIpAddress': primaryIpAddress!,
        if (primaryMacAddress != null) 'primaryMacAddress': primaryMacAddress!,
        if (publicIpAddress != null) 'publicIpAddress': publicIpAddress!,
      };
}

/// The type of machines to consider when calculating virtual machine migration
/// insights and recommendations.
///
/// Not all machine types are available in all zones and regions.
class MachinePreferences {
  /// Compute Engine machine series to consider for insights and
  /// recommendations.
  ///
  /// If empty, no restriction is applied on the machine series.
  core.List<MachineSeries>? allowedMachineSeries;

  MachinePreferences({
    this.allowedMachineSeries,
  });

  MachinePreferences.fromJson(core.Map json_)
      : this(
          allowedMachineSeries: json_.containsKey('allowedMachineSeries')
              ? (json_['allowedMachineSeries'] as core.List)
                  .map((value) => MachineSeries.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedMachineSeries != null)
          'allowedMachineSeries': allowedMachineSeries!,
      };
}

/// A Compute Engine machine series.
class MachineSeries {
  /// Code to identify a Compute Engine machine series.
  ///
  /// Consult
  /// https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison
  /// for more details on the available series.
  core.String? code;

  MachineSeries({
    this.code,
  });

  MachineSeries.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// Memory usage sample.
class MemoryUsageSample {
  /// Percentage of system memory utilized.
  ///
  /// Must be in the interval \[0, 100\].
  core.double? utilizedPercentage;

  MemoryUsageSample({
    this.utilizedPercentage,
  });

  MemoryUsageSample.fromJson(core.Map json_)
      : this(
          utilizedPercentage: json_.containsKey('utilizedPercentage')
              ? (json_['utilizedPercentage'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (utilizedPercentage != null)
          'utilizedPercentage': utilizedPercentage!,
      };
}

/// An insight about potential migrations for an asset.
class MigrationInsight {
  /// A Google Compute Engine target.
  ///
  /// Output only.
  ComputeEngineMigrationTarget? computeEngineTarget;

  /// Description of how well the asset this insight is associated with fits the
  /// proposed migration.
  ///
  /// Output only.
  FitDescriptor? fit;

  MigrationInsight({
    this.computeEngineTarget,
    this.fit,
  });

  MigrationInsight.fromJson(core.Map json_)
      : this(
          computeEngineTarget: json_.containsKey('computeEngineTarget')
              ? ComputeEngineMigrationTarget.fromJson(
                  json_['computeEngineTarget']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fit: json_.containsKey('fit')
              ? FitDescriptor.fromJson(
                  json_['fit'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeEngineTarget != null)
          'computeEngineTarget': computeEngineTarget!,
        if (fit != null) 'fit': fit!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Details of network adapter.
class NetworkAdapterDetails {
  /// Network adapter type (e.g. VMXNET3).
  core.String? adapterType;

  /// NetworkAddressList
  NetworkAddressList? addresses;

  /// MAC address.
  core.String? macAddress;

  NetworkAdapterDetails({
    this.adapterType,
    this.addresses,
    this.macAddress,
  });

  NetworkAdapterDetails.fromJson(core.Map json_)
      : this(
          adapterType: json_.containsKey('adapterType')
              ? json_['adapterType'] as core.String
              : null,
          addresses: json_.containsKey('addresses')
              ? NetworkAddressList.fromJson(
                  json_['addresses'] as core.Map<core.String, core.dynamic>)
              : null,
          macAddress: json_.containsKey('macAddress')
              ? json_['macAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adapterType != null) 'adapterType': adapterType!,
        if (addresses != null) 'addresses': addresses!,
        if (macAddress != null) 'macAddress': macAddress!,
      };
}

/// List of network adapters.
class NetworkAdapterList {
  /// Network adapter entries.
  core.List<NetworkAdapterDetails>? entries;

  NetworkAdapterList({
    this.entries,
  });

  NetworkAdapterList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => NetworkAdapterDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Details of network address.
class NetworkAddress {
  /// Whether DHCP is used to assign addresses.
  /// Possible string values are:
  /// - "ADDRESS_ASSIGNMENT_UNSPECIFIED" : Unknown (default value).
  /// - "ADDRESS_ASSIGNMENT_STATIC" : Staticly assigned IP.
  /// - "ADDRESS_ASSIGNMENT_DHCP" : Dynamically assigned IP (DHCP).
  core.String? assignment;

  /// Broadcast address.
  core.String? bcast;

  /// Fully qualified domain name.
  core.String? fqdn;

  /// Assigned or configured IP Address.
  core.String? ipAddress;

  /// Subnet mask.
  core.String? subnetMask;

  NetworkAddress({
    this.assignment,
    this.bcast,
    this.fqdn,
    this.ipAddress,
    this.subnetMask,
  });

  NetworkAddress.fromJson(core.Map json_)
      : this(
          assignment: json_.containsKey('assignment')
              ? json_['assignment'] as core.String
              : null,
          bcast:
              json_.containsKey('bcast') ? json_['bcast'] as core.String : null,
          fqdn: json_.containsKey('fqdn') ? json_['fqdn'] as core.String : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          subnetMask: json_.containsKey('subnetMask')
              ? json_['subnetMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignment != null) 'assignment': assignment!,
        if (bcast != null) 'bcast': bcast!,
        if (fqdn != null) 'fqdn': fqdn!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (subnetMask != null) 'subnetMask': subnetMask!,
      };
}

/// List of allocated/assigned network addresses.
class NetworkAddressList {
  /// Network address entries.
  core.List<NetworkAddress>? entries;

  NetworkAddressList({
    this.entries,
  });

  NetworkAddressList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => NetworkAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
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

  /// Network connection state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Connection state is unknown or unspecified.
  /// - "OPENING" : The connection is being opened.
  /// - "OPEN" : The connection is open.
  /// - "LISTEN" : Listening for incoming connections.
  /// - "CLOSING" : The connection is being closed.
  /// - "CLOSED" : The connection is closed.
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
          localIpAddress: json_.containsKey('localIpAddress')
              ? json_['localIpAddress'] as core.String
              : null,
          localPort: json_.containsKey('localPort')
              ? json_['localPort'] as core.int
              : null,
          pid: json_.containsKey('pid') ? json_['pid'] as core.String : null,
          processName: json_.containsKey('processName')
              ? json_['processName'] as core.String
              : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          remoteIpAddress: json_.containsKey('remoteIpAddress')
              ? json_['remoteIpAddress'] as core.String
              : null,
          remotePort: json_.containsKey('remotePort')
              ? json_['remotePort'] as core.int
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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

  NetworkConnectionList({
    this.entries,
  });

  NetworkConnectionList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => NetworkConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Network usage sample.
///
/// Values are across all network interfaces.
class NetworkUsageSample {
  /// Average network egress in B/s sampled over a short window.
  ///
  /// Must be non-negative.
  core.double? averageEgressBps;

  /// Average network ingress in B/s sampled over a short window.
  ///
  /// Must be non-negative.
  core.double? averageIngressBps;

  NetworkUsageSample({
    this.averageEgressBps,
    this.averageIngressBps,
  });

  NetworkUsageSample.fromJson(core.Map json_)
      : this(
          averageEgressBps: json_.containsKey('averageEgressBps')
              ? (json_['averageEgressBps'] as core.num).toDouble()
              : null,
          averageIngressBps: json_.containsKey('averageIngressBps')
              ? (json_['averageIngressBps'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageEgressBps != null) 'averageEgressBps': averageEgressBps!,
        if (averageIngressBps != null) 'averageIngressBps': averageIngressBps!,
      };
}

/// NFS export.
class NfsExport {
  /// The directory being exported.
  core.String? exportDirectory;

  /// The hosts or networks to which the export is being shared.
  core.List<core.String>? hosts;

  NfsExport({
    this.exportDirectory,
    this.hosts,
  });

  NfsExport.fromJson(core.Map json_)
      : this(
          exportDirectory: json_.containsKey('exportDirectory')
              ? json_['exportDirectory'] as core.String
              : null,
          hosts: json_.containsKey('hosts')
              ? (json_['hosts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportDirectory != null) 'exportDirectory': exportDirectory!,
        if (hosts != null) 'hosts': hosts!,
      };
}

/// NFS exports.
class NfsExportList {
  /// NFS export entries.
  core.List<NfsExport>? entries;

  NfsExportList({
    this.entries,
  });

  NfsExportList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => NfsExport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Open file Information.
class OpenFileDetails {
  /// Opened file command.
  core.String? command;

  /// Opened file file path.
  core.String? filePath;

  /// Opened file file type.
  core.String? fileType;

  /// Opened file user.
  core.String? user;

  OpenFileDetails({
    this.command,
    this.filePath,
    this.fileType,
    this.user,
  });

  OpenFileDetails.fromJson(core.Map json_)
      : this(
          command: json_.containsKey('command')
              ? json_['command'] as core.String
              : null,
          filePath: json_.containsKey('filePath')
              ? json_['filePath'] as core.String
              : null,
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
        if (filePath != null) 'filePath': filePath!,
        if (fileType != null) 'fileType': fileType!,
        if (user != null) 'user': user!,
      };
}

/// Open file list.
class OpenFileList {
  /// Open file details entries.
  core.List<OpenFileDetails>? entries;

  OpenFileList({
    this.entries,
  });

  OpenFileList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => OpenFileDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
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
          cpu: json_.containsKey('cpu')
              ? CpuUsageSample.fromJson(
                  json_['cpu'] as core.Map<core.String, core.dynamic>)
              : null,
          disk: json_.containsKey('disk')
              ? DiskUsageSample.fromJson(
                  json_['disk'] as core.Map<core.String, core.dynamic>)
              : null,
          memory: json_.containsKey('memory')
              ? MemoryUsageSample.fromJson(
                  json_['memory'] as core.Map<core.String, core.dynamic>)
              : null,
          network: json_.containsKey('network')
              ? NetworkUsageSample.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          sampleTime: json_.containsKey('sampleTime')
              ? json_['sampleTime'] as core.String
              : null,
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
class PhysicalPlatformDetails {
  /// Free text representation of the machine location.
  ///
  /// The format of this field should not be relied on. Different machines in
  /// the same location may have different string values for this field.
  core.String? location;

  PhysicalPlatformDetails({
    this.location,
  });

  PhysicalPlatformDetails.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

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
          awsEc2Details: json_.containsKey('awsEc2Details')
              ? AwsEc2PlatformDetails.fromJson(
                  json_['awsEc2Details'] as core.Map<core.String, core.dynamic>)
              : null,
          azureVmDetails: json_.containsKey('azureVmDetails')
              ? AzureVmPlatformDetails.fromJson(json_['azureVmDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          genericDetails: json_.containsKey('genericDetails')
              ? GenericPlatformDetails.fromJson(json_['genericDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          physicalDetails: json_.containsKey('physicalDetails')
              ? PhysicalPlatformDetails.fromJson(json_['physicalDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vmwareDetails: json_.containsKey('vmwareDetails')
              ? VmwarePlatformDetails.fromJson(
                  json_['vmwareDetails'] as core.Map<core.String, core.dynamic>)
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

/// The preferences that apply to all assets in a given context.
class PreferenceSet {
  /// The timestamp when the preference set was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the preference set.
  core.String? description;

  /// User-friendly display name.
  ///
  /// Maximum length is 63 characters.
  core.String? displayName;

  /// Name of the preference set.
  ///
  /// Output only.
  core.String? name;

  /// The timestamp when the preference set was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  VirtualMachinePreferences? virtualMachinePreferences;

  PreferenceSet({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
    this.virtualMachinePreferences,
  });

  PreferenceSet.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          virtualMachinePreferences:
              json_.containsKey('virtualMachinePreferences')
                  ? VirtualMachinePreferences.fromJson(
                      json_['virtualMachinePreferences']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (virtualMachinePreferences != null)
          'virtualMachinePreferences': virtualMachinePreferences!,
      };
}

/// The user preferences relating to target regions.
class RegionPreferences {
  /// A list of preferred regions, ordered by the most preferred region first.
  ///
  /// Set only valid Google Cloud region names. See
  /// https://cloud.google.com/compute/docs/regions-zones for available regions.
  core.List<core.String>? preferredRegions;

  RegionPreferences({
    this.preferredRegions,
  });

  RegionPreferences.fromJson(core.Map json_)
      : this(
          preferredRegions: json_.containsKey('preferredRegions')
              ? (json_['preferredRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (preferredRegions != null) 'preferredRegions': preferredRegions!,
      };
}

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
          allowMissing: json_.containsKey('allowMissing')
              ? json_['allowMissing'] as core.bool
              : null,
          assets: json_.containsKey('assets')
              ? AssetList.fromJson(
                  json_['assets'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
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
  /// - "TYPE_UNSPECIFIED" : Default Report type.
  /// - "TOTAL_COST_OF_OWNERSHIP" : Total cost of ownership Report type.
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          summary: json_.containsKey('summary')
              ? ReportSummary.fromJson(
                  json_['summary'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
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
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          groupPreferencesetAssignments:
              json_.containsKey('groupPreferencesetAssignments')
                  ? (json_['groupPreferencesetAssignments'] as core.List)
                      .map((value) =>
                          ReportConfigGroupPreferenceSetAssignment.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
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
class ReportConfigGroupPreferenceSetAssignment {
  /// Name of the group.
  ///
  /// Required.
  core.String? group;

  /// Name of the Preference Set.
  ///
  /// Required.
  core.String? preferenceSet;

  ReportConfigGroupPreferenceSetAssignment({
    this.group,
    this.preferenceSet,
  });

  ReportConfigGroupPreferenceSetAssignment.fromJson(core.Map json_)
      : this(
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          preferenceSet: json_.containsKey('preferenceSet')
              ? json_['preferenceSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (preferenceSet != null) 'preferenceSet': preferenceSet!,
      };
}

/// Describes the Summary view of a Report, which contains aggregated values for
/// all the groups and preference sets included in this Report.
class ReportSummary {
  /// Aggregate statistics for all the assets across all the groups.
  ReportSummaryAssetAggregateStats? allAssetsStats;

  /// Findings for each Group included in this report.
  core.List<ReportSummaryGroupFinding>? groupFindings;

  ReportSummary({
    this.allAssetsStats,
    this.groupFindings,
  });

  ReportSummary.fromJson(core.Map json_)
      : this(
          allAssetsStats: json_.containsKey('allAssetsStats')
              ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['allAssetsStats']
                      as core.Map<core.String, core.dynamic>)
              : null,
          groupFindings: json_.containsKey('groupFindings')
              ? (json_['groupFindings'] as core.List)
                  .map((value) => ReportSummaryGroupFinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allAssetsStats != null) 'allAssetsStats': allAssetsStats!,
        if (groupFindings != null) 'groupFindings': groupFindings!,
      };
}

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStats {
  /// Histogram showing a distribution of CPU core counts.
  ReportSummaryHistogramChartData? coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  ReportSummaryHistogramChartData? memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  ReportSummaryUtilizationChartData? memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  ReportSummaryChartData? operatingSystem;

  /// Histogram showing a distribution of storage sizes.
  ReportSummaryHistogramChartData? storageBytesHistogram;

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
    this.coreCountHistogram,
    this.memoryBytesHistogram,
    this.memoryUtilizationChart,
    this.operatingSystem,
    this.storageBytesHistogram,
    this.storageUtilizationChart,
    this.totalAssets,
    this.totalCores,
    this.totalMemoryBytes,
    this.totalStorageBytes,
  });

  ReportSummaryAssetAggregateStats.fromJson(core.Map json_)
      : this(
          coreCountHistogram: json_.containsKey('coreCountHistogram')
              ? ReportSummaryHistogramChartData.fromJson(
                  json_['coreCountHistogram']
                      as core.Map<core.String, core.dynamic>)
              : null,
          memoryBytesHistogram: json_.containsKey('memoryBytesHistogram')
              ? ReportSummaryHistogramChartData.fromJson(
                  json_['memoryBytesHistogram']
                      as core.Map<core.String, core.dynamic>)
              : null,
          memoryUtilizationChart: json_.containsKey('memoryUtilizationChart')
              ? ReportSummaryUtilizationChartData.fromJson(
                  json_['memoryUtilizationChart']
                      as core.Map<core.String, core.dynamic>)
              : null,
          operatingSystem: json_.containsKey('operatingSystem')
              ? ReportSummaryChartData.fromJson(json_['operatingSystem']
                  as core.Map<core.String, core.dynamic>)
              : null,
          storageBytesHistogram: json_.containsKey('storageBytesHistogram')
              ? ReportSummaryHistogramChartData.fromJson(
                  json_['storageBytesHistogram']
                      as core.Map<core.String, core.dynamic>)
              : null,
          storageUtilizationChart: json_.containsKey('storageUtilizationChart')
              ? ReportSummaryUtilizationChartData.fromJson(
                  json_['storageUtilizationChart']
                      as core.Map<core.String, core.dynamic>)
              : null,
          totalAssets: json_.containsKey('totalAssets')
              ? json_['totalAssets'] as core.String
              : null,
          totalCores: json_.containsKey('totalCores')
              ? json_['totalCores'] as core.String
              : null,
          totalMemoryBytes: json_.containsKey('totalMemoryBytes')
              ? json_['totalMemoryBytes'] as core.String
              : null,
          totalStorageBytes: json_.containsKey('totalStorageBytes')
              ? json_['totalStorageBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCountHistogram != null)
          'coreCountHistogram': coreCountHistogram!,
        if (memoryBytesHistogram != null)
          'memoryBytesHistogram': memoryBytesHistogram!,
        if (memoryUtilizationChart != null)
          'memoryUtilizationChart': memoryUtilizationChart!,
        if (operatingSystem != null) 'operatingSystem': operatingSystem!,
        if (storageBytesHistogram != null)
          'storageBytesHistogram': storageBytesHistogram!,
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

  ReportSummaryChartData({
    this.dataPoints,
  });

  ReportSummaryChartData.fromJson(core.Map json_)
      : this(
          dataPoints: json_.containsKey('dataPoints')
              ? (json_['dataPoints'] as core.List)
                  .map((value) => ReportSummaryChartDataDataPoint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataPoints != null) 'dataPoints': dataPoints!,
      };
}

/// Describes a single data point in the Chart.
class ReportSummaryChartDataDataPoint {
  /// The X-axis label for this data point.
  core.String? label;

  /// The Y-axis value for this data point.
  core.double? value;

  ReportSummaryChartDataDataPoint({
    this.label,
    this.value,
  });

  ReportSummaryChartDataDataPoint.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (value != null) 'value': value!,
      };
}

/// A set of findings that applies to assets destined for Compute Engine.
class ReportSummaryComputeEngineFinding {
  /// Count of assets which were allocated.
  core.String? allocatedAssetCount;

  /// Set of disk types allocated to assets.
  core.List<core.String>? allocatedDiskTypes;

  /// Set of regions in which the assets were allocated.
  core.List<core.String>? allocatedRegions;

  /// Distribution of assets based on the Machine Series.
  core.List<ReportSummaryMachineSeriesAllocation>? machineSeriesAllocations;

  ReportSummaryComputeEngineFinding({
    this.allocatedAssetCount,
    this.allocatedDiskTypes,
    this.allocatedRegions,
    this.machineSeriesAllocations,
  });

  ReportSummaryComputeEngineFinding.fromJson(core.Map json_)
      : this(
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          allocatedDiskTypes: json_.containsKey('allocatedDiskTypes')
              ? (json_['allocatedDiskTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allocatedRegions: json_.containsKey('allocatedRegions')
              ? (json_['allocatedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          machineSeriesAllocations: json_
                  .containsKey('machineSeriesAllocations')
              ? (json_['machineSeriesAllocations'] as core.List)
                  .map((value) => ReportSummaryMachineSeriesAllocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedAssetCount != null)
          'allocatedAssetCount': allocatedAssetCount!,
        if (allocatedDiskTypes != null)
          'allocatedDiskTypes': allocatedDiskTypes!,
        if (allocatedRegions != null) 'allocatedRegions': allocatedRegions!,
        if (machineSeriesAllocations != null)
          'machineSeriesAllocations': machineSeriesAllocations!,
      };
}

/// Summary Findings for a specific Group.
class ReportSummaryGroupFinding {
  /// Summary statistics for all the assets in this group.
  ReportSummaryAssetAggregateStats? assetAggregateStats;

  /// Description for the Group.
  core.String? description;

  /// Display Name for the Group.
  core.String? displayName;

  /// This field is deprecated, do not rely on it having a value.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? overlappingAssetCount;

  /// Findings for each of the PreferenceSets for this group.
  core.List<ReportSummaryGroupPreferenceSetFinding>? preferenceSetFindings;

  ReportSummaryGroupFinding({
    this.assetAggregateStats,
    this.description,
    this.displayName,
    this.overlappingAssetCount,
    this.preferenceSetFindings,
  });

  ReportSummaryGroupFinding.fromJson(core.Map json_)
      : this(
          assetAggregateStats: json_.containsKey('assetAggregateStats')
              ? ReportSummaryAssetAggregateStats.fromJson(
                  json_['assetAggregateStats']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          overlappingAssetCount: json_.containsKey('overlappingAssetCount')
              ? json_['overlappingAssetCount'] as core.String
              : null,
          preferenceSetFindings: json_.containsKey('preferenceSetFindings')
              ? (json_['preferenceSetFindings'] as core.List)
                  .map((value) =>
                      ReportSummaryGroupPreferenceSetFinding.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetAggregateStats != null)
          'assetAggregateStats': assetAggregateStats!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (overlappingAssetCount != null)
          'overlappingAssetCount': overlappingAssetCount!,
        if (preferenceSetFindings != null)
          'preferenceSetFindings': preferenceSetFindings!,
      };
}

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFinding {
  /// A set of findings that applies to Compute Engine machines in the input.
  ReportSummaryComputeEngineFinding? computeEngineFinding;

  /// Description for the Preference Set.
  core.String? description;

  /// Display Name of the Preference Set
  core.String? displayName;

  /// A set of preferences that applies to all machines in the context.
  VirtualMachinePreferences? machinePreferences;

  /// Compute monthly cost for this preference set.
  Money? monthlyCostCompute;

  /// Network Egress monthly cost for this preference set.
  Money? monthlyCostNetworkEgress;

  /// Licensing monthly cost for this preference set.
  Money? monthlyCostOsLicense;

  /// Miscellaneous monthly cost for this preference set.
  Money? monthlyCostOther;

  /// Storage monthly cost for this preference set.
  Money? monthlyCostStorage;

  /// Total monthly cost for this preference set.
  Money? monthlyCostTotal;

  /// A set of findings that applies to Sole-Tenant machines in the input.
  ReportSummarySoleTenantFinding? soleTenantFinding;

  /// A set of findings that applies to VMWare machines in the input.
  ReportSummaryVmwareEngineFinding? vmwareEngineFinding;

  ReportSummaryGroupPreferenceSetFinding({
    this.computeEngineFinding,
    this.description,
    this.displayName,
    this.machinePreferences,
    this.monthlyCostCompute,
    this.monthlyCostNetworkEgress,
    this.monthlyCostOsLicense,
    this.monthlyCostOther,
    this.monthlyCostStorage,
    this.monthlyCostTotal,
    this.soleTenantFinding,
    this.vmwareEngineFinding,
  });

  ReportSummaryGroupPreferenceSetFinding.fromJson(core.Map json_)
      : this(
          computeEngineFinding: json_.containsKey('computeEngineFinding')
              ? ReportSummaryComputeEngineFinding.fromJson(
                  json_['computeEngineFinding']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          machinePreferences: json_.containsKey('machinePreferences')
              ? VirtualMachinePreferences.fromJson(json_['machinePreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyCostCompute: json_.containsKey('monthlyCostCompute')
              ? Money.fromJson(json_['monthlyCostCompute']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyCostNetworkEgress:
              json_.containsKey('monthlyCostNetworkEgress')
                  ? Money.fromJson(json_['monthlyCostNetworkEgress']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          monthlyCostOsLicense: json_.containsKey('monthlyCostOsLicense')
              ? Money.fromJson(json_['monthlyCostOsLicense']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyCostOther: json_.containsKey('monthlyCostOther')
              ? Money.fromJson(json_['monthlyCostOther']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyCostStorage: json_.containsKey('monthlyCostStorage')
              ? Money.fromJson(json_['monthlyCostStorage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlyCostTotal: json_.containsKey('monthlyCostTotal')
              ? Money.fromJson(json_['monthlyCostTotal']
                  as core.Map<core.String, core.dynamic>)
              : null,
          soleTenantFinding: json_.containsKey('soleTenantFinding')
              ? ReportSummarySoleTenantFinding.fromJson(
                  json_['soleTenantFinding']
                      as core.Map<core.String, core.dynamic>)
              : null,
          vmwareEngineFinding: json_.containsKey('vmwareEngineFinding')
              ? ReportSummaryVmwareEngineFinding.fromJson(
                  json_['vmwareEngineFinding']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeEngineFinding != null)
          'computeEngineFinding': computeEngineFinding!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (machinePreferences != null)
          'machinePreferences': machinePreferences!,
        if (monthlyCostCompute != null)
          'monthlyCostCompute': monthlyCostCompute!,
        if (monthlyCostNetworkEgress != null)
          'monthlyCostNetworkEgress': monthlyCostNetworkEgress!,
        if (monthlyCostOsLicense != null)
          'monthlyCostOsLicense': monthlyCostOsLicense!,
        if (monthlyCostOther != null) 'monthlyCostOther': monthlyCostOther!,
        if (monthlyCostStorage != null)
          'monthlyCostStorage': monthlyCostStorage!,
        if (monthlyCostTotal != null) 'monthlyCostTotal': monthlyCostTotal!,
        if (soleTenantFinding != null) 'soleTenantFinding': soleTenantFinding!,
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

  ReportSummaryHistogramChartData({
    this.buckets,
  });

  ReportSummaryHistogramChartData.fromJson(core.Map json_)
      : this(
          buckets: json_.containsKey('buckets')
              ? (json_['buckets'] as core.List)
                  .map((value) =>
                      ReportSummaryHistogramChartDataBucket.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
class ReportSummaryHistogramChartDataBucket {
  /// Count of items in the bucket.
  core.String? count;

  /// Lower bound - inclusive.
  core.String? lowerBound;

  /// Upper bound - exclusive.
  core.String? upperBound;

  ReportSummaryHistogramChartDataBucket({
    this.count,
    this.lowerBound,
    this.upperBound,
  });

  ReportSummaryHistogramChartDataBucket.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          lowerBound: json_.containsKey('lowerBound')
              ? json_['lowerBound'] as core.String
              : null,
          upperBound: json_.containsKey('upperBound')
              ? json_['upperBound'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (lowerBound != null) 'lowerBound': lowerBound!,
        if (upperBound != null) 'upperBound': upperBound!,
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
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          machineSeries: json_.containsKey('machineSeries')
              ? MachineSeries.fromJson(
                  json_['machineSeries'] as core.Map<core.String, core.dynamic>)
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
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          allocatedRegions: json_.containsKey('allocatedRegions')
              ? (json_['allocatedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nodeAllocations: json_.containsKey('nodeAllocations')
              ? (json_['nodeAllocations'] as core.List)
                  .map((value) =>
                      ReportSummarySoleTenantNodeAllocation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          node: json_.containsKey('node')
              ? SoleTenantNodeType.fromJson(
                  json_['node'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.String
              : null,
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
class ReportSummaryUtilizationChartData {
  /// Aggregate value which falls into the "Free" bucket.
  core.String? free;

  /// Aggregate value which falls into the "Used" bucket.
  core.String? used;

  ReportSummaryUtilizationChartData({
    this.free,
    this.used,
  });

  ReportSummaryUtilizationChartData.fromJson(core.Map json_)
      : this(
          free: json_.containsKey('free') ? json_['free'] as core.String : null,
          used: json_.containsKey('used') ? json_['used'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (free != null) 'free': free!,
        if (used != null) 'used': used!,
      };
}

/// A set of findings that applies to assets destined for VMWare Engine.
class ReportSummaryVmwareEngineFinding {
  /// Count of assets which are allocated
  core.String? allocatedAssetCount;

  /// Set of regions in which the assets were allocated
  core.List<core.String>? allocatedRegions;

  /// Set of per-nodetype allocation records
  core.List<ReportSummaryVmwareNodeAllocation>? nodeAllocations;

  ReportSummaryVmwareEngineFinding({
    this.allocatedAssetCount,
    this.allocatedRegions,
    this.nodeAllocations,
  });

  ReportSummaryVmwareEngineFinding.fromJson(core.Map json_)
      : this(
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          allocatedRegions: json_.containsKey('allocatedRegions')
              ? (json_['allocatedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nodeAllocations: json_.containsKey('nodeAllocations')
              ? (json_['nodeAllocations'] as core.List)
                  .map((value) => ReportSummaryVmwareNodeAllocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedAssetCount != null)
          'allocatedAssetCount': allocatedAssetCount!,
        if (allocatedRegions != null) 'allocatedRegions': allocatedRegions!,
        if (nodeAllocations != null) 'nodeAllocations': nodeAllocations!,
      };
}

/// A VMWare Engine Node
class ReportSummaryVmwareNode {
  /// Code to identify VMware Engine node series, e.g. "ve1-standard-72".
  ///
  /// Based on the displayName of
  /// cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.nodeTypes
  core.String? code;

  ReportSummaryVmwareNode({
    this.code,
  });

  ReportSummaryVmwareNode.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
      };
}

/// Represents assets allocated to a specific VMWare Node type.
class ReportSummaryVmwareNodeAllocation {
  /// Count of assets allocated to these nodes
  core.String? allocatedAssetCount;

  /// Count of this node type to be provisioned
  core.String? nodeCount;

  /// VMWare node type, e.g. "ve1-standard-72"
  ReportSummaryVmwareNode? vmwareNode;

  ReportSummaryVmwareNodeAllocation({
    this.allocatedAssetCount,
    this.nodeCount,
    this.vmwareNode,
  });

  ReportSummaryVmwareNodeAllocation.fromJson(core.Map json_)
      : this(
          allocatedAssetCount: json_.containsKey('allocatedAssetCount')
              ? json_['allocatedAssetCount'] as core.String
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.String
              : null,
          vmwareNode: json_.containsKey('vmwareNode')
              ? ReportSummaryVmwareNode.fromJson(
                  json_['vmwareNode'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedAssetCount != null)
          'allocatedAssetCount': allocatedAssetCount!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (vmwareNode != null) 'vmwareNode': vmwareNode!,
      };
}

/// A request to run an import job.
typedef RunImportJobRequest = $Request01;

/// Guest OS running process details.
class RunningProcess {
  /// Process extended attributes.
  core.Map<core.String, core.String>? attributes;

  /// Process full command line.
  core.String? cmdline;

  /// Process binary path.
  core.String? exePath;

  /// Process ID.
  core.String? pid;

  /// User running the process.
  core.String? user;

  RunningProcess({
    this.attributes,
    this.cmdline,
    this.exePath,
    this.pid,
    this.user,
  });

  RunningProcess.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          cmdline: json_.containsKey('cmdline')
              ? json_['cmdline'] as core.String
              : null,
          exePath: json_.containsKey('exePath')
              ? json_['exePath'] as core.String
              : null,
          pid: json_.containsKey('pid') ? json_['pid'] as core.String : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (cmdline != null) 'cmdline': cmdline!,
        if (exePath != null) 'exePath': exePath!,
        if (pid != null) 'pid': pid!,
        if (user != null) 'user': user!,
      };
}

/// List of running guest OS processes.
class RunningProcessList {
  /// Running process entries.
  core.List<RunningProcess>? entries;

  RunningProcessList({
    this.entries,
  });

  RunningProcessList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => RunningProcess.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Guest OS running service details.
class RunningService {
  /// Service command line.
  core.String? cmdline;

  /// Service binary path.
  core.String? exePath;

  /// Service pid.
  core.String? pid;

  /// Service name.
  core.String? serviceName;

  /// Service start mode (OS-agnostic).
  /// Possible string values are:
  /// - "START_MODE_UNSPECIFIED" : Start mode unspecified.
  /// - "BOOT" : The service is a device driver started by the system loader.
  /// - "SYSTEM" : The service is a device driver started by the IOInitSystem
  /// function.
  /// - "AUTO" : The service is started by the operating system, at system
  /// start-up
  /// - "MANUAL" : The service is started only manually, by a user.
  /// - "DISABLED" : The service is disabled.
  core.String? startMode;

  /// Service state (OS-agnostic).
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Service state unspecified.
  /// - "ACTIVE" : Service is active.
  /// - "PAUSED" : Service is paused.
  /// - "STOPPED" : Service is stopped.
  core.String? state;

  RunningService({
    this.cmdline,
    this.exePath,
    this.pid,
    this.serviceName,
    this.startMode,
    this.state,
  });

  RunningService.fromJson(core.Map json_)
      : this(
          cmdline: json_.containsKey('cmdline')
              ? json_['cmdline'] as core.String
              : null,
          exePath: json_.containsKey('exePath')
              ? json_['exePath'] as core.String
              : null,
          pid: json_.containsKey('pid') ? json_['pid'] as core.String : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
          startMode: json_.containsKey('startMode')
              ? json_['startMode'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cmdline != null) 'cmdline': cmdline!,
        if (exePath != null) 'exePath': exePath!,
        if (pid != null) 'pid': pid!,
        if (serviceName != null) 'serviceName': serviceName!,
        if (startMode != null) 'startMode': startMode!,
        if (state != null) 'state': state!,
      };
}

/// List of running guest OS services.
class RunningServiceList {
  /// Running service entries.
  core.List<RunningService>? entries;

  RunningServiceList({
    this.entries,
  });

  RunningServiceList.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => RunningService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Runtime networking information.
class RuntimeNetworkInfo {
  /// Network connections.
  NetworkConnectionList? connections;

  /// Time of the last network scan.
  core.String? scanTime;

  RuntimeNetworkInfo({
    this.connections,
    this.scanTime,
  });

  RuntimeNetworkInfo.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? NetworkConnectionList.fromJson(
                  json_['connections'] as core.Map<core.String, core.dynamic>)
              : null,
          scanTime: json_.containsKey('scanTime')
              ? json_['scanTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (scanTime != null) 'scanTime': scanTime!,
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

  SendDiscoveryClientHeartbeatRequest({
    this.errors,
    this.version,
  });

  SendDiscoveryClientHeartbeatRequest.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (version != null) 'version': version!,
      };
}

/// Describes the Migration Center settings related to the project.
class Settings {
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
    this.disableCloudLogging,
    this.name,
    this.preferenceSet,
  });

  Settings.fromJson(core.Map json_)
      : this(
          disableCloudLogging: json_.containsKey('disableCloudLogging')
              ? json_['disableCloudLogging'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          preferenceSet: json_.containsKey('preferenceSet')
              ? json_['preferenceSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableCloudLogging != null)
          'disableCloudLogging': disableCloudLogging!,
        if (name != null) 'name': name!,
        if (preferenceSet != null) 'preferenceSet': preferenceSet!,
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
  /// - "COMMITMENT_1_YEAR" : 1 year commitment.
  /// - "COMMITMENT_3_YEAR" : 3 years commitment.
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

  SoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  SoleTenancyPreferences.fromJson(core.Map json_)
      : this(
          commitmentPlan: json_.containsKey('commitmentPlan')
              ? json_['commitmentPlan'] as core.String
              : null,
          cpuOvercommitRatio: json_.containsKey('cpuOvercommitRatio')
              ? (json_['cpuOvercommitRatio'] as core.num).toDouble()
              : null,
          hostMaintenancePolicy: json_.containsKey('hostMaintenancePolicy')
              ? json_['hostMaintenancePolicy'] as core.String
              : null,
          nodeTypes: json_.containsKey('nodeTypes')
              ? (json_['nodeTypes'] as core.List)
                  .map((value) => SoleTenantNodeType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
        if (cpuOvercommitRatio != null)
          'cpuOvercommitRatio': cpuOvercommitRatio!,
        if (hostMaintenancePolicy != null)
          'hostMaintenancePolicy': hostMaintenancePolicy!,
        if (nodeTypes != null) 'nodeTypes': nodeTypes!,
      };
}

/// A Sole Tenant node type.
class SoleTenantNodeType {
  /// Name of the Sole Tenant node.
  ///
  /// Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes
  core.String? nodeName;

  SoleTenantNodeType({
    this.nodeName,
  });

  SoleTenantNodeType.fromJson(core.Map json_)
      : this(
          nodeName: json_.containsKey('nodeName')
              ? json_['nodeName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeName != null) 'nodeName': nodeName!,
      };
}

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
  core.bool? managed;

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
    this.managed,
    this.name,
    this.pendingFrameCount,
    this.priority,
    this.state,
    this.type,
    this.updateTime,
  });

  Source.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          errorFrameCount: json_.containsKey('errorFrameCount')
              ? json_['errorFrameCount'] as core.int
              : null,
          managed: json_.containsKey('managed')
              ? json_['managed'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingFrameCount: json_.containsKey('pendingFrameCount')
              ? json_['pendingFrameCount'] as core.int
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (errorFrameCount != null) 'errorFrameCount': errorFrameCount!,
        if (managed != null) 'managed': managed!,
        if (name != null) 'name': name!,
        if (pendingFrameCount != null) 'pendingFrameCount': pendingFrameCount!,
        if (priority != null) 'priority': priority!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

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

  UpdateAssetRequest({
    this.asset,
    this.requestId,
    this.updateMask,
  });

  UpdateAssetRequest.fromJson(core.Map json_)
      : this(
          asset: json_.containsKey('asset')
              ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (requestId != null) 'requestId': requestId!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfo {
  /// The headers that were used to sign the URI.
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

  UploadFileInfo({
    this.headers,
    this.signedUri,
    this.uriExpirationTime,
  });

  UploadFileInfo.fromJson(core.Map json_)
      : this(
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          signedUri: json_.containsKey('signedUri')
              ? json_['signedUri'] as core.String
              : null,
          uriExpirationTime: json_.containsKey('uriExpirationTime')
              ? json_['uriExpirationTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headers != null) 'headers': headers!,
        if (signedUri != null) 'signedUri': signedUri!,
        if (uriExpirationTime != null) 'uriExpirationTime': uriExpirationTime!,
      };
}

/// A request to validate an import job.
typedef ValidateImportJobRequest = $Request01;

/// A resource that aggregates errors across import job files.
class ValidationReport {
  /// List of errors found in files.
  core.List<FileValidationReport>? fileValidations;

  /// List of job level errors.
  core.List<ImportError>? jobErrors;

  ValidationReport({
    this.fileValidations,
    this.jobErrors,
  });

  ValidationReport.fromJson(core.Map json_)
      : this(
          fileValidations: json_.containsKey('fileValidations')
              ? (json_['fileValidations'] as core.List)
                  .map((value) => FileValidationReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          jobErrors: json_.containsKey('jobErrors')
              ? (json_['jobErrors'] as core.List)
                  .map((value) => ImportError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileValidations != null) 'fileValidations': fileValidations!,
        if (jobErrors != null) 'jobErrors': jobErrors!,
      };
}

/// VirtualMachinePreferences enables you to create sets of assumptions, for
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
  /// - "COMMITMENT_PLAN_ONE_YEAR" : 1 year commitment.
  /// - "COMMITMENT_PLAN_THREE_YEARS" : 3 years commitment.
  core.String? commitmentPlan;

  /// Compute Engine preferences concern insights and recommendations for
  /// Compute Engine target.
  ComputeEnginePreferences? computeEnginePreferences;

  /// Region preferences for assets using this preference set.
  ///
  /// If you are unsure which value to set, the migration service API region is
  /// often a good value to start with.
  RegionPreferences? regionPreferences;

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
    this.regionPreferences,
    this.sizingOptimizationStrategy,
    this.soleTenancyPreferences,
    this.targetProduct,
    this.vmwareEnginePreferences,
  });

  VirtualMachinePreferences.fromJson(core.Map json_)
      : this(
          commitmentPlan: json_.containsKey('commitmentPlan')
              ? json_['commitmentPlan'] as core.String
              : null,
          computeEnginePreferences:
              json_.containsKey('computeEnginePreferences')
                  ? ComputeEnginePreferences.fromJson(
                      json_['computeEnginePreferences']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          regionPreferences: json_.containsKey('regionPreferences')
              ? RegionPreferences.fromJson(json_['regionPreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sizingOptimizationStrategy:
              json_.containsKey('sizingOptimizationStrategy')
                  ? json_['sizingOptimizationStrategy'] as core.String
                  : null,
          soleTenancyPreferences: json_.containsKey('soleTenancyPreferences')
              ? SoleTenancyPreferences.fromJson(json_['soleTenancyPreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetProduct: json_.containsKey('targetProduct')
              ? json_['targetProduct'] as core.String
              : null,
          vmwareEnginePreferences: json_.containsKey('vmwareEnginePreferences')
              ? VmwareEnginePreferences.fromJson(
                  json_['vmwareEnginePreferences']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
        if (computeEnginePreferences != null)
          'computeEnginePreferences': computeEnginePreferences!,
        if (regionPreferences != null) 'regionPreferences': regionPreferences!,
        if (sizingOptimizationStrategy != null)
          'sizingOptimizationStrategy': sizingOptimizationStrategy!,
        if (soleTenancyPreferences != null)
          'soleTenancyPreferences': soleTenancyPreferences!,
        if (targetProduct != null) 'targetProduct': targetProduct!,
        if (vmwareEnginePreferences != null)
          'vmwareEnginePreferences': vmwareEnginePreferences!,
      };
}

/// VMware disk config details.
class VmwareDiskConfig {
  /// VMDK backing type.
  /// Possible string values are:
  /// - "BACKING_TYPE_UNSPECIFIED" : Default value.
  /// - "BACKING_TYPE_FLAT_V1" : Flat v1.
  /// - "BACKING_TYPE_FLAT_V2" : Flat v2.
  /// - "BACKING_TYPE_PMEM" : Persistent memory, also known as Non-Volatile
  /// Memory (NVM).
  /// - "BACKING_TYPE_RDM_V1" : Raw Disk Memory v1.
  /// - "BACKING_TYPE_RDM_V2" : Raw Disk Memory v2.
  /// - "BACKING_TYPE_SESPARSE" : SEsparse is a snapshot format introduced in
  /// vSphere 5.5 for large disks.
  /// - "BACKING_TYPE_SESPARSE_V1" : SEsparse v1.
  /// - "BACKING_TYPE_SESPARSE_V2" : SEsparse v1.
  core.String? backingType;

  /// RDM compatibility mode.
  /// Possible string values are:
  /// - "RDM_COMPATIBILITY_UNSPECIFIED" : Compatibility mode unspecified or
  /// unknown.
  /// - "PHYSICAL_COMPATIBILITY" : Physical compatibility mode.
  /// - "VIRTUAL_COMPATIBILITY" : Virtual compatibility mode.
  core.String? rdmCompatibility;

  /// Is VMDK shared with other VMs.
  core.bool? shared;

  /// VMDK disk mode.
  /// Possible string values are:
  /// - "VMDK_MODE_UNSPECIFIED" : VMDK disk mode unspecified or unknown.
  /// - "DEPENDENT" : Dependent disk mode.
  /// - "INDEPENDENT_PERSISTENT" : Independent - Persistent disk mode.
  /// - "INDEPENDENT_NONPERSISTENT" : Independent - Nonpersistent disk mode.
  core.String? vmdkMode;

  VmwareDiskConfig({
    this.backingType,
    this.rdmCompatibility,
    this.shared,
    this.vmdkMode,
  });

  VmwareDiskConfig.fromJson(core.Map json_)
      : this(
          backingType: json_.containsKey('backingType')
              ? json_['backingType'] as core.String
              : null,
          rdmCompatibility: json_.containsKey('rdmCompatibility')
              ? json_['rdmCompatibility'] as core.String
              : null,
          shared:
              json_.containsKey('shared') ? json_['shared'] as core.bool : null,
          vmdkMode: json_.containsKey('vmdkMode')
              ? json_['vmdkMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backingType != null) 'backingType': backingType!,
        if (rdmCompatibility != null) 'rdmCompatibility': rdmCompatibility!,
        if (shared != null) 'shared': shared!,
        if (vmdkMode != null) 'vmdkMode': vmdkMode!,
      };
}

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
  core.String? commitmentPlan;

  /// CPU overcommit ratio.
  ///
  /// Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  core.double? cpuOvercommitRatio;

  /// Memory overcommit ratio.
  ///
  /// Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  core.double? memoryOvercommitRatio;

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
    this.memoryOvercommitRatio,
    this.storageDeduplicationCompressionRatio,
  });

  VmwareEnginePreferences.fromJson(core.Map json_)
      : this(
          commitmentPlan: json_.containsKey('commitmentPlan')
              ? json_['commitmentPlan'] as core.String
              : null,
          cpuOvercommitRatio: json_.containsKey('cpuOvercommitRatio')
              ? (json_['cpuOvercommitRatio'] as core.num).toDouble()
              : null,
          memoryOvercommitRatio: json_.containsKey('memoryOvercommitRatio')
              ? (json_['memoryOvercommitRatio'] as core.num).toDouble()
              : null,
          storageDeduplicationCompressionRatio:
              json_.containsKey('storageDeduplicationCompressionRatio')
                  ? (json_['storageDeduplicationCompressionRatio'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitmentPlan != null) 'commitmentPlan': commitmentPlan!,
        if (cpuOvercommitRatio != null)
          'cpuOvercommitRatio': cpuOvercommitRatio!,
        if (memoryOvercommitRatio != null)
          'memoryOvercommitRatio': memoryOvercommitRatio!,
        if (storageDeduplicationCompressionRatio != null)
          'storageDeduplicationCompressionRatio':
              storageDeduplicationCompressionRatio!,
      };
}

/// VMware specific details.
class VmwarePlatformDetails {
  /// ESX version.
  core.String? esxVersion;

  /// VMware os enum -
  /// https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html.
  core.String? osid;

  /// Folder name in vCenter where asset resides.
  core.String? vcenterFolder;

  /// vCenter URI used in collection.
  core.String? vcenterUri;

  /// vCenter version.
  core.String? vcenterVersion;

  /// vCenter VM ID.
  core.String? vcenterVmId;

  VmwarePlatformDetails({
    this.esxVersion,
    this.osid,
    this.vcenterFolder,
    this.vcenterUri,
    this.vcenterVersion,
    this.vcenterVmId,
  });

  VmwarePlatformDetails.fromJson(core.Map json_)
      : this(
          esxVersion: json_.containsKey('esxVersion')
              ? json_['esxVersion'] as core.String
              : null,
          osid: json_.containsKey('osid') ? json_['osid'] as core.String : null,
          vcenterFolder: json_.containsKey('vcenterFolder')
              ? json_['vcenterFolder'] as core.String
              : null,
          vcenterUri: json_.containsKey('vcenterUri')
              ? json_['vcenterUri'] as core.String
              : null,
          vcenterVersion: json_.containsKey('vcenterVersion')
              ? json_['vcenterVersion'] as core.String
              : null,
          vcenterVmId: json_.containsKey('vcenterVmId')
              ? json_['vcenterVmId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (esxVersion != null) 'esxVersion': esxVersion!,
        if (osid != null) 'osid': osid!,
        if (vcenterFolder != null) 'vcenterFolder': vcenterFolder!,
        if (vcenterUri != null) 'vcenterUri': vcenterUri!,
        if (vcenterVersion != null) 'vcenterVersion': vcenterVersion!,
        if (vcenterVmId != null) 'vcenterVmId': vcenterVmId!,
      };
}
