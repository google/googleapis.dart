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

/// Dataproc Metastore API - v2
///
/// The Dataproc Metastore API is used to manage the lifecycle and configuration
/// of metastore services.
///
/// For more information, see <https://cloud.google.com/dataproc-metastore/docs>
///
/// Create an instance of [DataprocMetastoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesBackupsResource]
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

/// The Dataproc Metastore API is used to manage the lifecycle and configuration
/// of metastore services.
class DataprocMetastoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataprocMetastoreApi(http.Client client,
      {core.String rootUrl = 'https://metastore.googleapis.com/',
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

  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesBackupsResource get backups =>
      ProjectsLocationsServicesBackupsResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Alter metadata resource location.
  ///
  /// The metadata resource can be a database, table, or partition. This
  /// functionality only updates the parent directory for the respective
  /// metadata resource and does not transfer any existing data to the new
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to mutate metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> alterLocation(
    GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$service') + ':alterLocation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Alter metadata table properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the Dataproc Metastore
  /// service that's being used to mutate metadata table properties, in the
  /// following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> alterTableProperties(
    GoogleCloudMetastoreV2AlterTablePropertiesRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$service') + ':alterTableProperties';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a metastore service in a project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location in which
  /// to create a metastore service, in the following
  /// form:projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [serviceId] - Required. The ID of the metastore service, which is used as
  /// the final component of the metastore service's name.This value must be
  /// between 2 and 63 characters long inclusive, begin with a letter, end with
  /// a letter or number, and consist of alpha-numeric ASCII characters or
  /// hyphens.
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
    GoogleCloudMetastoreV2Service request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceId != null) 'serviceId': [serviceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore service to
  /// delete, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports metadata from a service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to run export, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> exportMetadata(
    GoogleCloudMetastoreV2ExportMetadataRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$service') + ':exportMetadata';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a single service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metastore service to
  /// retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudMetastoreV2Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudMetastoreV2Service> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudMetastoreV2Service.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports Metadata into a Dataproc Metastore service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the metastore service to
  /// run import, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importMetadata(
    GoogleCloudMetastoreV2ImportMetadataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':importMetadata';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists services in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the location of
  /// metastore services to list, in the following
  /// form:projects/{project_number}/locations/{location_id}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of services to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 services are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListServices call. Provide this token to retrieve the
  /// subsequent page.To retrieve the first page, supply an empty page
  /// token.When paginating, other parameters provided to
  /// DataprocMetastore.ListServices must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudMetastoreV2ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudMetastoreV2ListServicesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudMetastoreV2ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Move a table to another database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to mutate metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> moveTableToDatabase(
    GoogleCloudMetastoreV2MoveTableToDatabaseRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$service') + ':moveTableToDatabase';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the metastore service,
  /// in the following
  /// format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// [updateMask] - Required. A field mask used to specify the fields to be
  /// overwritten in the metastore service resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    GoogleCloudMetastoreV2Service request,
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Query Dataproc Metastore metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to query metadata, in the following
  /// format:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> queryMetadata(
    GoogleCloudMetastoreV2QueryMetadataRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$service') + ':queryMetadata';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a service from a backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [service] - Required. The relative resource name of the metastore service
  /// to run restore, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
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
    GoogleCloudMetastoreV2RestoreServiceRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$service') + ':restore';

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

class ProjectsLocationsServicesBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new backup in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service in which to
  /// create a backup of the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [backupId] - Required. The ID of the backup, which is used as the final
  /// component of the backup's name.This value must be between 1 and 64
  /// characters long, begin with a letter, end with a letter or number, and
  /// consist of alpha-numeric ASCII characters or hyphens.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    GoogleCloudMetastoreV2Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the backup to delete, in
  /// the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID. Specify a unique request ID to allow
  /// the server to ignore the request if it has completed. The server will
  /// ignore subsequent requests that provide a duplicate request ID for at
  /// least 60 minutes after the first request.For example, if an initial
  /// request times out, followed by another request with the same request ID,
  /// the server ignores the second request to prevent the creation of duplicate
  /// commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the backup to retrieve,
  /// in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudMetastoreV2Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudMetastoreV2Backup> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudMetastoreV2Backup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists backups in a service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service whose
  /// backups to list, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order
  /// (https://cloud.google.com/apis/design/design_patterns#sorting_order). If
  /// not specified, the results will be sorted in the default order.
  ///
  /// [pageSize] - Optional. The maximum number of backups to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 backups are returned. The maximum value is 1000; values above
  /// 1000 are changed to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// DataprocMetastore.ListBackups call. Provide this token to retrieve the
  /// subsequent page.To retrieve the first page, supply an empty page
  /// token.When paginating, other parameters provided to
  /// DataprocMetastore.ListBackups must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudMetastoreV2ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudMetastoreV2ListBackupsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudMetastoreV2ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for DataprocMetastore.AlterMetadataResourceLocation.
typedef GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
    = $AlterMetadataResourceLocationRequest;

/// Request message for DataprocMetastore.AlterTableProperties.
typedef GoogleCloudMetastoreV2AlterTablePropertiesRequest
    = $AlterTablePropertiesRequest;

/// Configuration information for the auxiliary service versions.
class GoogleCloudMetastoreV2AuxiliaryVersionConfig {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// auxiliary Hive metastore (configured in hive-site.xml) in addition to the
  /// primary version's overrides.
  ///
  /// If keys are present in both the auxiliary version's overrides and the
  /// primary version's overrides, the value from the auxiliary version's
  /// overrides takes precedence.
  core.Map<core.String, core.String>? configOverrides;

  /// The list of endpoints used to access the auxiliary metastore service,
  /// includes version and region data.
  ///
  /// Output only.
  core.List<GoogleCloudMetastoreV2Endpoint>? endpoints;

  /// The Hive metastore version of the auxiliary service.
  ///
  /// It must be less than the primary Hive metastore service's version.
  core.String? version;

  GoogleCloudMetastoreV2AuxiliaryVersionConfig({
    this.configOverrides,
    this.endpoints,
    this.version,
  });

  GoogleCloudMetastoreV2AuxiliaryVersionConfig.fromJson(core.Map json_)
      : this(
          configOverrides:
              (json_['configOverrides'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          endpoints: (json_['endpoints'] as core.List?)
              ?.map((value) => GoogleCloudMetastoreV2Endpoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configOverrides != null) 'configOverrides': configOverrides!,
        if (endpoints != null) 'endpoints': endpoints!,
        if (version != null) 'version': version!,
      };
}

/// The details of a backup resource.
class GoogleCloudMetastoreV2Backup {
  /// The time when the backup was started.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the backup.
  core.String? description;

  /// The time when the backup finished creating.
  ///
  /// Output only.
  core.String? endTime;

  /// The relative resource name of the backup, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  ///
  /// Immutable.
  core.String? name;

  /// Services that are restoring from the backup.
  ///
  /// Output only.
  core.List<core.String>? restoringServices;

  /// The revision of the service at the time of backup.
  ///
  /// Output only.
  GoogleCloudMetastoreV2Service? serviceRevision;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the backup is unknown.
  /// - "CREATING" : The backup is being created.
  /// - "DELETING" : The backup is being deleted.
  /// - "ACTIVE" : The backup is active and ready to use.
  /// - "FAILED" : The backup failed.
  /// - "RESTORING" : The backup is being restored.
  core.String? state;

  GoogleCloudMetastoreV2Backup({
    this.createTime,
    this.description,
    this.endTime,
    this.name,
    this.restoringServices,
    this.serviceRevision,
    this.state,
  });

  GoogleCloudMetastoreV2Backup.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          name: json_['name'] as core.String?,
          restoringServices: (json_['restoringServices'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          serviceRevision: json_.containsKey('serviceRevision')
              ? GoogleCloudMetastoreV2Service.fromJson(json_['serviceRevision']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (restoringServices != null) 'restoringServices': restoringServices!,
        if (serviceRevision != null) 'serviceRevision': serviceRevision!,
        if (state != null) 'state': state!,
      };
}

/// Specifies how metastore metadata should be integrated with the Data Catalog
/// service.
typedef GoogleCloudMetastoreV2DataCatalogConfig = $DataCatalogConfig;

/// A specification of the location and metadata type for a database dump from a
/// relational database management system.
class GoogleCloudMetastoreV2DatabaseDump {
  /// A Cloud Storage object or folder URI that specifies the source from which
  /// to import metadata.
  ///
  /// It must begin with gs://.
  ///
  /// Required.
  core.String? gcsUri;

  /// The type of the database dump.
  ///
  /// If unspecified, defaults to MYSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? type;

  GoogleCloudMetastoreV2DatabaseDump({
    this.gcsUri,
    this.type,
  });

  GoogleCloudMetastoreV2DatabaseDump.fromJson(core.Map json_)
      : this(
          gcsUri: json_['gcsUri'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (type != null) 'type': type!,
      };
}

/// Encryption settings for the service.
typedef GoogleCloudMetastoreV2EncryptionConfig = $Empty;

/// An endpoint used to access the metastore service.
class GoogleCloudMetastoreV2Endpoint {
  /// The URI of the endpoint used to access the metastore service.
  ///
  /// Output only.
  core.String? endpointUri;

  /// The region where the endpoint is located.
  ///
  /// Output only.
  core.String? region;

  GoogleCloudMetastoreV2Endpoint({
    this.endpointUri,
    this.region,
  });

  GoogleCloudMetastoreV2Endpoint.fromJson(core.Map json_)
      : this(
          endpointUri: json_['endpointUri'] as core.String?,
          region: json_['region'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (region != null) 'region': region!,
      };
}

/// Request message for DataprocMetastore.ExportMetadata.
typedef GoogleCloudMetastoreV2ExportMetadataRequest = $ExportMetadataRequest;

/// Specifies configuration information specific to running Hive metastore
/// software as the metastore service.
class GoogleCloudMetastoreV2HiveMetastoreConfig {
  /// A mapping of Hive metastore version to the auxiliary version
  /// configuration.
  ///
  /// When specified, a secondary Hive metastore service is created along with
  /// the primary service. All auxiliary versions must be less than the
  /// service's primary version. The key is the auxiliary service name and it
  /// must match the regular expression a-z?. This means that the first
  /// character must be a lowercase letter, and all the following characters
  /// must be hyphens, lowercase letters, or digits, except the last character,
  /// which cannot be a hyphen.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudMetastoreV2AuxiliaryVersionConfig>?
      auxiliaryVersions;

  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// Hive metastore (configured in hive-site.xml).
  ///
  /// The mappings override system defaults (some keys cannot be overridden).
  /// These overrides are also applied to auxiliary versions and can be further
  /// customized in the auxiliary version's AuxiliaryVersionConfig.
  ///
  /// Optional.
  core.Map<core.String, core.String>? configOverrides;

  /// The protocol to use for the metastore service endpoint.
  ///
  /// If unspecified, defaults to GRPC.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENDPOINT_PROTOCOL_UNSPECIFIED" : The protocol is not set.
  /// - "THRIFT" : Use the legacy Apache Thrift protocol for the metastore
  /// service endpoint.
  /// - "GRPC" : Use the modernized gRPC protocol for the metastore service
  /// endpoint.
  core.String? endpointProtocol;

  /// The Hive metastore schema version.
  ///
  /// Immutable.
  core.String? version;

  GoogleCloudMetastoreV2HiveMetastoreConfig({
    this.auxiliaryVersions,
    this.configOverrides,
    this.endpointProtocol,
    this.version,
  });

  GoogleCloudMetastoreV2HiveMetastoreConfig.fromJson(core.Map json_)
      : this(
          auxiliaryVersions: (json_['auxiliaryVersions']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudMetastoreV2AuxiliaryVersionConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          configOverrides:
              (json_['configOverrides'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          endpointProtocol: json_['endpointProtocol'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryVersions != null) 'auxiliaryVersions': auxiliaryVersions!,
        if (configOverrides != null) 'configOverrides': configOverrides!,
        if (endpointProtocol != null) 'endpointProtocol': endpointProtocol!,
        if (version != null) 'version': version!,
      };
}

/// Request message for DataprocMetastore.CreateMetadataImport.
class GoogleCloudMetastoreV2ImportMetadataRequest {
  /// A database dump from a pre-existing metastore's database.
  ///
  /// Immutable.
  GoogleCloudMetastoreV2DatabaseDump? databaseDump;

  /// The description of the metadata import.
  ///
  /// Optional.
  core.String? description;

  /// A request ID.
  ///
  /// Specify a unique request ID to allow the server to ignore the request if
  /// it has completed. The server will ignore subsequent requests that provide
  /// a duplicate request ID for at least 60 minutes after the first request.For
  /// example, if an initial request times out, followed by another request with
  /// the same request ID, the server ignores the second request to prevent the
  /// creation of duplicate commitments.The request ID must be a valid UUID
  /// (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format). A
  /// zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudMetastoreV2ImportMetadataRequest({
    this.databaseDump,
    this.description,
    this.requestId,
  });

  GoogleCloudMetastoreV2ImportMetadataRequest.fromJson(core.Map json_)
      : this(
          databaseDump: json_.containsKey('databaseDump')
              ? GoogleCloudMetastoreV2DatabaseDump.fromJson(
                  json_['databaseDump'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_['description'] as core.String?,
          requestId: json_['requestId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseDump != null) 'databaseDump': databaseDump!,
        if (description != null) 'description': description!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The details of the latest scheduled backup.
typedef GoogleCloudMetastoreV2LatestBackup = $LatestBackup;

/// Response message for DataprocMetastore.ListBackups.
class GoogleCloudMetastoreV2ListBackupsResponse {
  /// The backups of the specified service.
  core.List<GoogleCloudMetastoreV2Backup>? backups;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudMetastoreV2ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  GoogleCloudMetastoreV2ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: (json_['backups'] as core.List?)
              ?.map((value) => GoogleCloudMetastoreV2Backup.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for DataprocMetastore.ListServices.
class GoogleCloudMetastoreV2ListServicesResponse {
  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The services in the specified location.
  core.List<GoogleCloudMetastoreV2Service>? services;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  GoogleCloudMetastoreV2ListServicesResponse({
    this.nextPageToken,
    this.services,
    this.unreachable,
  });

  GoogleCloudMetastoreV2ListServicesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          services: (json_['services'] as core.List?)
              ?.map((value) => GoogleCloudMetastoreV2Service.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null) 'services': services!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Specifies how metastore metadata should be integrated with external
/// services.
class GoogleCloudMetastoreV2MetadataIntegration {
  /// The integration config for the Data Catalog service.
  ///
  /// Optional.
  GoogleCloudMetastoreV2DataCatalogConfig? dataCatalogConfig;

  GoogleCloudMetastoreV2MetadataIntegration({
    this.dataCatalogConfig,
  });

  GoogleCloudMetastoreV2MetadataIntegration.fromJson(core.Map json_)
      : this(
          dataCatalogConfig: json_.containsKey('dataCatalogConfig')
              ? GoogleCloudMetastoreV2DataCatalogConfig.fromJson(
                  json_['dataCatalogConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogConfig != null) 'dataCatalogConfig': dataCatalogConfig!,
      };
}

/// Request message for DataprocMetastore.MoveTableToDatabase.
typedef GoogleCloudMetastoreV2MoveTableToDatabaseRequest
    = $MoveTableToDatabaseRequest;

/// Request message for DataprocMetastore.QueryMetadata.
typedef GoogleCloudMetastoreV2QueryMetadataRequest = $QueryMetadataRequest;

/// Request message for DataprocMetastore.Restore.
typedef GoogleCloudMetastoreV2RestoreServiceRequest = $RestoreServiceRequest;

/// Represents the scaling configuration of a metastore service.
class GoogleCloudMetastoreV2ScalingConfig {
  /// Scaling factor from 1 to 5, increments of 1.
  ///
  /// Optional.
  core.int? scalingFactor;

  GoogleCloudMetastoreV2ScalingConfig({
    this.scalingFactor,
  });

  GoogleCloudMetastoreV2ScalingConfig.fromJson(core.Map json_)
      : this(
          scalingFactor: json_['scalingFactor'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scalingFactor != null) 'scalingFactor': scalingFactor!,
      };
}

/// This specifies the configuration of scheduled backup.
class GoogleCloudMetastoreV2ScheduledBackup {
  /// A Cloud Storage URI of a folder, in the format gs:///.
  ///
  /// A sub-folder containing backup files will be stored below it.
  ///
  /// Optional.
  core.String? backupLocation;

  /// The scheduled interval in Cron format, see
  /// https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup
  /// is not enabled.
  ///
  /// Must be specified to enable scheduled backups.
  ///
  /// Optional.
  core.String? cronSchedule;

  /// Defines whether the scheduled backup is enabled.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? enabled;

  /// The details of the latest scheduled backup.
  ///
  /// Output only.
  GoogleCloudMetastoreV2LatestBackup? latestBackup;

  /// The time when the next backups execution is scheduled to start.
  ///
  /// Output only.
  core.String? nextScheduledTime;

  /// Specifies the time zone to be used when interpreting cron_schedule.
  ///
  /// Must be a time zone name from the time zone database
  /// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g.
  /// America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is
  /// UTC.
  ///
  /// Optional.
  core.String? timeZone;

  GoogleCloudMetastoreV2ScheduledBackup({
    this.backupLocation,
    this.cronSchedule,
    this.enabled,
    this.latestBackup,
    this.nextScheduledTime,
    this.timeZone,
  });

  GoogleCloudMetastoreV2ScheduledBackup.fromJson(core.Map json_)
      : this(
          backupLocation: json_['backupLocation'] as core.String?,
          cronSchedule: json_['cronSchedule'] as core.String?,
          enabled: json_['enabled'] as core.bool?,
          latestBackup: json_.containsKey('latestBackup')
              ? GoogleCloudMetastoreV2LatestBackup.fromJson(
                  json_['latestBackup'] as core.Map<core.String, core.dynamic>)
              : null,
          nextScheduledTime: json_['nextScheduledTime'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupLocation != null) 'backupLocation': backupLocation!,
        if (cronSchedule != null) 'cronSchedule': cronSchedule!,
        if (enabled != null) 'enabled': enabled!,
        if (latestBackup != null) 'latestBackup': latestBackup!,
        if (nextScheduledTime != null) 'nextScheduledTime': nextScheduledTime!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// A managed metastore service that serves metadata queries.
class GoogleCloudMetastoreV2Service {
  /// The time when the metastore service was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  ///
  /// Cannot be updated.
  ///
  /// Immutable.
  GoogleCloudMetastoreV2EncryptionConfig? encryptionConfig;

  /// The list of endpoints used to access the metastore service.
  ///
  /// Output only.
  core.List<GoogleCloudMetastoreV2Endpoint>? endpoints;

  /// Configuration information specific to running Hive metastore software as
  /// the metastore service.
  GoogleCloudMetastoreV2HiveMetastoreConfig? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  core.Map<core.String, core.String>? labels;

  /// The setting that defines how metastore metadata should be integrated with
  /// external services and systems.
  ///
  /// Optional.
  GoogleCloudMetastoreV2MetadataIntegration? metadataIntegration;

  /// The relative resource name of the metastore service, in the following
  /// format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  ///
  /// Immutable.
  core.String? name;

  /// Scaling configuration of the metastore service.
  ///
  /// Optional.
  GoogleCloudMetastoreV2ScalingConfig? scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  ///
  /// Optional.
  GoogleCloudMetastoreV2ScheduledBackup? scheduledBackup;

  /// The current state of the metastore service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metastore service is unknown.
  /// - "CREATING" : The metastore service is in the process of being created.
  /// - "ACTIVE" : The metastore service is running and ready to serve queries.
  /// - "SUSPENDING" : The metastore service is entering suspension. Its
  /// query-serving availability may cease unexpectedly.
  /// - "SUSPENDED" : The metastore service is suspended and unable to serve
  /// queries.
  /// - "UPDATING" : The metastore service is being updated. It remains usable
  /// but cannot accept additional update requests or be deleted at this time.
  /// - "DELETING" : The metastore service is undergoing deletion. It cannot be
  /// used.
  /// - "ERROR" : The metastore service has encountered an error and cannot be
  /// used. The metastore service should be deleted.
  core.String? state;

  /// Additional information about the current state of the metastore service,
  /// if available.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The globally unique resource identifier of the metastore service.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the metastore service was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A Cloud Storage URI (starting with gs://) that specifies the default
  /// warehouse directory of the Hive Metastore.
  ///
  /// Required.
  core.String? warehouseGcsUri;

  GoogleCloudMetastoreV2Service({
    this.createTime,
    this.encryptionConfig,
    this.endpoints,
    this.hiveMetastoreConfig,
    this.labels,
    this.metadataIntegration,
    this.name,
    this.scalingConfig,
    this.scheduledBackup,
    this.state,
    this.stateMessage,
    this.uid,
    this.updateTime,
    this.warehouseGcsUri,
  });

  GoogleCloudMetastoreV2Service.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? GoogleCloudMetastoreV2EncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endpoints: (json_['endpoints'] as core.List?)
              ?.map((value) => GoogleCloudMetastoreV2Endpoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          hiveMetastoreConfig: json_.containsKey('hiveMetastoreConfig')
              ? GoogleCloudMetastoreV2HiveMetastoreConfig.fromJson(
                  json_['hiveMetastoreConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          metadataIntegration: json_.containsKey('metadataIntegration')
              ? GoogleCloudMetastoreV2MetadataIntegration.fromJson(
                  json_['metadataIntegration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          scalingConfig: json_.containsKey('scalingConfig')
              ? GoogleCloudMetastoreV2ScalingConfig.fromJson(
                  json_['scalingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          scheduledBackup: json_.containsKey('scheduledBackup')
              ? GoogleCloudMetastoreV2ScheduledBackup.fromJson(
                  json_['scheduledBackup']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          stateMessage: json_['stateMessage'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          warehouseGcsUri: json_['warehouseGcsUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (endpoints != null) 'endpoints': endpoints!,
        if (hiveMetastoreConfig != null)
          'hiveMetastoreConfig': hiveMetastoreConfig!,
        if (labels != null) 'labels': labels!,
        if (metadataIntegration != null)
          'metadataIntegration': metadataIntegration!,
        if (name != null) 'name': name!,
        if (scalingConfig != null) 'scalingConfig': scalingConfig!,
        if (scheduledBackup != null) 'scheduledBackup': scheduledBackup!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (warehouseGcsUri != null) 'warehouseGcsUri': warehouseGcsUri!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
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
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
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

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;
