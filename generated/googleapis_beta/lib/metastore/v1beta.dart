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

/// Dataproc Metastore API - v1beta
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
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesBackupsResource]
///       - [ProjectsLocationsServicesMetadataImportsResource]
library metastore.v1beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

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
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in AIP-160 (https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the next_page_token field in the
  /// response. Send that page token to receive the subsequent page.
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesBackupsResource get backups =>
      ProjectsLocationsServicesBackupsResource(_requester);
  ProjectsLocationsServicesMetadataImportsResource get metadataImports =>
      ProjectsLocationsServicesMetadataImportsResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Service request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceId != null) 'serviceId': [serviceId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> exportMetadata(
    ExportMetadataRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$service') + ':exportMetadata';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected.Requests for policies with any conditional bindings
  /// must specify version 3. Policies without any conditional bindings may
  /// specify any valid value or leave the field unset.To learn which resources
  /// support conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/services';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the metastore service,
  /// of the
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
  /// [updateMask] - Required. A field mask used to specify the fields to be
  /// overwritten in the metastore service resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    Service request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> restore(
    RestoreServiceRequest request,
    core.String service, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$service') + ':restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Backup.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected.Requests for policies with any conditional bindings
  /// must specify version 3. Policies without any conditional bindings may
  /// specify any valid value or leave the field unset.To learn which resources
  /// support conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesMetadataImportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesMetadataImportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new MetadataImport in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service in which to
  /// create a metastore import, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [metadataImportId] - Required. The ID of the metadata import, which is
  /// used as the final component of the metadata import's name.This value must
  /// be between 1 and 64 characters long, begin with a letter, end with a
  /// letter or number, and consist of alpha-numeric ASCII characters or
  /// hyphens.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    MetadataImport request,
    core.String parent, {
    core.String? metadataImportId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (metadataImportId != null) 'metadataImportId': [metadataImportId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/metadataImports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single import.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of the metadata import to
  /// retrieve, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{import_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/metadataImports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetadataImport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetadataImport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return MetadataImport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists imports in a service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the service whose
  /// metadata imports to list, in the following
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports.
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
  /// [pageSize] - Optional. The maximum number of imports to return. The
  /// response may contain less than the maximum number. If unspecified, no more
  /// than 500 imports are returned. The maximum value is 1000; values above
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
  /// Completes with a [ListMetadataImportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMetadataImportsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/metadataImports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMetadataImportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a single import.
  ///
  /// Only the description field of MetadataImport is supported to be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The relative resource name of the metadata import, of
  /// the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/metadataImports/\[^/\]+$`.
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
  /// overwritten in the metadata import resource by the update. Fields
  /// specified in the update_mask are relative to the resource (not to the full
  /// request). A field is overwritten if it is in the mask.
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
    MetadataImport request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs.If there are AuditConfigs for both allServices and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted.Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, storage.googleapis.com, cloudsql.googleapis.com. allServices
  /// is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs!.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
}

/// The details of a backup resource.
class Backup {
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
  Service? serviceRevision;

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

  Backup({
    this.createTime,
    this.description,
    this.endTime,
    this.name,
    this.restoringServices,
    this.serviceRevision,
    this.state,
  });

  Backup.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          restoringServices: _json.containsKey('restoringServices')
              ? (_json['restoringServices'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          serviceRevision: _json.containsKey('serviceRevision')
              ? Service.fromJson(_json['serviceRevision']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (restoringServices != null) 'restoringServices': restoringServices!,
        if (serviceRevision != null)
          'serviceRevision': serviceRevision!.toJson(),
        if (state != null) 'state': state!,
      };
}

/// Associates members with a role.
class Binding {
  /// The condition that is associated with this binding.If the condition
  /// evaluates to true, then this binding applies to the current request.If the
  /// condition evaluates to false, then this binding does not apply to the
  /// current request.
  ///
  /// However, a different role binding might grant the same role to one or more
  /// of the members in this binding.To learn which resources support conditions
  /// in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// members can have the following values: allUsers: A special identifier that
  /// represents anyone who is on the internet; with or without a Google
  /// account. allAuthenticatedUsers: A special identifier that represents
  /// anyone who is authenticated with a Google account or a service account.
  /// user:{emailid}: An email address that represents a specific Google
  /// account. For example, alice@example.com . serviceAccount:{emailid}: An
  /// email address that represents a service account. For example,
  /// my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email
  /// address that represents a Google group. For example, admins@example.com.
  /// deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, alice@example.com?uid=123456789012345678901. If the user is
  /// recovered, this value reverts to user:{emailid} and the recovered user
  /// retains the role in the binding.
  /// deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the
  /// service account is undeleted, this value reverts to
  /// serviceAccount:{emailid} and the undeleted service account retains the
  /// role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// admins@example.com?uid=123456789012345678901. If the group is recovered,
  /// this value reverts to group:{emailid} and the recovered group retains the
  /// role in the binding. domain:{domain}: The G Suite domain (primary) that
  /// represents all the users of that domain. For example, google.com or
  /// example.com.
  core.List<core.String>? members;

  /// Role that is assigned to members.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Specifies how metastore metadata should be integrated with the Data Catalog
/// service.
class DataCatalogConfig {
  /// Defines whether the metastore metadata should be synced to Data Catalog.
  ///
  /// The default value is to disable syncing metastore metadata to Data
  /// Catalog.
  core.bool? enabled;

  DataCatalogConfig({
    this.enabled,
  });

  DataCatalogConfig.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// A specification of the location of and metadata about a database dump from a
/// relational database management system.
class DatabaseDump {
  /// The type of the database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The type of the source database is
  /// unknown.
  /// - "MYSQL" : The type of the source database is MySQL.
  core.String? databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which
  /// to import metadata.
  ///
  /// It must begin with gs://.
  core.String? gcsUri;

  /// The name of the source database.
  core.String? sourceDatabase;

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

  DatabaseDump({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  DatabaseDump.fromJson(core.Map _json)
      : this(
          databaseType: _json.containsKey('databaseType')
              ? _json['databaseType'] as core.String
              : null,
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
          sourceDatabase: _json.containsKey('sourceDatabase')
              ? _json['sourceDatabase'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseType != null) 'databaseType': databaseType!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (type != null) 'type': type!,
      };
}

/// Specifies how metastore metadata should be integrated with the Dataplex
/// service.
class DataplexConfig {
  /// A reference to the Lake resources that this metastore service is attached
  /// to.
  ///
  /// The key is the lake resource name. Example:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  core.Map<core.String, Lake>? lakeResources;

  DataplexConfig({
    this.lakeResources,
  });

  DataplexConfig.fromJson(core.Map _json)
      : this(
          lakeResources: _json.containsKey('lakeResources')
              ? (_json['lakeResources'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Lake.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lakeResources != null)
          'lakeResources': lakeResources!
              .map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for Empty is empty JSON
/// object {}.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Encryption settings for the service.
class EncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for
  /// customer data encryption, in the following
  /// form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.
  core.String? kmsKey;

  EncryptionConfig({
    this.kmsKey,
  });

  EncryptionConfig.fromJson(core.Map _json)
      : this(
          kmsKey: _json.containsKey('kmsKey')
              ? _json['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Request message for DataprocMetastore.ExportMetadata.
class ExportMetadataRequest {
  /// The type of the database dump.
  ///
  /// If unspecified, defaults to MYSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? databaseDumpType;

  /// A Cloud Storage URI of a folder, in the format gs:///.
  ///
  /// A sub-folder containing exported files will be created below it.
  core.String? destinationGcsFolder;

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

  ExportMetadataRequest({
    this.databaseDumpType,
    this.destinationGcsFolder,
    this.requestId,
  });

  ExportMetadataRequest.fromJson(core.Map _json)
      : this(
          databaseDumpType: _json.containsKey('databaseDumpType')
              ? _json['databaseDumpType'] as core.String
              : null,
          destinationGcsFolder: _json.containsKey('destinationGcsFolder')
              ? _json['destinationGcsFolder'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseDumpType != null) 'databaseDumpType': databaseDumpType!,
        if (destinationGcsFolder != null)
          'destinationGcsFolder': destinationGcsFolder!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec.Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Specifies configuration information specific to running Hive metastore
/// software as the metastore service.
class HiveMetastoreConfig {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// Hive metastore (configured in hive-site.xml).
  ///
  /// The mappings override system defaults (some keys cannot be overridden).
  core.Map<core.String, core.String>? configOverrides;

  /// The protocol to use for the metastore service endpoint.
  ///
  /// If unspecified, defaults to THRIFT.
  /// Possible string values are:
  /// - "ENDPOINT_PROTOCOL_UNSPECIFIED" : The protocol is not set.
  /// - "THRIFT" : Use the legacy Apache Thrift protocol for the metastore
  /// service endpoint.
  /// - "GRPC" : Use the modernized gRPC protocol for the metastore service
  /// endpoint.
  core.String? endpointProtocol;

  /// Information used to configure the Hive metastore service as a service
  /// principal in a Kerberos realm.
  ///
  /// To disable Kerberos, use the UpdateService method and specify this field's
  /// path (hive_metastore_config.kerberos_config) in the request's update_mask
  /// while omitting this field from the request's service.
  KerberosConfig? kerberosConfig;

  /// The Hive metastore schema version.
  ///
  /// Immutable.
  core.String? version;

  HiveMetastoreConfig({
    this.configOverrides,
    this.endpointProtocol,
    this.kerberosConfig,
    this.version,
  });

  HiveMetastoreConfig.fromJson(core.Map _json)
      : this(
          configOverrides: _json.containsKey('configOverrides')
              ? (_json['configOverrides']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          endpointProtocol: _json.containsKey('endpointProtocol')
              ? _json['endpointProtocol'] as core.String
              : null,
          kerberosConfig: _json.containsKey('kerberosConfig')
              ? KerberosConfig.fromJson(_json['kerberosConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configOverrides != null) 'configOverrides': configOverrides!,
        if (endpointProtocol != null) 'endpointProtocol': endpointProtocol!,
        if (kerberosConfig != null) 'kerberosConfig': kerberosConfig!.toJson(),
        if (version != null) 'version': version!,
      };
}

/// A specification of a supported version of the Hive Metastore software.
class HiveMetastoreVersion {
  /// Whether version will be chosen by the server if a metastore service is
  /// created with a HiveMetastoreConfig that omits the version.
  core.bool? isDefault;

  /// The semantic version of the Hive Metastore software.
  core.String? version;

  HiveMetastoreVersion({
    this.isDefault,
    this.version,
  });

  HiveMetastoreVersion.fromJson(core.Map _json)
      : this(
          isDefault: _json.containsKey('isDefault')
              ? _json['isDefault'] as core.bool
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isDefault != null) 'isDefault': isDefault!,
        if (version != null) 'version': version!,
      };
}

/// Configuration information for a Kerberos principal.
class KerberosConfig {
  /// A Kerberos keytab file that can be used to authenticate a service
  /// principal with a Kerberos Key Distribution Center (KDC).
  Secret? keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file.
  ///
  /// It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file
  /// does not need to be named krb5.conf explicitly.
  core.String? krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to
  /// authenticate as.
  ///
  /// A typical principal is of the form primary/instance@REALM, but there is no
  /// exact format.
  core.String? principal;

  KerberosConfig({
    this.keytab,
    this.krb5ConfigGcsUri,
    this.principal,
  });

  KerberosConfig.fromJson(core.Map _json)
      : this(
          keytab: _json.containsKey('keytab')
              ? Secret.fromJson(
                  _json['keytab'] as core.Map<core.String, core.dynamic>)
              : null,
          krb5ConfigGcsUri: _json.containsKey('krb5ConfigGcsUri')
              ? _json['krb5ConfigGcsUri'] as core.String
              : null,
          principal: _json.containsKey('principal')
              ? _json['principal'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keytab != null) 'keytab': keytab!.toJson(),
        if (krb5ConfigGcsUri != null) 'krb5ConfigGcsUri': krb5ConfigGcsUri!,
        if (principal != null) 'principal': principal!,
      };
}

/// Represents a Lake resource
class Lake {
  /// The Lake resource name.
  ///
  /// Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  core.String? name;

  Lake({
    this.name,
  });

  Lake.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Response message for DataprocMetastore.ListBackups.
class ListBackupsResponse {
  /// The backups of the specified service.
  core.List<Backup>? backups;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupsResponse.fromJson(core.Map _json)
      : this(
          backups: _json.containsKey('backups')
              ? (_json['backups'] as core.List)
                  .map<Backup>((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null)
          'backups': backups!.map((value) => value.toJson()).toList(),
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for DataprocMetastore.ListMetadataImports.
class ListMetadataImportsResponse {
  /// The imports in the specified service.
  core.List<MetadataImport>? metadataImports;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMetadataImportsResponse({
    this.metadataImports,
    this.nextPageToken,
    this.unreachable,
  });

  ListMetadataImportsResponse.fromJson(core.Map _json)
      : this(
          metadataImports: _json.containsKey('metadataImports')
              ? (_json['metadataImports'] as core.List)
                  .map<MetadataImport>((value) => MetadataImport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataImports != null)
          'metadataImports':
              metadataImports!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map<Operation>((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for DataprocMetastore.ListServices.
class ListServicesResponse {
  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The services in the specified location.
  core.List<Service>? services;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServicesResponse({
    this.nextPageToken,
    this.services,
    this.unreachable,
  });

  ListServicesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map<Service>((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (services != null)
          'services': services!.map((value) => value.toJson()).toList(),
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: "us-east1".
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: "projects/example-project/locations/us-east1"
  core.String? name;

  Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Metadata about the service in a location.
class LocationMetadata {
  /// The versions of Hive Metastore that can be used when creating a new
  /// metastore service in this location.
  ///
  /// The server guarantees that exactly one HiveMetastoreVersion in the list
  /// will set is_default.
  core.List<HiveMetastoreVersion>? supportedHiveMetastoreVersions;

  LocationMetadata({
    this.supportedHiveMetastoreVersions,
  });

  LocationMetadata.fromJson(core.Map _json)
      : this(
          supportedHiveMetastoreVersions:
              _json.containsKey('supportedHiveMetastoreVersions')
                  ? (_json['supportedHiveMetastoreVersions'] as core.List)
                      .map<HiveMetastoreVersion>((value) =>
                          HiveMetastoreVersion.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (supportedHiveMetastoreVersions != null)
          'supportedHiveMetastoreVersions': supportedHiveMetastoreVersions!
              .map((value) => value.toJson())
              .toList(),
      };
}

/// Maintenance window.
///
/// This specifies when Dataproc Metastore may perform system maintenance
/// operation to the service.
class MaintenanceWindow {
  /// The day of week, when the window starts.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  core.int? hourOfDay;

  MaintenanceWindow({
    this.dayOfWeek,
    this.hourOfDay,
  });

  MaintenanceWindow.fromJson(core.Map _json)
      : this(
          dayOfWeek: _json.containsKey('dayOfWeek')
              ? _json['dayOfWeek'] as core.String
              : null,
          hourOfDay: _json.containsKey('hourOfDay')
              ? _json['hourOfDay'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (hourOfDay != null) 'hourOfDay': hourOfDay!,
      };
}

/// The details of a metadata export operation.
class MetadataExport {
  /// The type of the database dump.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the database dump is unknown.
  /// - "MYSQL" : Database dump is a MySQL dump file.
  /// - "AVRO" : Database dump contains Avro files.
  core.String? databaseDumpType;

  /// A Cloud Storage URI of a folder that metadata are exported to, in the form
  /// of gs:////, where is automatically generated.
  ///
  /// Output only.
  core.String? destinationGcsUri;

  /// The time when the export ended.
  ///
  /// Output only.
  core.String? endTime;

  /// The time when the export started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the export.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata export is unknown.
  /// - "RUNNING" : The metadata export is running.
  /// - "SUCCEEDED" : The metadata export completed successfully.
  /// - "FAILED" : The metadata export failed.
  /// - "CANCELLED" : The metadata export is cancelled.
  core.String? state;

  MetadataExport({
    this.databaseDumpType,
    this.destinationGcsUri,
    this.endTime,
    this.startTime,
    this.state,
  });

  MetadataExport.fromJson(core.Map _json)
      : this(
          databaseDumpType: _json.containsKey('databaseDumpType')
              ? _json['databaseDumpType'] as core.String
              : null,
          destinationGcsUri: _json.containsKey('destinationGcsUri')
              ? _json['destinationGcsUri'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseDumpType != null) 'databaseDumpType': databaseDumpType!,
        if (destinationGcsUri != null) 'destinationGcsUri': destinationGcsUri!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
      };
}

/// A metastore resource that imports metadata.
class MetadataImport {
  /// The time when the metadata import was started.
  ///
  /// Output only.
  core.String? createTime;

  /// A database dump from a pre-existing metastore's database.
  ///
  /// Immutable.
  DatabaseDump? databaseDump;

  /// The description of the metadata import.
  core.String? description;

  /// The time when the metadata import finished.
  ///
  /// Output only.
  core.String? endTime;

  /// The relative resource name of the metadata import, of the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the metadata import.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata import is unknown.
  /// - "RUNNING" : The metadata import is running.
  /// - "SUCCEEDED" : The metadata import completed successfully.
  /// - "UPDATING" : The metadata import is being updated.
  /// - "FAILED" : The metadata import failed, and attempted metadata changes
  /// were rolled back.
  core.String? state;

  /// The time when the metadata import was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MetadataImport({
    this.createTime,
    this.databaseDump,
    this.description,
    this.endTime,
    this.name,
    this.state,
    this.updateTime,
  });

  MetadataImport.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          databaseDump: _json.containsKey('databaseDump')
              ? DatabaseDump.fromJson(
                  _json['databaseDump'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (databaseDump != null) 'databaseDump': databaseDump!.toJson(),
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Specifies how metastore metadata should be integrated with external
/// services.
class MetadataIntegration {
  /// The integration config for the Data Catalog service.
  DataCatalogConfig? dataCatalogConfig;

  /// The integration config for the Dataplex service.
  DataplexConfig? dataplexConfig;

  MetadataIntegration({
    this.dataCatalogConfig,
    this.dataplexConfig,
  });

  MetadataIntegration.fromJson(core.Map _json)
      : this(
          dataCatalogConfig: _json.containsKey('dataCatalogConfig')
              ? DataCatalogConfig.fromJson(_json['dataCatalogConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataplexConfig: _json.containsKey('dataplexConfig')
              ? DataplexConfig.fromJson(_json['dataplexConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogConfig != null)
          'dataCatalogConfig': dataCatalogConfig!.toJson(),
        if (dataplexConfig != null) 'dataplexConfig': dataplexConfig!.toJson(),
      };
}

/// The metadata management activities of the metastore service.
class MetadataManagementActivity {
  /// The latest metadata exports of the metastore service.
  ///
  /// Output only.
  core.List<MetadataExport>? metadataExports;

  /// The latest restores of the metastore service.
  ///
  /// Output only.
  core.List<Restore>? restores;

  MetadataManagementActivity({
    this.metadataExports,
    this.restores,
  });

  MetadataManagementActivity.fromJson(core.Map _json)
      : this(
          metadataExports: _json.containsKey('metadataExports')
              ? (_json['metadataExports'] as core.List)
                  .map<MetadataExport>((value) => MetadataExport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          restores: _json.containsKey('restores')
              ? (_json['restores'] as core.List)
                  .map<Restore>((value) => Restore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadataExports != null)
          'metadataExports':
              metadataExports!.map((value) => value.toJson()).toList(),
        if (restores != null)
          'restores': restores!.map((value) => value.toJson()).toList(),
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
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
  core.Map<core.String, core.Object>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal response of the operation in case of success.
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
  core.Map<core.String, core.Object>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Represents the metadata of a long-running operation.
class OperationMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the caller has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  OperationMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.statusMessage,
    this.target,
    this.verb,
  });

  OperationMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.A Policy is a collection of bindings.
///
/// A binding binds one or more members to a single role. Members can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// role is a named list of permissions; each role can be an IAM predefined role
/// or a user-created custom role.For some types of Google Cloud resources, a
/// binding can also specify a condition, which is a logical expression that
/// allows access to a resource only if the expression evaluates to true. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the IAM documentation
/// (https://cloud.google.com/iam/help/conditions/resource-policies).JSON
/// example: { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the IAM
/// documentation (https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of members to a role.
  ///
  /// Optionally, may specify a condition that determines how and when the
  /// bindings are applied. Each of the bindings must contain at least one
  /// member.
  core.List<Binding>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to getIamPolicy, and
  /// systems are expected to put that etag in the request to setIamPolicy to
  /// ensure that their change will be applied to the same version of the
  /// policy.Important: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.Valid values are 0, 1, and 3.
  ///
  /// Requests that specify an invalid value are rejected.Any operation that
  /// affects conditional role bindings must specify version 3. This requirement
  /// applies to the following operations: Getting a policy that includes a
  /// conditional role binding Adding a conditional role binding to a policy
  /// Changing a conditional role binding in a policy Removing any role binding,
  /// with or without a condition, from a policy that includes
  /// conditionsImportant: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.If a policy does
  /// not include any conditions, operations on that policy may specify any
  /// valid version or leave the field unset.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map<AuditConfig>((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map<Binding>((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs!.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// The details of a metadata restore operation.
class Restore {
  /// The relative resource name of the metastore service backup to restore
  /// from, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  ///
  /// Output only.
  core.String? backup;

  /// The restore details containing the revision of the service to be restored
  /// to, in format of JSON.
  ///
  /// Output only.
  core.String? details;

  /// The time when the restore ended.
  ///
  /// Output only.
  core.String? endTime;

  /// The time when the restore started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the restore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata restore is unknown.
  /// - "RUNNING" : The metadata restore is running.
  /// - "SUCCEEDED" : The metadata restore completed successfully.
  /// - "FAILED" : The metadata restore failed.
  /// - "CANCELLED" : The metadata restore is cancelled.
  core.String? state;

  /// The type of restore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESTORE_TYPE_UNSPECIFIED" : The restore type is unknown.
  /// - "FULL" : The service's metadata and configuration are restored.
  /// - "METADATA_ONLY" : Only the service's metadata is restored.
  core.String? type;

  Restore({
    this.backup,
    this.details,
    this.endTime,
    this.startTime,
    this.state,
    this.type,
  });

  Restore.fromJson(core.Map _json)
      : this(
          backup: _json.containsKey('backup')
              ? _json['backup'] as core.String
              : null,
          details: _json.containsKey('details')
              ? _json['details'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (details != null) 'details': details!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// Request message for DataprocMetastore.Restore.
class RestoreServiceRequest {
  /// The relative resource name of the metastore service backup to restore
  /// from, in the following
  /// form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  ///
  /// Required.
  core.String? backup;

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

  /// The type of restore.
  ///
  /// If unspecified, defaults to METADATA_ONLY.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESTORE_TYPE_UNSPECIFIED" : The restore type is unknown.
  /// - "FULL" : The service's metadata and configuration are restored.
  /// - "METADATA_ONLY" : Only the service's metadata is restored.
  core.String? restoreType;

  RestoreServiceRequest({
    this.backup,
    this.requestId,
    this.restoreType,
  });

  RestoreServiceRequest.fromJson(core.Map _json)
      : this(
          backup: _json.containsKey('backup')
              ? _json['backup'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          restoreType: _json.containsKey('restoreType')
              ? _json['restoreType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (requestId != null) 'requestId': requestId!,
        if (restoreType != null) 'restoreType': restoreType!,
      };
}

/// A securely stored value.
class Secret {
  /// The relative resource name of a Secret Manager secret version, in the
  /// following
  /// form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.
  core.String? cloudSecret;

  Secret({
    this.cloudSecret,
  });

  Secret.fromJson(core.Map _json)
      : this(
          cloudSecret: _json.containsKey('cloudSecret')
              ? _json['cloudSecret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSecret != null) 'cloudSecret': cloudSecret!,
      };
}

/// A managed metastore service that serves metadata queries.
class Service {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts
  /// related to the metastore service are stored.
  ///
  /// Output only.
  core.String? artifactGcsUri;

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
  EncryptionConfig? encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  ///
  /// Output only.
  core.String? endpointUri;

  /// Configuration information specific to running Hive metastore software as
  /// the metastore service.
  HiveMetastoreConfig? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  core.Map<core.String, core.String>? labels;

  /// The one hour maintenance window of the metastore service.
  ///
  /// This specifies when the service can be restarted for maintenance purposes
  /// in UTC time.
  MaintenanceWindow? maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with
  /// external services and systems.
  MetadataIntegration? metadataIntegration;

  /// The metadata management activities of the metastore service.
  ///
  /// Output only.
  MetadataManagementActivity? metadataManagementActivity;

  /// The relative resource name of the metastore service, of the
  /// form:projects/{project_number}/locations/{location_id}/services/{service_id}.
  ///
  /// Immutable.
  core.String? name;

  /// The relative resource name of the VPC network on which the instance can be
  /// accessed.
  ///
  /// It is specified in the following
  /// form:projects/{project_number}/global/networks/{network_id}.
  ///
  /// Immutable.
  core.String? network;

  /// The TCP port at which the metastore service is reached.
  ///
  /// Default: 9083.
  core.int? port;

  /// The release channel of the service.
  ///
  /// If unspecified, defaults to STABLE.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "RELEASE_CHANNEL_UNSPECIFIED" : Release channel is not specified.
  /// - "CANARY" : The CANARY release channel contains the newest features,
  /// which may be unstable and subject to unresolved issues with no known
  /// workarounds. Services using the CANARY release channel are not subject to
  /// any SLAs.
  /// - "STABLE" : The STABLE release channel contains features that are
  /// considered stable and have been validated for production use.
  core.String? releaseChannel;

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

  /// The tier of the service.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : The tier is not set.
  /// - "DEVELOPER" : The developer tier provides limited scalability and no
  /// fault tolerance. Good for low-cost proof-of-concept.
  /// - "ENTERPRISE" : The enterprise tier provides multi-zone high
  /// availability, and sufficient scalability for enterprise-level Dataproc
  /// Metastore workloads.
  core.String? tier;

  /// The globally unique resource identifier of the metastore service.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the metastore service was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Service({
    this.artifactGcsUri,
    this.createTime,
    this.encryptionConfig,
    this.endpointUri,
    this.hiveMetastoreConfig,
    this.labels,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.metadataManagementActivity,
    this.name,
    this.network,
    this.port,
    this.releaseChannel,
    this.state,
    this.stateMessage,
    this.tier,
    this.uid,
    this.updateTime,
  });

  Service.fromJson(core.Map _json)
      : this(
          artifactGcsUri: _json.containsKey('artifactGcsUri')
              ? _json['artifactGcsUri'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          encryptionConfig: _json.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(_json['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endpointUri: _json.containsKey('endpointUri')
              ? _json['endpointUri'] as core.String
              : null,
          hiveMetastoreConfig: _json.containsKey('hiveMetastoreConfig')
              ? HiveMetastoreConfig.fromJson(_json['hiveMetastoreConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maintenanceWindow: _json.containsKey('maintenanceWindow')
              ? MaintenanceWindow.fromJson(_json['maintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadataIntegration: _json.containsKey('metadataIntegration')
              ? MetadataIntegration.fromJson(_json['metadataIntegration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadataManagementActivity:
              _json.containsKey('metadataManagementActivity')
                  ? MetadataManagementActivity.fromJson(
                      _json['metadataManagementActivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          releaseChannel: _json.containsKey('releaseChannel')
              ? _json['releaseChannel'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactGcsUri != null) 'artifactGcsUri': artifactGcsUri!,
        if (createTime != null) 'createTime': createTime!,
        if (encryptionConfig != null)
          'encryptionConfig': encryptionConfig!.toJson(),
        if (endpointUri != null) 'endpointUri': endpointUri!,
        if (hiveMetastoreConfig != null)
          'hiveMetastoreConfig': hiveMetastoreConfig!.toJson(),
        if (labels != null) 'labels': labels!,
        if (maintenanceWindow != null)
          'maintenanceWindow': maintenanceWindow!.toJson(),
        if (metadataIntegration != null)
          'metadataIntegration': metadataIntegration!.toJson(),
        if (metadataManagementActivity != null)
          'metadataManagementActivity': metadataManagementActivity!.toJson(),
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (port != null) 'port': port!,
        if (releaseChannel != null) 'releaseChannel': releaseChannel!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (tier != null) 'tier': tier!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for SetIamPolicy method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:paths: "bindings, etag"
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Request message for TestIamPermissions method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for TestIamPermissions method.
class TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}
