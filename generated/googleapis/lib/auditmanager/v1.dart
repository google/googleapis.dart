// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Audit Manager API - v1
///
/// The Audit Manager API allows customers to manage compliance audits.
///
/// For more information, see
/// <https://cloud.google.com/assured-workloads/docs/audit-manager>
///
/// Create an instance of [CloudAuditManagerApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersLocationsResource]
///     - [FoldersLocationsAuditReportsResource]
///     - [FoldersLocationsAuditScopeReportsResource]
///     - [FoldersLocationsOperationDetailsResource]
///     - [FoldersLocationsOperationIdsResource]
///     - [FoldersLocationsResourceEnrollmentStatusesResource]
///     - [FoldersLocationsStandardsResource]
///       - [FoldersLocationsStandardsControlsResource]
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsAuditReportsResource]
///     - [OrganizationsLocationsAuditScopeReportsResource]
///     - [OrganizationsLocationsOperationDetailsResource]
///     - [OrganizationsLocationsOperationIdsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsResourceEnrollmentStatusesResource]
///     - [OrganizationsLocationsStandardsResource]
///       - [OrganizationsLocationsStandardsControlsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAuditReportsResource]
///     - [ProjectsLocationsAuditScopeReportsResource]
///     - [ProjectsLocationsOperationDetailsResource]
///     - [ProjectsLocationsOperationIdsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsResourceEnrollmentStatusesResource]
///     - [ProjectsLocationsStandardsResource]
///       - [ProjectsLocationsStandardsControlsResource]
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

/// The Audit Manager API allows customers to manage compliance audits.
class CloudAuditManagerApi {
  /// See, edit, configure, and delete your Google Cloud Auditmanager data and
  /// see the email address for your Google Account
  static const cloudAuditmanagerScope =
      'https://www.googleapis.com/auth/cloud-auditmanager';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  CloudAuditManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://auditmanager.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersLocationsResource get locations =>
      FoldersLocationsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsAuditReportsResource get auditReports =>
      FoldersLocationsAuditReportsResource(_requester);
  FoldersLocationsAuditScopeReportsResource get auditScopeReports =>
      FoldersLocationsAuditScopeReportsResource(_requester);
  FoldersLocationsOperationDetailsResource get operationDetails =>
      FoldersLocationsOperationDetailsResource(_requester);
  FoldersLocationsOperationIdsResource get operationIds =>
      FoldersLocationsOperationIdsResource(_requester);
  FoldersLocationsResourceEnrollmentStatusesResource
  get resourceEnrollmentStatuses =>
      FoldersLocationsResourceEnrollmentStatusesResource(_requester);
  FoldersLocationsStandardsResource get standards =>
      FoldersLocationsStandardsResource(_requester);

  FoldersLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Adds your project, folder, or organization to Audit Manager.
  ///
  /// This method creates the Audit Manager service agent in your workload and
  /// grants required permissions to the service agent. If you make this request
  /// on a workload that's already enrolled, then this method overrides the
  /// existing set of destinations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project to enroll in Audit
  /// Manager, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enrollment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enrollment> enrollResource(
    EnrollResourceRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$scope') + ':enrollResource';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Enrollment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersLocationsAuditReportsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsAuditReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Registers audit report generation requests.
  ///
  /// This method returns the operation identifier that you can use to track the
  /// report generation progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project that the audit
  /// applies to, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> generate(
    GenerateAuditReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the full metadata and findings for an audit report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the audit report, in one of the following
  /// formats: *
  /// `projects/{project}/locations/{location}/auditReports/{audit_report}` *
  /// `folders/{folder}/locations/{location}/auditReports/{audit_report}` *
  /// `organizations/{organization}/locations/{location}/auditReports/{audit_report}`
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/auditReports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditReport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuditReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the audit reports for the organization, folder, or project that you
  /// specify as the parent scope.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent organization, folder, or project to list
  /// reports for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuditReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuditReportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/auditReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuditReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersLocationsAuditScopeReportsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsAuditScopeReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an audit scope report for the given standard.
  ///
  /// The report includes the following: * The technical attributes and
  /// constraints that Audit Manager uses to verify your compliance with a
  /// framework. * A list of Google Cloud services and resources that are within
  /// the scope of the framework.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Project or folder that the audit scope report is
  /// generated for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditScopeReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditScopeReport> generate(
    GenerateAuditScopeReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditScopeReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuditScopeReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersLocationsOperationDetailsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsOperationDetailsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/operationDetails/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class FoldersLocationsOperationIdsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsOperationIdsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/operationIds/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class FoldersLocationsResourceEnrollmentStatusesResource {
  final commons.ApiRequester _requester;

  FoldersLocationsResourceEnrollmentStatusesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a resource and its enrollment status.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource enrollment status, in one of the
  /// following formats: *
  /// `folders/{folder}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `projects/{project}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `organizations/{organization}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/resourceEnrollmentStatuses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceEnrollmentStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceEnrollmentStatus> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourceEnrollmentStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the folders and projects in an organization or folder, along
  /// with their enrollments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent organization or folder to list enrollment
  /// statuses for, in one of the following formats: *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResourceEnrollmentStatusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResourceEnrollmentStatusesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/resourceEnrollmentStatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourceEnrollmentStatusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersLocationsStandardsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsStandardsControlsResource get controls =>
      FoldersLocationsStandardsControlsResource(_requester);

  FoldersLocationsStandardsResource(commons.ApiRequester client)
    : _requester = client;
}

class FoldersLocationsStandardsControlsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsStandardsControlsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the controls that you must implement to become compliant to a
  /// regulatory standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Standard to list controls for, in one of the
  /// following formats: *
  /// `projects/{project}/locations/{location}/standards/{standard}` *
  /// `folders/{folder}/locations/{location}/standards/{standard}` *
  /// `organizations/{organization}/locations/{location}/standards/{standard}`
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/standards/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListControlsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsAuditReportsResource get auditReports =>
      OrganizationsLocationsAuditReportsResource(_requester);
  OrganizationsLocationsAuditScopeReportsResource get auditScopeReports =>
      OrganizationsLocationsAuditScopeReportsResource(_requester);
  OrganizationsLocationsOperationDetailsResource get operationDetails =>
      OrganizationsLocationsOperationDetailsResource(_requester);
  OrganizationsLocationsOperationIdsResource get operationIds =>
      OrganizationsLocationsOperationIdsResource(_requester);
  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);
  OrganizationsLocationsResourceEnrollmentStatusesResource
  get resourceEnrollmentStatuses =>
      OrganizationsLocationsResourceEnrollmentStatusesResource(_requester);
  OrganizationsLocationsStandardsResource get standards =>
      OrganizationsLocationsStandardsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds your project, folder, or organization to Audit Manager.
  ///
  /// This method creates the Audit Manager service agent in your workload and
  /// grants required permissions to the service agent. If you make this request
  /// on a workload that's already enrolled, then this method overrides the
  /// existing set of destinations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project to enroll in Audit
  /// Manager, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enrollment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enrollment> enrollResource(
    EnrollResourceRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$scope') + ':enrollResource';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Enrollment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsAuditReportsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsAuditReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Registers audit report generation requests.
  ///
  /// This method returns the operation identifier that you can use to track the
  /// report generation progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project that the audit
  /// applies to, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> generate(
    GenerateAuditReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the full metadata and findings for an audit report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the audit report, in one of the following
  /// formats: *
  /// `projects/{project}/locations/{location}/auditReports/{audit_report}` *
  /// `folders/{folder}/locations/{location}/auditReports/{audit_report}` *
  /// `organizations/{organization}/locations/{location}/auditReports/{audit_report}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/auditReports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditReport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuditReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the audit reports for the organization, folder, or project that you
  /// specify as the parent scope.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent organization, folder, or project to list
  /// reports for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuditReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuditReportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/auditReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuditReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsAuditScopeReportsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsAuditScopeReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an audit scope report for the given standard.
  ///
  /// The report includes the following: * The technical attributes and
  /// constraints that Audit Manager uses to verify your compliance with a
  /// framework. * A list of Google Cloud services and resources that are within
  /// the scope of the framework.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Project or folder that the audit scope report is
  /// generated for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditScopeReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditScopeReport> generate(
    GenerateAuditScopeReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditScopeReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuditScopeReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsOperationDetailsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationDetailsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operationDetails/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class OrganizationsLocationsOperationIdsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationIdsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operationIds/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class OrganizationsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource(commons.ApiRequester client)
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

