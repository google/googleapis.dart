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

/// Cloud Monitoring API - v1
///
/// Manages your Cloud Monitoring data and configurations.
///
/// For more information, see <https://cloud.google.com/monitoring/api/>
///
/// Create an instance of [MonitoringApi] to access these resources:
///
/// - [LocationsResource]
///   - [LocationsGlobalResource]
///     - [LocationsGlobalMetricsScopesResource]
///       - [LocationsGlobalMetricsScopesProjectsResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsDashboardsResource]
///   - [ProjectsLocationResource]
///     - [ProjectsLocationPrometheusResource]
///       - [ProjectsLocationPrometheusApiResource]
///         - [ProjectsLocationPrometheusApiV1Resource]
///           - [ProjectsLocationPrometheusApiV1LabelResource]
///           - [ProjectsLocationPrometheusApiV1MetadataResource]
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

/// Manages your Cloud Monitoring data and configurations.
class MonitoringApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and write monitoring data for all of your Google and third-party
  /// Cloud and API projects
  static const monitoringScope = 'https://www.googleapis.com/auth/monitoring';

  /// View monitoring data for all of your Google Cloud and third-party projects
  static const monitoringReadScope =
      'https://www.googleapis.com/auth/monitoring.read';

  /// Publish metric data to your Google Cloud projects
  static const monitoringWriteScope =
      'https://www.googleapis.com/auth/monitoring.write';

  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  MonitoringApi(
    http.Client client, {
    core.String rootUrl = 'https://monitoring.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsGlobalResource get global => LocationsGlobalResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsGlobalResource {
  final commons.ApiRequester _requester;

  LocationsGlobalMetricsScopesResource get metricsScopes =>
      LocationsGlobalMetricsScopesResource(_requester);

  LocationsGlobalResource(commons.ApiRequester client) : _requester = client;
}

class LocationsGlobalMetricsScopesResource {
  final commons.ApiRequester _requester;

  LocationsGlobalMetricsScopesProjectsResource get projects =>
      LocationsGlobalMetricsScopesProjectsResource(_requester);

  LocationsGlobalMetricsScopesResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns a specific Metrics Scope, including the list of projects monitored
  /// by the specified Metrics Scope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Metrics Scope. Example:
  /// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  /// Value must have pattern `^locations/global/metricsScopes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetricsScope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetricsScope> get(
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
    return MetricsScope.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of every Metrics Scope that a specific MonitoredProject has
  /// been added to.
  ///
  /// The metrics scope representing the specified monitored project will always
  /// be the first entry in the response.
  ///
  /// Request parameters:
  ///
  /// [monitoredResourceContainer] - Required. The resource name of the
  /// Monitored Project being requested. Example:
  /// projects/{MONITORED_PROJECT_ID_OR_NUMBER}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMetricsScopesByMonitoredProjectResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMetricsScopesByMonitoredProjectResponse>
  listMetricsScopesByMonitoredProject({
    core.String? monitoredResourceContainer,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (monitoredResourceContainer != null)
        'monitoredResourceContainer': [monitoredResourceContainer],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ =
        'v1/locations/global/metricsScopes:listMetricsScopesByMonitoredProject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMetricsScopesByMonitoredProjectResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LocationsGlobalMetricsScopesProjectsResource {
  final commons.ApiRequester _requester;

  LocationsGlobalMetricsScopesProjectsResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds a MonitoredProject with the given project ID to the specified Metrics
  /// Scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the existing Metrics Scope that
  /// will monitor this project. Example:
  /// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  /// Value must have pattern `^locations/global/metricsScopes/\[^/\]+$`.
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
    MonitoredProject request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/projects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a MonitoredProject from the specified Metrics Scope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the MonitoredProject. Example:
  /// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}Authorization
  /// requires the following Google IAM (https://cloud.google.com/iam)
  /// permissions on both the Metrics Scope and on the MonitoredProject:
  /// monitoring.metricsScopes.link
  /// Value must have pattern
  /// `^locations/global/metricsScopes/\[^/\]+/projects/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDashboardsResource get dashboards =>
      ProjectsDashboardsResource(_requester);
  ProjectsLocationResource get location => ProjectsLocationResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDashboardsResource {
  final commons.ApiRequester _requester;

  ProjectsDashboardsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom dashboard.
  ///
  /// For examples on how you can use this API to create dashboards, see
  /// Managing dashboards by API
  /// (https://cloud.google.com/monitoring/dashboards/api-dashboard). This
  /// method requires the monitoring.dashboards.create permission on the
  /// specified project. For more information about permissions, see Cloud
  /// Identity and Access Management (https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project on which to execute the request. The
  /// format is: projects/\[PROJECT_ID_OR_NUMBER\] The \[PROJECT_ID_OR_NUMBER\]
  /// must match the dashboard resource name.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [validateOnly] - If set, validate the request and preview the review, but
  /// do not actually save it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dashboard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dashboard> create(
    Dashboard request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dashboards';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Dashboard.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing custom dashboard.This method requires the
  /// monitoring.dashboards.delete permission on the specified dashboard.
  ///
  /// For more information, see Cloud Identity and Access Management
  /// (https://cloud.google.com/iam).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Dashboard. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/dashboards/\[DASHBOARD_ID\]
  /// Value must have pattern `^projects/\[^/\]+/dashboards/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches a specific dashboard.This method requires the
  /// monitoring.dashboards.get permission on the specified dashboard.
  ///
  /// For more information, see Cloud Identity and Access Management
  /// (https://cloud.google.com/iam).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Dashboard. The format is one
  /// of: dashboards/\[DASHBOARD_ID\] (for system dashboards)
  /// projects/\[PROJECT_ID_OR_NUMBER\]/dashboards/\[DASHBOARD_ID\] (for custom
  /// dashboards).
  /// Value must have pattern `^projects/\[^/\]+/dashboards/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dashboard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dashboard> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Dashboard.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing dashboards.This method requires the
  /// monitoring.dashboards.list permission on the specified project.
  ///
  /// For more information, see Cloud Identity and Access Management
  /// (https://cloud.google.com/iam).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The scope of the dashboards to list. The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return. If unspecified, a default of 1000 is used.
  ///
  /// [pageToken] - Optional. If this field is not empty then it must contain
  /// the nextPageToken value returned by a previous call to this method. Using
  /// this field causes the method to return additional results from the
  /// previous method call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDashboardsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDashboardsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dashboards';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDashboardsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Replaces an existing custom dashboard with a new definition.This method
  /// requires the monitoring.dashboards.update permission on the specified
  /// dashboard.
  ///
  /// For more information, see Cloud Identity and Access Management
  /// (https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the dashboard.
  /// Value must have pattern `^projects/\[^/\]+/dashboards/\[^/\]+$`.
  ///
  /// [validateOnly] - If set, validate the request and preview the review, but
  /// do not actually save it.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dashboard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dashboard> patch(
    Dashboard request,
    core.String name, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Dashboard.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationResource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusResource get prometheus =>
      ProjectsLocationPrometheusResource(_requester);

  ProjectsLocationResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationPrometheusResource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusApiResource get api =>
      ProjectsLocationPrometheusApiResource(_requester);

  ProjectsLocationPrometheusResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationPrometheusApiResource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusApiV1Resource get v1 =>
      ProjectsLocationPrometheusApiV1Resource(_requester);

  ProjectsLocationPrometheusApiResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationPrometheusApiV1Resource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusApiV1LabelResource get label =>
      ProjectsLocationPrometheusApiV1LabelResource(_requester);
  ProjectsLocationPrometheusApiV1MetadataResource get metadata =>
      ProjectsLocationPrometheusApiV1MetadataResource(_requester);

  ProjectsLocationPrometheusApiV1Resource(commons.ApiRequester client)
    : _requester = client;

  /// Lists labels for metrics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace on which to execute the request. It is
  /// not part of the open source API but used as a request path prefix to
  /// distinguish different virtual Prometheus instances of Google Prometheus
  /// Engine. The format is: projects/PROJECT_ID_OR_NUMBER.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" now.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> labels(
    QueryLabelsRequest request,
    core.String name,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Evaluate a PromQL query at a single point in time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project on which to execute the request. Data
  /// associcated with the project's workspace stored under the The format is:
  /// projects/PROJECT_ID_OR_NUMBER. Open source API but used as a request path
  /// prefix to distinguish different virtual Prometheus instances of Google
  /// Prometheus Engine.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" now.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> query(
    QueryInstantRequest request,
    core.String name,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists exemplars relevant to a given PromQL query,
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project on which to execute the request. Data
  /// associcated with the project's workspace stored under the The format is:
  /// projects/PROJECT_ID_OR_NUMBER. Open source API but used as a request path
  /// prefix to distinguish different virtual Prometheus instances of Google
  /// Prometheus Engine.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" now.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> queryExemplars(
    QueryExemplarsRequest request,
    core.String name,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/query_exemplars';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Evaluate a PromQL query with start, end time range.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The project on which to execute the request. Data
  /// associcated with the project's workspace stored under the The format is:
  /// projects/PROJECT_ID_OR_NUMBER. Open source API but used as a request path
  /// prefix to distinguish different virtual Prometheus instances of Google
  /// Prometheus Engine.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" now.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> queryRange(
    QueryRangeRequest request,
    core.String name,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/query_range';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists metadata for metrics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace on which to execute the request. It is
  /// not part of the open source API but used as a request path prefix to
  /// distinguish different virtual Prometheus instances of Google Prometheus
  /// Engine. The format is: projects/PROJECT_ID_OR_NUMBER.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" for
  /// now.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> series(
    QuerySeriesRequest request,
    core.String name,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/series';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationPrometheusApiV1LabelResource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusApiV1LabelResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists possible values for a given label name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace on which to execute the request. It is
  /// not part of the open source API but used as a request path prefix to
  /// distinguish different virtual Prometheus instances of Google Prometheus
  /// Engine. The format is: projects/PROJECT_ID_OR_NUMBER.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" now.
  ///
  /// [label] - The label name for which values are queried.
  ///
  /// [end] - The end time to evaluate the query for. Either floating point UNIX
  /// seconds or RFC3339 formatted timestamp.
  ///
  /// [match] - A list of matchers encoded in the Prometheus label matcher
  /// format to constrain the values to series that satisfy them.
  ///
  /// [start] - The start time to evaluate the query for. Either floating point
  /// UNIX seconds or RFC3339 formatted timestamp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> values(
    core.String name,
    core.String location,
    core.String label, {
    core.String? end,
    core.String? match,
    core.String? start,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (end != null) 'end': [end],
      if (match != null) 'match': [match],
      if (start != null) 'start': [start],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/label/' +
        commons.escapeVariable('$label') +
        '/values';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationPrometheusApiV1MetadataResource {
  final commons.ApiRequester _requester;

  ProjectsLocationPrometheusApiV1MetadataResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists metadata for metrics.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The workspace on which to execute the request. It is
  /// not part of the open source API but used as a request path prefix to
  /// distinguish different virtual Prometheus instances of Google Prometheus
  /// Engine. The format is: projects/PROJECT_ID_OR_NUMBER.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [location] - Location of the resource information. Has to be "global" for
  /// now.
  ///
  /// [limit] - Maximum number of metrics to return.
  ///
  /// [metric] - The metric name for which to query metadata. If unset, all
  /// metric metadata is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String name,
    core.String location, {
    core.String? limit,
    core.String? metric,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (limit != null) 'limit': [limit],
      if (metric != null) 'metric': [metric],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        '/location/' +
        commons.escapeVariable('$location') +
        '/prometheus/api/v1/metadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Describes how to combine multiple time series to provide a different view of
/// the data.
///
/// Aggregation of time series is done in two steps. First, each time series in
/// the set is aligned to the same time interval boundaries, then the set of
/// time series is optionally reduced in number.Alignment consists of applying
/// the per_series_aligner operation to each time series after its data has been
/// divided into regular alignment_period time intervals. This process takes all
/// of the data points in an alignment period, applies a mathematical
/// transformation such as averaging, minimum, maximum, delta, etc., and
/// converts them into a single data point per period.Reduction is when the
/// aligned and transformed time series can optionally be combined, reducing the
/// number of time series through similar mathematical transformations.
/// Reduction involves applying a cross_series_reducer to all the time series,
/// optionally sorting the time series into subsets with group_by_fields, and
/// applying the reducer to each subset.The raw time series data can contain a
/// huge amount of information from multiple sources. Alignment and reduction
/// transforms this mass of data into a more manageable and representative
/// collection of data, for example "the 95% latency across the average of all
/// tasks in a cluster". This representative data can be more easily graphed and
/// comprehended, and the individual time series data is still available for
/// later drilldown. For more details, see Filtering and aggregation
/// (https://cloud.google.com/monitoring/api/v3/aggregation).
class Aggregation {
  /// The alignment_period specifies a time interval, in seconds, that is used
  /// to divide the data in all the time series into consistent blocks of time.
  ///
  /// This will be done before the per-series aligner can be applied to the
  /// data.The value must be at least 60 seconds. If a per-series aligner other
  /// than ALIGN_NONE is specified, this field is required or an error is
  /// returned. If no per-series aligner is specified, or the aligner ALIGN_NONE
  /// is specified, then this field is ignored.The maximum value of the
  /// alignment_period is 2 years, or 104 weeks.
  core.String? alignmentPeriod;

  /// The reduction operation to be used to combine time series into a single
  /// time series, where the value of each data point in the resulting series is
  /// a function of all the already aligned values in the input time series.Not
  /// all reducer operations can be applied to all time series.
  ///
  /// The valid choices depend on the metric_kind and the value_type of the
  /// original time series. Reduction can yield a time series with a different
  /// metric_kind or value_type than the input time series.Time series data must
  /// first be aligned (see per_series_aligner) in order to perform cross-time
  /// series reduction. If cross_series_reducer is specified, then
  /// per_series_aligner must be specified, and must not be ALIGN_NONE. An
  /// alignment_period must also be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// Aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric or distribution values. The value_type of the output
  /// is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum value across time series
  /// for each alignment period. This reducer is valid for DELTA and GAUGE
  /// metrics with numeric values. The value_type of the output is the same as
  /// the value_type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics with
  /// numeric and distribution values. The value_type of the output is the same
  /// as the value_type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics with numeric or distribution values. The value_type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the number of data points across
  /// time series for each alignment period. This reducer is valid for DELTA and
  /// GAUGE metrics of numeric, Boolean, distribution, and string value_type.
  /// The value_type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the number of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for DELTA and GAUGE metrics of Boolean value_type. The value_type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the number of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the ratio of the number of
  /// True-valued data points to the total number of data points for each
  /// alignment period. This reducer is valid for DELTA and GAUGE metrics of
  /// Boolean value_type. The output value is in the range 0.0, 1.0 and has
  /// value_type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing the 99th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing the 95th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing the 50th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing the 5th percentile
  /// (https://en.wikipedia.org/wiki/Percentile) of data points across time
  /// series for each alignment period. This reducer is valid for GAUGE and
  /// DELTA metrics of numeric and distribution type. The value of the output is
  /// DOUBLE.
  core.String? crossSeriesReducer;

  /// The set of fields to preserve when cross_series_reducer is specified.
  ///
  /// The group_by_fields determine how the time series are partitioned into
  /// subsets prior to applying the aggregation operation. Each subset contains
  /// time series that have the same value for each of the grouping fields. Each
  /// individual time series is a member of exactly one subset. The
  /// cross_series_reducer is applied to each subset of time series. It is not
  /// possible to reduce across different resource types, so this field
  /// implicitly contains resource.type. Fields not specified in group_by_fields
  /// are aggregated away. If group_by_fields is not specified and all the time
  /// series have the same resource type, then the time series are aggregated
  /// into a single output time series. If cross_series_reducer is not defined,
  /// this field is ignored.
  core.List<core.String>? groupByFields;

  /// An Aligner describes how to bring the data points in a single time series
  /// into temporal alignment.
  ///
  /// Except for ALIGN_NONE, all alignments cause all the data points in an
  /// alignment_period to be mathematically grouped together, resulting in a
  /// single data point for each alignment_period with end timestamp at the end
  /// of the period.Not all alignment operations may be applied to all time
  /// series. The valid choices depend on the metric_kind and value_type of the
  /// original time series. Alignment can change the metric_kind or the
  /// value_type of the time series.Time series data must be aligned in order to
  /// perform cross-time series reduction. If cross_series_reducer is specified,
  /// then per_series_aligner must be specified and not equal to ALIGN_NONE and
  /// alignment_period must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-series reduction is requested. The value_type of the result is the
  /// same as the value_type of the input.
  /// - "ALIGN_DELTA" : Align and convert to DELTA. The output is delta = y1 -
  /// y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the
  /// selected alignment period results in periods with no data, then the
  /// aligned value for such a period is created by interpolation. The
  /// value_type of the aligned result is the same as the value_type of the
  /// input.
  /// - "ALIGN_RATE" : Align and convert to a rate. The result is computed as
  /// rate = (y1 - y0)/(t1 - t0), or "delta over time". Think of this aligner as
  /// providing the slope of the line that passes through the value at the start
  /// and at the end of the alignment_period.This aligner is valid for
  /// CUMULATIVE and DELTA metrics with numeric values. If the selected
  /// alignment period results in periods with no data, then the aligned value
  /// for such a period is created by interpolation. The output is a GAUGE
  /// metric with value_type DOUBLE.If, by "rate", you mean "percentage change",
  /// see the ALIGN_PERCENT_CHANGE aligner instead.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the alignment period boundary. This aligner is valid for GAUGE
  /// metrics with numeric values. The value_type of the aligned result is the
  /// same as the value_type of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by moving the most recent data point before
  /// the end of the alignment period to the boundary at the end of the
  /// alignment period. This aligner is valid for GAUGE metrics. The value_type
  /// of the aligned result is the same as the value_type of the input.
  /// - "ALIGN_MIN" : Align the time series by returning the minimum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MAX" : Align the time series by returning the maximum value in
  /// each alignment period. This aligner is valid for GAUGE and DELTA metrics
  /// with numeric values. The value_type of the aligned result is the same as
  /// the value_type of the input.
  /// - "ALIGN_MEAN" : Align the time series by returning the mean value in each
  /// alignment period. This aligner is valid for GAUGE and DELTA metrics with
  /// numeric values. The value_type of the aligned result is DOUBLE.
  /// - "ALIGN_COUNT" : Align the time series by returning the number of values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric or Boolean values. The value_type of the aligned
  /// result is INT64.
  /// - "ALIGN_SUM" : Align the time series by returning the sum of the values
  /// in each alignment period. This aligner is valid for GAUGE and DELTA
  /// metrics with numeric and distribution values. The value_type of the
  /// aligned result is the same as the value_type of the input.
  /// - "ALIGN_STDDEV" : Align the time series by returning the standard
  /// deviation of the values in each alignment period. This aligner is valid
  /// for GAUGE and DELTA metrics with numeric values. The value_type of the
  /// output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align the time series by returning the number of
  /// True values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align the time series by returning the number of
  /// False values in each alignment period. This aligner is valid for GAUGE
  /// metrics with Boolean values. The value_type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align the time series by returning the ratio of
  /// the number of True values to the total number of values in each alignment
  /// period. This aligner is valid for GAUGE metrics with Boolean values. The
  /// output value is in the range 0.0, 1.0 and has value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 99th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 95th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 50th percentile of all data points
  /// in the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align the time series by using percentile
  /// aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data
  /// point in each alignment period is the 5th percentile of all data points in
  /// the period. This aligner is valid for GAUGE and DELTA metrics with
  /// distribution values. The output is a GAUGE metric with value_type DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// aligner is valid for GAUGE and DELTA metrics with numeric values. This
  /// alignment returns ((current - previous)/previous) * 100, where the value
  /// of previous is determined based on the alignment_period.If the values of
  /// current and previous are both 0, then the returned value is 0. If only
  /// previous is 0, the returned value is infinity.A 10-minute moving mean is
  /// computed at each point of the alignment period prior to the above
  /// calculation to smooth the metric and prevent false positives from very
  /// short-lived spikes. The moving mean is only applicable for data whose
  /// values are \>= 0. Any values \< 0 are treated as a missing datapoint, and
  /// are ignored. While DELTA metrics are accepted by this alignment, special
  /// care should be taken that the values for the metric will always be
  /// positive. The output is a GAUGE metric with value_type DOUBLE.
  core.String? perSeriesAligner;

  Aggregation({
    this.alignmentPeriod,
    this.crossSeriesReducer,
    this.groupByFields,
    this.perSeriesAligner,
  });

  Aggregation.fromJson(core.Map json_)
    : this(
        alignmentPeriod: json_['alignmentPeriod'] as core.String?,
        crossSeriesReducer: json_['crossSeriesReducer'] as core.String?,
        groupByFields:
            (json_['groupByFields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        perSeriesAligner: json_['perSeriesAligner'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alignmentPeriod != null) 'alignmentPeriod': alignmentPeriod!,
    if (crossSeriesReducer != null) 'crossSeriesReducer': crossSeriesReducer!,
    if (groupByFields != null) 'groupByFields': groupByFields!,
    if (perSeriesAligner != null) 'perSeriesAligner': perSeriesAligner!,
  };
}

/// Preview: An identifier for an aggregation function.
///
/// Aggregation functions are SQL functions that group or transform data from
/// multiple points to a single point. This is a preview feature and may be
/// subject to change before final release.
class AggregationFunction {
  /// Parameters applied to the aggregation function.
  ///
  /// Only used for functions that require them.
  ///
  /// Optional.
  core.List<Parameter>? parameters;

  /// The type of aggregation function, must be one of the following: "none" -
  /// no function.
  ///
  /// "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" -
  /// AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT)
  /// "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" -
  /// MIN() "sum" - SUM()
  ///
  /// Required.
  core.String? type;

  AggregationFunction({this.parameters, this.type});

  AggregationFunction.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) => Parameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
    if (type != null) 'type': type!,
  };
}

/// A chart that displays alert policy data.
class AlertChart {
  /// The resource name of the alert policy.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/alertPolicies/\[ALERT_POLICY_ID\]
  ///
  /// Required.
  core.String? name;

  AlertChart({this.name});

  AlertChart.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// A chart axis.
class Axis {
  /// The label of the axis.
  core.String? label;

  /// The axis scale.
  ///
  /// By default, a linear scale is used.
  /// Possible string values are:
  /// - "SCALE_UNSPECIFIED" : Scale is unspecified. The view will default to
  /// LINEAR.
  /// - "LINEAR" : Linear scale.
  /// - "LOG10" : Logarithmic scale (base 10).
  core.String? scale;

  Axis({this.label, this.scale});

  Axis.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        scale: json_['scale'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (label != null) 'label': label!,
    if (scale != null) 'scale': scale!,
  };
}

/// Preview: A breakdown is an aggregation applied to the measures over a
/// specified column.
///
/// A breakdown can result in multiple series across a category for the provided
/// measure. This is a preview feature and may be subject to change before final
/// release.
class Breakdown {
  /// The Aggregation function is applied across all data in each breakdown
  /// created.
  ///
  /// Required.
  AggregationFunction? aggregationFunction;

  /// The name of the column in the dataset containing the breakdown values.
  ///
  /// Required.
  core.String? column;

  /// A limit to the number of breakdowns.
  ///
  /// If set to zero then all possible breakdowns are applied. The list of
  /// breakdowns is dependent on the value of the sort_order field.
  ///
  /// Required.
  core.int? limit;

  /// The sort order is applied to the values of the breakdown column.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : An unspecified sort order. This option is
  /// invalid when sorting is required.
  /// - "SORT_ORDER_NONE" : No sorting is applied.
  /// - "SORT_ORDER_ASCENDING" : The lowest-valued entries are selected first.
  /// - "SORT_ORDER_DESCENDING" : The highest-valued entries are selected first.
  core.String? sortOrder;

  Breakdown({
    this.aggregationFunction,
    this.column,
    this.limit,
    this.sortOrder,
  });

  Breakdown.fromJson(core.Map json_)
    : this(
        aggregationFunction:
            json_.containsKey('aggregationFunction')
                ? AggregationFunction.fromJson(
                  json_['aggregationFunction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        column: json_['column'] as core.String?,
        limit: json_['limit'] as core.int?,
        sortOrder: json_['sortOrder'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationFunction != null)
      'aggregationFunction': aggregationFunction!,
    if (column != null) 'column': column!,
    if (limit != null) 'limit': limit!,
    if (sortOrder != null) 'sortOrder': sortOrder!,
  };
}

/// Options to control visual rendering of a chart.
class ChartOptions {
  /// Preview: Configures whether the charted values are shown on the horizontal
  /// or vertical axis.
  ///
  /// By default, values are represented the vertical axis. This is a preview
  /// feature and may be subject to change before final release.
  core.bool? displayHorizontal;

  /// The chart mode.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode is unspecified. The view will default to
  /// COLOR.
  /// - "COLOR" : The chart distinguishes data series using different color.
  /// Line colors may get reused when there are many lines in the chart.
  /// - "X_RAY" : The chart uses the Stackdriver x-ray mode, in which each data
  /// set is plotted using the same semi-transparent color.
  /// - "STATS" : The chart displays statistics such as average, median, 95th
  /// percentile, and more.
  core.String? mode;

  ChartOptions({this.displayHorizontal, this.mode});

  ChartOptions.fromJson(core.Map json_)
    : this(
        displayHorizontal: json_['displayHorizontal'] as core.bool?,
        mode: json_['mode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayHorizontal != null) 'displayHorizontal': displayHorizontal!,
    if (mode != null) 'mode': mode!,
  };
}

/// A widget that groups the other widgets.
///
/// All widgets that are within the area spanned by the grouping widget are
/// considered member widgets.
class CollapsibleGroup {
  /// The collapsed state of the widget on first page load.
  core.bool? collapsed;

  CollapsibleGroup({this.collapsed});

  CollapsibleGroup.fromJson(core.Map json_)
    : this(collapsed: json_['collapsed'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (collapsed != null) 'collapsed': collapsed!,
  };
}

/// Defines the layout properties and content for a column.
class Column {
  /// The relative weight of this column.
  ///
  /// The column weight is used to adjust the width of columns on the screen
  /// (relative to peers). Greater the weight, greater the width of the column
  /// on the screen. If omitted, a value of 1 is used while rendering.
  core.String? weight;

  /// The display widgets arranged vertically in this column.
  core.List<Widget>? widgets;

  Column({this.weight, this.widgets});

  Column.fromJson(core.Map json_)
    : this(
        weight: json_['weight'] as core.String?,
        widgets:
            (json_['widgets'] as core.List?)
                ?.map(
                  (value) => Widget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (weight != null) 'weight': weight!,
    if (widgets != null) 'widgets': widgets!,
  };
}

/// A simplified layout that divides the available space into vertical columns
/// and arranges a set of widgets vertically in each column.
class ColumnLayout {
  /// The columns of content to display.
  core.List<Column>? columns;

  ColumnLayout({this.columns});

  ColumnLayout.fromJson(core.Map json_)
    : this(
        columns:
            (json_['columns'] as core.List?)
                ?.map(
                  (value) => Column.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
  };
}

/// The persistent settings for a table's columns.
class ColumnSettings {
  /// Whether the column should be left / middle / right aligned
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CELL_ALIGNMENT_UNSPECIFIED" : No horizontal alignment specified; fall
  /// back to the default behavior. Label values are left aligned. Numeric
  /// values are right aligned.
  /// - "LEFT" : Left-align
  /// - "CENTER" : Center-align
  /// - "RIGHT" : Right-align
  core.String? alignment;

  /// The id of the column.
  ///
  /// Required.
  core.String? column;

  /// Display name of the column
  ///
  /// Optional.
  core.String? displayName;

  /// The thresholds used to determine how the table cell should be rendered
  /// given the time series' current value.
  ///
  /// Optional.
  core.List<Threshold>? thresholds;

  /// Whether the column should be visible on page load.
  ///
  /// Required.
  core.bool? visible;

  ColumnSettings({
    this.alignment,
    this.column,
    this.displayName,
    this.thresholds,
    this.visible,
  });

  ColumnSettings.fromJson(core.Map json_)
    : this(
        alignment: json_['alignment'] as core.String?,
        column: json_['column'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        thresholds:
            (json_['thresholds'] as core.List?)
                ?.map(
                  (value) => Threshold.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        visible: json_['visible'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alignment != null) 'alignment': alignment!,
    if (column != null) 'column': column!,
    if (displayName != null) 'displayName': displayName!,
    if (thresholds != null) 'thresholds': thresholds!,
    if (visible != null) 'visible': visible!,
  };
}

/// Data structure to storing column's sort strategy
class ColumnSortingOptions {
  /// Column name to sort data by
  ///
  /// Optional.
  core.String? column;

  /// A sorting direction that determines ascending or descending order.
  ///
  /// This is a legacy field kept for backwards compatibility with table.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : An unspecified sort order. This option is
  /// invalid when sorting is required.
  /// - "SORT_ORDER_NONE" : No sorting is applied.
  /// - "SORT_ORDER_ASCENDING" : The lowest-valued entries are selected first.
  /// - "SORT_ORDER_DESCENDING" : The highest-valued entries are selected first.
  core.String? direction;

  ColumnSortingOptions({this.column, this.direction});

  ColumnSortingOptions.fromJson(core.Map json_)
    : this(
        column: json_['column'] as core.String?,
        direction: json_['direction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (column != null) 'column': column!,
    if (direction != null) 'direction': direction!,
  };
}

/// A Google Stackdriver dashboard.
///
/// Dashboards define the content and layout of pages in the Stackdriver web
/// application.
class Dashboard {
  /// Configuration for event annotations to display on this dashboard.
  DashboardAnnotations? annotations;

  /// The content is divided into equally spaced columns and the widgets are
  /// arranged vertically.
  ColumnLayout? columnLayout;

  /// Filters to reduce the amount of data charted based on the filter criteria.
  core.List<DashboardFilter>? dashboardFilters;

  /// The mutable, human-readable name.
  ///
  /// Required.
  core.String? displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// An etag is returned in the response to GetDashboard, and users are
  /// expected to put that etag in the request to UpdateDashboard to ensure that
  /// their change will be applied to the same version of the Dashboard
  /// configuration. The field should not be passed during dashboard creation.
  core.String? etag;

  /// Content is arranged with a basic layout that re-flows a simple list of
  /// informational elements like widgets or tiles.
  GridLayout? gridLayout;

  /// Labels applied to the dashboard
  core.Map<core.String, core.String>? labels;

  /// The content is arranged as a grid of tiles, with each content widget
  /// occupying one or more grid blocks.
  MosaicLayout? mosaicLayout;

  /// Identifier.
  ///
  /// The resource name of the dashboard.
  core.String? name;

  /// The content is divided into equally spaced rows and the widgets are
  /// arranged horizontally.
  RowLayout? rowLayout;

  Dashboard({
    this.annotations,
    this.columnLayout,
    this.dashboardFilters,
    this.displayName,
    this.etag,
    this.gridLayout,
    this.labels,
    this.mosaicLayout,
    this.name,
    this.rowLayout,
  });

  Dashboard.fromJson(core.Map json_)
    : this(
        annotations:
            json_.containsKey('annotations')
                ? DashboardAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        columnLayout:
            json_.containsKey('columnLayout')
                ? ColumnLayout.fromJson(
                  json_['columnLayout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dashboardFilters:
            (json_['dashboardFilters'] as core.List?)
                ?.map(
                  (value) => DashboardFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        gridLayout:
            json_.containsKey('gridLayout')
                ? GridLayout.fromJson(
                  json_['gridLayout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mosaicLayout:
            json_.containsKey('mosaicLayout')
                ? MosaicLayout.fromJson(
                  json_['mosaicLayout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        rowLayout:
            json_.containsKey('rowLayout')
                ? RowLayout.fromJson(
                  json_['rowLayout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (columnLayout != null) 'columnLayout': columnLayout!,
    if (dashboardFilters != null) 'dashboardFilters': dashboardFilters!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (gridLayout != null) 'gridLayout': gridLayout!,
    if (labels != null) 'labels': labels!,
    if (mosaicLayout != null) 'mosaicLayout': mosaicLayout!,
    if (name != null) 'name': name!,
    if (rowLayout != null) 'rowLayout': rowLayout!,
  };
}

/// Dashboard-level configuration for annotations
class DashboardAnnotations {
  /// Dashboard level defaults for names of logging resources to search for
  /// events.
  ///
  /// Currently only projects are supported. Each individual EventAnnotation may
  /// have its own overrides. If both this field and the per annotation field is
  /// empty, then the scoping project is used. Limit: 50 projects. For example:
  /// “projects/some-project-id”
  core.List<core.String>? defaultResourceNames;

  /// List of annotation configurations for this dashboard.
  ///
  /// Each entry specifies one event type.
  core.List<EventAnnotation>? eventAnnotations;

  DashboardAnnotations({this.defaultResourceNames, this.eventAnnotations});

  DashboardAnnotations.fromJson(core.Map json_)
    : this(
        defaultResourceNames:
            (json_['defaultResourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        eventAnnotations:
            (json_['eventAnnotations'] as core.List?)
                ?.map(
                  (value) => EventAnnotation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultResourceNames != null)
      'defaultResourceNames': defaultResourceNames!,
    if (eventAnnotations != null) 'eventAnnotations': eventAnnotations!,
  };
}

/// A filter to reduce the amount of data charted in relevant widgets.
class DashboardFilter {
  /// The specified filter type
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Filter type is unspecified. This is not
  /// valid in a well-formed request.
  /// - "RESOURCE_LABEL" : Filter on a resource label value
  /// - "METRIC_LABEL" : Filter on a metrics label value
  /// - "USER_METADATA_LABEL" : Filter on a user metadata label value
  /// - "SYSTEM_METADATA_LABEL" : Filter on a system metadata label value
  /// - "GROUP" : Filter on a group id
  /// - "VALUE_ONLY" : Filter that only contains a value. The label_key field
  /// must be unset for filters of this type.
  core.String? filterType;

  /// The key for the label.
  ///
  /// This must be omitted if the filter_type is VALUE_ONLY but is required
  /// otherwise.
  ///
  /// Optional.
  core.String? labelKey;

  /// A list of possible string values for the filter
  StringArray? stringArray;

  /// An array of variable-length string values.
  ///
  /// If this field is set, value_type must be set to STRING_ARRAY or
  /// VALUE_TYPE_UNSPECIFIED
  StringArray? stringArrayValue;

  /// A variable-length string value.
  ///
  /// If this field is set, value_type must be set to STRING or
  /// VALUE_TYPE_UNSPECIFIED
  core.String? stringValue;

  /// The placeholder text that can be referenced in a filter string or MQL
  /// query.
  ///
  /// If omitted, the dashboard filter will be applied to all relevant widgets
  /// in the dashboard.
  core.String? templateVariable;

  /// A query to run to fetch possible values for the filter.
  ///
  /// Only OpsAnalyticsQueries are supported
  TimeSeriesQuery? timeSeriesQuery;

  /// The type of the filter value.
  ///
  /// If value_type is not provided, it will be inferred from the default_value.
  /// If neither value_type nor default_value is provided, value_type will be
  /// set to STRING by default.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Value type is unspecified
  /// - "STRING" : String type
  /// - "STRING_ARRAY" : String array type
  core.String? valueType;

  DashboardFilter({
    this.filterType,
    this.labelKey,
    this.stringArray,
    this.stringArrayValue,
    this.stringValue,
    this.templateVariable,
    this.timeSeriesQuery,
    this.valueType,
  });

  DashboardFilter.fromJson(core.Map json_)
    : this(
        filterType: json_['filterType'] as core.String?,
        labelKey: json_['labelKey'] as core.String?,
        stringArray:
            json_.containsKey('stringArray')
                ? StringArray.fromJson(
                  json_['stringArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringArrayValue:
            json_.containsKey('stringArrayValue')
                ? StringArray.fromJson(
                  json_['stringArrayValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
        templateVariable: json_['templateVariable'] as core.String?,
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filterType != null) 'filterType': filterType!,
    if (labelKey != null) 'labelKey': labelKey!,
    if (stringArray != null) 'stringArray': stringArray!,
    if (stringArrayValue != null) 'stringArrayValue': stringArrayValue!,
    if (stringValue != null) 'stringValue': stringValue!,
    if (templateVariable != null) 'templateVariable': templateVariable!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Groups a time series query definition with charting options.
class DataSet {
  /// The collection of breakdowns to be applied to the dataset.
  ///
  /// Optional.
  core.List<Breakdown>? breakdowns;

  /// A collection of dimension columns.
  ///
  /// Optional.
  core.List<Dimension>? dimensions;

  /// A template string for naming TimeSeries in the resulting data set.
  ///
  /// This should be a string with interpolations of the form ${label_name},
  /// which will resolve to the label's value.
  core.String? legendTemplate;

  /// A collection of measures.
  ///
  /// Optional.
  core.List<Measure>? measures;

  /// The lower bound on data point frequency for this data set, implemented by
  /// specifying the minimum alignment period to use in a time series query For
  /// example, if the data is published once every 10 minutes, the
  /// min_alignment_period should be at least 10 minutes.
  ///
  /// It would not make sense to fetch and align data at one minute intervals.
  ///
  /// Optional.
  core.String? minAlignmentPeriod;

  /// How this data should be plotted on the chart.
  /// Possible string values are:
  /// - "PLOT_TYPE_UNSPECIFIED" : Plot type is unspecified. The view will
  /// default to LINE.
  /// - "LINE" : The data is plotted as a set of lines (one line per series).
  /// - "STACKED_AREA" : The data is plotted as a set of filled areas (one area
  /// per series), with the areas stacked vertically (the base of each area is
  /// the top of its predecessor, and the base of the first area is the x-axis).
  /// Since the areas do not overlap, each is filled with a different opaque
  /// color.
  /// - "STACKED_BAR" : The data is plotted as a set of rectangular boxes (one
  /// box per series), with the boxes stacked vertically (the base of each box
  /// is the top of its predecessor, and the base of the first box is the
  /// x-axis). Since the boxes do not overlap, each is filled with a different
  /// opaque color.
  /// - "HEATMAP" : The data is plotted as a heatmap. The series being plotted
  /// must have a DISTRIBUTION value type. The value of each bucket in the
  /// distribution is displayed as a color. This type is not currently available
  /// in the Stackdriver Monitoring application.
  core.String? plotType;

  /// A collection of sort options, affects the order of the data and legend.
  ///
  /// Optional.
  core.List<ColumnSortingOptions>? sort;

  /// The target axis to use for plotting the metric.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TARGET_AXIS_UNSPECIFIED" : The target axis was not specified. Defaults
  /// to Y1.
  /// - "Y1" : The y_axis (the right axis of chart).
  /// - "Y2" : The y2_axis (the left axis of chart).
  core.String? targetAxis;

  /// Fields for querying time series data from the Stackdriver metrics API.
  ///
  /// Required.
  TimeSeriesQuery? timeSeriesQuery;

  DataSet({
    this.breakdowns,
    this.dimensions,
    this.legendTemplate,
    this.measures,
    this.minAlignmentPeriod,
    this.plotType,
    this.sort,
    this.targetAxis,
    this.timeSeriesQuery,
  });

  DataSet.fromJson(core.Map json_)
    : this(
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        legendTemplate: json_['legendTemplate'] as core.String?,
        measures:
            (json_['measures'] as core.List?)
                ?.map(
                  (value) => Measure.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minAlignmentPeriod: json_['minAlignmentPeriod'] as core.String?,
        plotType: json_['plotType'] as core.String?,
        sort:
            (json_['sort'] as core.List?)
                ?.map(
                  (value) => ColumnSortingOptions.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        targetAxis: json_['targetAxis'] as core.String?,
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (legendTemplate != null) 'legendTemplate': legendTemplate!,
    if (measures != null) 'measures': measures!,
    if (minAlignmentPeriod != null) 'minAlignmentPeriod': minAlignmentPeriod!,
    if (plotType != null) 'plotType': plotType!,
    if (sort != null) 'sort': sort!,
    if (targetAxis != null) 'targetAxis': targetAxis!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
  };
}

/// A chart dimension.
///
/// Dimensions are a structured label, class, or category for a set of
/// measurements in your data.
class Dimension {
  /// The name of the column in the source SQL query that is used to chart the
  /// dimension.
  ///
  /// Required.
  core.String? column;

  /// The type of the dimension column.
  ///
  /// This is relevant only if one of the bin_size fields is set. If it is
  /// empty, the type TIMESTAMP or INT64 will be assumed based on which bin_size
  /// field is set. If populated, this should be set to one of the following
  /// types: DATE, TIME, DATETIME, TIMESTAMP, BIGNUMERIC, INT64, NUMERIC,
  /// FLOAT64.
  ///
  /// Optional.
  core.String? columnType;

  /// float_bin_size is used when the column type used for a dimension is a
  /// floating point numeric column.
  ///
  /// Optional.
  core.double? floatBinSize;

  /// A limit to the number of bins generated.
  ///
  /// When 0 is specified, the maximum count is not enforced.
  core.int? maxBinCount;

  /// numeric_bin_size is used when the column type used for a dimension is
  /// numeric or string.
  core.int? numericBinSize;

  /// The column name to sort on for binning.
  ///
  /// This column can be the same column as this dimension or any other column
  /// used as a measure in the results. If sort_order is set to NONE, then this
  /// value is not used.
  core.String? sortColumn;

  /// The sort order applied to the sort column.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : An unspecified sort order. This option is
  /// invalid when sorting is required.
  /// - "SORT_ORDER_NONE" : No sorting is applied.
  /// - "SORT_ORDER_ASCENDING" : The lowest-valued entries are selected first.
  /// - "SORT_ORDER_DESCENDING" : The highest-valued entries are selected first.
  core.String? sortOrder;

  /// time_bin_size is used when the data type specified by column is a time
  /// type and the bin size is determined by a time duration.
  ///
  /// If column_type is DATE, this must be a whole value multiple of 1 day. If
  /// column_type is TIME, this must be less than or equal to 24 hours.
  core.String? timeBinSize;

  Dimension({
    this.column,
    this.columnType,
    this.floatBinSize,
    this.maxBinCount,
    this.numericBinSize,
    this.sortColumn,
    this.sortOrder,
    this.timeBinSize,
  });

  Dimension.fromJson(core.Map json_)
    : this(
        column: json_['column'] as core.String?,
        columnType: json_['columnType'] as core.String?,
        floatBinSize: (json_['floatBinSize'] as core.num?)?.toDouble(),
        maxBinCount: json_['maxBinCount'] as core.int?,
        numericBinSize: json_['numericBinSize'] as core.int?,
        sortColumn: json_['sortColumn'] as core.String?,
        sortOrder: json_['sortOrder'] as core.String?,
        timeBinSize: json_['timeBinSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (column != null) 'column': column!,
    if (columnType != null) 'columnType': columnType!,
    if (floatBinSize != null) 'floatBinSize': floatBinSize!,
    if (maxBinCount != null) 'maxBinCount': maxBinCount!,
    if (numericBinSize != null) 'numericBinSize': numericBinSize!,
    if (sortColumn != null) 'sortColumn': sortColumn!,
    if (sortOrder != null) 'sortOrder': sortOrder!,
    if (timeBinSize != null) 'timeBinSize': timeBinSize!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A widget that displays a list of error groups.
class ErrorReportingPanel {
  /// The resource name of the Google Cloud Platform project.
  ///
  /// Written as projects/{projectID} or projects/{projectNumber}, where
  /// {projectID} and {projectNumber} can be found in the Google Cloud console
  /// (https://support.google.com/cloud/answer/6158840).Examples:
  /// projects/my-project-123, projects/5551234.
  core.List<core.String>? projectNames;

  /// An identifier of the service, such as the name of the executable, job, or
  /// Google App Engine service name.
  ///
  /// This field is expected to have a low number of values that are relatively
  /// stable over time, as opposed to version, which can be changed whenever new
  /// code is deployed.Contains the service name for error reports extracted
  /// from Google App Engine logs or default if the App Engine default service
  /// is used.
  core.List<core.String>? services;

  /// Represents the source code version that the developer provided, which
  /// could represent a version label or a Git SHA-1 hash, for example.
  ///
  /// For App Engine standard environment, the version is set to the version of
  /// the app.
  core.List<core.String>? versions;

  ErrorReportingPanel({this.projectNames, this.services, this.versions});

  ErrorReportingPanel.fromJson(core.Map json_)
    : this(
        projectNames:
            (json_['projectNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        services:
            (json_['services'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        versions:
            (json_['versions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (projectNames != null) 'projectNames': projectNames!,
    if (services != null) 'services': services!,
    if (versions != null) 'versions': versions!,
  };
}

/// Annotation configuration for one event type on a dashboard
class EventAnnotation {
  /// Solely for UI display.
  ///
  /// Should not be used programmatically.
  core.String? displayName;

  /// Whether or not to show the events on the dashboard by default
  core.bool? enabled;

  /// The type of event to display.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : No event type specified.
  /// - "GKE_WORKLOAD_DEPLOYMENT" : Patch/update of GKE workload.
  /// - "GKE_POD_CRASH" : Crash events for a GKE Pod.
  /// - "GKE_POD_UNSCHEDULABLE" : Scheduling failures for GKE Pods.
  /// - "GKE_CONTAINER_CREATION_FAILED" : Failure to create a GKE container.
  /// - "GKE_CLUSTER_CREATE_DELETE" : Create/delete of a GKE cluster.
  /// - "GKE_CLUSTER_UPDATE" : Update of a GKE cluster.
  /// - "GKE_NODE_POOL_UPDATE" : Update of a GKE node pool.
  /// - "GKE_CLUSTER_AUTOSCALER" : GKE cluster autoscaler event.
  /// - "GKE_POD_AUTOSCALER" : GKE pod autoscaler event.
  /// - "VM_TERMINATION" : Termination of a virtual machine.
  /// - "VM_GUEST_OS_ERROR" : Guest OS error on a virtual machine.
  /// - "VM_START_FAILED" : Start failure on a virtual machine.
  /// - "MIG_UPDATE" : Update of a managed instance group.
  /// - "MIG_AUTOSCALER" : Autoscaler event for a managed instance group.
  /// - "CLOUD_RUN_DEPLOYMENT" : New deployment of a Cloud Run service.
  /// - "CLOUD_SQL_FAILOVER" : Failover of a Cloud SQL instance.
  /// - "CLOUD_SQL_START_STOP" : Start/stop of a Cloud SQL instance.
  /// - "CLOUD_SQL_STORAGE" : Storage event for a Cloud SQL instance.
  /// - "UPTIME_CHECK_FAILURE" : Failure of a Cloud Monitoring uptime check.
  /// - "CLOUD_ALERTING_ALERT" : Alerts from Cloud Alerting
  /// - "SERVICE_HEALTH_INCIDENT" : Incidents from Service Health
  /// - "SAP_BACKINT" : Agent for SAP Backint related events.
  /// - "SAP_AVAILABILITY" : Agent for SAP availability related events.
  /// - "SAP_OPERATIONS" : Agent for SAP operations related events.
  core.String? eventType;

  /// string filtering the events - event dependant.
  ///
  /// Example values: "resource.labels.pod_name = 'pod-1'"
  /// "protoPayload.authenticationInfo.principalEmail='user@example.com'"
  core.String? filter;

  /// Per annotation level override for the names of logging resources to search
  /// for events.
  ///
  /// Currently only projects are supported. If both this field and the per
  /// annotation field is empty, it will default to the host project. Limit: 50
  /// projects. For example: “projects/another-project-id”
  core.List<core.String>? resourceNames;

  EventAnnotation({
    this.displayName,
    this.enabled,
    this.eventType,
    this.filter,
    this.resourceNames,
  });

  EventAnnotation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        eventType: json_['eventType'] as core.String?,
        filter: json_['filter'] as core.String?,
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (enabled != null) 'enabled': enabled!,
    if (eventType != null) 'eventType': eventType!,
    if (filter != null) 'filter': filter!,
    if (resourceNames != null) 'resourceNames': resourceNames!,
  };
}

/// A gauge chart shows where the current value sits within a pre-defined range.
///
/// The upper and lower bounds should define the possible range of values for
/// the scorecard's query (inclusive).
class GaugeView {
  /// The lower bound for this gauge chart.
  ///
  /// The value of the chart should always be greater than or equal to this.
  core.double? lowerBound;

  /// The upper bound for this gauge chart.
  ///
  /// The value of the chart should always be less than or equal to this.
  core.double? upperBound;

  GaugeView({this.lowerBound, this.upperBound});

  GaugeView.fromJson(core.Map json_)
    : this(
        lowerBound: (json_['lowerBound'] as core.num?)?.toDouble(),
        upperBound: (json_['upperBound'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lowerBound != null) 'lowerBound': lowerBound!,
    if (upperBound != null) 'upperBound': upperBound!,
  };
}

/// A basic layout divides the available space into vertical columns of equal
/// width and arranges a list of widgets using a row-first strategy.
class GridLayout {
  /// The number of columns into which the view's width is divided.
  ///
  /// If omitted or set to zero, a system default will be used while rendering.
  core.String? columns;

  /// The informational elements that are arranged into the columns row-first.
  core.List<Widget>? widgets;

  GridLayout({this.columns, this.widgets});

  GridLayout.fromJson(core.Map json_)
    : this(
        columns: json_['columns'] as core.String?,
        widgets:
            (json_['widgets'] as core.List?)
                ?.map(
                  (value) => Widget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
    if (widgets != null) 'widgets': widgets!,
  };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page.This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response.It can be used as a top-level request field, which is convenient if
/// one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body.Example:
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
typedef HttpBody = $HttpBody;

/// A widget that displays a list of incidents
class IncidentList {
  /// The monitored resource for which incidents are listed.
  ///
  /// The resource doesn't need to be fully specified. That is, you can specify
  /// the resource type but not the values of the resource labels. The resource
  /// type and labels are used for filtering.
  ///
  /// Optional.
  core.List<MonitoredResource>? monitoredResources;

  /// A list of alert policy names to filter the incident list by.
  ///
  /// Don't include the project ID prefix in the policy name. For example, use
  /// alertPolicies/utilization.
  ///
  /// Optional.
  core.List<core.String>? policyNames;

  IncidentList({this.monitoredResources, this.policyNames});

  IncidentList.fromJson(core.Map json_)
    : this(
        monitoredResources:
            (json_['monitoredResources'] as core.List?)
                ?.map(
                  (value) => MonitoredResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        policyNames:
            (json_['policyNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (monitoredResources != null) 'monitoredResources': monitoredResources!,
    if (policyNames != null) 'policyNames': policyNames!,
  };
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).The start must be less than or equal to the end.
///
/// When the start equals the end, the interval is empty (matches no time). When
/// both start and end are unspecified, the interval matches any time.
typedef Interval = $Interval02;

/// The ListDashboards request.
class ListDashboardsResponse {
  /// The list of requested dashboards.
  core.List<Dashboard>? dashboards;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value.
  ///
  /// To see the additional results, use that value as page_token in the next
  /// call to this method.
  core.String? nextPageToken;

  ListDashboardsResponse({this.dashboards, this.nextPageToken});

  ListDashboardsResponse.fromJson(core.Map json_)
    : this(
        dashboards:
            (json_['dashboards'] as core.List?)
                ?.map(
                  (value) => Dashboard.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dashboards != null) 'dashboards': dashboards!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the ListMetricsScopesByMonitoredProject method.
class ListMetricsScopesByMonitoredProjectResponse {
  /// A set of all metrics scopes that the specified monitored project has been
  /// added to.
  core.List<MetricsScope>? metricsScopes;

  ListMetricsScopesByMonitoredProjectResponse({this.metricsScopes});

  ListMetricsScopesByMonitoredProjectResponse.fromJson(core.Map json_)
    : this(
        metricsScopes:
            (json_['metricsScopes'] as core.List?)
                ?.map(
                  (value) => MetricsScope.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metricsScopes != null) 'metricsScopes': metricsScopes!,
  };
}

/// A widget that displays a stream of log.
class LogsPanel {
  /// A filter that chooses which log entries to return.
  ///
  /// See Advanced Logs Queries
  /// (https://cloud.google.com/logging/docs/view/advanced-queries). Only log
  /// entries that match the filter are returned. An empty filter matches all
  /// log entries.
  core.String? filter;

  /// The names of logging resources to collect logs for.
  ///
  /// Currently projects and storage views are supported. If empty, the widget
  /// will default to the host project.
  core.List<core.String>? resourceNames;

  LogsPanel({this.filter, this.resourceNames});

  LogsPanel.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (resourceNames != null) 'resourceNames': resourceNames!,
  };
}

/// A chart measure.
///
/// Measures represent a measured property in your chart data such as rainfall
/// in inches, number of units sold, revenue gained, etc.
class Measure {
  /// The aggregation function applied to the input column.
  ///
  /// This must not be set to "none" unless binning is disabled on the
  /// dimension. The aggregation function is used to group points on the
  /// dimension bins.
  ///
  /// Required.
  AggregationFunction? aggregationFunction;

  /// The column name within in the dataset used for the measure.
  ///
  /// Required.
  core.String? column;

  Measure({this.aggregationFunction, this.column});

  Measure.fromJson(core.Map json_)
    : this(
        aggregationFunction:
            json_.containsKey('aggregationFunction')
                ? AggregationFunction.fromJson(
                  json_['aggregationFunction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        column: json_['column'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationFunction != null)
      'aggregationFunction': aggregationFunction!,
    if (column != null) 'column': column!,
  };
}

/// Represents a Metrics Scope
/// (https://cloud.google.com/monitoring/settings#concept-scope) in Cloud
/// Monitoring, which specifies one or more Google projects and zero or more AWS
/// accounts to monitor together.
class MetricsScope {
  /// The time when this Metrics Scope was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The list of projects monitored by this Metrics Scope.
  ///
  /// Output only.
  core.List<MonitoredProject>? monitoredProjects;

  /// The resource name of the Monitoring Metrics Scope.
  ///
  /// On input, the resource name can be specified with the scoping project ID
  /// or number. On output, the resource name is specified with the scoping
  /// project number. Example:
  /// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  ///
  /// Immutable.
  core.String? name;

  /// The time when this Metrics Scope record was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  MetricsScope({
    this.createTime,
    this.monitoredProjects,
    this.name,
    this.updateTime,
  });

  MetricsScope.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        monitoredProjects:
            (json_['monitoredProjects'] as core.List?)
                ?.map(
                  (value) => MonitoredProject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (monitoredProjects != null) 'monitoredProjects': monitoredProjects!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A project being monitored
/// (https://cloud.google.com/monitoring/settings/multiple-projects#create-multi)
/// by a Metrics Scope.
class MonitoredProject {
  /// The time when this MonitoredProject was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Set if the project has been tombstoned by the user.
  ///
  /// Output only.
  core.bool? isTombstoned;

  /// The resource name of the MonitoredProject.
  ///
  /// On input, the resource name includes the scoping project ID and monitored
  /// project ID. On output, it contains the equivalent project numbers.
  /// Example:
  /// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}
  ///
  /// Immutable.
  core.String? name;

  MonitoredProject({this.createTime, this.isTombstoned, this.name});

  MonitoredProject.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        isTombstoned: json_['isTombstoned'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (isTombstoned != null) 'isTombstoned': isTombstoned!,
    if (name != null) 'name': name!,
  };
}

/// An object representing a resource that can be used for monitoring, logging,
/// billing, or other purposes.
///
/// Examples include virtual machine instances, databases, and storage devices
/// such as disks. The type field identifies a MonitoredResourceDescriptor
/// object that describes the resource's schema. Information in the labels field
/// identifies the actual resource and its attributes according to the schema.
/// For example, a particular Compute Engine VM instance could be represented by
/// the following object, because the MonitoredResourceDescriptor for
/// "gce_instance" has labels "project_id", "instance_id" and "zone": { "type":
/// "gce_instance", "labels": { "project_id": "my-project", "instance_id":
/// "12345678901234", "zone": "us-central1-a" }}
typedef MonitoredResource = $MonitoredResource;

/// A mosaic layout divides the available space into a grid of blocks, and
/// overlays the grid with tiles.
///
/// Unlike GridLayout, tiles may span multiple grid blocks and can be placed at
/// arbitrary locations in the grid.
class MosaicLayout {
  /// The number of columns in the mosaic grid.
  ///
  /// The number of columns must be between 1 and 48, inclusive.
  core.int? columns;

  /// The tiles to display.
  core.List<Tile>? tiles;

  MosaicLayout({this.columns, this.tiles});

  MosaicLayout.fromJson(core.Map json_)
    : this(
        columns: json_['columns'] as core.int?,
        tiles:
            (json_['tiles'] as core.List?)
                ?.map(
                  (value) => Tile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
    if (tiles != null) 'tiles': tiles!,
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

/// Preview: A query that produces an aggregated response and supporting data.
///
/// This is a preview feature and may be subject to change before final release.
class OpsAnalyticsQuery {
  /// A SQL query to fetch time series, category series, or numeric series data.
  core.String? sql;

  OpsAnalyticsQuery({this.sql});

  OpsAnalyticsQuery.fromJson(core.Map json_)
    : this(sql: json_['sql'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (sql != null) 'sql': sql!,
  };
}

/// Preview: Parameter value applied to the aggregation function.
///
/// This is a preview feature and may be subject to change before final release.
class Parameter {
  /// A floating-point parameter value.
  core.double? doubleValue;

  /// An integer parameter value.
  core.String? intValue;

  Parameter({this.doubleValue, this.intValue});

  Parameter.fromJson(core.Map json_)
    : this(
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intValue: json_['intValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (intValue != null) 'intValue': intValue!,
  };
}

/// Describes a ranking-based time series filter.
///
/// Each input time series is ranked with an aligner. The filter will allow up
/// to num_time_series time series to pass through it, selecting them based on
/// the relative ranking.For example, if ranking_method is METHOD_MEAN,direction
/// is BOTTOM, and num_time_series is 3, then the 3 times series with the lowest
/// mean values will pass through the filter.
class PickTimeSeriesFilter {
  /// How to use the ranking to select time series that pass through the filter.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Not allowed. You must specify a different
  /// Direction if you specify a PickTimeSeriesFilter.
  /// - "TOP" : Pass the highest num_time_series ranking inputs.
  /// - "BOTTOM" : Pass the lowest num_time_series ranking inputs.
  core.String? direction;

  /// Select the top N streams/time series within this time interval
  Interval? interval;

  /// How many time series to allow to pass through the filter.
  core.int? numTimeSeries;

  /// ranking_method is applied to each time series independently to produce the
  /// value which will be used to compare the time series to other time series.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Not allowed. You must specify a different Method
  /// if you specify a PickTimeSeriesFilter.
  /// - "METHOD_MEAN" : Select the mean of all values.
  /// - "METHOD_MAX" : Select the maximum value.
  /// - "METHOD_MIN" : Select the minimum value.
  /// - "METHOD_SUM" : Compute the sum of all values.
  /// - "METHOD_LATEST" : Select the most recent value.
  core.String? rankingMethod;

  PickTimeSeriesFilter({
    this.direction,
    this.interval,
    this.numTimeSeries,
    this.rankingMethod,
  });

  PickTimeSeriesFilter.fromJson(core.Map json_)
    : this(
        direction: json_['direction'] as core.String?,
        interval:
            json_.containsKey('interval')
                ? Interval.fromJson(
                  json_['interval'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        numTimeSeries: json_['numTimeSeries'] as core.int?,
        rankingMethod: json_['rankingMethod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (direction != null) 'direction': direction!,
    if (interval != null) 'interval': interval!,
    if (numTimeSeries != null) 'numTimeSeries': numTimeSeries!,
    if (rankingMethod != null) 'rankingMethod': rankingMethod!,
  };
}

/// A widget that displays timeseries data as a pie or a donut.
class PieChart {
  /// Indicates the visualization type for the PieChart.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PIE_CHART_TYPE_UNSPECIFIED" : The zero value. No type specified. Do not
  /// use.
  /// - "PIE" : A Pie type PieChart.
  /// - "DONUT" : Similar to PIE, but the DONUT type PieChart has a hole in the
  /// middle.
  core.String? chartType;

  /// The queries for the chart's data.
  ///
  /// Required.
  core.List<PieChartDataSet>? dataSets;

  /// Indicates whether or not the pie chart should show slices' labels
  ///
  /// Optional.
  core.bool? showLabels;

  PieChart({this.chartType, this.dataSets, this.showLabels});

  PieChart.fromJson(core.Map json_)
    : this(
        chartType: json_['chartType'] as core.String?,
        dataSets:
            (json_['dataSets'] as core.List?)
                ?.map(
                  (value) => PieChartDataSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        showLabels: json_['showLabels'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chartType != null) 'chartType': chartType!,
    if (dataSets != null) 'dataSets': dataSets!,
    if (showLabels != null) 'showLabels': showLabels!,
  };
}

/// Groups a time series query definition.
class PieChartDataSet {
  /// A dimension is a structured label, class, or category for a set of
  /// measurements in your data.
  core.List<Dimension>? dimensions;

  /// A measure is a measured value of a property in your data.
  ///
  /// For example, rainfall in inches, number of units sold, revenue gained,
  /// etc.
  core.List<Measure>? measures;

  /// The lower bound on data point frequency for this data set, implemented by
  /// specifying the minimum alignment period to use in a time series query.
  ///
  /// For example, if the data is published once every 10 minutes, the
  /// min_alignment_period should be at least 10 minutes. It would not make
  /// sense to fetch and align data at one minute intervals.
  ///
  /// Optional.
  core.String? minAlignmentPeriod;

  /// A template for the name of the slice.
  ///
  /// This name will be displayed in the legend and the tooltip of the pie
  /// chart. It replaces the auto-generated names for the slices. For example,
  /// if the template is set to ${resource.labels.zone}, the zone's value will
  /// be used for the name instead of the default name.
  ///
  /// Optional.
  core.String? sliceNameTemplate;

  /// The query for the PieChart.
  ///
  /// See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  ///
  /// Required.
  TimeSeriesQuery? timeSeriesQuery;

  PieChartDataSet({
    this.dimensions,
    this.measures,
    this.minAlignmentPeriod,
    this.sliceNameTemplate,
    this.timeSeriesQuery,
  });

  PieChartDataSet.fromJson(core.Map json_)
    : this(
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        measures:
            (json_['measures'] as core.List?)
                ?.map(
                  (value) => Measure.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minAlignmentPeriod: json_['minAlignmentPeriod'] as core.String?,
        sliceNameTemplate: json_['sliceNameTemplate'] as core.String?,
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (measures != null) 'measures': measures!,
    if (minAlignmentPeriod != null) 'minAlignmentPeriod': minAlignmentPeriod!,
    if (sliceNameTemplate != null) 'sliceNameTemplate': sliceNameTemplate!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
  };
}

/// QueryExemplarsRequest holds all parameters of the Prometheus upstream API
/// for querying exemplars.
class QueryExemplarsRequest {
  /// The end time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? end;

  /// A PromQL query string.
  ///
  /// Query language documentation:
  /// https://prometheus.io/docs/prometheus/latest/querying/basics/.
  core.String? query;

  /// The start time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? start;

  QueryExemplarsRequest({this.end, this.query, this.start});

  QueryExemplarsRequest.fromJson(core.Map json_)
    : this(
        end: json_['end'] as core.String?,
        query: json_['query'] as core.String?,
        start: json_['start'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (query != null) 'query': query!,
    if (start != null) 'start': start!,
  };
}

/// QueryInstantRequest holds all parameters of the Prometheus upstream instant
/// query API plus GCM specific parameters.
class QueryInstantRequest {
  /// A PromQL query string.
  ///
  /// Query language documentation:
  /// https://prometheus.io/docs/prometheus/latest/querying/basics/.
  core.String? query;

  /// The single point in time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? time;

  /// An upper bound timeout for the query.
  ///
  /// Either a Prometheus duration string
  /// (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations)
  /// or floating point seconds. This non-standard encoding must be used for
  /// compatibility with the open source API. Clients may still implement
  /// timeouts at the connection level while ignoring this field.
  core.String? timeout;

  QueryInstantRequest({this.query, this.time, this.timeout});

  QueryInstantRequest.fromJson(core.Map json_)
    : this(
        query: json_['query'] as core.String?,
        time: json_['time'] as core.String?,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (query != null) 'query': query!,
    if (time != null) 'time': time!,
    if (timeout != null) 'timeout': timeout!,
  };
}

/// QueryLabelsRequest holds all parameters of the Prometheus upstream API for
/// returning a list of label names.
class QueryLabelsRequest {
  /// The end time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? end;

  /// A list of matchers encoded in the Prometheus label matcher format to
  /// constrain the values to series that satisfy them.
  core.String? match;

  /// The start time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? start;

  QueryLabelsRequest({this.end, this.match, this.start});

  QueryLabelsRequest.fromJson(core.Map json_)
    : this(
        end: json_['end'] as core.String?,
        match: json_['match'] as core.String?,
        start: json_['start'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (match != null) 'match': match!,
    if (start != null) 'start': start!,
  };
}

/// QueryRangeRequest holds all parameters of the Prometheus upstream range
/// query API plus GCM specific parameters.
class QueryRangeRequest {
  /// The end time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? end;

  /// A PromQL query string.
  ///
  /// Query language documentation:
  /// https://prometheus.io/docs/prometheus/latest/querying/basics/.
  core.String? query;

  /// The start time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? start;

  /// The resolution of query result.
  ///
  /// Either a Prometheus duration string
  /// (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations)
  /// or floating point seconds. This non-standard encoding must be used for
  /// compatibility with the open source API. Clients may still implement
  /// timeouts at the connection level while ignoring this field.
  core.String? step;

  /// An upper bound timeout for the query.
  ///
  /// Either a Prometheus duration string
  /// (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations)
  /// or floating point seconds. This non-standard encoding must be used for
  /// compatibility with the open source API. Clients may still implement
  /// timeouts at the connection level while ignoring this field.
  core.String? timeout;

  QueryRangeRequest({
    this.end,
    this.query,
    this.start,
    this.step,
    this.timeout,
  });

  QueryRangeRequest.fromJson(core.Map json_)
    : this(
        end: json_['end'] as core.String?,
        query: json_['query'] as core.String?,
        start: json_['start'] as core.String?,
        step: json_['step'] as core.String?,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (query != null) 'query': query!,
    if (start != null) 'start': start!,
    if (step != null) 'step': step!,
    if (timeout != null) 'timeout': timeout!,
  };
}

/// QuerySeries holds all parameters of the Prometheus upstream API for querying
/// series.
class QuerySeriesRequest {
  /// The end time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? end;

  /// The start time to evaluate the query for.
  ///
  /// Either floating point UNIX seconds or RFC3339 formatted timestamp.
  core.String? start;

  QuerySeriesRequest({this.end, this.start});

  QuerySeriesRequest.fromJson(core.Map json_)
    : this(
        end: json_['end'] as core.String?,
        start: json_['start'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (start != null) 'start': start!,
  };
}

/// Describes a query to build the numerator or denominator of a
/// TimeSeriesFilterRatio.
class RatioPart {
  /// By default, the raw time series data is returned.
  ///
  /// Use this field to combine multiple time series for different views of the
  /// data.
  Aggregation? aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// that identifies the metric types, resources, and projects to query.
  ///
  /// Required.
  core.String? filter;

  RatioPart({this.aggregation, this.filter});

  RatioPart.fromJson(core.Map json_)
    : this(
        aggregation:
            json_.containsKey('aggregation')
                ? Aggregation.fromJson(
                  json_['aggregation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregation != null) 'aggregation': aggregation!,
    if (filter != null) 'filter': filter!,
  };
}

/// Defines the layout properties and content for a row.
class Row {
  /// The relative weight of this row.
  ///
  /// The row weight is used to adjust the height of rows on the screen
  /// (relative to peers). Greater the weight, greater the height of the row on
  /// the screen. If omitted, a value of 1 is used while rendering.
  core.String? weight;

  /// The display widgets arranged horizontally in this row.
  core.List<Widget>? widgets;

  Row({this.weight, this.widgets});

  Row.fromJson(core.Map json_)
    : this(
        weight: json_['weight'] as core.String?,
        widgets:
            (json_['widgets'] as core.List?)
                ?.map(
                  (value) => Widget.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (weight != null) 'weight': weight!,
    if (widgets != null) 'widgets': widgets!,
  };
}

/// A simplified layout that divides the available space into rows and arranges
/// a set of widgets horizontally in each row.
class RowLayout {
  /// The rows of content to display.
  core.List<Row>? rows;

  RowLayout({this.rows});

  RowLayout.fromJson(core.Map json_)
    : this(
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rows != null) 'rows': rows!,
  };
}

/// A widget showing the latest value of a metric, and how this value relates to
/// one or more thresholds.
class Scorecard {
  /// Will cause the Scorecard to show only the value, with no indicator to its
  /// value relative to its thresholds.
  Empty? blankView;

  /// The collection of breakdowns to be applied to the dataset.
  ///
  /// A breakdown is a way to slice the data. For example, you can break down
  /// the data by region.
  ///
  /// Optional.
  core.List<Breakdown>? breakdowns;

  /// A dimension is a structured label, class, or category for a set of
  /// measurements in your data.
  ///
  /// Optional.
  core.List<Dimension>? dimensions;

  /// Will cause the scorecard to show a gauge chart.
  GaugeView? gaugeView;

  /// A measure is a measured value of a property in your data.
  ///
  /// For example, rainfall in inches, number of units sold, revenue gained,
  /// etc.
  ///
  /// Optional.
  core.List<Measure>? measures;

  /// Will cause the scorecard to show a spark chart.
  SparkChartView? sparkChartView;

  /// The thresholds used to determine the state of the scorecard given the time
  /// series' current value.
  ///
  /// For an actual value x, the scorecard is in a danger state if x is less
  /// than or equal to a danger threshold that triggers below, or greater than
  /// or equal to a danger threshold that triggers above. Similarly, if x is
  /// above/below a warning threshold that triggers above/below, then the
  /// scorecard is in a warning state - unless x also puts it in a danger state.
  /// (Danger trumps warning.)As an example, consider a scorecard with the
  /// following four thresholds: { value: 90, category: 'DANGER', trigger:
  /// 'ABOVE', }, { value: 70, category: 'WARNING', trigger: 'ABOVE', }, {
  /// value: 10, category: 'DANGER', trigger: 'BELOW', }, { value: 20, category:
  /// 'WARNING', trigger: 'BELOW', } Then: values less than or equal to 10 would
  /// put the scorecard in a DANGER state, values greater than 10 but less than
  /// or equal to 20 a WARNING state, values strictly between 20 and 70 an OK
  /// state, values greater than or equal to 70 but less than 90 a WARNING
  /// state, and values greater than or equal to 90 a DANGER state.
  core.List<Threshold>? thresholds;

  /// Fields for querying time series data from the Stackdriver metrics API.
  ///
  /// Required.
  TimeSeriesQuery? timeSeriesQuery;

  Scorecard({
    this.blankView,
    this.breakdowns,
    this.dimensions,
    this.gaugeView,
    this.measures,
    this.sparkChartView,
    this.thresholds,
    this.timeSeriesQuery,
  });

  Scorecard.fromJson(core.Map json_)
    : this(
        blankView:
            json_.containsKey('blankView')
                ? Empty.fromJson(
                  json_['blankView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map(
                  (value) => Dimension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        gaugeView:
            json_.containsKey('gaugeView')
                ? GaugeView.fromJson(
                  json_['gaugeView'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        measures:
            (json_['measures'] as core.List?)
                ?.map(
                  (value) => Measure.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sparkChartView:
            json_.containsKey('sparkChartView')
                ? SparkChartView.fromJson(
                  json_['sparkChartView']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        thresholds:
            (json_['thresholds'] as core.List?)
                ?.map(
                  (value) => Threshold.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blankView != null) 'blankView': blankView!,
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (gaugeView != null) 'gaugeView': gaugeView!,
    if (measures != null) 'measures': measures!,
    if (sparkChartView != null) 'sparkChartView': sparkChartView!,
    if (thresholds != null) 'thresholds': thresholds!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
  };
}

/// A widget that defines a new section header.
///
/// Sections populate a table of contents and allow easier navigation of
/// long-form content.
class SectionHeader {
  /// Whether to insert a divider below the section in the table of contents
  core.bool? dividerBelow;

  /// The subtitle of the section
  core.String? subtitle;

  SectionHeader({this.dividerBelow, this.subtitle});

  SectionHeader.fromJson(core.Map json_)
    : this(
        dividerBelow: json_['dividerBelow'] as core.bool?,
        subtitle: json_['subtitle'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dividerBelow != null) 'dividerBelow': dividerBelow!,
    if (subtitle != null) 'subtitle': subtitle!,
  };
}

/// A widget that groups the other widgets by using a dropdown menu.
///
/// All widgets that are within the area spanned by the grouping widget are
/// considered member widgets.
class SingleViewGroup {
  /// Determines how the widget selector will be displayed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISPLAY_TYPE_UNSPECIFIED" : Display type is not specified, defaults to
  /// DROPDOWN.
  /// - "DROPDOWN" : Renders the widget selector as a dropdown.
  /// - "TAB" : Renders the widget selector as a tab list.
  core.String? displayType;

  SingleViewGroup({this.displayType});

  SingleViewGroup.fromJson(core.Map json_)
    : this(displayType: json_['displayType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayType != null) 'displayType': displayType!,
  };
}

/// A sparkChart is a small chart suitable for inclusion in a table-cell or
/// inline in text.
///
/// This message contains the configuration for a sparkChart to show up on a
/// Scorecard, showing recent trends of the scorecard's timeseries.
class SparkChartView {
  /// The lower bound on data point frequency in the chart implemented by
  /// specifying the minimum alignment period to use in a time series query.
  ///
  /// For example, if the data is published once every 10 minutes it would not
  /// make sense to fetch and align data at one minute intervals. This field is
  /// optional and exists only as a hint.
  core.String? minAlignmentPeriod;

  /// The type of sparkchart to show in this chartView.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SPARK_CHART_TYPE_UNSPECIFIED" : Not allowed in well-formed requests.
  /// - "SPARK_LINE" : The sparkline will be rendered as a small line chart.
  /// - "SPARK_BAR" : The sparkbar will be rendered as a small bar chart.
  core.String? sparkChartType;

  SparkChartView({this.minAlignmentPeriod, this.sparkChartType});

  SparkChartView.fromJson(core.Map json_)
    : this(
        minAlignmentPeriod: json_['minAlignmentPeriod'] as core.String?,
        sparkChartType: json_['sparkChartType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (minAlignmentPeriod != null) 'minAlignmentPeriod': minAlignmentPeriod!,
    if (sparkChartType != null) 'sparkChartType': sparkChartType!,
  };
}

/// A filter that ranks streams based on their statistical relation to other
/// streams in a request.
///
/// Note: This field is deprecated and completely ignored by the API.
class StatisticalTimeSeriesFilter {
  /// How many time series to output.
  core.int? numTimeSeries;

  /// rankingMethod is applied to a set of time series, and then the produced
  /// value for each individual time series is used to compare a given time
  /// series to others.
  ///
  /// These are methods that cannot be applied stream-by-stream, but rather
  /// require the full context of a request to evaluate time series.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Not allowed in well-formed requests.
  /// - "METHOD_CLUSTER_OUTLIER" : Compute the outlier score of each stream.
  core.String? rankingMethod;

  StatisticalTimeSeriesFilter({this.numTimeSeries, this.rankingMethod});

  StatisticalTimeSeriesFilter.fromJson(core.Map json_)
    : this(
        numTimeSeries: json_['numTimeSeries'] as core.int?,
        rankingMethod: json_['rankingMethod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (numTimeSeries != null) 'numTimeSeries': numTimeSeries!,
    if (rankingMethod != null) 'rankingMethod': rankingMethod!,
  };
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// An array of strings
class StringArray {
  /// The values of the array
  core.List<core.String>? values;

  StringArray({this.values});

  StringArray.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// Groups a time series query definition with table options.
class TableDataSet {
  /// The lower bound on data point frequency for this data set, implemented by
  /// specifying the minimum alignment period to use in a time series query For
  /// example, if the data is published once every 10 minutes, the
  /// min_alignment_period should be at least 10 minutes.
  ///
  /// It would not make sense to fetch and align data at one minute intervals.
  ///
  /// Optional.
  core.String? minAlignmentPeriod;

  /// Table display options for configuring how the table is rendered.
  ///
  /// Optional.
  TableDisplayOptions? tableDisplayOptions;

  /// A template string for naming TimeSeries in the resulting data set.
  ///
  /// This should be a string with interpolations of the form ${label_name},
  /// which will resolve to the label's value i.e.
  /// "${resource.labels.project_id}."
  ///
  /// Optional.
  core.String? tableTemplate;

  /// Fields for querying time series data from the Stackdriver metrics API.
  ///
  /// Required.
  TimeSeriesQuery? timeSeriesQuery;

  TableDataSet({
    this.minAlignmentPeriod,
    this.tableDisplayOptions,
    this.tableTemplate,
    this.timeSeriesQuery,
  });

  TableDataSet.fromJson(core.Map json_)
    : this(
        minAlignmentPeriod: json_['minAlignmentPeriod'] as core.String?,
        tableDisplayOptions:
            json_.containsKey('tableDisplayOptions')
                ? TableDisplayOptions.fromJson(
                  json_['tableDisplayOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tableTemplate: json_['tableTemplate'] as core.String?,
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (minAlignmentPeriod != null) 'minAlignmentPeriod': minAlignmentPeriod!,
    if (tableDisplayOptions != null)
      'tableDisplayOptions': tableDisplayOptions!,
    if (tableTemplate != null) 'tableTemplate': tableTemplate!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
  };
}

/// Table display options that can be reused.
class TableDisplayOptions {
  /// This field is unused and has been replaced by
  /// TimeSeriesTable.column_settings
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? shownColumns;

  TableDisplayOptions({this.shownColumns});

  TableDisplayOptions.fromJson(core.Map json_)
    : this(
        shownColumns:
            (json_['shownColumns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (shownColumns != null) 'shownColumns': shownColumns!,
  };
}

/// A condition whose evaluation is based on the value of a template variable.
class TemplateVariableCondition {
  /// Comparator to use to evaluate whether the value of the template variable
  /// matches the template_variable_value.
  ///
  /// For example, if the comparator is REGEX_FULL_MATCH,
  /// template_variable_value would contain a regex that is matched against the
  /// value of the template variable.
  /// Possible string values are:
  /// - "COMPARATOR_UNSPECIFIED" : No comparator specified. Behavior defaults to
  /// REGEX_FULL_MATCH.
  /// - "REGEX_FULL_MATCH" : Condition with this comparator evaluates to true
  /// when the value of the template variables matches the specified regex.
  core.String? comparator;

  /// The template variable whose value is evaluated.
  core.String? templateVariable;

  /// The value to compare the template variable to.
  ///
  /// For example, if the comparator is REGEX_FULL_MATCH, this field should
  /// contain a regex.
  core.String? templateVariableValue;

  TemplateVariableCondition({
    this.comparator,
    this.templateVariable,
    this.templateVariableValue,
  });

  TemplateVariableCondition.fromJson(core.Map json_)
    : this(
        comparator: json_['comparator'] as core.String?,
        templateVariable: json_['templateVariable'] as core.String?,
        templateVariableValue: json_['templateVariableValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (comparator != null) 'comparator': comparator!,
    if (templateVariable != null) 'templateVariable': templateVariable!,
    if (templateVariableValue != null)
      'templateVariableValue': templateVariableValue!,
  };
}

/// A widget that displays textual content.
class Text {
  /// The text content to be displayed.
  core.String? content;

  /// How the text content is formatted.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Format is unspecified. Defaults to MARKDOWN.
  /// - "MARKDOWN" : The text contains Markdown formatting.
  /// - "RAW" : The text contains no special formatting.
  core.String? format;

  /// How the text is styled
  TextStyle? style;

  Text({this.content, this.format, this.style});

  Text.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        format: json_['format'] as core.String?,
        style:
            json_.containsKey('style')
                ? TextStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (format != null) 'format': format!,
    if (style != null) 'style': style!,
  };
}

/// Properties that determine how the title and content are styled
class TextStyle {
  /// The background color as a hex string.
  ///
  /// "#RRGGBB" or "#RGB"
  core.String? backgroundColor;

  /// Font sizes for both the title and content.
  ///
  /// The title will still be larger relative to the content.
  /// Possible string values are:
  /// - "FONT_SIZE_UNSPECIFIED" : No font size specified, will default to
  /// FS_LARGE
  /// - "FS_EXTRA_SMALL" : Extra small font size
  /// - "FS_SMALL" : Small font size
  /// - "FS_MEDIUM" : Medium font size
  /// - "FS_LARGE" : Large font size
  /// - "FS_EXTRA_LARGE" : Extra large font size
  core.String? fontSize;

  /// The horizontal alignment of both the title and content
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : No horizontal alignment specified,
  /// will default to H_LEFT
  /// - "H_LEFT" : Left-align
  /// - "H_CENTER" : Center-align
  /// - "H_RIGHT" : Right-align
  core.String? horizontalAlignment;

  /// The amount of padding around the widget
  /// Possible string values are:
  /// - "PADDING_SIZE_UNSPECIFIED" : No padding size specified, will default to
  /// P_EXTRA_SMALL
  /// - "P_EXTRA_SMALL" : Extra small padding
  /// - "P_SMALL" : Small padding
  /// - "P_MEDIUM" : Medium padding
  /// - "P_LARGE" : Large padding
  /// - "P_EXTRA_LARGE" : Extra large padding
  core.String? padding;

  /// The pointer location for this widget (also sometimes called a "tail")
  /// Possible string values are:
  /// - "POINTER_LOCATION_UNSPECIFIED" : No visual pointer
  /// - "PL_TOP" : Placed in the middle of the top of the widget
  /// - "PL_RIGHT" : Placed in the middle of the right side of the widget
  /// - "PL_BOTTOM" : Placed in the middle of the bottom of the widget
  /// - "PL_LEFT" : Placed in the middle of the left side of the widget
  /// - "PL_TOP_LEFT" : Placed on the left side of the top of the widget
  /// - "PL_TOP_RIGHT" : Placed on the right side of the top of the widget
  /// - "PL_RIGHT_TOP" : Placed on the top of the right side of the widget
  /// - "PL_RIGHT_BOTTOM" : Placed on the bottom of the right side of the widget
  /// - "PL_BOTTOM_RIGHT" : Placed on the right side of the bottom of the widget
  /// - "PL_BOTTOM_LEFT" : Placed on the left side of the bottom of the widget
  /// - "PL_LEFT_BOTTOM" : Placed on the bottom of the left side of the widget
  /// - "PL_LEFT_TOP" : Placed on the top of the left side of the widget
  core.String? pointerLocation;

  /// The text color as a hex string.
  ///
  /// "#RRGGBB" or "#RGB"
  core.String? textColor;

  /// The vertical alignment of both the title and content
  /// Possible string values are:
  /// - "VERTICAL_ALIGNMENT_UNSPECIFIED" : No vertical alignment specified, will
  /// default to V_TOP
  /// - "V_TOP" : Top-align
  /// - "V_CENTER" : Center-align
  /// - "V_BOTTOM" : Bottom-align
  core.String? verticalAlignment;

  TextStyle({
    this.backgroundColor,
    this.fontSize,
    this.horizontalAlignment,
    this.padding,
    this.pointerLocation,
    this.textColor,
    this.verticalAlignment,
  });

  TextStyle.fromJson(core.Map json_)
    : this(
        backgroundColor: json_['backgroundColor'] as core.String?,
        fontSize: json_['fontSize'] as core.String?,
        horizontalAlignment: json_['horizontalAlignment'] as core.String?,
        padding: json_['padding'] as core.String?,
        pointerLocation: json_['pointerLocation'] as core.String?,
        textColor: json_['textColor'] as core.String?,
        verticalAlignment: json_['verticalAlignment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backgroundColor != null) 'backgroundColor': backgroundColor!,
    if (fontSize != null) 'fontSize': fontSize!,
    if (horizontalAlignment != null)
      'horizontalAlignment': horizontalAlignment!,
    if (padding != null) 'padding': padding!,
    if (pointerLocation != null) 'pointerLocation': pointerLocation!,
    if (textColor != null) 'textColor': textColor!,
    if (verticalAlignment != null) 'verticalAlignment': verticalAlignment!,
  };
}

/// Defines a threshold for categorizing time series values.
class Threshold {
  /// The state color for this threshold.
  ///
  /// Color is not allowed in a XyChart.
  /// Possible string values are:
  /// - "COLOR_UNSPECIFIED" : Color is unspecified. Not allowed in well-formed
  /// requests.
  /// - "YELLOW" : Crossing the threshold is "concerning" behavior.
  /// - "RED" : Crossing the threshold is "emergency" behavior.
  core.String? color;

  /// The direction for the current threshold.
  ///
  /// Direction is not allowed in a XyChart.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Not allowed in well-formed requests.
  /// - "ABOVE" : The threshold will be considered crossed if the actual value
  /// is above the threshold value.
  /// - "BELOW" : The threshold will be considered crossed if the actual value
  /// is below the threshold value.
  core.String? direction;

  /// A label for the threshold.
  core.String? label;

  /// The target axis to use for plotting the threshold.
  ///
  /// Target axis is not allowed in a Scorecard.
  /// Possible string values are:
  /// - "TARGET_AXIS_UNSPECIFIED" : The target axis was not specified. Defaults
  /// to Y1.
  /// - "Y1" : The y_axis (the right axis of chart).
  /// - "Y2" : The y2_axis (the left axis of chart).
  core.String? targetAxis;

  /// The value of the threshold.
  ///
  /// The value should be defined in the native scale of the metric.
  core.double? value;

  Threshold({
    this.color,
    this.direction,
    this.label,
    this.targetAxis,
    this.value,
  });

  Threshold.fromJson(core.Map json_)
    : this(
        color: json_['color'] as core.String?,
        direction: json_['direction'] as core.String?,
        label: json_['label'] as core.String?,
        targetAxis: json_['targetAxis'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (color != null) 'color': color!,
    if (direction != null) 'direction': direction!,
    if (label != null) 'label': label!,
    if (targetAxis != null) 'targetAxis': targetAxis!,
    if (value != null) 'value': value!,
  };
}

/// A single tile in the mosaic.
///
/// The placement and size of the tile are configurable.
class Tile {
  /// The height of the tile, measured in grid blocks.
  ///
  /// Tiles must have a minimum height of 1.
  core.int? height;

  /// The informational widget contained in the tile.
  ///
  /// For example an XyChart.
  Widget? widget;

  /// The width of the tile, measured in grid blocks.
  ///
  /// Tiles must have a minimum width of 1.
  core.int? width;

  /// The zero-indexed position of the tile in grid blocks relative to the left
  /// edge of the grid.
  ///
  /// Tiles must be contained within the specified number of columns. x_pos
  /// cannot be negative.
  core.int? xPos;

  /// The zero-indexed position of the tile in grid blocks relative to the top
  /// edge of the grid.
  ///
  /// y_pos cannot be negative.
  core.int? yPos;

  Tile({this.height, this.widget, this.width, this.xPos, this.yPos});

  Tile.fromJson(core.Map json_)
    : this(
        height: json_['height'] as core.int?,
        widget:
            json_.containsKey('widget')
                ? Widget.fromJson(
                  json_['widget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        width: json_['width'] as core.int?,
        xPos: json_['xPos'] as core.int?,
        yPos: json_['yPos'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (height != null) 'height': height!,
    if (widget != null) 'widget': widget!,
    if (width != null) 'width': width!,
    if (xPos != null) 'xPos': xPos!,
    if (yPos != null) 'yPos': yPos!,
  };
}

/// A filter that defines a subset of time series data that is displayed in a
/// widget.
///
/// Time series data is fetched using the ListTimeSeries
/// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list)
/// method.
class TimeSeriesFilter {
  /// By default, the raw time series data is returned.
  ///
  /// Use this field to combine multiple time series for different views of the
  /// data.
  Aggregation? aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
  /// that identifies the metric types, resources, and projects to query.
  ///
  /// Required.
  core.String? filter;

  /// Ranking based time series filter.
  PickTimeSeriesFilter? pickTimeSeriesFilter;

  /// Apply a second aggregation after aggregation is applied.
  Aggregation? secondaryAggregation;

  /// Statistics based time series filter.
  ///
  /// Note: This field is deprecated and completely ignored by the API.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  StatisticalTimeSeriesFilter? statisticalTimeSeriesFilter;

  TimeSeriesFilter({
    this.aggregation,
    this.filter,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  TimeSeriesFilter.fromJson(core.Map json_)
    : this(
        aggregation:
            json_.containsKey('aggregation')
                ? Aggregation.fromJson(
                  json_['aggregation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
        pickTimeSeriesFilter:
            json_.containsKey('pickTimeSeriesFilter')
                ? PickTimeSeriesFilter.fromJson(
                  json_['pickTimeSeriesFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryAggregation:
            json_.containsKey('secondaryAggregation')
                ? Aggregation.fromJson(
                  json_['secondaryAggregation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        statisticalTimeSeriesFilter:
            json_.containsKey('statisticalTimeSeriesFilter')
                ? StatisticalTimeSeriesFilter.fromJson(
                  json_['statisticalTimeSeriesFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregation != null) 'aggregation': aggregation!,
    if (filter != null) 'filter': filter!,
    if (pickTimeSeriesFilter != null)
      'pickTimeSeriesFilter': pickTimeSeriesFilter!,
    if (secondaryAggregation != null)
      'secondaryAggregation': secondaryAggregation!,
    if (statisticalTimeSeriesFilter != null)
      'statisticalTimeSeriesFilter': statisticalTimeSeriesFilter!,
  };
}

/// A pair of time series filters that define a ratio computation.
///
/// The output time series is the pair-wise division of each aligned element
/// from the numerator and denominator time series.
class TimeSeriesFilterRatio {
  /// The denominator of the ratio.
  RatioPart? denominator;

  /// The numerator of the ratio.
  RatioPart? numerator;

  /// Ranking based time series filter.
  PickTimeSeriesFilter? pickTimeSeriesFilter;

  /// Apply a second aggregation after the ratio is computed.
  Aggregation? secondaryAggregation;

  /// Statistics based time series filter.
  ///
  /// Note: This field is deprecated and completely ignored by the API.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  StatisticalTimeSeriesFilter? statisticalTimeSeriesFilter;

  TimeSeriesFilterRatio({
    this.denominator,
    this.numerator,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  TimeSeriesFilterRatio.fromJson(core.Map json_)
    : this(
        denominator:
            json_.containsKey('denominator')
                ? RatioPart.fromJson(
                  json_['denominator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        numerator:
            json_.containsKey('numerator')
                ? RatioPart.fromJson(
                  json_['numerator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pickTimeSeriesFilter:
            json_.containsKey('pickTimeSeriesFilter')
                ? PickTimeSeriesFilter.fromJson(
                  json_['pickTimeSeriesFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryAggregation:
            json_.containsKey('secondaryAggregation')
                ? Aggregation.fromJson(
                  json_['secondaryAggregation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        statisticalTimeSeriesFilter:
            json_.containsKey('statisticalTimeSeriesFilter')
                ? StatisticalTimeSeriesFilter.fromJson(
                  json_['statisticalTimeSeriesFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (denominator != null) 'denominator': denominator!,
    if (numerator != null) 'numerator': numerator!,
    if (pickTimeSeriesFilter != null)
      'pickTimeSeriesFilter': pickTimeSeriesFilter!,
    if (secondaryAggregation != null)
      'secondaryAggregation': secondaryAggregation!,
    if (statisticalTimeSeriesFilter != null)
      'statisticalTimeSeriesFilter': statisticalTimeSeriesFilter!,
  };
}

/// TimeSeriesQuery collects the set of supported methods for querying time
/// series data from the Stackdriver metrics API.
class TimeSeriesQuery {
  /// Preview: A query used to fetch a time series, category series, or numeric
  /// series with SQL.
  ///
  /// This is a preview feature and may be subject to change before final
  /// release.
  OpsAnalyticsQuery? opsAnalyticsQuery;

  /// If set, Cloud Monitoring will treat the full query duration as the
  /// alignment period so that there will be only 1 output value.*Note: This
  /// could override the configured alignment period except for the cases where
  /// a series of data points are expected, like - XyChart - Scorecard's spark
  /// chart
  ///
  /// Optional.
  core.bool? outputFullDuration;

  /// A query used to fetch time series with PromQL.
  core.String? prometheusQuery;

  /// Filter parameters to fetch time series.
  TimeSeriesFilter? timeSeriesFilter;

  /// Parameters to fetch a ratio between two time series filters.
  TimeSeriesFilterRatio? timeSeriesFilterRatio;

  /// A query used to fetch time series with MQL.
  core.String? timeSeriesQueryLanguage;

  /// The unit of data contained in fetched time series.
  ///
  /// If non-empty, this unit will override any unit that accompanies fetched
  /// data. The format is the same as the unit
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors)
  /// field in MetricDescriptor.
  core.String? unitOverride;

  TimeSeriesQuery({
    this.opsAnalyticsQuery,
    this.outputFullDuration,
    this.prometheusQuery,
    this.timeSeriesFilter,
    this.timeSeriesFilterRatio,
    this.timeSeriesQueryLanguage,
    this.unitOverride,
  });

  TimeSeriesQuery.fromJson(core.Map json_)
    : this(
        opsAnalyticsQuery:
            json_.containsKey('opsAnalyticsQuery')
                ? OpsAnalyticsQuery.fromJson(
                  json_['opsAnalyticsQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputFullDuration: json_['outputFullDuration'] as core.bool?,
        prometheusQuery: json_['prometheusQuery'] as core.String?,
        timeSeriesFilter:
            json_.containsKey('timeSeriesFilter')
                ? TimeSeriesFilter.fromJson(
                  json_['timeSeriesFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeSeriesFilterRatio:
            json_.containsKey('timeSeriesFilterRatio')
                ? TimeSeriesFilterRatio.fromJson(
                  json_['timeSeriesFilterRatio']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeSeriesQueryLanguage:
            json_['timeSeriesQueryLanguage'] as core.String?,
        unitOverride: json_['unitOverride'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (opsAnalyticsQuery != null) 'opsAnalyticsQuery': opsAnalyticsQuery!,
    if (outputFullDuration != null) 'outputFullDuration': outputFullDuration!,
    if (prometheusQuery != null) 'prometheusQuery': prometheusQuery!,
    if (timeSeriesFilter != null) 'timeSeriesFilter': timeSeriesFilter!,
    if (timeSeriesFilterRatio != null)
      'timeSeriesFilterRatio': timeSeriesFilterRatio!,
    if (timeSeriesQueryLanguage != null)
      'timeSeriesQueryLanguage': timeSeriesQueryLanguage!,
    if (unitOverride != null) 'unitOverride': unitOverride!,
  };
}

/// A table that displays time series data.
class TimeSeriesTable {
  /// The list of the persistent column settings for the table.
  ///
  /// Optional.
  core.List<ColumnSettings>? columnSettings;

  /// The data displayed in this table.
  ///
  /// Required.
  core.List<TableDataSet>? dataSets;

  /// Store rendering strategy
  ///
  /// Optional.
  /// Possible string values are:
  /// - "METRIC_VISUALIZATION_UNSPECIFIED" : Unspecified state
  /// - "NUMBER" : Default text rendering
  /// - "BAR" : Horizontal bar rendering
  core.String? metricVisualization;

  TimeSeriesTable({
    this.columnSettings,
    this.dataSets,
    this.metricVisualization,
  });

  TimeSeriesTable.fromJson(core.Map json_)
    : this(
        columnSettings:
            (json_['columnSettings'] as core.List?)
                ?.map(
                  (value) => ColumnSettings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dataSets:
            (json_['dataSets'] as core.List?)
                ?.map(
                  (value) => TableDataSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metricVisualization: json_['metricVisualization'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columnSettings != null) 'columnSettings': columnSettings!,
    if (dataSets != null) 'dataSets': dataSets!,
    if (metricVisualization != null)
      'metricVisualization': metricVisualization!,
  };
}

/// A widget that displays hierarchical data as a treemap.
class Treemap {
  /// The collection of datasets used to construct and populate the treemap.
  ///
  /// For the rendered treemap rectangles: Color is determined by the aggregated
  /// value for each grouping. Size is proportional to the count of time series
  /// aggregated within that rectangle's segment.
  ///
  /// Required.
  core.List<TreemapDataSet>? dataSets;

  /// Ordered labels representing the hierarchical treemap structure.
  ///
  /// Required.
  core.List<core.String>? treemapHierarchy;

  Treemap({this.dataSets, this.treemapHierarchy});

  Treemap.fromJson(core.Map json_)
    : this(
        dataSets:
            (json_['dataSets'] as core.List?)
                ?.map(
                  (value) => TreemapDataSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        treemapHierarchy:
            (json_['treemapHierarchy'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSets != null) 'dataSets': dataSets!,
    if (treemapHierarchy != null) 'treemapHierarchy': treemapHierarchy!,
  };
}

/// The data represented by the treemap.
///
/// Needs to include the data itself, plus rules on how to organize it
/// hierarchically.
class TreemapDataSet {
  /// The collection of breakdowns to be applied to the dataset.
  ///
  /// A breakdown is a way to slice the data. For example, you can break down
  /// the data by region.
  ///
  /// Optional.
  core.List<Breakdown>? breakdowns;

  /// A collection of measures.
  ///
  /// A measure is a measured value of a property in your data. For example,
  /// rainfall in inches, number of units sold, revenue gained, etc.
  ///
  /// Optional.
  core.List<Measure>? measures;

  /// The query that fetches the relevant data.
  ///
  /// See google.monitoring.dashboard.v1.TimeSeriesQuery
  ///
  /// Required.
  TimeSeriesQuery? timeSeriesQuery;

  TreemapDataSet({this.breakdowns, this.measures, this.timeSeriesQuery});

  TreemapDataSet.fromJson(core.Map json_)
    : this(
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        measures:
            (json_['measures'] as core.List?)
                ?.map(
                  (value) => Measure.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeSeriesQuery:
            json_.containsKey('timeSeriesQuery')
                ? TimeSeriesQuery.fromJson(
                  json_['timeSeriesQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (measures != null) 'measures': measures!,
    if (timeSeriesQuery != null) 'timeSeriesQuery': timeSeriesQuery!,
  };
}

/// Condition that determines whether the widget should be displayed.
class VisibilityCondition {
  /// A condition whose evaluation is based on the value of a template variable.
  TemplateVariableCondition? templateVariableCondition;

  VisibilityCondition({this.templateVariableCondition});

  VisibilityCondition.fromJson(core.Map json_)
    : this(
        templateVariableCondition:
            json_.containsKey('templateVariableCondition')
                ? TemplateVariableCondition.fromJson(
                  json_['templateVariableCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (templateVariableCondition != null)
      'templateVariableCondition': templateVariableCondition!,
  };
}

/// Widget contains a single dashboard component and configuration of how to
/// present the component in the dashboard.
class Widget {
  /// A chart of alert policy data.
  AlertChart? alertChart;

  /// A blank space.
  Empty? blank;

  /// A widget that groups the other widgets.
  ///
  /// All widgets that are within the area spanned by the grouping widget are
  /// considered member widgets.
  CollapsibleGroup? collapsibleGroup;

  /// A widget that displays a list of error groups.
  ErrorReportingPanel? errorReportingPanel;

  /// The widget id.
  ///
  /// Ids may be made up of alphanumerics, dashes and underscores. Widget ids
  /// are optional.
  ///
  /// Optional.
  core.String? id;

  /// A widget that shows list of incidents.
  IncidentList? incidentList;

  /// A widget that shows a stream of logs.
  LogsPanel? logsPanel;

  /// A widget that displays timeseries data as a pie chart.
  PieChart? pieChart;

  /// A scorecard summarizing time series data.
  Scorecard? scorecard;

  /// A widget that defines a section header for easier navigation of the
  /// dashboard.
  SectionHeader? sectionHeader;

  /// A widget that groups the other widgets by using a dropdown menu.
  SingleViewGroup? singleViewGroup;

  /// A raw string or markdown displaying textual content.
  Text? text;

  /// A widget that displays time series data in a tabular format.
  TimeSeriesTable? timeSeriesTable;

  /// The title of the widget.
  ///
  /// Optional.
  core.String? title;

  /// A widget that displays data as a treemap.
  Treemap? treemap;

  /// If set, this widget is rendered only when the condition is evaluated to
  /// true.
  ///
  /// Optional.
  VisibilityCondition? visibilityCondition;

  /// A chart of time series data.
  XyChart? xyChart;

  Widget({
    this.alertChart,
    this.blank,
    this.collapsibleGroup,
    this.errorReportingPanel,
    this.id,
    this.incidentList,
    this.logsPanel,
    this.pieChart,
    this.scorecard,
    this.sectionHeader,
    this.singleViewGroup,
    this.text,
    this.timeSeriesTable,
    this.title,
    this.treemap,
    this.visibilityCondition,
    this.xyChart,
  });

  Widget.fromJson(core.Map json_)
    : this(
        alertChart:
            json_.containsKey('alertChart')
                ? AlertChart.fromJson(
                  json_['alertChart'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        blank:
            json_.containsKey('blank')
                ? Empty.fromJson(
                  json_['blank'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        collapsibleGroup:
            json_.containsKey('collapsibleGroup')
                ? CollapsibleGroup.fromJson(
                  json_['collapsibleGroup']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorReportingPanel:
            json_.containsKey('errorReportingPanel')
                ? ErrorReportingPanel.fromJson(
                  json_['errorReportingPanel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        incidentList:
            json_.containsKey('incidentList')
                ? IncidentList.fromJson(
                  json_['incidentList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        logsPanel:
            json_.containsKey('logsPanel')
                ? LogsPanel.fromJson(
                  json_['logsPanel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pieChart:
            json_.containsKey('pieChart')
                ? PieChart.fromJson(
                  json_['pieChart'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scorecard:
            json_.containsKey('scorecard')
                ? Scorecard.fromJson(
                  json_['scorecard'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sectionHeader:
            json_.containsKey('sectionHeader')
                ? SectionHeader.fromJson(
                  json_['sectionHeader'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        singleViewGroup:
            json_.containsKey('singleViewGroup')
                ? SingleViewGroup.fromJson(
                  json_['singleViewGroup']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        text:
            json_.containsKey('text')
                ? Text.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeSeriesTable:
            json_.containsKey('timeSeriesTable')
                ? TimeSeriesTable.fromJson(
                  json_['timeSeriesTable']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        title: json_['title'] as core.String?,
        treemap:
            json_.containsKey('treemap')
                ? Treemap.fromJson(
                  json_['treemap'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        visibilityCondition:
            json_.containsKey('visibilityCondition')
                ? VisibilityCondition.fromJson(
                  json_['visibilityCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        xyChart:
            json_.containsKey('xyChart')
                ? XyChart.fromJson(
                  json_['xyChart'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertChart != null) 'alertChart': alertChart!,
    if (blank != null) 'blank': blank!,
    if (collapsibleGroup != null) 'collapsibleGroup': collapsibleGroup!,
    if (errorReportingPanel != null)
      'errorReportingPanel': errorReportingPanel!,
    if (id != null) 'id': id!,
    if (incidentList != null) 'incidentList': incidentList!,
    if (logsPanel != null) 'logsPanel': logsPanel!,
    if (pieChart != null) 'pieChart': pieChart!,
    if (scorecard != null) 'scorecard': scorecard!,
    if (sectionHeader != null) 'sectionHeader': sectionHeader!,
    if (singleViewGroup != null) 'singleViewGroup': singleViewGroup!,
    if (text != null) 'text': text!,
    if (timeSeriesTable != null) 'timeSeriesTable': timeSeriesTable!,
    if (title != null) 'title': title!,
    if (treemap != null) 'treemap': treemap!,
    if (visibilityCondition != null)
      'visibilityCondition': visibilityCondition!,
    if (xyChart != null) 'xyChart': xyChart!,
  };
}

/// A chart that displays data on a 2D (X and Y axes) plane.
class XyChart {
  /// Display options for the chart.
  ChartOptions? chartOptions;

  /// The data displayed in this chart.
  ///
  /// Required.
  core.List<DataSet>? dataSets;

  /// Threshold lines drawn horizontally across the chart.
  core.List<Threshold>? thresholds;

  /// The duration used to display a comparison chart.
  ///
  /// A comparison chart simultaneously shows values from two similar-length
  /// time periods (e.g., week-over-week metrics). The duration must be
  /// positive, and it can only be applied to charts with data sets of LINE plot
  /// type.
  core.String? timeshiftDuration;

  /// The properties applied to the x-axis.
  Axis? xAxis;

  /// The properties applied to the y2-axis.
  Axis? y2Axis;

  /// The properties applied to the y-axis.
  Axis? yAxis;

  XyChart({
    this.chartOptions,
    this.dataSets,
    this.thresholds,
    this.timeshiftDuration,
    this.xAxis,
    this.y2Axis,
    this.yAxis,
  });

  XyChart.fromJson(core.Map json_)
    : this(
        chartOptions:
            json_.containsKey('chartOptions')
                ? ChartOptions.fromJson(
                  json_['chartOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataSets:
            (json_['dataSets'] as core.List?)
                ?.map(
                  (value) => DataSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        thresholds:
            (json_['thresholds'] as core.List?)
                ?.map(
                  (value) => Threshold.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeshiftDuration: json_['timeshiftDuration'] as core.String?,
        xAxis:
            json_.containsKey('xAxis')
                ? Axis.fromJson(
                  json_['xAxis'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        y2Axis:
            json_.containsKey('y2Axis')
                ? Axis.fromJson(
                  json_['y2Axis'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        yAxis:
            json_.containsKey('yAxis')
                ? Axis.fromJson(
                  json_['yAxis'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chartOptions != null) 'chartOptions': chartOptions!,
    if (dataSets != null) 'dataSets': dataSets!,
    if (thresholds != null) 'thresholds': thresholds!,
    if (timeshiftDuration != null) 'timeshiftDuration': timeshiftDuration!,
    if (xAxis != null) 'xAxis': xAxis!,
    if (y2Axis != null) 'y2Axis': y2Axis!,
    if (yAxis != null) 'yAxis': yAxis!,
  };
}
