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

/// Cloud Talent Solution API - v3
///
/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
///
/// For more information, see
/// <https://cloud.google.com/talent-solution/job-search/docs/>
///
/// Create an instance of [CloudTalentSolutionApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsClientEventsResource]
///   - [ProjectsCompaniesResource]
///   - [ProjectsJobsResource]
library jobs.v3;

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

/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
class CloudTalentSolutionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage job postings
  static const jobsScope = 'https://www.googleapis.com/auth/jobs';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudTalentSolutionApi(http.Client client,
      {core.String rootUrl = 'https://jobs.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsClientEventsResource get clientEvents =>
      ProjectsClientEventsResource(_requester);
  ProjectsCompaniesResource get companies =>
      ProjectsCompaniesResource(_requester);
  ProjectsJobsResource get jobs => ProjectsJobsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Completes the specified prefix with keyword suggestions.
  ///
  /// Intended for use by a job search auto-complete search box.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of project the completion is performed
  /// within. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [companyName] - Optional. If provided, restricts completion to specified
  /// company. The format is "projects/{project_id}/companies/{company_id}", for
  /// example, "projects/api-test-project/companies/foo".
  ///
  /// [languageCode] - Deprecated. Use language_codes instead. Optional. The
  /// language of the query. This is the BCP-47 language code, such as "en-US"
  /// or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). For
  /// CompletionType.JOB_TITLE type, only open jobs with the same language_code
  /// are returned. For CompletionType.COMPANY_NAME type, only companies having
  /// open jobs with the same language_code are returned. For
  /// CompletionType.COMBINED type, only open jobs with the same language_code
  /// or companies having open jobs with the same language_code are returned.
  /// The maximum number of allowed characters is 255.
  ///
  /// [languageCodes] - Optional. The list of languages of the query. This is
  /// the BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). For
  /// CompletionType.JOB_TITLE type, only open jobs with the same language_codes
  /// are returned. For CompletionType.COMPANY_NAME type, only companies having
  /// open jobs with the same language_codes are returned. For
  /// CompletionType.COMBINED type, only open jobs with the same language_codes
  /// or companies having open jobs with the same language_codes are returned.
  /// The maximum number of allowed characters is 255.
  ///
  /// [pageSize] - Required. Completion result count. The maximum allowed page
  /// size is 10.
  ///
  /// [query] - Required. The query used to generate suggestions. The maximum
  /// number of allowed characters is 255.
  ///
  /// [scope] - Optional. The scope of the completion. The defaults is
  /// CompletionScope.PUBLIC.
  /// Possible string values are:
  /// - "COMPLETION_SCOPE_UNSPECIFIED" : Default value.
  /// - "TENANT" : Suggestions are based only on the data provided by the
  /// client.
  /// - "PUBLIC" : Suggestions are based on all jobs data in the system that's
  /// visible to the client
  ///
  /// [type] - Optional. The completion topic. The default is
  /// CompletionType.COMBINED.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : Default value.
  /// - "JOB_TITLE" : Only suggest job titles.
  /// - "COMPANY_NAME" : Only suggest company names.
  /// - "COMBINED" : Suggest both job titles and company names.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompleteQueryResponse> complete(
    core.String name, {
    core.String? companyName,
    core.String? languageCode,
    core.List<core.String>? languageCodes,
    core.int? pageSize,
    core.String? query,
    core.String? scope,
    core.String? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (companyName != null) 'companyName': [companyName],
      if (languageCode != null) 'languageCode': [languageCode],
      if (languageCodes != null) 'languageCodes': languageCodes,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (scope != null) 'scope': [scope],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$name') + ':complete';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CompleteQueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsClientEventsResource {
  final commons.ApiRequester _requester;

  ProjectsClientEventsResource(commons.ApiRequester client)
      : _requester = client;

  /// Report events issued when end user interacts with customer's application
  /// that uses Cloud Talent Solution.
  ///
  /// You may inspect the created events in
  /// [self service tools](https://console.cloud.google.com/talent-solution/overview).
  /// [Learn more](https://cloud.google.com/talent-solution/docs/management-tools)
  /// about self service tools.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent project name.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientEvent> create(
    CreateClientEventRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/clientEvents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ClientEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsCompaniesResource {
  final commons.ApiRequester _requester;

  ProjectsCompaniesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new company entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project under which the company
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> create(
    CreateCompanyRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/companies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Company.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes specified company.
  ///
  /// Prerequisite: The company has no jobs associated with it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the company to be deleted. The
  /// format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern `^projects/\[^/\]+/companies/\[^/\]+$`.
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

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves specified company.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the company to be retrieved. The
  /// format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern `^projects/\[^/\]+/companies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Company.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all companies associated with the service account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project under which the company
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of companies to be returned, at
  /// most 100. Default is 100 if a non-positive number is provided.
  ///
  /// [pageToken] - Optional. The starting indicator from which to return
  /// results.
  ///
  /// [requireOpenJobs] - Optional. Set to true if the companies requested must
  /// have open jobs. Defaults to false. If true, at most page_size of companies
  /// are fetched, among which only those with open jobs are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCompaniesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCompaniesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? requireOpenJobs,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (requireOpenJobs != null) 'requireOpenJobs': ['${requireOpenJobs}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/companies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCompaniesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates specified company.
  ///
  /// Company names can't be updated. To update a company name, delete the
  /// company and all jobs associated with it, and only then re-create them.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during company update. The resource name for a company.
  /// This is generated by the service when a company is created. The format is
  /// "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern `^projects/\[^/\]+/companies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> patch(
    UpdateCompanyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Company.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a list of Jobs by filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project under which the job
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
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
  async.Future<Empty> batchDelete(
    BatchDeleteJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/jobs:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job.
  ///
  /// Typically, the job becomes searchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project under which the job
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    CreateJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/jobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified job.
  ///
  /// Typically, the job becomes unsearchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job to be deleted. The format
  /// is "projects/{project_id}/jobs/{job_id}", for example,
  /// "projects/api-test-project/jobs/1234".
  /// Value must have pattern `^projects/\[^/\]+/jobs/\[^/\]+$`.
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

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified job, whose status is OPEN or recently EXPIRED
  /// within the last 90 days.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job to retrieve. The format is
  /// "projects/{project_id}/jobs/{job_id}", for example,
  /// "projects/api-test-project/jobs/1234".
  /// Value must have pattern `^projects/\[^/\]+/jobs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs by filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project under which the job
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Required. The filter string specifies the jobs to be
  /// enumerated. Supported operator: =, AND The fields eligible for filtering
  /// are: * `companyName` * `requisitionId` * `status` Available values: OPEN,
  /// EXPIRED, ALL. Defaults to OPEN if no value is specified. At least one of
  /// `companyName` and `requisitionId` must present or an INVALID_ARGUMENT
  /// error is thrown. Sample Query: * companyName =
  /// "projects/api-test-project/companies/123" * companyName =
  /// "projects/api-test-project/companies/123" AND requisitionId = "req-1" *
  /// companyName = "projects/api-test-project/companies/123" AND status =
  /// "EXPIRED" * requisitionId = "req-1" * requisitionId = "req-1" AND status =
  /// "EXPIRED"
  ///
  /// [jobView] - Optional. The desired job attributes returned for jobs in the
  /// search response. Defaults to JobView.JOB_VIEW_FULL if no value is
  /// specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "JOB_VIEW_ID_ONLY" : A ID only view of job, with following attributes:
  /// Job.name, Job.requisition_id, Job.language_code.
  /// - "JOB_VIEW_MINIMAL" : A minimal view of the job, with the following
  /// attributes: Job.name, Job.requisition_id, Job.title, Job.company_name,
  /// Job.DerivedInfo.locations, Job.language_code.
  /// - "JOB_VIEW_SMALL" : A small view of the job, with the following
  /// attributes in the search results: Job.name, Job.requisition_id, Job.title,
  /// Job.company_name, Job.DerivedInfo.locations, Job.visibility,
  /// Job.language_code, Job.description.
  /// - "JOB_VIEW_FULL" : All available attributes are included in the search
  /// results.
  ///
  /// [pageSize] - Optional. The maximum number of jobs to be returned per page
  /// of results. If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum
  /// allowed page size is 1000. Otherwise, the maximum allowed page size is
  /// 100. Default is 100 if empty or a number \< 1 is specified.
  ///
  /// [pageToken] - Optional. The starting point of a query result.
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
    core.String? filter,
    core.String? jobView,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (jobView != null) 'jobView': [jobView],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates specified job.
  ///
  /// Typically, updated contents become visible in search results within 10
  /// seconds, but it may take up to 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during job update. The resource name for the job. This
  /// is generated by the service when a job is created. The format is
  /// "projects/{project_id}/jobs/{job_id}", for example,
  /// "projects/api-test-project/jobs/1234". Use of this field in job queries
  /// and API calls is preferred over the use of requisition_id since this value
  /// is unique.
  /// Value must have pattern `^projects/\[^/\]+/jobs/\[^/\]+$`.
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
  async.Future<Job> patch(
    UpdateJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This call constrains the visibility of jobs present in the database, and
  /// only returns jobs that the caller has permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project to search within.
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchJobsResponse> search(
    SearchJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v3/' + core.Uri.encodeFull('$parent') + '/jobs:search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This API call is intended for the use case of targeting passive job
  /// seekers (for example, job seekers who have signed up to receive email
  /// alerts about potential job opportunities), and has different algorithmic
  /// adjustments that are targeted to passive job seekers. This call constrains
  /// the visibility of jobs present in the database, and only returns jobs the
  /// caller has permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project to search within.
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchJobsResponse> searchForAlert(
    SearchJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v3/' + core.Uri.encodeFull('$parent') + '/jobs:searchForAlert';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Application related details of a job posting.
class ApplicationInfo {
  /// Optional but at least one of uris, emails or instruction must be
  /// specified.
  ///
  /// Use this field to specify email address(es) to which resumes or
  /// applications can be sent. The maximum number of allowed characters for
  /// each entry is 255.
  core.List<core.String>? emails;

  /// Optional but at least one of uris, emails or instruction must be
  /// specified.
  ///
  /// Use this field to provide instructions, such as "Mail your application to
  /// ...", that a candidate can follow to apply for the job. This field accepts
  /// and sanitizes HTML input, and also accepts bold, italic, ordered list, and
  /// unordered list markup tags. The maximum number of allowed characters is
  /// 3,000.
  core.String? instruction;

  /// Optional but at least one of uris, emails or instruction must be
  /// specified.
  ///
  /// Use this URI field to direct an applicant to a website, for example to
  /// link to an online application form. The maximum number of allowed
  /// characters for each entry is 2,000.
  core.List<core.String>? uris;

  ApplicationInfo({
    this.emails,
    this.instruction,
    this.uris,
  });

  ApplicationInfo.fromJson(core.Map _json)
      : this(
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          uris: _json.containsKey('uris')
              ? (_json['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
        if (instruction != null) 'instruction': instruction!,
        if (uris != null) 'uris': uris!,
      };
}

/// Input only.
///
/// Batch delete jobs request.
class BatchDeleteJobsRequest {
  /// The filter string specifies the jobs to be deleted.
  ///
  /// Supported operator: =, AND The fields eligible for filtering are: *
  /// `companyName` (Required) * `requisitionId` (Required) Sample Query:
  /// companyName = "projects/api-test-project/companies/123" AND requisitionId
  /// = "req-1"
  ///
  /// Required.
  core.String? filter;

  BatchDeleteJobsRequest({
    this.filter,
  });

  BatchDeleteJobsRequest.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Represents starting and ending value of a range in double.
class BucketRange {
  /// Starting value of the bucket range.
  core.double? from;

  /// Ending value of the bucket range.
  core.double? to;

  BucketRange({
    this.from,
    this.to,
  });

  BucketRange.fromJson(core.Map _json)
      : this(
          from: _json.containsKey('from')
              ? (_json['from'] as core.num).toDouble()
              : null,
          to: _json.containsKey('to')
              ? (_json['to'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (from != null) 'from': from!,
        if (to != null) 'to': to!,
      };
}

/// Represents count of jobs within one bucket.
class BucketizedCount {
  /// Number of jobs whose numeric field value fall into `range`.
  core.int? count;

  /// Bucket range on which histogram was performed for the numeric field, that
  /// is, the count represents number of jobs in this range.
  BucketRange? range;

  BucketizedCount({
    this.count,
    this.range,
  });

  BucketizedCount.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          range: _json.containsKey('range')
              ? BucketRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (range != null) 'range': range!,
      };
}

/// An event issued when an end user interacts with the application that
/// implements Cloud Talent Solution.
///
/// Providing this information improves the quality of search and recommendation
/// for the API clients, enabling the service to perform optimally. The number
/// of events sent must be consistent with other calls, such as job searches,
/// issued to the service by the client.
class ClientEvent {
  /// The timestamp of the event.
  ///
  /// Required.
  core.String? createTime;

  /// A unique identifier, generated by the client application.
  ///
  /// This `event_id` is used to establish the relationship between different
  /// events (see parent_event_id).
  ///
  /// Required.
  core.String? eventId;

  /// Extra information about this event.
  ///
  /// Used for storing information with no matching field in event payload, for
  /// example, user application specific context or details. At most 20 keys are
  /// supported. The maximum total size of all keys and values is 2 KB.
  ///
  /// Optional.
  core.Map<core.String, core.String>? extraInfo;

  /// A event issued when a job seeker interacts with the application that
  /// implements Cloud Talent Solution.
  JobEvent? jobEvent;

  /// The event_id of an event that resulted in the current event.
  ///
  /// For example, a Job view event usually follows a parent impression event: A
  /// job seeker first does a search where a list of jobs appears (impression).
  /// The job seeker then selects a result and views the description of a
  /// particular job (Job view).
  ///
  /// Optional.
  core.String? parentEventId;

  /// A unique ID generated in the API responses.
  ///
  /// It can be found in ResponseMetadata.request_id.
  ///
  /// Required.
  core.String? requestId;

  ClientEvent({
    this.createTime,
    this.eventId,
    this.extraInfo,
    this.jobEvent,
    this.parentEventId,
    this.requestId,
  });

  ClientEvent.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          eventId: _json.containsKey('eventId')
              ? _json['eventId'] as core.String
              : null,
          extraInfo: _json.containsKey('extraInfo')
              ? (_json['extraInfo'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          jobEvent: _json.containsKey('jobEvent')
              ? JobEvent.fromJson(
                  _json['jobEvent'] as core.Map<core.String, core.dynamic>)
              : null,
          parentEventId: _json.containsKey('parentEventId')
              ? _json['parentEventId'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (eventId != null) 'eventId': eventId!,
        if (extraInfo != null) 'extraInfo': extraInfo!,
        if (jobEvent != null) 'jobEvent': jobEvent!,
        if (parentEventId != null) 'parentEventId': parentEventId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Input only.
///
/// Parameters needed for commute search.
class CommuteFilter {
  /// If true, jobs without "precise" addresses (street level addresses or GPS
  /// coordinates) might also be returned.
  ///
  /// For city and coarser level addresses, text matching is used. If this field
  /// is set to false or is not specified, only jobs that include precise
  /// addresses are returned by Commute Search. Note: If
  /// `allow_imprecise_addresses` is set to true, Commute Search is not able to
  /// calculate accurate commute times to jobs with city level and coarser
  /// address information. Jobs with imprecise addresses will return a
  /// `travel_duration` time of 0 regardless of distance from the job seeker.
  ///
  /// Optional.
  core.bool? allowImpreciseAddresses;

  /// The method of transportation for which to calculate the commute time.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMMUTE_METHOD_UNSPECIFIED" : Commute method is not specified.
  /// - "DRIVING" : Commute time is calculated based on driving time.
  /// - "TRANSIT" : Commute time is calculated based on public transit including
  /// bus, metro, subway, etc.
  core.String? commuteMethod;

  /// The departure time used to calculate traffic impact, represented as
  /// google.type.TimeOfDay in local time zone.
  ///
  /// Currently traffic model is restricted to hour level resolution.
  ///
  /// Optional.
  TimeOfDay? departureTime;

  /// Specifies the traffic density to use when calculating commute time.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROAD_TRAFFIC_UNSPECIFIED" : Road traffic situation is not specified.
  /// - "TRAFFIC_FREE" : Optimal commute time without considering any traffic
  /// impact.
  /// - "BUSY_HOUR" : Commute time calculation takes in account the peak traffic
  /// impact.
  core.String? roadTraffic;

  /// The latitude and longitude of the location from which to calculate the
  /// commute time.
  ///
  /// Required.
  LatLng? startCoordinates;

  /// The maximum travel time in seconds.
  ///
  /// The maximum allowed value is `3600s` (one hour). Format is `123s`.
  ///
  /// Required.
  core.String? travelDuration;

  CommuteFilter({
    this.allowImpreciseAddresses,
    this.commuteMethod,
    this.departureTime,
    this.roadTraffic,
    this.startCoordinates,
    this.travelDuration,
  });

  CommuteFilter.fromJson(core.Map _json)
      : this(
          allowImpreciseAddresses: _json.containsKey('allowImpreciseAddresses')
              ? _json['allowImpreciseAddresses'] as core.bool
              : null,
          commuteMethod: _json.containsKey('commuteMethod')
              ? _json['commuteMethod'] as core.String
              : null,
          departureTime: _json.containsKey('departureTime')
              ? TimeOfDay.fromJson(
                  _json['departureTime'] as core.Map<core.String, core.dynamic>)
              : null,
          roadTraffic: _json.containsKey('roadTraffic')
              ? _json['roadTraffic'] as core.String
              : null,
          startCoordinates: _json.containsKey('startCoordinates')
              ? LatLng.fromJson(_json['startCoordinates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          travelDuration: _json.containsKey('travelDuration')
              ? _json['travelDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowImpreciseAddresses != null)
          'allowImpreciseAddresses': allowImpreciseAddresses!,
        if (commuteMethod != null) 'commuteMethod': commuteMethod!,
        if (departureTime != null) 'departureTime': departureTime!,
        if (roadTraffic != null) 'roadTraffic': roadTraffic!,
        if (startCoordinates != null) 'startCoordinates': startCoordinates!,
        if (travelDuration != null) 'travelDuration': travelDuration!,
      };
}

/// Commute details related to this job.
///
/// Output only.
class CommuteInfo {
  /// Location used as the destination in the commute calculation.
  Location? jobLocation;

  /// The number of seconds required to travel to the job location from the
  /// query location.
  ///
  /// A duration of 0 seconds indicates that the job is not reachable within the
  /// requested duration, but was returned as part of an expanded query.
  core.String? travelDuration;

  CommuteInfo({
    this.jobLocation,
    this.travelDuration,
  });

  CommuteInfo.fromJson(core.Map _json)
      : this(
          jobLocation: _json.containsKey('jobLocation')
              ? Location.fromJson(
                  _json['jobLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          travelDuration: _json.containsKey('travelDuration')
              ? _json['travelDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobLocation != null) 'jobLocation': jobLocation!,
        if (travelDuration != null) 'travelDuration': travelDuration!,
      };
}

/// A Company resource represents a company in the service.
///
/// A company is the entity that owns job postings, that is, the hiring entity
/// responsible for employing applicants for the job position.
class Company {
  /// The URI to employer's career site or careers page on the employer's web
  /// site, for example, "https://careers.google.com".
  ///
  /// Optional.
  core.String? careerSiteUri;

  /// Derived details about the company.
  ///
  /// Output only.
  CompanyDerivedInfo? derivedInfo;

  /// The display name of the company, for example, "Google LLC".
  ///
  /// Required.
  core.String? displayName;

  /// Equal Employment Opportunity legal disclaimer text to be associated with
  /// all jobs, and typically to be displayed in all roles.
  ///
  /// The maximum number of allowed characters is 500.
  ///
  /// Optional.
  core.String? eeoText;

  /// Client side company identifier, used to uniquely identify the company.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? externalId;

  /// The street address of the company's main headquarters, which may be
  /// different from the job location.
  ///
  /// The service attempts to geolocate the provided address, and populates a
  /// more specific location wherever possible in
  /// DerivedInfo.headquarters_location.
  ///
  /// Optional.
  core.String? headquartersAddress;

  /// Set to true if it is the hiring agency that post jobs for other employers.
  ///
  /// Defaults to false if not provided.
  ///
  /// Optional.
  core.bool? hiringAgency;

  /// A URI that hosts the employer's company logo.
  ///
  /// Optional.
  core.String? imageUri;

  /// A list of keys of filterable Job.custom_attributes, whose corresponding
  /// `string_values` are used in keyword search.
  ///
  /// Jobs with `string_values` under these specified field keys are returned if
  /// any of the values matches the search keyword. Custom field values with
  /// parenthesis, brackets and special symbols won't be properly searchable,
  /// and those keyword queries need to be surrounded by quotes.
  ///
  /// Optional.
  core.List<core.String>? keywordSearchableJobCustomAttributes;

  /// Required during company update.
  ///
  /// The resource name for a company. This is generated by the service when a
  /// company is created. The format is
  /// "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  core.String? name;

  /// The employer's company size.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPANY_SIZE_UNSPECIFIED" : Default value if the size is not specified.
  /// - "MINI" : The company has less than 50 employees.
  /// - "SMALL" : The company has between 50 and 99 employees.
  /// - "SMEDIUM" : The company has between 100 and 499 employees.
  /// - "MEDIUM" : The company has between 500 and 999 employees.
  /// - "BIG" : The company has between 1,000 and 4,999 employees.
  /// - "BIGGER" : The company has between 5,000 and 9,999 employees.
  /// - "GIANT" : The company has 10,000 or more employees.
  core.String? size;

  /// Indicates whether a company is flagged to be suspended from public
  /// availability by the service when job content appears suspicious, abusive,
  /// or spammy.
  ///
  /// Output only.
  core.bool? suspended;

  /// The URI representing the company's primary web site or home page, for
  /// example, "https://www.google.com".
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Optional.
  core.String? websiteUri;

  Company({
    this.careerSiteUri,
    this.derivedInfo,
    this.displayName,
    this.eeoText,
    this.externalId,
    this.headquartersAddress,
    this.hiringAgency,
    this.imageUri,
    this.keywordSearchableJobCustomAttributes,
    this.name,
    this.size,
    this.suspended,
    this.websiteUri,
  });

  Company.fromJson(core.Map _json)
      : this(
          careerSiteUri: _json.containsKey('careerSiteUri')
              ? _json['careerSiteUri'] as core.String
              : null,
          derivedInfo: _json.containsKey('derivedInfo')
              ? CompanyDerivedInfo.fromJson(
                  _json['derivedInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          eeoText: _json.containsKey('eeoText')
              ? _json['eeoText'] as core.String
              : null,
          externalId: _json.containsKey('externalId')
              ? _json['externalId'] as core.String
              : null,
          headquartersAddress: _json.containsKey('headquartersAddress')
              ? _json['headquartersAddress'] as core.String
              : null,
          hiringAgency: _json.containsKey('hiringAgency')
              ? _json['hiringAgency'] as core.bool
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
          keywordSearchableJobCustomAttributes:
              _json.containsKey('keywordSearchableJobCustomAttributes')
                  ? (_json['keywordSearchableJobCustomAttributes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          suspended: _json.containsKey('suspended')
              ? _json['suspended'] as core.bool
              : null,
          websiteUri: _json.containsKey('websiteUri')
              ? _json['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (careerSiteUri != null) 'careerSiteUri': careerSiteUri!,
        if (derivedInfo != null) 'derivedInfo': derivedInfo!,
        if (displayName != null) 'displayName': displayName!,
        if (eeoText != null) 'eeoText': eeoText!,
        if (externalId != null) 'externalId': externalId!,
        if (headquartersAddress != null)
          'headquartersAddress': headquartersAddress!,
        if (hiringAgency != null) 'hiringAgency': hiringAgency!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (keywordSearchableJobCustomAttributes != null)
          'keywordSearchableJobCustomAttributes':
              keywordSearchableJobCustomAttributes!,
        if (name != null) 'name': name!,
        if (size != null) 'size': size!,
        if (suspended != null) 'suspended': suspended!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// Derived details about the company.
class CompanyDerivedInfo {
  /// A structured headquarters location of the company, resolved from
  /// Company.hq_location if provided.
  Location? headquartersLocation;

  CompanyDerivedInfo({
    this.headquartersLocation,
  });

  CompanyDerivedInfo.fromJson(core.Map _json)
      : this(
          headquartersLocation: _json.containsKey('headquartersLocation')
              ? Location.fromJson(_json['headquartersLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headquartersLocation != null)
          'headquartersLocation': headquartersLocation!,
      };
}

/// A compensation entry that represents one component of compensation, such as
/// base pay, bonus, or other compensation type.
///
/// Annualization: One compensation entry can be annualized if - it contains
/// valid amount or range. - and its expected_units_per_year is set or can be
/// derived. Its annualized range is determined as (amount or range) times
/// expected_units_per_year.
class CompensationEntry {
  /// Compensation amount.
  ///
  /// Optional.
  Money? amount;

  /// Compensation description.
  ///
  /// For example, could indicate equity terms or provide additional context to
  /// an estimated bonus.
  ///
  /// Optional.
  core.String? description;

  /// Expected number of units paid each year.
  ///
  /// If not specified, when Job.employment_types is FULLTIME, a default value
  /// is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 -
  /// WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  ///
  /// Optional.
  core.double? expectedUnitsPerYear;

  /// Compensation range.
  ///
  /// Optional.
  CompensationRange? range;

  /// Compensation type.
  ///
  /// Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPENSATION_TYPE_UNSPECIFIED" : Default value.
  /// - "BASE" : Base compensation: Refers to the fixed amount of money paid to
  /// an employee by an employer in return for work performed. Base compensation
  /// does not include benefits, bonuses or any other potential compensation
  /// from an employer.
  /// - "BONUS" : Bonus.
  /// - "SIGNING_BONUS" : Signing bonus.
  /// - "EQUITY" : Equity.
  /// - "PROFIT_SHARING" : Profit sharing.
  /// - "COMMISSIONS" : Commission.
  /// - "TIPS" : Tips.
  /// - "OTHER_COMPENSATION_TYPE" : Other compensation type.
  core.String? type;

  /// Frequency of the specified amount.
  ///
  /// Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPENSATION_UNIT_UNSPECIFIED" : Default value.
  /// - "HOURLY" : Hourly.
  /// - "DAILY" : Daily.
  /// - "WEEKLY" : Weekly
  /// - "MONTHLY" : Monthly.
  /// - "YEARLY" : Yearly.
  /// - "ONE_TIME" : One time.
  /// - "OTHER_COMPENSATION_UNIT" : Other compensation units.
  core.String? unit;

  CompensationEntry({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  CompensationEntry.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Money.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expectedUnitsPerYear: _json.containsKey('expectedUnitsPerYear')
              ? (_json['expectedUnitsPerYear'] as core.num).toDouble()
              : null,
          range: _json.containsKey('range')
              ? CompensationRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (description != null) 'description': description!,
        if (expectedUnitsPerYear != null)
          'expectedUnitsPerYear': expectedUnitsPerYear!,
        if (range != null) 'range': range!,
        if (type != null) 'type': type!,
        if (unit != null) 'unit': unit!,
      };
}

/// Input only.
///
/// Filter on job compensation type and amount.
class CompensationFilter {
  /// If set to true, jobs with unspecified compensation range fields are
  /// included.
  ///
  /// Optional.
  core.bool? includeJobsWithUnspecifiedCompensationRange;

  /// Compensation range.
  ///
  /// Optional.
  CompensationRange? range;

  /// Type of filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Filter type unspecified. Position holder,
  /// INVALID, should never be used.
  /// - "UNIT_ONLY" : Filter by `base compensation entry's` unit. A job is a
  /// match if and only if the job contains a base CompensationEntry and the
  /// base CompensationEntry's unit matches provided units. Populate one or more
  /// units. See CompensationInfo.CompensationEntry for definition of base
  /// compensation entry.
  /// - "UNIT_AND_AMOUNT" : Filter by `base compensation entry's` unit and
  /// amount / range. A job is a match if and only if the job contains a base
  /// CompensationEntry, and the base entry's unit matches provided
  /// compensation_units and amount or range overlaps with provided
  /// compensation_range. See CompensationInfo.CompensationEntry for definition
  /// of base compensation entry. Set exactly one units and populate range.
  /// - "ANNUALIZED_BASE_AMOUNT" : Filter by annualized base compensation amount
  /// and `base compensation entry's` unit. Populate range and zero or more
  /// units.
  /// - "ANNUALIZED_TOTAL_AMOUNT" : Filter by annualized total compensation
  /// amount and `base compensation entry's` unit . Populate range and zero or
  /// more units.
  core.String? type;

  /// Specify desired `base compensation entry's`
  /// CompensationInfo.CompensationUnit.
  ///
  /// Required.
  core.List<core.String>? units;

  CompensationFilter({
    this.includeJobsWithUnspecifiedCompensationRange,
    this.range,
    this.type,
    this.units,
  });

  CompensationFilter.fromJson(core.Map _json)
      : this(
          includeJobsWithUnspecifiedCompensationRange:
              _json.containsKey('includeJobsWithUnspecifiedCompensationRange')
                  ? _json['includeJobsWithUnspecifiedCompensationRange']
                      as core.bool
                  : null,
          range: _json.containsKey('range')
              ? CompensationRange.fromJson(
                  _json['range'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          units: _json.containsKey('units')
              ? (_json['units'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeJobsWithUnspecifiedCompensationRange != null)
          'includeJobsWithUnspecifiedCompensationRange':
              includeJobsWithUnspecifiedCompensationRange!,
        if (range != null) 'range': range!,
        if (type != null) 'type': type!,
        if (units != null) 'units': units!,
      };
}

/// Input only.
///
/// Compensation based histogram request.
class CompensationHistogramRequest {
  /// Numeric histogram options, like buckets, whether include min or max value.
  ///
  /// Required.
  NumericBucketingOption? bucketingOption;

  /// Type of the request, representing which field the histogramming should be
  /// performed over.
  ///
  /// A single request can only specify one histogram of each
  /// `CompensationHistogramRequestType`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" : Default value.
  /// Invalid.
  /// - "BASE" : Histogram by job's base compensation. See CompensationEntry for
  /// definition of base compensation.
  /// - "ANNUALIZED_BASE" : Histogram by job's annualized base compensation. See
  /// CompensationEntry for definition of annualized base compensation.
  /// - "ANNUALIZED_TOTAL" : Histogram by job's annualized total compensation.
  /// See CompensationEntry for definition of annualized total compensation.
  core.String? type;

  CompensationHistogramRequest({
    this.bucketingOption,
    this.type,
  });

  CompensationHistogramRequest.fromJson(core.Map _json)
      : this(
          bucketingOption: _json.containsKey('bucketingOption')
              ? NumericBucketingOption.fromJson(_json['bucketingOption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketingOption != null) 'bucketingOption': bucketingOption!,
        if (type != null) 'type': type!,
      };
}

/// Compensation based histogram result.
///
/// Output only.
class CompensationHistogramResult {
  /// Histogram result.
  NumericBucketingResult? result;

  /// Type of the request, corresponding to CompensationHistogramRequest.type.
  /// Possible string values are:
  /// - "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" : Default value.
  /// Invalid.
  /// - "BASE" : Histogram by job's base compensation. See CompensationEntry for
  /// definition of base compensation.
  /// - "ANNUALIZED_BASE" : Histogram by job's annualized base compensation. See
  /// CompensationEntry for definition of annualized base compensation.
  /// - "ANNUALIZED_TOTAL" : Histogram by job's annualized total compensation.
  /// See CompensationEntry for definition of annualized total compensation.
  core.String? type;

  CompensationHistogramResult({
    this.result,
    this.type,
  });

  CompensationHistogramResult.fromJson(core.Map _json)
      : this(
          result: _json.containsKey('result')
              ? NumericBucketingResult.fromJson(
                  _json['result'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
        if (type != null) 'type': type!,
      };
}

/// Job compensation details.
class CompensationInfo {
  /// Annualized base compensation range.
  ///
  /// Computed as base compensation entry's CompensationEntry.compensation times
  /// CompensationEntry.expected_units_per_year. See CompensationEntry for
  /// explanation on compensation annualization.
  ///
  /// Output only.
  CompensationRange? annualizedBaseCompensationRange;

  /// Annualized total compensation range.
  ///
  /// Computed as all compensation entries' CompensationEntry.compensation times
  /// CompensationEntry.expected_units_per_year. See CompensationEntry for
  /// explanation on compensation annualization.
  ///
  /// Output only.
  CompensationRange? annualizedTotalCompensationRange;

  /// Job compensation information.
  ///
  /// At most one entry can be of type CompensationInfo.CompensationType.BASE,
  /// which is referred as ** base compensation entry ** for the job.
  ///
  /// Optional.
  core.List<CompensationEntry>? entries;

  CompensationInfo({
    this.annualizedBaseCompensationRange,
    this.annualizedTotalCompensationRange,
    this.entries,
  });

  CompensationInfo.fromJson(core.Map _json)
      : this(
          annualizedBaseCompensationRange:
              _json.containsKey('annualizedBaseCompensationRange')
                  ? CompensationRange.fromJson(
                      _json['annualizedBaseCompensationRange']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          annualizedTotalCompensationRange:
              _json.containsKey('annualizedTotalCompensationRange')
                  ? CompensationRange.fromJson(
                      _json['annualizedTotalCompensationRange']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          entries: _json.containsKey('entries')
              ? (_json['entries'] as core.List)
                  .map((value) => CompensationEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annualizedBaseCompensationRange != null)
          'annualizedBaseCompensationRange': annualizedBaseCompensationRange!,
        if (annualizedTotalCompensationRange != null)
          'annualizedTotalCompensationRange': annualizedTotalCompensationRange!,
        if (entries != null) 'entries': entries!,
      };
}

/// Compensation range.
class CompensationRange {
  /// The maximum amount of compensation.
  ///
  /// If left empty, the value is set to a maximal compensation value and the
  /// currency code is set to match the currency code of min_compensation.
  ///
  /// Optional.
  Money? maxCompensation;

  /// The minimum amount of compensation.
  ///
  /// If left empty, the value is set to zero and the currency code is set to
  /// match the currency code of max_compensation.
  ///
  /// Optional.
  Money? minCompensation;

  CompensationRange({
    this.maxCompensation,
    this.minCompensation,
  });

  CompensationRange.fromJson(core.Map _json)
      : this(
          maxCompensation: _json.containsKey('maxCompensation')
              ? Money.fromJson(_json['maxCompensation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minCompensation: _json.containsKey('minCompensation')
              ? Money.fromJson(_json['minCompensation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxCompensation != null) 'maxCompensation': maxCompensation!,
        if (minCompensation != null) 'minCompensation': minCompensation!,
      };
}

/// Response of auto-complete query.
///
/// Output only.
class CompleteQueryResponse {
  /// Results of the matching job/company candidates.
  core.List<CompletionResult>? completionResults;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  CompleteQueryResponse({
    this.completionResults,
    this.metadata,
  });

  CompleteQueryResponse.fromJson(core.Map _json)
      : this(
          completionResults: _json.containsKey('completionResults')
              ? (_json['completionResults'] as core.List)
                  .map((value) => CompletionResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionResults != null) 'completionResults': completionResults!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Resource that represents completion results.
///
/// Output only.
class CompletionResult {
  /// The URI of the company image for CompletionType.COMPANY_NAME.
  core.String? imageUri;

  /// The suggestion for the query.
  core.String? suggestion;

  /// The completion topic.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : Default value.
  /// - "JOB_TITLE" : Only suggest job titles.
  /// - "COMPANY_NAME" : Only suggest company names.
  /// - "COMBINED" : Suggest both job titles and company names.
  core.String? type;

  CompletionResult({
    this.imageUri,
    this.suggestion,
    this.type,
  });

  CompletionResult.fromJson(core.Map _json)
      : this(
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
          suggestion: _json.containsKey('suggestion')
              ? _json['suggestion'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUri != null) 'imageUri': imageUri!,
        if (suggestion != null) 'suggestion': suggestion!,
        if (type != null) 'type': type!,
      };
}

/// The report event request.
class CreateClientEventRequest {
  /// Events issued when end user interacts with customer's application that
  /// uses Cloud Talent Solution.
  ///
  /// Required.
  ClientEvent? clientEvent;

  CreateClientEventRequest({
    this.clientEvent,
  });

  CreateClientEventRequest.fromJson(core.Map _json)
      : this(
          clientEvent: _json.containsKey('clientEvent')
              ? ClientEvent.fromJson(
                  _json['clientEvent'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientEvent != null) 'clientEvent': clientEvent!,
      };
}

/// Input only.
///
/// The Request of the CreateCompany method.
class CreateCompanyRequest {
  /// The company to be created.
  ///
  /// Required.
  Company? company;

  CreateCompanyRequest({
    this.company,
  });

  CreateCompanyRequest.fromJson(core.Map _json)
      : this(
          company: _json.containsKey('company')
              ? Company.fromJson(
                  _json['company'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (company != null) 'company': company!,
      };
}

/// Input only.
///
/// Create job request.
class CreateJobRequest {
  /// The Job to be created.
  ///
  /// Required.
  Job? job;

  CreateJobRequest({
    this.job,
  });

  CreateJobRequest.fromJson(core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// Custom attribute values that are either filterable or non-filterable.
class CustomAttribute {
  /// If the `filterable` flag is true, the custom field values may be used for
  /// custom attribute filters JobQuery.custom_attribute_filter.
  ///
  /// If false, these values may not be used for custom attribute filters.
  /// Default is false.
  ///
  /// Optional.
  core.bool? filterable;

  /// Optional but exactly one of string_values or long_values must be
  /// specified.
  ///
  /// This field is used to perform number range search. (`EQ`, `GT`, `GE`,
  /// `LE`, `LT`) over filterable `long_value`. Currently at most 1 long_values
  /// is supported.
  core.List<core.String>? longValues;

  /// Optional but exactly one of string_values or long_values must be
  /// specified.
  ///
  /// This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or
  /// `CASE_INSENSITIVE_MATCH`) search. For filterable `string_value`s, a
  /// maximum total number of 200 values is allowed, with each `string_value`
  /// has a byte size of no more than 500B. For unfilterable `string_values`,
  /// the maximum total byte size of unfilterable `string_values` is 50KB. Empty
  /// string is not allowed.
  core.List<core.String>? stringValues;

  CustomAttribute({
    this.filterable,
    this.longValues,
    this.stringValues,
  });

  CustomAttribute.fromJson(core.Map _json)
      : this(
          filterable: _json.containsKey('filterable')
              ? _json['filterable'] as core.bool
              : null,
          longValues: _json.containsKey('longValues')
              ? (_json['longValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          stringValues: _json.containsKey('stringValues')
              ? (_json['stringValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterable != null) 'filterable': filterable!,
        if (longValues != null) 'longValues': longValues!,
        if (stringValues != null) 'stringValues': stringValues!,
      };
}

/// Custom attributes histogram request.
///
/// An error is thrown if neither string_value_histogram or
/// long_value_histogram_bucketing_option has been defined.
class CustomAttributeHistogramRequest {
  /// Specifies the custom field key to perform a histogram on.
  ///
  /// If specified without `long_value_histogram_bucketing_option`, histogram on
  /// string values of the given `key` is triggered, otherwise histogram is
  /// performed on long values.
  ///
  /// Required.
  core.String? key;

  /// Specifies buckets used to perform a range histogram on Job's filterable
  /// long custom field values, or min/max value requirements.
  ///
  /// Optional.
  NumericBucketingOption? longValueHistogramBucketingOption;

  /// If set to true, the response includes the histogram value for each key as
  /// a string.
  ///
  /// Optional.
  core.bool? stringValueHistogram;

  CustomAttributeHistogramRequest({
    this.key,
    this.longValueHistogramBucketingOption,
    this.stringValueHistogram,
  });

  CustomAttributeHistogramRequest.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          longValueHistogramBucketingOption:
              _json.containsKey('longValueHistogramBucketingOption')
                  ? NumericBucketingOption.fromJson(
                      _json['longValueHistogramBucketingOption']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          stringValueHistogram: _json.containsKey('stringValueHistogram')
              ? _json['stringValueHistogram'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (longValueHistogramBucketingOption != null)
          'longValueHistogramBucketingOption':
              longValueHistogramBucketingOption!,
        if (stringValueHistogram != null)
          'stringValueHistogram': stringValueHistogram!,
      };
}

/// Custom attribute histogram result.
///
/// Output only.
class CustomAttributeHistogramResult {
  /// Stores the key of custom attribute the histogram is performed on.
  core.String? key;

  /// Stores bucketed histogram counting result or min/max values for custom
  /// attribute long values associated with `key`.
  NumericBucketingResult? longValueHistogramResult;

  /// Stores a map from the values of string custom field associated with `key`
  /// to the number of jobs with that value in this histogram result.
  core.Map<core.String, core.int>? stringValueHistogramResult;

  CustomAttributeHistogramResult({
    this.key,
    this.longValueHistogramResult,
    this.stringValueHistogramResult,
  });

  CustomAttributeHistogramResult.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          longValueHistogramResult:
              _json.containsKey('longValueHistogramResult')
                  ? NumericBucketingResult.fromJson(
                      _json['longValueHistogramResult']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          stringValueHistogramResult:
              _json.containsKey('stringValueHistogramResult')
                  ? (_json['stringValueHistogramResult']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, item) => core.MapEntry(
                        key,
                        item as core.int,
                      ),
                    )
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (longValueHistogramResult != null)
          'longValueHistogramResult': longValueHistogramResult!,
        if (stringValueHistogramResult != null)
          'stringValueHistogramResult': stringValueHistogramResult!,
      };
}

/// Device information collected from the job seeker, candidate, or other entity
/// conducting the job search.
///
/// Providing this information improves the quality of the search results across
/// devices.
class DeviceInfo {
  /// Type of the device.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : The device type isn't specified.
  /// - "WEB" : A desktop web browser, such as, Chrome, Firefox, Safari, or
  /// Internet Explorer)
  /// - "MOBILE_WEB" : A mobile device web browser, such as a phone or tablet
  /// with a Chrome browser.
  /// - "ANDROID" : An Android device native application.
  /// - "IOS" : An iOS device native application.
  /// - "BOT" : A bot, as opposed to a device operated by human beings, such as
  /// a web crawler.
  /// - "OTHER" : Other devices types.
  core.String? deviceType;

  /// A device-specific ID.
  ///
  /// The ID must be a unique identifier that distinguishes the device from
  /// other devices.
  ///
  /// Optional.
  core.String? id;

  DeviceInfo({
    this.deviceType,
    this.id,
  });

  DeviceInfo.fromJson(core.Map _json)
      : this(
          deviceType: _json.containsKey('deviceType')
              ? _json['deviceType'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceType != null) 'deviceType': deviceType!,
        if (id != null) 'id': id!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Input only.
///
/// Histogram facets to be specified in SearchJobsRequest.
class HistogramFacets {
  /// Specifies compensation field-based histogram requests.
  ///
  /// Duplicate values of CompensationHistogramRequest.type are not allowed.
  ///
  /// Optional.
  core.List<CompensationHistogramRequest>? compensationHistogramFacets;

  /// Specifies the custom attributes histogram requests.
  ///
  /// Duplicate values of CustomAttributeHistogramRequest.key are not allowed.
  ///
  /// Optional.
  core.List<CustomAttributeHistogramRequest>? customAttributeHistogramFacets;

  /// Specifies the simple type of histogram facets, for example,
  /// `COMPANY_SIZE`, `EMPLOYMENT_TYPE` etc.
  ///
  /// Optional.
  core.List<core.String>? simpleHistogramFacets;

  HistogramFacets({
    this.compensationHistogramFacets,
    this.customAttributeHistogramFacets,
    this.simpleHistogramFacets,
  });

  HistogramFacets.fromJson(core.Map _json)
      : this(
          compensationHistogramFacets:
              _json.containsKey('compensationHistogramFacets')
                  ? (_json['compensationHistogramFacets'] as core.List)
                      .map((value) => CompensationHistogramRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          customAttributeHistogramFacets:
              _json.containsKey('customAttributeHistogramFacets')
                  ? (_json['customAttributeHistogramFacets'] as core.List)
                      .map((value) => CustomAttributeHistogramRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          simpleHistogramFacets: _json.containsKey('simpleHistogramFacets')
              ? (_json['simpleHistogramFacets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compensationHistogramFacets != null)
          'compensationHistogramFacets': compensationHistogramFacets!,
        if (customAttributeHistogramFacets != null)
          'customAttributeHistogramFacets': customAttributeHistogramFacets!,
        if (simpleHistogramFacets != null)
          'simpleHistogramFacets': simpleHistogramFacets!,
      };
}

/// Result of a histogram call.
///
/// The response contains the histogram map for the search type specified by
/// HistogramResult.field. The response is a map of each filter value to the
/// corresponding count of jobs for that filter.
///
/// Output only.
class HistogramResult {
  /// The Histogram search filters.
  /// Possible string values are:
  /// - "SEARCH_TYPE_UNSPECIFIED" : The default value if search type is not
  /// specified.
  /// - "COMPANY_ID" : Filter by the company id field.
  /// - "EMPLOYMENT_TYPE" : Filter by the employment type field, such as
  /// `FULL_TIME` or `PART_TIME`.
  /// - "COMPANY_SIZE" : Filter by the company size type field, such as `BIG`,
  /// `SMALL` or `BIGGER`.
  /// - "DATE_PUBLISHED" : Filter by the date published field. Possible return
  /// values are: * PAST_24_HOURS (The past 24 hours) * PAST_3_DAYS (The past 3
  /// days) * PAST_WEEK (The past 7 days) * PAST_MONTH (The past 30 days) *
  /// PAST_YEAR (The past 365 days)
  /// - "EDUCATION_LEVEL" : Filter by the required education level of the job.
  /// - "EXPERIENCE_LEVEL" : Filter by the required experience level of the job.
  /// - "ADMIN_1" : Filter by Admin1, which is a global placeholder for
  /// referring to state, province, or the particular term a country uses to
  /// define the geographic structure below the country level. Examples include
  /// states codes such as "CA", "IL", "NY", and provinces, such as "BC".
  /// - "COUNTRY" : Filter by the country code of job, such as US, JP, FR.
  /// - "CITY" : Filter by the "city name", "Admin1 code", for example,
  /// "Mountain View, CA" or "New York, NY".
  /// - "LOCALE" : Filter by the locale field of a job, such as "en-US",
  /// "fr-FR". This is the BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  /// - "LANGUAGE" : Filter by the language code portion of the locale field,
  /// such as "en" or "fr".
  /// - "CATEGORY" : Filter by the Category.
  /// - "CITY_COORDINATE" : Filter by the city center GPS coordinate (latitude
  /// and longitude), for example, 37.4038522,-122.0987765. Since the
  /// coordinates of a city center can change, clients may need to refresh them
  /// periodically.
  /// - "ADMIN_1_COUNTRY" : A combination of state or province code with a
  /// country code. This field differs from `JOB_ADMIN1`, which can be used in
  /// multiple countries.
  /// - "COMPANY_DISPLAY_NAME" : Company display name.
  /// - "BASE_COMPENSATION_UNIT" : Base compensation unit.
  core.String? searchType;

  /// A map from the values of field to the number of jobs with that value in
  /// this search result.
  ///
  /// Key: search type (filter names, such as the companyName). Values: the
  /// count of jobs that match the filter for this search.
  core.Map<core.String, core.int>? values;

  HistogramResult({
    this.searchType,
    this.values,
  });

  HistogramResult.fromJson(core.Map _json)
      : this(
          searchType: _json.containsKey('searchType')
              ? _json['searchType'] as core.String
              : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (searchType != null) 'searchType': searchType!,
        if (values != null) 'values': values!,
      };
}

/// Histogram results that match HistogramFacets specified in SearchJobsRequest.
///
/// Output only.
class HistogramResults {
  /// Specifies compensation field-based histogram results that match
  /// HistogramFacets.compensation_histogram_requests.
  core.List<CompensationHistogramResult>? compensationHistogramResults;

  /// Specifies histogram results for custom attributes that match
  /// HistogramFacets.custom_attribute_histogram_facets.
  core.List<CustomAttributeHistogramResult>? customAttributeHistogramResults;

  /// Specifies histogram results that matches
  /// HistogramFacets.simple_histogram_facets.
  core.List<HistogramResult>? simpleHistogramResults;

  HistogramResults({
    this.compensationHistogramResults,
    this.customAttributeHistogramResults,
    this.simpleHistogramResults,
  });

  HistogramResults.fromJson(core.Map _json)
      : this(
          compensationHistogramResults:
              _json.containsKey('compensationHistogramResults')
                  ? (_json['compensationHistogramResults'] as core.List)
                      .map((value) => CompensationHistogramResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          customAttributeHistogramResults:
              _json.containsKey('customAttributeHistogramResults')
                  ? (_json['customAttributeHistogramResults'] as core.List)
                      .map((value) => CustomAttributeHistogramResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          simpleHistogramResults: _json.containsKey('simpleHistogramResults')
              ? (_json['simpleHistogramResults'] as core.List)
                  .map((value) => HistogramResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compensationHistogramResults != null)
          'compensationHistogramResults': compensationHistogramResults!,
        if (customAttributeHistogramResults != null)
          'customAttributeHistogramResults': customAttributeHistogramResults!,
        if (simpleHistogramResults != null)
          'simpleHistogramResults': simpleHistogramResults!,
      };
}

/// A Job resource represents a job posting (also referred to as a "job listing"
/// or "job requisition").
///
/// A job belongs to a Company, which is the hiring entity responsible for the
/// job.
class Job {
  /// Optional but strongly recommended for the best service experience.
  ///
  /// Location(s) where the employer is looking to hire for this job posting.
  /// Specifying the full street address(es) of the hiring location enables
  /// better API results, especially job searches by commute time. At most 50
  /// locations are allowed for best search performance. If a job has more
  /// locations, it is suggested to split it into multiple jobs with unique
  /// requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple
  /// jobs with the same company_name, language_code and requisition_id are not
  /// allowed. If the original requisition_id must be preserved, a custom field
  /// should be used for storage. It is also suggested to group the locations
  /// that close to each other in the same job for better search experience.
  /// Jobs with multiple addresses must have their addresses with the same
  /// LocationType to allow location filtering to work properly. (For example, a
  /// Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and
  /// "London, UK" may not have location filters applied correctly at search
  /// time since the first is a LocationType.STREET_ADDRESS and the second is a
  /// LocationType.LOCALITY.) If a job needs to have multiple addresses, it is
  /// suggested to split it into multiple jobs with same LocationTypes. The
  /// maximum number of allowed characters is 500.
  core.List<core.String>? addresses;

  /// At least one field within ApplicationInfo must be specified.
  ///
  /// Job application information.
  ///
  /// Required.
  ApplicationInfo? applicationInfo;

  /// Display name of the company listing the job.
  ///
  /// Output only.
  core.String? companyDisplayName;

  /// The resource name of the company listing the job, such as
  /// "projects/api-test-project/companies/foo".
  ///
  /// Required.
  core.String? companyName;

  /// Job compensation information.
  ///
  /// Optional.
  CompensationInfo? compensationInfo;

  /// A map of fields to hold both filterable and non-filterable custom job
  /// attributes that are not covered by the provided structured fields.
  ///
  /// The keys of the map are strings up to 64 bytes and must match the pattern:
  /// a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100
  /// filterable and at most 100 unfilterable keys are supported. For filterable
  /// `string_values`, across all keys at most 200 values are allowed, with each
  /// string no more than 255 characters. For unfilterable `string_values`, the
  /// maximum total size of `string_values` across all keys is 50KB.
  ///
  /// Optional.
  core.Map<core.String, CustomAttribute>? customAttributes;

  /// The desired education degrees for the job, such as Bachelors, Masters.
  ///
  /// Optional.
  core.List<core.String>? degreeTypes;

  /// The department or functional area within the company with the open
  /// position.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Optional.
  core.String? department;

  /// Derived details about the job posting.
  ///
  /// Output only.
  JobDerivedInfo? derivedInfo;

  /// The description of the job, which typically includes a multi-paragraph
  /// description of the company and related information.
  ///
  /// Separate fields are provided on the job object for responsibilities,
  /// qualifications, and other job characteristics. Use of these separate job
  /// fields is recommended. This field accepts and sanitizes HTML input, and
  /// also accepts bold, italic, ordered list, and unordered list markup tags.
  /// The maximum number of allowed characters is 100,000.
  ///
  /// Required.
  core.String? description;

  /// The employment type(s) of a job, for example, full time or part time.
  ///
  /// Optional.
  core.List<core.String>? employmentTypes;

  /// A description of bonus, commission, and other compensation incentives
  /// associated with the job not including salary or pay.
  ///
  /// The maximum number of allowed characters is 10,000.
  ///
  /// Optional.
  core.String? incentives;

  /// The benefits included with the job.
  ///
  /// Optional.
  core.List<core.String>? jobBenefits;

  /// The end timestamp of the job.
  ///
  /// Typically this field is used for contracting engagements. Invalid
  /// timestamps are ignored.
  ///
  /// Optional.
  core.String? jobEndTime;

  /// The experience level associated with the job, such as "Entry Level".
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOB_LEVEL_UNSPECIFIED" : The default value if the level is not
  /// specified.
  /// - "ENTRY_LEVEL" : Entry-level individual contributors, typically with less
  /// than 2 years of experience in a similar role. Includes interns.
  /// - "EXPERIENCED" : Experienced individual contributors, typically with 2+
  /// years of experience in a similar role.
  /// - "MANAGER" : Entry- to mid-level managers responsible for managing a team
  /// of people.
  /// - "DIRECTOR" : Senior-level managers responsible for managing teams of
  /// managers.
  /// - "EXECUTIVE" : Executive-level managers and above, including C-level
  /// positions.
  core.String? jobLevel;

  /// The start timestamp of the job in UTC time zone.
  ///
  /// Typically this field is used for contracting engagements. Invalid
  /// timestamps are ignored.
  ///
  /// Optional.
  core.String? jobStartTime;

  /// The language of the posting.
  ///
  /// This field is distinct from any requirements for fluency that are
  /// associated with the job. Language codes must be in BCP-47 format, such as
  /// "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){:
  /// class="external" target="_blank" }. If this field is unspecified and
  /// Job.description is present, detected language code based on
  /// Job.description is assigned, otherwise defaults to 'en_US'.
  ///
  /// Optional.
  core.String? languageCode;

  /// Required during job update.
  ///
  /// The resource name for the job. This is generated by the service when a job
  /// is created. The format is "projects/{project_id}/jobs/{job_id}", for
  /// example, "projects/api-test-project/jobs/1234". Use of this field in job
  /// queries and API calls is preferred over the use of requisition_id since
  /// this value is unique.
  core.String? name;

  /// The timestamp when this job posting was created.
  ///
  /// Output only.
  core.String? postingCreateTime;

  /// Optional but strongly recommended for the best service experience.
  ///
  /// The expiration timestamp of the job. After this timestamp, the job is
  /// marked as expired, and it no longer appears in search results. The expired
  /// job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it
  /// can be retrieved with the GetJob API or updated with the UpdateJob API. An
  /// expired job can be updated and opened again by using a future expiration
  /// timestamp. Updating an expired job fails if there is another existing open
  /// job with same company_name, language_code and requisition_id. The expired
  /// jobs are retained in our system for 90 days. However, the overall expired
  /// job count cannot exceed 3 times the maximum of open jobs count over the
  /// past week, otherwise jobs with earlier expire time are cleaned first.
  /// Expired jobs are no longer accessible after they are cleaned out. Invalid
  /// timestamps are ignored, and treated as expire time not provided. Timestamp
  /// before the instant request is made is considered valid, the job will be
  /// treated as expired immediately. If this value is not provided at the time
  /// of job creation or is invalid, the job posting expires after 30 days from
  /// the job's creation time. For example, if the job was created on 2017/01/01
  /// 13:00AM UTC with an unspecified expiration date, the job expires after
  /// 2017/01/31 13:00AM UTC. If this value is not provided on job update, it
  /// depends on the field masks set by UpdateJobRequest.update_mask. If the
  /// field masks include expiry_time, or the masks are empty meaning that every
  /// field is updated, the job posting expires after 30 days from the job's
  /// last update time. Otherwise the expiration date isn't updated.
  core.String? postingExpireTime;

  /// The timestamp this job posting was most recently published.
  ///
  /// The default value is the time the request arrives at the server. Invalid
  /// timestamps are ignored.
  ///
  /// Optional.
  core.String? postingPublishTime;

  /// The job PostingRegion (for example, state, country) throughout which the
  /// job is available.
  ///
  /// If this field is set, a LocationFilter in a search query within the job
  /// region finds this job posting if an exact location match isn't specified.
  /// If this field is set to PostingRegion.NATION or
  /// PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same
  /// location level as this field is strongly recommended.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POSTING_REGION_UNSPECIFIED" : If the region is unspecified, the job is
  /// only returned if it matches the LocationFilter.
  /// - "ADMINISTRATIVE_AREA" : In addition to exact location matching, job
  /// posting is returned when the LocationFilter in the search query is in the
  /// same administrative area as the returned job posting. For example, if a
  /// `ADMINISTRATIVE_AREA` job is posted in "CA, USA", it's returned if
  /// LocationFilter has "Mountain View". Administrative area refers to
  /// top-level administrative subdivision of this country. For example, US
  /// state, IT region, UK constituent nation and JP prefecture.
  /// - "NATION" : In addition to exact location matching, job is returned when
  /// LocationFilter in search query is in the same country as this job. For
  /// example, if a `NATION_WIDE` job is posted in "USA", it's returned if
  /// LocationFilter has 'Mountain View'.
  /// - "TELECOMMUTE" : Job allows employees to work remotely (telecommute). If
  /// locations are provided with this value, the job is considered as having a
  /// location, but telecommuting is allowed.
  core.String? postingRegion;

  /// The timestamp when this job posting was last updated.
  ///
  /// Output only.
  core.String? postingUpdateTime;

  /// Options for job processing.
  ///
  /// Optional.
  ProcessingOptions? processingOptions;

  /// A promotion value of the job, as determined by the client.
  ///
  /// The value determines the sort order of the jobs returned when searching
  /// for jobs using the featured jobs search call, with higher promotional
  /// values being returned first and ties being resolved by relevance sort.
  /// Only the jobs with a promotionValue \>0 are returned in a
  /// FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated
  /// as 0.
  ///
  /// Optional.
  core.int? promotionValue;

  /// A description of the qualifications required to perform the job.
  ///
  /// The use of this field is recommended as an alternative to using the more
  /// general description field. This field accepts and sanitizes HTML input,
  /// and also accepts bold, italic, ordered list, and unordered list markup
  /// tags. The maximum number of allowed characters is 10,000.
  ///
  /// Optional.
  core.String? qualifications;

  /// The requisition ID, also referred to as the posting ID, assigned by the
  /// client to identify a job.
  ///
  /// This field is intended to be used by clients for client identification and
  /// tracking of postings. A job is not allowed to be created if there is
  /// another job with the same \[company_name\], language_code and
  /// requisition_id. The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? requisitionId;

  /// A description of job responsibilities.
  ///
  /// The use of this field is recommended as an alternative to using the more
  /// general description field. This field accepts and sanitizes HTML input,
  /// and also accepts bold, italic, ordered list, and unordered list markup
  /// tags. The maximum number of allowed characters is 10,000.
  ///
  /// Optional.
  core.String? responsibilities;

  /// The title of the job, such as "Software Engineer" The maximum number of
  /// allowed characters is 500.
  ///
  /// Required.
  core.String? title;

  /// The job is only visible to the owner.
  ///
  /// The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not
  /// specified.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Default value.
  /// - "ACCOUNT_ONLY" : The resource is only visible to the GCP account who
  /// owns it.
  /// - "SHARED_WITH_GOOGLE" : The resource is visible to the owner and may be
  /// visible to other applications and processes at Google.
  /// - "SHARED_WITH_PUBLIC" : The resource is visible to the owner and may be
  /// visible to all other API clients.
  core.String? visibility;

  Job({
    this.addresses,
    this.applicationInfo,
    this.companyDisplayName,
    this.companyName,
    this.compensationInfo,
    this.customAttributes,
    this.degreeTypes,
    this.department,
    this.derivedInfo,
    this.description,
    this.employmentTypes,
    this.incentives,
    this.jobBenefits,
    this.jobEndTime,
    this.jobLevel,
    this.jobStartTime,
    this.languageCode,
    this.name,
    this.postingCreateTime,
    this.postingExpireTime,
    this.postingPublishTime,
    this.postingRegion,
    this.postingUpdateTime,
    this.processingOptions,
    this.promotionValue,
    this.qualifications,
    this.requisitionId,
    this.responsibilities,
    this.title,
    this.visibility,
  });

  Job.fromJson(core.Map _json)
      : this(
          addresses: _json.containsKey('addresses')
              ? (_json['addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          applicationInfo: _json.containsKey('applicationInfo')
              ? ApplicationInfo.fromJson(_json['applicationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          companyDisplayName: _json.containsKey('companyDisplayName')
              ? _json['companyDisplayName'] as core.String
              : null,
          companyName: _json.containsKey('companyName')
              ? _json['companyName'] as core.String
              : null,
          compensationInfo: _json.containsKey('compensationInfo')
              ? CompensationInfo.fromJson(_json['compensationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customAttributes: _json.containsKey('customAttributes')
              ? (_json['customAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    CustomAttribute.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          degreeTypes: _json.containsKey('degreeTypes')
              ? (_json['degreeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          department: _json.containsKey('department')
              ? _json['department'] as core.String
              : null,
          derivedInfo: _json.containsKey('derivedInfo')
              ? JobDerivedInfo.fromJson(
                  _json['derivedInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          employmentTypes: _json.containsKey('employmentTypes')
              ? (_json['employmentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          incentives: _json.containsKey('incentives')
              ? _json['incentives'] as core.String
              : null,
          jobBenefits: _json.containsKey('jobBenefits')
              ? (_json['jobBenefits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jobEndTime: _json.containsKey('jobEndTime')
              ? _json['jobEndTime'] as core.String
              : null,
          jobLevel: _json.containsKey('jobLevel')
              ? _json['jobLevel'] as core.String
              : null,
          jobStartTime: _json.containsKey('jobStartTime')
              ? _json['jobStartTime'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          postingCreateTime: _json.containsKey('postingCreateTime')
              ? _json['postingCreateTime'] as core.String
              : null,
          postingExpireTime: _json.containsKey('postingExpireTime')
              ? _json['postingExpireTime'] as core.String
              : null,
          postingPublishTime: _json.containsKey('postingPublishTime')
              ? _json['postingPublishTime'] as core.String
              : null,
          postingRegion: _json.containsKey('postingRegion')
              ? _json['postingRegion'] as core.String
              : null,
          postingUpdateTime: _json.containsKey('postingUpdateTime')
              ? _json['postingUpdateTime'] as core.String
              : null,
          processingOptions: _json.containsKey('processingOptions')
              ? ProcessingOptions.fromJson(_json['processingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          promotionValue: _json.containsKey('promotionValue')
              ? _json['promotionValue'] as core.int
              : null,
          qualifications: _json.containsKey('qualifications')
              ? _json['qualifications'] as core.String
              : null,
          requisitionId: _json.containsKey('requisitionId')
              ? _json['requisitionId'] as core.String
              : null,
          responsibilities: _json.containsKey('responsibilities')
              ? _json['responsibilities'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          visibility: _json.containsKey('visibility')
              ? _json['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (applicationInfo != null) 'applicationInfo': applicationInfo!,
        if (companyDisplayName != null)
          'companyDisplayName': companyDisplayName!,
        if (companyName != null) 'companyName': companyName!,
        if (compensationInfo != null) 'compensationInfo': compensationInfo!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (degreeTypes != null) 'degreeTypes': degreeTypes!,
        if (department != null) 'department': department!,
        if (derivedInfo != null) 'derivedInfo': derivedInfo!,
        if (description != null) 'description': description!,
        if (employmentTypes != null) 'employmentTypes': employmentTypes!,
        if (incentives != null) 'incentives': incentives!,
        if (jobBenefits != null) 'jobBenefits': jobBenefits!,
        if (jobEndTime != null) 'jobEndTime': jobEndTime!,
        if (jobLevel != null) 'jobLevel': jobLevel!,
        if (jobStartTime != null) 'jobStartTime': jobStartTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (postingCreateTime != null) 'postingCreateTime': postingCreateTime!,
        if (postingExpireTime != null) 'postingExpireTime': postingExpireTime!,
        if (postingPublishTime != null)
          'postingPublishTime': postingPublishTime!,
        if (postingRegion != null) 'postingRegion': postingRegion!,
        if (postingUpdateTime != null) 'postingUpdateTime': postingUpdateTime!,
        if (processingOptions != null) 'processingOptions': processingOptions!,
        if (promotionValue != null) 'promotionValue': promotionValue!,
        if (qualifications != null) 'qualifications': qualifications!,
        if (requisitionId != null) 'requisitionId': requisitionId!,
        if (responsibilities != null) 'responsibilities': responsibilities!,
        if (title != null) 'title': title!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// Derived details about the job posting.
///
/// Output only.
class JobDerivedInfo {
  /// Job categories derived from Job.title and Job.description.
  core.List<core.String>? jobCategories;

  /// Structured locations of the job, resolved from Job.addresses.
  ///
  /// locations are exactly matched to Job.addresses in the same order.
  core.List<Location>? locations;

  JobDerivedInfo({
    this.jobCategories,
    this.locations,
  });

  JobDerivedInfo.fromJson(core.Map _json)
      : this(
          jobCategories: _json.containsKey('jobCategories')
              ? (_json['jobCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobCategories != null) 'jobCategories': jobCategories!,
        if (locations != null) 'locations': locations!,
      };
}

/// An event issued when a job seeker interacts with the application that
/// implements Cloud Talent Solution.
class JobEvent {
  /// The job name(s) associated with this event.
  ///
  /// For example, if this is an impression event, this field contains the
  /// identifiers of all jobs shown to the job seeker. If this was a view event,
  /// this field contains the identifier of the viewed job.
  ///
  /// Required.
  core.List<core.String>? jobs;

  /// The type of the event (see JobEventType).
  ///
  /// Required.
  /// Possible string values are:
  /// - "JOB_EVENT_TYPE_UNSPECIFIED" : The event is unspecified by other
  /// provided values.
  /// - "IMPRESSION" : The job seeker or other entity interacting with the
  /// service has had a job rendered in their view, such as in a list of search
  /// results in a compressed or clipped format. This event is typically
  /// associated with the viewing of a jobs list on a single page by a job
  /// seeker.
  /// - "VIEW" : The job seeker, or other entity interacting with the service,
  /// has viewed the details of a job, including the full description. This
  /// event doesn't apply to the viewing a snippet of a job appearing as a part
  /// of the job search results. Viewing a snippet is associated with an
  /// impression).
  /// - "VIEW_REDIRECT" : The job seeker or other entity interacting with the
  /// service performed an action to view a job and was redirected to a
  /// different website for job.
  /// - "APPLICATION_START" : The job seeker or other entity interacting with
  /// the service began the process or demonstrated the intention of applying
  /// for a job.
  /// - "APPLICATION_FINISH" : The job seeker or other entity interacting with
  /// the service submitted an application for a job.
  /// - "APPLICATION_QUICK_SUBMISSION" : The job seeker or other entity
  /// interacting with the service submitted an application for a job with a
  /// single click without entering information. If a job seeker performs this
  /// action, send only this event to the service. Do not also send
  /// JobEventType.APPLICATION_START or JobEventType.APPLICATION_FINISH events.
  /// - "APPLICATION_REDIRECT" : The job seeker or other entity interacting with
  /// the service performed an action to apply to a job and was redirected to a
  /// different website to complete the application.
  /// - "APPLICATION_START_FROM_SEARCH" : The job seeker or other entity
  /// interacting with the service began the process or demonstrated the
  /// intention of applying for a job from the search results page without
  /// viewing the details of the job posting. If sending this event,
  /// JobEventType.VIEW event shouldn't be sent.
  /// - "APPLICATION_REDIRECT_FROM_SEARCH" : The job seeker, or other entity
  /// interacting with the service, performs an action with a single click from
  /// the search results page to apply to a job (without viewing the details of
  /// the job posting), and is redirected to a different website to complete the
  /// application. If a candidate performs this action, send only this event to
  /// the service. Do not also send JobEventType.APPLICATION_START,
  /// JobEventType.APPLICATION_FINISH or JobEventType.VIEW events.
  /// - "APPLICATION_COMPANY_SUBMIT" : This event should be used when a company
  /// submits an application on behalf of a job seeker. This event is intended
  /// for use by staffing agencies attempting to place candidates.
  /// - "BOOKMARK" : The job seeker or other entity interacting with the service
  /// demonstrated an interest in a job by bookmarking or saving it.
  /// - "NOTIFICATION" : The job seeker or other entity interacting with the
  /// service was sent a notification, such as an email alert or device
  /// notification, containing one or more jobs listings generated by the
  /// service.
  /// - "HIRED" : The job seeker or other entity interacting with the service
  /// was employed by the hiring entity (employer). Send this event only if the
  /// job seeker was hired through an application that was initiated by a search
  /// conducted through the Cloud Talent Solution service.
  /// - "SENT_CV" : A recruiter or staffing agency submitted an application on
  /// behalf of the candidate after interacting with the service to identify a
  /// suitable job posting.
  /// - "INTERVIEW_GRANTED" : The entity interacting with the service (for
  /// example, the job seeker), was granted an initial interview by the hiring
  /// entity (employer). This event should only be sent if the job seeker was
  /// granted an interview as part of an application that was initiated by a
  /// search conducted through / recommendation provided by the Cloud Talent
  /// Solution service.
  /// - "NOT_INTERESTED" : The job seeker or other entity interacting with the
  /// service showed no interest in the job.
  core.String? type;

  JobEvent({
    this.jobs,
    this.type,
  });

  JobEvent.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (type != null) 'type': type!,
      };
}

/// Input only.
///
/// The query required to perform a search query.
class JobQuery {
  /// Allows filtering jobs by commute time with different travel methods (for
  /// example, driving or public transit).
  ///
  /// Note: This only works with COMMUTE MODE. When specified,
  /// \[JobQuery.location_filters\] is ignored. Currently we don't support
  /// sorting by commute time.
  ///
  /// Optional.
  CommuteFilter? commuteFilter;

  /// This filter specifies the exact company display name of the jobs to search
  /// against.
  ///
  /// If a value isn't specified, jobs within the search results are associated
  /// with any company. If multiple values are specified, jobs within the search
  /// results may be associated with any of the specified companies. At most 20
  /// company display name filters are allowed.
  ///
  /// Optional.
  core.List<core.String>? companyDisplayNames;

  /// This filter specifies the company entities to search against.
  ///
  /// If a value isn't specified, jobs are searched for against all companies.
  /// If multiple values are specified, jobs are searched against the companies
  /// specified. The format is "projects/{project_id}/companies/{company_id}",
  /// for example, "projects/api-test-project/companies/foo". At most 20 company
  /// filters are allowed.
  ///
  /// Optional.
  core.List<core.String>? companyNames;

  /// This search filter is applied only to Job.compensation_info.
  ///
  /// For example, if the filter is specified as "Hourly job with per-hour
  /// compensation \> $15", only jobs meeting these criteria are searched. If a
  /// filter isn't defined, all open jobs are searched.
  ///
  /// Optional.
  CompensationFilter? compensationFilter;

  /// This filter specifies a structured syntax to match against the
  /// Job.custom_attributes marked as `filterable`.
  ///
  /// The syntax for this expression is a subset of SQL syntax. Supported
  /// operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the
  /// operator is a custom field key and the right of the operator is a number
  /// or a quoted string. You must escape backslash (\\) and quote (\")
  /// characters. Supported functions are `LOWER([field_name])` to perform a
  /// case insensitive match and `EMPTY([field_name])` to filter on the
  /// existence of a key. Boolean expressions (AND/OR/NOT) are supported up to 3
  /// levels of nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a
  /// maximum of 100 comparisons or functions are allowed in the expression. The
  /// expression must be \< 10000 bytes in length. Sample Query:
  /// `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
  /// driving_years > 10`
  ///
  /// Optional.
  core.String? customAttributeFilter;

  /// This flag controls the spell-check feature.
  ///
  /// If false, the service attempts to correct a misspelled query, for example,
  /// "enginee" is corrected to "engineer". Defaults to false: a spell check is
  /// performed.
  ///
  /// Optional.
  core.bool? disableSpellCheck;

  /// The employment type filter specifies the employment type of jobs to search
  /// against, such as EmploymentType.FULL_TIME.
  ///
  /// If a value is not specified, jobs in the search results includes any
  /// employment type. If multiple values are specified, jobs in the search
  /// results include any of the specified employment types.
  ///
  /// Optional.
  core.List<core.String>? employmentTypes;

  /// The category filter specifies the categories of jobs to search against.
  ///
  /// See Category for more information. If a value is not specified, jobs from
  /// any category are searched against. If multiple values are specified, jobs
  /// from any of the specified categories are searched against.
  ///
  /// Optional.
  core.List<core.String>? jobCategories;

  /// This filter specifies the locale of jobs to search against, for example,
  /// "en-US".
  ///
  /// If a value isn't specified, the search results can contain jobs in any
  /// locale. Language codes should be in BCP-47 format, such as "en-US" or
  /// "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). At
  /// most 10 language code filters are allowed.
  ///
  /// Optional.
  core.List<core.String>? languageCodes;

  /// The location filter specifies geo-regions containing the jobs to search
  /// against.
  ///
  /// See LocationFilter for more information. If a location value isn't
  /// specified, jobs fitting the other search criteria are retrieved regardless
  /// of where they're located. If multiple values are specified, jobs are
  /// retrieved from any of the specified locations. If different values are
  /// specified for the LocationFilter.distance_in_miles parameter, the maximum
  /// provided distance is used for all locations. At most 5 location filters
  /// are allowed.
  ///
  /// Optional.
  core.List<LocationFilter>? locationFilters;

  /// Jobs published within a range specified by this filter are searched
  /// against.
  ///
  /// Optional.
  TimestampRange? publishTimeRange;

  /// The query string that matches against the job title, description, and
  /// location fields.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Optional.
  core.String? query;

  /// The language code of query.
  ///
  /// For example, "en-US". This field helps to better interpret the query. If a
  /// value isn't specified, the query language code is automatically detected,
  /// which may not be accurate. Language code should be in BCP-47 format, such
  /// as "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  core.String? queryLanguageCode;

  JobQuery({
    this.commuteFilter,
    this.companyDisplayNames,
    this.companyNames,
    this.compensationFilter,
    this.customAttributeFilter,
    this.disableSpellCheck,
    this.employmentTypes,
    this.jobCategories,
    this.languageCodes,
    this.locationFilters,
    this.publishTimeRange,
    this.query,
    this.queryLanguageCode,
  });

  JobQuery.fromJson(core.Map _json)
      : this(
          commuteFilter: _json.containsKey('commuteFilter')
              ? CommuteFilter.fromJson(
                  _json['commuteFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          companyDisplayNames: _json.containsKey('companyDisplayNames')
              ? (_json['companyDisplayNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          companyNames: _json.containsKey('companyNames')
              ? (_json['companyNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          compensationFilter: _json.containsKey('compensationFilter')
              ? CompensationFilter.fromJson(_json['compensationFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customAttributeFilter: _json.containsKey('customAttributeFilter')
              ? _json['customAttributeFilter'] as core.String
              : null,
          disableSpellCheck: _json.containsKey('disableSpellCheck')
              ? _json['disableSpellCheck'] as core.bool
              : null,
          employmentTypes: _json.containsKey('employmentTypes')
              ? (_json['employmentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jobCategories: _json.containsKey('jobCategories')
              ? (_json['jobCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languageCodes: _json.containsKey('languageCodes')
              ? (_json['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locationFilters: _json.containsKey('locationFilters')
              ? (_json['locationFilters'] as core.List)
                  .map((value) => LocationFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publishTimeRange: _json.containsKey('publishTimeRange')
              ? TimestampRange.fromJson(_json['publishTimeRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          queryLanguageCode: _json.containsKey('queryLanguageCode')
              ? _json['queryLanguageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commuteFilter != null) 'commuteFilter': commuteFilter!,
        if (companyDisplayNames != null)
          'companyDisplayNames': companyDisplayNames!,
        if (companyNames != null) 'companyNames': companyNames!,
        if (compensationFilter != null)
          'compensationFilter': compensationFilter!,
        if (customAttributeFilter != null)
          'customAttributeFilter': customAttributeFilter!,
        if (disableSpellCheck != null) 'disableSpellCheck': disableSpellCheck!,
        if (employmentTypes != null) 'employmentTypes': employmentTypes!,
        if (jobCategories != null) 'jobCategories': jobCategories!,
        if (languageCodes != null) 'languageCodes': languageCodes!,
        if (locationFilters != null) 'locationFilters': locationFilters!,
        if (publishTimeRange != null) 'publishTimeRange': publishTimeRange!,
        if (query != null) 'query': query!,
        if (queryLanguageCode != null) 'queryLanguageCode': queryLanguageCode!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The List companies response object.
///
/// Output only.
class ListCompaniesResponse {
  /// Companies for the current client.
  core.List<Company>? companies;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  ListCompaniesResponse({
    this.companies,
    this.metadata,
    this.nextPageToken,
  });

  ListCompaniesResponse.fromJson(core.Map _json)
      : this(
          companies: _json.containsKey('companies')
              ? (_json['companies'] as core.List)
                  .map((value) => Company.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companies != null) 'companies': companies!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List jobs response.
///
/// Output only.
class ListJobsResponse {
  /// The Jobs for a given company.
  ///
  /// The maximum number of items returned is based on the limit field provided
  /// in the request.
  core.List<Job>? jobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  ListJobsResponse({
    this.jobs,
    this.metadata,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents a location with full geographic information.
///
/// Output only.
class Location {
  /// An object representing a latitude/longitude pair.
  LatLng? latLng;

  /// The type of a location, which corresponds to the address lines field of
  /// PostalAddress.
  ///
  /// For example, "Downtown, Atlanta, GA, USA" has a type of
  /// LocationType#NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of
  /// LocationType#LOCALITY.
  /// Possible string values are:
  /// - "LOCATION_TYPE_UNSPECIFIED" : Default value if the type is not
  /// specified.
  /// - "COUNTRY" : A country level location.
  /// - "ADMINISTRATIVE_AREA" : A state or equivalent level location.
  /// - "SUB_ADMINISTRATIVE_AREA" : A county or equivalent level location.
  /// - "LOCALITY" : A city or equivalent level location.
  /// - "POSTAL_CODE" : A postal code level location.
  /// - "SUB_LOCALITY" : A sublocality is a subdivision of a locality, for
  /// example a city borough, ward, or arrondissement. Sublocalities are usually
  /// recognized by a local political authority. For example, Manhattan and
  /// Brooklyn are recognized as boroughs by the City of New York, and are
  /// therefore modeled as sublocalities.
  /// - "SUB_LOCALITY_1" : A district or equivalent level location.
  /// - "SUB_LOCALITY_2" : A smaller district or equivalent level display.
  /// - "NEIGHBORHOOD" : A neighborhood level location.
  /// - "STREET_ADDRESS" : A street address level location.
  core.String? locationType;

  /// Postal address of the location that includes human readable information,
  /// such as postal delivery and payments addresses.
  ///
  /// Given a postal address, a postal service can deliver items to a premises,
  /// P.O. Box, or other delivery location.
  PostalAddress? postalAddress;

  /// Radius in miles of the job location.
  ///
  /// This value is derived from the location bounding box in which a circle
  /// with the specified radius centered from LatLng covers the area associated
  /// with the job location. For example, currently, "Mountain View, CA, USA"
  /// has a radius of 6.17 miles.
  core.double? radiusInMiles;

  Location({
    this.latLng,
    this.locationType,
    this.postalAddress,
    this.radiusInMiles,
  });

  Location.fromJson(core.Map _json)
      : this(
          latLng: _json.containsKey('latLng')
              ? LatLng.fromJson(
                  _json['latLng'] as core.Map<core.String, core.dynamic>)
              : null,
          locationType: _json.containsKey('locationType')
              ? _json['locationType'] as core.String
              : null,
          postalAddress: _json.containsKey('postalAddress')
              ? PostalAddress.fromJson(
                  _json['postalAddress'] as core.Map<core.String, core.dynamic>)
              : null,
          radiusInMiles: _json.containsKey('radiusInMiles')
              ? (_json['radiusInMiles'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latLng != null) 'latLng': latLng!,
        if (locationType != null) 'locationType': locationType!,
        if (postalAddress != null) 'postalAddress': postalAddress!,
        if (radiusInMiles != null) 'radiusInMiles': radiusInMiles!,
      };
}

/// Input only.
///
/// Geographic region of the search.
class LocationFilter {
  /// The address name, such as "Mountain View" or "Bay Area".
  ///
  /// Optional.
  core.String? address;

  /// The distance_in_miles is applied when the location being searched for is
  /// identified as a city or smaller.
  ///
  /// When the location being searched for is a state or larger, this field is
  /// ignored.
  ///
  /// Optional.
  core.double? distanceInMiles;

  /// The latitude and longitude of the geographic center from which to search.
  ///
  /// This field's ignored if `address` is provided.
  ///
  /// Optional.
  LatLng? latLng;

  /// CLDR region code of the country/region.
  ///
  /// This field may be used in two ways: 1) If telecommute preference is not
  /// set, this field is used address ambiguity of the user-input address. For
  /// example, "Liverpool" may refer to "Liverpool, NY, US" or "Liverpool, UK".
  /// This region code biases the address resolution toward a specific country
  /// or territory. If this field is not set, address resolution is biased
  /// toward the United States by default. 2) If telecommute preference is set
  /// to TELECOMMUTE_ALLOWED, the telecommute location filter will be limited to
  /// the region specified in this field. If this field is not set, the
  /// telecommute job locations will not be limited. See
  /// https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  ///
  /// Optional.
  core.String? regionCode;

  /// Allows the client to return jobs without a set location, specifically,
  /// telecommuting jobs (telecommuting is considered by the service as a
  /// special location.
  ///
  /// Job.posting_region indicates if a job permits telecommuting. If this field
  /// is set to TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs
  /// are searched, and address and lat_lng are ignored. If not set or set to
  /// TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
  /// searched. This filter can be used by itself to search exclusively for
  /// telecommuting jobs, or it can be combined with another location filter to
  /// search for a combination of job locations, such as "Mountain View" or
  /// "telecommuting" jobs. However, when used in combination with other
  /// location filters, telecommuting jobs can be treated as less relevant than
  /// other jobs in the search response.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TELECOMMUTE_PREFERENCE_UNSPECIFIED" : Default value if the telecommute
  /// preference is not specified.
  /// - "TELECOMMUTE_EXCLUDED" : Exclude telecommute jobs.
  /// - "TELECOMMUTE_ALLOWED" : Allow telecommute jobs.
  core.String? telecommutePreference;

  LocationFilter({
    this.address,
    this.distanceInMiles,
    this.latLng,
    this.regionCode,
    this.telecommutePreference,
  });

  LocationFilter.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          distanceInMiles: _json.containsKey('distanceInMiles')
              ? (_json['distanceInMiles'] as core.num).toDouble()
              : null,
          latLng: _json.containsKey('latLng')
              ? LatLng.fromJson(
                  _json['latLng'] as core.Map<core.String, core.dynamic>)
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          telecommutePreference: _json.containsKey('telecommutePreference')
              ? _json['telecommutePreference'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (distanceInMiles != null) 'distanceInMiles': distanceInMiles!,
        if (latLng != null) 'latLng': latLng!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (telecommutePreference != null)
          'telecommutePreference': telecommutePreference!,
      };
}

/// Job entry with metadata inside SearchJobsResponse.
///
/// Output only.
class MatchingJob {
  /// Commute information which is generated based on specified CommuteFilter.
  CommuteInfo? commuteInfo;

  /// Job resource that matches the specified SearchJobsRequest.
  Job? job;

  /// A summary of the job with core information that's displayed on the search
  /// results listing page.
  core.String? jobSummary;

  /// Contains snippets of text from the Job.job_title field most closely
  /// matching a search query's keywords, if available.
  ///
  /// The matching query keywords are enclosed in HTML bold tags.
  core.String? jobTitleSnippet;

  /// Contains snippets of text from the Job.description and similar fields that
  /// most closely match a search query's keywords, if available.
  ///
  /// All HTML tags in the original fields are stripped when returned in this
  /// field, and matching query keywords are enclosed in HTML bold tags.
  core.String? searchTextSnippet;

  MatchingJob({
    this.commuteInfo,
    this.job,
    this.jobSummary,
    this.jobTitleSnippet,
    this.searchTextSnippet,
  });

  MatchingJob.fromJson(core.Map _json)
      : this(
          commuteInfo: _json.containsKey('commuteInfo')
              ? CommuteInfo.fromJson(
                  _json['commuteInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          job: _json.containsKey('job')
              ? Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
          jobSummary: _json.containsKey('jobSummary')
              ? _json['jobSummary'] as core.String
              : null,
          jobTitleSnippet: _json.containsKey('jobTitleSnippet')
              ? _json['jobTitleSnippet'] as core.String
              : null,
          searchTextSnippet: _json.containsKey('searchTextSnippet')
              ? _json['searchTextSnippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commuteInfo != null) 'commuteInfo': commuteInfo!,
        if (job != null) 'job': job!,
        if (jobSummary != null) 'jobSummary': jobSummary!,
        if (jobTitleSnippet != null) 'jobTitleSnippet': jobTitleSnippet!,
        if (searchTextSnippet != null) 'searchTextSnippet': searchTextSnippet!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Input only.
///
/// Use this field to specify bucketing option for the histogram search
/// response.
class NumericBucketingOption {
  /// Two adjacent values form a histogram bucket.
  ///
  /// Values should be in ascending order. For example, if \[5, 10, 15\] are
  /// provided, four buckets are created: (-inf, 5), 5, 10), \[10, 15), \[15,
  /// inf). At most 20 \[buckets_bound is supported.
  ///
  /// Required.
  core.List<core.double>? bucketBounds;

  /// If set to true, the histogram result includes minimum/maximum value of the
  /// numeric field.
  ///
  /// Optional.
  core.bool? requiresMinMax;

  NumericBucketingOption({
    this.bucketBounds,
    this.requiresMinMax,
  });

  NumericBucketingOption.fromJson(core.Map _json)
      : this(
          bucketBounds: _json.containsKey('bucketBounds')
              ? (_json['bucketBounds'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          requiresMinMax: _json.containsKey('requiresMinMax')
              ? _json['requiresMinMax'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketBounds != null) 'bucketBounds': bucketBounds!,
        if (requiresMinMax != null) 'requiresMinMax': requiresMinMax!,
      };
}

/// Custom numeric bucketing result.
///
/// Output only.
class NumericBucketingResult {
  /// Count within each bucket.
  ///
  /// Its size is the length of NumericBucketingOption.bucket_bounds plus 1.
  core.List<BucketizedCount>? counts;

  /// Stores the maximum value of the numeric field.
  ///
  /// Is populated only if \[NumericBucketingOption.requires_min_max\] is set to
  /// true.
  core.double? maxValue;

  /// Stores the minimum value of the numeric field.
  ///
  /// Will be populated only if \[NumericBucketingOption.requires_min_max\] is
  /// set to true.
  core.double? minValue;

  NumericBucketingResult({
    this.counts,
    this.maxValue,
    this.minValue,
  });

  NumericBucketingResult.fromJson(core.Map _json)
      : this(
          counts: _json.containsKey('counts')
              ? (_json['counts'] as core.List)
                  .map((value) => BucketizedCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxValue: _json.containsKey('maxValue')
              ? (_json['maxValue'] as core.num).toDouble()
              : null,
          minValue: _json.containsKey('minValue')
              ? (_json['minValue'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (counts != null) 'counts': counts!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
typedef PostalAddress = $PostalAddress;

/// Input only.
///
/// Options for job processing.
class ProcessingOptions {
  /// If set to `true`, the service does not attempt to resolve a more precise
  /// address for the job.
  ///
  /// Optional.
  core.bool? disableStreetAddressResolution;

  /// Option for job HTML content sanitization.
  ///
  /// Applied fields are: * description * applicationInfo.instruction *
  /// incentives * qualifications * responsibilities HTML tags in these fields
  /// may be stripped if sanitiazation is not disabled. Defaults to
  /// HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HTML_SANITIZATION_UNSPECIFIED" : Default value.
  /// - "HTML_SANITIZATION_DISABLED" : Disables sanitization on HTML input.
  /// - "SIMPLE_FORMATTING_ONLY" : Sanitizes HTML input, only accepts bold,
  /// italic, ordered list, and unordered list markup tags.
  core.String? htmlSanitization;

  ProcessingOptions({
    this.disableStreetAddressResolution,
    this.htmlSanitization,
  });

  ProcessingOptions.fromJson(core.Map _json)
      : this(
          disableStreetAddressResolution:
              _json.containsKey('disableStreetAddressResolution')
                  ? _json['disableStreetAddressResolution'] as core.bool
                  : null,
          htmlSanitization: _json.containsKey('htmlSanitization')
              ? _json['htmlSanitization'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableStreetAddressResolution != null)
          'disableStreetAddressResolution': disableStreetAddressResolution!,
        if (htmlSanitization != null) 'htmlSanitization': htmlSanitization!,
      };
}

/// Input only.
///
/// Meta information related to the job searcher or entity conducting the job
/// search. This information is used to improve the performance of the service.
class RequestMetadata {
  /// The type of device used by the job seeker at the time of the call to the
  /// service.
  ///
  /// Optional.
  DeviceInfo? deviceInfo;

  /// The client-defined scope or source of the service call, which typically is
  /// the domain on which the service has been implemented and is currently
  /// being run.
  ///
  /// For example, if the service is being run by client *Foo, Inc.*, on job
  /// board www.foo.com and career site www.bar.com, then this field is set to
  /// "foo.com" for use on the job board, and "bar.com" for use on the career
  /// site. If this field isn't available for some reason, send "UNKNOWN". Any
  /// improvements to the model for a particular tenant site rely on this field
  /// being set correctly to a domain. The maximum number of allowed characters
  /// is 255.
  ///
  /// Required.
  core.String? domain;

  /// A unique session identification string.
  ///
  /// A session is defined as the duration of an end user's interaction with the
  /// service over a certain period. Obfuscate this field for privacy concerns
  /// before providing it to the service. If this field is not available for
  /// some reason, send "UNKNOWN". Note that any improvements to the model for a
  /// particular tenant site, rely on this field being set correctly to some
  /// unique session_id. The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? sessionId;

  /// A unique user identification string, as determined by the client.
  ///
  /// To have the strongest positive impact on search quality make sure the
  /// client-level is unique. Obfuscate this field for privacy concerns before
  /// providing it to the service. If this field is not available for some
  /// reason, send "UNKNOWN". Note that any improvements to the model for a
  /// particular tenant site, rely on this field being set correctly to a unique
  /// user_id. The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? userId;

  RequestMetadata({
    this.deviceInfo,
    this.domain,
    this.sessionId,
    this.userId,
  });

  RequestMetadata.fromJson(core.Map _json)
      : this(
          deviceInfo: _json.containsKey('deviceInfo')
              ? DeviceInfo.fromJson(
                  _json['deviceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceInfo != null) 'deviceInfo': deviceInfo!,
        if (domain != null) 'domain': domain!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (userId != null) 'userId': userId!,
      };
}

/// Additional information returned to client, such as debugging information.
///
/// Output only.
typedef ResponseMetadata = $ResponseMetadata;

/// Input only.
///
/// The Request body of the `SearchJobs` call.
class SearchJobsRequest {
  /// Controls whether to disable exact keyword match on Job.job_title,
  /// Job.description, Job.company_display_name, Job.locations,
  /// Job.qualifications.
  ///
  /// When disable keyword match is turned off, a keyword match returns jobs
  /// that do not match given category filters when there are matching keywords.
  /// For example, the query "program manager," a result is returned even if the
  /// job posting has the title "software developer," which does not fall into
  /// "program manager" ontology, but does have "program manager" appearing in
  /// its description. For queries like "cloud" that does not contain title or
  /// location specific ontology, jobs with "cloud" keyword matches are returned
  /// regardless of this flag's value. Please use
  /// Company.keyword_searchable_custom_fields or
  /// Company.keyword_searchable_custom_attributes if company specific globally
  /// matched custom field/attribute string values is needed. Enabling keyword
  /// match improves recall of subsequent search requests. Defaults to false.
  ///
  /// Optional.
  core.bool? disableKeywordMatch;

  /// Controls whether highly similar jobs are returned next to each other in
  /// the search results.
  ///
  /// Jobs are identified as highly similar based on their titles, job
  /// categories, and locations. Highly similar results are clustered so that
  /// only one representative job of the cluster is displayed to the job seeker
  /// higher up in the results, with the other jobs being displayed lower down
  /// in the results. Defaults to DiversificationLevel.SIMPLE if no value is
  /// specified.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DIVERSIFICATION_LEVEL_UNSPECIFIED" : The diversification level isn't
  /// specified. By default, jobs with this enum are ordered according to SIMPLE
  /// diversifying behavior.
  /// - "DISABLED" : Disables diversification. Jobs that would normally be
  /// pushed to the last page would not have their positions altered. This may
  /// result in highly similar jobs appearing in sequence in the search results.
  /// - "SIMPLE" : Default diversifying behavior. The result list is ordered so
  /// that highly similar results are pushed to the end of the last page of
  /// search results.
  core.String? diversificationLevel;

  /// Controls whether to broaden the search when it produces sparse results.
  ///
  /// Broadened queries append results to the end of the matching results list.
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? enableBroadening;

  /// Histogram requests for jobs matching JobQuery.
  ///
  /// Optional.
  HistogramFacets? histogramFacets;

  /// Query used to search against jobs, such as keyword, location filters, etc.
  ///
  /// Optional.
  JobQuery? jobQuery;

  /// The desired job attributes returned for jobs in the search response.
  ///
  /// Defaults to JobView.SMALL if no value is specified.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "JOB_VIEW_ID_ONLY" : A ID only view of job, with following attributes:
  /// Job.name, Job.requisition_id, Job.language_code.
  /// - "JOB_VIEW_MINIMAL" : A minimal view of the job, with the following
  /// attributes: Job.name, Job.requisition_id, Job.title, Job.company_name,
  /// Job.DerivedInfo.locations, Job.language_code.
  /// - "JOB_VIEW_SMALL" : A small view of the job, with the following
  /// attributes in the search results: Job.name, Job.requisition_id, Job.title,
  /// Job.company_name, Job.DerivedInfo.locations, Job.visibility,
  /// Job.language_code, Job.description.
  /// - "JOB_VIEW_FULL" : All available attributes are included in the search
  /// results.
  core.String? jobView;

  /// An integer that specifies the current offset (that is, starting result
  /// location, amongst the jobs deemed by the API as relevant) in search
  /// results.
  ///
  /// This field is only considered if page_token is unset. The maximum allowed
  /// value is 5000. Otherwise an error is thrown. For example, 0 means to
  /// return results starting from the first matching job, and 10 means to
  /// return from the 11th job. This can be used for pagination, (for example,
  /// pageSize = 10 and offset = 10 means to return from the second page).
  ///
  /// Optional.
  core.int? offset;

  /// The criteria determining how search results are sorted.
  ///
  /// Default is "relevance desc". Supported options are: * `"relevance desc"`:
  /// By relevance descending, as determined by the API algorithms. Relevance
  /// thresholding of query results is only available with this ordering. *
  /// `"posting_publish_time desc"`: By Job.posting_publish_time descending. *
  /// `"posting_update_time desc"`: By Job.posting_update_time descending. *
  /// `"title"`: By Job.title ascending. * `"title desc"`: By Job.title
  /// descending. * `"annualized_base_compensation"`: By job's
  /// CompensationInfo.annualized_base_compensation_range ascending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_base_compensation desc"`: By job's
  /// CompensationInfo.annualized_base_compensation_range descending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_total_compensation"`: By job's
  /// CompensationInfo.annualized_total_compensation_range ascending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_total_compensation desc"`: By job's
  /// CompensationInfo.annualized_total_compensation_range descending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results.
  ///
  /// Optional.
  core.String? orderBy;

  /// A limit on the number of jobs returned in the search results.
  ///
  /// Increasing this value above the default value of 10 can increase search
  /// response time. The value can be between 1 and 100.
  ///
  /// Optional.
  core.int? pageSize;

  /// The token specifying the current offset within search results.
  ///
  /// See SearchJobsResponse.next_page_token for an explanation of how to obtain
  /// the next set of query results.
  ///
  /// Optional.
  core.String? pageToken;

  /// The meta information collected about the job searcher, used to improve the
  /// search quality of the service.
  ///
  /// The identifiers (such as `user_id`) are provided by users, and must be
  /// unique and consistent.
  ///
  /// Required.
  RequestMetadata? requestMetadata;

  /// This field is deprecated.
  core.bool? requirePreciseResultSize;

  /// Mode of a search.
  ///
  /// Defaults to SearchMode.JOB_SEARCH.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : The mode of the search method isn't
  /// specified. The default search behavior is identical to JOB_SEARCH search
  /// behavior.
  /// - "JOB_SEARCH" : The job search matches against all jobs, and featured
  /// jobs (jobs with promotionValue \> 0) are not specially handled.
  /// - "FEATURED_JOB_SEARCH" : The job search matches only against featured
  /// jobs (jobs with a promotionValue \> 0). This method doesn't return any
  /// jobs having a promotionValue \<= 0. The search results order is determined
  /// by the promotionValue (jobs with a higher promotionValue are returned
  /// higher up in the search results), with relevance being used as a
  /// tiebreaker.
  core.String? searchMode;

  SearchJobsRequest({
    this.disableKeywordMatch,
    this.diversificationLevel,
    this.enableBroadening,
    this.histogramFacets,
    this.jobQuery,
    this.jobView,
    this.offset,
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.requestMetadata,
    this.requirePreciseResultSize,
    this.searchMode,
  });

  SearchJobsRequest.fromJson(core.Map _json)
      : this(
          disableKeywordMatch: _json.containsKey('disableKeywordMatch')
              ? _json['disableKeywordMatch'] as core.bool
              : null,
          diversificationLevel: _json.containsKey('diversificationLevel')
              ? _json['diversificationLevel'] as core.String
              : null,
          enableBroadening: _json.containsKey('enableBroadening')
              ? _json['enableBroadening'] as core.bool
              : null,
          histogramFacets: _json.containsKey('histogramFacets')
              ? HistogramFacets.fromJson(_json['histogramFacets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          jobQuery: _json.containsKey('jobQuery')
              ? JobQuery.fromJson(
                  _json['jobQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          jobView: _json.containsKey('jobView')
              ? _json['jobView'] as core.String
              : null,
          offset:
              _json.containsKey('offset') ? _json['offset'] as core.int : null,
          orderBy: _json.containsKey('orderBy')
              ? _json['orderBy'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          requestMetadata: _json.containsKey('requestMetadata')
              ? RequestMetadata.fromJson(_json['requestMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requirePreciseResultSize:
              _json.containsKey('requirePreciseResultSize')
                  ? _json['requirePreciseResultSize'] as core.bool
                  : null,
          searchMode: _json.containsKey('searchMode')
              ? _json['searchMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableKeywordMatch != null)
          'disableKeywordMatch': disableKeywordMatch!,
        if (diversificationLevel != null)
          'diversificationLevel': diversificationLevel!,
        if (enableBroadening != null) 'enableBroadening': enableBroadening!,
        if (histogramFacets != null) 'histogramFacets': histogramFacets!,
        if (jobQuery != null) 'jobQuery': jobQuery!,
        if (jobView != null) 'jobView': jobView!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
        if (requirePreciseResultSize != null)
          'requirePreciseResultSize': requirePreciseResultSize!,
        if (searchMode != null) 'searchMode': searchMode!,
      };
}

/// Response for SearchJob method.
///
/// Output only.
class SearchJobsResponse {
  /// If query broadening is enabled, we may append additional results from the
  /// broadened query.
  ///
  /// This number indicates how many of the jobs returned in the jobs field are
  /// from the broadened query. These results are always at the end of the jobs
  /// list. In particular, a value of 0, or if the field isn't set, all the jobs
  /// in the jobs list are from the original (without broadening) query. If this
  /// field is non-zero, subsequent requests with offset after this result set
  /// should contain all broadened results.
  core.int? broadenedQueryJobsCount;

  /// An estimation of the number of jobs that match the specified query.
  ///
  /// This number is not guaranteed to be accurate. For accurate results, see
  /// SearchJobsResponse.total_size.
  core.int? estimatedTotalSize;

  /// The histogram results that match specified
  /// SearchJobsRequest.histogram_facets.
  HistogramResults? histogramResults;

  /// The location filters that the service applied to the specified query.
  ///
  /// If any filters are lat-lng based, the JobLocation.location_type is
  /// JobLocation.LocationType#LOCATION_TYPE_UNSPECIFIED.
  core.List<Location>? locationFilters;

  /// The Job entities that match the specified SearchJobsRequest.
  core.List<MatchingJob>? matchingJobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// The token that specifies the starting position of the next page of
  /// results.
  ///
  /// This field is empty if there are no more results.
  core.String? nextPageToken;

  /// The spell checking result, and correction.
  SpellingCorrection? spellCorrection;

  /// The precise result count with limit 100,000.
  core.int? totalSize;

  SearchJobsResponse({
    this.broadenedQueryJobsCount,
    this.estimatedTotalSize,
    this.histogramResults,
    this.locationFilters,
    this.matchingJobs,
    this.metadata,
    this.nextPageToken,
    this.spellCorrection,
    this.totalSize,
  });

  SearchJobsResponse.fromJson(core.Map _json)
      : this(
          broadenedQueryJobsCount: _json.containsKey('broadenedQueryJobsCount')
              ? _json['broadenedQueryJobsCount'] as core.int
              : null,
          estimatedTotalSize: _json.containsKey('estimatedTotalSize')
              ? _json['estimatedTotalSize'] as core.int
              : null,
          histogramResults: _json.containsKey('histogramResults')
              ? HistogramResults.fromJson(_json['histogramResults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locationFilters: _json.containsKey('locationFilters')
              ? (_json['locationFilters'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchingJobs: _json.containsKey('matchingJobs')
              ? (_json['matchingJobs'] as core.List)
                  .map((value) => MatchingJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          spellCorrection: _json.containsKey('spellCorrection')
              ? SpellingCorrection.fromJson(_json['spellCorrection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (broadenedQueryJobsCount != null)
          'broadenedQueryJobsCount': broadenedQueryJobsCount!,
        if (estimatedTotalSize != null)
          'estimatedTotalSize': estimatedTotalSize!,
        if (histogramResults != null) 'histogramResults': histogramResults!,
        if (locationFilters != null) 'locationFilters': locationFilters!,
        if (matchingJobs != null) 'matchingJobs': matchingJobs!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spellCorrection != null) 'spellCorrection': spellCorrection!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Spell check result.
///
/// Output only.
class SpellingCorrection {
  /// Indicates if the query was corrected by the spell checker.
  core.bool? corrected;

  /// Correction output consisting of the corrected keyword string.
  core.String? correctedText;

  SpellingCorrection({
    this.corrected,
    this.correctedText,
  });

  SpellingCorrection.fromJson(core.Map _json)
      : this(
          corrected: _json.containsKey('corrected')
              ? _json['corrected'] as core.bool
              : null,
          correctedText: _json.containsKey('correctedText')
              ? _json['correctedText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (corrected != null) 'corrected': corrected!,
        if (correctedText != null) 'correctedText': correctedText!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Message representing a period of time between two timestamps.
class TimestampRange {
  /// End of the period.
  core.String? endTime;

  /// Begin of the period.
  core.String? startTime;

  TimestampRange({
    this.endTime,
    this.startTime,
  });

  TimestampRange.fromJson(core.Map _json)
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

/// Input only.
///
/// Request for updating a specified company.
class UpdateCompanyRequest {
  /// The company resource to replace the current resource in the system.
  ///
  /// Required.
  Company? company;

  /// Optional but strongly recommended for the best service experience.
  ///
  /// If update_mask is provided, only the specified fields in company are
  /// updated. Otherwise all the fields are updated. A field mask to specify the
  /// company fields to be updated. Only top level fields of Company are
  /// supported.
  core.String? updateMask;

  UpdateCompanyRequest({
    this.company,
    this.updateMask,
  });

  UpdateCompanyRequest.fromJson(core.Map _json)
      : this(
          company: _json.containsKey('company')
              ? Company.fromJson(
                  _json['company'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (company != null) 'company': company!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Input only.
///
/// Update job request.
class UpdateJobRequest {
  /// The Job to be updated.
  ///
  /// Required.
  Job? job;

  /// Optional but strongly recommended to be provided for the best service
  /// experience.
  ///
  /// If update_mask is provided, only the specified fields in job are updated.
  /// Otherwise all the fields are updated. A field mask to restrict the fields
  /// that are updated. Only top level fields of Job are supported.
  core.String? updateMask;

  UpdateJobRequest({
    this.job,
    this.updateMask,
  });

  UpdateJobRequest.fromJson(core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}
