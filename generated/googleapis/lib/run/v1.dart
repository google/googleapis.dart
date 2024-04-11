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

/// Cloud Run Admin API - v1
///
/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests. The Cloud Run Admin API v1 follows the Knative
/// Serving API specification, while v2 is aligned with Google Cloud AIP-based
/// API standards, as described in https://google.aip.dev/.
///
/// For more information, see <https://cloud.google.com/run/>
///
/// Create an instance of [CloudRunApi] to access these resources:
///
/// - [NamespacesResource]
///   - [NamespacesAuthorizeddomainsResource]
///   - [NamespacesConfigurationsResource]
///   - [NamespacesDomainmappingsResource]
///   - [NamespacesExecutionsResource]
///   - [NamespacesJobsResource]
///   - [NamespacesRevisionsResource]
///   - [NamespacesRoutesResource]
///   - [NamespacesServicesResource]
///   - [NamespacesTasksResource]
/// - [ProjectsResource]
///   - [ProjectsAuthorizeddomainsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAuthorizeddomainsResource]
///     - [ProjectsLocationsConfigurationsResource]
///     - [ProjectsLocationsDomainmappingsResource]
///     - [ProjectsLocationsJobsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRevisionsResource]
///     - [ProjectsLocationsRoutesResource]
///     - [ProjectsLocationsServicesResource]
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