class OrganizationsLocationsResourceEnrollmentStatusesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResourceEnrollmentStatusesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a resource and its enrollment status.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource enrollment status, in one of the
  /// following formats: *
  /// `folders/{folder}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `projects/{project}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `organizations/{organization}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/resourceEnrollmentStatuses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceEnrollmentStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceEnrollmentStatus> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourceEnrollmentStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the folders and projects in an organization or folder, along
  /// with their enrollments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent organization or folder to list enrollment
  /// statuses for, in one of the following formats: *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResourceEnrollmentStatusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResourceEnrollmentStatusesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/resourceEnrollmentStatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourceEnrollmentStatusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsStandardsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsStandardsControlsResource get controls =>
      OrganizationsLocationsStandardsControlsResource(_requester);

  OrganizationsLocationsStandardsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsStandardsControlsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsStandardsControlsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the controls that you must implement to become compliant to a
  /// regulatory standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Standard to list controls for, in one of the
  /// following formats: *
  /// `projects/{project}/locations/{location}/standards/{standard}` *
  /// `folders/{folder}/locations/{location}/standards/{standard}` *
  /// `organizations/{organization}/locations/{location}/standards/{standard}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/standards/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListControlsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuditReportsResource get auditReports =>
      ProjectsLocationsAuditReportsResource(_requester);
  ProjectsLocationsAuditScopeReportsResource get auditScopeReports =>
      ProjectsLocationsAuditScopeReportsResource(_requester);
  ProjectsLocationsOperationDetailsResource get operationDetails =>
      ProjectsLocationsOperationDetailsResource(_requester);
  ProjectsLocationsOperationIdsResource get operationIds =>
      ProjectsLocationsOperationIdsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsResourceEnrollmentStatusesResource
  get resourceEnrollmentStatuses =>
      ProjectsLocationsResourceEnrollmentStatusesResource(_requester);
  ProjectsLocationsStandardsResource get standards =>
      ProjectsLocationsStandardsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Adds your project, folder, or organization to Audit Manager.
  ///
  /// This method creates the Audit Manager service agent in your workload and
  /// grants required permissions to the service agent. If you make this request
  /// on a workload that's already enrolled, then this method overrides the
  /// existing set of destinations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project to enroll in Audit
  /// Manager, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enrollment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enrollment> enrollResource(
    EnrollResourceRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$scope') + ':enrollResource';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Enrollment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// This method lists locations based on the resource scope provided in the
  /// ListLocationsRequest.name field: * **Global locations**: If `name` is
  /// empty, the method lists the public locations available to all projects. *
  /// **Project-specific locations**: If `name` follows the format
  /// `projects/{project}`, the method lists locations visible to that specific
  /// project. This includes public, private, or other project-specific
  /// locations enabled for the project. For gRPC and client library
  /// implementations, the resource name is passed as the `name` field. For
  /// direct service calls, the resource name is incorporated into the request
  /// path based on the specific service implementation and version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field unless explicitly
  /// documented otherwise. This is primarily for internal usage.
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
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuditReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuditReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Registers audit report generation requests.
  ///
  /// This method returns the operation identifier that you can use to track the
  /// report generation progress.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Organization, folder, or project that the audit
  /// applies to, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> generate(
    GenerateAuditReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the full metadata and findings for an audit report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the audit report, in one of the following
  /// formats: *
  /// `projects/{project}/locations/{location}/auditReports/{audit_report}` *
  /// `folders/{folder}/locations/{location}/auditReports/{audit_report}` *
  /// `organizations/{organization}/locations/{location}/auditReports/{audit_report}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/auditReports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditReport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuditReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the audit reports for the organization, folder, or project that you
  /// specify as the parent scope.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent organization, folder, or project to list
  /// reports for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuditReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuditReportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/auditReports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuditReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuditScopeReportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuditScopeReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an audit scope report for the given standard.
  ///
  /// The report includes the following: * The technical attributes and
  /// constraints that Audit Manager uses to verify your compliance with a
  /// framework. * A list of Google Cloud services and resources that are within
  /// the scope of the framework.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Project or folder that the audit scope report is
  /// generated for, in one of the following formats: *
  /// `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditScopeReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditScopeReport> generate(
    GenerateAuditScopeReportRequest request,
    core.String scope, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/auditScopeReports:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuditScopeReport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationDetailsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationDetailsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operationDetails/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsOperationIdsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationIdsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details about the long-running operation to generate audit reports.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operationIds/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

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

class ProjectsLocationsResourceEnrollmentStatusesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceEnrollmentStatusesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a resource and its enrollment status.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource enrollment status, in one of the
  /// following formats: *
  /// `folders/{folder}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `projects/{project}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `organizations/{organization}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/resourceEnrollmentStatuses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourceEnrollmentStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourceEnrollmentStatus> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourceEnrollmentStatus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsStandardsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStandardsControlsResource get controls =>
      ProjectsLocationsStandardsControlsResource(_requester);

  ProjectsLocationsStandardsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsStandardsControlsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStandardsControlsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the controls that you must implement to become compliant to a
  /// regulatory standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Standard to list controls for, in one of the
  /// following formats: *
  /// `projects/{project}/locations/{location}/standards/{standard}` *
  /// `folders/{folder}/locations/{location}/standards/{standard}` *
  /// `organizations/{organization}/locations/{location}/standards/{standard}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/standards/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return in a single page.
  /// The service might return fewer items than this value. If unspecified, the
  /// service picks an appropriate default. The maximum value is 100; values
  /// above 100 are reduced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous call, to
  /// retrieve the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListControlsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListControlsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/controls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListControlsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An audit report.
class AuditReport {
  /// Compliance framework to use for the audit report.
  ///
  /// For example, `CIS_GCP_FOUNDATIONS_V1_2_0`.
  ///
  /// Output only.
  core.String? complianceFramework;

  /// Compliance standard to be audited against.
  ///
  /// Use the `compliance_framework` field instead.
  ///
  /// Output only. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? complianceStandard;

