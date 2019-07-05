// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.jobs.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client jobs/v3';

/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
class JobsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Manage job postings
  static const JobsScope = "https://www.googleapis.com/auth/jobs";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  JobsApi(http.Client client,
      {core.String rootUrl = "https://jobs.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsClientEventsResourceApi get clientEvents =>
      new ProjectsClientEventsResourceApi(_requester);
  ProjectsCompaniesResourceApi get companies =>
      new ProjectsCompaniesResourceApi(_requester);
  ProjectsJobsResourceApi get jobs => new ProjectsJobsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Completes the specified prefix with keyword suggestions.
  /// Intended for use by a job search auto-complete search box.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// Resource name of project the completion is performed within.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [languageCodes] - Optional.
  ///
  /// The list of languages of the query. This is
  /// the BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  ///
  /// For CompletionType.JOB_TITLE type, only open jobs with the same
  /// language_codes are returned.
  ///
  /// For CompletionType.COMPANY_NAME type,
  /// only companies having open jobs with the same language_codes are
  /// returned.
  ///
  /// For CompletionType.COMBINED type, only open jobs with the same
  /// language_codes or companies having open jobs with the same
  /// language_codes are returned.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// [companyName] - Optional.
  ///
  /// If provided, restricts completion to specified company.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  ///
  /// [scope] - Optional.
  ///
  /// The scope of the completion. The defaults is CompletionScope.PUBLIC.
  /// Possible string values are:
  /// - "COMPLETION_SCOPE_UNSPECIFIED" : A COMPLETION_SCOPE_UNSPECIFIED.
  /// - "TENANT" : A TENANT.
  /// - "PUBLIC" : A PUBLIC.
  ///
  /// [pageSize] - Required.
  ///
  /// Completion result count.
  ///
  /// The maximum allowed page size is 10.
  ///
  /// [query] - Required.
  ///
  /// The query used to generate suggestions.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// [languageCode] - Deprecated. Use language_codes instead.
  ///
  /// Optional.
  ///
  /// The language of the query. This is
  /// the BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  ///
  /// For CompletionType.JOB_TITLE type, only open jobs with the same
  /// language_code are returned.
  ///
  /// For CompletionType.COMPANY_NAME type,
  /// only companies having open jobs with the same language_code are
  /// returned.
  ///
  /// For CompletionType.COMBINED type, only open jobs with the same
  /// language_code or companies having open jobs with the same
  /// language_code are returned.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// [type] - Optional.
  ///
  /// The completion topic. The default is CompletionType.COMBINED.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : A COMPLETION_TYPE_UNSPECIFIED.
  /// - "JOB_TITLE" : A JOB_TITLE.
  /// - "COMPANY_NAME" : A COMPANY_NAME.
  /// - "COMBINED" : A COMBINED.
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
  async.Future<CompleteQueryResponse> complete(core.String name,
      {core.List<core.String> languageCodes,
      core.String companyName,
      core.String scope,
      core.int pageSize,
      core.String query,
      core.String languageCode,
      core.String type,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (languageCodes != null) {
      _queryParams["languageCodes"] = languageCodes;
    }
    if (companyName != null) {
      _queryParams["companyName"] = [companyName];
    }
    if (scope != null) {
      _queryParams["scope"] = [scope];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (type != null) {
      _queryParams["type"] = [type];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name') + ':complete';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CompleteQueryResponse.fromJson(data));
  }
}

class ProjectsClientEventsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsClientEventsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Report events issued when end user interacts with customer's application
  /// that uses Cloud Talent Solution. You may inspect the created events in
  /// [self service
  /// tools](https://console.cloud.google.com/talent-solution/overview).
  /// [Learn
  /// more](https://cloud.google.com/talent-solution/docs/management-tools)
  /// about self service tools.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent project name.
  /// Value must have pattern "^projects/[^/]+$".
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
      CreateClientEventRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/clientEvents';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClientEvent.fromJson(data));
  }
}

class ProjectsCompaniesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsCompaniesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new company entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// Resource name of the project under which the company is created.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Company> create(CreateCompanyRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v3/' + commons.Escaper.ecapeVariableReserved('$parent') + '/companies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }

  /// Deletes specified company.
  /// Prerequisite: The company has no jobs associated with it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the company to be deleted.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern "^projects/[^/]+/companies/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves specified company.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the company to be retrieved.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern "^projects/[^/]+/companies/[^/]+$".
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
  async.Future<Company> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }

  /// Lists all companies associated with the service account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// Resource name of the project under which the company is created.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - Optional.
  ///
  /// The starting indicator from which to return results.
  ///
  /// [pageSize] - Optional.
  ///
  /// The maximum number of companies to be returned, at most 100.
  /// Default is 100 if a non-positive number is provided.
  ///
  /// [requireOpenJobs] - Optional.
  ///
  /// Set to true if the companies requested must have open jobs.
  ///
  /// Defaults to false.
  ///
  /// If true, at most page_size of companies are fetched, among which
  /// only those with open jobs are returned.
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
  async.Future<ListCompaniesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.bool requireOpenJobs,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (requireOpenJobs != null) {
      _queryParams["requireOpenJobs"] = ["${requireOpenJobs}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v3/' + commons.Escaper.ecapeVariableReserved('$parent') + '/companies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCompaniesResponse.fromJson(data));
  }

  /// Updates specified company. Company names can't be updated. To update a
  /// company name, delete the company and all jobs associated with it, and only
  /// then re-create them.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during company update.
  ///
  /// The resource name for a company. This is generated by the service when a
  /// company is created.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  /// Value must have pattern "^projects/[^/]+/companies/[^/]+$".
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
  async.Future<Company> patch(UpdateCompanyRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }
}

class ProjectsJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a list of Jobs by filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The resource name of the project under which the job is created.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
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
      BatchDeleteJobsRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/jobs:batchDelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  /// [parent] - Required.
  ///
  /// The resource name of the project under which the job is created.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Job> create(CreateJobRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jobs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Deletes the specified job.
  ///
  /// Typically, the job becomes unsearchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the job to be deleted.
  ///
  /// The format is "projects/{project_id}/jobs/{job_id}",
  /// for example, "projects/api-test-project/jobs/1234".
  /// Value must have pattern "^projects/[^/]+/jobs/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves the specified job, whose status is OPEN or recently EXPIRED
  /// within the last 90 days.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the job to retrieve.
  ///
  /// The format is "projects/{project_id}/jobs/{job_id}",
  /// for example, "projects/api-test-project/jobs/1234".
  /// Value must have pattern "^projects/[^/]+/jobs/[^/]+$".
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
  async.Future<Job> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Lists jobs by filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The resource name of the project under which the job is created.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [jobView] - Optional.
  ///
  /// The desired job attributes returned for jobs in the
  /// search response. Defaults to JobView.JOB_VIEW_FULL if no value is
  /// specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : A JOB_VIEW_UNSPECIFIED.
  /// - "JOB_VIEW_ID_ONLY" : A JOB_VIEW_ID_ONLY.
  /// - "JOB_VIEW_MINIMAL" : A JOB_VIEW_MINIMAL.
  /// - "JOB_VIEW_SMALL" : A JOB_VIEW_SMALL.
  /// - "JOB_VIEW_FULL" : A JOB_VIEW_FULL.
  ///
  /// [pageToken] - Optional.
  ///
  /// The starting point of a query result.
  ///
  /// [pageSize] - Optional.
  ///
  /// The maximum number of jobs to be returned per page of results.
  ///
  /// If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed
  /// page size is 1000. Otherwise, the maximum allowed page size is 100.
  ///
  /// Default is 100 if empty or a number < 1 is specified.
  ///
  /// [filter] - Required.
  ///
  /// The filter string specifies the jobs to be enumerated.
  ///
  /// Supported operator: =, AND
  ///
  /// The fields eligible for filtering are:
  ///
  /// * `companyName` (Required)
  /// * `requisitionId` (Optional)
  ///
  /// Sample Query:
  ///
  /// * companyName = "projects/api-test-project/companies/123"
  /// * companyName = "projects/api-test-project/companies/123" AND
  /// requisitionId
  /// = "req-1"
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
  async.Future<ListJobsResponse> list(core.String parent,
      {core.String jobView,
      core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (jobView != null) {
      _queryParams["jobView"] = [jobView];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
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
  /// [name] - Required during job update.
  ///
  /// The resource name for the job. This is generated by the service when a
  /// job is created.
  ///
  /// The format is "projects/{project_id}/jobs/{job_id}",
  /// for example, "projects/api-test-project/jobs/1234".
  ///
  /// Use of this field in job queries and API calls is preferred over the use
  /// of
  /// requisition_id since this value is unique.
  /// Value must have pattern "^projects/[^/]+/jobs/[^/]+$".
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
  async.Future<Job> patch(UpdateJobRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This call constrains the visibility of jobs
  /// present in the database, and only returns jobs that the caller has
  /// permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The resource name of the project to search within.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
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
      SearchJobsRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/jobs:search';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchJobsResponse.fromJson(data));
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This API call is intended for the use case of targeting passive job
  /// seekers (for example, job seekers who have signed up to receive email
  /// alerts about potential job opportunities), and has different algorithmic
  /// adjustments that are targeted to passive job seekers.
  ///
  /// This call constrains the visibility of jobs
  /// present in the database, and only returns jobs the caller has
  /// permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The resource name of the project to search within.
  ///
  /// The format is "projects/{project_id}", for example,
  /// "projects/api-test-project".
  /// Value must have pattern "^projects/[^/]+$".
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
      SearchJobsRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/jobs:searchForAlert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchJobsResponse.fromJson(data));
  }
}

/// Application related details of a job posting.
class ApplicationInfo {
  /// Optional but at least one of uris,
  /// emails or instruction must be
  /// specified.
  ///
  /// Use this field to specify email address(es) to which resumes or
  /// applications can be sent.
  ///
  /// The maximum number of allowed characters for each entry is 255.
  core.List<core.String> emails;

  /// Optional but at least one of uris,
  /// emails or instruction must be
  /// specified.
  ///
  /// Use this field to provide instructions, such as "Mail your application
  /// to ...", that a candidate can follow to apply for the job.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts
  /// bold, italic, ordered list, and unordered list markup tags.
  ///
  /// The maximum number of allowed characters is 3,000.
  core.String instruction;

  /// Optional but at least one of uris,
  /// emails or instruction must be
  /// specified.
  ///
  /// Use this URI field to direct an applicant to a website, for example to
  /// link to an online application form.
  ///
  /// The maximum number of allowed characters for each entry is 2,000.
  core.List<core.String> uris;

  ApplicationInfo();

  ApplicationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("emails")) {
      emails = (_json["emails"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("instruction")) {
      instruction = _json["instruction"];
    }
    if (_json.containsKey("uris")) {
      uris = (_json["uris"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emails != null) {
      _json["emails"] = emails;
    }
    if (instruction != null) {
      _json["instruction"] = instruction;
    }
    if (uris != null) {
      _json["uris"] = uris;
    }
    return _json;
  }
}

/// Input only.
///
/// Batch delete jobs request.
class BatchDeleteJobsRequest {
  /// Required.
  ///
  /// The filter string specifies the jobs to be deleted.
  ///
  /// Supported operator: =, AND
  ///
  /// The fields eligible for filtering are:
  ///
  /// * `companyName` (Required)
  /// * `requisitionId` (Required)
  ///
  /// Sample Query: companyName = "projects/api-test-project/companies/123" AND
  /// requisitionId = "req-1"
  core.String filter;

  BatchDeleteJobsRequest();

  BatchDeleteJobsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = filter;
    }
    return _json;
  }
}

/// Represents starting and ending value of a range in double.
class BucketRange {
  /// Starting value of the bucket range.
  core.double from;

  /// Ending value of the bucket range.
  core.double to;

  BucketRange();

  BucketRange.fromJson(core.Map _json) {
    if (_json.containsKey("from")) {
      from = _json["from"].toDouble();
    }
    if (_json.containsKey("to")) {
      to = _json["to"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (from != null) {
      _json["from"] = from;
    }
    if (to != null) {
      _json["to"] = to;
    }
    return _json;
  }
}

/// Represents count of jobs within one bucket.
class BucketizedCount {
  /// Number of jobs whose numeric field value fall into `range`.
  core.int count;

  /// Bucket range on which histogram was performed for the numeric field,
  /// that is, the count represents number of jobs in this range.
  BucketRange range;

  BucketizedCount();

  BucketizedCount.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("range")) {
      range = new BucketRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// An event issued when an end user interacts with the application that
/// implements Cloud Talent Solution. Providing this information improves the
/// quality of search and recommendation for the API clients, enabling the
/// service to perform optimally. The number of events sent must be consistent
/// with other calls, such as job searches, issued to the service by the client.
class ClientEvent {
  /// Required.
  ///
  /// The timestamp of the event.
  core.String createTime;

  /// Required.
  ///
  /// A unique identifier, generated by the client application. This `event_id`
  /// is used to establish the relationship between different events
  /// (see parent_event_id).
  core.String eventId;

  /// Optional.
  ///
  /// Extra information about this event. Used for storing information with no
  /// matching field in event payload, for example, user application specific
  /// context or details.
  ///
  /// At most 20 keys are supported. The maximum total size of all keys and
  /// values is 2 KB.
  core.Map<core.String, core.String> extraInfo;

  /// A event issued when a job seeker interacts with the application that
  /// implements Cloud Talent Solution.
  JobEvent jobEvent;

  /// Optional.
  ///
  /// The event_id of an event that resulted in the current event. For example,
  /// a
  /// Job view event usually follows a parent
  /// impression event: A job seeker first does a
  /// search where a list of jobs appears
  /// (impression). The job seeker then selects a
  /// result and views the description of a particular job (Job
  /// view).
  core.String parentEventId;

  /// Required.
  ///
  /// A unique ID generated in the API responses. It can be found in
  /// ResponseMetadata.request_id.
  core.String requestId;

  ClientEvent();

  ClientEvent.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("eventId")) {
      eventId = _json["eventId"];
    }
    if (_json.containsKey("extraInfo")) {
      extraInfo =
          (_json["extraInfo"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("jobEvent")) {
      jobEvent = new JobEvent.fromJson(_json["jobEvent"]);
    }
    if (_json.containsKey("parentEventId")) {
      parentEventId = _json["parentEventId"];
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (eventId != null) {
      _json["eventId"] = eventId;
    }
    if (extraInfo != null) {
      _json["extraInfo"] = extraInfo;
    }
    if (jobEvent != null) {
      _json["jobEvent"] = (jobEvent).toJson();
    }
    if (parentEventId != null) {
      _json["parentEventId"] = parentEventId;
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    return _json;
  }
}

/// Input only.
///
/// Parameters needed for commute search.
class CommuteFilter {
  /// Optional.
  /// If true, jobs without "precise" addresses (street level addresses or GPS
  /// coordinates) might also be returned. For city and coarser level addresses,
  /// text matching is used. If this field is set to false or is not specified,
  /// only jobs that include precise addresses are returned by Commute
  /// Search.
  ///
  /// Note: If `allow_imprecise_addresses` is set to true, Commute Search is not
  /// able to calculate accurate commute times to jobs with city level and
  /// coarser address information. Jobs with imprecise addresses will return a
  /// `travel_duration` time of 0 regardless of distance from the job seeker.
  core.bool allowImpreciseAddresses;

  /// Required.
  ///
  /// The method of transportation for which to calculate the commute time.
  /// Possible string values are:
  /// - "COMMUTE_METHOD_UNSPECIFIED" : Commute method is not specified.
  /// - "DRIVING" : Commute time is calculated based on driving time.
  /// - "TRANSIT" : Commute time is calculated based on public transit including
  /// bus, metro,
  /// subway, etc.
  core.String commuteMethod;

  /// Optional.
  ///
  /// The departure time used to calculate traffic impact, represented as
  /// google.type.TimeOfDay in local time zone.
  ///
  /// Currently traffic model is restricted to hour level resolution.
  TimeOfDay departureTime;

  /// Optional.
  ///
  /// Specifies the traffic density to use when calculating commute time.
  /// Possible string values are:
  /// - "ROAD_TRAFFIC_UNSPECIFIED" : Road traffic situation is not specified.
  /// - "TRAFFIC_FREE" : Optimal commute time without considering any traffic
  /// impact.
  /// - "BUSY_HOUR" : Commute time calculation takes in account the peak traffic
  /// impact.
  core.String roadTraffic;

  /// Required.
  ///
  /// The latitude and longitude of the location from which to calculate the
  /// commute time.
  LatLng startCoordinates;

  /// Required.
  ///
  /// The maximum travel time in seconds. The maximum allowed value is `3600s`
  /// (one hour). Format is `123s`.
  core.String travelDuration;

  CommuteFilter();

  CommuteFilter.fromJson(core.Map _json) {
    if (_json.containsKey("allowImpreciseAddresses")) {
      allowImpreciseAddresses = _json["allowImpreciseAddresses"];
    }
    if (_json.containsKey("commuteMethod")) {
      commuteMethod = _json["commuteMethod"];
    }
    if (_json.containsKey("departureTime")) {
      departureTime = new TimeOfDay.fromJson(_json["departureTime"]);
    }
    if (_json.containsKey("roadTraffic")) {
      roadTraffic = _json["roadTraffic"];
    }
    if (_json.containsKey("startCoordinates")) {
      startCoordinates = new LatLng.fromJson(_json["startCoordinates"]);
    }
    if (_json.containsKey("travelDuration")) {
      travelDuration = _json["travelDuration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowImpreciseAddresses != null) {
      _json["allowImpreciseAddresses"] = allowImpreciseAddresses;
    }
    if (commuteMethod != null) {
      _json["commuteMethod"] = commuteMethod;
    }
    if (departureTime != null) {
      _json["departureTime"] = (departureTime).toJson();
    }
    if (roadTraffic != null) {
      _json["roadTraffic"] = roadTraffic;
    }
    if (startCoordinates != null) {
      _json["startCoordinates"] = (startCoordinates).toJson();
    }
    if (travelDuration != null) {
      _json["travelDuration"] = travelDuration;
    }
    return _json;
  }
}

/// Output only.
///
/// Commute details related to this job.
class CommuteInfo {
  /// Location used as the destination in the commute calculation.
  Location jobLocation;

  /// The number of seconds required to travel to the job location from the
  /// query location. A duration of 0 seconds indicates that the job is not
  /// reachable within the requested duration, but was returned as part of an
  /// expanded query.
  core.String travelDuration;

  CommuteInfo();

  CommuteInfo.fromJson(core.Map _json) {
    if (_json.containsKey("jobLocation")) {
      jobLocation = new Location.fromJson(_json["jobLocation"]);
    }
    if (_json.containsKey("travelDuration")) {
      travelDuration = _json["travelDuration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobLocation != null) {
      _json["jobLocation"] = (jobLocation).toJson();
    }
    if (travelDuration != null) {
      _json["travelDuration"] = travelDuration;
    }
    return _json;
  }
}

/// A Company resource represents a company in the service. A company is the
/// entity that owns job postings, that is, the hiring entity responsible for
/// employing applicants for the job position.
class Company {
  /// Optional.
  ///
  /// The URI to employer's career site or careers page on the employer's web
  /// site, for example, "https://careers.google.com".
  core.String careerSiteUri;

  /// Output only. Derived details about the company.
  CompanyDerivedInfo derivedInfo;

  /// Required.
  ///
  /// The display name of the company, for example, "Google, LLC".
  core.String displayName;

  /// Optional.
  ///
  /// Equal Employment Opportunity legal disclaimer text to be
  /// associated with all jobs, and typically to be displayed in all
  /// roles.
  ///
  /// The maximum number of allowed characters is 500.
  core.String eeoText;

  /// Required.
  ///
  /// Client side company identifier, used to uniquely identify the
  /// company.
  ///
  /// The maximum number of allowed characters is 255.
  core.String externalId;

  /// Optional.
  ///
  /// The street address of the company's main headquarters, which may be
  /// different from the job location. The service attempts
  /// to geolocate the provided address, and populates a more specific
  /// location wherever possible in DerivedInfo.headquarters_location.
  core.String headquartersAddress;

  /// Optional.
  ///
  /// Set to true if it is the hiring agency that post jobs for other
  /// employers.
  ///
  /// Defaults to false if not provided.
  core.bool hiringAgency;

  /// Optional.
  ///
  /// A URI that hosts the employer's company logo.
  core.String imageUri;

  /// Optional.
  ///
  /// A list of keys of filterable Job.custom_attributes, whose
  /// corresponding `string_values` are used in keyword search. Jobs with
  /// `string_values` under these specified field keys are returned if any
  /// of the values matches the search keyword. Custom field values with
  /// parenthesis, brackets and special symbols won't be properly searchable,
  /// and those keyword queries need to be surrounded by quotes.
  core.List<core.String> keywordSearchableJobCustomAttributes;

  /// Required during company update.
  ///
  /// The resource name for a company. This is generated by the service when a
  /// company is created.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  core.String name;

  /// Optional.
  ///
  /// The employer's company size.
  /// Possible string values are:
  /// - "COMPANY_SIZE_UNSPECIFIED" : Default value if the size is not specified.
  /// - "MINI" : The company has less than 50 employees.
  /// - "SMALL" : The company has between 50 and 99 employees.
  /// - "SMEDIUM" : The company has between 100 and 499 employees.
  /// - "MEDIUM" : The company has between 500 and 999 employees.
  /// - "BIG" : The company has between 1,000 and 4,999 employees.
  /// - "BIGGER" : The company has between 5,000 and 9,999 employees.
  /// - "GIANT" : The company has 10,000 or more employees.
  core.String size;

  /// Output only. Indicates whether a company is flagged to be suspended from
  /// public availability by the service when job content appears suspicious,
  /// abusive, or spammy.
  core.bool suspended;

  /// Optional.
  ///
  /// The URI representing the company's primary web site or home page,
  /// for example, "https://www.google.com".
  ///
  /// The maximum number of allowed characters is 255.
  core.String websiteUri;

  Company();

  Company.fromJson(core.Map _json) {
    if (_json.containsKey("careerSiteUri")) {
      careerSiteUri = _json["careerSiteUri"];
    }
    if (_json.containsKey("derivedInfo")) {
      derivedInfo = new CompanyDerivedInfo.fromJson(_json["derivedInfo"]);
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("eeoText")) {
      eeoText = _json["eeoText"];
    }
    if (_json.containsKey("externalId")) {
      externalId = _json["externalId"];
    }
    if (_json.containsKey("headquartersAddress")) {
      headquartersAddress = _json["headquartersAddress"];
    }
    if (_json.containsKey("hiringAgency")) {
      hiringAgency = _json["hiringAgency"];
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("keywordSearchableJobCustomAttributes")) {
      keywordSearchableJobCustomAttributes =
          (_json["keywordSearchableJobCustomAttributes"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("suspended")) {
      suspended = _json["suspended"];
    }
    if (_json.containsKey("websiteUri")) {
      websiteUri = _json["websiteUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (careerSiteUri != null) {
      _json["careerSiteUri"] = careerSiteUri;
    }
    if (derivedInfo != null) {
      _json["derivedInfo"] = (derivedInfo).toJson();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (eeoText != null) {
      _json["eeoText"] = eeoText;
    }
    if (externalId != null) {
      _json["externalId"] = externalId;
    }
    if (headquartersAddress != null) {
      _json["headquartersAddress"] = headquartersAddress;
    }
    if (hiringAgency != null) {
      _json["hiringAgency"] = hiringAgency;
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (keywordSearchableJobCustomAttributes != null) {
      _json["keywordSearchableJobCustomAttributes"] =
          keywordSearchableJobCustomAttributes;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (suspended != null) {
      _json["suspended"] = suspended;
    }
    if (websiteUri != null) {
      _json["websiteUri"] = websiteUri;
    }
    return _json;
  }
}

/// Derived details about the company.
class CompanyDerivedInfo {
  /// A structured headquarters location of the company, resolved from
  /// Company.hq_location if provided.
  Location headquartersLocation;

  CompanyDerivedInfo();

  CompanyDerivedInfo.fromJson(core.Map _json) {
    if (_json.containsKey("headquartersLocation")) {
      headquartersLocation =
          new Location.fromJson(_json["headquartersLocation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (headquartersLocation != null) {
      _json["headquartersLocation"] = (headquartersLocation).toJson();
    }
    return _json;
  }
}

/// A compensation entry that represents one component of compensation, such
/// as base pay, bonus, or other compensation type.
///
/// Annualization: One compensation entry can be annualized if
/// - it contains valid amount or range.
/// - and its expected_units_per_year is set or can be derived.
/// Its annualized range is determined as (amount or range) times
/// expected_units_per_year.
class CompensationEntry {
  /// Optional.
  ///
  /// Compensation amount.
  Money amount;

  /// Optional.
  ///
  /// Compensation description.  For example, could
  /// indicate equity terms or provide additional context to an estimated
  /// bonus.
  core.String description;

  /// Optional.
  ///
  /// Expected number of units paid each year. If not specified, when
  /// Job.employment_types is FULLTIME, a default value is inferred
  /// based on unit. Default values:
  /// - HOURLY: 2080
  /// - DAILY: 260
  /// - WEEKLY: 52
  /// - MONTHLY: 12
  /// - ANNUAL: 1
  core.double expectedUnitsPerYear;

  /// Optional.
  ///
  /// Compensation range.
  CompensationRange range;

  /// Optional.
  ///
  /// Compensation type.
  ///
  /// Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  /// Possible string values are:
  /// - "COMPENSATION_TYPE_UNSPECIFIED" : Default value.
  /// - "BASE" : Base compensation: Refers to the fixed amount of money paid to
  /// an
  /// employee by an employer in return for work performed. Base compensation
  /// does not include benefits, bonuses or any other potential compensation
  /// from an employer.
  /// - "BONUS" : Bonus.
  /// - "SIGNING_BONUS" : Signing bonus.
  /// - "EQUITY" : Equity.
  /// - "PROFIT_SHARING" : Profit sharing.
  /// - "COMMISSIONS" : Commission.
  /// - "TIPS" : Tips.
  /// - "OTHER_COMPENSATION_TYPE" : Other compensation type.
  core.String type;

  /// Optional.
  ///
  /// Frequency of the specified amount.
  ///
  /// Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  /// Possible string values are:
  /// - "COMPENSATION_UNIT_UNSPECIFIED" : Default value.
  /// - "HOURLY" : Hourly.
  /// - "DAILY" : Daily.
  /// - "WEEKLY" : Weekly
  /// - "MONTHLY" : Monthly.
  /// - "YEARLY" : Yearly.
  /// - "ONE_TIME" : One time.
  /// - "OTHER_COMPENSATION_UNIT" : Other compensation units.
  core.String unit;

  CompensationEntry();

  CompensationEntry.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new Money.fromJson(_json["amount"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expectedUnitsPerYear")) {
      expectedUnitsPerYear = _json["expectedUnitsPerYear"].toDouble();
    }
    if (_json.containsKey("range")) {
      range = new CompensationRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = (amount).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (expectedUnitsPerYear != null) {
      _json["expectedUnitsPerYear"] = expectedUnitsPerYear;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    return _json;
  }
}

/// Input only.
///
/// Filter on job compensation type and amount.
class CompensationFilter {
  /// Optional.
  ///
  /// If set to true, jobs with unspecified compensation range fields are
  /// included.
  core.bool includeJobsWithUnspecifiedCompensationRange;

  /// Optional.
  ///
  /// Compensation range.
  CompensationRange range;

  /// Required.
  ///
  /// Type of filter.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Filter type unspecified. Position holder,
  /// INVALID, should never be used.
  /// - "UNIT_ONLY" : Filter by `base compensation entry's` unit. A job is a
  /// match if and
  /// only if the job contains a base CompensationEntry and the base
  /// CompensationEntry's unit matches provided units.
  /// Populate one or more units.
  ///
  /// See CompensationInfo.CompensationEntry for definition of
  /// base compensation entry.
  /// - "UNIT_AND_AMOUNT" : Filter by `base compensation entry's` unit and
  /// amount / range. A job
  /// is a match if and only if the job contains a base CompensationEntry, and
  /// the base entry's unit matches provided compensation_units and amount
  /// or range overlaps with provided compensation_range.
  ///
  /// See CompensationInfo.CompensationEntry for definition of
  /// base compensation entry.
  ///
  /// Set exactly one units and populate range.
  /// - "ANNUALIZED_BASE_AMOUNT" : Filter by annualized base compensation amount
  /// and `base compensation
  /// entry's` unit. Populate range and zero or more units.
  /// - "ANNUALIZED_TOTAL_AMOUNT" : Filter by annualized total compensation
  /// amount and `base compensation
  /// entry's` unit . Populate range and zero or more units.
  core.String type;

  /// Required.
  ///
  /// Specify desired `base compensation entry's`
  /// CompensationInfo.CompensationUnit.
  core.List<core.String> units;

  CompensationFilter();

  CompensationFilter.fromJson(core.Map _json) {
    if (_json.containsKey("includeJobsWithUnspecifiedCompensationRange")) {
      includeJobsWithUnspecifiedCompensationRange =
          _json["includeJobsWithUnspecifiedCompensationRange"];
    }
    if (_json.containsKey("range")) {
      range = new CompensationRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("units")) {
      units = (_json["units"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeJobsWithUnspecifiedCompensationRange != null) {
      _json["includeJobsWithUnspecifiedCompensationRange"] =
          includeJobsWithUnspecifiedCompensationRange;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/// Input only.
///
/// Compensation based histogram request.
class CompensationHistogramRequest {
  /// Required.
  ///
  /// Numeric histogram options, like buckets, whether include min or max value.
  NumericBucketingOption bucketingOption;

  /// Required.
  ///
  /// Type of the request, representing which field the histogramming should be
  /// performed over. A single request can only specify one histogram of each
  /// `CompensationHistogramRequestType`.
  /// Possible string values are:
  /// - "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" : Default value.
  /// Invalid.
  /// - "BASE" : Histogram by job's base compensation. See CompensationEntry for
  /// definition of base compensation.
  /// - "ANNUALIZED_BASE" : Histogram by job's annualized base compensation. See
  /// CompensationEntry
  /// for definition of annualized base compensation.
  /// - "ANNUALIZED_TOTAL" : Histogram by job's annualized total compensation.
  /// See CompensationEntry
  /// for definition of annualized total compensation.
  core.String type;

  CompensationHistogramRequest();

  CompensationHistogramRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bucketingOption")) {
      bucketingOption =
          new NumericBucketingOption.fromJson(_json["bucketingOption"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketingOption != null) {
      _json["bucketingOption"] = (bucketingOption).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Output only.
///
/// Compensation based histogram result.
class CompensationHistogramResult {
  /// Histogram result.
  NumericBucketingResult result;

  /// Type of the request, corresponding to
  /// CompensationHistogramRequest.type.
  /// Possible string values are:
  /// - "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" : Default value.
  /// Invalid.
  /// - "BASE" : Histogram by job's base compensation. See CompensationEntry for
  /// definition of base compensation.
  /// - "ANNUALIZED_BASE" : Histogram by job's annualized base compensation. See
  /// CompensationEntry
  /// for definition of annualized base compensation.
  /// - "ANNUALIZED_TOTAL" : Histogram by job's annualized total compensation.
  /// See CompensationEntry
  /// for definition of annualized total compensation.
  core.String type;

  CompensationHistogramResult();

  CompensationHistogramResult.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = new NumericBucketingResult.fromJson(_json["result"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Job compensation details.
class CompensationInfo {
  /// Output only. Annualized base compensation range. Computed as
  /// base compensation entry's CompensationEntry.compensation times
  /// CompensationEntry.expected_units_per_year.
  ///
  /// See CompensationEntry for explanation on compensation annualization.
  CompensationRange annualizedBaseCompensationRange;

  /// Output only. Annualized total compensation range. Computed as
  /// all compensation entries' CompensationEntry.compensation times
  /// CompensationEntry.expected_units_per_year.
  ///
  /// See CompensationEntry for explanation on compensation annualization.
  CompensationRange annualizedTotalCompensationRange;

  /// Optional.
  ///
  /// Job compensation information.
  ///
  /// At most one entry can be of type
  /// CompensationInfo.CompensationType.BASE, which is
  /// referred as ** base compensation entry ** for the job.
  core.List<CompensationEntry> entries;

  CompensationInfo();

  CompensationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("annualizedBaseCompensationRange")) {
      annualizedBaseCompensationRange = new CompensationRange.fromJson(
          _json["annualizedBaseCompensationRange"]);
    }
    if (_json.containsKey("annualizedTotalCompensationRange")) {
      annualizedTotalCompensationRange = new CompensationRange.fromJson(
          _json["annualizedTotalCompensationRange"]);
    }
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List)
          .map<CompensationEntry>(
              (value) => new CompensationEntry.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annualizedBaseCompensationRange != null) {
      _json["annualizedBaseCompensationRange"] =
          (annualizedBaseCompensationRange).toJson();
    }
    if (annualizedTotalCompensationRange != null) {
      _json["annualizedTotalCompensationRange"] =
          (annualizedTotalCompensationRange).toJson();
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Compensation range.
class CompensationRange {
  /// Optional.
  ///
  /// The maximum amount of compensation. If left empty, the value is set
  /// to a maximal compensation value and the currency code is set to
  /// match the currency code of
  /// min_compensation.
  Money maxCompensation;

  /// Optional.
  ///
  /// The minimum amount of compensation. If left empty, the value is set
  /// to zero and the currency code is set to match the
  /// currency code of max_compensation.
  Money minCompensation;

  CompensationRange();

  CompensationRange.fromJson(core.Map _json) {
    if (_json.containsKey("maxCompensation")) {
      maxCompensation = new Money.fromJson(_json["maxCompensation"]);
    }
    if (_json.containsKey("minCompensation")) {
      minCompensation = new Money.fromJson(_json["minCompensation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxCompensation != null) {
      _json["maxCompensation"] = (maxCompensation).toJson();
    }
    if (minCompensation != null) {
      _json["minCompensation"] = (minCompensation).toJson();
    }
    return _json;
  }
}

/// Output only.
///
/// Response of auto-complete query.
class CompleteQueryResponse {
  /// Results of the matching job/company candidates.
  core.List<CompletionResult> completionResults;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  CompleteQueryResponse();

  CompleteQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("completionResults")) {
      completionResults = (_json["completionResults"] as core.List)
          .map<CompletionResult>(
              (value) => new CompletionResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata = new ResponseMetadata.fromJson(_json["metadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (completionResults != null) {
      _json["completionResults"] =
          completionResults.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    return _json;
  }
}

/// Output only.
///
/// Resource that represents completion results.
class CompletionResult {
  /// The URI of the company image for CompletionType.COMPANY_NAME.
  core.String imageUri;

  /// The suggestion for the query.
  core.String suggestion;

  /// The completion topic.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : Default value.
  /// - "JOB_TITLE" : Only suggest job titles.
  /// - "COMPANY_NAME" : Only suggest company names.
  /// - "COMBINED" : Suggest both job titles and company names.
  core.String type;

  CompletionResult();

  CompletionResult.fromJson(core.Map _json) {
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
    if (_json.containsKey("suggestion")) {
      suggestion = _json["suggestion"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    if (suggestion != null) {
      _json["suggestion"] = suggestion;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The report event request.
class CreateClientEventRequest {
  /// Required.
  ///
  /// Events issued when end user interacts with customer's application that
  /// uses Cloud Talent Solution.
  ClientEvent clientEvent;

  CreateClientEventRequest();

  CreateClientEventRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clientEvent")) {
      clientEvent = new ClientEvent.fromJson(_json["clientEvent"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientEvent != null) {
      _json["clientEvent"] = (clientEvent).toJson();
    }
    return _json;
  }
}

/// Input only.
///
/// The Request of the CreateCompany method.
class CreateCompanyRequest {
  /// Required.
  ///
  /// The company to be created.
  Company company;

  CreateCompanyRequest();

  CreateCompanyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("company")) {
      company = new Company.fromJson(_json["company"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (company != null) {
      _json["company"] = (company).toJson();
    }
    return _json;
  }
}

/// Input only.
///
/// Create job request.
class CreateJobRequest {
  /// Required.
  ///
  /// The Job to be created.
  Job job;

  CreateJobRequest();

  CreateJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    return _json;
  }
}

/// Custom attribute values that are either filterable or non-filterable.
class CustomAttribute {
  /// Optional.
  ///
  /// If the `filterable` flag is true, custom field values are searchable.
  /// If false, values are not searchable.
  ///
  /// Default is false.
  core.bool filterable;

  /// Optional but exactly one of string_values or long_values must
  /// be specified.
  ///
  /// This field is used to perform number range search.
  /// (`EQ`, `GT`, `GE`, `LE`, `LT`) over filterable `long_value`.
  ///
  /// Currently at most 1 long_values is supported.
  core.List<core.String> longValues;

  /// Optional but exactly one of string_values or long_values must
  /// be specified.
  ///
  /// This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or
  /// `CASE_INSENSITIVE_MATCH`) search.
  /// For filterable `string_value`s, a maximum total number of 200 values
  /// is allowed, with each `string_value` has a byte size of no more than
  /// 255B. For unfilterable `string_values`, the maximum total byte size of
  /// unfilterable `string_values` is 50KB.
  ///
  /// Empty string is not allowed.
  core.List<core.String> stringValues;

  CustomAttribute();

  CustomAttribute.fromJson(core.Map _json) {
    if (_json.containsKey("filterable")) {
      filterable = _json["filterable"];
    }
    if (_json.containsKey("longValues")) {
      longValues = (_json["longValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("stringValues")) {
      stringValues = (_json["stringValues"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterable != null) {
      _json["filterable"] = filterable;
    }
    if (longValues != null) {
      _json["longValues"] = longValues;
    }
    if (stringValues != null) {
      _json["stringValues"] = stringValues;
    }
    return _json;
  }
}

/// Custom attributes histogram request. An error is thrown if neither
/// string_value_histogram or long_value_histogram_bucketing_option has
/// been defined.
class CustomAttributeHistogramRequest {
  /// Required.
  ///
  /// Specifies the custom field key to perform a histogram on. If specified
  /// without `long_value_histogram_bucketing_option`, histogram on string
  /// values
  /// of the given `key` is triggered, otherwise histogram is performed on long
  /// values.
  core.String key;

  /// Optional.
  ///
  /// Specifies buckets used to perform a range histogram on Job's
  /// filterable long custom field values, or min/max value requirements.
  NumericBucketingOption longValueHistogramBucketingOption;

  /// Optional. If set to true, the response includes the histogram value for
  /// each key as a string.
  core.bool stringValueHistogram;

  CustomAttributeHistogramRequest();

  CustomAttributeHistogramRequest.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("longValueHistogramBucketingOption")) {
      longValueHistogramBucketingOption = new NumericBucketingOption.fromJson(
          _json["longValueHistogramBucketingOption"]);
    }
    if (_json.containsKey("stringValueHistogram")) {
      stringValueHistogram = _json["stringValueHistogram"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (longValueHistogramBucketingOption != null) {
      _json["longValueHistogramBucketingOption"] =
          (longValueHistogramBucketingOption).toJson();
    }
    if (stringValueHistogram != null) {
      _json["stringValueHistogram"] = stringValueHistogram;
    }
    return _json;
  }
}

/// Output only.
///
/// Custom attribute histogram result.
class CustomAttributeHistogramResult {
  /// Stores the key of custom attribute the histogram is performed on.
  core.String key;

  /// Stores bucketed histogram counting result or min/max values for
  /// custom attribute long values associated with `key`.
  NumericBucketingResult longValueHistogramResult;

  /// Stores a map from the values of string custom field associated
  /// with `key` to the number of jobs with that value in this histogram result.
  core.Map<core.String, core.int> stringValueHistogramResult;

  CustomAttributeHistogramResult();

  CustomAttributeHistogramResult.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("longValueHistogramResult")) {
      longValueHistogramResult = new NumericBucketingResult.fromJson(
          _json["longValueHistogramResult"]);
    }
    if (_json.containsKey("stringValueHistogramResult")) {
      stringValueHistogramResult =
          (_json["stringValueHistogramResult"] as core.Map)
              .cast<core.String, core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (longValueHistogramResult != null) {
      _json["longValueHistogramResult"] = (longValueHistogramResult).toJson();
    }
    if (stringValueHistogramResult != null) {
      _json["stringValueHistogramResult"] = stringValueHistogramResult;
    }
    return _json;
  }
}

/// Device information collected from the job seeker, candidate, or
/// other entity conducting the job search. Providing this information improves
/// the quality of the search results across devices.
class DeviceInfo {
  /// Optional.
  ///
  /// Type of the device.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : The device type isn't specified.
  /// - "WEB" : A desktop web browser, such as, Chrome, Firefox, Safari, or
  /// Internet
  /// Explorer)
  /// - "MOBILE_WEB" : A mobile device web browser, such as a phone or tablet
  /// with a Chrome
  /// browser.
  /// - "ANDROID" : An Android device native application.
  /// - "IOS" : An iOS device native application.
  /// - "BOT" : A bot, as opposed to a device operated by human beings, such as
  /// a web
  /// crawler.
  /// - "OTHER" : Other devices types.
  core.String deviceType;

  /// Optional.
  ///
  /// A device-specific ID. The ID must be a unique identifier that
  /// distinguishes the device from other devices.
  core.String id;

  DeviceInfo();

  DeviceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("deviceType")) {
      deviceType = _json["deviceType"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceType != null) {
      _json["deviceType"] = deviceType;
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Input only.
///
/// Histogram facets to be specified in SearchJobsRequest.
class HistogramFacets {
  /// Optional.
  ///
  /// Specifies compensation field-based histogram requests.
  /// Duplicate values of CompensationHistogramRequest.type are not allowed.
  core.List<CompensationHistogramRequest> compensationHistogramFacets;

  /// Optional.
  ///
  /// Specifies the custom attributes histogram requests.
  /// Duplicate values of CustomAttributeHistogramRequest.key are not
  /// allowed.
  core.List<CustomAttributeHistogramRequest> customAttributeHistogramFacets;

  /// Optional.
  ///
  /// Specifies the simple type of histogram facets, for example,
  /// `COMPANY_SIZE`, `EMPLOYMENT_TYPE` etc.
  core.List<core.String> simpleHistogramFacets;

  HistogramFacets();

  HistogramFacets.fromJson(core.Map _json) {
    if (_json.containsKey("compensationHistogramFacets")) {
      compensationHistogramFacets =
          (_json["compensationHistogramFacets"] as core.List)
              .map<CompensationHistogramRequest>(
                  (value) => new CompensationHistogramRequest.fromJson(value))
              .toList();
    }
    if (_json.containsKey("customAttributeHistogramFacets")) {
      customAttributeHistogramFacets = (_json["customAttributeHistogramFacets"]
              as core.List)
          .map<CustomAttributeHistogramRequest>(
              (value) => new CustomAttributeHistogramRequest.fromJson(value))
          .toList();
    }
    if (_json.containsKey("simpleHistogramFacets")) {
      simpleHistogramFacets =
          (_json["simpleHistogramFacets"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compensationHistogramFacets != null) {
      _json["compensationHistogramFacets"] =
          compensationHistogramFacets.map((value) => (value).toJson()).toList();
    }
    if (customAttributeHistogramFacets != null) {
      _json["customAttributeHistogramFacets"] = customAttributeHistogramFacets
          .map((value) => (value).toJson())
          .toList();
    }
    if (simpleHistogramFacets != null) {
      _json["simpleHistogramFacets"] = simpleHistogramFacets;
    }
    return _json;
  }
}

/// Output only.
///
/// Result of a histogram call. The response contains the histogram map for the
/// search type specified by HistogramResult.field.
/// The response is a map of each filter value to the corresponding count of
/// jobs for that filter.
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
  /// values are:
  /// * PAST_24_HOURS (The past 24 hours)
  /// * PAST_3_DAYS (The past 3 days)
  /// * PAST_WEEK (The past 7 days)
  /// * PAST_MONTH (The past 30 days)
  /// * PAST_YEAR (The past 365 days)
  /// - "EDUCATION_LEVEL" : Filter by the required education level of the job.
  /// - "EXPERIENCE_LEVEL" : Filter by the required experience level of the job.
  /// - "ADMIN_1" : Filter by Admin1, which is a global placeholder for
  /// referring to state, province, or the particular term a country uses to
  /// define the geographic structure below the country level.
  /// Examples include states codes such as "CA", "IL", "NY", and
  /// provinces, such as "BC".
  /// - "COUNTRY" : Filter by the country code of job, such as US, JP, FR.
  /// - "CITY" : Filter by the "city name", "Admin1 code", for example,
  /// "Mountain View, CA" or "New York, NY".
  /// - "LOCALE" : Filter by the locale field of a job, such as "en-US",
  /// "fr-FR".
  ///
  /// This is the BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  /// - "LANGUAGE" : Filter by the language code portion of the locale field,
  /// such as "en" or
  /// "fr".
  /// - "CATEGORY" : Filter by the Category.
  /// - "CITY_COORDINATE" : Filter by the city center GPS coordinate (latitude
  /// and longitude), for
  /// example, 37.4038522,-122.0987765. Since the coordinates of a city center
  /// can change, clients may need to refresh them periodically.
  /// - "ADMIN_1_COUNTRY" : A combination of state or province code with a
  /// country code. This field
  /// differs from `JOB_ADMIN1`, which can be used in multiple countries.
  /// - "COMPANY_DISPLAY_NAME" : Company display name.
  /// - "BASE_COMPENSATION_UNIT" : Base compensation unit.
  core.String searchType;

  /// A map from the values of field to the number of jobs with that value
  /// in this search result.
  ///
  /// Key: search type (filter names, such as the companyName).
  ///
  /// Values: the count of jobs that match the filter for this search.
  core.Map<core.String, core.int> values;

  HistogramResult();

  HistogramResult.fromJson(core.Map _json) {
    if (_json.containsKey("searchType")) {
      searchType = _json["searchType"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.Map).cast<core.String, core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (searchType != null) {
      _json["searchType"] = searchType;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Output only.
///
/// Histogram results that match HistogramFacets specified in
/// SearchJobsRequest.
class HistogramResults {
  /// Specifies compensation field-based histogram results that match
  /// HistogramFacets.compensation_histogram_requests.
  core.List<CompensationHistogramResult> compensationHistogramResults;

  /// Specifies histogram results for custom attributes that match
  /// HistogramFacets.custom_attribute_histogram_facets.
  core.List<CustomAttributeHistogramResult> customAttributeHistogramResults;

  /// Specifies histogram results that matches
  /// HistogramFacets.simple_histogram_facets.
  core.List<HistogramResult> simpleHistogramResults;

  HistogramResults();

  HistogramResults.fromJson(core.Map _json) {
    if (_json.containsKey("compensationHistogramResults")) {
      compensationHistogramResults =
          (_json["compensationHistogramResults"] as core.List)
              .map<CompensationHistogramResult>(
                  (value) => new CompensationHistogramResult.fromJson(value))
              .toList();
    }
    if (_json.containsKey("customAttributeHistogramResults")) {
      customAttributeHistogramResults =
          (_json["customAttributeHistogramResults"] as core.List)
              .map<CustomAttributeHistogramResult>(
                  (value) => new CustomAttributeHistogramResult.fromJson(value))
              .toList();
    }
    if (_json.containsKey("simpleHistogramResults")) {
      simpleHistogramResults = (_json["simpleHistogramResults"] as core.List)
          .map<HistogramResult>((value) => new HistogramResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compensationHistogramResults != null) {
      _json["compensationHistogramResults"] = compensationHistogramResults
          .map((value) => (value).toJson())
          .toList();
    }
    if (customAttributeHistogramResults != null) {
      _json["customAttributeHistogramResults"] = customAttributeHistogramResults
          .map((value) => (value).toJson())
          .toList();
    }
    if (simpleHistogramResults != null) {
      _json["simpleHistogramResults"] =
          simpleHistogramResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A Job resource represents a job posting (also referred to as a "job listing"
/// or "job requisition"). A job belongs to a Company, which is the hiring
/// entity responsible for the job.
class Job {
  /// Optional but strongly recommended for the best service experience.
  ///
  /// Location(s) where the employer is looking to hire for this job posting.
  ///
  /// Specifying the full street address(es) of the hiring location enables
  /// better API results, especially job searches by commute time.
  ///
  /// At most 50 locations are allowed for best search performance. If a job has
  /// more locations, it is suggested to split it into multiple jobs with unique
  /// requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as
  /// multiple jobs with the same company_name, language_code and
  /// requisition_id are not allowed. If the original requisition_id must
  /// be preserved, a custom field should be used for storage. It is also
  /// suggested to group the locations that close to each other in the same job
  /// for better search experience.
  ///
  /// The maximum number of allowed characters is 500.
  core.List<core.String> addresses;

  /// Required. At least one field within ApplicationInfo must be specified.
  ///
  /// Job application information.
  ApplicationInfo applicationInfo;

  /// Output only. Display name of the company listing the job.
  core.String companyDisplayName;

  /// Required.
  ///
  /// The resource name of the company listing the job, such as
  /// "projects/api-test-project/companies/foo".
  core.String companyName;

  /// Optional.
  ///
  /// Job compensation information.
  CompensationInfo compensationInfo;

  /// Optional.
  ///
  /// A map of fields to hold both filterable and non-filterable custom job
  /// attributes that are not covered by the provided structured fields.
  ///
  /// The keys of the map are strings up to 64 bytes and must match the
  /// pattern: a-zA-Z*. For example, key0LikeThis or
  /// KEY_1_LIKE_THIS.
  ///
  /// At most 100 filterable and at most 100 unfilterable keys are supported.
  /// For filterable `string_values`, across all keys at most 200 values are
  /// allowed, with each string no more than 255 characters. For unfilterable
  /// `string_values`, the maximum total size of `string_values` across all keys
  /// is 50KB.
  core.Map<core.String, CustomAttribute> customAttributes;

  /// Optional.
  ///
  /// The desired education degrees for the job, such as Bachelors, Masters.
  core.List<core.String> degreeTypes;

  /// Optional.
  ///
  /// The department or functional area within the company with the open
  /// position.
  ///
  /// The maximum number of allowed characters is 255.
  core.String department;

  /// Output only. Derived details about the job posting.
  JobDerivedInfo derivedInfo;

  /// Required.
  ///
  /// The description of the job, which typically includes a multi-paragraph
  /// description of the company and related information. Separate fields are
  /// provided on the job object for responsibilities,
  /// qualifications, and other job characteristics. Use of
  /// these separate job fields is recommended.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts
  /// bold, italic, ordered list, and unordered list markup tags.
  ///
  /// The maximum number of allowed characters is 100,000.
  core.String description;

  /// Optional.
  ///
  /// The employment type(s) of a job, for example,
  /// full time or
  /// part time.
  core.List<core.String> employmentTypes;

  /// Optional.
  ///
  /// A description of bonus, commission, and other compensation
  /// incentives associated with the job not including salary or pay.
  ///
  /// The maximum number of allowed characters is 10,000.
  core.String incentives;

  /// Optional.
  ///
  /// The benefits included with the job.
  core.List<core.String> jobBenefits;

  /// Optional.
  ///
  /// The end timestamp of the job. Typically this field is used for contracting
  /// engagements. Invalid timestamps are ignored.
  core.String jobEndTime;

  /// Optional.
  ///
  /// The experience level associated with the job, such as "Entry Level".
  /// Possible string values are:
  /// - "JOB_LEVEL_UNSPECIFIED" : The default value if the level is not
  /// specified.
  /// - "ENTRY_LEVEL" : Entry-level individual contributors, typically with less
  /// than 2 years of
  /// experience in a similar role. Includes interns.
  /// - "EXPERIENCED" : Experienced individual contributors, typically with 2+
  /// years of
  /// experience in a similar role.
  /// - "MANAGER" : Entry- to mid-level managers responsible for managing a team
  /// of people.
  /// - "DIRECTOR" : Senior-level managers responsible for managing teams of
  /// managers.
  /// - "EXECUTIVE" : Executive-level managers and above, including C-level
  /// positions.
  core.String jobLevel;

  /// Optional.
  ///
  /// The start timestamp of the job in UTC time zone. Typically this field
  /// is used for contracting engagements. Invalid timestamps are ignored.
  core.String jobStartTime;

  /// Optional.
  ///
  /// The language of the posting. This field is distinct from
  /// any requirements for fluency that are associated with the job.
  ///
  /// Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){:
  /// class="external" target="_blank" }.
  ///
  /// If this field is unspecified and Job.description is present, detected
  /// language code based on Job.description is assigned, otherwise
  /// defaults to 'en_US'.
  core.String languageCode;

  /// Required during job update.
  ///
  /// The resource name for the job. This is generated by the service when a
  /// job is created.
  ///
  /// The format is "projects/{project_id}/jobs/{job_id}",
  /// for example, "projects/api-test-project/jobs/1234".
  ///
  /// Use of this field in job queries and API calls is preferred over the use
  /// of
  /// requisition_id since this value is unique.
  core.String name;

  /// Output only. The timestamp when this job posting was created.
  core.String postingCreateTime;

  /// Optional but strongly recommended for the best service
  /// experience.
  ///
  /// The expiration timestamp of the job. After this timestamp, the
  /// job is marked as expired, and it no longer appears in search results. The
  /// expired job can't be deleted or listed by the DeleteJob and
  /// ListJobs APIs, but it can be retrieved with the GetJob API or
  /// updated with the UpdateJob API. An expired job can be updated and
  /// opened again by using a future expiration timestamp. Updating an expired
  /// job fails if there is another existing open job with same company_name,
  /// language_code and requisition_id.
  ///
  /// The expired jobs are retained in our system for 90 days. However, the
  /// overall expired job count cannot exceed 3 times the maximum of open jobs
  /// count over the past week, otherwise jobs with earlier expire time are
  /// cleaned first. Expired jobs are no longer accessible after they are
  /// cleaned
  /// out.
  ///
  /// Invalid timestamps are ignored, and treated as expire time not provided.
  ///
  /// Timestamp before the instant request is made is considered valid, the job
  /// will be treated as expired immediately.
  ///
  /// If this value is not provided at the time of job creation or is invalid,
  /// the job posting expires after 30 days from the job's creation time. For
  /// example, if the job was created on 2017/01/01 13:00AM UTC with an
  /// unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC.
  ///
  /// If this value is not provided on job update, it depends on the field masks
  /// set by UpdateJobRequest.update_mask. If the field masks include
  /// expiry_time, or the masks are empty meaning that every field is
  /// updated, the job posting expires after 30 days from the job's last
  /// update time. Otherwise the expiration date isn't updated.
  core.String postingExpireTime;

  /// Optional.
  ///
  /// The timestamp this job posting was most recently published. The default
  /// value is the time the request arrives at the server. Invalid timestamps
  /// are
  /// ignored.
  core.String postingPublishTime;

  /// Optional.
  ///
  /// The job PostingRegion (for example, state, country) throughout which
  /// the job is available. If this field is set, a
  /// LocationFilter in a search query within the job region
  /// finds this job posting if an exact location match isn't specified.
  /// If this field is set to PostingRegion.NATION or
  /// PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses
  /// to the same location level as this field is strongly recommended.
  /// Possible string values are:
  /// - "POSTING_REGION_UNSPECIFIED" : If the region is unspecified, the job is
  /// only returned if it
  /// matches the LocationFilter.
  /// - "ADMINISTRATIVE_AREA" : In addition to exact location matching, job
  /// posting is returned when the
  /// LocationFilter in the search query is in the same administrative area
  /// as the returned job posting. For example, if a `ADMINISTRATIVE_AREA` job
  /// is posted in "CA, USA", it's returned if LocationFilter has
  /// "Mountain View".
  ///
  /// Administrative area refers to top-level administrative subdivision of this
  /// country. For example, US state, IT region, UK constituent nation and
  /// JP prefecture.
  /// - "NATION" : In addition to exact location matching, job is returned when
  /// LocationFilter in search query is in the same country as this job.
  /// For example, if a `NATION_WIDE` job is posted in "USA", it's
  /// returned if LocationFilter has 'Mountain View'.
  /// - "TELECOMMUTE" : Job allows employees to work remotely (telecommute).
  /// If locations are provided with this value, the job is
  /// considered as having a location, but telecommuting is allowed.
  core.String postingRegion;

  /// Output only. The timestamp when this job posting was last updated.
  core.String postingUpdateTime;

  /// Optional.
  ///
  /// Options for job processing.
  ProcessingOptions processingOptions;

  /// Optional.
  ///
  /// A promotion value of the job, as determined by the client.
  /// The value determines the sort order of the jobs returned when searching
  /// for
  /// jobs using the featured jobs search call, with higher promotional values
  /// being returned first and ties being resolved by relevance sort. Only the
  /// jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH.
  ///
  /// Default value is 0, and negative values are treated as 0.
  core.int promotionValue;

  /// Optional.
  ///
  /// A description of the qualifications required to perform the
  /// job. The use of this field is recommended
  /// as an alternative to using the more general description field.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts
  /// bold, italic, ordered list, and unordered list markup tags.
  ///
  /// The maximum number of allowed characters is 10,000.
  core.String qualifications;

  /// Required.
  ///
  /// The requisition ID, also referred to as the posting ID, assigned by the
  /// client to identify a job. This field is intended to be used by clients
  /// for client identification and tracking of postings. A job is not allowed
  /// to be created if there is another job with the same [company_name],
  /// language_code and requisition_id.
  ///
  /// The maximum number of allowed characters is 255.
  core.String requisitionId;

  /// Optional.
  ///
  /// A description of job responsibilities. The use of this field is
  /// recommended as an alternative to using the more general description
  /// field.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts
  /// bold, italic, ordered list, and unordered list markup tags.
  ///
  /// The maximum number of allowed characters is 10,000.
  core.String responsibilities;

  /// Required.
  ///
  /// The title of the job, such as "Software Engineer"
  ///
  /// The maximum number of allowed characters is 500.
  core.String title;

  /// Optional.
  ///
  /// The visibility of the job.
  ///
  /// Defaults to Visibility.ACCOUNT_ONLY if not specified.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Default value.
  /// - "ACCOUNT_ONLY" : The resource is only visible to the GCP account who
  /// owns it.
  /// - "SHARED_WITH_GOOGLE" : The resource is visible to the owner and may be
  /// visible to other
  /// applications and processes at Google.
  /// - "SHARED_WITH_PUBLIC" : The resource is visible to the owner and may be
  /// visible to all other API
  /// clients.
  core.String visibility;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("addresses")) {
      addresses = (_json["addresses"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("applicationInfo")) {
      applicationInfo = new ApplicationInfo.fromJson(_json["applicationInfo"]);
    }
    if (_json.containsKey("companyDisplayName")) {
      companyDisplayName = _json["companyDisplayName"];
    }
    if (_json.containsKey("companyName")) {
      companyName = _json["companyName"];
    }
    if (_json.containsKey("compensationInfo")) {
      compensationInfo =
          new CompensationInfo.fromJson(_json["compensationInfo"]);
    }
    if (_json.containsKey("customAttributes")) {
      customAttributes = commons.mapMap<core.Map, CustomAttribute>(
          _json["customAttributes"].cast<core.String, core.Map>(),
          (core.Map item) => new CustomAttribute.fromJson(item));
    }
    if (_json.containsKey("degreeTypes")) {
      degreeTypes = (_json["degreeTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("department")) {
      department = _json["department"];
    }
    if (_json.containsKey("derivedInfo")) {
      derivedInfo = new JobDerivedInfo.fromJson(_json["derivedInfo"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("employmentTypes")) {
      employmentTypes =
          (_json["employmentTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("incentives")) {
      incentives = _json["incentives"];
    }
    if (_json.containsKey("jobBenefits")) {
      jobBenefits = (_json["jobBenefits"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("jobEndTime")) {
      jobEndTime = _json["jobEndTime"];
    }
    if (_json.containsKey("jobLevel")) {
      jobLevel = _json["jobLevel"];
    }
    if (_json.containsKey("jobStartTime")) {
      jobStartTime = _json["jobStartTime"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("postingCreateTime")) {
      postingCreateTime = _json["postingCreateTime"];
    }
    if (_json.containsKey("postingExpireTime")) {
      postingExpireTime = _json["postingExpireTime"];
    }
    if (_json.containsKey("postingPublishTime")) {
      postingPublishTime = _json["postingPublishTime"];
    }
    if (_json.containsKey("postingRegion")) {
      postingRegion = _json["postingRegion"];
    }
    if (_json.containsKey("postingUpdateTime")) {
      postingUpdateTime = _json["postingUpdateTime"];
    }
    if (_json.containsKey("processingOptions")) {
      processingOptions =
          new ProcessingOptions.fromJson(_json["processingOptions"]);
    }
    if (_json.containsKey("promotionValue")) {
      promotionValue = _json["promotionValue"];
    }
    if (_json.containsKey("qualifications")) {
      qualifications = _json["qualifications"];
    }
    if (_json.containsKey("requisitionId")) {
      requisitionId = _json["requisitionId"];
    }
    if (_json.containsKey("responsibilities")) {
      responsibilities = _json["responsibilities"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addresses != null) {
      _json["addresses"] = addresses;
    }
    if (applicationInfo != null) {
      _json["applicationInfo"] = (applicationInfo).toJson();
    }
    if (companyDisplayName != null) {
      _json["companyDisplayName"] = companyDisplayName;
    }
    if (companyName != null) {
      _json["companyName"] = companyName;
    }
    if (compensationInfo != null) {
      _json["compensationInfo"] = (compensationInfo).toJson();
    }
    if (customAttributes != null) {
      _json["customAttributes"] =
          commons.mapMap<CustomAttribute, core.Map<core.String, core.Object>>(
              customAttributes, (CustomAttribute item) => (item).toJson());
    }
    if (degreeTypes != null) {
      _json["degreeTypes"] = degreeTypes;
    }
    if (department != null) {
      _json["department"] = department;
    }
    if (derivedInfo != null) {
      _json["derivedInfo"] = (derivedInfo).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (employmentTypes != null) {
      _json["employmentTypes"] = employmentTypes;
    }
    if (incentives != null) {
      _json["incentives"] = incentives;
    }
    if (jobBenefits != null) {
      _json["jobBenefits"] = jobBenefits;
    }
    if (jobEndTime != null) {
      _json["jobEndTime"] = jobEndTime;
    }
    if (jobLevel != null) {
      _json["jobLevel"] = jobLevel;
    }
    if (jobStartTime != null) {
      _json["jobStartTime"] = jobStartTime;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (postingCreateTime != null) {
      _json["postingCreateTime"] = postingCreateTime;
    }
    if (postingExpireTime != null) {
      _json["postingExpireTime"] = postingExpireTime;
    }
    if (postingPublishTime != null) {
      _json["postingPublishTime"] = postingPublishTime;
    }
    if (postingRegion != null) {
      _json["postingRegion"] = postingRegion;
    }
    if (postingUpdateTime != null) {
      _json["postingUpdateTime"] = postingUpdateTime;
    }
    if (processingOptions != null) {
      _json["processingOptions"] = (processingOptions).toJson();
    }
    if (promotionValue != null) {
      _json["promotionValue"] = promotionValue;
    }
    if (qualifications != null) {
      _json["qualifications"] = qualifications;
    }
    if (requisitionId != null) {
      _json["requisitionId"] = requisitionId;
    }
    if (responsibilities != null) {
      _json["responsibilities"] = responsibilities;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// Output only.
///
/// Derived details about the job posting.
class JobDerivedInfo {
  /// Job categories derived from Job.title and Job.description.
  core.List<core.String> jobCategories;

  /// Structured locations of the job, resolved from Job.addresses.
  ///
  /// locations are exactly matched to Job.addresses in the same
  /// order.
  core.List<Location> locations;

  JobDerivedInfo();

  JobDerivedInfo.fromJson(core.Map _json) {
    if (_json.containsKey("jobCategories")) {
      jobCategories = (_json["jobCategories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobCategories != null) {
      _json["jobCategories"] = jobCategories;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An event issued when a job seeker interacts with the application that
/// implements Cloud Talent Solution.
class JobEvent {
  /// Required.
  ///
  /// The job name(s) associated with this event.
  /// For example, if this is an impression event,
  /// this field contains the identifiers of all jobs shown to the job seeker.
  /// If this was a view event, this field contains the
  /// identifier of the viewed job.
  core.List<core.String> jobs;

  /// Required.
  ///
  /// The type of the event (see JobEventType).
  /// Possible string values are:
  /// - "JOB_EVENT_TYPE_UNSPECIFIED" : The event is unspecified by other
  /// provided values.
  /// - "IMPRESSION" : The job seeker or other entity interacting with the
  /// service has
  /// had a job rendered in their view, such as in a list of search results in
  /// a compressed or clipped format. This event is typically associated with
  /// the viewing of a jobs list on a single page by a job seeker.
  /// - "VIEW" : The job seeker, or other entity interacting with the service,
  /// has
  /// viewed the details of a job, including the full description. This
  /// event doesn't apply to the viewing a snippet of a job appearing as a
  /// part of the job search results. Viewing a snippet is associated with an
  /// impression).
  /// - "VIEW_REDIRECT" : The job seeker or other entity interacting with the
  /// service
  /// performed an action to view a job and was redirected to a different
  /// website for job.
  /// - "APPLICATION_START" : The job seeker or other entity interacting with
  /// the service
  /// began the process or demonstrated the intention of applying for a job.
  /// - "APPLICATION_FINISH" : The job seeker or other entity interacting with
  /// the service
  /// submitted an application for a job.
  /// - "APPLICATION_QUICK_SUBMISSION" : The job seeker or other entity
  /// interacting with the service
  /// submitted an application for a job with a single click without
  /// entering information. If a job seeker performs this action, send only
  /// this event to the service. Do not also send
  /// JobEventType.APPLICATION_START or JobEventType.APPLICATION_FINISH
  /// events.
  /// - "APPLICATION_REDIRECT" : The job seeker or other entity interacting with
  /// the service
  /// performed an action to apply to a job and was redirected to a different
  /// website to complete the application.
  /// - "APPLICATION_START_FROM_SEARCH" : The job seeker or other entity
  /// interacting with the service began the
  /// process or demonstrated the intention of applying for a job from the
  /// search results page without viewing the details of the job posting.
  /// If sending this event, JobEventType.VIEW event shouldn't be sent.
  /// - "APPLICATION_REDIRECT_FROM_SEARCH" : The job seeker, or other entity
  /// interacting with the service, performs an
  /// action with a single click from the search results page to apply to a job
  /// (without viewing the details of the job posting), and is redirected
  /// to a different website to complete the application. If a candidate
  /// performs this action, send only this event to the service. Do not also
  /// send JobEventType.APPLICATION_START,
  /// JobEventType.APPLICATION_FINISH or JobEventType.VIEW events.
  /// - "APPLICATION_COMPANY_SUBMIT" : This event should be used when a company
  /// submits an application
  /// on behalf of a job seeker. This event is intended for use by staffing
  /// agencies attempting to place candidates.
  /// - "BOOKMARK" : The job seeker or other entity interacting with the service
  /// demonstrated
  /// an interest in a job by bookmarking or saving it.
  /// - "NOTIFICATION" : The job seeker or other entity interacting with the
  /// service was
  /// sent a notification, such as an email alert or device notification,
  /// containing one or more jobs listings generated by the service.
  /// - "HIRED" : The job seeker or other entity interacting with the service
  /// was
  /// employed by the hiring entity (employer). Send this event
  /// only if the job seeker was hired through an application that was
  /// initiated by a search conducted through the Cloud Talent Solution
  /// service.
  /// - "SENT_CV" : A recruiter or staffing agency submitted an application on
  /// behalf of the
  /// candidate after interacting with the service to identify a suitable job
  /// posting.
  /// - "INTERVIEW_GRANTED" : The entity interacting with the service (for
  /// example, the job seeker),
  /// was granted an initial interview by the hiring entity (employer). This
  /// event should only be sent if the job seeker was granted an interview as
  /// part of an application that was initiated by a search conducted through /
  /// recommendation provided by the Cloud Talent Solution service.
  /// - "NOT_INTERESTED" : The job seeker or other entity interacting with the
  /// service showed
  /// no interest in the job.
  core.String type;

  JobEvent();

  JobEvent.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobs != null) {
      _json["jobs"] = jobs;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Input only.
///
/// The query required to perform a search query.
class JobQuery {
  /// Optional.
  ///
  ///  Allows filtering jobs by commute time with different travel methods (for
  ///  example, driving or public transit). Note: This only works with COMMUTE
  ///  MODE. When specified, [JobQuery.location_filters] is
  ///  ignored.
  ///
  ///  Currently we don't support sorting by commute time.
  CommuteFilter commuteFilter;

  /// Optional.
  ///
  /// This filter specifies the exact company display
  /// name of the jobs to search against.
  ///
  /// If a value isn't specified, jobs within the search results are
  /// associated with any company.
  ///
  /// If multiple values are specified, jobs within the search results may be
  /// associated with any of the specified companies.
  ///
  /// At most 20 company display name filters are allowed.
  core.List<core.String> companyDisplayNames;

  /// Optional.
  ///
  /// This filter specifies the company entities to search against.
  ///
  /// If a value isn't specified, jobs are searched for against all
  /// companies.
  ///
  /// If multiple values are specified, jobs are searched against the
  /// companies specified.
  ///
  /// The format is "projects/{project_id}/companies/{company_id}", for example,
  /// "projects/api-test-project/companies/foo".
  ///
  /// At most 20 company filters are allowed.
  core.List<core.String> companyNames;

  /// Optional.
  ///
  /// This search filter is applied only to
  /// Job.compensation_info. For example, if the filter is specified
  /// as "Hourly job with per-hour compensation > $15", only jobs meeting
  /// these criteria are searched. If a filter isn't defined, all open jobs
  /// are searched.
  CompensationFilter compensationFilter;

  /// Optional.
  ///
  /// This filter specifies a structured syntax to match against the
  /// Job.custom_attributes marked as `filterable`.
  ///
  /// The syntax for this expression is a subset of SQL syntax.
  ///
  /// Supported operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the
  /// left of the operator is a custom field key and the right of the operator
  /// is a number or a quoted string. You must escape backslash (\\) and
  /// quote (\") characters.
  ///
  /// Supported functions are `LOWER([field_name])` to
  /// perform a case insensitive match and `EMPTY([field_name])` to filter on
  /// the
  /// existence of a key.
  ///
  /// Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
  /// nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of
  /// 100
  /// comparisons or functions are allowed in the expression. The expression
  /// must be < 3000 bytes in length.
  ///
  /// Sample Query:
  /// `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
  /// driving_years > 10`
  core.String customAttributeFilter;

  /// Optional.
  ///
  /// This flag controls the spell-check feature. If false, the
  /// service attempts to correct a misspelled query,
  /// for example, "enginee" is corrected to "engineer".
  ///
  /// Defaults to false: a spell check is performed.
  core.bool disableSpellCheck;

  /// Optional.
  ///
  /// The employment type filter specifies the employment type of jobs to
  /// search against, such as EmploymentType.FULL_TIME.
  ///
  /// If a value is not specified, jobs in the search results includes any
  /// employment type.
  ///
  /// If multiple values are specified, jobs in the search results include
  /// any of the specified employment types.
  core.List<core.String> employmentTypes;

  /// Optional.
  ///
  /// The category filter specifies the categories of jobs to search against.
  /// See Category for more information.
  ///
  /// If a value is not specified, jobs from any category are searched against.
  ///
  /// If multiple values are specified, jobs from any of the specified
  /// categories are searched against.
  core.List<core.String> jobCategories;

  /// Optional.
  ///
  /// This filter specifies the locale of jobs to search against,
  /// for example, "en-US".
  ///
  /// If a value isn't specified, the search results can contain jobs in any
  /// locale.
  ///
  ///
  /// Language codes should be in BCP-47 format, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  ///
  /// At most 10 language code filters are allowed.
  core.List<core.String> languageCodes;

  /// Optional.
  ///
  /// The location filter specifies geo-regions containing the jobs to
  /// search against. See LocationFilter for more information.
  ///
  /// If a location value isn't specified, jobs fitting the other search
  /// criteria are retrieved regardless of where they're located.
  ///
  /// If multiple values are specified, jobs are retrieved from any of the
  /// specified locations. If different values are specified for the
  /// LocationFilter.distance_in_miles parameter, the maximum provided
  /// distance is used for all locations.
  ///
  /// At most 5 location filters are allowed.
  core.List<LocationFilter> locationFilters;

  /// Optional.
  ///
  /// Jobs published within a range specified by this filter are searched
  /// against.
  TimestampRange publishTimeRange;

  /// Optional.
  ///
  /// The query string that matches against the job title, description, and
  /// location fields.
  ///
  /// The maximum number of allowed characters is 255.
  core.String query;

  JobQuery();

  JobQuery.fromJson(core.Map _json) {
    if (_json.containsKey("commuteFilter")) {
      commuteFilter = new CommuteFilter.fromJson(_json["commuteFilter"]);
    }
    if (_json.containsKey("companyDisplayNames")) {
      companyDisplayNames =
          (_json["companyDisplayNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("companyNames")) {
      companyNames = (_json["companyNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("compensationFilter")) {
      compensationFilter =
          new CompensationFilter.fromJson(_json["compensationFilter"]);
    }
    if (_json.containsKey("customAttributeFilter")) {
      customAttributeFilter = _json["customAttributeFilter"];
    }
    if (_json.containsKey("disableSpellCheck")) {
      disableSpellCheck = _json["disableSpellCheck"];
    }
    if (_json.containsKey("employmentTypes")) {
      employmentTypes =
          (_json["employmentTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("jobCategories")) {
      jobCategories = (_json["jobCategories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("languageCodes")) {
      languageCodes = (_json["languageCodes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("locationFilters")) {
      locationFilters = (_json["locationFilters"] as core.List)
          .map<LocationFilter>((value) => new LocationFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("publishTimeRange")) {
      publishTimeRange = new TimestampRange.fromJson(_json["publishTimeRange"]);
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commuteFilter != null) {
      _json["commuteFilter"] = (commuteFilter).toJson();
    }
    if (companyDisplayNames != null) {
      _json["companyDisplayNames"] = companyDisplayNames;
    }
    if (companyNames != null) {
      _json["companyNames"] = companyNames;
    }
    if (compensationFilter != null) {
      _json["compensationFilter"] = (compensationFilter).toJson();
    }
    if (customAttributeFilter != null) {
      _json["customAttributeFilter"] = customAttributeFilter;
    }
    if (disableSpellCheck != null) {
      _json["disableSpellCheck"] = disableSpellCheck;
    }
    if (employmentTypes != null) {
      _json["employmentTypes"] = employmentTypes;
    }
    if (jobCategories != null) {
      _json["jobCategories"] = jobCategories;
    }
    if (languageCodes != null) {
      _json["languageCodes"] = languageCodes;
    }
    if (locationFilters != null) {
      _json["locationFilters"] =
          locationFilters.map((value) => (value).toJson()).toList();
    }
    if (publishTimeRange != null) {
      _json["publishTimeRange"] = (publishTimeRange).toJson();
    }
    if (query != null) {
      _json["query"] = query;
    }
    return _json;
  }
}

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair
/// of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the
/// <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
/// standard</a>. Values must be within normalized ranges.
class LatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  LatLng();

  LatLng.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"].toDouble();
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/// Output only.
///
/// The List companies response object.
class ListCompaniesResponse {
  /// Companies for the current client.
  core.List<Company> companies;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  /// A token to retrieve the next page of results.
  core.String nextPageToken;

  ListCompaniesResponse();

  ListCompaniesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("companies")) {
      companies = (_json["companies"] as core.List)
          .map<Company>((value) => new Company.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata = new ResponseMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (companies != null) {
      _json["companies"] = companies.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Output only.
///
/// List jobs response.
class ListJobsResponse {
  /// The Jobs for a given company.
  ///
  /// The maximum number of items returned is based on the limit field
  /// provided in the request.
  core.List<Job> jobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  /// A token to retrieve the next page of results.
  core.String nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List)
          .map<Job>((value) => new Job.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata = new ResponseMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Output only.
///
/// A resource that represents a location with full geographic information.
class Location {
  /// An object representing a latitude/longitude pair.
  LatLng latLng;

  /// The type of a location, which corresponds to the address lines field of
  /// PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of
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
  /// example a city borough,
  /// ward, or arrondissement. Sublocalities are usually recognized by a local
  /// political authority. For example, Manhattan and Brooklyn are recognized
  /// as boroughs by the City of New York, and are therefore modeled as
  /// sublocalities.
  /// - "SUB_LOCALITY_1" : A district or equivalent level location.
  /// - "SUB_LOCALITY_2" : A smaller district or equivalent level display.
  /// - "NEIGHBORHOOD" : A neighborhood level location.
  /// - "STREET_ADDRESS" : A street address level location.
  core.String locationType;

  /// Postal address of the location that includes human readable information,
  /// such as postal delivery and payments addresses. Given a postal address,
  /// a postal service can deliver items to a premises, P.O. Box, or other
  /// delivery location.
  PostalAddress postalAddress;

  /// Radius in miles of the job location. This value is derived from the
  /// location bounding box in which a circle with the specified radius
  /// centered from LatLng covers the area associated with the job location.
  /// For example, currently, "Mountain View, CA, USA" has a radius of
  /// 6.17 miles.
  core.double radiusInMiles;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
    if (_json.containsKey("postalAddress")) {
      postalAddress = new PostalAddress.fromJson(_json["postalAddress"]);
    }
    if (_json.containsKey("radiusInMiles")) {
      radiusInMiles = _json["radiusInMiles"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    if (locationType != null) {
      _json["locationType"] = locationType;
    }
    if (postalAddress != null) {
      _json["postalAddress"] = (postalAddress).toJson();
    }
    if (radiusInMiles != null) {
      _json["radiusInMiles"] = radiusInMiles;
    }
    return _json;
  }
}

/// Input only.
///
/// Geographic region of the search.
class LocationFilter {
  /// Optional.
  ///
  /// The address name, such as "Mountain View" or "Bay Area".
  core.String address;

  /// Optional.
  ///
  ///
  /// The distance_in_miles is applied when the location being searched for is
  /// identified as a city or smaller. When the location being searched for is a
  /// state or larger, this field is ignored.
  core.double distanceInMiles;

  /// Optional.
  ///
  /// The latitude and longitude of the geographic center from which to
  /// search. This field's ignored if `address` is provided.
  LatLng latLng;

  /// Optional.
  ///
  /// CLDR region code of the country/region of the address. This is used
  /// to address ambiguity of the user-input location, for example, "Liverpool"
  /// against "Liverpool, NY, US" or "Liverpool, UK".
  ///
  /// Set this field if all the jobs to search against are from a same region,
  /// or jobs are world-wide, but the job seeker is from a specific region.
  ///
  /// See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  core.String regionCode;

  /// Optional.
  ///
  /// Allows the client to return jobs without a
  /// set location, specifically, telecommuting jobs (telecommuting is
  /// considered
  /// by the service as a special location.
  /// Job.posting_region indicates if a job permits telecommuting.
  /// If this field is set to TelecommutePreference.TELECOMMUTE_ALLOWED,
  /// telecommuting jobs are searched, and address and lat_lng are
  /// ignored. If not set or set to
  /// TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
  /// searched.
  ///
  /// This filter can be used by itself to search exclusively for telecommuting
  /// jobs, or it can be combined with another location
  /// filter to search for a combination of job locations,
  /// such as "Mountain View" or "telecommuting" jobs. However, when used in
  /// combination with other location filters, telecommuting jobs can be
  /// treated as less relevant than other jobs in the search response.
  /// Possible string values are:
  /// - "TELECOMMUTE_PREFERENCE_UNSPECIFIED" : Default value if the telecommute
  /// preference is not specified.
  /// - "TELECOMMUTE_EXCLUDED" : Exclude telecommute jobs.
  /// - "TELECOMMUTE_ALLOWED" : Allow telecommute jobs.
  core.String telecommutePreference;

  LocationFilter();

  LocationFilter.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("distanceInMiles")) {
      distanceInMiles = _json["distanceInMiles"].toDouble();
    }
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("telecommutePreference")) {
      telecommutePreference = _json["telecommutePreference"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (distanceInMiles != null) {
      _json["distanceInMiles"] = distanceInMiles;
    }
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (telecommutePreference != null) {
      _json["telecommutePreference"] = telecommutePreference;
    }
    return _json;
  }
}

/// Output only.
///
/// Job entry with metadata inside SearchJobsResponse.
class MatchingJob {
  /// Commute information which is generated based on specified
  ///  CommuteFilter.
  CommuteInfo commuteInfo;

  /// Job resource that matches the specified SearchJobsRequest.
  Job job;

  /// A summary of the job with core information that's displayed on the search
  /// results listing page.
  core.String jobSummary;

  /// Contains snippets of text from the Job.job_title field most
  /// closely matching a search query's keywords, if available. The matching
  /// query keywords are enclosed in HTML bold tags.
  core.String jobTitleSnippet;

  /// Contains snippets of text from the Job.description and similar
  /// fields that most closely match a search query's keywords, if available.
  /// All HTML tags in the original fields are stripped when returned in this
  /// field, and matching query keywords are enclosed in HTML bold tags.
  core.String searchTextSnippet;

  MatchingJob();

  MatchingJob.fromJson(core.Map _json) {
    if (_json.containsKey("commuteInfo")) {
      commuteInfo = new CommuteInfo.fromJson(_json["commuteInfo"]);
    }
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("jobSummary")) {
      jobSummary = _json["jobSummary"];
    }
    if (_json.containsKey("jobTitleSnippet")) {
      jobTitleSnippet = _json["jobTitleSnippet"];
    }
    if (_json.containsKey("searchTextSnippet")) {
      searchTextSnippet = _json["searchTextSnippet"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commuteInfo != null) {
      _json["commuteInfo"] = (commuteInfo).toJson();
    }
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (jobSummary != null) {
      _json["jobSummary"] = jobSummary;
    }
    if (jobTitleSnippet != null) {
      _json["jobTitleSnippet"] = jobTitleSnippet;
    }
    if (searchTextSnippet != null) {
      _json["searchTextSnippet"] = searchTextSnippet;
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class Money {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/// Input only.
///
/// Use this field to specify bucketing option for the histogram search
/// response.
class NumericBucketingOption {
  /// Required.
  ///
  /// Two adjacent values form a histogram bucket. Values should be in
  /// ascending order. For example, if [5, 10, 15] are provided, four buckets
  /// are
  /// created: (-inf, 5), 5, 10), [10, 15), [15, inf). At most 20
  /// [buckets_bound is supported.
  core.List<core.double> bucketBounds;

  /// Optional.
  ///
  /// If set to true, the histogram result includes minimum/maximum
  /// value of the numeric field.
  core.bool requiresMinMax;

  NumericBucketingOption();

  NumericBucketingOption.fromJson(core.Map _json) {
    if (_json.containsKey("bucketBounds")) {
      bucketBounds = (_json["bucketBounds"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
    if (_json.containsKey("requiresMinMax")) {
      requiresMinMax = _json["requiresMinMax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketBounds != null) {
      _json["bucketBounds"] = bucketBounds;
    }
    if (requiresMinMax != null) {
      _json["requiresMinMax"] = requiresMinMax;
    }
    return _json;
  }
}

/// Output only.
///
/// Custom numeric bucketing result.
class NumericBucketingResult {
  /// Count within each bucket. Its size is the length of
  /// NumericBucketingOption.bucket_bounds plus 1.
  core.List<BucketizedCount> counts;

  /// Stores the maximum value of the numeric field. Is populated only if
  /// [NumericBucketingOption.requires_min_max] is set to true.
  core.double maxValue;

  /// Stores the minimum value of the numeric field. Will be populated only if
  /// [NumericBucketingOption.requires_min_max] is set to true.
  core.double minValue;

  NumericBucketingResult();

  NumericBucketingResult.fromJson(core.Map _json) {
    if (_json.containsKey("counts")) {
      counts = (_json["counts"] as core.List)
          .map<BucketizedCount>((value) => new BucketizedCount.fromJson(value))
          .toList();
    }
    if (_json.containsKey("maxValue")) {
      maxValue = _json["maxValue"].toDouble();
    }
    if (_json.containsKey("minValue")) {
      minValue = _json["minValue"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (counts != null) {
      _json["counts"] = counts.map((value) => (value).toJson()).toList();
    }
    if (maxValue != null) {
      _json["maxValue"] = maxValue;
    }
    if (minValue != null) {
      _json["minValue"] = minValue;
    }
    return _json;
  }
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O.
/// Box or similar.
/// It is not intended to model geographical locations (roads, towns,
/// mountains).
///
/// In typical usage an address would be created via user input or from
/// importing
/// existing data, depending on the type of process.
///
/// Advice on address input / editing:
///  - Use an i18n-ready address widget such as
///    https://github.com/googlei18n/libaddressinput)
/// - Users should not be presented with UI elements for input or editing of
///   fields outside countries where that field is used.
///
/// For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
class PostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g.
  /// "Austin, TX"), it is important that the line order is clear. The order of
  /// address lines should be "envelope order" for the country/region of the
  /// address. In places where this can vary (e.g. Japan), address_language is
  /// used to make it explicit (e.g. "ja" for large-to-small ordering and
  /// "ja-Latn" or "en" for small-to-large). This way, the most specific line of
  /// an address can be selected based on the language.
  ///
  /// The minimum permitted structural representation of an address consists
  /// of a region_code with all remaining information placed in the
  /// address_lines. It would be possible to format such an address very
  /// approximately without geocoding, but no semantic reasoning could be
  /// made about any of the address components until it was at least
  /// partially resolved.
  ///
  /// Creating an address only containing a region_code and address_lines, and
  /// then geocoding is the recommended way to handle completely unstructured
  /// addresses (as opposed to guessing which parts of the address should be
  /// localities or administrative areas).
  core.List<core.String> addressLines;

  /// Optional. Highest administrative subdivision which is used for postal
  /// addresses of a country or region.
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// Specifically, for Spain this is the province and not the autonomous
  /// community (e.g. "Barcelona" and not "Catalonia").
  /// Many countries don't use an administrative area in postal addresses. E.g.
  /// in Switzerland this should be left unpopulated.
  core.String administrativeArea;

  /// Optional. BCP-47 language code of the contents of this address (if
  /// known). This is often the UI language of the input form or is expected
  /// to match one of the languages used in the address' country/region, or
  /// their
  /// transliterated equivalents.
  /// This can affect formatting in certain countries, but is not critical
  /// to the correctness of the data and will never affect any validation or
  /// other non-formatting related operations.
  ///
  /// If this value is not known, it should be omitted (rather than specifying a
  /// possibly incorrect default).
  ///
  /// Examples: "zh-Hant", "ja", "ja-Latn", "en".
  core.String languageCode;

  /// Optional. Generally refers to the city/town portion of the address.
  /// Examples: US city, IT comune, UK post town.
  /// In regions of the world where localities are not well defined or do not
  /// fit
  /// into this structure well, leave locality empty and use address_lines.
  core.String locality;

  /// Optional. The name of the organization at the address.
  core.String organization;

  /// Optional. Postal code of the address. Not all countries use or require
  /// postal codes to be present, but where they are used, they may trigger
  /// additional validation with other parts of the address (e.g. state/zip
  /// validation in the U.S.A.).
  core.String postalCode;

  /// Optional. The recipient at the address.
  /// This field may, under certain circumstances, contain multiline
  /// information.
  /// For example, it might contain "care of" information.
  core.List<core.String> recipients;

  /// Required. CLDR region code of the country/region of the address. This
  /// is never inferred and it is up to the user to ensure the value is
  /// correct. See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  core.String regionCode;

  /// The schema revision of the `PostalAddress`. This must be set to 0, which
  /// is
  /// the latest revision.
  ///
  /// All new revisions **must** be backward compatible with old revisions.
  core.int revision;

  /// Optional. Additional, country-specific, sorting code. This is not used
  /// in most regions. Where it is used, the value is either a string like
  /// "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or just a
  /// number
  /// alone, representing the "sector code" (Jamaica), "delivery area indicator"
  /// (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  core.String sortingCode;

  /// Optional. Sublocality of the address.
  /// For example, this can be neighborhoods, boroughs, districts.
  core.String sublocality;

  PostalAddress();

  PostalAddress.fromJson(core.Map _json) {
    if (_json.containsKey("addressLines")) {
      addressLines = (_json["addressLines"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("administrativeArea")) {
      administrativeArea = _json["administrativeArea"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("organization")) {
      organization = _json["organization"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("recipients")) {
      recipients = (_json["recipients"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("revision")) {
      revision = _json["revision"];
    }
    if (_json.containsKey("sortingCode")) {
      sortingCode = _json["sortingCode"];
    }
    if (_json.containsKey("sublocality")) {
      sublocality = _json["sublocality"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addressLines != null) {
      _json["addressLines"] = addressLines;
    }
    if (administrativeArea != null) {
      _json["administrativeArea"] = administrativeArea;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (organization != null) {
      _json["organization"] = organization;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (recipients != null) {
      _json["recipients"] = recipients;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (revision != null) {
      _json["revision"] = revision;
    }
    if (sortingCode != null) {
      _json["sortingCode"] = sortingCode;
    }
    if (sublocality != null) {
      _json["sublocality"] = sublocality;
    }
    return _json;
  }
}

/// Input only.
///
/// Options for job processing.
class ProcessingOptions {
  /// Optional.
  ///
  /// If set to `true`, the service does not attempt to resolve a
  /// more precise address for the job.
  core.bool disableStreetAddressResolution;

  /// Optional.
  ///
  /// Option for job HTML content sanitization. Applied fields are:
  ///
  /// * description
  /// * applicationInfo.instruction
  /// * incentives
  /// * qualifications
  /// * responsibilities
  ///
  /// HTML tags in these fields may be stripped if sanitiazation is not
  /// disabled.
  ///
  /// Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  /// Possible string values are:
  /// - "HTML_SANITIZATION_UNSPECIFIED" : Default value.
  /// - "HTML_SANITIZATION_DISABLED" : Disables sanitization on HTML input.
  /// - "SIMPLE_FORMATTING_ONLY" : Sanitizes HTML input, only accepts bold,
  /// italic, ordered list, and
  /// unordered list markup tags.
  core.String htmlSanitization;

  ProcessingOptions();

  ProcessingOptions.fromJson(core.Map _json) {
    if (_json.containsKey("disableStreetAddressResolution")) {
      disableStreetAddressResolution = _json["disableStreetAddressResolution"];
    }
    if (_json.containsKey("htmlSanitization")) {
      htmlSanitization = _json["htmlSanitization"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableStreetAddressResolution != null) {
      _json["disableStreetAddressResolution"] = disableStreetAddressResolution;
    }
    if (htmlSanitization != null) {
      _json["htmlSanitization"] = htmlSanitization;
    }
    return _json;
  }
}

/// Input only.
///
/// Meta information related to the job searcher or entity
/// conducting the job search. This information is used to improve the
/// performance of the service.
class RequestMetadata {
  /// Optional.
  ///
  /// The type of device used by the job seeker at the time of the call to the
  /// service.
  DeviceInfo deviceInfo;

  /// Required.
  ///
  /// The client-defined scope or source of the service call, which typically
  /// is the domain on
  /// which the service has been implemented and is currently being run.
  ///
  /// For example, if the service is being run by client <em>Foo, Inc.</em>, on
  /// job board www.foo.com and career site www.bar.com, then this field is
  /// set to "foo.com" for use on the job board, and "bar.com" for use on the
  /// career site.
  ///
  /// If this field isn't available for some reason, send "UNKNOWN".
  /// Any improvements to the model for a particular tenant site rely on this
  /// field being set correctly to a domain.
  ///
  /// The maximum number of allowed characters is 255.
  core.String domain;

  /// Required.
  ///
  /// A unique session identification string. A session is defined as the
  /// duration of an end user's interaction with the service over a certain
  /// period.
  /// Obfuscate this field for privacy concerns before
  /// providing it to the service.
  ///
  /// If this field is not available for some reason, send "UNKNOWN". Note
  /// that any improvements to the model for a particular tenant
  /// site, rely on this field being set correctly to some unique session_id.
  ///
  /// The maximum number of allowed characters is 255.
  core.String sessionId;

  /// Required.
  ///
  /// A unique user identification string, as determined by the client.
  /// To have the strongest positive impact on search quality
  /// make sure the client-level is unique.
  /// Obfuscate this field for privacy concerns before
  /// providing it to the service.
  ///
  /// If this field is not available for some reason, send "UNKNOWN". Note
  /// that any improvements to the model for a particular tenant
  /// site, rely on this field being set correctly to a unique user_id.
  ///
  /// The maximum number of allowed characters is 255.
  core.String userId;

  RequestMetadata();

  RequestMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("deviceInfo")) {
      deviceInfo = new DeviceInfo.fromJson(_json["deviceInfo"]);
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("sessionId")) {
      sessionId = _json["sessionId"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceInfo != null) {
      _json["deviceInfo"] = (deviceInfo).toJson();
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (sessionId != null) {
      _json["sessionId"] = sessionId;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// Output only.
///
/// Additional information returned to client, such as debugging information.
class ResponseMetadata {
  /// A unique id associated with this call.
  /// This id is logged for tracking purposes.
  core.String requestId;

  ResponseMetadata();

  ResponseMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    return _json;
  }
}

/// Input only.
///
/// The Request body of the `SearchJobs` call.
class SearchJobsRequest {
  /// Optional.
  ///
  /// Controls whether to disable exact keyword match on Job.job_title,
  /// Job.description, Job.company_display_name, Job.locations,
  /// Job.qualifications. When disable keyword match is turned off, a
  /// keyword match returns jobs that do not match given category filters when
  /// there are matching keywords. For example, the query "program manager," a
  /// result is returned even if the job posting has the title "software
  /// developer," which does not fall into "program manager" ontology, but does
  /// have "program manager" appearing in its description.
  ///
  /// For queries like "cloud" that does not contain title or
  /// location specific ontology, jobs with "cloud" keyword matches are returned
  /// regardless of this flag's value.
  ///
  /// Please use Company.keyword_searchable_custom_fields or
  /// Company.keyword_searchable_custom_attributes if company specific
  /// globally matched custom field/attribute string values is needed. Enabling
  /// keyword match improves recall of subsequent search requests.
  ///
  /// Defaults to false.
  core.bool disableKeywordMatch;

  /// Optional.
  ///
  /// Controls whether highly similar jobs are returned next to each other in
  /// the search results. Jobs are identified as highly similar based on
  /// their titles, job categories, and locations. Highly similar results are
  /// clustered so that only one representative job of the cluster is
  /// displayed to the job seeker higher up in the results, with the other jobs
  /// being displayed lower down in the results.
  ///
  /// Defaults to DiversificationLevel.SIMPLE if no value
  /// is specified.
  /// Possible string values are:
  /// - "DIVERSIFICATION_LEVEL_UNSPECIFIED" : The diversification level isn't
  /// specified. By default, jobs with this
  /// enum are ordered according to SIMPLE diversifying behavior.
  /// - "DISABLED" : Disables diversification. Jobs that would normally be
  /// pushed to the last
  /// page would not have their positions altered. This may result in highly
  /// similar jobs appearing in sequence in the search results.
  /// - "SIMPLE" : Default diversifying behavior. The result list is ordered so
  /// that
  /// highly similar results are pushed to the end of the last page of search
  /// results.
  core.String diversificationLevel;

  /// Optional.
  ///
  /// Controls whether to broaden the search when it produces sparse results.
  /// Broadened queries append results to the end of the matching results
  /// list.
  ///
  /// Defaults to false.
  core.bool enableBroadening;

  /// Optional.
  ///
  /// Histogram requests for jobs matching JobQuery.
  HistogramFacets histogramFacets;

  /// Optional.
  ///
  /// Query used to search against jobs, such as keyword, location filters, etc.
  JobQuery jobQuery;

  /// Optional.
  ///
  /// The desired job attributes returned for jobs in the
  /// search response. Defaults to JobView.SMALL if no value is specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "JOB_VIEW_ID_ONLY" : A ID only view of job, with following attributes:
  /// Job.name, Job.requisition_id, Job.language_code.
  /// - "JOB_VIEW_MINIMAL" : A minimal view of the job, with the following
  /// attributes:
  /// Job.name, Job.requisition_id, Job.title,
  /// Job.company_name, Job.DerivedInfo.locations, Job.language_code.
  /// - "JOB_VIEW_SMALL" : A small view of the job, with the following
  /// attributes in the search
  /// results: Job.name, Job.requisition_id, Job.title,
  /// Job.company_name, Job.DerivedInfo.locations, Job.visibility,
  /// Job.language_code, Job.description.
  /// - "JOB_VIEW_FULL" : All available attributes are included in the search
  /// results.
  core.String jobView;

  /// Optional.
  ///
  /// An integer that specifies the current offset (that is, starting result
  /// location, amongst the jobs deemed by the API as relevant) in search
  /// results. This field is only considered if page_token is unset.
  ///
  /// For example, 0 means to  return results starting from the first matching
  /// job, and 10 means to return from the 11th job. This can be used for
  /// pagination, (for example, pageSize = 10 and offset = 10 means to return
  /// from the second page).
  core.int offset;

  /// Optional.
  ///
  /// The criteria determining how search results are sorted. Default is
  /// "relevance desc".
  ///
  /// Supported options are:
  ///
  /// * `"relevance desc"`: By relevance descending, as determined by the API
  /// algorithms. Relevance thresholding of query results is only available
  /// with this ordering.
  /// * `"posting_publish_time desc"`: By Job.posting_publish_time
  /// descending.
  /// * `"posting_update_time desc"`: By Job.posting_update_time
  /// descending.
  /// * `"title"`: By Job.title ascending.
  /// * `"title desc"`: By Job.title descending.
  /// * `"annualized_base_compensation"`: By job's
  /// CompensationInfo.annualized_base_compensation_range ascending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results.
  /// * `"annualized_base_compensation desc"`: By job's
  /// CompensationInfo.annualized_base_compensation_range descending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results.
  /// * `"annualized_total_compensation"`: By job's
  /// CompensationInfo.annualized_total_compensation_range ascending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results.
  /// * `"annualized_total_compensation desc"`: By job's
  /// CompensationInfo.annualized_total_compensation_range descending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results.
  core.String orderBy;

  /// Optional.
  ///
  /// A limit on the number of jobs returned in the search results.
  /// Increasing this value above the default value of 10 can increase search
  /// response time. The value can be between 1 and 100.
  core.int pageSize;

  /// Optional.
  ///
  /// The token specifying the current offset within
  /// search results. See SearchJobsResponse.next_page_token for
  /// an explanation of how to obtain the next set of query results.
  core.String pageToken;

  /// Required.
  ///
  /// The meta information collected about the job searcher, used to improve the
  /// search quality of the service. The identifiers (such as `user_id`) are
  /// provided by users, and must be unique and consistent.
  RequestMetadata requestMetadata;

  /// Optional.
  ///
  /// Controls if the search job request requires the return of a precise
  /// count of the first 300 results. Setting this to `true` ensures
  /// consistency in the number of results per page. Best practice is to set
  /// this
  /// value to true if a client allows users to jump directly to a
  /// non-sequential search results page.
  ///
  /// Enabling this flag may adversely impact performance.
  ///
  /// Defaults to false.
  core.bool requirePreciseResultSize;

  /// Optional.
  ///
  /// Mode of a search.
  ///
  /// Defaults to SearchMode.JOB_SEARCH.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : The mode of the search method isn't
  /// specified.
  /// - "JOB_SEARCH" : The job search matches against all jobs, and featured
  /// jobs
  /// (jobs with promotionValue > 0) are not specially handled.
  /// - "FEATURED_JOB_SEARCH" : The job search matches only against featured
  /// jobs (jobs with a
  /// promotionValue > 0). This method doesn't return any jobs having a
  /// promotionValue <= 0. The search results order is determined by the
  /// promotionValue (jobs with a higher promotionValue are returned higher up
  /// in the search results), with relevance being used as a tiebreaker.
  core.String searchMode;

  SearchJobsRequest();

  SearchJobsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("disableKeywordMatch")) {
      disableKeywordMatch = _json["disableKeywordMatch"];
    }
    if (_json.containsKey("diversificationLevel")) {
      diversificationLevel = _json["diversificationLevel"];
    }
    if (_json.containsKey("enableBroadening")) {
      enableBroadening = _json["enableBroadening"];
    }
    if (_json.containsKey("histogramFacets")) {
      histogramFacets = new HistogramFacets.fromJson(_json["histogramFacets"]);
    }
    if (_json.containsKey("jobQuery")) {
      jobQuery = new JobQuery.fromJson(_json["jobQuery"]);
    }
    if (_json.containsKey("jobView")) {
      jobView = _json["jobView"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("orderBy")) {
      orderBy = _json["orderBy"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("requirePreciseResultSize")) {
      requirePreciseResultSize = _json["requirePreciseResultSize"];
    }
    if (_json.containsKey("searchMode")) {
      searchMode = _json["searchMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableKeywordMatch != null) {
      _json["disableKeywordMatch"] = disableKeywordMatch;
    }
    if (diversificationLevel != null) {
      _json["diversificationLevel"] = diversificationLevel;
    }
    if (enableBroadening != null) {
      _json["enableBroadening"] = enableBroadening;
    }
    if (histogramFacets != null) {
      _json["histogramFacets"] = (histogramFacets).toJson();
    }
    if (jobQuery != null) {
      _json["jobQuery"] = (jobQuery).toJson();
    }
    if (jobView != null) {
      _json["jobView"] = jobView;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (orderBy != null) {
      _json["orderBy"] = orderBy;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (requirePreciseResultSize != null) {
      _json["requirePreciseResultSize"] = requirePreciseResultSize;
    }
    if (searchMode != null) {
      _json["searchMode"] = searchMode;
    }
    return _json;
  }
}

/// Output only.
///
/// Response for SearchJob method.
class SearchJobsResponse {
  /// If query broadening is enabled, we may append additional results from the
  /// broadened query. This number indicates how many of the jobs returned in
  /// the
  /// jobs field are from the broadened query. These results are always at the
  /// end of the jobs list. In particular, a value of 0, or if the field isn't
  /// set, all the jobs in the jobs list are from the original
  /// (without broadening) query. If this field is non-zero, subsequent requests
  /// with offset after this result set should contain all broadened results.
  core.int broadenedQueryJobsCount;

  /// An estimation of the number of jobs that match the specified query.
  ///
  /// This number is not guaranteed to be accurate. For accurate results,
  /// see enable_precise_result_size.
  core.int estimatedTotalSize;

  /// The histogram results that match specified
  /// SearchJobsRequest.histogram_facets.
  HistogramResults histogramResults;

  /// The location filters that the service applied to the specified query. If
  /// any filters are lat-lng based, the JobLocation.location_type is
  /// JobLocation.LocationType#LOCATION_TYPE_UNSPECIFIED.
  core.List<Location> locationFilters;

  /// The Job entities that match the specified SearchJobsRequest.
  core.List<MatchingJob> matchingJobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  /// The token that specifies the starting position of the next page of
  /// results.
  /// This field is empty if there are no more results.
  core.String nextPageToken;

  /// The spell checking result, and correction.
  SpellingCorrection spellCorrection;

  /// The precise result count, which is available only if the client set
  /// enable_precise_result_size to `true`, or if the response
  /// is the last page of results. Otherwise, the value is `-1`.
  core.int totalSize;

  SearchJobsResponse();

  SearchJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("broadenedQueryJobsCount")) {
      broadenedQueryJobsCount = _json["broadenedQueryJobsCount"];
    }
    if (_json.containsKey("estimatedTotalSize")) {
      estimatedTotalSize = _json["estimatedTotalSize"];
    }
    if (_json.containsKey("histogramResults")) {
      histogramResults =
          new HistogramResults.fromJson(_json["histogramResults"]);
    }
    if (_json.containsKey("locationFilters")) {
      locationFilters = (_json["locationFilters"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("matchingJobs")) {
      matchingJobs = (_json["matchingJobs"] as core.List)
          .map<MatchingJob>((value) => new MatchingJob.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata = new ResponseMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("spellCorrection")) {
      spellCorrection =
          new SpellingCorrection.fromJson(_json["spellCorrection"]);
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (broadenedQueryJobsCount != null) {
      _json["broadenedQueryJobsCount"] = broadenedQueryJobsCount;
    }
    if (estimatedTotalSize != null) {
      _json["estimatedTotalSize"] = estimatedTotalSize;
    }
    if (histogramResults != null) {
      _json["histogramResults"] = (histogramResults).toJson();
    }
    if (locationFilters != null) {
      _json["locationFilters"] =
          locationFilters.map((value) => (value).toJson()).toList();
    }
    if (matchingJobs != null) {
      _json["matchingJobs"] =
          matchingJobs.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (spellCorrection != null) {
      _json["spellCorrection"] = (spellCorrection).toJson();
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Output only.
///
/// Spell check result.
class SpellingCorrection {
  /// Indicates if the query was corrected by the spell checker.
  core.bool corrected;

  /// Correction output consisting of the corrected keyword string.
  core.String correctedText;

  SpellingCorrection();

  SpellingCorrection.fromJson(core.Map _json) {
    if (_json.containsKey("corrected")) {
      corrected = _json["corrected"];
    }
    if (_json.containsKey("correctedText")) {
      correctedText = _json["correctedText"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (corrected != null) {
      _json["corrected"] = corrected;
    }
    if (correctedText != null) {
      _json["correctedText"] = correctedText;
    }
    return _json;
  }
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey("hours")) {
      hours = _json["hours"];
    }
    if (_json.containsKey("minutes")) {
      minutes = _json["minutes"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hours != null) {
      _json["hours"] = hours;
    }
    if (minutes != null) {
      _json["minutes"] = minutes;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}

/// Message representing a period of time between two timestamps.
class TimestampRange {
  /// End of the period.
  core.String endTime;

  /// Begin of the period.
  core.String startTime;

  TimestampRange();

  TimestampRange.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// Input only.
///
/// Request for updating a specified company.
class UpdateCompanyRequest {
  /// Required.
  ///
  /// The company resource to replace the current resource in the system.
  Company company;

  /// Optional but strongly recommended for the best service
  /// experience.
  ///
  /// If update_mask is provided, only the specified fields in
  /// company are updated. Otherwise all the fields are updated.
  ///
  /// A field mask to specify the company fields to be updated. Only
  /// top level fields of Company are supported.
  core.String updateMask;

  UpdateCompanyRequest();

  UpdateCompanyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("company")) {
      company = new Company.fromJson(_json["company"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (company != null) {
      _json["company"] = (company).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Input only.
///
/// Update job request.
class UpdateJobRequest {
  /// Required.
  ///
  /// The Job to be updated.
  Job job;

  /// Optional but strongly recommended to be provided for the best service
  /// experience.
  ///
  /// If update_mask is provided, only the specified fields in
  /// job are updated. Otherwise all the fields are updated.
  ///
  /// A field mask to restrict the fields that are updated. Only
  /// top level fields of Job are supported.
  core.String updateMask;

  UpdateJobRequest();

  UpdateJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}