/// Deploy and manage user provided container images that scale automatically
/// based on incoming requests.
///
/// The Cloud Run Admin API v1 follows the Knative Serving API specification,
/// while v2 is aligned with Google Cloud AIP-based API standards, as described
/// in https://google.aip.dev/.
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
  NamespacesExecutionsResource get executions =>
      NamespacesExecutionsResource(_requester);
  NamespacesJobsResource get jobs => NamespacesJobsResource(_requester);
  NamespacesRevisionsResource get revisions =>
      NamespacesRevisionsResource(_requester);
  NamespacesRoutesResource get routes => NamespacesRoutesResource(_requester);
  NamespacesServicesResource get services =>
      NamespacesServicesResource(_requester);
  NamespacesTasksResource get tasks => NamespacesTasksResource(_requester);

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/authorizeddomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [name] - The name of the configuration to retrieve. For Cloud Run, replace
  /// {namespace_id} with the project ID or number.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Configuration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the configurations should be listed.
  /// For Cloud Run, replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Not supported by Cloud Run.
  ///
  /// [includeUninitialized] - Not supported by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of the records that should be
  /// returned.
  ///
  /// [resourceVersion] - Not supported by Cloud Run.
  ///
  /// [watch] - Not supported by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/configurations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConfigurationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [parent] - Required. The namespace in which the domain mapping should be
  /// created. For Cloud Run (fully managed), replace {namespace} with the
  /// project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/domainmappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain mapping to delete. For Cloud Run
  /// (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
  /// see kubernetes.io/docs/concepts/architecture/garbage-collection/ for more
  /// information.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/domains.cloudrun.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain mapping to retrieve. For Cloud
  /// Run (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/domains.cloudrun.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all domain mappings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace from which the domain mappings should
  /// be listed. For Cloud Run (fully managed), replace {namespace} with the
  /// project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/domains.cloudrun.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/domainmappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainMappingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesExecutionsResource {
  final commons.ApiRequester _requester;

  NamespacesExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancel an execution.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the execution to cancel. Replace
  /// {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> cancel(
    CancelExecutionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' +
        core.Uri.encodeFull('$name') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the execution to delete. Replace
  /// {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [apiVersion] - Optional. Cloud Run currently ignores this parameter.
  ///
  /// [kind] - Optional. Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Optional. Specifies the propagation policy of
  /// delete. Cloud Run currently ignores this setting.
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
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about an execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the execution to retrieve. Replace
  /// {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List executions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace from which the executions should be
  /// listed. Replace {namespace} with the project ID or number. It takes the
  /// form namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Optional encoded string to continue paging.
  ///
  /// [fieldSelector] - Optional. Not supported by Cloud Run.
  ///
  /// [includeUninitialized] - Optional. Not supported by Cloud Run.
  ///
  /// [labelSelector] - Optional. Allows to filter resources based on a label.
  /// Supported operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of the records that should be
  /// returned.
  ///
  /// [resourceVersion] - Optional. Not supported by Cloud Run.
  ///
  /// [watch] - Optional. Not supported by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/run.googleapis.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesJobsResource {
  final commons.ApiRequester _requester;

  NamespacesJobsResource(commons.ApiRequester client) : _requester = client;

  /// Create a job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace in which the job should be created.
  /// Replace {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job to delete. Replace {namespace} with
  /// the project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [apiVersion] - Optional. Cloud Run currently ignores this parameter.
  ///
  /// [kind] - Optional. Cloud Run currently ignores this parameter.
  ///
  /// [propagationPolicy] - Optional. Specifies the propagation policy of
  /// delete. Cloud Run currently ignores this setting, and deletes in the
  /// background. Please see
  /// kubernetes.io/docs/concepts/workloads/controllers/garbage-collection/ for
  /// more information.
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
    core.String? kind,
    core.String? propagationPolicy,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job to retrieve. Replace {namespace}
  /// with the project ID or number. It takes the form namespaces/{namespace}.
  /// For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace from which the jobs should be listed.
  /// Replace {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Optional encoded string to continue paging.
  ///
  /// [fieldSelector] - Optional. Not supported by Cloud Run.
  ///
  /// [includeUninitialized] - Optional. Not supported by Cloud Run.
  ///
  /// [labelSelector] - Optional. Allows to filter resources based on a label.
  /// Supported operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - Optional. Not supported by Cloud Run.
  ///
  /// [watch] - Optional. Not supported by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/run.googleapis.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replace a job.
  ///
  /// Only the spec and metadata labels and annotations are modifiable. After
  /// the Replace request, Cloud Run will work to make the 'status' match the
  /// requested 'spec'. May provide metadata.resourceVersion to enforce update
  /// from last read for optimistic concurrency control.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job being replaced. Replace {namespace}
  /// with the project ID or number. It takes the form namespaces/{namespace}.
  /// For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> replaceJob(
    Job request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Trigger creation of a new execution of this job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job to run. Replace {namespace} with
  /// the project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> run(
    RunJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// managed), replace {namespace} with the project ID or number. It takes the
  /// form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
  /// Run currently ignores this setting, and deletes in the background.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to retrieve. For Cloud Run (fully
  /// managed), replace {namespace} with the project ID or number. It takes the
  /// form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List revisions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the revisions should be listed. For
  /// Cloud Run (fully managed), replace {namespace} with the project ID or
  /// number. It takes the form namespaces/{namespace}. For example:
  /// namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// replace {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Route.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List routes.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the routes should be listed. For Cloud
  /// Run (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/routes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesServicesResource {
  final commons.ApiRequester _requester;

  NamespacesServicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Service.
  ///
  /// Service creation will trigger a new deployment. Use GetService, and check
  /// service.status to determine if the Service is ready.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource's parent. In Cloud Run, it may be one of
  /// the following: * `{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}/services` *
  /// `projects/{project_id_or_number}/locations/{region}` *
  /// `projects/{project_id_or_number}/regions/{region}`
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the provided service.
  ///
  /// This will cause the Service to stop serving traffic and will delete all
  /// associated Revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the service to delete. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
  /// Value must have pattern `^namespaces/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [apiVersion] - Not supported, and ignored by Cloud Run.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Not supported, and ignored by Cloud Run.
  ///
  /// [propagationPolicy] - Not supported, and ignored by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the service to retrieve. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists services for the given project and region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent from where the resources should be listed.
  /// In Cloud Run, it may be one of the following: * `{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}/services` *
  /// `projects/{project_id_or_number}/locations/{region}` *
  /// `projects/{project_id_or_number}/regions/{region}`
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Encoded string to continue paging.
  ///
  /// [fieldSelector] - Not supported, and ignored by Cloud Run.
  ///
  /// [includeUninitialized] - Not supported, and ignored by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - Not supported, and ignored by Cloud Run.
  ///
  /// [watch] - Not supported, and ignored by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/serving.knative.dev/v1/' +
        core.Uri.encodeFull('$parent') +
        '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces a service.
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
  /// [name] - Required. The fully qualified name of the service to replace. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/serving.knative.dev/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class NamespacesTasksResource {
  final commons.ApiRequester _requester;

  NamespacesTasksResource(commons.ApiRequester client) : _requester = client;

  /// Get information about a task.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the task to retrieve. Replace {namespace}
  /// with the project ID or number. It takes the form namespaces/{namespace}.
  /// For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/run.googleapis.com/v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List tasks.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace from which the tasks should be listed.
  /// Replace {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
  /// Value must have pattern `^namespaces/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Optional encoded string to continue paging.
  ///
  /// [fieldSelector] - Optional. Not supported by Cloud Run.
  ///
  /// [includeUninitialized] - Optional. Not supported by Cloud Run.
  ///
  /// [labelSelector] - Optional. Allows to filter resources based on a label.
  /// Supported operations are =, !=, exists, in, and notIn. For example, to
  /// list all tasks of execution "foo" in succeeded state:
  /// `run.googleapis.com/execution=foo,run.googleapis.com/runningState=Succeeded`.
  /// Supported states are: * `Pending`: Initial state of all tasks. The task
  /// has not yet started but eventually will. * `Running`: Container instances
  /// for this task are running or will be running shortly. * `Succeeded`: No
  /// more container instances to run for the task, and the last attempt
  /// succeeded. * `Failed`: No more container instances to run for the task,
  /// and the last attempt failed. This task has run out of retry attempts. *
  /// `Cancelled`: Task was running but got stopped because its parent execution
  /// has been aborted. * `Abandoned`: The task has not yet started and never
  /// will because its parent execution has been aborted.
  ///
  /// [limit] - Optional. The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - Optional. Not supported by Cloud Run.
  ///
  /// [watch] - Optional. Not supported by Cloud Run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTasksResponse> list(
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'apis/run.googleapis.com/v1/' +
        core.Uri.encodeFull('$parent') +
        '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTasksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authorizeddomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authorizeddomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizedDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [name] - The name of the configuration to retrieve. For Cloud Run, replace
  /// {namespace_id} with the project ID or number.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Configuration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the configurations should be listed.
  /// For Cloud Run, replace {namespace_id} with the project ID or number.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Optional. Encoded string to continue paging.
  ///
  /// [fieldSelector] - Not supported by Cloud Run.
  ///
  /// [includeUninitialized] - Not supported by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - Optional. The maximum number of the records that should be
  /// returned.
  ///
  /// [resourceVersion] - Not supported by Cloud Run.
  ///
  /// [watch] - Not supported by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/configurations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConfigurationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [parent] - Required. The namespace in which the domain mapping should be
  /// created. For Cloud Run (fully managed), replace {namespace} with the
  /// project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domainmappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain mapping to delete. For Cloud Run
  /// (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
  /// see kubernetes.io/docs/concepts/architecture/garbage-collection/ for more
  /// information.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a domain mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain mapping to retrieve. For Cloud
  /// Run (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DomainMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all domain mappings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The namespace from which the domain mappings should
  /// be listed. For Cloud Run (fully managed), replace {namespace} with the
  /// project ID or number. It takes the form namespaces/{namespace}. For
  /// example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domainmappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainMappingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the IAM Access Control policy currently in effect for the given job.
  ///
  /// This result does not include any inherited policies.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM Access control policy for the specified job.
  ///
  /// Overwrites any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified job.
  ///
  /// There are no permissions required for making this API call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. To query for all of the operations for a project.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for matching the completed or in-progress
  /// operations. The supported formats of *filter* are: To query for only
  /// completed operations: done:true To query for only ongoing operations:
  /// done:false Must be empty to query for all of the latest operations for the
  /// given parent project.
  ///
  /// [pageSize] - The maximum number of records that should be returned.
  /// Requested page size cannot exceed 100. If not set or set to less than or
  /// equal to 0, the default page size is 100. .
  ///
  /// [pageToken] - Token identifying which result to start with, which is
  /// returned by a previous list call.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
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
  async.Future<GoogleLongrunningOperation> wait(
    GoogleLongrunningWaitOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':wait';

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

class ProjectsLocationsRevisionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRevisionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to delete. For Cloud Run (fully
  /// managed), replace {namespace} with the project ID or number. It takes the
  /// form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
  /// Run currently ignores this setting, and deletes in the background.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get information about a revision.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the revision to retrieve. For Cloud Run (fully
  /// managed), replace {namespace} with the project ID or number. It takes the
  /// form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List revisions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the revisions should be listed. For
  /// Cloud Run (fully managed), replace {namespace} with the project ID or
  /// number. It takes the form namespaces/{namespace}. For example:
  /// namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// replace {namespace} with the project ID or number. It takes the form
  /// namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Route.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List routes.
  ///
  /// Request parameters:
  ///
  /// [parent] - The namespace from which the routes should be listed. For Cloud
  /// Run (fully managed), replace {namespace} with the project ID or number. It
  /// takes the form namespaces/{namespace}. For example: namespaces/PROJECT_ID
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/routes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Service.
  ///
  /// Service creation will trigger a new deployment. Use GetService, and check
  /// service.status to determine if the Service is ready.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource's parent. In Cloud Run, it may be one of
  /// the following: * `{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}/services` *
  /// `projects/{project_id_or_number}/locations/{region}` *
  /// `projects/{project_id_or_number}/regions/{region}`
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the provided service.
  ///
  /// This will cause the Service to stop serving traffic and will delete all
  /// associated Revisions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the service to delete. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [apiVersion] - Not supported, and ignored by Cloud Run.
  ///
  /// [dryRun] - Indicates that the server should validate the request and
  /// populate default values without persisting the request. Supported values:
  /// `all`
  ///
  /// [kind] - Not supported, and ignored by Cloud Run.
  ///
  /// [propagationPolicy] - Not supported, and ignored by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiVersion != null) 'apiVersion': [apiVersion],
      if (dryRun != null) 'dryRun': [dryRun],
      if (kind != null) 'kind': [kind],
      if (propagationPolicy != null) 'propagationPolicy': [propagationPolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Status.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the service to retrieve. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM Access Control policy currently in effect for the given Cloud
  /// Run service.
  ///
  /// This result does not include any inherited policies.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists services for the given project and region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent from where the resources should be listed.
  /// In Cloud Run, it may be one of the following: * `{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}` *
  /// `namespaces/{project_id_or_number}/services` *
  /// `projects/{project_id_or_number}/locations/{region}` *
  /// `projects/{project_id_or_number}/regions/{region}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [continue_] - Encoded string to continue paging.
  ///
  /// [fieldSelector] - Not supported, and ignored by Cloud Run.
  ///
  /// [includeUninitialized] - Not supported, and ignored by Cloud Run.
  ///
  /// [labelSelector] - Allows to filter resources based on a label. Supported
  /// operations are =, !=, exists, in, and notIn.
  ///
  /// [limit] - The maximum number of records that should be returned.
  ///
  /// [resourceVersion] - Not supported, and ignored by Cloud Run.
  ///
  /// [watch] - Not supported, and ignored by Cloud Run.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces a service.
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
  /// [name] - Required. The fully qualified name of the service to replace. It
  /// can be any of the following forms: *
  /// `namespaces/{project_id_or_number}/services/{service_name}` (only when the
  /// `endpoint` is regional) *
  /// `projects/{project_id_or_number}/locations/{region}/services/{service_name}`
  /// *
  /// `projects/{project_id_or_number}/regions/{region}/services/{service_name}`
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dryRun != null) 'dryRun': [dryRun],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Information for connecting over HTTP(s).
class Addressable {
  core.String? url;

  Addressable({
    this.url,
  });

  Addressable.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
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

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
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
typedef AuditLogConfig = $AuditLogConfig;

/// A domain that a user has been authorized to administer.
///
/// To authorize use of a domain, verify ownership via
/// [Search Console](https://search.google.com/search-console/welcome).
class AuthorizedDomain {
  /// Relative name of the domain authorized for use.
  ///
  /// Example: `example.com`.
  core.String? id;

  /// Deprecated Read only.
  ///
  /// Full path to the `AuthorizedDomain` resource in the API. Example:
  /// `projects/myproject/authorizedDomains/example.com`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? name;

  AuthorizedDomain({
    this.id,
    this.name,
  });

  AuthorizedDomain.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Storage volume source using the Container Storage Interface.
class CSIVolumeSource {
  /// name of the CSI driver for the requested storage system.
  ///
  /// Cloud Run supports the following drivers: * gcsfuse.run.googleapis.com :
  /// Mount a Cloud Storage Bucket as a volume.
  core.String? driver;

  /// If true, mount the volume as read only.
  ///
  /// Defaults to false.
  core.bool? readOnly;

  /// stores driver specific attributes.
  ///
  /// For Google Cloud Storage volumes, the following attributes are supported:
  /// * bucketName: the name of the Cloud Storage bucket to mount. The Cloud Run
  /// Service identity must have access to this bucket.
  core.Map<core.String, core.String>? volumeAttributes;

  CSIVolumeSource({
    this.driver,
    this.readOnly,
    this.volumeAttributes,
  });

  CSIVolumeSource.fromJson(core.Map json_)
      : this(
          driver: json_.containsKey('driver')
              ? json_['driver'] as core.String
              : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          volumeAttributes: json_.containsKey('volumeAttributes')
              ? (json_['volumeAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driver != null) 'driver': driver!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (volumeAttributes != null) 'volumeAttributes': volumeAttributes!,
      };
}

/// Request message for cancelling an execution.
typedef CancelExecutionRequest = $Empty;

/// Not supported by Cloud Run.
///
/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables
/// with. The contents of the target ConfigMap's Data field will represent the
/// key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalObjectReference? localObjectReference;

  /// The ConfigMap to select from.
  core.String? name;

  /// Specify whether the ConfigMap must be defined.
  core.bool? optional;

  ConfigMapEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  ConfigMapEnvSource.fromJson(core.Map json_)
      : this(
          localObjectReference: json_.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(json_['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (localObjectReference != null)
          'localObjectReference': localObjectReference!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
      };
}

/// Not supported by Cloud Run.
class ConfigMapKeySelector {
  /// Not supported by Cloud Run.
  ///
  /// Required.
  core.String? key;

  /// Not supported by Cloud Run.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalObjectReference? localObjectReference;

  /// Not supported by Cloud Run.
  ///
  /// Required.
  core.String? name;

  /// Not supported by Cloud Run.
  core.bool? optional;

  ConfigMapKeySelector({
    this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  ConfigMapKeySelector.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          localObjectReference: json_.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(json_['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
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

/// Not supported by Cloud Run.
///
/// Adapts a ConfigMap into a volume. The contents of the target ConfigMap's
/// Data field will be presented in a volume as files using the keys in the Data
/// field as the file names, unless the items element is populated with specific
/// mappings of keys to paths.
class ConfigMapVolumeSource {
  /// (Optional) Integer representation of mode bits to use on created files by
  /// default.
  ///
  /// Must be a value between 01 and 0777 (octal). If 0 or not set, it will
  /// default to 0644. Directories within the path are not affected by this
  /// setting. Notes * Internally, a umask of 0222 will be applied to any
  /// non-zero value. * This is an integer representation of the mode bits. So,
  /// the octal integer value should look exactly as the chmod numeric notation
  /// with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777
  /// (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or
  /// 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493
  /// (base-10). * This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set.
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

  ConfigMapVolumeSource.fromJson(core.Map json_)
      : this(
          defaultMode: json_.containsKey('defaultMode')
              ? json_['defaultMode'] as core.int
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => KeyToPath.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
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
/// revision's name.
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

  Configuration.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? ConfigurationSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? ConfigurationStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

  ConfigurationSpec.fromJson(core.Map json_)
      : this(
          template: json_.containsKey('template')
              ? RevisionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
      };
}

/// ConfigurationStatus communicates the observed state of the Configuration
/// (from the controller).
class ConfigurationStatus {
  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// LatestCreatedRevisionName is the last revision that was created from this
  /// Configuration.
  ///
  /// It might not be ready yet, so for the latest ready revision, use
  /// LatestReadyRevisionName.
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

  ConfigurationStatus.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          latestCreatedRevisionName:
              json_.containsKey('latestCreatedRevisionName')
                  ? json_['latestCreatedRevisionName'] as core.String
                  : null,
          latestReadyRevisionName: json_.containsKey('latestReadyRevisionName')
              ? json_['latestReadyRevisionName'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
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
  /// Arguments to the entrypoint.
  ///
  /// The docker image's CMD is used if this is not provided. Variable
  /// references are not supported in Cloud Run.
  core.List<core.String>? args;

  /// Entrypoint array.
  ///
  /// Not executed within a shell. The docker image's ENTRYPOINT is used if this
  /// is not provided. Variable references are not supported in Cloud Run.
  core.List<core.String>? command;

  /// List of environment variables to set in the container.
  ///
  /// EnvVar with duplicate names are generally allowed; if referencing a
  /// secret, the name must be unique for the container. For non-secret EnvVar
  /// names, the Container will only get the last-declared one.
  core.List<EnvVar>? env;

  /// Not supported by Cloud Run.
  core.List<EnvFromSource>? envFrom;

  /// Name of the container image in Dockerhub, Google Artifact Registry, or
  /// Google Container Registry.
  ///
  /// If the host is not provided, Dockerhub is assumed.
  ///
  /// Required.
  core.String? image;

  /// Image pull policy.
  ///
  /// One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is
  /// specified, or IfNotPresent otherwise.
  core.String? imagePullPolicy;

  /// Periodic probe of container liveness.
  ///
  /// Container will be restarted if the probe fails.
  Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL (RFC 1123).
  core.String? name;

  /// List of ports to expose from the container.
  ///
  /// Only a single port can be specified. The specified ports must be listening
  /// on all interfaces (0.0.0.0) within the container to be accessible. If
  /// omitted, a port number will be chosen and passed to the container through
  /// the PORT environment variable for the container to listen on.
  core.List<ContainerPort>? ports;

  /// Not supported by Cloud Run.
  Probe? readinessProbe;

  /// Compute Resources required by this container.
  ResourceRequirements? resources;

  /// Not supported by Cloud Run.
  SecurityContext? securityContext;

  /// Startup probe of application within the container.
  ///
  /// All other probes are disabled if a startup probe is provided, until it
  /// succeeds. Container will not receive traffic if the probe fails. If not
  /// provided, a default startup probe with TCP socket action is used.
  Probe? startupProbe;

  /// Path at which the file to which the container's termination message will
  /// be written is mounted into the container's filesystem.
  ///
  /// Message written is intended to be brief final status, such as an assertion
  /// failure message. Will be truncated by the node if greater than 4096 bytes.
  /// The total message length across all containers will be limited to 12kb.
  /// Defaults to /dev/termination-log.
  core.String? terminationMessagePath;

  /// Indicate how the termination message should be populated.
  ///
  /// File will use the contents of terminationMessagePath to populate the
  /// container status message on both success and failure.
  /// FallbackToLogsOnError will use the last chunk of container log output if
  /// the termination message file is empty and the container exited with an
  /// error. The log output is limited to 2048 bytes or 80 lines, whichever is
  /// smaller. Defaults to File. Cannot be updated.
  core.String? terminationMessagePolicy;

  /// Volume to mount into the container's filesystem.
  ///
  /// Only supports SecretVolumeSources. Pod volumes to mount into the
  /// container's filesystem.
  core.List<VolumeMount>? volumeMounts;

  /// Container's working directory.
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

  Container.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          command: json_.containsKey('command')
              ? (json_['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => EnvVar.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          envFrom: json_.containsKey('envFrom')
              ? (json_['envFrom'] as core.List)
                  .map((value) => EnvFromSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          imagePullPolicy: json_.containsKey('imagePullPolicy')
              ? json_['imagePullPolicy'] as core.String
              : null,
          livenessProbe: json_.containsKey('livenessProbe')
              ? Probe.fromJson(
                  json_['livenessProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ports: json_.containsKey('ports')
              ? (json_['ports'] as core.List)
                  .map((value) => ContainerPort.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readinessProbe: json_.containsKey('readinessProbe')
              ? Probe.fromJson(json_['readinessProbe']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resources: json_.containsKey('resources')
              ? ResourceRequirements.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          securityContext: json_.containsKey('securityContext')
              ? SecurityContext.fromJson(json_['securityContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startupProbe: json_.containsKey('startupProbe')
              ? Probe.fromJson(
                  json_['startupProbe'] as core.Map<core.String, core.dynamic>)
              : null,
          terminationMessagePath: json_.containsKey('terminationMessagePath')
              ? json_['terminationMessagePath'] as core.String
              : null,
          terminationMessagePolicy:
              json_.containsKey('terminationMessagePolicy')
                  ? json_['terminationMessagePolicy'] as core.String
                  : null,
          volumeMounts: json_.containsKey('volumeMounts')
              ? (json_['volumeMounts'] as core.List)
                  .map((value) => VolumeMount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          workingDir: json_.containsKey('workingDir')
              ? json_['workingDir'] as core.String
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

/// Per container override specification.
class ContainerOverride {
  /// Arguments to the entrypoint.
  ///
  /// The specified arguments replace and override any existing entrypoint
  /// arguments. Must be empty if `clear_args` is set to true.
  core.List<core.String>? args;

  /// Set to True to clear all existing arguments.
  ///
  /// Optional.
  core.bool? clearArgs;

  /// List of environment variables to set in the container.
  ///
  /// All specified environment variables are merged with existing environment
  /// variables. When the specified environment variables exist, these values
  /// override any existing values.
  core.List<EnvVar>? env;

  /// The name of the container specified as a DNS_LABEL.
  core.String? name;

  ContainerOverride({
    this.args,
    this.clearArgs,
    this.env,
    this.name,
  });

  ContainerOverride.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          clearArgs: json_.containsKey('clearArgs')
              ? json_['clearArgs'] as core.bool
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => EnvVar.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (clearArgs != null) 'clearArgs': clearArgs!,
        if (env != null) 'env': env!,
        if (name != null) 'name': name!,
      };
}

/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// Port number the container listens on.
  ///
  /// If present, this must be a valid port number, 0 \< x \< 65536. If not
  /// present, it will default to port 8080. For more information, see
  /// https://cloud.google.com/run/docs/container-contract#port
  core.int? containerPort;

  /// If specified, used to specify which protocol to use.
  ///
  /// Allowed values are "http1" and "h2c".
  core.String? name;

  /// Protocol for port.
  ///
  /// Must be "TCP". Defaults to "TCP".
  core.String? protocol;

  ContainerPort({
    this.containerPort,
    this.name,
    this.protocol,
  });

  ContainerPort.fromJson(core.Map json_)
      : this(
          containerPort: json_.containsKey('containerPort')
              ? json_['containerPort'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
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

  DomainMapping.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? DomainMappingSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? DomainMappingStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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
  /// - "AUTOMATIC" : Automatically provisions an HTTPS certificate via
  /// GoogleCA.
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

  DomainMappingSpec.fromJson(core.Map json_)
      : this(
          certificateMode: json_.containsKey('certificateMode')
              ? json_['certificateMode'] as core.String
              : null,
          forceOverride: json_.containsKey('forceOverride')
              ? json_['forceOverride'] as core.bool
              : null,
          routeName: json_.containsKey('routeName')
              ? json_['routeName'] as core.String
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

  /// Not supported by Cloud Run.
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

  DomainMappingStatus.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mappedRouteName: json_.containsKey('mappedRouteName')
              ? json_['mappedRouteName'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          resourceRecords: json_.containsKey('resourceRecords')
              ? (json_['resourceRecords'] as core.List)
                  .map((value) => ResourceRecord.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// In memory (tmpfs) ephemeral storage.
///
/// It is ephemeral in the sense that when the sandbox is taken down, the data
/// is destroyed with it (it does not persist across sandbox runs).
class EmptyDirVolumeSource {
  /// The medium on which the data is stored.
  ///
  /// The default is "" which means to use the node's default medium. Must be an
  /// empty string (default) or Memory. More info:
  /// https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  core.String? medium;

  /// Limit on the storage usable by this EmptyDir volume.
  ///
  /// The size limit is also applicable for memory medium. The maximum usage on
  /// memory medium EmptyDir would be the minimum value between the SizeLimit
  /// specified here and the sum of memory limits of all containers. The default
  /// is nil which means that the limit is undefined. More info:
  /// https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume.
  /// Info in Kubernetes:
  /// https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  core.String? sizeLimit;

  EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  EmptyDirVolumeSource.fromJson(core.Map json_)
      : this(
          medium: json_.containsKey('medium')
              ? json_['medium'] as core.String
              : null,
          sizeLimit: json_.containsKey('sizeLimit')
              ? json_['sizeLimit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (medium != null) 'medium': medium!,
        if (sizeLimit != null) 'sizeLimit': sizeLimit!,
      };
}

/// Not supported by Cloud Run.
///
/// EnvFromSource represents the source of a set of ConfigMaps
class EnvFromSource {
  /// The ConfigMap to select from
  ConfigMapEnvSource? configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap.
  ///
  /// Must be a C_IDENTIFIER.
  core.String? prefix;

  /// The Secret to select from
  SecretEnvSource? secretRef;

  EnvFromSource({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  EnvFromSource.fromJson(core.Map json_)
      : this(
          configMapRef: json_.containsKey('configMapRef')
              ? ConfigMapEnvSource.fromJson(
                  json_['configMapRef'] as core.Map<core.String, core.dynamic>)
              : null,
          prefix: json_.containsKey('prefix')
              ? json_['prefix'] as core.String
              : null,
          secretRef: json_.containsKey('secretRef')
              ? SecretEnvSource.fromJson(
                  json_['secretRef'] as core.Map<core.String, core.dynamic>)
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
  /// Required.
  core.String? name;

  /// Value of the environment variable.
  ///
  /// Defaults to "". Variable references are not supported in Cloud Run.
  core.String? value;

  /// Source for the environment variable's value.
  ///
  /// Only supports secret_key_ref. Cannot be used if value is not empty.
  EnvVarSource? valueFrom;

  EnvVar({
    this.name,
    this.value,
    this.valueFrom,
  });

  EnvVar.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
          valueFrom: json_.containsKey('valueFrom')
              ? EnvVarSource.fromJson(
                  json_['valueFrom'] as core.Map<core.String, core.dynamic>)
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
  /// Not supported by Cloud Run.
  ///
  /// Not supported in Cloud Run.
  ConfigMapKeySelector? configMapKeyRef;

  /// Selects a key (version) of a secret in Secret Manager.
  SecretKeySelector? secretKeyRef;

  EnvVarSource({
    this.configMapKeyRef,
    this.secretKeyRef,
  });

  EnvVarSource.fromJson(core.Map json_)
      : this(
          configMapKeyRef: json_.containsKey('configMapKeyRef')
              ? ConfigMapKeySelector.fromJson(json_['configMapKeyRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secretKeyRef: json_.containsKey('secretKeyRef')
              ? SecretKeySelector.fromJson(
                  json_['secretKeyRef'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMapKeyRef != null) 'configMapKeyRef': configMapKeyRef!,
        if (secretKeyRef != null) 'secretKeyRef': secretKeyRef!,
      };
}

/// Not supported by Cloud Run.
///
/// ExecAction describes a "run in container" action.
typedef ExecAction = $ExecAction;

/// Execution represents the configuration of a single execution.
///
/// An execution is an immutable resource that references a container image
/// which is run to completion.
class Execution {
  /// APIVersion defines the versioned schema of this representation of an
  /// object.
  ///
  /// Servers should convert recognized schemas to the latest internal value,
  /// and may reject unrecognized values.
  ///
  /// Optional.
  core.String? apiVersion;

  /// Kind is a string value representing the REST resource this object
  /// represents.
  ///
  /// Servers may infer this from the endpoint the client submits requests to.
  /// Cannot be updated. In CamelCase.
  ///
  /// Optional.
  core.String? kind;

  /// Standard object's metadata.
  ///
  /// Optional.
  ObjectMeta? metadata;

  /// Specification of the desired behavior of an execution.
  ///
  /// Optional.
  ExecutionSpec? spec;

  /// Current status of an execution.
  ///
  /// Output only.
  ExecutionStatus? status;

  Execution({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Execution.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? ExecutionSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? ExecutionStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

/// Reference to an Execution.
///
/// Use /Executions.GetExecution with the given name to get full execution
/// including the latest status.
class ExecutionReference {
  /// Completion timestamp of the execution.
  ///
  /// Optional.
  core.String? completionTimestamp;

  /// Creation timestamp of the execution.
  ///
  /// Optional.
  core.String? creationTimestamp;

  /// Name of the execution.
  ///
  /// Optional.
  core.String? name;

  ExecutionReference({
    this.completionTimestamp,
    this.creationTimestamp,
    this.name,
  });

  ExecutionReference.fromJson(core.Map json_)
      : this(
          completionTimestamp: json_.containsKey('completionTimestamp')
              ? json_['completionTimestamp'] as core.String
              : null,
          creationTimestamp: json_.containsKey('creationTimestamp')
              ? json_['creationTimestamp'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTimestamp != null)
          'completionTimestamp': completionTimestamp!,
        if (creationTimestamp != null) 'creationTimestamp': creationTimestamp!,
        if (name != null) 'name': name!,
      };
}

/// ExecutionSpec describes how the execution will look.
class ExecutionSpec {
  /// Specifies the maximum desired number of tasks the execution should run at
  /// given time.
  ///
  /// Must be \<= task_count. When the job is run, if this field is 0 or unset,
  /// the maximum possible value will be used for that execution. The actual
  /// number of tasks running in steady state will be less than this number when
  /// there are fewer tasks waiting to be completed, i.e. when the work left to
  /// do is less than max parallelism.
  ///
  /// Optional.
  core.int? parallelism;

  /// Specifies the desired number of tasks the execution should run.
  ///
  /// Setting to 1 means that parallelism is limited to 1 and the success of
  /// that task signals the success of the execution. Defaults to 1.
  ///
  /// Optional.
  core.int? taskCount;

  /// The template used to create tasks for this execution.
  ///
  /// Optional.
  TaskTemplateSpec? template;

  ExecutionSpec({
    this.parallelism,
    this.taskCount,
    this.template,
  });

  ExecutionSpec.fromJson(core.Map json_)
      : this(
          parallelism: json_.containsKey('parallelism')
              ? json_['parallelism'] as core.int
              : null,
          taskCount: json_.containsKey('taskCount')
              ? json_['taskCount'] as core.int
              : null,
          template: json_.containsKey('template')
              ? TaskTemplateSpec.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parallelism != null) 'parallelism': parallelism!,
        if (taskCount != null) 'taskCount': taskCount!,
        if (template != null) 'template': template!,
      };
}

/// ExecutionStatus represents the current state of an Execution.
class ExecutionStatus {
  /// The number of tasks which reached phase Cancelled.
  ///
  /// Optional.
  core.int? cancelledCount;

  /// Represents the time that the execution was completed.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations. It is represented in RFC3339 form and is in UTC. +optional
  ///
  /// Optional.
  core.String? completionTime;

  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// Execution-specific conditions include: * `ResourcesAvailable`: `True` when
  /// underlying resources have been provisioned. * `Started`: `True` when the
  /// execution has started to execute. * `Completed`: `True` when the execution
  /// has succeeded. `False` when the execution has failed.
  ///
  /// Optional.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// The number of tasks which reached phase Failed.
  ///
  /// Optional.
  core.int? failedCount;

  /// URI where logs for this execution can be found in Cloud Console.
  ///
  /// Optional.
  core.String? logUri;

  /// The 'generation' of the execution that was last processed by the
  /// controller.
  ///
  /// Optional.
  core.int? observedGeneration;

  /// The number of tasks which have retried at least once.
  ///
  /// Optional.
  core.int? retriedCount;

  /// The number of actively running tasks.
  ///
  /// Optional.
  core.int? runningCount;

  /// Represents the time that the execution started to run.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations. It is represented in RFC3339 form and is in UTC.
  ///
  /// Optional.
  core.String? startTime;

  /// The number of tasks which reached phase Succeeded.
  ///
  /// Optional.
  core.int? succeededCount;

  ExecutionStatus({
    this.cancelledCount,
    this.completionTime,
    this.conditions,
    this.failedCount,
    this.logUri,
    this.observedGeneration,
    this.retriedCount,
    this.runningCount,
    this.startTime,
    this.succeededCount,
  });

  ExecutionStatus.fromJson(core.Map json_)
      : this(
          cancelledCount: json_.containsKey('cancelledCount')
              ? json_['cancelledCount'] as core.int
              : null,
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failedCount: json_.containsKey('failedCount')
              ? json_['failedCount'] as core.int
              : null,
          logUri: json_.containsKey('logUri')
              ? json_['logUri'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          retriedCount: json_.containsKey('retriedCount')
              ? json_['retriedCount'] as core.int
              : null,
          runningCount: json_.containsKey('runningCount')
              ? json_['runningCount'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          succeededCount: json_.containsKey('succeededCount')
              ? json_['succeededCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelledCount != null) 'cancelledCount': cancelledCount!,
        if (completionTime != null) 'completionTime': completionTime!,
        if (conditions != null) 'conditions': conditions!,
        if (failedCount != null) 'failedCount': failedCount!,
        if (logUri != null) 'logUri': logUri!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (retriedCount != null) 'retriedCount': retriedCount!,
        if (runningCount != null) 'runningCount': runningCount!,
        if (startTime != null) 'startTime': startTime!,
        if (succeededCount != null) 'succeededCount': succeededCount!,
      };
}

/// ExecutionTemplateSpec describes the metadata and spec an Execution should
/// have when created from a job.
class ExecutionTemplateSpec {
  /// Optional metadata for this Execution, including labels and annotations.
  ///
  /// The following annotation keys set properties of the created execution: *
  /// `run.googleapis.com/cloudsql-instances` sets Cloud SQL connections.
  /// Multiple values should be comma separated. *
  /// `run.googleapis.com/vpc-access-connector` sets a Serverless VPC Access
  /// connector. * `run.googleapis.com/vpc-access-egress` sets VPC egress.
  /// Supported values are `all-traffic`, `all` (deprecated), and
  /// `private-ranges-only`. `all-traffic` and `all` provide the same
  /// functionality. `all` is deprecated but will continue to be supported.
  /// Prefer `all-traffic`.
  ///
  /// Optional.
  ObjectMeta? metadata;

  /// ExecutionSpec holds the desired configuration for executions of this job.
  ///
  /// Required.
  ExecutionSpec? spec;

  ExecutionTemplateSpec({
    this.metadata,
    this.spec,
  });

  ExecutionTemplateSpec.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? ExecutionSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
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
typedef Expr = $Expr;

/// GRPCAction describes an action involving a GRPC port.
class GRPCAction {
  /// Port number of the gRPC service.
  ///
  /// Number must be in the range 1 to 65535.
  core.int? port;

  /// Service is the name of the service to place in the gRPC
  /// HealthCheckRequest.
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  core.String? service;

  GRPCAction({
    this.port,
    this.service,
  });

  GRPCAction.fromJson(core.Map json_)
      : this(
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (port != null) 'port': port!,
        if (service != null) 'service': service!,
      };
}

/// Conditions show the status of reconciliation progress on a given resource.
///
/// Most resource use a top-level condition type "Ready" or "Completed" to show
/// overall status with other conditions to checkpoint each stage of
/// reconciliation. Note that if metadata.Generation does not equal
/// status.ObservedGeneration, the conditions shown may not be relevant for the
/// current spec.
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
  /// These are intended to be stable, unique values which the client may use to
  /// trigger error handling logic, whereas messages which may be changed later
  /// by the server.
  ///
  /// Optional.
  core.String? reason;

  /// How to interpret this condition.
  ///
  /// One of Error, Warning, or Info. Conditions of severity Info do not
  /// contribute to resource readiness.
  ///
  /// Optional.
  core.String? severity;

  /// Status of the condition, one of True, False, Unknown.
  core.String? status;

  /// type is used to communicate the status of the reconciliation process.
  ///
  /// Types common to all resources include: * "Ready" or "Completed": True when
  /// the Resource is ready.
  core.String? type;

  GoogleCloudRunV1Condition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.severity,
    this.status,
    this.type,
  });

  GoogleCloudRunV1Condition.fromJson(core.Map json_)
      : this(
          lastTransitionTime: json_.containsKey('lastTransitionTime')
              ? json_['lastTransitionTime'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// The request message for Operations.WaitOperation.
typedef GoogleLongrunningWaitOperationRequest = $WaitOperationRequest;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetAction {
  /// Not supported by Cloud Run.
  core.String? host;

  /// Custom headers to set in the request.
  ///
  /// HTTP allows repeated headers.
  core.List<HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  core.String? path;

  /// Port number to access on the container.
  ///
  /// Number must be in the range 1 to 65535.
  core.int? port;

  /// Not supported by Cloud Run.
  core.String? scheme;

  HTTPGetAction({
    this.host,
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  HTTPGetAction.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          httpHeaders: json_.containsKey('httpHeaders')
              ? (json_['httpHeaders'] as core.List)
                  .map((value) => HTTPHeader.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          scheme: json_.containsKey('scheme')
              ? json_['scheme'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (httpHeaders != null) 'httpHeaders': httpHeaders!,
        if (path != null) 'path': path!,
        if (port != null) 'port': port!,
        if (scheme != null) 'scheme': scheme!,
      };
}

/// HTTPHeader describes a custom header to be used in HTTP probes
typedef HTTPHeader = $HTTPHeader;

/// Job represents the configuration of a single job, which references a
/// container image which is run to completion.
class Job {
  /// APIVersion defines the versioned schema of this representation of an
  /// object.
  ///
  /// Servers should convert recognized schemas to the latest internal value,
  /// and may reject unrecognized values.
  ///
  /// Optional.
  core.String? apiVersion;

  /// Kind is a string value representing the REST resource this object
  /// represents.
  ///
  /// Servers may infer this from the endpoint the client submits requests to.
  /// Cannot be updated. In CamelCase.
  ///
  /// Optional.
  core.String? kind;

  /// Standard object's metadata.
  ///
  /// Optional.
  ObjectMeta? metadata;

  /// Specification of the desired behavior of a job.
  ///
  /// Optional.
  JobSpec? spec;

  /// Current status of a job.
  ///
  /// Output only.
  JobStatus? status;

  Job({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Job.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? JobSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? JobStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

/// JobSpec describes how the job will look.
class JobSpec {
  /// Describes the execution that will be created when running a job.
  ///
  /// Optional.
  ExecutionTemplateSpec? template;

  JobSpec({
    this.template,
  });

  JobSpec.fromJson(core.Map json_)
      : this(
          template: json_.containsKey('template')
              ? ExecutionTemplateSpec.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (template != null) 'template': template!,
      };
}

/// JobStatus represents the current state of a Job.
class JobStatus {
  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// Job-specific conditions include: * `Ready`: `True` when the job is ready
  /// to be executed.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// Number of executions created for this job.
  core.int? executionCount;

  /// A pointer to the most recently created execution for this job.
  ///
  /// This is set regardless of the eventual state of the execution.
  ExecutionReference? latestCreatedExecution;

  /// The 'generation' of the job that was last processed by the controller.
  core.int? observedGeneration;

  JobStatus({
    this.conditions,
    this.executionCount,
    this.latestCreatedExecution,
    this.observedGeneration,
  });

  JobStatus.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          executionCount: json_.containsKey('executionCount')
              ? json_['executionCount'] as core.int
              : null,
          latestCreatedExecution: json_.containsKey('latestCreatedExecution')
              ? ExecutionReference.fromJson(json_['latestCreatedExecution']
                  as core.Map<core.String, core.dynamic>)
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (executionCount != null) 'executionCount': executionCount!,
        if (latestCreatedExecution != null)
          'latestCreatedExecution': latestCreatedExecution!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
      };
}

/// Maps a string key to a path within a volume.
class KeyToPath {
  /// The Cloud Secret Manager secret version.
  ///
  /// Can be 'latest' for the latest value, or an integer or a secret alias for
  /// a specific version. The key to project.
  core.String? key;

  /// (Optional) Mode bits to use on this file, must be a value between 01 and
  /// 0777 (octal).
  ///
  /// If 0 or not set, the Volume's default mode will be used. Notes *
  /// Internally, a umask of 0222 will be applied to any non-zero value. * This
  /// is an integer representation of the mode bits. So, the octal integer value
  /// should look exactly as the chmod numeric notation with a leading zero.
  /// Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511
  /// (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10).
  /// For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). *
  /// This might be in conflict with other options that affect the file mode,
  /// like fsGroup, and the result can be other mode bits set.
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

  KeyToPath.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.int : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
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

  ListAuthorizedDomainsResponse.fromJson(core.Map json_)
      : this(
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => AuthorizedDomain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  ListConfigurationsResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Configuration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

  ListDomainMappingsResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => DomainMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// ListExecutionsResponse is a list of Executions resources.
class ListExecutionsResponse {
  /// The API version for this call such as "run.googleapis.com/v1".
  core.String? apiVersion;

  /// List of Executions.
  core.List<Execution>? items;

  /// The kind of this resource, in this case "ExecutionsList".
  core.String? kind;

  /// Metadata associated with this executions list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListExecutionsResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListExecutionsResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// ListJobsResponse is a list of Jobs resources.
class ListJobsResponse {
  /// The API version for this call such as "run.googleapis.com/v1".
  core.String? apiVersion;

  /// List of Jobs.
  core.List<Job>? items;

  /// The kind of this resource, in this case "JobsList".
  core.String? kind;

  /// Metadata associated with this jobs list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListJobsResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// Metadata for synthetic resources like List.
///
/// In Cloud Run, all List Resources Responses will have a ListMeta instead of
/// ObjectMeta.
class ListMeta {
  /// Continuation token is a value emitted when the count of items is larger
  /// than the user/system limit.
  ///
  /// To retrieve the next page of items, pass the value of `continue` as the
  /// next request's `page_token`.
  core.String? continue_;

  /// Opaque string that identifies the server's internal version of this
  /// object.
  ///
  /// It can be used by clients to determine when objects have changed. If the
  /// message is passed back to the server, it must be left unmodified.
  core.String? resourceVersion;

  /// URL representing this object.
  core.String? selfLink;

  ListMeta({
    this.continue_,
    this.resourceVersion,
    this.selfLink,
  });

  ListMeta.fromJson(core.Map json_)
      : this(
          continue_: json_.containsKey('continue')
              ? json_['continue'] as core.String
              : null,
          resourceVersion: json_.containsKey('resourceVersion')
              ? json_['resourceVersion'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
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

  ListRevisionsResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Revision.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

  ListRoutesResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Route.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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
  /// The API version for this call; returns "serving.knative.dev/v1".
  core.String? apiVersion;

  /// List of Services.
  core.List<Service>? items;

  /// The kind of this resource; returns "ServiceList".
  core.String? kind;

  /// Metadata associated with this Service list.
  ListMeta? metadata;

  /// For calls against the global endpoint, returns the list of Cloud locations
  /// that could not be reached.
  ///
  /// For regional calls, this field is not used.
  core.List<core.String>? unreachable;

  ListServicesResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListServicesResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Service.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// ListTasksResponse is a list of Tasks resources.
class ListTasksResponse {
  /// The API version for this call such as "run.googleapis.com/v1".
  core.String? apiVersion;

  /// List of Tasks.
  core.List<Task>? items;

  /// The kind of this resource, in this case "TasksList".
  core.String? kind;

  /// Metadata associated with this tasks list.
  ListMeta? metadata;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTasksResponse({
    this.apiVersion,
    this.items,
    this.kind,
    this.metadata,
    this.unreachable,
  });

  ListTasksResponse.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
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

/// Not supported by Cloud Run.
///
/// LocalObjectReference contains enough information to let you locate the
/// referenced object inside the same namespace.
class LocalObjectReference {
  /// Name of the referent.
  core.String? name;

  LocalObjectReference({
    this.name,
  });

  LocalObjectReference.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Represents a persistent volume that will be mounted using NFS.
///
/// This volume will be shared between all instances of the resource and data
/// will not be deleted when the instance is shut down.
class NFSVolumeSource {
  /// Path that is exported by the NFS server.
  core.String? path;

  /// If true, mount the NFS volume as read only.
  ///
  /// Defaults to false.
  core.bool? readOnly;

  /// Hostname or IP address of the NFS server.
  core.String? server;

  NFSVolumeSource({
    this.path,
    this.readOnly,
    this.server,
  });

  NFSVolumeSource.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          server: json_.containsKey('server')
              ? json_['server'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (server != null) 'server': server!,
      };
}

/// google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources
/// must have, which includes all objects users must create.
class ObjectMeta {
  /// Unstructured key value map stored with a resource that may be set by
  /// external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects. In
  /// Cloud Run, annotations with 'run.googleapis.com/' and
  /// 'autoscaling.knative.dev' are restricted, and the accepted annotations
  /// will be different depending on the resource type. *
  /// `autoscaling.knative.dev/maxScale`: Revision. *
  /// `autoscaling.knative.dev/minScale`: Revision. *
  /// `run.googleapis.com/binary-authorization-breakglass`: Service, Job, *
  /// `run.googleapis.com/binary-authorization`: Service, Job, Execution. *
  /// `run.googleapis.com/client-name`: All resources. *
  /// `run.googleapis.com/cloudsql-instances`: Revision, Execution. *
  /// `run.googleapis.com/container-dependencies`: Revision . *
  /// `run.googleapis.com/cpu-throttling`: Revision. *
  /// `run.googleapis.com/custom-audiences`: Service. *
  /// `run.googleapis.com/default-url-disabled`: Service. *
  /// `run.googleapis.com/description`: Service. *
  /// `run.googleapis.com/encryption-key-shutdown-hours`: Revision *
  /// `run.googleapis.com/encryption-key`: Revision, Execution. *
  /// `run.googleapis.com/execution-environment`: Revision, Execution. *
  /// `run.googleapis.com/gc-traffic-tags`: Service. *
  /// `run.googleapis.com/ingress`: Service. *
  /// `run.googleapis.com/launch-stage`: Service, Job. *
  /// `run.googleapis.com/minScale`: Service (ALPHA) *
  /// `run.googleapis.com/network-interfaces`: Revision, Execution. *
  /// `run.googleapis.com/post-key-revocation-action-type`: Revision. *
  /// `run.googleapis.com/secrets`: Revision, Execution. *
  /// `run.googleapis.com/secure-session-agent`: Revision. *
  /// `run.googleapis.com/sessionAffinity`: Revision. *
  /// `run.googleapis.com/startup-cpu-boost`: Revision. *
  /// `run.googleapis.com/vpc-access-connector`: Revision, Execution. *
  /// `run.googleapis.com/vpc-access-egress`: Revision, Execution.
  core.Map<core.String, core.String>? annotations;

  /// Not supported by Cloud Run
  core.String? clusterName;

  /// UTC timestamp representing the server time when this object was created.
  core.String? creationTimestamp;

  /// Not supported by Cloud Run
  core.int? deletionGracePeriodSeconds;

  /// The read-only soft deletion timestamp for this resource.
  ///
  /// In Cloud Run, users are not able to set this field. Instead, they must
  /// call the corresponding Delete API.
  core.String? deletionTimestamp;

  /// Not supported by Cloud Run
  core.List<core.String>? finalizers;

  /// Not supported by Cloud Run
  core.String? generateName;

  /// A system-provided sequence number representing a specific generation of
  /// the desired state.
  core.int? generation;

  /// Map of string keys and values that can be used to organize and categorize
  /// (scope and select) objects.
  ///
  /// May match selectors of replication controllers and routes.
  core.Map<core.String, core.String>? labels;

  /// The name of the resource.
  ///
  /// Name is required when creating top-level resources (Service, Job), must be
  /// unique within a Cloud Run project/region, and cannot be changed once
  /// created.
  ///
  /// Required.
  core.String? name;

  /// Defines the space within each name must be unique within a Cloud Run
  /// region.
  ///
  /// In Cloud Run, it must be project ID or number.
  ///
  /// Required.
  core.String? namespace;

  /// Not supported by Cloud Run
  core.List<OwnerReference>? ownerReferences;

  /// Opaque, system-generated value that represents the internal version of
  /// this object that can be used by clients to determine when objects have
  /// changed.
  ///
  /// May be used for optimistic concurrency, change detection, and the watch
  /// operation on a resource or set of resources. Clients must treat these
  /// values as opaque and passed unmodified back to the server or omit the
  /// value to disable conflict-detection.
  core.String? resourceVersion;

  /// URL representing this object.
  core.String? selfLink;

  /// Unique, system-generated identifier for this resource.
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

  ObjectMeta.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          clusterName: json_.containsKey('clusterName')
              ? json_['clusterName'] as core.String
              : null,
          creationTimestamp: json_.containsKey('creationTimestamp')
              ? json_['creationTimestamp'] as core.String
              : null,
          deletionGracePeriodSeconds:
              json_.containsKey('deletionGracePeriodSeconds')
                  ? json_['deletionGracePeriodSeconds'] as core.int
                  : null,
          deletionTimestamp: json_.containsKey('deletionTimestamp')
              ? json_['deletionTimestamp'] as core.String
              : null,
          finalizers: json_.containsKey('finalizers')
              ? (json_['finalizers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          generateName: json_.containsKey('generateName')
              ? json_['generateName'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.int
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
          namespace: json_.containsKey('namespace')
              ? json_['namespace'] as core.String
              : null,
          ownerReferences: json_.containsKey('ownerReferences')
              ? (json_['ownerReferences'] as core.List)
                  .map((value) => OwnerReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceVersion: json_.containsKey('resourceVersion')
              ? json_['resourceVersion'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
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

/// RunJob Overrides that contains Execution fields to be overridden on the go.
class Overrides {
  /// Per container override specification.
  core.List<ContainerOverride>? containerOverrides;

  /// The desired number of tasks the execution should run.
  ///
  /// Will replace existing task_count value.
  core.int? taskCount;

  /// Duration in seconds the task may be active before the system will actively
  /// try to mark it failed and kill associated containers.
  ///
  /// Will replace existing timeout_seconds value.
  core.int? timeoutSeconds;

  Overrides({
    this.containerOverrides,
    this.taskCount,
    this.timeoutSeconds,
  });

  Overrides.fromJson(core.Map json_)
      : this(
          containerOverrides: json_.containsKey('containerOverrides')
              ? (json_['containerOverrides'] as core.List)
                  .map((value) => ContainerOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          taskCount: json_.containsKey('taskCount')
              ? json_['taskCount'] as core.int
              : null,
          timeoutSeconds: json_.containsKey('timeoutSeconds')
              ? json_['timeoutSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerOverrides != null)
          'containerOverrides': containerOverrides!,
        if (taskCount != null) 'taskCount': taskCount!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
      };
}

/// This is not supported or used by Cloud Run.
class OwnerReference {
  /// This is not supported or used by Cloud Run.
  core.String? apiVersion;

  /// This is not supported or used by Cloud Run.
  core.bool? blockOwnerDeletion;

  /// This is not supported or used by Cloud Run.
  core.bool? controller;

  /// This is not supported or used by Cloud Run.
  core.String? kind;

  /// This is not supported or used by Cloud Run.
  core.String? name;

  /// This is not supported or used by Cloud Run.
  core.String? uid;

  OwnerReference({
    this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    this.kind,
    this.name,
    this.uid,
  });

  OwnerReference.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          blockOwnerDeletion: json_.containsKey('blockOwnerDeletion')
              ? json_['blockOwnerDeletion'] as core.bool
              : null,
          controller: json_.containsKey('controller')
              ? json_['controller'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
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
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
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

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Probe describes a health check to be performed against a container to
/// determine whether it is alive or ready to receive traffic.
class Probe {
  /// Not supported by Cloud Run.
  ExecAction? exec;

  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded.
  ///
  /// Defaults to 3. Minimum value is 1.
  core.int? failureThreshold;

  /// GRPCAction specifies an action involving a GRPC port.
  GRPCAction? grpc;

  /// HTTPGet specifies the http request to perform.
  HTTPGetAction? httpGet;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  ///
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240.
  core.int? initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  ///
  /// Default to 10 seconds. Minimum value is 1. Maximum value for liveness
  /// probe is 3600. Maximum value for startup probe is 240. Must be greater or
  /// equal than timeout_seconds.
  core.int? periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful
  /// after having failed.
  ///
  /// Must be 1 if set.
  core.int? successThreshold;

  /// TCPSocket specifies an action involving a TCP port.
  TCPSocketAction? tcpSocket;

  /// Number of seconds after which the probe times out.
  ///
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be
  /// smaller than period_seconds; if period_seconds is not set, must be less or
  /// equal than 10.
  core.int? timeoutSeconds;

  Probe({
    this.exec,
    this.failureThreshold,
    this.grpc,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.tcpSocket,
    this.timeoutSeconds,
  });

  Probe.fromJson(core.Map json_)
      : this(
          exec: json_.containsKey('exec')
              ? ExecAction.fromJson(
                  json_['exec'] as core.Map<core.String, core.dynamic>)
              : null,
          failureThreshold: json_.containsKey('failureThreshold')
              ? json_['failureThreshold'] as core.int
              : null,
          grpc: json_.containsKey('grpc')
              ? GRPCAction.fromJson(
                  json_['grpc'] as core.Map<core.String, core.dynamic>)
              : null,
          httpGet: json_.containsKey('httpGet')
              ? HTTPGetAction.fromJson(
                  json_['httpGet'] as core.Map<core.String, core.dynamic>)
              : null,
          initialDelaySeconds: json_.containsKey('initialDelaySeconds')
              ? json_['initialDelaySeconds'] as core.int
              : null,
          periodSeconds: json_.containsKey('periodSeconds')
              ? json_['periodSeconds'] as core.int
              : null,
          successThreshold: json_.containsKey('successThreshold')
              ? json_['successThreshold'] as core.int
              : null,
          tcpSocket: json_.containsKey('tcpSocket')
              ? TCPSocketAction.fromJson(
                  json_['tcpSocket'] as core.Map<core.String, core.dynamic>)
              : null,
          timeoutSeconds: json_.containsKey('timeoutSeconds')
              ? json_['timeoutSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exec != null) 'exec': exec!,
        if (failureThreshold != null) 'failureThreshold': failureThreshold!,
        if (grpc != null) 'grpc': grpc!,
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

  ResourceRecord.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rrdata: json_.containsKey('rrdata')
              ? json_['rrdata'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (rrdata != null) 'rrdata': rrdata!,
        if (type != null) 'type': type!,
      };
}

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// Limits describes the maximum amount of compute resources allowed.
  ///
  /// Only 'cpu' and 'memory' keys are supported. * For supported 'cpu' values,
  /// go to https://cloud.google.com/run/docs/configuring/cpu. * For supported
  /// 'memory' values and syntax, go to
  /// https://cloud.google.com/run/docs/configuring/memory-limits
  core.Map<core.String, core.String>? limits;

  /// Requests describes the minimum amount of compute resources required.
  ///
  /// Only `cpu` and `memory` are supported. If Requests is omitted for a
  /// container, it defaults to Limits if that is explicitly specified,
  /// otherwise to an implementation-defined value. * For supported 'cpu'
  /// values, go to https://cloud.google.com/run/docs/configuring/cpu. * For
  /// supported 'memory' values and syntax, go to
  /// https://cloud.google.com/run/docs/configuring/memory-limits
  core.Map<core.String, core.String>? requests;

  ResourceRequirements({
    this.limits,
    this.requests,
  });

  ResourceRequirements.fromJson(core.Map json_)
      : this(
          limits: json_.containsKey('limits')
              ? (json_['limits'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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
/// https://github.com/knative/specs/blob/main/specs/serving/overview.md#revision
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

  Revision.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? RevisionSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? RevisionStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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
  /// If not specified, defaults to 80.
  core.int? containerConcurrency;

  /// Containers holds the single container that defines the unit of execution
  /// for this Revision.
  ///
  /// In the context of a Revision, we disallow a number of fields on this
  /// Container, including: name and lifecycle. In Cloud Run, only a single
  /// container may be provided.
  ///
  /// Required.
  core.List<Container>? containers;

  /// Not supported by Cloud Run.
  core.bool? enableServiceLinks;

  /// Not supported by Cloud Run.
  core.List<LocalObjectReference>? imagePullSecrets;

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
  /// Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is
  /// 3600 seconds (1 hour).
  core.int? timeoutSeconds;
  core.List<Volume>? volumes;

  RevisionSpec({
    this.containerConcurrency,
    this.containers,
    this.enableServiceLinks,
    this.imagePullSecrets,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  RevisionSpec.fromJson(core.Map json_)
      : this(
          containerConcurrency: json_.containsKey('containerConcurrency')
              ? json_['containerConcurrency'] as core.int
              : null,
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enableServiceLinks: json_.containsKey('enableServiceLinks')
              ? json_['enableServiceLinks'] as core.bool
              : null,
          imagePullSecrets: json_.containsKey('imagePullSecrets')
              ? (json_['imagePullSecrets'] as core.List)
                  .map((value) => LocalObjectReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceAccountName: json_.containsKey('serviceAccountName')
              ? json_['serviceAccountName'] as core.String
              : null,
          timeoutSeconds: json_.containsKey('timeoutSeconds')
              ? json_['timeoutSeconds'] as core.int
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerConcurrency != null)
          'containerConcurrency': containerConcurrency!,
        if (containers != null) 'containers': containers!,
        if (enableServiceLinks != null)
          'enableServiceLinks': enableServiceLinks!,
        if (imagePullSecrets != null) 'imagePullSecrets': imagePullSecrets!,
        if (serviceAccountName != null)
          'serviceAccountName': serviceAccountName!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// RevisionStatus communicates the observed state of the Revision (from the
/// controller).
class RevisionStatus {
  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// As a Revision is being prepared, it will incrementally update conditions.
  /// Revision-specific conditions include: * `ResourcesAvailable`: `True` when
  /// underlying resources have been provisioned. * `ContainerHealthy`: `True`
  /// when the Revision readiness check completes. * `Active`: `True` when the
  /// Revision may receive traffic.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// The configured number of instances running this revision.
  ///
  /// For Cloud Run, this only includes instances provisioned using the minScale
  /// annotation. It does not include instances created by autoscaling.
  ///
  /// Output only.
  core.int? desiredReplicas;

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
    this.desiredReplicas,
    this.imageDigest,
    this.logUrl,
    this.observedGeneration,
    this.serviceName,
  });

  RevisionStatus.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          desiredReplicas: json_.containsKey('desiredReplicas')
              ? json_['desiredReplicas'] as core.int
              : null,
          imageDigest: json_.containsKey('imageDigest')
              ? json_['imageDigest'] as core.String
              : null,
          logUrl: json_.containsKey('logUrl')
              ? json_['logUrl'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (desiredReplicas != null) 'desiredReplicas': desiredReplicas!,
        if (imageDigest != null) 'imageDigest': imageDigest!,
        if (logUrl != null) 'logUrl': logUrl!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

/// RevisionTemplateSpec describes the data a revision should have when created
/// from a template.
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

  RevisionTemplate.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? RevisionSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
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

  Route.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? RouteSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? RouteStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

  RouteSpec.fromJson(core.Map json_)
      : this(
          traffic: json_.containsKey('traffic')
              ? (json_['traffic'] as core.List)
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
  /// is True or False. Note that providing a TrafficTarget that has
  /// latest_revision=True will result in a Route that does not increment either
  /// its metadata.generation or its observedGeneration, as new "latest ready"
  /// revisions from the Configuration are processed without an update to the
  /// Route's spec.
  core.int? observedGeneration;

  /// Traffic holds the configured traffic distribution.
  ///
  /// These entries will always contain RevisionName references. When
  /// ConfigurationName appears in the spec, this will hold the
  /// LatestReadyRevisionName that was last observed.
  core.List<TrafficTarget>? traffic;

  /// URL holds the url that will distribute traffic over the provided traffic
  /// targets.
  ///
  /// It generally has the form:
  /// `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
  core.String? url;

  RouteStatus({
    this.address,
    this.conditions,
    this.observedGeneration,
    this.traffic,
    this.url,
  });

  RouteStatus.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? Addressable.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          traffic: json_.containsKey('traffic')
              ? (json_['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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

/// Request message for creating a new execution of a job.
class RunJobRequest {
  /// Overrides existing job configuration for one specific new job execution
  /// only, using the specified values to update the job configuration for the
  /// new execution.
  ///
  /// Optional.
  Overrides? overrides;

  RunJobRequest({
    this.overrides,
  });

  RunJobRequest.fromJson(core.Map json_)
      : this(
          overrides: json_.containsKey('overrides')
              ? Overrides.fromJson(
                  json_['overrides'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (overrides != null) 'overrides': overrides!,
      };
}

/// Not supported by Cloud Run.
///
/// SecretEnvSource selects a Secret to populate the environment variables with.
/// The contents of the target Secret's Data field will represent the key-value
/// pairs as environment variables.
class SecretEnvSource {
  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalObjectReference? localObjectReference;

  /// The Secret to select from.
  core.String? name;

  /// Specify whether the Secret must be defined
  core.bool? optional;

  SecretEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  SecretEnvSource.fromJson(core.Map json_)
      : this(
          localObjectReference: json_.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(json_['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
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
  /// Must be 'latest' for the latest version, an integer for a specific
  /// version, or a version alias. The key of the secret to select from. Must be
  /// a valid secret key.
  ///
  /// Required.
  core.String? key;

  /// This field should not be used directly as it is meant to be inlined
  /// directly into the message.
  ///
  /// Use the "name" field instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// Specify whether the Secret or its key must be defined.
  core.bool? optional;

  SecretKeySelector({
    this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  SecretKeySelector.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          localObjectReference: json_.containsKey('localObjectReference')
              ? LocalObjectReference.fromJson(json_['localObjectReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
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

/// A volume representing a secret stored in Google Secret Manager.
///
/// The secret's value will be presented as the content of a file whose name is
/// defined in the item path. If no items are defined, the name of the file is
/// the secret_name. The contents of the target Secret's Data field will be
/// presented in a volume as files using the keys in the Data field as the file
/// names.
class SecretVolumeSource {
  /// Integer representation of mode bits to use on created files by default.
  ///
  /// Must be a value between 01 and 0777 (octal). If 0 or not set, it will
  /// default to 0444. Directories within the path are not affected by this
  /// setting. Notes * Internally, a umask of 0222 will be applied to any
  /// non-zero value. * This is an integer representation of the mode bits. So,
  /// the octal integer value should look exactly as the chmod numeric notation
  /// with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777
  /// (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or
  /// 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493
  /// (base-10). * This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set.
  core.int? defaultMode;

  /// A list of secret versions to mount in the volume.
  ///
  /// If no items are specified, the volume will expose a file with the same
  /// name as the secret name. The contents of the file will be the data in the
  /// latest version of the secret. If items are specified, the key will be used
  /// as the version to fetch from Cloud Secret Manager and the path will be the
  /// name of the file exposed in the volume. When items are defined, they must
  /// specify both a key and a path.
  core.List<KeyToPath>? items;

  /// Not supported by Cloud Run.
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

  SecretVolumeSource.fromJson(core.Map json_)
      : this(
          defaultMode: json_.containsKey('defaultMode')
              ? json_['defaultMode'] as core.int
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => KeyToPath.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
              : null,
          secretName: json_.containsKey('secretName')
              ? json_['secretName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultMode != null) 'defaultMode': defaultMode!,
        if (items != null) 'items': items!,
        if (optional != null) 'optional': optional!,
        if (secretName != null) 'secretName': secretName!,
      };
}

/// Not supported by Cloud Run.
///
/// SecurityContext holds security configuration that will be applied to a
/// container. Some fields are present in both SecurityContext and
/// PodSecurityContext. When both are set, the values in SecurityContext take
/// precedence.
class SecurityContext {
  /// The UID to run the entrypoint of the container process.
  ///
  /// Defaults to user specified in image metadata if unspecified. May also be
  /// set in PodSecurityContext. If set in both SecurityContext and
  /// PodSecurityContext, the value specified in SecurityContext takes
  /// precedence.
  core.int? runAsUser;

  SecurityContext({
    this.runAsUser,
  });

  SecurityContext.fromJson(core.Map json_)
      : this(
          runAsUser: json_.containsKey('runAsUser')
              ? json_['runAsUser'] as core.int
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
/// their statuses and conditions as its own.
class Service {
  /// The API version for this call.
  ///
  /// It must be "serving.knative.dev/v1".
  core.String? apiVersion;

  /// The kind of resource.
  ///
  /// It must be "Service".
  core.String? kind;

  /// Metadata associated with this Service, including name, namespace, labels,
  /// and annotations.
  ///
  /// In Cloud Run, annotations with 'run.googleapis.com/' and
  /// 'autoscaling.knative.dev' are restricted, and the accepted annotations
  /// will be different depending on the resource type. The following Cloud
  /// Run-specific annotations are accepted in Service.metadata.annotations. *
  /// `run.googleapis.com/binary-authorization-breakglass` *
  /// `run.googleapis.com/binary-authorization` *
  /// `run.googleapis.com/client-name` * `run.googleapis.com/custom-audiences` *
  /// `run.googleapis.com/default-url-disabled` *
  /// `run.googleapis.com/description` * `run.googleapis.com/gc-traffic-tags` *
  /// `run.googleapis.com/ingress` * `run.googleapis.com/ingress` sets the
  /// ingress settings for the Service. See \[the ingress settings
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

  /// Holds the desired state of the Service (from the client).
  ServiceSpec? spec;

  /// Communicates the system-controlled state of the Service.
  ServiceStatus? status;

  Service({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Service.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? ServiceSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? ServiceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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
  /// Holds the latest specification for the Revision to be stamped out.
  RevisionTemplate? template;

  /// Specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations to the Service's main URL.
  core.List<TrafficTarget>? traffic;

  ServiceSpec({
    this.template,
    this.traffic,
  });

  ServiceSpec.fromJson(core.Map json_)
      : this(
          template: json_.containsKey('template')
              ? RevisionTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>)
              : null,
          traffic: json_.containsKey('traffic')
              ? (json_['traffic'] as core.List)
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
  /// Similar to url, information on where the service is available on HTTP.
  Addressable? address;

  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the `spec` inline with the observed state of the
  /// world.
  ///
  /// Service-specific conditions include: * `ConfigurationsReady`: `True` when
  /// the underlying Configuration is ready. * `RoutesReady`: `True` when the
  /// underlying Route is ready. * `Ready`: `True` when all underlying resources
  /// are ready.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// Name of the last revision that was created from this Service's
  /// Configuration.
  ///
  /// It might not be ready yet, for that use LatestReadyRevisionName.
  core.String? latestCreatedRevisionName;

  /// Name of the latest Revision from this Service's Configuration that has had
  /// its `Ready` condition become `True`.
  core.String? latestReadyRevisionName;

  /// Returns the generation last seen by the system.
  ///
  /// Clients polling for completed reconciliation should poll until
  /// observedGeneration = metadata.generation and the Ready condition's status
  /// is True or False.
  core.int? observedGeneration;

  /// Holds the configured traffic distribution.
  ///
  /// These entries will always contain RevisionName references. When
  /// ConfigurationName appears in the spec, this will hold the
  /// LatestReadyRevisionName that we last observed.
  core.List<TrafficTarget>? traffic;

  /// URL that will distribute traffic over the provided traffic targets.
  ///
  /// It generally has the form
  /// `https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app`
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

  ServiceStatus.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? Addressable.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          latestCreatedRevisionName:
              json_.containsKey('latestCreatedRevisionName')
                  ? json_['latestCreatedRevisionName'] as core.String
                  : null,
          latestReadyRevisionName: json_.containsKey('latestReadyRevisionName')
              ? json_['latestReadyRevisionName'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          traffic: json_.containsKey('traffic')
              ? (json_['traffic'] as core.List)
                  .map((value) => TrafficTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  /// valid policy but certain Google Cloud services (such as Projects) might
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

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Status is a return value for calls that don't return other objects.
class Status {
  /// Suggested HTTP return code for this status, 0 if not set.
  core.int? code;

  /// Extended data associated with the reason.
  ///
  /// Each reason may define its own extended details. This field is optional
  /// and the data returned is not guaranteed to conform to any schema except
  /// that defined by the reason type.
  StatusDetails? details;

  /// A human-readable description of the status of this operation.
  core.String? message;

  /// Standard list metadata.
  ListMeta? metadata;

  /// A machine-readable description of why this operation is in the "Failure"
  /// status.
  ///
  /// If this value is empty there is no information available. A Reason
  /// clarifies an HTTP status code but does not override it.
  core.String? reason;

  /// Status of the operation.
  ///
  /// One of: "Success" or "Failure".
  core.String? status;

  Status({
    this.code,
    this.details,
    this.message,
    this.metadata,
    this.reason,
    this.status,
  });

  Status.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.int : null,
          details: json_.containsKey('details')
              ? StatusDetails.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>)
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? ListMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
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
  /// to fields having multiple errors. Examples: "name" - the field "name" on
  /// the current resource "items\[0\].name" - the field "name" on the first
  /// array entry in "items"
  core.String? field;

  /// A human-readable description of the cause of the error.
  ///
  /// This field may be presented as-is to a reader.
  core.String? message;

  /// A machine-readable description of the cause of the error.
  ///
  /// If this value is empty there is no information available.
  core.String? reason;

  StatusCause({
    this.field,
    this.message,
    this.reason,
  });

  StatusCause.fromJson(core.Map json_)
      : this(
          field:
              json_.containsKey('field') ? json_['field'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
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
  /// Not all StatusReasons may provide detailed causes.
  core.List<StatusCause>? causes;

  /// The group attribute of the resource associated with the status
  /// StatusReason.
  core.String? group;

  /// The kind attribute of the resource associated with the status
  /// StatusReason.
  ///
  /// On some operations may differ from the requested resource Kind.
  core.String? kind;

  /// The name attribute of the resource associated with the status StatusReason
  /// (when there is a single name which can be described).
  core.String? name;

  /// If specified, the time in seconds before the operation should be retried.
  ///
  /// Some errors may indicate the client must take an alternate action - for
  /// those errors this field may indicate how long to wait before taking the
  /// alternate action.
  core.int? retryAfterSeconds;

  /// UID of the resource.
  ///
  /// (when there is a single resource which can be described).
  core.String? uid;

  StatusDetails({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  StatusDetails.fromJson(core.Map json_)
      : this(
          causes: json_.containsKey('causes')
              ? (json_['causes'] as core.List)
                  .map((value) => StatusCause.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          retryAfterSeconds: json_.containsKey('retryAfterSeconds')
              ? json_['retryAfterSeconds'] as core.int
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
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

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// Not supported by Cloud Run.
  core.String? host;

  /// Port number to access on the container.
  ///
  /// Number must be in the range 1 to 65535.
  core.int? port;

  TCPSocketAction({
    this.host,
    this.port,
  });

  TCPSocketAction.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (port != null) 'port': port!,
      };
}

/// Task represents a single run of a container to completion.
class Task {
  /// APIVersion defines the versioned schema of this representation of an
  /// object.
  ///
  /// Servers should convert recognized schemas to the latest internal value,
  /// and may reject unrecognized values.
  ///
  /// Optional.
  core.String? apiVersion;

  /// Kind is a string value representing the REST resource this object
  /// represents.
  ///
  /// Servers may infer this from the endpoint the client submits requests to.
  /// Cannot be updated. In CamelCase.
  ///
  /// Optional.
  core.String? kind;

  /// Standard object's metadata.
  ///
  /// Optional.
  ObjectMeta? metadata;

  /// Specification of the desired behavior of a task.
  ///
  /// Optional.
  TaskSpec? spec;

  /// Current status of a task.
  ///
  /// Output only.
  TaskStatus? status;

  Task({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Task.fromJson(core.Map json_)
      : this(
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? ObjectMeta.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? TaskSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? TaskStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

/// Result of a task attempt.
class TaskAttemptResult {
  /// The exit code of this attempt.
  ///
  /// This may be unset if the container was unable to exit cleanly with a code
  /// due to some other failure. See status field for possible failure details.
  ///
  /// Optional.
  core.int? exitCode;

  /// The status of this attempt.
  ///
  /// If the status code is OK, then the attempt succeeded.
  ///
  /// Optional.
  GoogleRpcStatus? status;

  TaskAttemptResult({
    this.exitCode,
    this.status,
  });

  TaskAttemptResult.fromJson(core.Map json_)
      : this(
          exitCode: json_.containsKey('exitCode')
              ? json_['exitCode'] as core.int
              : null,
          status: json_.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exitCode != null) 'exitCode': exitCode!,
        if (status != null) 'status': status!,
      };
}

/// TaskSpec is a description of a task.
class TaskSpec {
  /// List of containers belonging to the task.
  ///
  /// We disallow a number of fields on this Container.
  ///
  /// Optional.
  core.List<Container>? containers;

  /// Number of retries allowed per task, before marking this job failed.
  ///
  /// Defaults to 3.
  ///
  /// Optional.
  core.int? maxRetries;

  /// Email address of the IAM service account associated with the task of a job
  /// execution.
  ///
  /// The service account represents the identity of the running task, and
  /// determines what permissions the task has. If not provided, the task will
  /// use the project's default service account.
  ///
  /// Optional.
  core.String? serviceAccountName;

  /// Duration in seconds the task may be active before the system will actively
  /// try to mark it failed and kill associated containers.
  ///
  /// This applies per attempt of a task, meaning each retry can run for the
  /// full timeout. Defaults to 600 seconds.
  ///
  /// Optional.
  core.String? timeoutSeconds;

  /// List of volumes that can be mounted by containers belonging to the task.
  ///
  /// Optional.
  core.List<Volume>? volumes;

  TaskSpec({
    this.containers,
    this.maxRetries,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  TaskSpec.fromJson(core.Map json_)
      : this(
          containers: json_.containsKey('containers')
              ? (json_['containers'] as core.List)
                  .map((value) => Container.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxRetries: json_.containsKey('maxRetries')
              ? json_['maxRetries'] as core.int
              : null,
          serviceAccountName: json_.containsKey('serviceAccountName')
              ? json_['serviceAccountName'] as core.String
              : null,
          timeoutSeconds: json_.containsKey('timeoutSeconds')
              ? json_['timeoutSeconds'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
        if (maxRetries != null) 'maxRetries': maxRetries!,
        if (serviceAccountName != null)
          'serviceAccountName': serviceAccountName!,
        if (timeoutSeconds != null) 'timeoutSeconds': timeoutSeconds!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// TaskStatus represents the status of a task.
class TaskStatus {
  /// Represents time when the task was completed.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations. It is represented in RFC3339 form and is in UTC.
  ///
  /// Optional.
  core.String? completionTime;

  /// Conditions communicate information about ongoing/complete reconciliation
  /// processes that bring the "spec" inline with the observed state of the
  /// world.
  ///
  /// Task-specific conditions include: * `Started`: `True` when the task has
  /// started to execute. * `Completed`: `True` when the task has succeeded.
  /// `False` when the task has failed.
  ///
  /// Optional.
  core.List<GoogleCloudRunV1Condition>? conditions;

  /// Index of the task, unique per execution, and beginning at 0.
  ///
  /// Required.
  core.int? index;

  /// Result of the last attempt of this task.
  ///
  /// Optional.
  TaskAttemptResult? lastAttemptResult;

  /// URI where logs for this task can be found in Cloud Console.
  ///
  /// Optional.
  core.String? logUri;

  /// The 'generation' of the task that was last processed by the controller.
  ///
  /// Optional.
  core.int? observedGeneration;

  /// The number of times this task was retried.
  ///
  /// Instances are retried when they fail up to the maxRetries limit.
  ///
  /// Optional.
  core.int? retried;

  /// Represents time when the task started to run.
  ///
  /// It is not guaranteed to be set in happens-before order across separate
  /// operations. It is represented in RFC3339 form and is in UTC.
  ///
  /// Optional.
  core.String? startTime;

  TaskStatus({
    this.completionTime,
    this.conditions,
    this.index,
    this.lastAttemptResult,
    this.logUri,
    this.observedGeneration,
    this.retried,
    this.startTime,
  });

  TaskStatus.fromJson(core.Map json_)
      : this(
          completionTime: json_.containsKey('completionTime')
              ? json_['completionTime'] as core.String
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GoogleCloudRunV1Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          lastAttemptResult: json_.containsKey('lastAttemptResult')
              ? TaskAttemptResult.fromJson(json_['lastAttemptResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          logUri: json_.containsKey('logUri')
              ? json_['logUri'] as core.String
              : null,
          observedGeneration: json_.containsKey('observedGeneration')
              ? json_['observedGeneration'] as core.int
              : null,
          retried: json_.containsKey('retried')
              ? json_['retried'] as core.int
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionTime != null) 'completionTime': completionTime!,
        if (conditions != null) 'conditions': conditions!,
        if (index != null) 'index': index!,
        if (lastAttemptResult != null) 'lastAttemptResult': lastAttemptResult!,
        if (logUri != null) 'logUri': logUri!,
        if (observedGeneration != null)
          'observedGeneration': observedGeneration!,
        if (retried != null) 'retried': retried!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// TaskTemplateSpec describes the data a task should have when created from a
/// template.
class TaskTemplateSpec {
  /// Specification of the desired behavior of the task.
  ///
  /// Optional.
  TaskSpec? spec;

  TaskTemplateSpec({
    this.spec,
  });

  TaskTemplateSpec.fromJson(core.Map json_)
      : this(
          spec: json_.containsKey('spec')
              ? TaskSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spec != null) 'spec': spec!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// TrafficTarget holds a single entry of the routing table for a Route.
class TrafficTarget {
  /// Not supported in Cloud Run.
  ///
  /// It must be empty.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? configurationName;

  /// Uses the "status.latestReadyRevisionName" of the Service to determine the
  /// traffic target.
  ///
  /// When it changes, traffic will automatically migrate from the prior "latest
  /// ready" revision to the new one. This field must be false if RevisionName
  /// is set. This field defaults to true otherwise. If the field is set to true
  /// on Status, this means that the Revision was resolved from the Service's
  /// latest ready revision.
  core.bool? latestRevision;

  /// Percent specifies percent of the traffic to this Revision or
  /// Configuration.
  ///
  /// This defaults to zero if unspecified.
  core.int? percent;

  /// Points this traffic target to a specific Revision.
  ///
  /// This field is mutually exclusive with latest_revision.
  core.String? revisionName;

  /// Tag is used to expose a dedicated url for referencing this target
  /// exclusively.
  core.String? tag;

  /// URL displays the URL for accessing tagged traffic targets.
  ///
  /// URL is displayed in status, and is disallowed on spec. URL must contain a
  /// scheme (e.g. https://) and a hostname, but may not contain anything else
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

  TrafficTarget.fromJson(core.Map json_)
      : this(
          configurationName: json_.containsKey('configurationName')
              ? json_['configurationName'] as core.String
              : null,
          latestRevision: json_.containsKey('latestRevision')
              ? json_['latestRevision'] as core.bool
              : null,
          percent: json_.containsKey('percent')
              ? json_['percent'] as core.int
              : null,
          revisionName: json_.containsKey('revisionName')
              ? json_['revisionName'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  /// Not supported in Cloud Run.
  ConfigMapVolumeSource? configMap;

  /// Volume specified by the Container Storage Interface driver
  CSIVolumeSource? csi;

  /// Ephemeral storage used as a shared volume.
  EmptyDirVolumeSource? emptyDir;

  /// Volume's name.
  ///
  /// In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  core.String? name;
  NFSVolumeSource? nfs;

  /// The secret's value will be presented as the content of a file whose name
  /// is defined in the item path.
  ///
  /// If no items are defined, the name of the file is the secretName.
  SecretVolumeSource? secret;

  Volume({
    this.configMap,
    this.csi,
    this.emptyDir,
    this.name,
    this.nfs,
    this.secret,
  });

  Volume.fromJson(core.Map json_)
      : this(
          configMap: json_.containsKey('configMap')
              ? ConfigMapVolumeSource.fromJson(
                  json_['configMap'] as core.Map<core.String, core.dynamic>)
              : null,
          csi: json_.containsKey('csi')
              ? CSIVolumeSource.fromJson(
                  json_['csi'] as core.Map<core.String, core.dynamic>)
              : null,
          emptyDir: json_.containsKey('emptyDir')
              ? EmptyDirVolumeSource.fromJson(
                  json_['emptyDir'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nfs: json_.containsKey('nfs')
              ? NFSVolumeSource.fromJson(
                  json_['nfs'] as core.Map<core.String, core.dynamic>)
              : null,
          secret: json_.containsKey('secret')
              ? SecretVolumeSource.fromJson(
                  json_['secret'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configMap != null) 'configMap': configMap!,
        if (csi != null) 'csi': csi!,
        if (emptyDir != null) 'emptyDir': emptyDir!,
        if (name != null) 'name': name!,
        if (nfs != null) 'nfs': nfs!,
        if (secret != null) 'secret': secret!,
      };
}

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Path within the container at which the volume should be mounted.
  ///
  /// Must not contain ':'.
  ///
  /// Required.
  core.String? mountPath;

  /// The name of the volume.
  ///
  /// There must be a corresponding Volume with the same name.
  ///
  /// Required.
  core.String? name;

  /// Sets the mount to be read-only or read-write.
  ///
  /// Not used by Cloud Run.
  core.bool? readOnly;

  /// Path within the volume from which the container's volume should be
  /// mounted.
  ///
  /// Defaults to "" (volume's root).
  core.String? subPath;

  VolumeMount({
    this.mountPath,
    this.name,
    this.readOnly,
    this.subPath,
  });

  VolumeMount.fromJson(core.Map json_)
      : this(
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          subPath: json_.containsKey('subPath')
              ? json_['subPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mountPath != null) 'mountPath': mountPath!,
        if (name != null) 'name': name!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (subPath != null) 'subPath': subPath!,
      };
}