  /// Overall status of the controls.
  ///
  /// Output only.
  core.List<ControlDetails>? controlDetails;

  /// Creation time of the audit report.
  ///
  /// Output only.
  core.String? createTime;

  /// Cloud Storage bucket where the audit report is uploaded to.
  ///
  /// Output only.
  DestinationDetails? destinationDetails;

  /// Identifier.
  ///
  /// Name of the audit report, in one of the following formats: *
  /// `projects/{project}/locations/{location}/auditReports/{audit_report}` *
  /// `folders/{folder}/locations/{location}/auditReports/{audit_report}` *
  /// `organizations/{organization}/locations/{location}/auditReports/{audit_report}`
  core.String? name;

  /// Client operation ID for the audit report.
  ///
  /// Output only.
  core.String? operationId;

  /// State of audit report generation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPORT_GENERATION_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "IN_PROGRESS" : The process is in progress. The operation can have any
  /// state except for `OPERATION_STATE_DONE` or `OPERATION_STATE_FAILED`.
  /// - "COMPLETED" : The process is completed. The operation state is
  /// `OPERATION_STATE_DONE`.
  /// - "FAILED" : The process has failed. The operation state is
  /// `OPERATION_STATE_FAILED`.
  /// - "SUMMARY_UNKNOWN" : The process completed, but the report summary's
  /// status is unknown. This state isn't used for new reports.
  core.String? reportGenerationState;

  /// Report summary that includes information about compliance and violation
  /// counts.
  ///
  /// Output only.
  ReportSummary? reportSummary;

  /// Organization, folder, or project that the report is generated for, in one
  /// of the following formats: * `projects/{project}/locations/{location}` *
  /// `folders/{folder}/locations/{location}` *
  /// `organizations/{organization}/locations/{location}`
  ///
  /// Output only.
  core.String? scope;

  /// Project number, folder ID, or organization ID that the audit report was
  /// generated for.
  ///
  /// Output only.
  core.String? scopeId;

  AuditReport({
    this.complianceFramework,
    this.complianceStandard,
    this.controlDetails,
    this.createTime,
    this.destinationDetails,
    this.name,
    this.operationId,
    this.reportGenerationState,
    this.reportSummary,
    this.scope,
    this.scopeId,
  });

