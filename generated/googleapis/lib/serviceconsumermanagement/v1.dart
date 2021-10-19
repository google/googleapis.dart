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

/// Service Consumer Management API - v1
///
/// Manages the service consumers of a Service Infrastructure service.
///
/// For more information, see
/// <https://cloud.google.com/service-consumer-management/docs/overview>
///
/// Create an instance of [ServiceConsumerManagementApi] to access these
/// resources:
///
/// - [OperationsResource]
/// - [ServicesResource]
///   - [ServicesTenancyUnitsResource]
library serviceconsumermanagement.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http_1;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages the service consumers of a Service Infrastructure service.
class ServiceConsumerManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ServicesResource get services => ServicesResource(_requester);

  ServiceConsumerManagementApi(http_1.Client client,
      {core.String rootUrl =
          'https://serviceconsumermanagement.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> get(
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations$`.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesTenancyUnitsResource get tenancyUnits =>
      ServicesTenancyUnitsResource(_requester);

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// Search tenancy units for a managed service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Service for which search is performed.
  /// services/{service} {service} the name of a service, for example
  /// 'service.googleapis.com'.
  /// Value must have pattern `^services/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results returned by this
  /// request. Currently, the default maximum is set to 1000. If `page_size`
  /// isn't provided or the size provided is a number larger than 1000, it's
  /// automatically set to 1000.
  ///
  /// [pageToken] - Optional. The continuation token, which is used to page
  /// through large result sets. To get the next page of results, set this
  /// parameter to the value of `nextPageToken` from the previous response.
  ///
  /// [query] - Optional. Set a query `{expression}` for querying tenancy units.
  /// Your `{expression}` must be in the format: `field_name=literal_string`.
  /// The `field_name` is the name of the field you want to compare. Supported
  /// fields are `tenant_resources.tag` and `tenant_resources.resource`. For
  /// example, to search tenancy units that contain at least one tenant resource
  /// with a given tag 'xyz', use the query `tenant_resources.tag=xyz`. To
  /// search tenancy units that contain at least one tenant resource with a
  /// given resource name 'projects/123456', use the query
  /// `tenant_resources.resource=projects/123456`. Multiple expressions can be
  /// joined with `AND`s. Tenancy units must match all expressions to be
  /// included in the result set. For example, `tenant_resources.tag=xyz AND
  /// tenant_resources.resource=projects/123456`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchTenancyUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SearchTenancyUnitsResponse> search(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchTenancyUnitsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ServicesTenancyUnitsResource {
  final commons.ApiRequester _requester;

  ServicesTenancyUnitsResource(commons.ApiRequester client)
      : _requester = client;

  /// Add a new tenant project to the tenancy unit.
  ///
  /// There can be a maximum of 1024 tenant projects in a tenancy unit. If there
  /// are previously failed `AddTenantProject` calls, you might need to call
  /// `RemoveTenantProject` first to resolve them before you can make another
  /// call to `AddTenantProject` with the same tag. Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the tenancy unit. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> addProject(
    AddTenantProjectRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + ':addProject';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Apply a configuration to an existing tenant project.
  ///
  /// This project must exist in an active state and have the original owner
  /// account. The caller must have permission to add a project to the given
  /// tenancy unit. The configuration is applied, but any existing settings on
  /// the project aren't modified. Specified policy bindings are applied.
  /// Existing bindings aren't modified. Specified services are activated. No
  /// service is deactivated. If specified, new billing configuration is
  /// applied. Omit a billing configuration to keep the existing one. A service
  /// account in the project is created if previously non existed. Specified
  /// labels will be appended to tenant project, note that the value of existing
  /// label key will be updated if the same label key is requested. The
  /// specified folder is ignored, as moving a tenant project to a different
  /// folder isn't supported. The operation fails if any of the steps fail, but
  /// no rollback of already applied configuration changes is attempted.
  /// Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> applyProjectConfig(
    ApplyTenantProjectConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':applyProjectConfig';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Attach an existing project to the tenancy unit as a new tenant resource.
  ///
  /// The project could either be the tenant project reserved by calling
  /// `AddTenantProject` under a tenancy unit of a service producer's project of
  /// a managed service, or from a separate project. The caller is checked
  /// against a set of permissions as if calling `AddTenantProject` on the same
  /// service consumer. To trigger the attachment, the targeted tenant project
  /// must be in a folder. Make sure the ServiceConsumerManagement service
  /// account is the owner of that project. These two requirements are already
  /// met if the project is reserved by calling `AddTenantProject`. Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit that the project will be
  /// attached to. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> attachProject(
    AttachTenantProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':attachProject';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a tenancy unit with no tenant resources.
  ///
  /// If tenancy unit already exists, it will be returned, however, in this
  /// case, returned TenancyUnit does not have tenant_resources field set and
  /// ListTenancyUnits has to be used to get a complete TenancyUnit with all
  /// fields populated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. services/{service}/{collection id}/{resource id}
  /// {collection id} is the cloud resource collection type representing the
  /// service consumer, for example 'projects', or 'organizations'. {resource
  /// id} is the consumer numeric id, such as project number: '123456'.
  /// {service} the name of a managed service, such as 'service.googleapis.com'.
  /// Enables service binding using the new tenancy unit.
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TenancyUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<TenancyUnit> create(
    CreateTenancyUnitRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tenancyUnits';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TenancyUnit.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a tenancy unit.
  ///
  /// Before you delete the tenancy unit, there should be no tenant resources in
  /// it that aren't in a DELETED state. Operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit to be deleted.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> delete(
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified project resource identified by a tenant resource
  /// tag.
  ///
  /// The mothod removes a project lien with a 'TenantManager' origin if that
  /// was added. It will then attempt to delete the project. If that operation
  /// fails, this method also fails. After the project has been deleted, the
  /// tenant resource state is set to DELETED. To permanently remove resource
  /// metadata, call the `RemoveTenantProject` method. New resources with the
  /// same tag can't be added if there are existing resources in a DELETED
  /// state. Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> deleteProject(
    DeleteTenantProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':deleteProject';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Find the tenancy unit for a managed service and service consumer.
  ///
  /// This method shouldn't be used in a service producer's runtime path, for
  /// example to find the tenant project number when creating VMs. Service
  /// producers must persist the tenant project's information after the project
  /// is created.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Managed service and service consumer. Required.
  /// services/{service}/{collection id}/{resource id} {collection id} is the
  /// cloud resource collection type representing the service consumer, for
  /// example 'projects', or 'organizations'. {resource id} is the consumer
  /// numeric id, such as project number: '123456'. {service} the name of a
  /// service, such as 'service.googleapis.com'.
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression over tenancy resources field.
  /// Optional.
  ///
  /// [pageSize] - Optional. The maximum number of results returned by this
  /// request.
  ///
  /// [pageToken] - Optional. The continuation token, which is used to page
  /// through large result sets. To get the next page of results, set this
  /// parameter to the value of `nextPageToken` from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTenancyUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListTenancyUnitsResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tenancyUnits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTenancyUnitsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified project resource identified by a tenant resource
  /// tag.
  ///
  /// The method removes the project lien with 'TenantManager' origin if that
  /// was added. It then attempts to delete the project. If that operation
  /// fails, this method also fails. Calls to remove already removed or
  /// non-existent tenant project succeed. After the project has been deleted,
  /// or if was already in a DELETED state, resource metadata is permanently
  /// removed from the tenancy unit. Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> removeProject(
    RemoveTenantProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':removeProject';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Attempts to undelete a previously deleted tenant project.
  ///
  /// The project must be in a DELETED state. There are no guarantees that an
  /// undeleted project will be in a fully restored and functional state. Call
  /// the `ApplyTenantProjectConfig` method to update its configuration and then
  /// validate all managed service resources. Operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the tenancy unit. Such as
  /// 'services/service.googleapis.com/projects/12345/tenancyUnits/abcd'.
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/tenancyUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> undeleteProject(
    UndeleteTenantProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':undeleteProject';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Request to add a newly created and configured tenant project to a tenancy
/// unit.
class AddTenantProjectRequest {
  /// Configuration of the new tenant project to be added to tenancy unit
  /// resources.
  TenantProjectConfig? projectConfig;

  /// Tag of the added project.
  ///
  /// Must be less than 128 characters. Required.
  ///
  /// Required.
  core.String? tag;

  AddTenantProjectRequest({
    this.projectConfig,
    this.tag,
  });

  AddTenantProjectRequest.fromJson(core.Map _json)
      : this(
          projectConfig: _json.containsKey('projectConfig')
              ? TenantProjectConfig.fromJson(
                  _json['projectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectConfig != null) 'projectConfig': projectConfig!,
        if (tag != null) 'tag': tag!,
      };
}

/// Request to apply configuration to an existing tenant project.
class ApplyTenantProjectConfigRequest {
  /// Configuration that should be applied to the existing tenant project.
  TenantProjectConfig? projectConfig;

  /// Tag of the project.
  ///
  /// Must be less than 128 characters. Required.
  ///
  /// Required.
  core.String? tag;

  ApplyTenantProjectConfigRequest({
    this.projectConfig,
    this.tag,
  });

  ApplyTenantProjectConfigRequest.fromJson(core.Map _json)
      : this(
          projectConfig: _json.containsKey('projectConfig')
              ? TenantProjectConfig.fromJson(
                  _json['projectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectConfig != null) 'projectConfig': projectConfig!,
        if (tag != null) 'tag': tag!,
      };
}

/// Request to attach an existing project to the tenancy unit as a new tenant
/// resource.
class AttachTenantProjectRequest {
  /// When attaching an external project, this is in the format of
  /// `projects/{project_number}`.
  core.String? externalResource;

  /// When attaching a reserved project already in tenancy units, this is the
  /// tag of a tenant resource under the tenancy unit for the managed service's
  /// service producer project.
  ///
  /// The reserved tenant resource must be in an active state.
  core.String? reservedResource;

  /// Tag of the tenant resource after attachment.
  ///
  /// Must be less than 128 characters. Required.
  ///
  /// Required.
  core.String? tag;

  AttachTenantProjectRequest({
    this.externalResource,
    this.reservedResource,
    this.tag,
  });

  AttachTenantProjectRequest.fromJson(core.Map _json)
      : this(
          externalResource: _json.containsKey('externalResource')
              ? _json['externalResource'] as core.String
              : null,
          reservedResource: _json.containsKey('reservedResource')
              ? _json['reservedResource'] as core.String
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalResource != null) 'externalResource': externalResource!,
        if (reservedResource != null) 'reservedResource': reservedResource!,
        if (tag != null) 'tag': tag!,
      };
}

/// Describes the billing configuration for a new tenant project.
class BillingConfig {
  /// Name of the billing account.
  ///
  /// For example `billingAccounts/012345-567890-ABCDEF`.
  core.String? billingAccount;

  BillingConfig({
    this.billingAccount,
  });

  BillingConfig.fromJson(core.Map _json)
      : this(
          billingAccount: _json.containsKey('billingAccount')
              ? _json['billingAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingAccount != null) 'billingAccount': billingAccount!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Request to create a tenancy unit for a service consumer of a managed
/// service.
class CreateTenancyUnitRequest {
  /// Optional service producer-provided identifier of the tenancy unit.
  ///
  /// Must be no longer than 40 characters and preferably URI friendly. If it
  /// isn't provided, a UID for the tenancy unit is automatically generated. The
  /// identifier must be unique across a managed service. If the tenancy unit
  /// already exists for the managed service and service consumer pair, calling
  /// `CreateTenancyUnit` returns the existing tenancy unit if the provided
  /// identifier is identical or empty, otherwise the call fails.
  ///
  /// Optional.
  core.String? tenancyUnitId;

  CreateTenancyUnitRequest({
    this.tenancyUnitId,
  });

  CreateTenancyUnitRequest.fromJson(core.Map _json)
      : this(
          tenancyUnitId: _json.containsKey('tenancyUnitId')
              ? _json['tenancyUnitId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tenancyUnitId != null) 'tenancyUnitId': tenancyUnitId!,
      };
}

/// Request message to delete tenant project resource from the tenancy unit.
typedef DeleteTenantProjectRequest = $TenantProjectRequest;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

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

/// Response for the list request.
class ListTenancyUnitsResponse {
  /// Pagination token for large results.
  core.String? nextPageToken;

  /// Tenancy units matching the request.
  core.List<TenancyUnit>? tenancyUnits;

  ListTenancyUnitsResponse({
    this.nextPageToken,
    this.tenancyUnits,
  });

  ListTenancyUnitsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tenancyUnits: _json.containsKey('tenancyUnits')
              ? (_json['tenancyUnits'] as core.List)
                  .map((value) => TenancyUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenancyUnits != null) 'tenancyUnits': tenancyUnits!,
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
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

/// Translates to IAM Policy bindings (without auditing at this level)
class PolicyBinding {
  /// Uses the same format as in IAM policy.
  ///
  /// `member` must include both a prefix and ID. For example, `user:{emailId}`,
  /// `serviceAccount:{emailId}`, `group:{emailId}`.
  core.List<core.String>? members;

  /// Role.
  ///
  /// (https://cloud.google.com/iam/docs/understanding-roles) For example,
  /// `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  PolicyBinding({
    this.members,
    this.role,
  });

  PolicyBinding.fromJson(core.Map _json)
      : this(
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message to remove a tenant project resource from the tenancy unit.
typedef RemoveTenantProjectRequest = $TenantProjectRequest;

/// Response for the search query.
class SearchTenancyUnitsResponse {
  /// Pagination token for large results.
  core.String? nextPageToken;

  /// Tenancy Units matching the request.
  core.List<TenancyUnit>? tenancyUnits;

  SearchTenancyUnitsResponse({
    this.nextPageToken,
    this.tenancyUnits,
  });

  SearchTenancyUnitsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tenancyUnits: _json.containsKey('tenancyUnits')
              ? (_json['tenancyUnits'] as core.List)
                  .map((value) => TenancyUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenancyUnits != null) 'tenancyUnits': tenancyUnits!,
      };
}

/// Describes the service account configuration for the tenant project.
class ServiceAccountConfig {
  /// ID of the IAM service account to be created in tenant project.
  ///
  /// The email format of the service account is "@.iam.gserviceaccount.com".
  /// This account ID must be unique within tenant project and service producers
  /// have to guarantee it. The ID must be 6-30 characters long, and match the
  /// following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])`.
  core.String? accountId;

  /// Roles for the associated service account for the tenant project.
  core.List<core.String>? tenantProjectRoles;

  ServiceAccountConfig({
    this.accountId,
    this.tenantProjectRoles,
  });

  ServiceAccountConfig.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          tenantProjectRoles: _json.containsKey('tenantProjectRoles')
              ? (_json['tenantProjectRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (tenantProjectRoles != null)
          'tenantProjectRoles': tenantProjectRoles!,
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

/// Representation of a tenancy unit.
class TenancyUnit {
  /// @OutputOnly Cloud resource name of the consumer of this service.
  ///
  /// For example 'projects/123456'.
  ///
  /// Output only.
  core.String? consumer;

  /// @OutputOnly The time this tenancy unit was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Globally unique identifier of this tenancy unit
  /// "services/{service}/{collection id}/{resource id}/tenancyUnits/{unit}"
  core.String? name;

  /// Google Cloud API name of the managed service owning this tenancy unit.
  ///
  /// For example 'serviceconsumermanagement.googleapis.com'.
  ///
  /// Output only.
  core.String? service;

  /// Resources constituting the tenancy unit.
  ///
  /// There can be at most 512 tenant resources in a tenancy unit.
  core.List<TenantResource>? tenantResources;

  TenancyUnit({
    this.consumer,
    this.createTime,
    this.name,
    this.service,
    this.tenantResources,
  });

  TenancyUnit.fromJson(core.Map _json)
      : this(
          consumer: _json.containsKey('consumer')
              ? _json['consumer'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          tenantResources: _json.containsKey('tenantResources')
              ? (_json['tenantResources'] as core.List)
                  .map((value) => TenantResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumer != null) 'consumer': consumer!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (tenantResources != null) 'tenantResources': tenantResources!,
      };
}

/// This structure defines a tenant project to be added to the specified tenancy
/// unit and its initial configuration and properties.
///
/// A project lien is created for the tenant project to prevent the tenant
/// project from being deleted accidentally. The lien is deleted as part of
/// tenant project removal.
class TenantProjectConfig {
  /// Billing account properties.
  ///
  /// The billing account must be specified.
  BillingConfig? billingConfig;

  /// Folder where project in this tenancy unit must be located This folder must
  /// have been previously created with the required permissions for the caller
  /// to create and configure a project in it.
  ///
  /// Valid folder resource names have the format `folders/{folder_number}` (for
  /// example, `folders/123456`).
  core.String? folder;

  /// Labels that are applied to this project.
  core.Map<core.String, core.String>? labels;

  /// Configuration for the IAM service account on the tenant project.
  ServiceAccountConfig? serviceAccountConfig;

  /// Google Cloud API names of services that are activated on this project
  /// during provisioning.
  ///
  /// If any of these services can't be activated, the request fails. For
  /// example: 'compute.googleapis.com','cloudfunctions.googleapis.com'
  core.List<core.String>? services;

  /// Describes ownership and policies for the new tenant project.
  ///
  /// Required.
  TenantProjectPolicy? tenantProjectPolicy;

  TenantProjectConfig({
    this.billingConfig,
    this.folder,
    this.labels,
    this.serviceAccountConfig,
    this.services,
    this.tenantProjectPolicy,
  });

  TenantProjectConfig.fromJson(core.Map _json)
      : this(
          billingConfig: _json.containsKey('billingConfig')
              ? BillingConfig.fromJson(
                  _json['billingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          folder: _json.containsKey('folder')
              ? _json['folder'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          serviceAccountConfig: _json.containsKey('serviceAccountConfig')
              ? ServiceAccountConfig.fromJson(_json['serviceAccountConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tenantProjectPolicy: _json.containsKey('tenantProjectPolicy')
              ? TenantProjectPolicy.fromJson(_json['tenantProjectPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingConfig != null) 'billingConfig': billingConfig!,
        if (folder != null) 'folder': folder!,
        if (labels != null) 'labels': labels!,
        if (serviceAccountConfig != null)
          'serviceAccountConfig': serviceAccountConfig!,
        if (services != null) 'services': services!,
        if (tenantProjectPolicy != null)
          'tenantProjectPolicy': tenantProjectPolicy!,
      };
}

/// Describes policy settings that need to be applied to a newly created tenant
/// project.
class TenantProjectPolicy {
  /// Policy bindings to be applied to the tenant project, in addition to the
  /// 'roles/owner' role granted to the Service Consumer Management service
  /// account.
  ///
  /// At least one binding must have the role `roles/owner`.
  core.List<PolicyBinding>? policyBindings;

  TenantProjectPolicy({
    this.policyBindings,
  });

  TenantProjectPolicy.fromJson(core.Map _json)
      : this(
          policyBindings: _json.containsKey('policyBindings')
              ? (_json['policyBindings'] as core.List)
                  .map((value) => PolicyBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyBindings != null) 'policyBindings': policyBindings!,
      };
}

/// Resource constituting the TenancyUnit.
class TenantResource {
  /// @OutputOnly Identifier of the tenant resource.
  ///
  /// For cloud projects, it is in the form 'projects/{number}'. For example
  /// 'projects/123456'.
  ///
  /// Output only.
  core.String? resource;

  /// Status of tenant resource.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified status is the default unset value.
  /// - "PENDING_CREATE" : Creation of the tenant resource is ongoing.
  /// - "ACTIVE" : Active resource.
  /// - "PENDING_DELETE" : Deletion of the resource is ongoing.
  /// - "FAILED" : Tenant resource creation or deletion has failed.
  /// - "DELETED" : Tenant resource has been deleted.
  core.String? status;

  /// Unique per single tenancy unit.
  core.String? tag;

  TenantResource({
    this.resource,
    this.status,
    this.tag,
  });

  TenantResource.fromJson(core.Map _json)
      : this(
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
        if (status != null) 'status': status!,
        if (tag != null) 'tag': tag!,
      };
}

/// Request message to undelete tenant project resource previously deleted from
/// the tenancy unit.
typedef UndeleteTenantProjectRequest = $TenantProjectRequest;
