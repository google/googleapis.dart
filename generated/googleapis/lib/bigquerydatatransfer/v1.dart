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

/// BigQuery Data Transfer API - v1
///
/// Schedule queries or transfer external data from SaaS applications to Google
/// BigQuery on a regular basis.
///
/// For more information, see <https://cloud.google.com/bigquery-transfer/>
///
/// Create an instance of [BigQueryDataTransferApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsDataSourcesResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDataSourcesResource]
///     - [ProjectsLocationsTransferConfigsResource]
///       - [ProjectsLocationsTransferConfigsRunsResource]
///         - [ProjectsLocationsTransferConfigsRunsTransferLogsResource]
///   - [ProjectsTransferConfigsResource]
///     - [ProjectsTransferConfigsRunsResource]
///       - [ProjectsTransferConfigsRunsTransferLogsResource]
library bigquerydatatransfer.v1;

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

/// Schedule queries or transfer external data from SaaS applications to Google
/// BigQuery on a regular basis.
class BigQueryDataTransferApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BigQueryDataTransferApi(http.Client client,
      {core.String rootUrl = 'https://bigquerydatatransfer.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDataSourcesResource get dataSources =>
      ProjectsDataSourcesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsTransferConfigsResource get transferConfigs =>
      ProjectsTransferConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Enroll data sources in a user project.
  ///
  /// This allows users to create transfer configurations for these data
  /// sources. They will also appear in the ListDataSources RPC and as such,
  /// will appear in the
  /// [BigQuery UI](https://console.cloud.google.com/bigquery), and the
  /// documents can be found in the public guide for
  /// [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and
  /// [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the project resource in the form:
  /// `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Empty> enrollDataSources(
    EnrollDataSourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':enrollDataSources';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDataSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsDataSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns true if valid credentials exist for the given data source and
  /// requesting user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The data source in the form:
  /// `projects/{project_id}/dataSources/{data_source_id}` or
  /// `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`.
  /// Value must have pattern `^projects/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckValidCredsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckValidCredsResponse> checkValidCreds(
    CheckValidCredsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':checkValidCreds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckValidCredsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a supported data source and returns its settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/dataSources/{data_source_id}` or
  /// `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`
  /// Value must have pattern `^projects/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DataSource.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists supported data sources and returns their settings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id for which data sources should
  /// be returned. Must be in the form: `projects/{project_id}` or
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListDataSourcesRequest` list results. For multiple-page results,
  /// `ListDataSourcesResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dataSources';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDataSourcesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataSourcesResource get dataSources =>
      ProjectsLocationsDataSourcesResource(_requester);
  ProjectsLocationsTransferConfigsResource get transferConfigs =>
      ProjectsLocationsTransferConfigsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Enroll data sources in a user project.
  ///
  /// This allows users to create transfer configurations for these data
  /// sources. They will also appear in the ListDataSources RPC and as such,
  /// will appear in the
  /// [BigQuery UI](https://console.cloud.google.com/bigquery), and the
  /// documents can be found in the public guide for
  /// [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and
  /// [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the project resource in the form:
  /// `projects/{project_id}`
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
  async.Future<Empty> enrollDataSources(
    EnrollDataSourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':enrollDataSources';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDataSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns true if valid credentials exist for the given data source and
  /// requesting user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The data source in the form:
  /// `projects/{project_id}/dataSources/{data_source_id}` or
  /// `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckValidCredsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckValidCredsResponse> checkValidCreds(
    CheckValidCredsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':checkValidCreds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckValidCredsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a supported data source and returns its settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/dataSources/{data_source_id}` or
  /// `projects/{project_id}/locations/{location_id}/dataSources/{data_source_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DataSource.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists supported data sources and returns their settings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id for which data sources should
  /// be returned. Must be in the form: `projects/{project_id}` or
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListDataSourcesRequest` list results. For multiple-page results,
  /// `ListDataSourcesResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dataSources';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDataSourcesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTransferConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsResource get runs =>
      ProjectsLocationsTransferConfigsRunsResource(_requester);

  ProjectsLocationsTransferConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new data transfer configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id where the transfer
  /// configuration should be created. Must be in the format
  /// projects/{project_id}/locations/{location_id} or projects/{project_id}. If
  /// specified location and location of the destination bigquery dataset do not
  /// match - the request will fail.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [authorizationCode] - Optional OAuth2 authorization code to use with this
  /// transfer configuration. This is required only if
  /// `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are
  /// needed, as indicated by `CheckValidCreds`. In order to obtain
  /// authorization_code, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code *
  /// The client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to create the transfer config.
  ///
  /// [serviceAccountName] - Optional service account name. If this field is
  /// set, the transfer config will be created with this service account's
  /// credentials. It requires that the requesting user calling this API has
  /// permissions to act as this service account. Note that not all data sources
  /// support service account credentials when creating a transfer config. For
  /// the latest list of data sources, read about
  /// [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  ///
  /// [versionInfo] - Optional version info. This is required only if
  /// `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials
  /// are needed, as indicated by `CheckValidCreds`. In order to obtain version
  /// info, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info * The
  /// client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to create the transfer config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> create(
    TransferConfig request,
    core.String parent, {
    core.String? authorizationCode,
    core.String? serviceAccountName,
    core.String? versionInfo,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (authorizationCode != null) 'authorizationCode': [authorizationCode],
      if (serviceAccountName != null)
        'serviceAccountName': [serviceAccountName],
      if (versionInfo != null) 'versionInfo': [versionInfo],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a data transfer configuration, including any associated transfer
  /// runs and logs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a data transfer config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about all transfer configs owned by a project in the
  /// specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id for which transfer configs
  /// should be returned: `projects/{project_id}` or
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dataSourceIds] - When specified, only configurations of requested data
  /// sources are returned.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransfersRequest` list results. For multiple-page results,
  /// `ListTransfersResponse` outputs a `next_page` token, which can be used as
  /// the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferConfigsResponse> list(
    core.String parent, {
    core.List<core.String>? dataSourceIds,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (dataSourceIds != null) 'dataSourceIds': dataSourceIds,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a data transfer configuration.
  ///
  /// All fields must be set, even if they are not updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the transfer config. Transfer config names
  /// have the form
  /// `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`.
  /// Where `config_id` is usually a uuid, even though it is not guaranteed or
  /// required. The name is ignored when creating a transfer config.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [authorizationCode] - Optional OAuth2 authorization code to use with this
  /// transfer configuration. This is required only if
  /// `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are
  /// needed, as indicated by `CheckValidCreds`. In order to obtain
  /// authorization_code, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code *
  /// The client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to update the transfer config.
  ///
  /// [serviceAccountName] - Optional service account name. If this field is
  /// set, the transfer config will be created with this service account's
  /// credentials. It requires that the requesting user calling this API has
  /// permissions to act as this service account. Note that not all data sources
  /// support service account credentials when creating a transfer config. For
  /// the latest list of data sources, read about
  /// [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  ///
  /// [updateMask] - Required. Required list of fields to be updated in this
  /// request.
  ///
  /// [versionInfo] - Optional version info. This is required only if
  /// `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials
  /// are needed, as indicated by `CheckValidCreds`. In order to obtain version
  /// info, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info * The
  /// client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to update the transfer config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> patch(
    TransferConfig request,
    core.String name, {
    core.String? authorizationCode,
    core.String? serviceAccountName,
    core.String? updateMask,
    core.String? versionInfo,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (authorizationCode != null) 'authorizationCode': [authorizationCode],
      if (serviceAccountName != null)
        'serviceAccountName': [serviceAccountName],
      if (updateMask != null) 'updateMask': [updateMask],
      if (versionInfo != null) 'versionInfo': [versionInfo],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates transfer runs for a time range \[start_time, end_time\].
  ///
  /// For each date - or whatever granularity the data source supports - in the
  /// range, one transfer run is created. Note that runs are created per UTC
  /// time in the time range. DEPRECATED: use StartManualTransferRuns instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Transfer configuration name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScheduleTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScheduleTransferRunsResponse> scheduleRuns(
    ScheduleTransferRunsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':scheduleRuns';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ScheduleTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Start manual transfer runs to be executed now with schedule_time equal to
  /// current time.
  ///
  /// The transfer runs can be created for a time range where the run_time is
  /// between start_time (inclusive) and end_time (exclusive), or for a specific
  /// run_time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Transfer configuration name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StartManualTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StartManualTransferRunsResponse> startManualRuns(
    StartManualTransferRunsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':startManualRuns';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return StartManualTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTransferConfigsRunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsTransferLogsResource get transferLogs =>
      ProjectsLocationsTransferConfigsRunsTransferLogsResource(_requester);

  ProjectsLocationsTransferConfigsRunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the specified transfer run.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about the particular transfer run.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferRun> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TransferRun.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about running and completed transfer runs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of transfer configuration for which transfer
  /// runs should be retrieved. Format of transfer configuration resource name
  /// is: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransferRunsRequest` list results. For multiple-page results,
  /// `ListTransferRunsResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [runAttempt] - Indicates how run attempts are to be pulled.
  /// Possible string values are:
  /// - "RUN_ATTEMPT_UNSPECIFIED" : All runs should be returned.
  /// - "LATEST" : Only latest run per day should be returned.
  ///
  /// [states] - When specified, only transfer runs with requested states are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferRunsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? runAttempt,
    core.List<core.String>? states,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (runAttempt != null) 'runAttempt': [runAttempt],
      if (states != null) 'states': states,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/runs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTransferConfigsRunsTransferLogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransferConfigsRunsTransferLogsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Returns log messages for the transfer run.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Transfer run name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [messageTypes] - Message types to return. If not populated - INFO, WARNING
  /// and ERROR messages are returned.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransferLogsRequest` list results. For multiple-page results,
  /// `ListTransferLogsResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferLogsResponse> list(
    core.String parent, {
    core.List<core.String>? messageTypes,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (messageTypes != null) 'messageTypes': messageTypes,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferLogs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferLogsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTransferConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsResource get runs =>
      ProjectsTransferConfigsRunsResource(_requester);

  ProjectsTransferConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new data transfer configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id where the transfer
  /// configuration should be created. Must be in the format
  /// projects/{project_id}/locations/{location_id} or projects/{project_id}. If
  /// specified location and location of the destination bigquery dataset do not
  /// match - the request will fail.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [authorizationCode] - Optional OAuth2 authorization code to use with this
  /// transfer configuration. This is required only if
  /// `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are
  /// needed, as indicated by `CheckValidCreds`. In order to obtain
  /// authorization_code, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code *
  /// The client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to create the transfer config.
  ///
  /// [serviceAccountName] - Optional service account name. If this field is
  /// set, the transfer config will be created with this service account's
  /// credentials. It requires that the requesting user calling this API has
  /// permissions to act as this service account. Note that not all data sources
  /// support service account credentials when creating a transfer config. For
  /// the latest list of data sources, read about
  /// [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  ///
  /// [versionInfo] - Optional version info. This is required only if
  /// `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials
  /// are needed, as indicated by `CheckValidCreds`. In order to obtain version
  /// info, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info * The
  /// client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to create the transfer config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> create(
    TransferConfig request,
    core.String parent, {
    core.String? authorizationCode,
    core.String? serviceAccountName,
    core.String? versionInfo,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (authorizationCode != null) 'authorizationCode': [authorizationCode],
      if (serviceAccountName != null)
        'serviceAccountName': [serviceAccountName],
      if (versionInfo != null) 'versionInfo': [versionInfo],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferConfigs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a data transfer configuration, including any associated transfer
  /// runs and logs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about a data transfer config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about all transfer configs owned by a project in the
  /// specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BigQuery project id for which transfer configs
  /// should be returned: `projects/{project_id}` or
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [dataSourceIds] - When specified, only configurations of requested data
  /// sources are returned.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransfersRequest` list results. For multiple-page results,
  /// `ListTransfersResponse` outputs a `next_page` token, which can be used as
  /// the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferConfigsResponse> list(
    core.String parent, {
    core.List<core.String>? dataSourceIds,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (dataSourceIds != null) 'dataSourceIds': dataSourceIds,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a data transfer configuration.
  ///
  /// All fields must be set, even if they are not updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the transfer config. Transfer config names
  /// have the form
  /// `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`.
  /// Where `config_id` is usually a uuid, even though it is not guaranteed or
  /// required. The name is ignored when creating a transfer config.
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [authorizationCode] - Optional OAuth2 authorization code to use with this
  /// transfer configuration. This is required only if
  /// `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are
  /// needed, as indicated by `CheckValidCreds`. In order to obtain
  /// authorization_code, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code *
  /// The client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to update the transfer config.
  ///
  /// [serviceAccountName] - Optional service account name. If this field is
  /// set, the transfer config will be created with this service account's
  /// credentials. It requires that the requesting user calling this API has
  /// permissions to act as this service account. Note that not all data sources
  /// support service account credentials when creating a transfer config. For
  /// the latest list of data sources, read about
  /// [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  ///
  /// [updateMask] - Required. Required list of fields to be updated in this
  /// request.
  ///
  /// [versionInfo] - Optional version info. This is required only if
  /// `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials
  /// are needed, as indicated by `CheckValidCreds`. In order to obtain version
  /// info, make a request to the following URL:
  /// https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?
  /// client_id=client_id&scope=data_source_scopes
  /// &redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info * The
  /// client_id is the OAuth client_id of the a data source as returned by
  /// ListDataSources method. * data_source_scopes are the scopes returned by
  /// ListDataSources method. Note that this should not be set when
  /// `service_account_name` is used to update the transfer config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferConfig> patch(
    TransferConfig request,
    core.String name, {
    core.String? authorizationCode,
    core.String? serviceAccountName,
    core.String? updateMask,
    core.String? versionInfo,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (authorizationCode != null) 'authorizationCode': [authorizationCode],
      if (serviceAccountName != null)
        'serviceAccountName': [serviceAccountName],
      if (updateMask != null) 'updateMask': [updateMask],
      if (versionInfo != null) 'versionInfo': [versionInfo],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates transfer runs for a time range \[start_time, end_time\].
  ///
  /// For each date - or whatever granularity the data source supports - in the
  /// range, one transfer run is created. Note that runs are created per UTC
  /// time in the time range. DEPRECATED: use StartManualTransferRuns instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Transfer configuration name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScheduleTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScheduleTransferRunsResponse> scheduleRuns(
    ScheduleTransferRunsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':scheduleRuns';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ScheduleTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Start manual transfer runs to be executed now with schedule_time equal to
  /// current time.
  ///
  /// The transfer runs can be created for a time range where the run_time is
  /// between start_time (inclusive) and end_time (exclusive), or for a specific
  /// run_time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Transfer configuration name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StartManualTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StartManualTransferRunsResponse> startManualRuns(
    StartManualTransferRunsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':startManualRuns';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return StartManualTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTransferConfigsRunsResource {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsTransferLogsResource get transferLogs =>
      ProjectsTransferConfigsRunsTransferLogsResource(_requester);

  ProjectsTransferConfigsRunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the specified transfer run.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about the particular transfer run.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The field will contain name of the resource requested,
  /// for example:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferRun> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TransferRun.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns information about running and completed transfer runs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of transfer configuration for which transfer
  /// runs should be retrieved. Format of transfer configuration resource name
  /// is: `projects/{project_id}/transferConfigs/{config_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}`.
  /// Value must have pattern `^projects/\[^/\]+/transferConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransferRunsRequest` list results. For multiple-page results,
  /// `ListTransferRunsResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [runAttempt] - Indicates how run attempts are to be pulled.
  /// Possible string values are:
  /// - "RUN_ATTEMPT_UNSPECIFIED" : All runs should be returned.
  /// - "LATEST" : Only latest run per day should be returned.
  ///
  /// [states] - When specified, only transfer runs with requested states are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferRunsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? runAttempt,
    core.List<core.String>? states,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (runAttempt != null) 'runAttempt': [runAttempt],
      if (states != null) 'states': states,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/runs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferRunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTransferConfigsRunsTransferLogsResource {
  final commons.ApiRequester _requester;

  ProjectsTransferConfigsRunsTransferLogsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns log messages for the transfer run.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Transfer run name in the form:
  /// `projects/{project_id}/transferConfigs/{config_id}/runs/{run_id}` or
  /// `projects/{project_id}/locations/{location_id}/transferConfigs/{config_id}/runs/{run_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/transferConfigs/\[^/\]+/runs/\[^/\]+$`.
  ///
  /// [messageTypes] - Message types to return. If not populated - INFO, WARNING
  /// and ERROR messages are returned.
  ///
  /// [pageSize] - Page size. The default page size is the maximum value of 1000
  /// results.
  ///
  /// [pageToken] - Pagination token, which can be used to request a specific
  /// page of `ListTransferLogsRequest` list results. For multiple-page results,
  /// `ListTransferLogsResponse` outputs a `next_page` token, which can be used
  /// as the `page_token` value to request the next page of list results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferLogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferLogsResponse> list(
    core.String parent, {
    core.List<core.String>? messageTypes,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (messageTypes != null) 'messageTypes': messageTypes,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/transferLogs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferLogsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A request to determine whether the user has valid credentials.
///
/// This method is used to limit the number of OAuth popups in the user
/// interface. The user id is inferred from the API call context. If the data
/// source has the Google+ authorization type, this method returns false, as it
/// cannot be determined whether the credentials are already valid merely based
/// on the user id.
typedef CheckValidCredsRequest = $Empty;

/// A response indicating whether the credentials exist and are valid.
class CheckValidCredsResponse {
  /// If set to `true`, the credentials exist and are valid.
  core.bool? hasValidCreds;

  CheckValidCredsResponse({
    this.hasValidCreds,
  });

  CheckValidCredsResponse.fromJson(core.Map _json)
      : this(
          hasValidCreds: _json.containsKey('hasValidCreds')
              ? _json['hasValidCreds'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasValidCreds != null) 'hasValidCreds': hasValidCreds!,
      };
}

/// Defines the properties and custom parameters for a data source.
class DataSource {
  /// Indicates the type of authorization.
  /// Possible string values are:
  /// - "AUTHORIZATION_TYPE_UNSPECIFIED" : Type unspecified.
  /// - "AUTHORIZATION_CODE" : Use OAuth 2 authorization codes that can be
  /// exchanged for a refresh token on the backend.
  /// - "GOOGLE_PLUS_AUTHORIZATION_CODE" : Return an authorization code for a
  /// given Google+ page that can then be exchanged for a refresh token on the
  /// backend.
  /// - "FIRST_PARTY_OAUTH" : Use First Party OAuth.
  core.String? authorizationType;

  /// Data source client id which should be used to receive refresh token.
  core.String? clientId;

  /// Specifies whether the data source supports automatic data refresh for the
  /// past few days, and how it's supported.
  ///
  /// For some data sources, data might not be complete until a few days later,
  /// so it's useful to refresh data automatically.
  /// Possible string values are:
  /// - "DATA_REFRESH_TYPE_UNSPECIFIED" : The data source won't support data
  /// auto refresh, which is default value.
  /// - "SLIDING_WINDOW" : The data source supports data auto refresh, and runs
  /// will be scheduled for the past few days. Does not allow custom values to
  /// be set for each transfer config.
  /// - "CUSTOM_SLIDING_WINDOW" : The data source supports data auto refresh,
  /// and runs will be scheduled for the past few days. Allows custom values to
  /// be set for each transfer config.
  core.String? dataRefreshType;

  /// Data source id.
  core.String? dataSourceId;

  /// Default data refresh window on days.
  ///
  /// Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`.
  core.int? defaultDataRefreshWindowDays;

  /// Default data transfer schedule.
  ///
  /// Examples of valid schedules include: `1st,3rd monday of month 15:30`,
  /// `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`.
  core.String? defaultSchedule;

  /// User friendly data source description string.
  core.String? description;

  /// User friendly data source name.
  core.String? displayName;

  /// Url for the help document for this data source.
  core.String? helpUrl;

  /// Disables backfilling and manual run scheduling for the data source.
  core.bool? manualRunsDisabled;

  /// The minimum interval for scheduler to schedule runs.
  core.String? minimumScheduleInterval;

  /// Data source resource name.
  ///
  /// Output only.
  core.String? name;

  /// Data source parameters.
  core.List<DataSourceParameter>? parameters;

  /// Api auth scopes for which refresh token needs to be obtained.
  ///
  /// These are scopes needed by a data source to prepare data and ingest them
  /// into BigQuery, e.g., https://www.googleapis.com/auth/bigquery
  core.List<core.String>? scopes;

  /// Specifies whether the data source supports a user defined schedule, or
  /// operates on the default schedule.
  ///
  /// When set to `true`, user can override default schedule.
  core.bool? supportsCustomSchedule;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.bool? supportsMultipleTransfers;

  /// This field has no effect.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "TRANSFER_TYPE_UNSPECIFIED" : Invalid or Unknown transfer type
  /// placeholder.
  /// - "BATCH" : Batch data transfer.
  /// - "STREAMING" : Streaming data transfer. Streaming data source currently
  /// doesn't support multiple transfer configs per project.
  core.String? transferType;

  /// The number of seconds to wait for an update from the data source before
  /// the Data Transfer Service marks the transfer as FAILED.
  core.int? updateDeadlineSeconds;

  DataSource({
    this.authorizationType,
    this.clientId,
    this.dataRefreshType,
    this.dataSourceId,
    this.defaultDataRefreshWindowDays,
    this.defaultSchedule,
    this.description,
    this.displayName,
    this.helpUrl,
    this.manualRunsDisabled,
    this.minimumScheduleInterval,
    this.name,
    this.parameters,
    this.scopes,
    this.supportsCustomSchedule,
    this.supportsMultipleTransfers,
    this.transferType,
    this.updateDeadlineSeconds,
  });

  DataSource.fromJson(core.Map _json)
      : this(
          authorizationType: _json.containsKey('authorizationType')
              ? _json['authorizationType'] as core.String
              : null,
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          dataRefreshType: _json.containsKey('dataRefreshType')
              ? _json['dataRefreshType'] as core.String
              : null,
          dataSourceId: _json.containsKey('dataSourceId')
              ? _json['dataSourceId'] as core.String
              : null,
          defaultDataRefreshWindowDays:
              _json.containsKey('defaultDataRefreshWindowDays')
                  ? _json['defaultDataRefreshWindowDays'] as core.int
                  : null,
          defaultSchedule: _json.containsKey('defaultSchedule')
              ? _json['defaultSchedule'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          helpUrl: _json.containsKey('helpUrl')
              ? _json['helpUrl'] as core.String
              : null,
          manualRunsDisabled: _json.containsKey('manualRunsDisabled')
              ? _json['manualRunsDisabled'] as core.bool
              : null,
          minimumScheduleInterval: _json.containsKey('minimumScheduleInterval')
              ? _json['minimumScheduleInterval'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => DataSourceParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          scopes: _json.containsKey('scopes')
              ? (_json['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportsCustomSchedule: _json.containsKey('supportsCustomSchedule')
              ? _json['supportsCustomSchedule'] as core.bool
              : null,
          supportsMultipleTransfers:
              _json.containsKey('supportsMultipleTransfers')
                  ? _json['supportsMultipleTransfers'] as core.bool
                  : null,
          transferType: _json.containsKey('transferType')
              ? _json['transferType'] as core.String
              : null,
          updateDeadlineSeconds: _json.containsKey('updateDeadlineSeconds')
              ? _json['updateDeadlineSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizationType != null) 'authorizationType': authorizationType!,
        if (clientId != null) 'clientId': clientId!,
        if (dataRefreshType != null) 'dataRefreshType': dataRefreshType!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (defaultDataRefreshWindowDays != null)
          'defaultDataRefreshWindowDays': defaultDataRefreshWindowDays!,
        if (defaultSchedule != null) 'defaultSchedule': defaultSchedule!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (helpUrl != null) 'helpUrl': helpUrl!,
        if (manualRunsDisabled != null)
          'manualRunsDisabled': manualRunsDisabled!,
        if (minimumScheduleInterval != null)
          'minimumScheduleInterval': minimumScheduleInterval!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
        if (scopes != null) 'scopes': scopes!,
        if (supportsCustomSchedule != null)
          'supportsCustomSchedule': supportsCustomSchedule!,
        if (supportsMultipleTransfers != null)
          'supportsMultipleTransfers': supportsMultipleTransfers!,
        if (transferType != null) 'transferType': transferType!,
        if (updateDeadlineSeconds != null)
          'updateDeadlineSeconds': updateDeadlineSeconds!,
      };
}

/// A parameter used to define custom fields in a data source definition.
class DataSourceParameter {
  /// All possible values for the parameter.
  core.List<core.String>? allowedValues;

  /// If true, it should not be used in new transfers, and it should not be
  /// visible to users.
  core.bool? deprecated;

  /// Parameter description.
  core.String? description;

  /// Parameter display name in the user interface.
  core.String? displayName;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.List<DataSourceParameter>? fields;

  /// Cannot be changed after initial creation.
  core.bool? immutable;

  /// For integer and double values specifies maxminum allowed value.
  core.double? maxValue;

  /// For integer and double values specifies minimum allowed value.
  core.double? minValue;

  /// Parameter identifier.
  core.String? paramId;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.bool? recurse;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.bool? repeated;

  /// Is parameter required.
  core.bool? required;

  /// Parameter type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type unspecified.
  /// - "STRING" : String parameter.
  /// - "INTEGER" : Integer parameter (64-bits). Will be serialized to json as
  /// string.
  /// - "DOUBLE" : Double precision floating point parameter.
  /// - "BOOLEAN" : Boolean parameter.
  /// - "RECORD" : Deprecated. This field has no effect.
  /// - "PLUS_PAGE" : Page ID for a Google+ Page.
  core.String? type;

  /// Description of the requirements for this field, in case the user input
  /// does not fulfill the regex pattern or min/max values.
  core.String? validationDescription;

  /// URL to a help document to further explain the naming requirements.
  core.String? validationHelpUrl;

  /// Regular expression which can be used for parameter validation.
  core.String? validationRegex;

  DataSourceParameter({
    this.allowedValues,
    this.deprecated,
    this.description,
    this.displayName,
    this.fields,
    this.immutable,
    this.maxValue,
    this.minValue,
    this.paramId,
    this.recurse,
    this.repeated,
    this.required,
    this.type,
    this.validationDescription,
    this.validationHelpUrl,
    this.validationRegex,
  });

  DataSourceParameter.fromJson(core.Map _json)
      : this(
          allowedValues: _json.containsKey('allowedValues')
              ? (_json['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deprecated: _json.containsKey('deprecated')
              ? _json['deprecated'] as core.bool
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => DataSourceParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          immutable: _json.containsKey('immutable')
              ? _json['immutable'] as core.bool
              : null,
          maxValue: _json.containsKey('maxValue')
              ? (_json['maxValue'] as core.num).toDouble()
              : null,
          minValue: _json.containsKey('minValue')
              ? (_json['minValue'] as core.num).toDouble()
              : null,
          paramId: _json.containsKey('paramId')
              ? _json['paramId'] as core.String
              : null,
          recurse: _json.containsKey('recurse')
              ? _json['recurse'] as core.bool
              : null,
          repeated: _json.containsKey('repeated')
              ? _json['repeated'] as core.bool
              : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          validationDescription: _json.containsKey('validationDescription')
              ? _json['validationDescription'] as core.String
              : null,
          validationHelpUrl: _json.containsKey('validationHelpUrl')
              ? _json['validationHelpUrl'] as core.String
              : null,
          validationRegex: _json.containsKey('validationRegex')
              ? _json['validationRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
        if (deprecated != null) 'deprecated': deprecated!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (fields != null) 'fields': fields!,
        if (immutable != null) 'immutable': immutable!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (paramId != null) 'paramId': paramId!,
        if (recurse != null) 'recurse': recurse!,
        if (repeated != null) 'repeated': repeated!,
        if (required != null) 'required': required!,
        if (type != null) 'type': type!,
        if (validationDescription != null)
          'validationDescription': validationDescription!,
        if (validationHelpUrl != null) 'validationHelpUrl': validationHelpUrl!,
        if (validationRegex != null) 'validationRegex': validationRegex!,
      };
}

/// Represents preferences for sending email notifications for transfer run
/// events.
class EmailPreferences {
  /// If true, email notifications will be sent on transfer run failures.
  core.bool? enableFailureEmail;

  EmailPreferences({
    this.enableFailureEmail,
  });

  EmailPreferences.fromJson(core.Map _json)
      : this(
          enableFailureEmail: _json.containsKey('enableFailureEmail')
              ? _json['enableFailureEmail'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableFailureEmail != null)
          'enableFailureEmail': enableFailureEmail!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A request to enroll a set of data sources so they are visible in the
/// BigQuery UI's `Transfer` tab.
class EnrollDataSourcesRequest {
  /// Data sources that are enrolled.
  ///
  /// It is required to provide at least one data source id.
  core.List<core.String>? dataSourceIds;

  EnrollDataSourcesRequest({
    this.dataSourceIds,
  });

  EnrollDataSourcesRequest.fromJson(core.Map _json)
      : this(
          dataSourceIds: _json.containsKey('dataSourceIds')
              ? (_json['dataSourceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceIds != null) 'dataSourceIds': dataSourceIds!,
      };
}

/// Returns list of supported data sources and their metadata.
class ListDataSourcesResponse {
  /// List of supported data sources and their transfer settings.
  core.List<DataSource>? dataSources;

  /// The next-pagination token.
  ///
  /// For multiple-page list results, this token can be used as the
  /// `ListDataSourcesRequest.page_token` to request the next page of list
  /// results.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListDataSourcesResponse({
    this.dataSources,
    this.nextPageToken,
  });

  ListDataSourcesResponse.fromJson(core.Map _json)
      : this(
          dataSources: _json.containsKey('dataSources')
              ? (_json['dataSources'] as core.List)
                  .map((value) => DataSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSources != null) 'dataSources': dataSources!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The returned list of pipelines in the project.
class ListTransferConfigsResponse {
  /// The next-pagination token.
  ///
  /// For multiple-page list results, this token can be used as the
  /// `ListTransferConfigsRequest.page_token` to request the next page of list
  /// results.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The stored pipeline transfer configurations.
  ///
  /// Output only.
  core.List<TransferConfig>? transferConfigs;

  ListTransferConfigsResponse({
    this.nextPageToken,
    this.transferConfigs,
  });

  ListTransferConfigsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferConfigs: _json.containsKey('transferConfigs')
              ? (_json['transferConfigs'] as core.List)
                  .map((value) => TransferConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferConfigs != null) 'transferConfigs': transferConfigs!,
      };
}

/// The returned list transfer run messages.
class ListTransferLogsResponse {
  /// The next-pagination token.
  ///
  /// For multiple-page list results, this token can be used as the
  /// `GetTransferRunLogRequest.page_token` to request the next page of list
  /// results.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The stored pipeline transfer messages.
  ///
  /// Output only.
  core.List<TransferMessage>? transferMessages;

  ListTransferLogsResponse({
    this.nextPageToken,
    this.transferMessages,
  });

  ListTransferLogsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferMessages: _json.containsKey('transferMessages')
              ? (_json['transferMessages'] as core.List)
                  .map((value) => TransferMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferMessages != null) 'transferMessages': transferMessages!,
      };
}

/// The returned list of pipelines in the project.
class ListTransferRunsResponse {
  /// The next-pagination token.
  ///
  /// For multiple-page list results, this token can be used as the
  /// `ListTransferRunsRequest.page_token` to request the next page of list
  /// results.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// The stored pipeline transfer runs.
  ///
  /// Output only.
  core.List<TransferRun>? transferRuns;

  ListTransferRunsResponse({
    this.nextPageToken,
    this.transferRuns,
  });

  ListTransferRunsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferRuns: _json.containsKey('transferRuns')
              ? (_json['transferRuns'] as core.List)
                  .map((value) => TransferRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferRuns != null) 'transferRuns': transferRuns!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Options customizing the data transfer schedule.
class ScheduleOptions {
  /// If true, automatic scheduling of data transfer runs for this configuration
  /// will be disabled.
  ///
  /// The runs can be started on ad-hoc basis using StartManualTransferRuns API.
  /// When automatic scheduling is disabled, the TransferConfig.schedule field
  /// will be ignored.
  core.bool? disableAutoScheduling;

  /// Defines time to stop scheduling transfer runs.
  ///
  /// A transfer run cannot be scheduled at or after the end time. The end time
  /// can be changed at any moment. The time when a data transfer can be
  /// trigerred manually is not limited by this option.
  core.String? endTime;

  /// Specifies time to start scheduling transfer runs.
  ///
  /// The first run will be scheduled at or after the start time according to a
  /// recurrence pattern defined in the schedule string. The start time can be
  /// changed at any moment. The time when a data transfer can be trigerred
  /// manually is not limited by this option.
  core.String? startTime;

  ScheduleOptions({
    this.disableAutoScheduling,
    this.endTime,
    this.startTime,
  });

  ScheduleOptions.fromJson(core.Map _json)
      : this(
          disableAutoScheduling: _json.containsKey('disableAutoScheduling')
              ? _json['disableAutoScheduling'] as core.bool
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableAutoScheduling != null)
          'disableAutoScheduling': disableAutoScheduling!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A request to schedule transfer runs for a time range.
class ScheduleTransferRunsRequest {
  /// End time of the range of transfer runs.
  ///
  /// For example, `"2017-05-30T00:00:00+00:00"`.
  ///
  /// Required.
  core.String? endTime;

  /// Start time of the range of transfer runs.
  ///
  /// For example, `"2017-05-25T00:00:00+00:00"`.
  ///
  /// Required.
  core.String? startTime;

  ScheduleTransferRunsRequest({
    this.endTime,
    this.startTime,
  });

  ScheduleTransferRunsRequest.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A response to schedule transfer runs for a time range.
class ScheduleTransferRunsResponse {
  /// The transfer runs that were scheduled.
  core.List<TransferRun>? runs;

  ScheduleTransferRunsResponse({
    this.runs,
  });

  ScheduleTransferRunsResponse.fromJson(core.Map _json)
      : this(
          runs: _json.containsKey('runs')
              ? (_json['runs'] as core.List)
                  .map((value) => TransferRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runs != null) 'runs': runs!,
      };
}

/// A request to start manual transfer runs.
class StartManualTransferRunsRequest {
  /// Specific run_time for a transfer run to be started.
  ///
  /// The requested_run_time must not be in the future.
  core.String? requestedRunTime;

  /// Time range for the transfer runs that should be started.
  TimeRange? requestedTimeRange;

  StartManualTransferRunsRequest({
    this.requestedRunTime,
    this.requestedTimeRange,
  });

  StartManualTransferRunsRequest.fromJson(core.Map _json)
      : this(
          requestedRunTime: _json.containsKey('requestedRunTime')
              ? _json['requestedRunTime'] as core.String
              : null,
          requestedTimeRange: _json.containsKey('requestedTimeRange')
              ? TimeRange.fromJson(_json['requestedTimeRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedRunTime != null) 'requestedRunTime': requestedRunTime!,
        if (requestedTimeRange != null)
          'requestedTimeRange': requestedTimeRange!,
      };
}

/// A response to start manual transfer runs.
class StartManualTransferRunsResponse {
  /// The transfer runs that were created.
  core.List<TransferRun>? runs;

  StartManualTransferRunsResponse({
    this.runs,
  });

  StartManualTransferRunsResponse.fromJson(core.Map _json)
      : this(
          runs: _json.containsKey('runs')
              ? (_json['runs'] as core.List)
                  .map((value) => TransferRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runs != null) 'runs': runs!,
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

/// A specification for a time range, this will request transfer runs with
/// run_time between start_time (inclusive) and end_time (exclusive).
class TimeRange {
  /// End time of the range of transfer runs.
  ///
  /// For example, `"2017-05-30T00:00:00+00:00"`. The end_time must not be in
  /// the future. Creates transfer runs where run_time is in the range between
  /// start_time (inclusive) and end_time (exclusive).
  core.String? endTime;

  /// Start time of the range of transfer runs.
  ///
  /// For example, `"2017-05-25T00:00:00+00:00"`. The start_time must be
  /// strictly less than the end_time. Creates transfer runs where run_time is
  /// in the range between start_time (inclusive) and end_time (exclusive).
  core.String? startTime;

  TimeRange({
    this.endTime,
    this.startTime,
  });

  TimeRange.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents a data transfer configuration.
///
/// A transfer configuration contains all metadata needed to perform a data
/// transfer. For example, `destination_dataset_id` specifies where data should
/// be stored. When a new transfer configuration is created, the specified
/// `destination_dataset_id` is created when needed and shared with the
/// appropriate data source service account.
class TransferConfig {
  /// The number of days to look back to automatically refresh the data.
  ///
  /// For example, if `data_refresh_window_days = 10`, then every day BigQuery
  /// reingests data for \[today-10, today-1\], rather than ingesting data for
  /// just \[today-1\]. Only valid if the data source supports the feature. Set
  /// the value to 0 to use the default value.
  core.int? dataRefreshWindowDays;

  /// Data source id.
  ///
  /// Cannot be changed once data transfer is created.
  core.String? dataSourceId;

  /// Region in which BigQuery dataset is located.
  ///
  /// Output only.
  core.String? datasetRegion;

  /// The BigQuery target dataset id.
  core.String? destinationDatasetId;

  /// Is this config disabled.
  ///
  /// When set to true, no runs are scheduled for a given transfer.
  core.bool? disabled;

  /// User specified display name for the data transfer.
  core.String? displayName;

  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  EmailPreferences? emailPreferences;

  /// The resource name of the transfer config.
  ///
  /// Transfer config names have the form
  /// `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`.
  /// Where `config_id` is usually a uuid, even though it is not guaranteed or
  /// required. The name is ignored when creating a transfer config.
  core.String? name;

  /// Next time when data transfer will run.
  ///
  /// Output only.
  core.String? nextRunTime;

  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  ///
  /// The format for specifying a pubsub topic is:
  /// `projects/{project}/topics/{topic}`
  core.String? notificationPubsubTopic;

  /// Information about the user whose credentials are used to transfer data.
  ///
  /// Populated only for `transferConfigs.get` requests. In case the user
  /// information is not available, this field will not be populated.
  ///
  /// Output only.
  UserInfo? ownerInfo;

  /// Parameters specific to each data source.
  ///
  /// For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage
  /// transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Data transfer schedule.
  ///
  /// If the data source does not support a custom schedule, this should be
  /// empty. If it is empty, the default value for the data source will be used.
  /// The specified times are in UTC. Examples of valid format: `1st,3rd monday
  /// of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of
  /// quarter 00:00`. See more explanation about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends on the
  /// data source; refer to the documentation for your data source.
  core.String? schedule;

  /// Options customizing the data transfer schedule.
  ScheduleOptions? scheduleOptions;

  /// State of the most recently updated transfer run.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRANSFER_STATE_UNSPECIFIED" : State placeholder (0).
  /// - "PENDING" : Data transfer is scheduled and is waiting to be picked up by
  /// data transfer backend (2).
  /// - "RUNNING" : Data transfer is in progress (3).
  /// - "SUCCEEDED" : Data transfer completed successfully (4).
  /// - "FAILED" : Data transfer failed (5).
  /// - "CANCELLED" : Data transfer is cancelled (6).
  core.String? state;

  /// Data transfer modification time.
  ///
  /// Ignored by server on input.
  ///
  /// Output only.
  core.String? updateTime;

  /// Unique ID of the user on whose behalf transfer is done.
  ///
  /// Deprecated.
  core.String? userId;

  TransferConfig({
    this.dataRefreshWindowDays,
    this.dataSourceId,
    this.datasetRegion,
    this.destinationDatasetId,
    this.disabled,
    this.displayName,
    this.emailPreferences,
    this.name,
    this.nextRunTime,
    this.notificationPubsubTopic,
    this.ownerInfo,
    this.params,
    this.schedule,
    this.scheduleOptions,
    this.state,
    this.updateTime,
    this.userId,
  });

  TransferConfig.fromJson(core.Map _json)
      : this(
          dataRefreshWindowDays: _json.containsKey('dataRefreshWindowDays')
              ? _json['dataRefreshWindowDays'] as core.int
              : null,
          dataSourceId: _json.containsKey('dataSourceId')
              ? _json['dataSourceId'] as core.String
              : null,
          datasetRegion: _json.containsKey('datasetRegion')
              ? _json['datasetRegion'] as core.String
              : null,
          destinationDatasetId: _json.containsKey('destinationDatasetId')
              ? _json['destinationDatasetId'] as core.String
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          emailPreferences: _json.containsKey('emailPreferences')
              ? EmailPreferences.fromJson(_json['emailPreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nextRunTime: _json.containsKey('nextRunTime')
              ? _json['nextRunTime'] as core.String
              : null,
          notificationPubsubTopic: _json.containsKey('notificationPubsubTopic')
              ? _json['notificationPubsubTopic'] as core.String
              : null,
          ownerInfo: _json.containsKey('ownerInfo')
              ? UserInfo.fromJson(
                  _json['ownerInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
          scheduleOptions: _json.containsKey('scheduleOptions')
              ? ScheduleOptions.fromJson(_json['scheduleOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRefreshWindowDays != null)
          'dataRefreshWindowDays': dataRefreshWindowDays!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (datasetRegion != null) 'datasetRegion': datasetRegion!,
        if (destinationDatasetId != null)
          'destinationDatasetId': destinationDatasetId!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (emailPreferences != null) 'emailPreferences': emailPreferences!,
        if (name != null) 'name': name!,
        if (nextRunTime != null) 'nextRunTime': nextRunTime!,
        if (notificationPubsubTopic != null)
          'notificationPubsubTopic': notificationPubsubTopic!,
        if (ownerInfo != null) 'ownerInfo': ownerInfo!,
        if (params != null) 'params': params!,
        if (schedule != null) 'schedule': schedule!,
        if (scheduleOptions != null) 'scheduleOptions': scheduleOptions!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (userId != null) 'userId': userId!,
      };
}

/// Represents a user facing message for a particular data transfer run.
class TransferMessage {
  /// Message text.
  core.String? messageText;

  /// Time when message was logged.
  core.String? messageTime;

  /// Message severity.
  /// Possible string values are:
  /// - "MESSAGE_SEVERITY_UNSPECIFIED" : No severity specified.
  /// - "INFO" : Informational message.
  /// - "WARNING" : Warning message.
  /// - "ERROR" : Error message.
  core.String? severity;

  TransferMessage({
    this.messageText,
    this.messageTime,
    this.severity,
  });

  TransferMessage.fromJson(core.Map _json)
      : this(
          messageText: _json.containsKey('messageText')
              ? _json['messageText'] as core.String
              : null,
          messageTime: _json.containsKey('messageTime')
              ? _json['messageTime'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageText != null) 'messageText': messageText!,
        if (messageTime != null) 'messageTime': messageTime!,
        if (severity != null) 'severity': severity!,
      };
}

/// Represents a data transfer run.
class TransferRun {
  /// Data source id.
  ///
  /// Output only.
  core.String? dataSourceId;

  /// The BigQuery target dataset id.
  ///
  /// Output only.
  core.String? destinationDatasetId;

  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns the transfer config this run was
  /// derived from.
  ///
  /// Output only.
  EmailPreferences? emailPreferences;

  /// Time when transfer run ended.
  ///
  /// Parameter ignored by server for input requests.
  ///
  /// Output only.
  core.String? endTime;

  /// Status of the transfer run.
  Status? errorStatus;

  /// The resource name of the transfer run.
  ///
  /// Transfer run names have the form
  /// `projects/{project_id}/locations/{location}/transferConfigs/{config_id}/runs/{run_id}`.
  /// The name is ignored when creating a transfer run.
  core.String? name;

  /// Pub/Sub topic where a notification will be sent after this transfer run
  /// finishes.
  ///
  /// The format for specifying a pubsub topic is:
  /// `projects/{project}/topics/{topic}`
  ///
  /// Output only.
  core.String? notificationPubsubTopic;

  /// Parameters specific to each data source.
  ///
  /// For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage
  /// transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// For batch transfer runs, specifies the date and time of the data should be
  /// ingested.
  core.String? runTime;

  /// Describes the schedule of this transfer run if it was created as part of a
  /// regular schedule.
  ///
  /// For batch transfer runs that are scheduled manually, this is empty. NOTE:
  /// the system might choose to delay the schedule depending on the current
  /// load, so `schedule_time` doesn't always match this.
  ///
  /// Output only.
  core.String? schedule;

  /// Minimum time after which a transfer run can be started.
  core.String? scheduleTime;

  /// Time when transfer run was started.
  ///
  /// Parameter ignored by server for input requests.
  ///
  /// Output only.
  core.String? startTime;

  /// Data transfer run state.
  ///
  /// Ignored for input requests.
  /// Possible string values are:
  /// - "TRANSFER_STATE_UNSPECIFIED" : State placeholder (0).
  /// - "PENDING" : Data transfer is scheduled and is waiting to be picked up by
  /// data transfer backend (2).
  /// - "RUNNING" : Data transfer is in progress (3).
  /// - "SUCCEEDED" : Data transfer completed successfully (4).
  /// - "FAILED" : Data transfer failed (5).
  /// - "CANCELLED" : Data transfer is cancelled (6).
  core.String? state;

  /// Last time the data transfer run state was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Unique ID of the user on whose behalf transfer is done.
  ///
  /// Deprecated.
  core.String? userId;

  TransferRun({
    this.dataSourceId,
    this.destinationDatasetId,
    this.emailPreferences,
    this.endTime,
    this.errorStatus,
    this.name,
    this.notificationPubsubTopic,
    this.params,
    this.runTime,
    this.schedule,
    this.scheduleTime,
    this.startTime,
    this.state,
    this.updateTime,
    this.userId,
  });

  TransferRun.fromJson(core.Map _json)
      : this(
          dataSourceId: _json.containsKey('dataSourceId')
              ? _json['dataSourceId'] as core.String
              : null,
          destinationDatasetId: _json.containsKey('destinationDatasetId')
              ? _json['destinationDatasetId'] as core.String
              : null,
          emailPreferences: _json.containsKey('emailPreferences')
              ? EmailPreferences.fromJson(_json['emailPreferences']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          errorStatus: _json.containsKey('errorStatus')
              ? Status.fromJson(
                  _json['errorStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notificationPubsubTopic: _json.containsKey('notificationPubsubTopic')
              ? _json['notificationPubsubTopic'] as core.String
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          runTime: _json.containsKey('runTime')
              ? _json['runTime'] as core.String
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
          scheduleTime: _json.containsKey('scheduleTime')
              ? _json['scheduleTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (destinationDatasetId != null)
          'destinationDatasetId': destinationDatasetId!,
        if (emailPreferences != null) 'emailPreferences': emailPreferences!,
        if (endTime != null) 'endTime': endTime!,
        if (errorStatus != null) 'errorStatus': errorStatus!,
        if (name != null) 'name': name!,
        if (notificationPubsubTopic != null)
          'notificationPubsubTopic': notificationPubsubTopic!,
        if (params != null) 'params': params!,
        if (runTime != null) 'runTime': runTime!,
        if (schedule != null) 'schedule': schedule!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (userId != null) 'userId': userId!,
      };
}

/// Information about a user.
class UserInfo {
  /// E-mail address of the user.
  core.String? email;

  UserInfo({
    this.email,
  });

  UserInfo.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}