  AuditReport.fromJson(core.Map json_)
    : this(
        complianceFramework: json_['complianceFramework'] as core.String?,
        complianceStandard: json_['complianceStandard'] as core.String?,
        controlDetails: (json_['controlDetails'] as core.List?)
            ?.map(
              (value) => ControlDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        createTime: json_['createTime'] as core.String?,
        destinationDetails: json_.containsKey('destinationDetails')
            ? DestinationDetails.fromJson(
                json_['destinationDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        operationId: json_['operationId'] as core.String?,
        reportGenerationState: json_['reportGenerationState'] as core.String?,
        reportSummary: json_.containsKey('reportSummary')
            ? ReportSummary.fromJson(
                json_['reportSummary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        scope: json_['scope'] as core.String?,
        scopeId: json_['scopeId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final complianceFramework = this.complianceFramework;
    final complianceStandard = this.complianceStandard;
    final controlDetails = this.controlDetails;
    final createTime = this.createTime;
    final destinationDetails = this.destinationDetails;
    final name = this.name;
    final operationId = this.operationId;
    final reportGenerationState = this.reportGenerationState;
    final reportSummary = this.reportSummary;
    final scope = this.scope;
    final scopeId = this.scopeId;
    return {
      'complianceFramework': ?complianceFramework,
      'complianceStandard': ?complianceStandard,
      'controlDetails': ?controlDetails,
      'createTime': ?createTime,
      'destinationDetails': ?destinationDetails,
      'name': ?name,
      'operationId': ?operationId,
      'reportGenerationState': ?reportGenerationState,
      'reportSummary': ?reportSummary,
      'scope': ?scope,
      'scopeId': ?scopeId,
    };
  }
}

/// Audit scope report.
class AuditScopeReport {
  /// Identifier.
  ///
  /// Name for the audit scope report, in one of the following formats: *
  /// `projects/{project}/locations/{location}/auditScopeReports/{audit_scope_report}`
  /// *
  /// `folders/{folder}/locations/{location}/auditScopeReports/{audit_scope_report}`
  /// *
  /// `organizations/{organization}/locations/{location}/auditScopeReports/{audit_scope_report}`
  core.String? name;

  /// Audit scope report content in byte format.
  core.String? scopeReportContents;
  core.List<core.int> get scopeReportContentsAsBytes =>
      convert.base64.decode(scopeReportContents!);

  set scopeReportContentsAsBytes(core.List<core.int> bytes_) {
    scopeReportContents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  AuditScopeReport({this.name, this.scopeReportContents});

  AuditScopeReport.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        scopeReportContents: json_['scopeReportContents'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final scopeReportContents = this.scopeReportContents;
    return {'name': ?name, 'scopeReportContents': ?scopeReportContents};
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A control.
class Control {
  /// Regulatory family of the control.
  ///
  /// Output only.
  ControlFamily? controlFamily;

  /// A description of your responsibility for this control.
  ///
  /// Output only.
  core.String? customerResponsibilityDescription;

  /// A description of how you can implement your responsibility for this
  /// control.
  ///
  /// Output only.
  core.String? customerResponsibilityImplementation;

  /// Description of the control.
  ///
  /// Output only.
  core.String? description;

  /// Display name of the control.
  ///
  /// Output only.
  core.String? displayName;

  /// Category that the control belongs to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAMILY_UNSPECIFIED" : Default value. This value is unused.
  /// - "AC" : Access control.
  /// - "AT" : Awareness and training.
  /// - "AU" : Audit and accountability.
  /// - "CA" : Certification, accreditation and security assessments.
  /// - "CM" : Configuration management and change control.
  /// - "CP" : Contingency planning and disaster recovery.
  /// - "IA" : Identification and authentication.
  /// - "IR" : Incident response.
  /// - "MA" : Maintenance.
  /// - "MP" : Media protection.
  /// - "PE" : Physical and environmental protection.
  /// - "PL" : Security planning.
  /// - "PS" : Personnel security.
  /// - "RA" : Risk assessment.
  /// - "SA" : System services and acquisition.
  /// - "SC" : System and communications protection.
  /// - "SI" : System and information integrity.
  /// - "SR" : Supply chain risk management.
  core.String? family;

  /// A description of Google's responsibility for this control.
  ///
  /// Output only.
  core.String? googleResponsibilityDescription;

  /// A description of how Google implements its responsibility for this
  /// control.
  ///
  /// Output only.
  core.String? googleResponsibilityImplementation;

  /// Control identifier that's used to fetch the findings.
  ///
  /// The identifier is the same as the control report name.
  ///
  /// Output only.
  core.String? id;

  /// Who is responsible for implementing this control.
  ///
  /// Set to one of the following values: `GOOGLE`, `CUSTOMER`, or `SHARED`.
  ///
  /// Output only.
  core.String? responsibilityType;

  Control({
    this.controlFamily,
    this.customerResponsibilityDescription,
    this.customerResponsibilityImplementation,
    this.description,
    this.displayName,
    this.family,
    this.googleResponsibilityDescription,
    this.googleResponsibilityImplementation,
    this.id,
    this.responsibilityType,
  });

  Control.fromJson(core.Map json_)
    : this(
        controlFamily: json_.containsKey('controlFamily')
            ? ControlFamily.fromJson(
                json_['controlFamily'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        customerResponsibilityDescription:
            json_['customerResponsibilityDescription'] as core.String?,
        customerResponsibilityImplementation:
            json_['customerResponsibilityImplementation'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        family: json_['family'] as core.String?,
        googleResponsibilityDescription:
            json_['googleResponsibilityDescription'] as core.String?,
        googleResponsibilityImplementation:
            json_['googleResponsibilityImplementation'] as core.String?,
        id: json_['id'] as core.String?,
        responsibilityType: json_['responsibilityType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final controlFamily = this.controlFamily;
    final customerResponsibilityDescription =
        this.customerResponsibilityDescription;
    final customerResponsibilityImplementation =
        this.customerResponsibilityImplementation;
    final description = this.description;
    final displayName = this.displayName;
    final family = this.family;
    final googleResponsibilityDescription =
        this.googleResponsibilityDescription;
    final googleResponsibilityImplementation =
        this.googleResponsibilityImplementation;
    final id = this.id;
    final responsibilityType = this.responsibilityType;
    return {
      'controlFamily': ?controlFamily,
      'customerResponsibilityDescription': ?customerResponsibilityDescription,
      'customerResponsibilityImplementation':
          ?customerResponsibilityImplementation,
      'description': ?description,
      'displayName': ?displayName,
      'family': ?family,
      'googleResponsibilityDescription': ?googleResponsibilityDescription,
      'googleResponsibilityImplementation': ?googleResponsibilityImplementation,
      'id': ?id,
      'responsibilityType': ?responsibilityType,
    };
  }
}

/// Evaluation details for a control.
class ControlDetails {
  /// Overall status of the findings for the control.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPLIANCE_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "COMPLIANT" : The resource is compliant.
  /// - "VIOLATION" : The resource isn't compliant.
  /// - "MANUAL_REVIEW_NEEDED" : You must complete a manual review.
  /// - "ERROR" : An error was encountered during the evaluation or evidence
  /// gathering process.
  /// - "AUDIT_NOT_SUPPORTED" : The resource can't be audited.
  core.String? complianceState;

  /// Control that the findings are being reported for.
  Control? control;

  /// A control report summary that provides a high-level overview of the
  /// compliance controls and the assessment status.
  ReportSummary? controlReportSummary;

  ControlDetails({
    this.complianceState,
    this.control,
    this.controlReportSummary,
  });

  ControlDetails.fromJson(core.Map json_)
    : this(
        complianceState: json_['complianceState'] as core.String?,
        control: json_.containsKey('control')
            ? Control.fromJson(
                json_['control'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        controlReportSummary: json_.containsKey('controlReportSummary')
            ? ReportSummary.fromJson(
                json_['controlReportSummary']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final complianceState = this.complianceState;
    final control = this.control;
    final controlReportSummary = this.controlReportSummary;
    return {
      'complianceState': ?complianceState,
      'control': ?control,
      'controlReportSummary': ?controlReportSummary,
    };
  }
}

/// Regulatory family of the control.
class ControlFamily {
  /// Display name of the regulatory control family.
  core.String? displayName;

  /// ID of the regulatory control family.
  ///
  /// To find the list of supported control families, use the ListControls
  /// method and review the `control_family` field in the response.
  core.String? familyId;

  ControlFamily({this.displayName, this.familyId});

  ControlFamily.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        familyId: json_['familyId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final familyId = this.familyId;
    return {'displayName': ?displayName, 'familyId': ?familyId};
  }
}

/// Cloud Storage bucket where the audit report is uploaded to.
class DestinationDetails {
  /// URI for the Cloud Storage bucket, in the format `gs://{bucket_name}`.
  core.String? gcsBucketUri;

  DestinationDetails({this.gcsBucketUri});

  DestinationDetails.fromJson(core.Map json_)
    : this(gcsBucketUri: json_['gcsBucketUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final gcsBucketUri = this.gcsBucketUri;
    return {'gcsBucketUri': ?gcsBucketUri};
  }
}

/// Details about the bucket where you want to upload the audit report.
class EligibleDestination {
  /// The location of the Cloud Storage bucket where you want to upload the
  /// audit report and evidence during the GenerateAuditReport API call.
  core.String? eligibleGcsBucket;

  EligibleDestination({this.eligibleGcsBucket});

  EligibleDestination.fromJson(core.Map json_)
    : this(eligibleGcsBucket: json_['eligibleGcsBucket'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final eligibleGcsBucket = this.eligibleGcsBucket;
    return {'eligibleGcsBucket': ?eligibleGcsBucket};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for EnrollResource.
class EnrollResourceRequest {
  /// Cloud Storage buckets that you can upload your audit reports to during the
  /// audit process.
  ///
  /// When you enroll an organization or folder, you can choose a Cloud Storage
  /// bucket from any project in the organization or folder. If you run an audit
  /// at the project level using the service agent at the organization or folder
  /// level, all the buckets that are associated with the service agent are
  /// available.
  ///
  /// Required.
  core.List<EligibleDestination>? destinations;

  /// If `true`, only validates the request and does not enroll the resource.
  ///
  /// This executes standard request validation (such as schema, IAM, and
  /// destination checks) and skips the apply phase. Use this field for the
  /// following purposes: * **Infrastructure as Code (IaC)**: Allow tools like
  /// Terraform to run dry-run mutations (e.g., `terraform plan`) without
  /// creating real resources or incurring costs. * **User Interface
  /// Validation**: Enable real-time form and permission validation in custom
  /// UIs before submitting requests. * **CI/CD & Automation**: Test your
  /// scripts, permissions, and parameters safely without consuming resource
  /// quotas.
  ///
  /// Optional.
  core.bool? validateOnly;

  EnrollResourceRequest({this.destinations, this.validateOnly});

  EnrollResourceRequest.fromJson(core.Map json_)
    : this(
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => EligibleDestination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinations = this.destinations;
    final validateOnly = this.validateOnly;
    return {'destinations': ?destinations, 'validateOnly': ?validateOnly};
  }
}

/// Organization, folder, or project to enroll for audit reports.
class Enrollment {
  /// Cloud Storage buckets where you want to upload the audit reports.
  ///
  /// Output only.
  core.List<DestinationDetails>? destinationDetails;

  /// Identifier.
  ///
  /// Name of the enrollment, in one of the following formats: *
  /// `projects/{project}/locations/{location}/enrollments/{enrollment}` *
  /// `folders/{folder}/locations/{location}/enrollments/{enrollment}` *
  /// `organizations/{organization}/locations/{location}/enrollments/{enrollment}`
  core.String? name;

  Enrollment({this.destinationDetails, this.name});

  Enrollment.fromJson(core.Map json_)
    : this(
        destinationDetails: (json_['destinationDetails'] as core.List?)
            ?.map(
              (value) => DestinationDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationDetails = this.destinationDetails;
    final name = this.name;
    return {'destinationDetails': ?destinationDetails, 'name': ?name};
  }
}

/// Request message for GenerateAuditReport.
class GenerateAuditReportRequest {
  /// The framework that's used for the audit report.
  ///
  /// For example, `NIST_800_53`.
  ///
  /// Required.
  core.String? complianceFramework;

  /// Compliance standard for the audit report.
  ///
  /// Use the `compliance_framework` field instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? complianceStandard;

  /// URL for the Cloud Storage bucket where the report and evidence is
  /// uploaded.
  ///
  /// You must select a bucket that was provided during the enrollment process.
  core.String? gcsUri;

  /// Format for the audit report.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIT_REPORT_FORMAT_UNSPECIFIED" : Default value. This value is unused.
  /// - "AUDIT_REPORT_FORMAT_ODF" : Open Document format.
  core.String? reportFormat;

  /// If `true`, only validates the request and does not generate the audit
  /// report.
  ///
  /// This executes standard request validation (such as schema, framework
  /// existence, scope, and IAM checks) and skips the apply phase. Use this
  /// field for the following purposes: * **Infrastructure as Code (IaC)**:
  /// Allow tools like Terraform to run dry-run mutations (e.g., `terraform
  /// plan`) without creating real resources or incurring costs. * **User
  /// Interface Validation**: Enable real-time form and permission validation in
  /// custom UIs before submitting requests. * **CI/CD & Automation**: Test your
  /// scripts, permissions, and parameters safely without triggering expensive
  /// Long-Running Operations (LROs) or consuming resource quotas.
  ///
  /// Optional.
  core.bool? validateOnly;

  GenerateAuditReportRequest({
    this.complianceFramework,
    this.complianceStandard,
    this.gcsUri,
    this.reportFormat,
    this.validateOnly,
  });

  GenerateAuditReportRequest.fromJson(core.Map json_)
    : this(
        complianceFramework: json_['complianceFramework'] as core.String?,
        complianceStandard: json_['complianceStandard'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
        reportFormat: json_['reportFormat'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final complianceFramework = this.complianceFramework;
    final complianceStandard = this.complianceStandard;
    final gcsUri = this.gcsUri;
    final reportFormat = this.reportFormat;
    final validateOnly = this.validateOnly;
    return {
      'complianceFramework': ?complianceFramework,
      'complianceStandard': ?complianceStandard,
      'gcsUri': ?gcsUri,
      'reportFormat': ?reportFormat,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Request message for GenerateAuditScopeReport.
class GenerateAuditScopeReportRequest {
  /// Framework (set of controls) that the audit scope report is generated
  /// against.
  ///
  /// For example, `NIST_800_53`.
  ///
  /// Required.
  core.String? complianceFramework;

  /// The standard (industry or regulatory requirements) that the audit scope
  /// report is run against.
  ///
  /// Use the `compliance_framework` field instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? complianceStandard;

  /// Format for the audit scope report.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIT_SCOPE_REPORT_FORMAT_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "AUDIT_SCOPE_REPORT_FORMAT_ODF" : Open Document format.
  core.String? reportFormat;

  /// If `true`, only validates the request and does not generate the audit
  /// scope report.
  ///
  /// This executes standard request validation (such as schema, framework
  /// existence, scope, and IAM checks) and skips the apply phase. Use this
  /// field for the following purposes: * **Infrastructure as Code (IaC)**:
  /// Allow tools like Terraform to run dry-run mutations (e.g., `terraform
  /// plan`) without creating real resources or incurring costs. * **User
  /// Interface Validation**: Enable real-time form and permission validation in
  /// custom UIs before submitting requests. * **CI/CD & Automation**: Test your
  /// scripts, permissions, and parameters safely without consuming resource
  /// quotas.
  ///
  /// Optional.
  core.bool? validateOnly;

  GenerateAuditScopeReportRequest({
    this.complianceFramework,
    this.complianceStandard,
    this.reportFormat,
    this.validateOnly,
  });

  GenerateAuditScopeReportRequest.fromJson(core.Map json_)
    : this(
        complianceFramework: json_['complianceFramework'] as core.String?,
        complianceStandard: json_['complianceStandard'] as core.String?,
        reportFormat: json_['reportFormat'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final complianceFramework = this.complianceFramework;
    final complianceStandard = this.complianceStandard;
    final reportFormat = this.reportFormat;
    final validateOnly = this.validateOnly;
    return {
      'complianceFramework': ?complianceFramework,
      'complianceStandard': ?complianceStandard,
      'reportFormat': ?reportFormat,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Response message for ListAuditReports.
class ListAuditReportsResponse {
  /// Audit reports.
  ///
  /// Output only.
  core.List<AuditReport>? auditReports;

  /// A token that you can send as the `page_token` in a subsequent request to
  /// retrieve the next page of results.
  ///
  /// If this field is empty, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListAuditReportsResponse({this.auditReports, this.nextPageToken});

  ListAuditReportsResponse.fromJson(core.Map json_)
    : this(
        auditReports: (json_['auditReports'] as core.List?)
            ?.map(
              (value) => AuditReport.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditReports = this.auditReports;
    final nextPageToken = this.nextPageToken;
    return {'auditReports': ?auditReports, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListControls.
class ListControlsResponse {
  /// Controls for a given regulatory standard.
  ///
  /// Output only.
  core.List<Control>? controls;

  /// A token that you can send as the `page_token` in a subsequent request to
  /// retrieve the next page of results.
  ///
  /// If this field is empty, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListControlsResponse({this.controls, this.nextPageToken});

  ListControlsResponse.fromJson(core.Map json_)
    : this(
        controls: (json_['controls'] as core.List?)
            ?.map(
              (value) => Control.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final controls = this.controls;
    final nextPageToken = this.nextPageToken;
    return {'controls': ?controls, 'nextPageToken': ?nextPageToken};
  }
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
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Response message for ListResourceEnrollmentStatuses.
class ListResourceEnrollmentStatusesResponse {
  /// A token that you can send as the `page_token` in a subsequent request to
  /// retrieve the next page of results.
  ///
  /// If this field is empty, there are no subsequent pages.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Resources with their enrollment status.
  core.List<ResourceEnrollmentStatus>? resourceEnrollmentStatuses;

  ListResourceEnrollmentStatusesResponse({
    this.nextPageToken,
    this.resourceEnrollmentStatuses,
  });

  ListResourceEnrollmentStatusesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resourceEnrollmentStatuses:
            (json_['resourceEnrollmentStatuses'] as core.List?)
                ?.map(
                  (value) => ResourceEnrollmentStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final resourceEnrollmentStatuses = this.resourceEnrollmentStatuses;
    return {
      'nextPageToken': ?nextPageToken,
      'resourceEnrollmentStatuses': ?resourceEnrollmentStatuses,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Additional information about the number of checks that were made during an
/// audit operation.
class ReportSummary {
  /// Number of compliant checks.
  core.int? compliantCount;

  /// Number of checks that can't be performed due to errors.
  core.int? errorCount;

  /// Number of checks that require a manual review.
  core.int? manualReviewNeededCount;

  /// Total number of evaluated checks.
  core.int? totalCount;

  /// Number of checks with violations.
  core.int? violationCount;

  ReportSummary({
    this.compliantCount,
    this.errorCount,
    this.manualReviewNeededCount,
    this.totalCount,
    this.violationCount,
  });

  ReportSummary.fromJson(core.Map json_)
    : this(
        compliantCount: json_['compliantCount'] as core.int?,
        errorCount: json_['errorCount'] as core.int?,
        manualReviewNeededCount: json_['manualReviewNeededCount'] as core.int?,
        totalCount: json_['totalCount'] as core.int?,
        violationCount: json_['violationCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compliantCount = this.compliantCount;
    final errorCount = this.errorCount;
    final manualReviewNeededCount = this.manualReviewNeededCount;
    final totalCount = this.totalCount;
    final violationCount = this.violationCount;
    return {
      'compliantCount': ?compliantCount,
      'errorCount': ?errorCount,
      'manualReviewNeededCount': ?manualReviewNeededCount,
      'totalCount': ?totalCount,
      'violationCount': ?violationCount,
    };
  }
}

/// An organization, folder, or project with its enrollment status.
class ResourceEnrollmentStatus {
  /// Display name for the organization, folder, or project.
  ///
  /// Output only.
  core.String? displayName;

  /// Whether the organization, folder, or project is enrolled.
  ///
  /// Use `enrollment_state` instead.
  ///
  /// Output only. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enrolled;

  /// Enrolled destination details for the organization, folder, or project.
  ///
  /// Output only.
  Enrollment? enrollment;

  /// Enrollment state of the organization, folder, or project.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESOURCE_ENROLLMENT_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "NOT_ENROLLED" : The resource isn't enrolled.
  /// - "INHERITED" : The resource isn't enrolled but the parent is enrolled.
  /// - "ENROLLED" : The resource is enrolled.
  core.String? enrollmentState;

  /// Identifier.
  ///
  /// Name of the resource enrollment status, in one of the following formats: *
  /// `folders/{folder}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `projects/{project}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  /// *
  /// `organizations/{organization}/locations/{location}/resourceEnrollmentStatuses/{resource_enrollment_status}`
  core.String? name;

  ResourceEnrollmentStatus({
    this.displayName,
    this.enrolled,
    this.enrollment,
    this.enrollmentState,
    this.name,
  });

  ResourceEnrollmentStatus.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        enrolled: json_['enrolled'] as core.bool?,
        enrollment: json_.containsKey('enrollment')
            ? Enrollment.fromJson(
                json_['enrollment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        enrollmentState: json_['enrollmentState'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final enrolled = this.enrolled;
    final enrollment = this.enrollment;
    final enrollmentState = this.enrollmentState;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'enrolled': ?enrolled,
      'enrollment': ?enrollment,
      'enrollmentState': ?enrollmentState,
      'name': ?name,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
