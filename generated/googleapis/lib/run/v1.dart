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

/// Cloud Run Admin API - v1
///
/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests. The Cloud Run Admin API follows the Knative
/// Serving API specification.
///
/// For more information, see <https://cloud.google.com/run/>
///
/// Create an instance of [CloudRunApi] to access these resources:
///
/// - [NamespacesResource]
///   - [NamespacesAuthorizeddomainsResource]
///   - [NamespacesConfigurationsResource]
///   - [NamespacesDomainmappingsResource]
///   - [NamespacesRevisionsResource]
///   - [NamespacesRoutesResource]
///   - [NamespacesServicesResource]
/// - [ProjectsResource]
///   - [ProjectsAuthorizeddomainsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAuthorizeddomainsResource]
///     - [ProjectsLocationsConfigurationsResource]
///     - [ProjectsLocationsDomainmappingsResource]
///     - [ProjectsLocationsRevisionsResource]
///     - [ProjectsLocationsRoutesResource]
///     - [ProjectsLocationsServicesResource]
library run.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests.
///
/// The Cloud Run Admin API follows the Knative Serving API specification.
class CloudRunApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  NamespacesResource get namespaces => NamespacesResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRunApi(http.Client client,
      {core.String rootUrl = 'https://run.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class NamespacesResource {
  final commons.ApiRequester _requester;

  NamespacesAuthorizeddomainsResource get authorizeddomains =>
      NamespacesAuthorizeddomainsResource(_requester);
  NamespacesConfigurationsResource get configurations =>
      NamespacesConfigurationsResource(_requester);
  NamespacesDomainmappingsResource get domainmappings =>
      NamespacesDomainmappingsResource(_requester);
  NamespacesRevisionsResource get revisions =>
      NamespacesRevisionsResource(_requester);
  NamespacesRoutesResource get routes => NamespacesRoutesResource(_requester);
  NamespacesServicesResource get services =>
      NamespacesServicesResource(_requester);

  NamespacesResource(commons.ApiRequester client) : _requester = client;
}

class NamespacesAuthorizeddomainsResource {
  final commons.ApiRequester _requester;

  NamespacesAuthorizeddomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// List authorized domains.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent Project resource. Example:
  /// `projects/myproject`.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
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

    final _url = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/authorizeddomains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesConfigurationsResource {
  final commons.ApiRequester _requester;

  NamespacesConfigurationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get information about a configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the configuration to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/configurations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Configuration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Configuration> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Configuration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the configurations should be listed.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConfigurationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConfigurationsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/configurations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConfigurationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesDomainmappingsResource {
  final commons.ApiRequester _requester;

  NamespacesDomainmappingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new domain mapping.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace in which the domain mapping should be created.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> create(
    DomainMapping request,
    core.String parent, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/domainmappings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DomainMapping.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the domain mapping to delete. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/domainmappings/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/domains.cloudrun.com/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the domain mapping to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/domainmappings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/domains.cloudrun.com/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DomainMapping.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List domain mappings.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the domain mappings should be listed.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainMappingsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/domainmappings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDomainMappingsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesRevisionsResource {
  final commons.ApiRequester _requester;

  NamespacesRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to delete. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Revision.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List revisions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the revisions should be listed. For
  /// Cloud Run (fully managed), replace {namespace_id} with the project ID or
  /// number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRevisionsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/revisions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRevisionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesRoutesResource {
  final commons.ApiRequester _requester;

  NamespacesRoutesResource(commons.ApiRequester client) : _requester = client;

  /// Get information about a route.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the route to retrieve. For Cloud Run (fully managed),
  /// replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/routes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List routes.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the routes should be listed. For Cloud
  /// Run (fully managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRoutesResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/routes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesServicesResource {
  final commons.ApiRequester _requester;

  NamespacesServicesResource(commons.ApiRequester client) : _requester = client;

  /// Create a service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace in which the service should be created. For Cloud
  /// Run (fully managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
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
  async.Future<Service> create(
    Service request,
    core.String parent, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/services';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a service.
  ///
  /// This will cause the Service to stop serving traffic and will delete the
  /// child entities like Routes, Configurations and Revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service to delete. For Cloud Run (fully managed),
  /// replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/services/\[^/\]+$`.
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

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List services.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the services should be listed. For
  /// Cloud Run (fully managed), replace {namespace_id} with the project ID or
  /// number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
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
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/services';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Replace a service.
  ///
  /// Only the spec and metadata labels and annotations are modifiable. After
  /// the Update request, Cloud Run will work to make the 'status' match the
  /// requested 'spec'. May provide metadata.resourceVersion to enforce update
  /// from last read for optimistic concurrency control.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service being replaced. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
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
  async.Future<Service> replaceService(
    Service request,
    core.String name, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAuthorizeddomainsResource get authorizeddomains =>
      ProjectsAuthorizeddomainsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAuthorizeddomainsResource {
  final commons.ApiRequester _requester;

  ProjectsAuthorizeddomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// List authorized domains.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent Project resource. Example:
  /// `projects/myproject`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/authorizeddomains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizeddomainsResource get authorizeddomains =>
      ProjectsLocationsAuthorizeddomainsResource(_requester);
  ProjectsLocationsConfigurationsResource get configurations =>
      ProjectsLocationsConfigurationsResource(_requester);
  ProjectsLocationsDomainmappingsResource get domainmappings =>
      ProjectsLocationsDomainmappingsResource(_requester);
  ProjectsLocationsRevisionsResource get revisions =>
      ProjectsLocationsRevisionsResource(_requester);
  ProjectsLocationsRoutesResource get routes =>
      ProjectsLocationsRoutesResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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

class ProjectsLocationsAuthorizeddomainsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizeddomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// List authorized domains.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the parent Project resource. Example:
  /// `projects/myproject`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum results to return per page.
  ///
  /// [pageToken] - Continuation token for fetching the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizedDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizedDomainsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/authorizeddomains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConfigurationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConfigurationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get information about a configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the configuration to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/configurations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Configuration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Configuration> get(
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
    return Configuration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the configurations should be listed.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConfigurationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConfigurationsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/configurations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConfigurationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDomainmappingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDomainmappingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new domain mapping.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace in which the domain mapping should be created.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> create(
    DomainMapping request,
    core.String parent, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/domainmappings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DomainMapping.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the domain mapping to delete. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/domainmappings/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the domain mapping to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/domainmappings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DomainMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DomainMapping> get(
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
    return DomainMapping.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List domain mappings.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the domain mappings should be listed.
  /// For Cloud Run (fully managed), replace {namespace_id} with the project ID
  /// or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainMappingsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/domainmappings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDomainMappingsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to delete. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> get(
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
    return Revision.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List revisions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the revisions should be listed. For
  /// Cloud Run (fully managed), replace {namespace_id} with the project ID or
  /// number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRevisionsResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRevisionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Get information about a route.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the route to retrieve. For Cloud Run (fully managed),
  /// replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/routes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> get(
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
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List routes.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the routes should be listed. For Cloud
  /// Run (fully managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRoutesResponse> list(
    core.String parent, {
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/routes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace in which the service should be created. For Cloud
  /// Run (fully managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
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
  async.Future<Service> create(
    Service request,
    core.String parent, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a service.
  ///
  /// This will cause the Service to stop serving traffic and will delete the
  /// child entities like Routes, Configurations and Revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service to delete. For Cloud Run (fully managed),
  /// replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [apiVersion] - Cloud Run currently ignores this parameter.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Specifies the propagation policy of delete. Cloud
  /// Run currently ignores this setting, and deletes in the background. Please
  /// see kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/
  /// for more information.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Status].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Status> delete(
    core.String name, {
    core.String? apiVersion,
    core.String? dryRun,
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Status.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service to retrieve. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get the IAM Access Control policy currently in effect for the given Cloud
  /// Run service.
  ///
  /// This result does not include any inherited policies.
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
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List services.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the services should be listed. For
  /// Cloud Run (fully managed), replace {namespace_id} with the project ID or
  /// number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Allows to filter resources based on a specific value for
  /// a field name. Send this in a query string format. i.e.
  /// 'metadata.name%3Dlorem'. Not currently used by Cloud Run.
  ///
  /// [includeUninitialized] - Not currently used by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - The baseline resource version from which the list or
  /// watch operation should start. Not currently used by Cloud Run.
  ///
  /// [watch] - Flag that indicates that the client expects to watch this
  /// resource as well. Not currently used by Cloud Run.
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
    core.String? continue_,
    core.String? fieldSelector,
    core.bool? includeUninitialized,
    core.String? labelSelector,
    core.int? limit,
    core.String? resourceVersion,
    core.bool? watch,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (continue_ != null) 'continue': [continue_],
      if (fieldSelector != null) 'fieldSelector': [fieldSelector],
      if (includeUninitialized != null)
        'includeUninitialized': ['${includeUninitialized}'],
      if (labelSelector != null) 'labelSelector': [labelSelector],
      if (limit != null) 'limit': ['${limit}'],
      if (resourceVersion != null) 'resourceVersion': [resourceVersion],
      if (watch != null) 'watch': ['${watch}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListServicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Replace a service.
  ///
  /// Only the spec and metadata labels and annotations are modifiable. After
  /// the Update request, Cloud Run will work to make the 'status' match the
  /// requested 'spec'. May provide metadata.resourceVersion to enforce update
  /// from last read for optimistic concurrency control.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the service being replaced. For Cloud Run (fully
  /// managed), replace {namespace_id} with the project ID or number.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
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
  async.Future<Service> replaceService(
    Service request,
    core.String name, {
    core.String? dryRun,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Service.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM Access control policy for the specified Service.
  ///
  /// Overwrites any existing policy.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// There are no permissions required for making this API call.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

/// Information for connecting over HTTP(s).
class Addressable {
  core.String? url;

  Addressable({
    this.url,
  });

  Addressable.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
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
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
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
                  .map((value) => value as core.String)
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

/// A domain that a user has been authorized to administer.
///
/// To authorize use of a domain, verify ownership via
/// [Webmaster Central](https://www.google.com/webmasters/verification/home).
class AuthorizedDomain {
  /// Relative name of the domain authorized for use.
  ///
  /// Example: `example.com`.
  core.String? id;

  /// Deprecated Read only.
  ///
  /// Full path to the `AuthorizedDomain` resource in the API. Example:
  /// `projects/myproject/authorizedDomains/example.com`.
  core.String? name;

  AuthorizedDomain({
    this.id,
    this.name,
  });

  AuthorizedDomain.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Not supported by Cloud Run ConfigMapEnvSource selects a ConfigMap to
/// populate the environment variables with.
///
/// The contents of the target ConfigMap's Data field will represent the
/// key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  LocalObjectReference? localObjectReference;

  /// The ConfigMap to select from.
  core.String? name;

  /// (Optional) Specify whether the ConfigMap must be defined
  core.bool? optional;

  ConfigMapEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  ConfigMapEnvSource.fromJson(core.Map _json)
      : this(
          localObjectReference: _json.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(_json['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localObjectReference != null)
          'localObjectReference': localObjectReference!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// Not supported by Cloud Run Selects a key from a ConfigMap.
class ConfigMapKeySelector {
  /// The key to select.
  core.String? key;

  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  LocalObjectReference? localObjectReference;

  /// The ConfigMap to select from.
  core.String? name;

  /// (Optional) Specify whether the ConfigMap or its key must be defined
  core.bool? optional;

  ConfigMapKeySelector({
    this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  ConfigMapKeySelector.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          localObjectReference: _json.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(_json['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (localObjectReference != null)
          'localObjectReference': localObjectReference!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// Not supported by Cloud Run Adapts a ConfigMap into a volume.
///
/// The contents of the target ConfigMap's Data field will be presented in a
/// volume as files using the keys in the Data field as the file names, unless
/// the items element is populated with specific mappings of keys to paths.
class ConfigMapVolumeSource {
  /// (Optional) Mode bits to use on created files by default.
  ///
  /// Must be a value between 0 and 0777. Defaults to 0644. Directories within
  /// the path are not affected by this setting. This might be in conflict with
  /// other options that affect the file mode, like fsGroup, and the result can
  /// be other mode bits set.
  core.int? defaultMode;

  /// (Optional) If unspecified, each key-value pair in the Data field of the
  /// referenced Secret will be projected into the volume as a file whose name
  /// is the key and content is the value.
  ///
  /// If specified, the listed keys will be projected into the specified paths,
  /// and unlisted keys will not be present. If a key is specified that is not
  /// present in the Secret, the volume setup will error unless it is marked
  /// optional.
  core.List<KeyToPath>? items;

  /// Name of the config.
  core.String? name;

  /// (Optional) Specify whether the Secret or its keys must be defined.
  core.bool? optional;

  ConfigMapVolumeSource({
    this.defaultMode,
    this.items,
    this.name,
    this.optional,
  });

  ConfigMapVolumeSource.fromJson(core.Map _json)
      : this(
          defaultMode: _json.containsKey('defaultMode')
              ? _json['defaultMode'] as core.int
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => KeyToPath.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultMode != null) 'defaultMode': defaultMode!,
        if (items != null) 'items': items!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// Configuration represents the "floating HEAD" of a linear history of
/// Revisions, and optionally how the containers those revisions reference are
/// built.
///
/// Users create new Revisions by updating the Configuration's spec. The "latest
/// created" revision's name is available under status, as is the "latest ready"
/// revision's name. See also:
/// https://github.com/knative/serving/blob/main/docs/spec/overview.md#configuration
class Configuration {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// The kind of resource, in this case always "Configuration".
  core.String? kind;

  /// Metadata associated with this Configuration, including name, namespace,
  /// labels, and annotations.
  ObjectMeta? metadata;

  /// Spec holds the desired state of the Configuration (from the client).
  ConfigurationSpec? spec;

  /// Status communicates the observed state of the Configuration (from the
  /// controller).
  ConfigurationStatus? status;

  Configuration({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Configuration.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? ConfigurationSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? ConfigurationStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
      };
}

/// ConfigurationSpec holds the desired state of the Configuration (from the
/// client).
class ConfigurationSpec {
  /// Template holds the latest specification for the Revision to be stamped
  /// out.
  RevisionTemplate? template;

  ConfigurationSpec({
    this.template,
  });

  ConfigurationSpec.fromJson(core.Map _json)
      : this(
          template: _json.containsKey('template')
              ? RevisionTemplate.fromJson(
                  _json['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
      };
}

/// ConfigurationStatus communicates the observed state of the Configuration
/// (from the controller).
class ConfigurationStatus {
  /// Conditions communicates information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// LatestCreatedRevisionName is the last revision that was created from this
  /// Configuration.
  ///
  /// It might not be ready yet, for that use LatestReadyRevisionName.
  core.String? latestCreatedRevisionName;

  /// LatestReadyRevisionName holds the name of the latest Revision stamped out
  /// from this Configuration that has had its "Ready" condition become "True".
  core.String? latestReadyRevisionName;

  /// ObservedGeneration is the 'Generation' of the Configuration that was last
  /// processed by the controller.
  ///
  /// The observed generation is updated even if the controller failed to
  /// process the spec and create the Revision. Clients polling for completed
  /// reconciliation should poll until observedGeneration = metadata.generation,
  /// and the Ready condition's status is True or False.
  core.int? observedGeneration;

  ConfigurationStatus({
    this.conditions,
    this.latestCreatedRevisionName,
    this.latestReadyRevisionName,
    this.observedGeneration,
  });

  ConfigurationStatus.fromJson(core.Map _json)
      : this(
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          latestCreatedRevisionName:
              _json.containsKey('latestCreatedRevisionName')
                  ? _json['latestCreatedRevisionName'] as core.String
                  : null,
          latestReadyRevisionName: _json.containsKey('latestReadyRevisionName')
              ? _json['latestReadyRevisionName'] as core.String
              : null,
          observedGeneration: _json.containsKey('observedGeneration')
              ? _json['observedGeneration'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (latestCreatedRevisionName != null)
          'latestCreatedRevisionName': latestCreatedRevisionName!,
        if (latestReadyRevisionName != null)
          'latestReadyRevisionName': latestReadyRevisionName!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
      };
}

/// A single application container.
///
/// This specifies both the container to run, the command to run in the
/// container and the arguments to supply to it. Note that additional arguments
/// may be supplied by the system to the container at runtime.
class Container {
  /// (Optional) Arguments to the entrypoint.
  ///
  /// The docker image's CMD is used if this is not provided. Variable
  /// references $(VAR_NAME) are expanded using the container's environment. If
  /// a variable cannot be resolved, the reference in the input string will be
  /// unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie:
  /// $$(VAR_NAME). Escaped references will never be expanded, regardless of
  /// whether the variable exists or not. More info:
  /// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  core.List<core.String>? args;
  core.List<core.String>? command;

  /// (Optional) List of environment variables to set in the container.
  core.List<EnvVar>? env;

  /// (Optional) List of sources to populate environment variables in the
  /// container.
  ///
  /// The keys defined within a source must be a C_IDENTIFIER. All invalid keys
  /// will be reported as an event when the container is starting. When a key
  /// exists in multiple sources, the value associated with the last source will
  /// take precedence. Values defined by an Env with a duplicate key will take
  /// precedence. Cannot be updated.
  core.List<EnvFromSource>? envFrom;

  /// Only supports containers from Google Container Registry or Artifact
  /// Registry URL of the Container image.
  ///
  /// More info: https://kubernetes.io/docs/concepts/containers/images
  core.String? image;

  /// (Optional) Image pull policy.
  ///
  /// One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is
  /// specified, or IfNotPresent otherwise. More info:
  /// https://kubernetes.io/docs/concepts/containers/images#updating-images
  core.String? imagePullPolicy;

  /// (Optional) Periodic probe of container liveness.
  ///
  /// Container will be restarted if the probe fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  Probe? livenessProbe;

  /// (Optional) Name of the container specified as a DNS_LABEL.
  ///
  /// Currently unused in Cloud Run. More info:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#dns-label-names
  core.String? name;

  /// (Optional) List of ports to expose from the container.
  ///
  /// Only a single port can be specified. The specified ports must be listening
  /// on all interfaces (0.0.0.0) within the container to be accessible. If
  /// omitted, a port number will be chosen and passed to the container through
  /// the PORT environment variable for the container to listen on.
  core.List<ContainerPort>? ports;

  /// (Optional) Periodic probe of container service readiness.
  ///
  /// Container will be removed from service endpoints if the probe fails. More
  /// info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  Probe? readinessProbe;

  /// (Optional) Compute Resources required by this container.
  ///
  /// More info:
  /// https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  ResourceRequirements? resources;

  /// (Optional) Security options the pod should run with.
  ///
  /// More info: https://kubernetes.io/docs/concepts/policy/security-context/
  /// More info:
  /// https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
  SecurityContext? securityContext;

  /// (Optional) Startup probe of application within the container.
  ///
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not be added to service endpoints if the probe
  /// fails. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  Probe? startupProbe;

  /// (Optional) Path at which the file to which the container's termination
  /// message will be written is mounted into the container's filesystem.
  ///
  /// Message written is intended to be brief final status, such as an assertion
  /// failure message. Will be truncated by the node if greater than 4096 bytes.
  /// The total message length across all containers will be limited to 12kb.
  /// Defaults to /dev/termination-log.
  core.String? terminationMessagePath;

  /// (Optional) Indicate how the termination message should be populated.
  ///
  /// File will use the contents of terminationMessagePath to populate the
  /// container status message on both success and failure.
  /// FallbackToLogsOnError will use the last chunk of container log output if
  /// the termination message file is empty and the container exited with an
  /// error. The log output is limited to 2048 bytes or 80 lines, whichever is
  /// smaller. Defaults to File. Cannot be updated.
  core.String? terminationMessagePolicy;

  /// (Optional) Volume to mount into the container's filesystem.
  ///
  /// Only supports SecretVolumeSources. Pod volumes to mount into the
  /// container's filesystem.
  core.List<VolumeMount>? volumeMounts;

  /// (Optional) Container's working directory.
  ///
  /// If not specified, the container runtime's default will be used, which
  /// might be configured in the container image.
  core.String? workingDir;

  Container({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.livenessProbe,
    this.name,
    this.ports,
    this.readinessProbe,
    this.resources,
    this.securityContext,
    this.startupProbe,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.volumeMounts,
    this.workingDir,
  });

  Container.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          command: _json.containsKey('command')
              ? (_json['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => EnvVar.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          envFrom: _json.containsKey('envFrom')
              ? (_json['envFrom'] as core.List)
                  .map((value) => EnvFromSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image:
              _json.containsKey('image') ? _json['image'] as core.String : null,
          imagePullPolicy: _json.containsKey('imagePullPolicy')
              ? _json['imagePullPolicy'] as core.String
              : null,
          livenessProbe: _json.containsKey('livenessProbe')
              ? Probe.fromJson(
                  _json['livenessProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ports: _json.containsKey('ports')
              ? (_json['ports'] as core.List)
                  .map((value) => ContainerPort.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readinessProbe: _json.containsKey('readinessProbe')
              ? Probe.fromJson(_json['readinessProbe']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resources: _json.containsKey('resources')
              ? ResourceRequirements.fromJson(
                  _json['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          securityContext: _json.containsKey('securityContext')
              ? SecurityContext.fromJson(_json['securityContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startupProbe: _json.containsKey('startupProbe')
              ? Probe.fromJson(
                  _json['startupProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          terminationMessagePath: _json.containsKey('terminationMessagePath')
              ? _json['terminationMessagePath'] as core.String
              : null,
          terminationMessagePolicy:
              _json.containsKey('terminationMessagePolicy')
                  ? _json['terminationMessagePolicy'] as core.String
                  : null,
          volumeMounts: _json.containsKey('volumeMounts')
              ? (_json['volumeMounts'] as core.List)
                  .map((value) => VolumeMount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workingDir: _json.containsKey('workingDir')
              ? _json['workingDir'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (command != null) 'command': command!,
        if (env != null) 'env': env!,
        if (envFrom != null) 'envFrom': envFrom!,
        if (image != null) 'image': image!,
        if (imagePullPolicy != null) 'imagePullPolicy': imagePullPolicy!,
        if (livenessProbe != null) 'livenessProbe': livenessProbe!,
        if (name != null) 'name': name!,
        if (ports != null) 'ports': ports!,
        if (readinessProbe != null) 'readinessProbe': readinessProbe!,
        if (resources != null) 'resources': resources!,
        if (securityContext != null) 'securityContext': securityContext!,
        if (startupProbe != null) 'startupProbe': startupProbe!,
        if (terminationMessagePath != null)
          'terminationMessagePath': terminationMessagePath!,
        if (terminationMessagePolicy != null)
          'terminationMessagePolicy': terminationMessagePolicy!,
        if (volumeMounts != null) 'volumeMounts': volumeMounts!,
        if (workingDir != null) 'workingDir': workingDir!,
      };
}

/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// (Optional) Port number the container listens on.
  ///
  /// This must be a valid port number, 0 < x < 65536.
  core.int? containerPort;

  /// (Optional) If specified, used to specify which protocol to use.
  ///
  /// Allowed values are "http1" and "h2c".
  core.String? name;

  /// (Optional) Protocol for port.
  ///
  /// Must be "TCP". Defaults to "TCP".
  core.String? protocol;

  ContainerPort({
    this.containerPort,
    this.name,
    this.protocol,
  });

  ContainerPort.fromJson(core.Map _json)
      : this(
          containerPort: _json.containsKey('containerPort')
              ? _json['containerPort'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerPort != null) 'containerPort': containerPort!,
        if (name != null) 'name': name!,
        if (protocol != null) 'protocol': protocol!,
      };
}

/// Resource to hold the state and status of a user's domain mapping.
///
/// NOTE: This resource is currently in Beta.
class DomainMapping {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  core.String? apiVersion;

  /// The kind of resource, in this case "DomainMapping".
  core.String? kind;

  /// Metadata associated with this BuildTemplate.
  ObjectMeta? metadata;

  /// The spec for this DomainMapping.
  DomainMappingSpec? spec;

  /// The current status of the DomainMapping.
  DomainMappingStatus? status;

  DomainMapping({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  DomainMapping.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? DomainMappingSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? DomainMappingStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
      };
}

/// The desired state of the Domain Mapping.
class DomainMappingSpec {
  /// The mode of the certificate.
  /// Possible string values are:
  /// - "CERTIFICATE_MODE_UNSPECIFIED"
  /// - "NONE" : Do not provision an HTTPS certificate.
  /// - "AUTOMATIC" : Automatically provisions an HTTPS certificate via GoogleCA
  /// or LetsEncrypt.
  core.String? certificateMode;

  /// If set, the mapping will override any mapping set before this spec was
  /// set.
  ///
  /// It is recommended that the user leaves this empty to receive an error
  /// warning about a potential conflict and only set it once the respective UI
  /// has given such a warning.
  core.bool? forceOverride;

  /// The name of the Knative Route that this DomainMapping applies to.
  ///
  /// The route must exist.
  core.String? routeName;

  DomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    this.routeName,
  });

  DomainMappingSpec.fromJson(core.Map _json)
      : this(
          certificateMode: _json.containsKey('certificateMode')
              ? _json['certificateMode'] as core.String
              : null,
          forceOverride: _json.containsKey('forceOverride')
              ? _json['forceOverride'] as core.bool
              : null,
          routeName: _json.containsKey('routeName')
              ? _json['routeName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateMode != null) 'certificateMode': certificateMode!,
        if (forceOverride != null) 'forceOverride': forceOverride!,
        if (routeName != null) 'routeName': routeName!,
      };
}

/// The current state of the Domain Mapping.
class DomainMappingStatus {
  /// Array of observed DomainMappingConditions, indicating the current state of
  /// the DomainMapping.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// The name of the route that the mapping currently points to.
  core.String? mappedRouteName;

  /// ObservedGeneration is the 'Generation' of the DomainMapping that was last
  /// processed by the controller.
  ///
  /// Clients polling for completed reconciliation should poll until
  /// observedGeneration = metadata.generation and the Ready condition's status
  /// is True or False.
  core.int? observedGeneration;

  /// The resource records required to configure this domain mapping.
  ///
  /// These records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.
  core.List<ResourceRecord>? resourceRecords;

  /// Cloud Run fully managed: not supported Cloud Run on GKE: supported Holds
  /// the URL that will serve the traffic of the DomainMapping.
  ///
  /// Optional.
  core.String? url;

  DomainMappingStatus({
    this.conditions,
    this.mappedRouteName,
    this.observedGeneration,
    this.resourceRecords,
    this.url,
  });

  DomainMappingStatus.fromJson(core.Map _json)
      : this(
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mappedRouteName: _json.containsKey('mappedRouteName')
              ? _json['mappedRouteName'] as core.String
              : null,
          observedGeneration: _json.containsKey('observedGeneration')
              ? _json['observedGeneration'] as core.int
              : null,
          resourceRecords: _json.containsKey('resourceRecords')
              ? (_json['resourceRecords'] as core.List)
                  .map((value) => ResourceRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (mappedRouteName != null) 'mappedRouteName': mappedRouteName!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (resourceRecords != null) 'resourceRecords': resourceRecords!,
        if (url != null) 'url': url!,
      };
}

/// Not supported by Cloud Run EnvFromSource represents the source of a set of
/// ConfigMaps
class EnvFromSource {
  /// (Optional) The ConfigMap to select from
  ConfigMapEnvSource? configMapRef;

  /// (Optional) An optional identifier to prepend to each key in the ConfigMap.
  ///
  /// Must be a C_IDENTIFIER.
  core.String? prefix;

  /// (Optional) The Secret to select from
  SecretEnvSource? secretRef;

  EnvFromSource({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  EnvFromSource.fromJson(core.Map _json)
      : this(
          configMapRef: _json.containsKey('configMapRef')
              ? ConfigMapEnvSource.fromJson(
                  _json['configMapRef'] as core.Map<core.String, core.dynamic>)
              : null,
          prefix: _json.containsKey('prefix')
              ? _json['prefix'] as core.String
              : null,
          secretRef: _json.containsKey('secretRef')
              ? SecretEnvSource.fromJson(
                  _json['secretRef'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMapRef != null) 'configMapRef': configMapRef!,
        if (prefix != null) 'prefix': prefix!,
        if (secretRef != null) 'secretRef': secretRef!,
      };
}

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// Name of the environment variable.
  ///
  /// Must be a C_IDENTIFIER.
  core.String? name;

  /// (Optional) Variable references $(VAR_NAME) are expanded using the previous
  /// defined environment variables in the container and any route environment
  /// variables.
  ///
  /// If a variable cannot be resolved, the reference in the input string will
  /// be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie:
  /// $$(VAR_NAME). Escaped references will never be expanded, regardless of
  /// whether the variable exists or not. Defaults to "".
  core.String? value;

  /// (Optional) Source for the environment variable's value.
  ///
  /// Only supports secret_key_ref. Source for the environment variable's value.
  /// Cannot be used if value is not empty.
  EnvVarSource? valueFrom;

  EnvVar({
    this.name,
    this.value,
    this.valueFrom,
  });

  EnvVar.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
          valueFrom: _json.containsKey('valueFrom')
              ? EnvVarSource.fromJson(
                  _json['valueFrom'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
        if (valueFrom != null) 'valueFrom': valueFrom!,
      };
}

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// (Optional) Not supported by Cloud Run Selects a key of a ConfigMap.
  ConfigMapKeySelector? configMapKeyRef;

  /// (Optional) Selects a key (version) of a secret in Secret Manager.
  SecretKeySelector? secretKeyRef;

  EnvVarSource({
    this.configMapKeyRef,
    this.secretKeyRef,
  });

  EnvVarSource.fromJson(core.Map _json)
      : this(
          configMapKeyRef: _json.containsKey('configMapKeyRef')
              ? ConfigMapKeySelector.fromJson(_json['configMapKeyRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secretKeyRef: _json.containsKey('secretKeyRef')
              ? SecretKeySelector.fromJson(
                  _json['secretKeyRef'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMapKeyRef != null) 'configMapKeyRef': configMapKeyRef!,
        if (secretKeyRef != null) 'secretKeyRef': secretKeyRef!,
      };
}

/// Not supported by Cloud Run ExecAction describes a "run in container" action.
class ExecAction {
  /// (Optional) Command is the command line to execute inside the container,
  /// the working directory for the command is root ('/') in the container's
  /// filesystem.
  ///
  /// The command is simply exec'd, it is not run inside a shell, so traditional
  /// shell instructions ('|', etc) won't work. To use a shell, you need to
  /// explicitly call out to that shell. Exit status of 0 is treated as
  /// live/healthy and non-zero is unhealthy.
  core.List<core.String>? command;

  ExecAction({
    this.command,
  });

  ExecAction.fromJson(core.Map _json)
      : this(
          command: _json.containsKey('command')
              ? (_json['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
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

/// Condition defines a generic condition for a Resource
class GoogleCloudRunV1Condition {
  /// Last time the condition transitioned from one status to another.
  ///
  /// Optional.
  core.String? lastTransitionTime;

  /// Human readable message indicating details about the current status.
  ///
  /// Optional.
  core.String? message;

  /// One-word CamelCase reason for the condition's last transition.
  ///
  /// Optional.
  core.String? reason;

  /// How to interpret failures of this condition, one of Error, Warning, Info
  ///
  /// Optional.
  core.String? severity;

  /// Status of the condition, one of True, False, Unknown.
  core.String? status;

  /// type is used to communicate the status of the reconciliation process.
  ///
  /// See also:
  /// https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting
  /// Types common to all resources include: * "Ready": True when the Resource
  /// is ready.
  core.String? type;

  GoogleCloudRunV1Condition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.severity,
    this.status,
    this.type,
  });

  GoogleCloudRunV1Condition.fromJson(core.Map _json)
      : this(
          lastTransitionTime: _json.containsKey('lastTransitionTime')
              ? _json['lastTransitionTime'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastTransitionTime != null)
          'lastTransitionTime': lastTransitionTime!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
        if (severity != null) 'severity': severity!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
      };
}

/// Not supported by Cloud Run HTTPGetAction describes an action based on HTTP
/// Get requests.
class HTTPGetAction {
  /// (Optional) Host name to connect to, defaults to the pod IP.
  ///
  /// You probably want to set "Host" in httpHeaders instead.
  core.String? host;

  /// (Optional) Custom headers to set in the request.
  ///
  /// HTTP allows repeated headers.
  core.List<HTTPHeader>? httpHeaders;

  /// (Optional) Path to access on the HTTP server.
  core.String? path;

  /// (Optional) Scheme to use for connecting to the host.
  ///
  /// Defaults to HTTP.
  core.String? scheme;

  HTTPGetAction({
    this.host,
    this.httpHeaders,
    this.path,
    this.scheme,
  });

  HTTPGetAction.fromJson(core.Map _json)
      : this(
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          httpHeaders: _json.containsKey('httpHeaders')
              ? (_json['httpHeaders'] as core.List)
                  .map((value) => HTTPHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          scheme: _json.containsKey('scheme')
              ? _json['scheme'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (httpHeaders != null) 'httpHeaders': httpHeaders!,
        if (path != null) 'path': path!,
        if (scheme != null) 'scheme': scheme!,
      };
}

/// Not supported by Cloud Run HTTPHeader describes a custom header to be used
/// in HTTP probes
class HTTPHeader {
  /// The header field name
  core.String? name;

  /// The header field value
  core.String? value;

  HTTPHeader({
    this.name,
    this.value,
  });

  HTTPHeader.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Maps a string key to a path within a volume.
class KeyToPath {
  /// The Cloud Secret Manager secret version.
  ///
  /// Can be 'latest' for the latest value or an integer for a specific version.
  /// The key to project.
  core.String? key;

  /// (Optional) Mode bits to use on this file, must be a value between 0000 and
  /// 0777.
  ///
  /// If not specified, the volume defaultMode will be used. This might be in
  /// conflict with other options that affect the file mode, like fsGroup, and
  /// the result can be other mode bits set.
  core.int? mode;

  /// The relative path of the file to map the key to.
  ///
  /// May not be an absolute path. May not contain the path element '..'. May
  /// not start with the string '..'.
  core.String? path;

  KeyToPath({
    this.key,
    this.mode,
    this.path,
  });

  KeyToPath.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.int : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (mode != null) 'mode': mode!,
        if (path != null) 'path': path!,
      };
}

/// A list of Authorized Domains.
class ListAuthorizedDomainsResponse {
  /// The authorized domains belonging to the user.
  core.List<AuthorizedDomain>? domains;

  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  ListAuthorizedDomainsResponse({
    this.domains,
    this.nextPageToken,
  });

  ListAuthorizedDomainsResponse.fromJson(core.Map _json)
      : this(
          domains: _json.containsKey('domains')
              ? (_json['domains'] as core.List)
                  .map((value) => AuthorizedDomain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// ListConfigurationsResponse is a list of Configuration resources.
class ListConfigurationsResponse {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// List of Configurations.
  core.List<Configuration>? items;

  /// The kind of this resource, in this case "ConfigurationList".
  core.String? kind;

  /// Metadata associated with this Configuration list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConfigurationsResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListConfigurationsResponse.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Configuration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListDomainMappingsResponse is a list of DomainMapping resources.
class ListDomainMappingsResponse {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  core.String? apiVersion;

  /// List of DomainMappings.
  core.List<DomainMapping>? items;

  /// The kind of this resource, in this case "DomainMappingList".
  core.String? kind;

  /// Metadata associated with this DomainMapping list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDomainMappingsResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListDomainMappingsResponse.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => DomainMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
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

/// ListMeta describes metadata that synthetic resources must have, including
/// lists and various status objects.
///
/// A resource may have only one of {ObjectMeta, ListMeta}.
class ListMeta {
  /// continue may be set if the user set a limit on the number of items
  /// returned, and indicates that the server has more data available.
  ///
  /// The value is opaque and may be used to issue another request to the
  /// endpoint that served this list to retrieve the next set of available
  /// objects. Continuing a list may not be possible if the server configuration
  /// has changed or more than a few minutes have passed. The resourceVersion
  /// field returned when using this continue value will be identical to the
  /// value in the first response.
  core.String? continue_;

  /// String that identifies the server's internal version of this object that
  /// can be used by clients to determine when objects have changed.
  ///
  /// Value must be treated as opaque by clients and passed unmodified back to
  /// the server. Populated by the system. Read-only. More info:
  /// https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency
  /// +optional
  core.String? resourceVersion;

  /// SelfLink is a URL representing this object.
  ///
  /// Populated by the system. Read-only. +optional
  core.String? selfLink;

  ListMeta({
    this.continue_,
    this.resourceVersion,
    this.selfLink,
  });

  ListMeta.fromJson(core.Map _json)
      : this(
          continue_: _json.containsKey('continue')
              ? _json['continue'] as core.String
              : null,
          resourceVersion: _json.containsKey('resourceVersion')
              ? _json['resourceVersion'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (continue_ != null) 'continue': continue_!,
        if (resourceVersion != null) 'resourceVersion': resourceVersion!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// ListRevisionsResponse is a list of Revision resources.
class ListRevisionsResponse {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// List of Revisions.
  core.List<Revision>? items;

  /// The kind of this resource, in this case "RevisionList".
  core.String? kind;

  /// Metadata associated with this revision list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRevisionsResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListRevisionsResponse.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Revision.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListRoutesResponse is a list of Route resources.
class ListRoutesResponse {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// List of Routes.
  core.List<Route>? items;

  /// The kind of this resource, in this case always "RouteList".
  core.String? kind;

  /// Metadata associated with this Route list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRoutesResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListRoutesResponse.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Route.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A list of Service resources.
class ListServicesResponse {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// List of Services.
  core.List<Service>? items;

  /// The kind of this resource, in this case "ServiceList".
  core.String? kind;

  /// Metadata associated with this Service list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServicesResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListServicesResponse.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Not supported by Cloud Run LocalObjectReference contains enough information
/// to let you locate the referenced object inside the same namespace.
class LocalObjectReference {
  /// (Optional) Name of the referent.
  ///
  /// More info:
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  core.String? name;

  LocalObjectReference({
    this.name,
  });

  LocalObjectReference.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
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
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
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
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
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

/// k8s.io.apimachinery.pkg.apis.meta.v1.ObjectMeta is metadata that all
/// persisted resources must have, which includes all objects users must create.
class ObjectMeta {
  /// (Optional) Annotations is an unstructured key value map stored with a
  /// resource that may be set by external tools to store and retrieve arbitrary
  /// metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: http://kubernetes.io/docs/user-guide/annotations
  core.Map<core.String, core.String>? annotations;

  /// (Optional) Not supported by Cloud Run The name of the cluster which the
  /// object belongs to.
  ///
  /// This is used to distinguish resources with same name and namespace in
  /// different clusters. This field is not set anywhere right now and apiserver
  /// is going to ignore it if set in create or update request.
  core.String? clusterName;

  /// (Optional) CreationTimestamp is a timestamp representing the server time
  /// when this object was created.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations. Clients may not set this value. It is represented in RFC3339
  /// form and is in UTC. Populated by the system. Read-only. Null for lists.
  /// More info:
  /// https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
  core.String? creationTimestamp;

  /// (Optional) Not supported by Cloud Run Number of seconds allowed for this
  /// object to gracefully terminate before it will be removed from the system.
  ///
  /// Only set when deletionTimestamp is also set. May only be shortened.
  /// Read-only.
  core.int? deletionGracePeriodSeconds;

  /// (Optional) Not supported by Cloud Run DeletionTimestamp is RFC 3339 date
  /// and time at which this resource will be deleted.
  ///
  /// This field is set by the server when a graceful deletion is requested by
  /// the user, and is not directly settable by a client. The resource is
  /// expected to be deleted (no longer visible from resource lists, and not
  /// reachable by name) after the time in this field, once the finalizers list
  /// is empty. As long as the finalizers list contains items, deletion is
  /// blocked. Once the deletionTimestamp is set, this value may not be unset or
  /// be set further into the future, although it may be shortened or the
  /// resource may be deleted prior to this time. For example, a user may
  /// request that a pod is deleted in 30 seconds. The Kubelet will react by
  /// sending a graceful termination signal to the containers in the pod. After
  /// that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL)
  /// to the container and after cleanup, remove the pod from the API. In the
  /// presence of network partitions, this object may still exist after this
  /// timestamp, until an administrator or automated process can determine the
  /// resource is fully terminated. If not set, graceful deletion of the object
  /// has not been requested. Populated by the system when a graceful deletion
  /// is requested. Read-only. More info:
  /// https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata
  core.String? deletionTimestamp;

  /// (Optional) Not supported by Cloud Run Must be empty before the object is
  /// deleted from the registry.
  ///
  /// Each entry is an identifier for the responsible component that will remove
  /// the entry from the list. If the deletionTimestamp of the object is
  /// non-nil, entries in this list can only be removed. +patchStrategy=merge
  core.List<core.String>? finalizers;

  /// (Optional) Not supported by Cloud Run GenerateName is an optional prefix,
  /// used by the server, to generate a unique name ONLY IF the Name field has
  /// not been provided.
  ///
  /// If this field is used, the name returned to the client will be different
  /// than the name passed. This value will also be combined with a unique
  /// suffix. The provided value has the same validation rules as the Name
  /// field, and may be truncated by the length of the suffix required to make
  /// the value unique on the server. If this field is specified and the
  /// generated name exists, the server will NOT return a 409 - instead, it will
  /// either return 201 Created or 500 with Reason ServerTimeout indicating a
  /// unique name could not be found in the time allotted, and the client should
  /// retry (optionally after the time indicated in the Retry-After header).
  /// Applied only if Name is not specified. More info:
  /// https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency
  /// string generateName = 2;
  core.String? generateName;

  /// (Optional) A sequence number representing a specific generation of the
  /// desired state.
  ///
  /// Populated by the system. Read-only.
  core.int? generation;

  /// (Optional) Map of string keys and values that can be used to organize and
  /// categorize (scope and select) objects.
  ///
  /// May match selectors of replication controllers and routes. More info:
  /// http://kubernetes.io/docs/user-guide/labels
  core.Map<core.String, core.String>? labels;

  /// Name must be unique within a namespace, within a Cloud Run region.
  ///
  /// Is required when creating resources, although some resources may allow a
  /// client to request the generation of an appropriate name automatically.
  /// Name is primarily intended for creation idempotence and configuration
  /// definition. Cannot be updated. More info:
  /// http://kubernetes.io/docs/user-guide/identifiers#names +optional
  core.String? name;

  /// Namespace defines the space within each name must be unique, within a
  /// Cloud Run region.
  ///
  /// In Cloud Run the namespace must be equal to either the project ID or
  /// project number.
  core.String? namespace;

  /// (Optional) Not supported by Cloud Run List of objects that own this
  /// object.
  ///
  /// If ALL objects in the list have been deleted, this object will be garbage
  /// collected.
  core.List<OwnerReference>? ownerReferences;

  /// An opaque value that represents the internal version of this object that
  /// can be used by clients to determine when objects have changed.
  ///
  /// May be used for optimistic concurrency, change detection, and the watch
  /// operation on a resource or set of resources. Clients must treat these
  /// values as opaque and passed unmodified back to the server or omit the
  /// value to disable conflict-detection. They may only be valid for a
  /// particular resource or set of resources. Populated by the system.
  /// Read-only. Value must be treated as opaque by clients or omitted. More
  /// info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  ///
  /// Optional.
  core.String? resourceVersion;

  /// (Optional) SelfLink is a URL representing this object.
  ///
  /// Populated by the system. Read-only. string selfLink = 4;
  core.String? selfLink;

  /// (Optional) UID is the unique in time and space value for this object.
  ///
  /// It is typically generated by the server on successful creation of a
  /// resource and is not allowed to change on PUT operations. Populated by the
  /// system. Read-only. More info:
  /// http://kubernetes.io/docs/user-guide/identifiers#uids
  core.String? uid;

  ObjectMeta({
    this.annotations,
    this.clusterName,
    this.creationTimestamp,
    this.deletionGracePeriodSeconds,
    this.deletionTimestamp,
    this.finalizers,
    this.generateName,
    this.generation,
    this.labels,
    this.name,
    this.namespace,
    this.ownerReferences,
    this.resourceVersion,
    this.selfLink,
    this.uid,
  });

  ObjectMeta.fromJson(core.Map _json)
      : this(
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          clusterName: _json.containsKey('clusterName')
              ? _json['clusterName'] as core.String
              : null,
          creationTimestamp: _json.containsKey('creationTimestamp')
              ? _json['creationTimestamp'] as core.String
              : null,
          deletionGracePeriodSeconds:
              _json.containsKey('deletionGracePeriodSeconds')
                  ? _json['deletionGracePeriodSeconds'] as core.int
                  : null,
          deletionTimestamp: _json.containsKey('deletionTimestamp')
              ? _json['deletionTimestamp'] as core.String
              : null,
          finalizers: _json.containsKey('finalizers')
              ? (_json['finalizers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          generateName: _json.containsKey('generateName')
              ? _json['generateName'] as core.String
              : null,
          generation: _json.containsKey('generation')
              ? _json['generation'] as core.int
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          namespace: _json.containsKey('namespace')
              ? _json['namespace'] as core.String
              : null,
          ownerReferences: _json.containsKey('ownerReferences')
              ? (_json['ownerReferences'] as core.List)
                  .map((value) => OwnerReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceVersion: _json.containsKey('resourceVersion')
              ? _json['resourceVersion'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (clusterName != null) 'clusterName': clusterName!,
        if (creationTimestamp != null) 'creationTimestamp': creationTimestamp!,
        if (deletionGracePeriodSeconds != null)
          'deletionGracePeriodSeconds': deletionGracePeriodSeconds!,
        if (deletionTimestamp != null) 'deletionTimestamp': deletionTimestamp!,
        if (finalizers != null) 'finalizers': finalizers!,
        if (generateName != null) 'generateName': generateName!,
        if (generation != null) 'generation': generation!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (namespace != null) 'namespace': namespace!,
        if (ownerReferences != null) 'ownerReferences': ownerReferences!,
        if (resourceVersion != null) 'resourceVersion': resourceVersion!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (uid != null) 'uid': uid!,
      };
}

/// OwnerReference contains enough information to let you identify an owning
/// object.
///
/// Currently, an owning object must be in the same namespace, so there is no
/// namespace field.
class OwnerReference {
  /// API version of the referent.
  core.String? apiVersion;

  /// If true, AND if the owner has the "foregroundDeletion" finalizer, then the
  /// owner cannot be deleted from the key-value store until this reference is
  /// removed.
  ///
  /// Defaults to false. To set this field, a user needs "delete" permission of
  /// the owner, otherwise 422 (Unprocessable Entity) will be returned.
  /// +optional
  core.bool? blockOwnerDeletion;

  /// If true, this reference points to the managing controller.
  ///
  /// +optional
  core.bool? controller;

  /// Kind of the referent.
  ///
  /// More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  core.String? kind;

  /// Name of the referent.
  ///
  /// More info: http://kubernetes.io/docs/user-guide/identifiers#names
  core.String? name;

  /// UID of the referent.
  ///
  /// More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  core.String? uid;

  OwnerReference({
    this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    this.kind,
    this.name,
    this.uid,
  });

  OwnerReference.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          blockOwnerDeletion: _json.containsKey('blockOwnerDeletion')
              ? _json['blockOwnerDeletion'] as core.bool
              : null,
          controller: _json.containsKey('controller')
              ? _json['controller'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (blockOwnerDeletion != null)
          'blockOwnerDeletion': blockOwnerDeletion!,
        if (controller != null) 'controller': controller!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (uid != null) 'uid': uid!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Not supported by Cloud Run Probe describes a health check to be performed
/// against a container to determine whether it is alive or ready to receive
/// traffic.
class Probe {
  /// (Optional) One and only one of the following should be specified.
  ///
  /// Exec specifies the action to take. A field inlined from the Handler
  /// message.
  ExecAction? exec;

  /// (Optional) Minimum consecutive failures for the probe to be considered
  /// failed after having succeeded.
  ///
  /// Defaults to 3. Minimum value is 1.
  core.int? failureThreshold;

  /// (Optional) HTTPGet specifies the http request to perform.
  ///
  /// A field inlined from the Handler message.
  HTTPGetAction? httpGet;

  /// (Optional) Number of seconds after the container has started before
  /// liveness probes are initiated.
  ///
  /// More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  core.int? initialDelaySeconds;

  /// (Optional) How often (in seconds) to perform the probe.
  ///
  /// Default to 10 seconds. Minimum value is 1.
  core.int? periodSeconds;

  /// (Optional) Minimum consecutive successes for the probe to be considered
  /// successful after having failed.
  ///
  /// Defaults to 1. Must be 1 for liveness. Minimum value is 1.
  core.int? successThreshold;

  /// (Optional) TCPSocket specifies an action involving a TCP port.
  ///
  /// TCP hooks not yet supported A field inlined from the Handler message.
  TCPSocketAction? tcpSocket;

  /// (Optional) Number of seconds after which the probe times out.
  ///
  /// Defaults to 1 second. Minimum value is 1. More info:
  /// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  core.int? timeoutSeconds;

  Probe({
    this.exec,
    this.failureThreshold,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Probe.fromJson(core.Map _json)
      : this(
          exec: _json.containsKey('exec')
              ? ExecAction.fromJson(
                  _json['exec'] as core.Map<core.String, core.dynamic>)
              : null,
          failureThreshold: _json.containsKey('failureThreshold')
              ? _json['failureThreshold'] as core.int
              : null,
          httpGet: _json.containsKey('httpGet')
              ? HTTPGetAction.fromJson(
                  _json['httpGet'] as core.Map<core.String, core.dynamic>)
              : null,
          initialDelaySeconds: _json.containsKey('initialDelaySeconds')
              ? _json['initialDelaySeconds'] as core.int
              : null,
          periodSeconds: _json.containsKey('periodSeconds')
              ? _json['periodSeconds'] as core.int
              : null,
          successThreshold: _json.containsKey('successThreshold')
              ? _json['successThreshold'] as core.int
              : null,
          tcpSocket: _json.containsKey('tcpSocket')
              ? TCPSocketAction.fromJson(
                  _json['tcpSocket'] as core.Map<core.String, core.dynamic>)
              : null,
          timeoutSeconds: _json.containsKey('timeoutSeconds')
              ? _json['timeoutSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exec != null) 'exec': exec!,
        if (failureThreshold != null) 'failureThreshold': failureThreshold!,
        if (httpGet != null) 'httpGet': httpGet!,
        if (initialDelaySeconds != null)
          'initialDelaySeconds': initialDelaySeconds!,
        if (periodSeconds != null) 'periodSeconds': periodSeconds!,
        if (successThreshold != null) 'successThreshold': successThreshold!,
        if (tcpSocket != null) 'tcpSocket': tcpSocket!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
      };
}

/// A DNS resource record.
class ResourceRecord {
  /// Relative name of the object affected by this record.
  ///
  /// Only applicable for `CNAME` records. Example: 'www'.
  core.String? name;

  /// Data for this record.
  ///
  /// Values vary by record type, as defined in RFC 1035 (section 5) and RFC
  /// 1034 (section 3.6.1).
  core.String? rrdata;

  /// Resource record type.
  ///
  /// Example: `AAAA`.
  /// Possible string values are:
  /// - "RECORD_TYPE_UNSPECIFIED" : An unknown resource record.
  /// - "A" : An A resource record. Data is an IPv4 address.
  /// - "AAAA" : An AAAA resource record. Data is an IPv6 address.
  /// - "CNAME" : A CNAME resource record. Data is a domain name to be aliased.
  core.String? type;

  ResourceRecord({
    this.name,
    this.rrdata,
    this.type,
  });

  ResourceRecord.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          rrdata: _json.containsKey('rrdata')
              ? _json['rrdata'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (rrdata != null) 'rrdata': rrdata!,
        if (type != null) 'type': type!,
      };
}

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// (Optional) Only memory and CPU are supported.
  ///
  /// Note: The only supported values for CPU are '1', '2', and '4'. Setting 4
  /// CPU requires at least 2Gi of memory. Limits describes the maximum amount
  /// of compute resources allowed. The values of the map is string form of the
  /// 'quantity' k8s type:
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  core.Map<core.String, core.String>? limits;

  /// (Optional) Only memory and CPU are supported.
  ///
  /// Note: The only supported values for CPU are '1' and '2'. Requests
  /// describes the minimum amount of compute resources required. If Requests is
  /// omitted for a container, it defaults to Limits if that is explicitly
  /// specified, otherwise to an implementation-defined value. The values of the
  /// map is string form of the 'quantity' k8s type:
  /// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  core.Map<core.String, core.String>? requests;

  ResourceRequirements({
    this.limits,
    this.requests,
  });

  ResourceRequirements.fromJson(core.Map _json)
      : this(
          limits: _json.containsKey('limits')
              ? (_json['limits'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limits != null) 'limits': limits!,
        if (requests != null) 'requests': requests!,
      };
}

/// Revision is an immutable snapshot of code and configuration.
///
/// A revision references a container image. Revisions are created by updates to
/// a Configuration. See also:
/// https://github.com/knative/serving/blob/main/docs/spec/overview.md#revision
class Revision {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// The kind of this resource, in this case "Revision".
  core.String? kind;

  /// Metadata associated with this Revision, including name, namespace, labels,
  /// and annotations.
  ObjectMeta? metadata;

  /// Spec holds the desired state of the Revision (from the client).
  RevisionSpec? spec;

  /// Status communicates the observed state of the Revision (from the
  /// controller).
  RevisionStatus? status;

  Revision({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Revision.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? RevisionSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? RevisionStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
      };
}

/// RevisionSpec holds the desired state of the Revision (from the client).
class RevisionSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// requests per container instance of the Revision.
  ///
  /// Cloud Run fully managed: supported, defaults to 80 Cloud Run for Anthos:
  /// supported, defaults to 0, which means concurrency to the application is
  /// not limited, and the system decides the target concurrency for the
  /// autoscaler.
  ///
  /// Optional.
  core.int? containerConcurrency;

  /// Containers holds the single container that defines the unit of execution
  /// for this Revision.
  ///
  /// In the context of a Revision, we disallow a number of fields on this
  /// Container, including: name and lifecycle. In Cloud Run, only a single
  /// container may be provided. The runtime contract is documented here:
  /// https://github.com/knative/serving/blob/main/docs/runtime-contract.md
  core.List<Container>? containers;

  /// Email address of the IAM service account associated with the revision of
  /// the service.
  ///
  /// The service account represents the identity of the running revision, and
  /// determines what permissions the revision has. If not provided, the
  /// revision will use the project's default service account.
  core.String? serviceAccountName;

  /// TimeoutSeconds holds the max duration the instance is allowed for
  /// responding to a request.
  ///
  /// Cloud Run fully managed: defaults to 300 seconds (5 minutes). Maximum
  /// allowed value is 3600 seconds (1 hour). Cloud Run for Anthos: defaults to
  /// 300 seconds (5 minutes). Maximum allowed value is configurable by the
  /// cluster operator.
  core.int? timeoutSeconds;
  core.List<Volume>? volumes;

  RevisionSpec({
    this.containerConcurrency,
    this.containers,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  RevisionSpec.fromJson(core.Map _json)
      : this(
          containerConcurrency: _json.containsKey('containerConcurrency')
              ? _json['containerConcurrency'] as core.int
              : null,
          containers: _json.containsKey('containers')
              ? (_json['containers'] as core.List)
                  .map((value) => Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccountName: _json.containsKey('serviceAccountName')
              ? _json['serviceAccountName'] as core.String
              : null,
          timeoutSeconds: _json.containsKey('timeoutSeconds')
              ? _json['timeoutSeconds'] as core.int
              : null,
          volumes: _json.containsKey('volumes')
              ? (_json['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerConcurrency != null)
          'containerConcurrency': containerConcurrency!,
        if (containers != null) 'containers': containers!,
        if (serviceAccountName != null)
          'serviceAccountName': serviceAccountName!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// RevisionStatus communicates the observed state of the Revision (from the
/// controller).
class RevisionStatus {
  /// Conditions communicates information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// As a Revision is being prepared, it will incrementally update conditions.
  /// Revision-specific conditions include: * "ResourcesAvailable": True when
  /// underlying resources have been provisioned. * "ContainerHealthy": True
  /// when the Revision readiness check completes. * "Active": True when the
  /// Revision may receive traffic.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// ImageDigest holds the resolved digest for the image specified within
  /// .Spec.Container.Image.
  ///
  /// The digest is resolved during the creation of Revision. This field holds
  /// the digest value regardless of whether a tag or digest was originally
  /// specified in the Container object.
  core.String? imageDigest;

  /// Specifies the generated logging url for this particular revision based on
  /// the revision url template specified in the controller's config.
  ///
  /// Optional.
  core.String? logUrl;

  /// ObservedGeneration is the 'Generation' of the Revision that was last
  /// processed by the controller.
  ///
  /// Clients polling for completed reconciliation should poll until
  /// observedGeneration = metadata.generation, and the Ready condition's status
  /// is True or False.
  core.int? observedGeneration;

  /// Not currently used by Cloud Run.
  core.String? serviceName;

  RevisionStatus({
    this.conditions,
    this.imageDigest,
    this.logUrl,
    this.observedGeneration,
    this.serviceName,
  });

  RevisionStatus.fromJson(core.Map _json)
      : this(
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageDigest: _json.containsKey('imageDigest')
              ? _json['imageDigest'] as core.String
              : null,
          logUrl: _json.containsKey('logUrl')
              ? _json['logUrl'] as core.String
              : null,
          observedGeneration: _json.containsKey('observedGeneration')
              ? _json['observedGeneration'] as core.int
              : null,
          serviceName: _json.containsKey('serviceName')
              ? _json['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (imageDigest != null) 'imageDigest': imageDigest!,
        if (logUrl != null) 'logUrl': logUrl!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

/// RevisionTemplateSpec describes the data a revision should have when created
/// from a template.
///
/// Based on:
/// https://github.com/kubernetes/api/blob/e771f807/core/v1/types.go#L3179-L3190
class RevisionTemplate {
  /// Optional metadata for this Revision, including labels and annotations.
  ///
  /// Name will be generated by the Configuration. The following annotation keys
  /// set properties of the created revision: *
  /// `autoscaling.knative.dev/minScale` sets the minimum number of instances. *
  /// `autoscaling.knative.dev/maxScale` sets the maximum number of instances. *
  /// `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections.
  /// Multiple values should be comma separated. *
  /// `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access
  /// connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress.
  /// Supported values are `all-traffic`, `all` (deprecated), and
  /// `private-ranges-only`. `all-traffic` and `all` provide the same
  /// functionality. `all` is deprecated but will continue to be supported.
  /// Prefer `all-traffic`.
  ObjectMeta? metadata;

  /// RevisionSpec holds the desired state of the Revision (from the client).
  RevisionSpec? spec;

  RevisionTemplate({
    this.metadata,
    this.spec,
  });

  RevisionTemplate.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? RevisionSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
      };
}

/// Route is responsible for configuring ingress over a collection of Revisions.
///
/// Some of the Revisions a Route distributes traffic over may be specified by
/// referencing the Configuration responsible for creating them; in these cases
/// the Route is additionally responsible for monitoring the Configuration for
/// "latest ready" revision changes, and smoothly rolling out latest revisions.
/// See also:
/// https://github.com/knative/serving/blob/main/docs/spec/overview.md#route
/// Cloud Run currently supports referencing a single Configuration to
/// automatically deploy the "latest ready" Revision from that Configuration.
class Route {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// The kind of this resource, in this case always "Route".
  core.String? kind;

  /// Metadata associated with this Route, including name, namespace, labels,
  /// and annotations.
  ObjectMeta? metadata;

  /// Spec holds the desired state of the Route (from the client).
  RouteSpec? spec;

  /// Status communicates the observed state of the Route (from the controller).
  RouteStatus? status;

  Route({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Route.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? RouteSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? RouteStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
      };
}

/// RouteSpec holds the desired state of the Route (from the client).
class RouteSpec {
  /// Traffic specifies how to distribute traffic over a collection of Knative
  /// Revisions and Configurations.
  ///
  /// Cloud Run currently supports a single configurationName.
  core.List<TrafficTarget>? traffic;

  RouteSpec({
    this.traffic,
  });

  RouteSpec.fromJson(core.Map _json)
      : this(
          traffic: _json.containsKey('traffic')
              ? (_json['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (traffic != null) 'traffic': traffic!,
      };
}

/// RouteStatus communicates the observed state of the Route (from the
/// controller).
class RouteStatus {
  /// Similar to url, information on where the service is available on HTTP.
  Addressable? address;

  /// Conditions communicates information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// ObservedGeneration is the 'Generation' of the Route that was last
  /// processed by the controller.
  ///
  /// Clients polling for completed reconciliation should poll until
  /// observedGeneration = metadata.generation and the Ready condition's status
  /// is True or False. Note that providing a trafficTarget that only has a
  /// configurationName will result in a Route that does not increment either
  /// its metadata.generation or its observedGeneration, as new "latest ready"
  /// revisions from the Configuration are processed without an update to the
  /// Route's spec.
  core.int? observedGeneration;

  /// Traffic holds the configured traffic distribution.
  ///
  /// These entries will always contain RevisionName references. When
  /// ConfigurationName appears in the spec, this will hold the
  /// LatestReadyRevisionName that we last observed.
  core.List<TrafficTarget>? traffic;

  /// URL holds the url that will distribute traffic over the provided traffic
  /// targets.
  ///
  /// It generally has the form:
  /// https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
  core.String? url;

  RouteStatus({
    this.address,
    this.conditions,
    this.observedGeneration,
    this.traffic,
    this.url,
  });

  RouteStatus.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? Addressable.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          observedGeneration: _json.containsKey('observedGeneration')
              ? _json['observedGeneration'] as core.int
              : null,
          traffic: _json.containsKey('traffic')
              ? (_json['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (conditions != null) 'conditions': conditions!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (traffic != null) 'traffic': traffic!,
        if (url != null) 'url': url!,
      };
}

/// Not supported by Cloud Run SecretEnvSource selects a Secret to populate the
/// environment variables with.
///
/// The contents of the target Secret's Data field will represent the key-value
/// pairs as environment variables.
class SecretEnvSource {
  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  LocalObjectReference? localObjectReference;

  /// The Secret to select from.
  core.String? name;

  /// (Optional) Specify whether the Secret must be defined
  core.bool? optional;

  SecretEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  SecretEnvSource.fromJson(core.Map _json)
      : this(
          localObjectReference: _json.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(_json['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localObjectReference != null)
          'localObjectReference': localObjectReference!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// A Cloud Secret Manager secret version.
  ///
  /// Must be 'latest' for the latest version or an integer for a specific
  /// version. The key of the secret to select from. Must be a valid secret key.
  core.String? key;

  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  LocalObjectReference? localObjectReference;

  /// The name of the secret in Cloud Secret Manager.
  ///
  /// By default, the secret is assumed to be in the same project. If the secret
  /// is in another project, you must define an alias. An alias definition has
  /// the form: :projects//secrets/. If multiple alias definitions are needed,
  /// they must be separated by commas. The alias definitions must be set on the
  /// run.googleapis.com/secrets annotation. The name of the secret in the pod's
  /// namespace to select from.
  core.String? name;

  /// (Optional) Specify whether the Secret or its key must be defined
  core.bool? optional;

  SecretKeySelector({
    this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  SecretKeySelector.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          localObjectReference: _json.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(_json['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (localObjectReference != null)
          'localObjectReference': localObjectReference!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// The secret's value will be presented as the content of a file whose name is
/// defined in the item path.
///
/// If no items are defined, the name of the file is the secret_name. The
/// contents of the target Secret's Data field will be presented in a volume as
/// files using the keys in the Data field as the file names.
class SecretVolumeSource {
  /// (Optional) Mode bits to use on created files by default.
  ///
  /// Must be a value between 0000 and 0777. Defaults to 0644. Directories
  /// within the path are not affected by this setting. This might be in
  /// conflict with other options that affect the file mode, like fsGroup, and
  /// the result can be other mode bits set. NOTE: This is an integer
  /// representation of the mode bits. So, the integer value should look exactly
  /// as the chmod numeric notation, i.e. Unix chmod "777" (a=rwx) should have
  /// the integer value 777.
  core.int? defaultMode;

  /// (Optional) If unspecified, the volume will expose a file whose name is the
  /// secret_name.
  ///
  /// If specified, the key will be used as the version to fetch from Cloud
  /// Secret Manager and the path will be the name of the file exposed in the
  /// volume. When items are defined, they must specify a key and a path. If
  /// unspecified, each key-value pair in the Data field of the referenced
  /// Secret will be projected into the volume as a file whose name is the key
  /// and content is the value. If specified, the listed keys will be projected
  /// into the specified paths, and unlisted keys will not be present. If a key
  /// is specified that is not present in the Secret, the volume setup will
  /// error unless it is marked optional.
  core.List<KeyToPath>? items;

  /// (Optional) Specify whether the Secret or its keys must be defined.
  core.bool? optional;

  /// The name of the secret in Cloud Secret Manager.
  ///
  /// By default, the secret is assumed to be in the same project. If the secret
  /// is in another project, you must define an alias. An alias definition has
  /// the form: :projects//secrets/. If multiple alias definitions are needed,
  /// they must be separated by commas. The alias definitions must be set on the
  /// run.googleapis.com/secrets annotation. Name of the secret in the
  /// container's namespace to use.
  core.String? secretName;

  SecretVolumeSource({
    this.defaultMode,
    this.items,
    this.optional,
    this.secretName,
  });

  SecretVolumeSource.fromJson(core.Map _json)
      : this(
          defaultMode: _json.containsKey('defaultMode')
              ? _json['defaultMode'] as core.int
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => KeyToPath.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
          secretName: _json.containsKey('secretName')
              ? _json['secretName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultMode != null) 'defaultMode': defaultMode!,
        if (items != null) 'items': items!,
        if (optional != null) 'optional': optional!,
        if (secretName != null) 'secretName': secretName!,
      };
}

/// Not supported by Cloud Run SecurityContext holds security configuration that
/// will be applied to a container.
///
/// Some fields are present in both SecurityContext and PodSecurityContext. When
/// both are set, the values in SecurityContext take precedence.
class SecurityContext {
  /// (Optional) The UID to run the entrypoint of the container process.
  ///
  /// Defaults to user specified in image metadata if unspecified. May also be
  /// set in PodSecurityContext. If set in both SecurityContext and
  /// PodSecurityContext, the value specified in SecurityContext takes
  /// precedence.
  core.int? runAsUser;

  SecurityContext({
    this.runAsUser,
  });

  SecurityContext.fromJson(core.Map _json)
      : this(
          runAsUser: _json.containsKey('runAsUser')
              ? _json['runAsUser'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runAsUser != null) 'runAsUser': runAsUser!,
      };
}

/// Service acts as a top-level container that manages a set of Routes and
/// Configurations which implement a network service.
///
/// Service exists to provide a singular abstraction which can be access
/// controlled, reasoned about, and which encapsulates software lifecycle
/// decisions such as rollout policy and team resource ownership. Service acts
/// only as an orchestrator of the underlying Routes and Configurations (much as
/// a kubernetes Deployment orchestrates ReplicaSets). The Service's controller
/// will track the statuses of its owned Configuration and Route, reflecting
/// their statuses and conditions as its own. See also:
/// https://github.com/knative/serving/blob/main/docs/spec/overview.md#service
class Service {
  /// The API version for this call such as "serving.knative.dev/v1".
  core.String? apiVersion;

  /// The kind of resource, in this case "Service".
  core.String? kind;

  /// Metadata associated with this Service, including name, namespace, labels,
  /// and annotations.
  ///
  /// Cloud Run (fully managed) uses the following annotation keys to configure
  /// features on a Service: * `run.googleapis.com/ingress` sets the ingress
  /// settings for the Service. See \[the ingress settings
  /// documentation\](/run/docs/securing/ingress) for details on configuring
  /// ingress settings. * `run.googleapis.com/ingress-status` is output-only and
  /// contains the currently active ingress settings for the Service.
  /// `run.googleapis.com/ingress-status` may differ from
  /// `run.googleapis.com/ingress` while the system is processing a change to
  /// `run.googleapis.com/ingress` or if the system failed to process a change
  /// to `run.googleapis.com/ingress`. When the system has processed all changes
  /// successfully `run.googleapis.com/ingress-status` and
  /// `run.googleapis.com/ingress` are equal.
  ObjectMeta? metadata;

  /// Spec holds the desired state of the Service (from the client).
  ServiceSpec? spec;

  /// Status communicates the observed state of the Service (from the
  /// controller).
  ServiceStatus? status;

  Service({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Service.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: _json.containsKey('spec')
              ? ServiceSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? ServiceStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
        if (status != null) 'status': status!,
      };
}

/// ServiceSpec holds the desired state of the Route (from the client), which is
/// used to manipulate the underlying Route and Configuration(s).
class ServiceSpec {
  /// Template holds the latest specification for the Revision to be stamped
  /// out.
  RevisionTemplate? template;

  /// Traffic specifies how to distribute traffic over a collection of Knative
  /// Revisions and Configurations.
  core.List<TrafficTarget>? traffic;

  ServiceSpec({
    this.template,
    this.traffic,
  });

  ServiceSpec.fromJson(core.Map _json)
      : this(
          template: _json.containsKey('template')
              ? RevisionTemplate.fromJson(
                  _json['template'] as core.Map<core.String, core.dynamic>)
              : null,
          traffic: _json.containsKey('traffic')
              ? (_json['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
        if (traffic != null) 'traffic': traffic!,
      };
}

/// The current state of the Service.
///
/// Output only.
class ServiceStatus {
  /// From RouteStatus.
  ///
  /// Similar to url, information on where the service is available on HTTP.
  Addressable? address;

  /// Conditions communicates information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// Service-specific conditions include: * "ConfigurationsReady": true when
  /// the underlying Configuration is ready. * "RoutesReady": true when the
  /// underlying Route is ready. * "Ready": true when both the underlying Route
  /// and Configuration are ready.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// From ConfigurationStatus.
  ///
  /// LatestCreatedRevisionName is the last revision that was created from this
  /// Service's Configuration. It might not be ready yet, for that use
  /// LatestReadyRevisionName.
  core.String? latestCreatedRevisionName;

  /// From ConfigurationStatus.
  ///
  /// LatestReadyRevisionName holds the name of the latest Revision stamped out
  /// from this Service's Configuration that has had its "Ready" condition
  /// become "True".
  core.String? latestReadyRevisionName;

  /// ObservedGeneration is the 'Generation' of the Route that was last
  /// processed by the controller.
  ///
  /// Clients polling for completed reconciliation should poll until
  /// observedGeneration = metadata.generation and the Ready condition's status
  /// is True or False.
  core.int? observedGeneration;

  /// From RouteStatus.
  ///
  /// Traffic holds the configured traffic distribution. These entries will
  /// always contain RevisionName references. When ConfigurationName appears in
  /// the spec, this will hold the LatestReadyRevisionName that we last
  /// observed.
  core.List<TrafficTarget>? traffic;

  /// From RouteStatus.
  ///
  /// URL holds the url that will distribute traffic over the provided traffic
  /// targets. It generally has the form
  /// https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
  core.String? url;

  ServiceStatus({
    this.address,
    this.conditions,
    this.latestCreatedRevisionName,
    this.latestReadyRevisionName,
    this.observedGeneration,
    this.traffic,
    this.url,
  });

  ServiceStatus.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? Addressable.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          latestCreatedRevisionName:
              _json.containsKey('latestCreatedRevisionName')
                  ? _json['latestCreatedRevisionName'] as core.String
                  : null,
          latestReadyRevisionName: _json.containsKey('latestReadyRevisionName')
              ? _json['latestReadyRevisionName'] as core.String
              : null,
          observedGeneration: _json.containsKey('observedGeneration')
              ? _json['observedGeneration'] as core.int
              : null,
          traffic: _json.containsKey('traffic')
              ? (_json['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (conditions != null) 'conditions': conditions!,
        if (latestCreatedRevisionName != null)
          'latestCreatedRevisionName': latestCreatedRevisionName!,
        if (latestReadyRevisionName != null)
          'latestReadyRevisionName': latestReadyRevisionName!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (traffic != null) 'traffic': traffic!,
        if (url != null) 'url': url!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
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
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Status is a return value for calls that don't return other objects
class Status {
  /// Suggested HTTP return code for this status, 0 if not set.
  ///
  /// +optional
  core.int? code;

  /// Extended data associated with the reason.
  ///
  /// Each reason may define its own extended details. This field is optional
  /// and the data returned is not guaranteed to conform to any schema except
  /// that defined by the reason type. +optional
  StatusDetails? details;

  /// A human-readable description of the status of this operation.
  ///
  /// +optional
  core.String? message;

  /// Standard list metadata.
  ///
  /// More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  ListMeta? metadata;

  /// A machine-readable description of why this operation is in the "Failure"
  /// status.
  ///
  /// If this value is empty there is no information available. A Reason
  /// clarifies an HTTP status code but does not override it. +optional
  core.String? reason;

  /// Status of the operation.
  ///
  /// One of: "Success" or "Failure". More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  core.String? status;

  Status({
    this.code,
    this.details,
    this.message,
    this.metadata,
    this.reason,
    this.status,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? StatusDetails.fromJson(
                  _json['details'] as core.Map<core.String, core.dynamic>)
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? ListMeta.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
        if (metadata != null) 'metadata': metadata!,
        if (reason != null) 'reason': reason!,
        if (status != null) 'status': status!,
      };
}

/// StatusCause provides more information about an api.Status failure, including
/// cases when multiple errors are encountered.
class StatusCause {
  /// The field of the resource that has caused this error, as named by its JSON
  /// serialization.
  ///
  /// May include dot and postfix notation for nested attributes. Arrays are
  /// zero-indexed. Fields may appear more than once in an array of causes due
  /// to fields having multiple errors. Optional. Examples: "name" - the field
  /// "name" on the current resource "items\[0\].name" - the field "name" on the
  /// first array entry in "items" +optional
  core.String? field;

  /// A human-readable description of the cause of the error.
  ///
  /// This field may be presented as-is to a reader. +optional
  core.String? message;

  /// A machine-readable description of the cause of the error.
  ///
  /// If this value is empty there is no information available. +optional
  core.String? reason;

  StatusCause({
    this.field,
    this.message,
    this.reason,
  });

  StatusCause.fromJson(core.Map _json)
      : this(
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
      };
}

/// StatusDetails is a set of additional properties that MAY be set by the
/// server to provide additional information about a response.
///
/// The Reason field of a Status object defines what attributes will be set.
/// Clients must ignore fields that do not match the defined type of each
/// attribute, and should assume that any attribute may be empty, invalid, or
/// under defined.
class StatusDetails {
  /// The Causes array includes more details associated with the StatusReason
  /// failure.
  ///
  /// Not all StatusReasons may provide detailed causes. +optional
  core.List<StatusCause>? causes;

  /// The group attribute of the resource associated with the status
  /// StatusReason.
  ///
  /// +optional
  core.String? group;

  /// The kind attribute of the resource associated with the status
  /// StatusReason.
  ///
  /// On some operations may differ from the requested resource Kind. More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  core.String? kind;

  /// The name attribute of the resource associated with the status StatusReason
  /// (when there is a single name which can be described).
  ///
  /// +optional
  core.String? name;

  /// If specified, the time in seconds before the operation should be retried.
  ///
  /// Some errors may indicate the client must take an alternate action - for
  /// those errors this field may indicate how long to wait before taking the
  /// alternate action. +optional
  core.int? retryAfterSeconds;

  /// UID of the resource.
  ///
  /// (when there is a single resource which can be described). More info:
  /// http://kubernetes.io/docs/user-guide/identifiers#uids +optional
  core.String? uid;

  StatusDetails({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  StatusDetails.fromJson(core.Map _json)
      : this(
          causes: _json.containsKey('causes')
              ? (_json['causes'] as core.List)
                  .map((value) => StatusCause.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          group:
              _json.containsKey('group') ? _json['group'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          retryAfterSeconds: _json.containsKey('retryAfterSeconds')
              ? _json['retryAfterSeconds'] as core.int
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (causes != null) 'causes': causes!,
        if (group != null) 'group': group!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (retryAfterSeconds != null) 'retryAfterSeconds': retryAfterSeconds!,
        if (uid != null) 'uid': uid!,
      };
}

/// Not supported by Cloud Run TCPSocketAction describes an action based on
/// opening a socket
class TCPSocketAction {
  /// (Optional) Optional: Host name to connect to, defaults to the pod IP.
  core.String? host;

  /// Number or name of the port to access on the container.
  ///
  /// Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  /// This field is currently limited to integer types only because of proto's
  /// inability to properly support the IntOrString golang type.
  core.int? port;

  TCPSocketAction({
    this.host,
    this.port,
  });

  TCPSocketAction.fromJson(core.Map _json)
      : this(
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (port != null) 'port': port!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// TrafficTarget holds a single entry of the routing table for a Route.
class TrafficTarget {
  /// ConfigurationName of a configuration to whose latest revision we will send
  /// this portion of traffic.
  ///
  /// When the "status.latestReadyRevisionName" of the referenced configuration
  /// changes, we will automatically migrate traffic from the prior "latest
  /// ready" revision to the new one. This field is never set in Route's status,
  /// only its spec. This is mutually exclusive with RevisionName. Cloud Run
  /// currently supports a single ConfigurationName.
  core.String? configurationName;

  /// LatestRevision may be provided to indicate that the latest ready Revision
  /// of the Configuration should be used for this traffic target.
  ///
  /// When provided LatestRevision must be true if RevisionName is empty; it
  /// must be false when RevisionName is non-empty.
  ///
  /// Optional.
  core.bool? latestRevision;

  /// Percent specifies percent of the traffic to this Revision or
  /// Configuration.
  ///
  /// This defaults to zero if unspecified. Cloud Run currently requires 100
  /// percent for a single ConfigurationName TrafficTarget entry.
  core.int? percent;

  /// RevisionName of a specific revision to which to send this portion of
  /// traffic.
  ///
  /// This is mutually exclusive with ConfigurationName. Providing RevisionName
  /// in spec is not currently supported by Cloud Run.
  core.String? revisionName;

  /// Tag is used to expose a dedicated url for referencing this target
  /// exclusively.
  ///
  /// Optional.
  core.String? tag;

  /// URL displays the URL for accessing tagged traffic targets.
  ///
  /// URL is displayed in status, and is disallowed on spec. URL must contain a
  /// scheme (e.g. http://) and a hostname, but may not contain anything else
  /// (e.g. basic auth, url path, etc.)
  ///
  /// Output only.
  core.String? url;

  TrafficTarget({
    this.configurationName,
    this.latestRevision,
    this.percent,
    this.revisionName,
    this.tag,
    this.url,
  });

  TrafficTarget.fromJson(core.Map _json)
      : this(
          configurationName: _json.containsKey('configurationName')
              ? _json['configurationName'] as core.String
              : null,
          latestRevision: _json.containsKey('latestRevision')
              ? _json['latestRevision'] as core.bool
              : null,
          percent: _json.containsKey('percent')
              ? _json['percent'] as core.int
              : null,
          revisionName: _json.containsKey('revisionName')
              ? _json['revisionName'] as core.String
              : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configurationName != null) 'configurationName': configurationName!,
        if (latestRevision != null) 'latestRevision': latestRevision!,
        if (percent != null) 'percent': percent!,
        if (revisionName != null) 'revisionName': revisionName!,
        if (tag != null) 'tag': tag!,
        if (url != null) 'url': url!,
      };
}

/// Volume represents a named volume in a container.
class Volume {
  ConfigMapVolumeSource? configMap;

  /// Volume's name.
  ///
  /// In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  core.String? name;
  SecretVolumeSource? secret;

  Volume({
    this.configMap,
    this.name,
    this.secret,
  });

  Volume.fromJson(core.Map _json)
      : this(
          configMap: _json.containsKey('configMap')
              ? ConfigMapVolumeSource.fromJson(
                  _json['configMap'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          secret: _json.containsKey('secret')
              ? SecretVolumeSource.fromJson(
                  _json['secret'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMap != null) 'configMap': configMap!,
        if (name != null) 'name': name!,
        if (secret != null) 'secret': secret!,
      };
}

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Path within the container at which the volume should be mounted.
  ///
  /// Must not contain ':'.
  core.String? mountPath;

  /// The name of the volume.
  ///
  /// There must be a corresponding Volume with the same name.
  core.String? name;

  /// (Optional) Only true is accepted.
  ///
  /// Defaults to true.
  core.bool? readOnly;

  /// (Optional) Path within the volume from which the container's volume should
  /// be mounted.
  ///
  /// Defaults to "" (volume's root).
  core.String? subPath;

  VolumeMount({
    this.mountPath,
    this.name,
    this.readOnly,
    this.subPath,
  });

  VolumeMount.fromJson(core.Map _json)
      : this(
          mountPath: _json.containsKey('mountPath')
              ? _json['mountPath'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          readOnly: _json.containsKey('readOnly')
              ? _json['readOnly'] as core.bool
              : null,
          subPath: _json.containsKey('subPath')
              ? _json['subPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mountPath != null) 'mountPath': mountPath!,
        if (name != null) 'name': name!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (subPath != null) 'subPath': subPath!,
      };
}
