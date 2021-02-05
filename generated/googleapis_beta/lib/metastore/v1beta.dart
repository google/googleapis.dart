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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataprocMetastoreApi(http.Client client,
      {core.String rootUrl = 'https://metastore.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

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
  /// form:"projects/{project_number}/locations/{location_id}".
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
    core.String requestId,
    core.String serviceId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if (serviceId != null) {
      _queryParams['serviceId'] = [serviceId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/services';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}".
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
    core.String requestId,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// form:"projects/{project_id}/locations/{location_id}/services/{service_id}
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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (service == null) {
      throw core.ArgumentError('Parameter service is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$service') +
        ':exportMetadata';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}".
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

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
  /// form:"projects/{project_number}/locations/{location_id}".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order. If not specified, the results will be sorted in the default
  /// order.
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
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/services';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}".
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
    core.String requestId,
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

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
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}"
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
    core.String metadataImportId,
    core.String requestId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (metadataImportId != null) {
      _queryParams['metadataImportId'] = [metadataImportId];
    }
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/metadataImports';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{import_id}".
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
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter to apply to list results.
  ///
  /// [orderBy] - Optional. Specify the ordering of results as described in
  /// Sorting Order. If not specified, the results will be sorted in the default
  /// order.
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
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/metadataImports';

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
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}".
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
    core.String requestId,
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'v1beta/' + commons.Escaper.ecapeVariableReserved('$name');

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
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, storage.googleapis.com, cloudsql.googleapis.com. allServices
  /// is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
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
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
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
  Expr condition;

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
  core.List<core.String> members;

  /// Role that is assigned to members.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// A specification of the location of and metadata about a database dump from a
/// relational database management system.
class DatabaseDump {
  /// The type of the database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The type of the source database is
  /// unknown.
  /// - "MYSQL" : The type of the source database is MySQL.
  core.String databaseType;

  /// A Cloud Storage object URI that specifies the source from which to import
  /// metadata.
  ///
  /// It must begin with gs://.
  core.String gcsUri;

  /// The name of the source database.
  core.String sourceDatabase;

  DatabaseDump();

  DatabaseDump.fromJson(core.Map _json) {
    if (_json.containsKey('databaseType')) {
      databaseType = _json['databaseType'] as core.String;
    }
    if (_json.containsKey('gcsUri')) {
      gcsUri = _json['gcsUri'] as core.String;
    }
    if (_json.containsKey('sourceDatabase')) {
      sourceDatabase = _json['sourceDatabase'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (databaseType != null) {
      _json['databaseType'] = databaseType;
    }
    if (gcsUri != null) {
      _json['gcsUri'] = gcsUri;
    }
    if (sourceDatabase != null) {
      _json['sourceDatabase'] = sourceDatabase;
    }
    return _json;
  }
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Request message for DataprocMetastore.ExportMetadata.
class ExportMetadataRequest {
  /// A Cloud Storage URI of a folder that metadata are exported to, in the
  /// format gs:///.
  ///
  /// A sub-folder containing exported files will be created below it.
  ///
  /// Required.
  core.String destinationGcsFolder;

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
  core.String requestId;

  ExportMetadataRequest();

  ExportMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey('destinationGcsFolder')) {
      destinationGcsFolder = _json['destinationGcsFolder'] as core.String;
    }
    if (_json.containsKey('requestId')) {
      requestId = _json['requestId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (destinationGcsFolder != null) {
      _json['destinationGcsFolder'] = destinationGcsFolder;
    }
    if (requestId != null) {
      _json['requestId'] = requestId;
    }
    return _json;
  }
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
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Specifies configuration information specific to running Hive metastore
/// software as the metastore service.
class HiveMetastoreConfig {
  /// A mapping of Hive metastore configuration key-value pairs to apply to the
  /// Hive metastore (configured in hive-site.xml).
  ///
  /// The mappings override system defaults (some keys cannot be overridden).
  core.Map<core.String, core.String> configOverrides;

  /// Information used to configure the Hive metastore service as a service
  /// principal in a Kerberos realm.
  ///
  /// To disable Kerberos, use the UpdateService method and specify this field's
  /// path ("hive_metastore_config.kerberos_config") in the request's
  /// update_mask while omitting this field from the request's service.
  KerberosConfig kerberosConfig;

  /// The Hive metastore schema version.
  ///
  /// Immutable.
  core.String version;

  HiveMetastoreConfig();

  HiveMetastoreConfig.fromJson(core.Map _json) {
    if (_json.containsKey('configOverrides')) {
      configOverrides = (_json['configOverrides'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('kerberosConfig')) {
      kerberosConfig = KerberosConfig.fromJson(
          _json['kerberosConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (configOverrides != null) {
      _json['configOverrides'] = configOverrides;
    }
    if (kerberosConfig != null) {
      _json['kerberosConfig'] = kerberosConfig.toJson();
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// A specification of a supported version of the Hive Metastore software.
class HiveMetastoreVersion {
  /// Whether version will be chosen by the server if a metastore service is
  /// created with a HiveMetastoreConfig that omits the version.
  core.bool isDefault;

  /// The semantic version of the Hive Metastore software.
  core.String version;

  HiveMetastoreVersion();

  HiveMetastoreVersion.fromJson(core.Map _json) {
    if (_json.containsKey('isDefault')) {
      isDefault = _json['isDefault'] as core.bool;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (isDefault != null) {
      _json['isDefault'] = isDefault;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Configuration information for a Kerberos principal.
class KerberosConfig {
  /// A Kerberos keytab file that can be used to authenticate a service
  /// principal with a Kerberos Key Distribution Center (KDC).
  Secret keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file.
  ///
  /// It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file
  /// does not need to be named krb5.conf explicitly.
  core.String krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to
  /// authenticate as.
  ///
  /// A typical principal is of the form "primary/instance@REALM", but there is
  /// no exact format.
  core.String principal;

  KerberosConfig();

  KerberosConfig.fromJson(core.Map _json) {
    if (_json.containsKey('keytab')) {
      keytab = Secret.fromJson(
          _json['keytab'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('krb5ConfigGcsUri')) {
      krb5ConfigGcsUri = _json['krb5ConfigGcsUri'] as core.String;
    }
    if (_json.containsKey('principal')) {
      principal = _json['principal'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keytab != null) {
      _json['keytab'] = keytab.toJson();
    }
    if (krb5ConfigGcsUri != null) {
      _json['krb5ConfigGcsUri'] = krb5ConfigGcsUri;
    }
    if (principal != null) {
      _json['principal'] = principal;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for DataprocMetastore.ListMetadataImports.
class ListMetadataImportsResponse {
  /// The imports in the specified service.
  core.List<MetadataImport> metadataImports;

  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListMetadataImportsResponse();

  ListMetadataImportsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('metadataImports')) {
      metadataImports = (_json['metadataImports'] as core.List)
          .map<MetadataImport>((value) => MetadataImport.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (metadataImports != null) {
      _json['metadataImports'] =
          metadataImports.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for DataprocMetastore.ListServices.
class ListServicesResponse {
  /// A token that can be sent as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String nextPageToken;

  /// The services in the specified location.
  core.List<Service> services;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListServicesResponse();

  ListServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('services')) {
      services = (_json['services'] as core.List)
          .map<Service>((value) =>
              Service.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (services != null) {
      _json['services'] = services.map((value) => value.toJson()).toList();
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: "us-east1".
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: "projects/example-project/locations/us-east1"
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Metadata about the service in a location.
class LocationMetadata {
  /// The versions of Hive Metastore that can be used when creating a new
  /// metastore service in this location.
  ///
  /// The server guarantees that exactly one HiveMetastoreVersion in the list
  /// will set is_default.
  core.List<HiveMetastoreVersion> supportedHiveMetastoreVersions;

  LocationMetadata();

  LocationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('supportedHiveMetastoreVersions')) {
      supportedHiveMetastoreVersions = (_json['supportedHiveMetastoreVersions']
              as core.List)
          .map<HiveMetastoreVersion>((value) => HiveMetastoreVersion.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (supportedHiveMetastoreVersions != null) {
      _json['supportedHiveMetastoreVersions'] = supportedHiveMetastoreVersions
          .map((value) => value.toJson())
          .toList();
    }
    return _json;
  }
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
  core.String dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  core.int hourOfDay;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('dayOfWeek')) {
      dayOfWeek = _json['dayOfWeek'] as core.String;
    }
    if (_json.containsKey('hourOfDay')) {
      hourOfDay = _json['hourOfDay'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dayOfWeek != null) {
      _json['dayOfWeek'] = dayOfWeek;
    }
    if (hourOfDay != null) {
      _json['hourOfDay'] = hourOfDay;
    }
    return _json;
  }
}

/// The details of a metadata export operation.
class MetadataExport {
  /// A Cloud Storage URI of a folder that metadata are exported to, in the form
  /// of gs:////, where \` is automatically generated.
  ///
  /// Output only.
  core.String destinationGcsUri;

  /// The time when the export ended.
  ///
  /// Output only.
  core.String endTime;

  /// The time when the export started.
  ///
  /// Output only.
  core.String startTime;

  /// The current state of the export.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the metadata export is unknown.
  /// - "RUNNING" : The metadata export is running.
  /// - "SUCCEEDED" : The metadata export completed successfully.
  /// - "FAILED" : The metadata export failed.
  /// - "CANCELLED" : The metadata export is cancelled.
  core.String state;

  MetadataExport();

  MetadataExport.fromJson(core.Map _json) {
    if (_json.containsKey('destinationGcsUri')) {
      destinationGcsUri = _json['destinationGcsUri'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (destinationGcsUri != null) {
      _json['destinationGcsUri'] = destinationGcsUri;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// A metastore resource that imports metadata.
class MetadataImport {
  /// The time when the metadata import was created.
  ///
  /// Output only.
  core.String createTime;

  /// A database dump from a pre-existing metastore's database.
  ///
  /// Immutable.
  DatabaseDump databaseDump;

  /// The description of the metadata import.
  core.String description;

  /// The relative resource name of the metadata import, of the
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}".
  ///
  /// Immutable.
  core.String name;

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
  core.String state;

  /// The time when the metadata import was last updated.
  ///
  /// Output only.
  core.String updateTime;

  MetadataImport();

  MetadataImport.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('databaseDump')) {
      databaseDump = DatabaseDump.fromJson(
          _json['databaseDump'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (databaseDump != null) {
      _json['databaseDump'] = databaseDump.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Specifies how metastore metadata should be integrated with external
/// services.
class MetadataIntegration {
  MetadataIntegration();

  MetadataIntegration.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The metadata management activities of the metastore service.
class MetadataManagementActivity {
  /// The latest metadata exports of the metastore service.
  ///
  /// Output only.
  core.List<MetadataExport> metadataExports;

  MetadataManagementActivity();

  MetadataManagementActivity.fromJson(core.Map _json) {
    if (_json.containsKey('metadataExports')) {
      metadataExports = (_json['metadataExports'] as core.List)
          .map<MetadataExport>((value) => MetadataExport.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (metadataExports != null) {
      _json['metadataExports'] =
          metadataExports.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String name;

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
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
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
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the IAM
/// documentation (https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of members to a role.
  ///
  /// Optionally, may specify a condition that determines how and when the
  /// bindings are applied. Each of the bindings must contain at least one
  /// member.
  core.List<Binding> bindings;

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
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

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
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// A securely stored value.
class Secret {
  /// The relative resource name of a Secret Manager secret version, in the
  /// following
  /// form:"projects/{project_number}/secrets/{secret_id}/versions/{version_id}".
  core.String cloudSecret;

  Secret();

  Secret.fromJson(core.Map _json) {
    if (_json.containsKey('cloudSecret')) {
      cloudSecret = _json['cloudSecret'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudSecret != null) {
      _json['cloudSecret'] = cloudSecret;
    }
    return _json;
  }
}

/// A managed metastore service that serves metadata queries.
class Service {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts
  /// related to the metastore service are stored.
  ///
  /// Output only.
  core.String artifactGcsUri;

  /// The time when the metastore service was created.
  ///
  /// Output only.
  core.String createTime;

  /// The URI of the endpoint used to access the metastore service.
  ///
  /// Output only.
  core.String endpointUri;

  /// Configuration information specific to running Hive metastore software as
  /// the metastore service.
  HiveMetastoreConfig hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  core.Map<core.String, core.String> labels;

  /// The one hour maintenance window of the metastore service.
  ///
  /// This specifies when the service can be restarted for maintenance purposes
  /// in UTC time.
  MaintenanceWindow maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with
  /// external services and systems.
  MetadataIntegration metadataIntegration;

  /// The metadata management activities of the metastore service.
  ///
  /// Output only.
  MetadataManagementActivity metadataManagementActivity;

  /// The relative resource name of the metastore service, of the
  /// form:"projects/{project_number}/locations/{location_id}/services/{service_id}".
  ///
  /// Immutable.
  core.String name;

  /// The relative resource name of the VPC network on which the instance can be
  /// accessed.
  ///
  /// The network must belong to the same project as the metastore instance. It
  /// is specified in the following
  /// form:"projects/{project_number}/global/networks/{network_id}".
  ///
  /// Immutable.
  core.String network;

  /// The TCP port at which the metastore service is reached.
  ///
  /// Default: 9083.
  core.int port;

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
  core.String state;

  /// Additional information about the current state of the metastore service,
  /// if available.
  ///
  /// Output only.
  core.String stateMessage;

  /// The tier of the service.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : The tier is not set.
  /// - "DEVELOPER" : The developer tier provides limited scalability and no
  /// fault tolerance. Good for low-cost proof-of-concept.
  /// - "ENTERPRISE" : The enterprise tier provides multi-zone high
  /// availability, and sufficient scalability for enterprise-level Dataproc
  /// Metastore workloads.
  core.String tier;

  /// The globally unique resource identifier of the metastore service.
  ///
  /// Output only.
  core.String uid;

  /// The time when the metastore service was last updated.
  ///
  /// Output only.
  core.String updateTime;

  Service();

  Service.fromJson(core.Map _json) {
    if (_json.containsKey('artifactGcsUri')) {
      artifactGcsUri = _json['artifactGcsUri'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endpointUri')) {
      endpointUri = _json['endpointUri'] as core.String;
    }
    if (_json.containsKey('hiveMetastoreConfig')) {
      hiveMetastoreConfig = HiveMetastoreConfig.fromJson(
          _json['hiveMetastoreConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('maintenanceWindow')) {
      maintenanceWindow = MaintenanceWindow.fromJson(
          _json['maintenanceWindow'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadataIntegration')) {
      metadataIntegration = MetadataIntegration.fromJson(
          _json['metadataIntegration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadataManagementActivity')) {
      metadataManagementActivity = MetadataManagementActivity.fromJson(
          _json['metadataManagementActivity']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('port')) {
      port = _json['port'] as core.int;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (artifactGcsUri != null) {
      _json['artifactGcsUri'] = artifactGcsUri;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endpointUri != null) {
      _json['endpointUri'] = endpointUri;
    }
    if (hiveMetastoreConfig != null) {
      _json['hiveMetastoreConfig'] = hiveMetastoreConfig.toJson();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (maintenanceWindow != null) {
      _json['maintenanceWindow'] = maintenanceWindow.toJson();
    }
    if (metadataIntegration != null) {
      _json['metadataIntegration'] = metadataIntegration.toJson();
    }
    if (metadataManagementActivity != null) {
      _json['metadataManagementActivity'] = metadataManagementActivity.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (network != null) {
      _json['network'] = network;
    }
    if (port != null) {
      _json['port'] = port;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Request message for SetIamPolicy method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:paths: "bindings, etag"
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
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
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Request message for TestIamPermissions method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for TestIamPermissions method.
class TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}
