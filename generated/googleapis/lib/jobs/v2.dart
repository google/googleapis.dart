// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.jobs.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client jobs/v2';

/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
class JobsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Manage job postings
  static const JobsScope = "https://www.googleapis.com/auth/jobs";

  final commons.ApiRequester _requester;

  CompaniesResourceApi get companies => new CompaniesResourceApi(_requester);
  JobsResourceApi get jobs => new JobsResourceApi(_requester);
  V2ResourceApi get v2 => new V2ResourceApi(_requester);

  JobsApi(http.Client client,
      {core.String rootUrl = "https://jobs.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CompaniesResourceApi {
  final commons.ApiRequester _requester;

  CompaniesJobsResourceApi get jobs => new CompaniesJobsResourceApi(_requester);

  CompaniesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new company entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Company> create(Company request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/companies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }

  /// Deletes the specified company.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The resource name of the company to be deleted,
  /// such as, "companies/0000aaaa-1111-bbbb-2222-cccc3333dddd".
  /// Value must have pattern "^companies/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Retrieves the specified company.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// Resource name of the company to retrieve,
  /// such as "companies/0000aaaa-1111-bbbb-2222-cccc3333dddd".
  /// Value must have pattern "^companies/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }

  /// Lists all companies associated with a Cloud Talent Solution account.
  ///
  /// Request parameters:
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
  /// [mustHaveOpenJobs] - Optional.
  ///
  /// Set to true if the companies request must have open jobs.
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
  async.Future<ListCompaniesResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.bool mustHaveOpenJobs,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (mustHaveOpenJobs != null) {
      _queryParams["mustHaveOpenJobs"] = ["${mustHaveOpenJobs}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/companies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCompaniesResponse.fromJson(data));
  }

  /// Updates the specified company. Company names can't be updated. To update a
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
  /// company is created, for example,
  /// "companies/0000aaaa-1111-bbbb-2222-cccc3333dddd".
  /// Value must have pattern "^companies/[^/]+$".
  ///
  /// [updateCompanyFields] - Optional but strongly recommended to be provided
  /// for the best service
  /// experience.
  ///
  /// If update_company_fields is provided, only the specified fields in
  /// company are updated. Otherwise all the fields are updated.
  ///
  /// A field mask to specify the company fields to update. Valid values are:
  ///
  /// * displayName
  /// * website
  /// * imageUrl
  /// * companySize
  /// * distributorBillingCompanyId
  /// * companyInfoSources
  /// * careerPageLink
  /// * hiringAgency
  /// * hqLocation
  /// * eeoText
  /// * keywordSearchableCustomAttributes
  /// * title (deprecated)
  /// * keywordSearchableCustomFields (deprecated)
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
  async.Future<Company> patch(Company request, core.String name,
      {core.String updateCompanyFields, core.String $fields}) {
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
    if (updateCompanyFields != null) {
      _queryParams["updateCompanyFields"] = [updateCompanyFields];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }
}

class CompaniesJobsResourceApi {
  final commons.ApiRequester _requester;

  CompaniesJobsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deprecated. Use ListJobs instead.
  ///
  /// Lists all jobs associated with a company.
  ///
  /// Request parameters:
  ///
  /// [companyName] - Required.
  ///
  /// The resource name of the company that owns the jobs to be listed,
  /// such as, "companies/0000aaaa-1111-bbbb-2222-cccc3333dddd".
  /// Value must have pattern "^companies/[^/]+$".
  ///
  /// [jobRequisitionId] - Optional.
  ///
  /// The requisition ID, also known as posting ID, assigned by the company
  /// to the job.
  ///
  /// The maximum number of allowable characters is 225.
  ///
  /// [includeJobsCount] - Deprecated. Please DO NOT use this field except for
  /// small companies.
  /// Suggest counting jobs page by page instead.
  ///
  /// Optional.
  ///
  /// Set to true if the total number of open jobs is to be returned.
  ///
  /// Defaults to false.
  ///
  /// [pageToken] - Optional.
  ///
  /// The starting point of a query result.
  ///
  /// [idsOnly] - Optional.
  ///
  /// If set to `true`, only job ID, job requisition ID and language code will
  /// be
  /// returned.
  ///
  /// A typical use is to synchronize job repositories.
  ///
  /// Defaults to false.
  ///
  /// [pageSize] - Optional.
  ///
  /// The maximum number of jobs to be returned per page of results.
  ///
  /// If ids_only is set to true, the maximum allowed page size
  /// is 1000. Otherwise, the maximum allowed page size is 100.
  ///
  /// Default is 100 if empty or a number < 1 is specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCompanyJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCompanyJobsResponse> list(core.String companyName,
      {core.String jobRequisitionId,
      core.bool includeJobsCount,
      core.String pageToken,
      core.bool idsOnly,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (companyName == null) {
      throw new core.ArgumentError("Parameter companyName is required.");
    }
    if (jobRequisitionId != null) {
      _queryParams["jobRequisitionId"] = [jobRequisitionId];
    }
    if (includeJobsCount != null) {
      _queryParams["includeJobsCount"] = ["${includeJobsCount}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (idsOnly != null) {
      _queryParams["idsOnly"] = ["${idsOnly}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$companyName') + '/jobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCompanyJobsResponse.fromJson(data));
  }
}

class JobsResourceApi {
  final commons.ApiRequester _requester;

  JobsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deletes a list of Job postings by filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Empty> batchDelete(BatchDeleteJobsRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs:batchDelete';

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
  async.Future<Job> create(CreateJobRequest request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs';

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
  /// The resource name of the job to be deleted, such as "jobs/11111111".
  /// Value must have pattern "^jobs/[^/]+$".
  ///
  /// [disableFastProcess] - Deprecated. This field is not working anymore.
  ///
  /// Optional.
  ///
  /// If set to true, this call waits for all processing steps to complete
  /// before the job is cleaned up. Otherwise, the call returns while some
  /// steps are still taking place asynchronously, hence faster.
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
  async.Future<Empty> delete(core.String name,
      {core.bool disableFastProcess, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (disableFastProcess != null) {
      _queryParams["disableFastProcess"] = ["${disableFastProcess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deprecated. Use BatchDeleteJobs instead.
  ///
  /// Deletes the specified job by filter. You can specify whether to
  /// synchronously wait for validation, indexing, and general processing to be
  /// completed before the response is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Empty> deleteByFilter(DeleteJobsByFilterRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs:deleteByFilter';

    var _response = _requester.request(_url, "POST",
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
  /// The resource name of the job to retrieve, such as "jobs/11111111".
  /// Value must have pattern "^jobs/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Deprecated. Use SearchJobsRequest.histogram_facets instead to make
  /// a single call with both search and histogram.
  ///
  /// Retrieves a histogram for the given
  /// GetHistogramRequest. This call provides a structured
  /// count of jobs that match against the search query, grouped by specified
  /// facets.
  ///
  /// This call constrains the visibility of jobs
  /// present in the database, and only counts jobs the caller has
  /// permission to search against.
  ///
  /// For example, use this call to generate the
  /// number of jobs in the U.S. by state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetHistogramResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetHistogramResponse> histogram(GetHistogramRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs:histogram';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetHistogramResponse.fromJson(data));
  }

  /// Lists jobs by filter.
  ///
  /// Request parameters:
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
  /// * companyName = "companies/123"
  /// * companyName = "companies/123" AND requisitionId = "req-1"
  ///
  /// [pageToken] - Optional.
  ///
  /// The starting point of a query result.
  ///
  /// [pageSize] - Optional.
  ///
  /// The maximum number of jobs to be returned per page of results.
  ///
  /// If ids_only is set to true, the maximum allowed page size
  /// is 1000. Otherwise, the maximum allowed page size is 100.
  ///
  /// Default is 100 if empty or a number < 1 is specified.
  ///
  /// [idsOnly] - Optional.
  ///
  /// If set to `true`, only Job.name, Job.requisition_id and
  /// Job.language_code will be returned.
  ///
  /// A typical use case is to synchronize job repositories.
  ///
  /// Defaults to false.
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
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.bool idsOnly,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (idsOnly != null) {
      _queryParams["idsOnly"] = ["${idsOnly}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs';

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
  /// Resource name assigned to a job by the API, for example, "/jobs/foo". Use
  /// of this field in job queries and API calls is preferred over the use of
  /// requisition_id since this value is unique.
  /// Value must have pattern "^jobs/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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
  async.Future<SearchJobsResponse> search(SearchJobsRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs:search';

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
  async.Future<SearchJobsResponse> searchForAlert(SearchJobsRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/jobs:searchForAlert';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchJobsResponse.fromJson(data));
  }
}

class V2ResourceApi {
  final commons.ApiRequester _requester;

  V2ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Completes the specified prefix with job keyword suggestions.
  /// Intended for use by a job search auto-complete search box.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Required.
  ///
  /// The language of the query. This is
  /// the BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  ///
  /// For CompletionType.JOB_TITLE type, only open jobs with same
  /// language_code are returned.
  ///
  /// For CompletionType.COMPANY_NAME type,
  /// only companies having open jobs with same language_code are
  /// returned.
  ///
  /// For CompletionType.COMBINED type, only open jobs with same
  /// language_code or companies having open jobs with same
  /// language_code are returned.
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
  /// [companyName] - Optional.
  ///
  /// If provided, restricts completion to the specified company.
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
  /// The maximum allowed page size is 10.
  ///
  /// [query] - Required.
  ///
  /// The query used to generate suggestions.
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
      {core.String languageCode,
      core.String type,
      core.String companyName,
      core.String scope,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if (type != null) {
      _queryParams["type"] = [type];
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2:complete';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CompleteQueryResponse.fromJson(data));
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
  /// Sample Query: companyName = "companies/123" AND requisitionId = "req-1"
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

/// Output only.
///
/// Commute details related to this job.
class CommuteInfo {
  /// Location used as the destination in the commute calculation.
  JobLocation jobLocation;

  /// The number of seconds required to travel to the job location from the
  /// query
  /// location. A duration of 0 seconds indicates that the job is not
  /// reachable within the requested duration, but was returned as part of an
  /// expanded query.
  core.String travelDuration;

  CommuteInfo();

  CommuteInfo.fromJson(core.Map _json) {
    if (_json.containsKey("jobLocation")) {
      jobLocation = new JobLocation.fromJson(_json["jobLocation"]);
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

/// Input only.
///
/// Parameters needed for commute search.
class CommutePreference {
  /// Optional.
  /// If `true`, jobs without street level addresses may also be returned.
  /// For city level addresses, the city center is used. For state and coarser
  /// level addresses, text matching is used.
  /// If this field is set to `false` or is not specified, only jobs that
  /// include
  /// street level addresses will be returned by commute search.
  core.bool allowNonStreetLevelAddress;

  /// Optional.
  ///
  /// The departure hour to use to calculate traffic impact. Accepts an
  /// integer between 0 and 23, representing the hour in the time zone of the
  /// start_location. Must not be present if road_traffic is specified.
  core.int departureHourLocal;

  /// Required.
  ///
  /// The method of transportation for which to calculate the commute time.
  /// Possible string values are:
  /// - "COMMUTE_METHOD_UNSPECIFIED" : Commute method is not specified.
  /// - "DRIVING" : Commute time is calculated based on driving time.
  /// - "TRANSIT" : Commute time is calculated based on public transit including
  /// bus, metro,
  /// subway, etc.
  core.String method;

  /// Optional.
  ///
  /// Specifies the traffic density to use when calculating commute time.
  /// Must not be present if departure_hour_local is specified.
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
  LatLng startLocation;

  /// Required.
  ///
  /// The maximum travel time in seconds. The maximum allowed value is `3600s`
  /// (one hour). Format is `123s`.
  core.String travelTime;

  CommutePreference();

  CommutePreference.fromJson(core.Map _json) {
    if (_json.containsKey("allowNonStreetLevelAddress")) {
      allowNonStreetLevelAddress = _json["allowNonStreetLevelAddress"];
    }
    if (_json.containsKey("departureHourLocal")) {
      departureHourLocal = _json["departureHourLocal"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("roadTraffic")) {
      roadTraffic = _json["roadTraffic"];
    }
    if (_json.containsKey("startLocation")) {
      startLocation = new LatLng.fromJson(_json["startLocation"]);
    }
    if (_json.containsKey("travelTime")) {
      travelTime = _json["travelTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowNonStreetLevelAddress != null) {
      _json["allowNonStreetLevelAddress"] = allowNonStreetLevelAddress;
    }
    if (departureHourLocal != null) {
      _json["departureHourLocal"] = departureHourLocal;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (roadTraffic != null) {
      _json["roadTraffic"] = roadTraffic;
    }
    if (startLocation != null) {
      _json["startLocation"] = (startLocation).toJson();
    }
    if (travelTime != null) {
      _json["travelTime"] = travelTime;
    }
    return _json;
  }
}

/// A Company resource represents a company in the service. A company is the
/// entity that owns job listings, that is, the hiring entity responsible for
/// employing applicants for the job position.
class Company {
  /// Optional.
  ///
  /// The URL to employer's career site or careers page on the employer's web
  /// site.
  core.String careerPageLink;

  /// Optional.
  ///
  /// Identifiers external to the application that help to further identify
  /// the employer.
  core.List<CompanyInfoSource> companyInfoSources;

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
  core.String companySize;

  /// Deprecated. Do not use this field.
  ///
  /// Optional.
  ///
  /// This field is no longer used. Any value set to it is ignored.
  core.bool disableLocationOptimization;

  /// Required.
  ///
  /// The name of the employer to be displayed with the job,
  /// for example, "Google, LLC.".
  core.String displayName;

  /// Optional.
  ///
  /// The unique company identifier provided by the client to identify an
  /// employer for billing purposes. Recommended practice is to use
  /// the distributor_company_id.
  ///
  /// Defaults to same value as distributor_company_id when a value
  /// is not provided.
  core.String distributorBillingCompanyId;

  /// Required.
  ///
  /// A client's company identifier, used to uniquely identify the
  /// company. If an employer has a subsidiary or sub-brand, such as "Alphabet"
  /// and "Google", which the client wishes to use as the company displayed on
  /// the job. Best practice is to create a distinct company identifier for each
  /// distinct brand displayed.
  ///
  /// The maximum number of allowed characters is 255.
  core.String distributorCompanyId;

  /// Optional.
  ///
  /// Equal Employment Opportunity legal disclaimer text to be
  /// associated with all jobs, and typically to be displayed in all
  /// roles.
  ///
  /// The maximum number of allowed characters is 500.
  core.String eeoText;

  /// Optional.
  ///
  /// Set to true if it is the hiring agency that post jobs for other
  /// employers.
  ///
  /// Defaults to false if not provided.
  core.bool hiringAgency;

  /// Optional.
  ///
  /// The street address of the company's main headquarters, which may be
  /// different from the job location. The service attempts
  /// to geolocate the provided address, and populates a more specific
  /// location wherever possible in structured_company_hq_location.
  core.String hqLocation;

  /// Optional.
  ///
  /// A URL that hosts the employer's company logo. If provided,
  /// the logo image should be squared at 80x80 pixels.
  ///
  /// The url must be a Google Photos or Google Album url.
  /// Only images in these Google sub-domains are accepted.
  core.String imageUrl;

  /// Optional.
  ///
  /// A list of keys of filterable Job.custom_attributes, whose
  /// corresponding `string_values` are used in keyword search. Jobs with
  /// `string_values` under these specified field keys are returned if any
  /// of the values matches the search keyword. Custom field values with
  /// parenthesis, brackets and special symbols might not be properly
  /// searchable,
  /// and those keyword queries need to be surrounded by quotes.
  core.List<core.String> keywordSearchableCustomAttributes;

  /// Deprecated. Use keyword_searchable_custom_attributes instead.
  ///
  /// Optional.
  ///
  /// A list of filterable custom fields that should be used in keyword
  /// search. The jobs of this company are returned if any of these custom
  /// fields matches the search keyword. Custom field values with parenthesis,
  /// brackets and special symbols might not be properly searchable, and those
  /// keyword queries need to be surrounded by quotes.
  core.List<core.int> keywordSearchableCustomFields;

  /// Required during company update.
  ///
  /// The resource name for a company. This is generated by the service when a
  /// company is created, for example,
  /// "companies/0000aaaa-1111-bbbb-2222-cccc3333dddd".
  core.String name;

  /// Output only.
  ///
  /// A structured headquarters location of the company,
  /// resolved from hq_location if possible.
  JobLocation structuredCompanyHqLocation;

  /// Output only.
  ///
  /// Indicates whether a company is flagged to be suspended from public
  /// availability by the service when job content appears suspicious,
  /// abusive, or spammy.
  core.bool suspended;

  /// Deprecated. Use display_name instead.
  ///
  /// Required.
  ///
  /// The name of the employer to be displayed with the job,
  /// for example, "Google, LLC.".
  core.String title;

  /// Optional.
  ///
  /// The URL representing the company's primary web site or home page,
  /// such as, "www.google.com".
  core.String website;

  Company();

  Company.fromJson(core.Map _json) {
    if (_json.containsKey("careerPageLink")) {
      careerPageLink = _json["careerPageLink"];
    }
    if (_json.containsKey("companyInfoSources")) {
      companyInfoSources = (_json["companyInfoSources"] as core.List)
          .map<CompanyInfoSource>(
              (value) => new CompanyInfoSource.fromJson(value))
          .toList();
    }
    if (_json.containsKey("companySize")) {
      companySize = _json["companySize"];
    }
    if (_json.containsKey("disableLocationOptimization")) {
      disableLocationOptimization = _json["disableLocationOptimization"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("distributorBillingCompanyId")) {
      distributorBillingCompanyId = _json["distributorBillingCompanyId"];
    }
    if (_json.containsKey("distributorCompanyId")) {
      distributorCompanyId = _json["distributorCompanyId"];
    }
    if (_json.containsKey("eeoText")) {
      eeoText = _json["eeoText"];
    }
    if (_json.containsKey("hiringAgency")) {
      hiringAgency = _json["hiringAgency"];
    }
    if (_json.containsKey("hqLocation")) {
      hqLocation = _json["hqLocation"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("keywordSearchableCustomAttributes")) {
      keywordSearchableCustomAttributes =
          (_json["keywordSearchableCustomAttributes"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("keywordSearchableCustomFields")) {
      keywordSearchableCustomFields =
          (_json["keywordSearchableCustomFields"] as core.List)
              .cast<core.int>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("structuredCompanyHqLocation")) {
      structuredCompanyHqLocation =
          new JobLocation.fromJson(_json["structuredCompanyHqLocation"]);
    }
    if (_json.containsKey("suspended")) {
      suspended = _json["suspended"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("website")) {
      website = _json["website"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (careerPageLink != null) {
      _json["careerPageLink"] = careerPageLink;
    }
    if (companyInfoSources != null) {
      _json["companyInfoSources"] =
          companyInfoSources.map((value) => (value).toJson()).toList();
    }
    if (companySize != null) {
      _json["companySize"] = companySize;
    }
    if (disableLocationOptimization != null) {
      _json["disableLocationOptimization"] = disableLocationOptimization;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (distributorBillingCompanyId != null) {
      _json["distributorBillingCompanyId"] = distributorBillingCompanyId;
    }
    if (distributorCompanyId != null) {
      _json["distributorCompanyId"] = distributorCompanyId;
    }
    if (eeoText != null) {
      _json["eeoText"] = eeoText;
    }
    if (hiringAgency != null) {
      _json["hiringAgency"] = hiringAgency;
    }
    if (hqLocation != null) {
      _json["hqLocation"] = hqLocation;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (keywordSearchableCustomAttributes != null) {
      _json["keywordSearchableCustomAttributes"] =
          keywordSearchableCustomAttributes;
    }
    if (keywordSearchableCustomFields != null) {
      _json["keywordSearchableCustomFields"] = keywordSearchableCustomFields;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (structuredCompanyHqLocation != null) {
      _json["structuredCompanyHqLocation"] =
          (structuredCompanyHqLocation).toJson();
    }
    if (suspended != null) {
      _json["suspended"] = suspended;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (website != null) {
      _json["website"] = website;
    }
    return _json;
  }
}

/// A resource that represents an external  Google identifier for a company,
/// for example, a Google+ business page or a Google Maps business page.
/// For unsupported types, use `unknown_type_id`.
class CompanyInfoSource {
  /// Optional.
  ///
  /// The Google's Knowledge Graph value for the employer's company.
  core.String freebaseMid;

  /// Optional.
  ///
  /// The numeric identifier for the employer's Google+ business page.
  core.String gplusId;

  /// Optional.
  ///
  /// The numeric identifier for the employer's headquarters on Google Maps,
  /// namely, the Google Maps CID (cell id).
  core.String mapsCid;

  /// Optional.
  ///
  /// A Google identifier that does not match any of the other types.
  core.String unknownTypeId;

  CompanyInfoSource();

  CompanyInfoSource.fromJson(core.Map _json) {
    if (_json.containsKey("freebaseMid")) {
      freebaseMid = _json["freebaseMid"];
    }
    if (_json.containsKey("gplusId")) {
      gplusId = _json["gplusId"];
    }
    if (_json.containsKey("mapsCid")) {
      mapsCid = _json["mapsCid"];
    }
    if (_json.containsKey("unknownTypeId")) {
      unknownTypeId = _json["unknownTypeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (freebaseMid != null) {
      _json["freebaseMid"] = freebaseMid;
    }
    if (gplusId != null) {
      _json["gplusId"] = gplusId;
    }
    if (mapsCid != null) {
      _json["mapsCid"] = mapsCid;
    }
    if (unknownTypeId != null) {
      _json["unknownTypeId"] = unknownTypeId;
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

  /// Required.
  ///
  /// Compensation type.
  /// Possible string values are:
  /// - "COMPENSATION_TYPE_UNSPECIFIED" : Default value. Equivalent to
  /// OTHER_COMPENSATION_TYPE.
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
  /// - "COMPENSATION_UNIT_UNSPECIFIED" : Default value. Equivalent to
  /// OTHER_COMPENSATION_UNIT.
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
  /// Whether to include jobs whose compensation range is unspecified.
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
  /// Deprecated. Use entries instead.
  ///
  /// Optional.
  ///
  /// The amount of compensation or pay for the job.
  /// As an alternative, compensation_amount_min and
  /// compensation_amount_max may be used to define a range of
  /// compensation.
  Money amount;

  /// Output only.
  ///
  /// Annualized base compensation range. Computed as
  /// base compensation entry's CompensationEntry.compensation times
  /// CompensationEntry.expected_units_per_year.
  ///
  /// See CompensationEntry for explanation on compensation annualization.
  CompensationRange annualizedBaseCompensationRange;

  /// Output only.
  ///
  /// Annualized total compensation range. Computed as
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

  /// Deprecated. Use entries instead.
  ///
  /// Optional.
  ///
  /// An upper bound on a range for compensation or pay for the job.
  /// The currency type is specified in compensation_amount.
  Money max;

  /// Deprecated. Use entries instead.
  ///
  /// Optional.
  ///
  /// A lower bound on a range for compensation or pay for the job.
  /// The currency type is specified in compensation_amount.
  Money min;

  /// Deprecated. Use entries instead.
  ///
  /// Optional.
  ///
  /// Type of job compensation.
  /// Possible string values are:
  /// - "JOB_COMPENSATION_TYPE_UNSPECIFIED" : The default value if the type is
  /// not specified.
  /// - "HOURLY" : The job compensation is quoted by the number of hours worked.
  /// - "SALARY" : The job compensation is quoted on an annual basis.
  /// - "PER_PROJECT" : The job compensation is quoted by project completion.
  /// - "COMMISSION" : The job compensation is quoted based solely on
  /// commission.
  /// - "OTHER_TYPE" : The job compensation is not quoted according to the
  /// listed compensation
  /// options.
  core.String type;

  CompensationInfo();

  CompensationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new Money.fromJson(_json["amount"]);
    }
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
    if (_json.containsKey("max")) {
      max = new Money.fromJson(_json["max"]);
    }
    if (_json.containsKey("min")) {
      min = new Money.fromJson(_json["min"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = (amount).toJson();
    }
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
    if (max != null) {
      _json["max"] = (max).toJson();
    }
    if (min != null) {
      _json["min"] = (min).toJson();
    }
    if (type != null) {
      _json["type"] = type;
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
  Money max;

  /// Optional.
  ///
  /// The minimum amount of compensation. If left empty, the value is set
  /// to zero and the currency code is set to match the
  /// currency code of max_compensation.
  Money min;

  CompensationRange();

  CompensationRange.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = new Money.fromJson(_json["max"]);
    }
    if (_json.containsKey("min")) {
      min = new Money.fromJson(_json["min"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (max != null) {
      _json["max"] = (max).toJson();
    }
    if (min != null) {
      _json["min"] = (min).toJson();
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
  /// The URL for the company logo if `type=COMPANY_NAME`.
  core.String imageUrl;

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
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
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
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
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

/// Input only.
///
/// Create job request.
class CreateJobRequest {
  /// Deprecated. Please use processing_options. This flag is ignored if
  /// processing_options is set.
  ///
  /// Optional.
  ///
  /// If set to `true`, the service does not attempt to resolve a
  /// more precise address for the job.
  core.bool disableStreetAddressResolution;

  /// Required.
  ///
  /// The Job to be created.
  Job job;

  /// Optional.
  ///
  /// Options for job processing.
  JobProcessingOptions processingOptions;

  CreateJobRequest();

  CreateJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("disableStreetAddressResolution")) {
      disableStreetAddressResolution = _json["disableStreetAddressResolution"];
    }
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("processingOptions")) {
      processingOptions =
          new JobProcessingOptions.fromJson(_json["processingOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableStreetAddressResolution != null) {
      _json["disableStreetAddressResolution"] = disableStreetAddressResolution;
    }
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (processingOptions != null) {
      _json["processingOptions"] = (processingOptions).toJson();
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

  /// Optional but at least one of string_values or long_value must
  /// be specified.
  ///
  /// This field is used to perform number range search.
  /// (`EQ`, `GT`, `GE`, `LE`, `LT`) over filterable `long_value`. For
  /// `long_value`, a value between Long.MIN and Long.MAX is allowed.
  core.String longValue;

  /// Optional but at least one of string_values or long_value must
  /// be specified.
  ///
  /// This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or
  /// `CASE_INSENSITIVE_MATCH`) search.
  /// For filterable `string_values`, a maximum total number of 200 values
  /// is allowed, with each `string_value` has a byte size of no more than
  /// 255B. For unfilterable `string_values`, the maximum total byte size of
  /// unfilterable `string_values` is 50KB.
  ///
  /// Empty strings are not allowed.
  StringValues stringValues;

  CustomAttribute();

  CustomAttribute.fromJson(core.Map _json) {
    if (_json.containsKey("filterable")) {
      filterable = _json["filterable"];
    }
    if (_json.containsKey("longValue")) {
      longValue = _json["longValue"];
    }
    if (_json.containsKey("stringValues")) {
      stringValues = new StringValues.fromJson(_json["stringValues"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterable != null) {
      _json["filterable"] = filterable;
    }
    if (longValue != null) {
      _json["longValue"] = longValue;
    }
    if (stringValues != null) {
      _json["stringValues"] = (stringValues).toJson();
    }
    return _json;
  }
}

/// Custom attributes histogram request. An error will be thrown if neither
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

  /// Optional. If set to true, the response will include the histogram value
  /// for
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

/// Resource that represents the custom data not captured by the standard
/// fields.
class CustomField {
  /// Optional.
  ///
  /// The values of the custom data.
  core.List<core.String> values;

  CustomField();

  CustomField.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Input only.
///
/// Custom field filter of the search.
class CustomFieldFilter {
  /// Required.
  ///
  /// The query strings for the filter.
  core.List<core.String> queries;

  /// Optional.
  ///
  /// The type of filter.
  /// Defaults to FilterType.OR.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Default value.
  /// - "OR" : Search for a match with any query.
  /// - "AND" : Search for a match with all queries.
  /// - "NOT" : Negate the set of filter values for the search.
  core.String type;

  CustomFieldFilter();

  CustomFieldFilter.fromJson(core.Map _json) {
    if (_json.containsKey("queries")) {
      queries = (_json["queries"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (queries != null) {
      _json["queries"] = queries;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day
/// and time zone are either specified elsewhere or are not significant. The
/// date
/// is relative to the Proleptic Gregorian Calendar. This can represent:
///
/// * A full date, with non-zero year, month and day values
/// * A month and day value, with a zero year, e.g. an anniversary
/// * A year on its own, with zero month and day values
/// * A year and month value, with a zero day, e.g. a credit card expiration
/// date
///
/// Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Deprecated. Use BatchDeleteJobsRequest instead.
///
/// Input only.
///
/// Delete job by filter request.
///
/// The job typically becomes unsearchable within 10 seconds, but it may take
/// up to 5 minutes.
class DeleteJobsByFilterRequest {
  /// Optional.
  ///
  /// If set to true, this call waits for all processing steps to complete
  /// before the job is cleaned up. Otherwise, the call returns while some
  /// steps are still taking place asynchronously, hence faster.
  core.bool disableFastProcess;

  /// Required.
  ///
  /// Restrictions on the scope of the delete request.
  Filter filter;

  DeleteJobsByFilterRequest();

  DeleteJobsByFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("disableFastProcess")) {
      disableFastProcess = _json["disableFastProcess"];
    }
    if (_json.containsKey("filter")) {
      filter = new Filter.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableFastProcess != null) {
      _json["disableFastProcess"] = disableFastProcess;
    }
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// Input only.
///
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
  /// distinguishes
  /// the device from other devices.
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

/// Deprecated. Always use CompensationFilter.
///
/// Input only.
///
/// Filter on job compensation type and amount.
class ExtendedCompensationFilter {
  /// Optional.
  ///
  /// Compensation range.
  ExtendedCompensationInfoCompensationRange compensationRange;

  /// Required.
  ///
  /// Specify desired `base compensation entry's`
  /// ExtendedCompensationInfo.CompensationUnit.
  core.List<core.String> compensationUnits;

  /// Optional.
  ///
  /// Specify currency in 3-letter
  /// [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html) format. If
  /// unspecified, jobs are returned regardless of currency.
  core.String currency;

  /// Optional.
  ///
  /// Whether to include jobs whose compensation range is unspecified.
  core.bool includeJobWithUnspecifiedCompensationRange;

  /// Required.
  ///
  /// Type of filter.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Filter type unspecified. Position holder,
  /// INVALID, should never be used.
  /// - "UNIT_ONLY" : Filter by `base compensation entry's` unit. A job is a
  /// match if and
  /// only if the job contains a base CompensationEntry and the base
  /// CompensationEntry's unit matches provided compensation_units.
  /// Populate one or more compensation_units.
  ///
  /// See ExtendedCompensationInfo.CompensationEntry for definition of
  /// base compensation entry.
  /// - "UNIT_AND_AMOUNT" : Filter by `base compensation entry's` unit and
  /// amount / range. A job
  /// is a match if and only if the job contains a base CompensationEntry, and
  /// the base entry's unit matches provided compensation_units and amount
  /// or range overlaps with provided compensation_range.
  ///
  /// See ExtendedCompensationInfo.CompensationEntry for definition of
  /// base compensation entry.
  ///
  /// Set exactly one
  /// compensation_units and populate
  /// compensation_range.
  /// - "ANNUALIZED_BASE_AMOUNT" : Filter by annualized base compensation amount
  /// and `base compensation
  /// entry's` unit. Populate compensation_range and zero or more
  /// compensation_units.
  /// - "ANNUALIZED_TOTAL_AMOUNT" : Filter by annualized total compensation
  /// amount and `base compensation
  /// entry's` unit . Populate compensation_range and zero or more
  /// compensation_units.
  core.String type;

  ExtendedCompensationFilter();

  ExtendedCompensationFilter.fromJson(core.Map _json) {
    if (_json.containsKey("compensationRange")) {
      compensationRange =
          new ExtendedCompensationInfoCompensationRange.fromJson(
              _json["compensationRange"]);
    }
    if (_json.containsKey("compensationUnits")) {
      compensationUnits =
          (_json["compensationUnits"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("includeJobWithUnspecifiedCompensationRange")) {
      includeJobWithUnspecifiedCompensationRange =
          _json["includeJobWithUnspecifiedCompensationRange"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compensationRange != null) {
      _json["compensationRange"] = (compensationRange).toJson();
    }
    if (compensationUnits != null) {
      _json["compensationUnits"] = compensationUnits;
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (includeJobWithUnspecifiedCompensationRange != null) {
      _json["includeJobWithUnspecifiedCompensationRange"] =
          includeJobWithUnspecifiedCompensationRange;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Deprecated. Use CompensationInfo.
///
/// Describes job compensation.
class ExtendedCompensationInfo {
  /// Output only.
  ///
  /// Annualized base compensation range.
  ExtendedCompensationInfoCompensationRange annualizedBaseCompensationRange;

  /// Output only.
  ///
  /// Indicates annualized base compensation range cannot be derived, due to
  /// the job's base compensation entry cannot be annualized.
  /// See CompensationEntry for explanation on annualization and base
  /// compensation entry.
  core.bool annualizedBaseCompensationUnspecified;

  /// Output only.
  ///
  /// Annualized total compensation range.
  ExtendedCompensationInfoCompensationRange annualizedTotalCompensationRange;

  /// Output only.
  ///
  /// Indicates annualized total compensation range cannot be derived, due to
  /// the job's all CompensationEntry cannot be annualized.
  /// See CompensationEntry for explanation on annualization and base
  /// compensation entry.
  core.bool annualizedTotalCompensationUnspecified;

  /// Optional.
  ///
  /// A 3-letter [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html)
  /// currency code.
  core.String currency;

  /// Optional.
  ///
  /// Job compensation information.
  ///
  /// At most one entry can be of type
  /// ExtendedCompensationInfo.CompensationType.BASE, which is
  /// referred as ** base compensation entry ** for the job.
  core.List<ExtendedCompensationInfoCompensationEntry> entries;

  ExtendedCompensationInfo();

  ExtendedCompensationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("annualizedBaseCompensationRange")) {
      annualizedBaseCompensationRange =
          new ExtendedCompensationInfoCompensationRange.fromJson(
              _json["annualizedBaseCompensationRange"]);
    }
    if (_json.containsKey("annualizedBaseCompensationUnspecified")) {
      annualizedBaseCompensationUnspecified =
          _json["annualizedBaseCompensationUnspecified"];
    }
    if (_json.containsKey("annualizedTotalCompensationRange")) {
      annualizedTotalCompensationRange =
          new ExtendedCompensationInfoCompensationRange.fromJson(
              _json["annualizedTotalCompensationRange"]);
    }
    if (_json.containsKey("annualizedTotalCompensationUnspecified")) {
      annualizedTotalCompensationUnspecified =
          _json["annualizedTotalCompensationUnspecified"];
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List)
          .map<ExtendedCompensationInfoCompensationEntry>((value) =>
              new ExtendedCompensationInfoCompensationEntry.fromJson(value))
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
    if (annualizedBaseCompensationUnspecified != null) {
      _json["annualizedBaseCompensationUnspecified"] =
          annualizedBaseCompensationUnspecified;
    }
    if (annualizedTotalCompensationRange != null) {
      _json["annualizedTotalCompensationRange"] =
          (annualizedTotalCompensationRange).toJson();
    }
    if (annualizedTotalCompensationUnspecified != null) {
      _json["annualizedTotalCompensationUnspecified"] =
          annualizedTotalCompensationUnspecified;
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Deprecated. See CompensationInfo.
///
/// A compensation entry that represents one component of compensation, such
/// as base pay, bonus, or other compensation type.
///
/// Annualization: One compensation entry can be annualized if
/// - it contains valid amount or range.
/// - and its expected_units_per_year is set or can be derived.
/// Its annualized range is determined as (amount or range) times
/// expected_units_per_year.
class ExtendedCompensationInfoCompensationEntry {
  /// Optional.
  ///
  /// Monetary amount.
  ExtendedCompensationInfoDecimal amount;

  /// Optional.
  ///
  /// Compensation description.
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
  ExtendedCompensationInfoDecimal expectedUnitsPerYear;

  /// Optional.
  ///
  /// Compensation range.
  ExtendedCompensationInfoCompensationRange range;

  /// Required.
  ///
  /// Compensation type.
  /// Possible string values are:
  /// - "EXTENDED_COMPENSATION_TYPE_UNSPECIFIED" : Default value. Equivalent to
  /// OTHER_COMPENSATION_TYPE.
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
  /// - "EXTENDED_COMPENSATION_UNIT_UNSPECIFIED" : Default value. Equivalent to
  /// OTHER_COMPENSATION_UNIT.
  /// - "HOURLY" : Hourly.
  /// - "DAILY" : Daily.
  /// - "WEEKLY" : Weekly
  /// - "MONTHLY" : Monthly.
  /// - "YEARLY" : Yearly.
  /// - "ONE_TIME" : One time.
  /// - "OTHER_COMPENSATION_UNIT" : Other compensation units.
  core.String unit;

  /// Optional.
  ///
  /// Indicates compensation amount and range are unset.
  core.bool unspecified;

  ExtendedCompensationInfoCompensationEntry();

  ExtendedCompensationInfoCompensationEntry.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new ExtendedCompensationInfoDecimal.fromJson(_json["amount"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expectedUnitsPerYear")) {
      expectedUnitsPerYear = new ExtendedCompensationInfoDecimal.fromJson(
          _json["expectedUnitsPerYear"]);
    }
    if (_json.containsKey("range")) {
      range = new ExtendedCompensationInfoCompensationRange.fromJson(
          _json["range"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("unspecified")) {
      unspecified = _json["unspecified"];
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
      _json["expectedUnitsPerYear"] = (expectedUnitsPerYear).toJson();
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
    if (unspecified != null) {
      _json["unspecified"] = unspecified;
    }
    return _json;
  }
}

/// Deprecated. See CompensationInfo.
///
/// Compensation range.
class ExtendedCompensationInfoCompensationRange {
  /// Required.
  ///
  /// Maximum value.
  ExtendedCompensationInfoDecimal max;

  /// Required.
  ///
  /// Minimum value.
  ExtendedCompensationInfoDecimal min;

  ExtendedCompensationInfoCompensationRange();

  ExtendedCompensationInfoCompensationRange.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = new ExtendedCompensationInfoDecimal.fromJson(_json["max"]);
    }
    if (_json.containsKey("min")) {
      min = new ExtendedCompensationInfoDecimal.fromJson(_json["min"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (max != null) {
      _json["max"] = (max).toJson();
    }
    if (min != null) {
      _json["min"] = (min).toJson();
    }
    return _json;
  }
}

/// Deprecated. See CompensationInfo.
///
/// Decimal number.
class ExtendedCompensationInfoDecimal {
  /// Micro (10^-6) units.
  /// The value must be between -999,999 and +999,999 inclusive.
  /// If `units` is positive, `micros` must be positive or zero.
  /// If `units` is zero, `micros` can be positive, zero, or negative.
  /// If `units` is negative, `micros` must be negative or zero.
  /// For example -1.75 is represented as `units`=-1 and `micros`=-750,000.
  core.int micros;

  /// Whole units.
  core.String units;

  ExtendedCompensationInfoDecimal();

  ExtendedCompensationInfoDecimal.fromJson(core.Map _json) {
    if (_json.containsKey("micros")) {
      micros = _json["micros"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (micros != null) {
      _json["micros"] = micros;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/// Deprecated. Use BatchDeleteJobsRequest instead.
///
/// Input only.
///
/// Filter for jobs to be deleted.
class Filter {
  /// Required.
  ///
  /// The requisition ID (or posting ID) assigned by the client to identify a
  /// job. This is intended for client identification and tracking of
  /// listings.
  /// name takes precedence over this field
  /// The maximum number of allowed characters is 225.
  core.String requisitionId;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("requisitionId")) {
      requisitionId = _json["requisitionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requisitionId != null) {
      _json["requisitionId"] = requisitionId;
    }
    return _json;
  }
}

/// Deprecated. Use SearchJobsRequest.histogram_facets instead to make
/// a single call with both search and histogram.
///
/// Input only.
///
/// A request for the `GetHistogram` method.
class GetHistogramRequest {
  /// Optional.
  ///
  /// Controls whether to broaden the search to avoid too few results for a
  /// given query in instances where a search has sparse results. Results from a
  /// broadened query is a superset of the results from the original query.
  ///
  /// Defaults to false.
  core.bool allowBroadening;

  /// Deprecated. Use query instead.
  ///
  /// Optional.
  ///
  /// Restrictions on the scope of the histogram.
  JobFilters filters;

  /// Optional.
  ///
  /// Query used to search against jobs, such as keyword, location filters, etc.
  JobQuery query;

  /// Meta information, such as `user_id`, collected from the job searcher or
  /// other entity conducting a job search, is used to improve the service's
  /// search quality. Users determine identifier values, which must be
  /// unique and consist.
  RequestMetadata requestMetadata;

  /// Required.
  ///
  /// A list of facets that specify the histogram data to be calculated
  /// against and returned.
  ///
  /// Histogram response times can be slow, and counts
  /// can be approximations. This call may be temporarily or permanently removed
  /// prior to the production release of Cloud Talent Solution.
  core.List<core.String> searchTypes;

  GetHistogramRequest();

  GetHistogramRequest.fromJson(core.Map _json) {
    if (_json.containsKey("allowBroadening")) {
      allowBroadening = _json["allowBroadening"];
    }
    if (_json.containsKey("filters")) {
      filters = new JobFilters.fromJson(_json["filters"]);
    }
    if (_json.containsKey("query")) {
      query = new JobQuery.fromJson(_json["query"]);
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("searchTypes")) {
      searchTypes = (_json["searchTypes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowBroadening != null) {
      _json["allowBroadening"] = allowBroadening;
    }
    if (filters != null) {
      _json["filters"] = (filters).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (searchTypes != null) {
      _json["searchTypes"] = searchTypes;
    }
    return _json;
  }
}

/// Deprecated. Use SearchJobsRequest.histogram_facets instead to make
/// a single call with both search and histogram.
///
/// Output only.
///
/// The response of the GetHistogram method.
class GetHistogramResponse {
  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  /// The Histogram results.
  core.List<HistogramResult> results;

  GetHistogramResponse();

  GetHistogramResponse.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = new ResponseMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<HistogramResult>((value) => new HistogramResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
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

  /// Optional. Specifies the simple type of histogram facets, for example,
  /// `COMPANY_SIZE`, `EMPLOYMENT_TYPE` etc. This field is equivalent to
  /// GetHistogramRequest.
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
  /// - "JOB_FIELD_UNSPECIFIED" : The default value if search type is not
  /// specified.
  /// - "COMPANY_ID" : Filter by the company id field.
  /// - "EMPLOYMENT_TYPE" : Filter by the employment type field, such as
  /// `FULL_TIME` or `PART_TIME`.
  /// - "COMPANY_SIZE" : Filter by the company size type field, such as `BIG`,
  /// `SMALL` or `BIGGER`.
  /// - "DATE_PUBLISHED" : Filter by the date published field. Values are
  /// stringified
  /// with TimeRange, for example, TimeRange.PAST_MONTH.
  /// - "CUSTOM_FIELD_1" : Filter by custom field 1.
  /// - "CUSTOM_FIELD_2" : Filter by custom field 2.
  /// - "CUSTOM_FIELD_3" : Filter by custom field 3.
  /// - "CUSTOM_FIELD_4" : Filter by custom field 4.
  /// - "CUSTOM_FIELD_5" : Filter by custom field 5.
  /// - "CUSTOM_FIELD_6" : Filter by custom field 6.
  /// - "CUSTOM_FIELD_7" : Filter by custom field 7.
  /// - "CUSTOM_FIELD_8" : Filter by custom field 8.
  /// - "CUSTOM_FIELD_9" : Filter by custom field 9.
  /// - "CUSTOM_FIELD_10" : Filter by custom field 10.
  /// - "CUSTOM_FIELD_11" : Filter by custom field 11.
  /// - "CUSTOM_FIELD_12" : Filter by custom field 12.
  /// - "CUSTOM_FIELD_13" : Filter by custom field 13.
  /// - "CUSTOM_FIELD_14" : Filter by custom field 14.
  /// - "CUSTOM_FIELD_15" : Filter by custom field 15.
  /// - "CUSTOM_FIELD_16" : Filter by custom field 16.
  /// - "CUSTOM_FIELD_17" : Filter by custom field 17.
  /// - "CUSTOM_FIELD_18" : Filter by custom field 18.
  /// - "CUSTOM_FIELD_19" : Filter by custom field 19.
  /// - "CUSTOM_FIELD_20" : Filter by custom field 20.
  /// - "EDUCATION_LEVEL" : Filter by the required education level of the job.
  /// - "EXPERIENCE_LEVEL" : Filter by the required experience level of the job.
  /// - "ADMIN1" : Filter by Admin1, which is a global placeholder for
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
  /// - "ADMIN1_COUNTRY" : A combination of state or province code with a
  /// country code. This field
  /// differs from `JOB_ADMIN1`, which can be used in multiple countries.
  /// - "COMPANY_TITLE" : Deprecated. Use COMPANY_DISPLAY_NAME instead.
  ///
  /// Company display name.
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
/// Histogram results that matches HistogramFacets specified in
/// SearchJobsRequest.
class HistogramResults {
  /// Specifies compensation field-based histogram results that matches
  /// HistogramFacets.compensation_histogram_requests.
  core.List<CompensationHistogramResult> compensationHistogramResults;

  /// Specifies histogram results for custom attributes that
  /// matches HistogramFacets.custom_attribute_histogram_facets.
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
  /// Optional but at least one of application_urls,
  /// application_email_list or application_instruction must be
  /// specified.
  ///
  /// Use this field to specify email address(es) to which resumes or
  /// applications can be sent.
  ///
  /// The maximum number of allowed characters is 255.
  core.List<core.String> applicationEmailList;

  /// Optional but at least one of application_urls,
  /// application_email_list or application_instruction must be
  /// specified.
  ///
  /// Use this field to provide instructions, such as "Mail your application
  /// to ...", that a candidate can follow to apply for the job.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts
  /// bold, italic, ordered list, and unordered list markup tags.
  ///
  /// The maximum number of allowed characters is 3,000.
  core.String applicationInstruction;

  /// Optional but at least one of application_urls,
  /// application_email_list or application_instruction must be
  /// specified.
  ///
  /// Use this URL field to direct an applicant to a website, for example to
  /// link to an online application form.
  ///
  /// The maximum number of allowed characters is 2,000.
  core.List<core.String> applicationUrls;

  /// Optional.
  ///
  /// The benefits included with the job.
  core.List<core.String> benefits;

  /// Output only.
  ///
  /// The name of the company listing the job.
  core.String companyDisplayName;

  /// Optional but one of company_name or distributor_company_id must be
  /// provided.
  ///
  /// The resource name of the company listing the job, such as
  /// /companies/foo. This field takes precedence over the
  /// distributor-assigned company identifier, distributor_company_id.
  core.String companyName;

  /// Deprecated. Use company_display_name instead.
  ///
  /// Output only.
  ///
  /// The name of the company listing the job.
  core.String companyTitle;

  /// Optional.
  ///
  /// Job compensation information.
  CompensationInfo compensationInfo;

  /// Output only.
  ///
  /// The timestamp when this job was created.
  core.String createTime;

  /// Optional.
  ///
  /// A map of fields to hold both filterable and non-filterable custom job
  /// attributes that are not covered by the provided structured fields.
  ///
  /// This field is a more general combination of the deprecated id-based
  /// filterable_custom_fields and string-based
  /// non_filterable_custom_fields.
  ///
  /// The keys of the map are strings up to 64 bytes and must match the
  /// pattern: a-zA-Z*.
  ///
  /// At most 100 filterable and at most 100 unfilterable keys are supported.
  /// For filterable `string_values`, across all keys at most 200 values are
  /// allowed, with each string no more than 255 characters. For unfilterable
  /// `string_values`, the maximum total size of `string_values` across all keys
  /// is 50KB.
  core.Map<core.String, CustomAttribute> customAttributes;

  /// Optional.
  ///
  /// The department or functional area within the company with the open
  /// position.
  ///
  /// The maximum number of allowed characters is 255.
  core.String department;

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

  /// Optional but one of company_name or distributor_company_id must be
  /// provided.
  ///
  /// A unique company identifier used by job distributors to identify an
  /// employer's company entity. company_name takes precedence over
  /// this field, and is the recommended field to use to identify companies.
  ///
  /// The maximum number of allowed characters is 255.
  core.String distributorCompanyId;

  /// Optional.
  ///
  /// The desired education level for the job, such as
  /// "Bachelors", "Masters", "Doctorate".
  core.List<core.String> educationLevels;

  /// Optional.
  ///
  /// The employment type(s) of a job, for example,
  /// full time or
  /// part time.
  core.List<core.String> employmentTypes;

  /// Optional.
  ///
  /// The end date of the job in UTC time zone. Typically this field
  /// is used for contracting engagements.
  /// Dates prior to 1970/1/1 and invalid date formats are ignored.
  Date endDate;

  /// Optional but strongly recommended for the best service
  /// experience.
  ///
  /// The expiration timestamp of the job. After this timestamp, the
  /// job is marked as expired, and it no longer appears in search results. The
  /// expired job can't be deleted or listed by the DeleteJob and
  /// ListJobs APIs, but it can be retrieved with the GetJob API or
  /// updated with the UpdateJob API. An expired job can be updated and
  /// opened again by using a future expiration timestamp. Updating an expired
  /// job fails if there is another existing open job with same
  /// requisition_id, company_name and language_code.
  ///
  /// The expired jobs are retained in our system for 90 days. However, the
  /// overall expired job count cannot exceed 3 times the maximum of open jobs
  /// count over the past week, otherwise jobs with earlier expire time are
  /// cleaned first. Expired jobs are no longer accessible after they are
  /// cleaned
  /// out.
  /// The format of this field is RFC 3339 date strings. Example:
  /// 2000-01-01T00:00:00.999999999Z
  /// See
  /// [https://www.ietf.org/rfc/rfc3339.txt](https://www.ietf.org/rfc/rfc3339.txt).
  ///
  /// A valid date range is between 1970-01-01T00:00:00.0Z and
  /// 2100-12-31T23:59:59.999Z. Invalid dates are ignored and treated as expire
  /// time not provided.
  ///
  /// If this value is not provided at the time of job creation or is invalid,
  /// the job posting expires after 30 days from the job's creation time. For
  /// example, if the job was created on 2017/01/01 13:00AM UTC with an
  /// unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC.
  ///
  /// If this value is not provided but expiry_date is, expiry_date is
  /// used.
  ///
  /// If this value is not provided on job update, it depends on the field masks
  /// set by UpdateJobRequest.update_job_fields. If the field masks include
  /// expiry_time, or the masks are empty meaning that every field is
  /// updated, the job posting expires after 30 days from the job's last
  /// update time. Otherwise the expiration date isn't updated.
  core.String expireTime;

  /// Deprecated. Use expire_time instead.
  ///
  /// Optional but strongly recommended to be provided for the best service
  /// experience.
  ///
  /// The expiration date of the job in UTC time. After 12 am on this date, the
  /// job is marked as expired, and it no longer appears in search results.
  /// The expired job can't be deleted or listed by the DeleteJob and
  /// ListJobs APIs, but it can be retrieved with the GetJob API or
  /// updated with the UpdateJob API. An expired job can be updated and
  /// opened again by using a future expiration date. It can also remain
  /// expired.
  /// Updating an expired job to be open fails if there is another existing open
  /// job with same requisition_id, company_name and language_code.
  ///
  /// The expired jobs are retained in our system for 90 days. However, the
  /// overall expired job count cannot exceed 3 times the maximum of open jobs
  /// count over the past week, otherwise jobs with earlier expire time are
  /// removed first. Expired jobs are no longer accessible after they are
  /// cleaned
  /// out.
  ///
  /// A valid date range is between 1970/1/1 and 2100/12/31. Invalid dates are
  /// ignored and treated as expiry date not provided.
  ///
  /// If this value is not provided on job creation or is invalid, the job
  /// posting expires after 30 days from the job's creation time. For example,
  /// if
  /// the job was created on 2017/01/01 13:00AM UTC with an unspecified
  /// expiration date, the job expires after 2017/01/31 13:00AM UTC.
  ///
  /// If this value is not provided on job update, it depends on the field masks
  /// set by UpdateJobRequest.update_job_fields. If the field masks include
  /// expiry_date, or the masks are empty meaning that every field is
  /// updated, the job expires after 30 days from the job's last update time.
  /// Otherwise the expiration date isn't updated.
  Date expiryDate;

  /// Deprecated. Always use compensation_info.
  ///
  /// Optional.
  ///
  /// Job compensation information.
  ///
  /// This field replaces compensation_info. Only
  /// CompensationInfo.entries or extended_compensation_info can be set,
  /// otherwise an exception is thrown.
  ExtendedCompensationInfo extendedCompensationInfo;

  /// Deprecated. Use custom_attributes instead.
  ///
  /// Optional.
  ///
  /// A map of fields to hold filterable custom job attributes not captured by
  /// the standard fields such as job_title, company_name, or
  /// level. These custom fields store arbitrary
  /// string values, and can be used for purposes not covered by
  /// the structured fields. For the best search experience, use of the
  /// structured rather than custom fields is recommended.
  ///
  /// Data stored in these custom fields fields are indexed and
  /// searched against by keyword searches (see
  /// SearchJobsRequest.custom_field_filters][]).
  ///
  /// The map key must be a number between 1-20. If an invalid key is
  /// provided on job create or update, an error is returned.
  core.Map<core.String, CustomField> filterableCustomFields;

  /// Optional.
  ///
  /// A description of bonus, commission, and other compensation
  /// incentives associated with the job not including salary or pay.
  ///
  /// The maximum number of allowed characters is 10,000.
  core.String incentives;

  /// Output only.
  ///
  /// Structured locations of the job, resolved from locations.
  core.List<JobLocation> jobLocations;

  /// Required.
  ///
  /// The title of the job, such as "Software Engineer"
  ///
  /// The maximum number of allowed characters is 500.
  core.String jobTitle;

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
  core.String level;

  /// Optional but strongly recommended for the best service experience.
  ///
  /// Location(s) where the emploeyer is looking to hire for this job posting.
  ///
  /// Specifying the full street address(es) of the hiring location enables
  /// better API results, especially job searches by commute time.
  ///
  /// At most 50 locations are allowed for best search performance. If a job has
  /// more locations, it is suggested to split it into multiple jobs with unique
  /// requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as
  /// multiple jobs with the same requisition_id, company_name and
  /// language_code are not allowed. If the original requisition_id must
  /// be preserved, a custom field should be used for storage. It is also
  /// suggested to group the locations that close to each other in the same job
  /// for better search experience.
  ///
  /// The maximum number of allowed characters is 500.
  core.List<core.String> locations;

  /// Required during job update.
  ///
  /// Resource name assigned to a job by the API, for example, "/jobs/foo". Use
  /// of this field in job queries and API calls is preferred over the use of
  /// requisition_id since this value is unique.
  core.String name;

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
  /// The date this job was most recently published in UTC format. The default
  /// value is the time the request arrives at the server.
  Date publishDate;

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

  /// Output only.
  ///
  /// The URL of a web page that displays job details.
  core.String referenceUrl;

  /// Optional.
  ///
  /// The job Region (for example, state, country) throughout which the job
  /// is available. If this field is set, a
  /// LocationFilter in a search query within the job region
  /// finds this job if an exact location match is not specified.
  /// If this field is set, setting job locations
  /// to the same location level as this field is strongly recommended.
  /// Possible string values are:
  /// - "REGION_UNSPECIFIED" : If the region is unspecified, the job is only
  /// returned if it
  /// matches the LocationFilter.
  /// - "STATE_WIDE" : In additiona to exact location matching, job is returned
  /// when the
  /// LocationFilter in search query is in the same state as this job.
  /// For example, if a `STATE_WIDE` job is posted in "CA, USA", it is
  /// returned if LocationFilter has "Mountain View".
  /// - "NATION_WIDE" : In addition to exact location matching, job is returned
  /// when
  /// LocationFilter in search query is in the same country as this job.
  /// For example, if a `NATION_WIDE` job is posted in "USA", it is
  /// returned if LocationFilter has 'Mountain View'.
  /// - "TELECOMMUTE" : Job allows employees to work remotely (telecommute).
  /// If locations are provided with this value, the job is
  /// considered as having a location, but telecommuting is allowed.
  core.String region;

  /// Required.
  ///
  /// The requisition ID, also referred to as the posting ID, assigned by the
  /// client to identify a job. This field is intended to be used by clients
  /// for client identification and tracking of listings. A job is not allowed
  /// to be created if there is another job with the same requisition_id,
  /// company_name and language_code.
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

  /// Optional.
  ///
  /// The start date of the job in UTC time zone. Typically this field
  /// is used for contracting engagements.
  /// Dates prior to 1970/1/1 and invalid date formats are ignored.
  Date startDate;

  /// Deprecated. Use custom_attributes instead.
  ///
  /// Optional.
  ///
  /// A map of fields to hold non-filterable custom job attributes, similar to
  /// filterable_custom_fields. These fields are distinct in that the data
  /// in these fields are not indexed. Therefore, the client cannot search
  /// against them, nor can the client use them to list jobs.
  ///
  /// The key of the map can be any valid string.
  core.Map<core.String, CustomField> unindexedCustomFields;

  /// Output only.
  ///
  /// The timestamp when this job was last updated.
  core.String updateTime;

  /// Optional.
  ///
  /// The visibility of the job.
  /// Defaults to JobVisibility.PRIVATE if not specified.
  /// Currently only JobVisibility.PRIVATE is supported.
  /// Possible string values are:
  /// - "JOB_VISIBILITY_UNSPECIFIED" : Default value.
  /// - "PRIVATE" : The Job is only visible to the owner.
  /// - "GOOGLE" : The Job is visible to the owner and may be visible to other
  /// applications
  /// and processes at Google.
  ///
  /// Not yet supported. Use PRIVATE.
  /// - "PUBLIC" : The Job is visible to the owner and may be visible to all
  /// other API
  /// clients.
  ///
  /// Not yet supported. Use PRIVATE.
  core.String visibility;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("applicationEmailList")) {
      applicationEmailList =
          (_json["applicationEmailList"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("applicationInstruction")) {
      applicationInstruction = _json["applicationInstruction"];
    }
    if (_json.containsKey("applicationUrls")) {
      applicationUrls =
          (_json["applicationUrls"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("benefits")) {
      benefits = (_json["benefits"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("companyDisplayName")) {
      companyDisplayName = _json["companyDisplayName"];
    }
    if (_json.containsKey("companyName")) {
      companyName = _json["companyName"];
    }
    if (_json.containsKey("companyTitle")) {
      companyTitle = _json["companyTitle"];
    }
    if (_json.containsKey("compensationInfo")) {
      compensationInfo =
          new CompensationInfo.fromJson(_json["compensationInfo"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("customAttributes")) {
      customAttributes = commons.mapMap<core.Map, CustomAttribute>(
          _json["customAttributes"].cast<core.String, core.Map>(),
          (core.Map item) => new CustomAttribute.fromJson(item));
    }
    if (_json.containsKey("department")) {
      department = _json["department"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("distributorCompanyId")) {
      distributorCompanyId = _json["distributorCompanyId"];
    }
    if (_json.containsKey("educationLevels")) {
      educationLevels =
          (_json["educationLevels"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("employmentTypes")) {
      employmentTypes =
          (_json["employmentTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("endDate")) {
      endDate = new Date.fromJson(_json["endDate"]);
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("expiryDate")) {
      expiryDate = new Date.fromJson(_json["expiryDate"]);
    }
    if (_json.containsKey("extendedCompensationInfo")) {
      extendedCompensationInfo = new ExtendedCompensationInfo.fromJson(
          _json["extendedCompensationInfo"]);
    }
    if (_json.containsKey("filterableCustomFields")) {
      filterableCustomFields = commons.mapMap<core.Map, CustomField>(
          _json["filterableCustomFields"].cast<core.String, core.Map>(),
          (core.Map item) => new CustomField.fromJson(item));
    }
    if (_json.containsKey("incentives")) {
      incentives = _json["incentives"];
    }
    if (_json.containsKey("jobLocations")) {
      jobLocations = (_json["jobLocations"] as core.List)
          .map<JobLocation>((value) => new JobLocation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("jobTitle")) {
      jobTitle = _json["jobTitle"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("level")) {
      level = _json["level"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("promotionValue")) {
      promotionValue = _json["promotionValue"];
    }
    if (_json.containsKey("publishDate")) {
      publishDate = new Date.fromJson(_json["publishDate"]);
    }
    if (_json.containsKey("qualifications")) {
      qualifications = _json["qualifications"];
    }
    if (_json.containsKey("referenceUrl")) {
      referenceUrl = _json["referenceUrl"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("requisitionId")) {
      requisitionId = _json["requisitionId"];
    }
    if (_json.containsKey("responsibilities")) {
      responsibilities = _json["responsibilities"];
    }
    if (_json.containsKey("startDate")) {
      startDate = new Date.fromJson(_json["startDate"]);
    }
    if (_json.containsKey("unindexedCustomFields")) {
      unindexedCustomFields = commons.mapMap<core.Map, CustomField>(
          _json["unindexedCustomFields"].cast<core.String, core.Map>(),
          (core.Map item) => new CustomField.fromJson(item));
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (applicationEmailList != null) {
      _json["applicationEmailList"] = applicationEmailList;
    }
    if (applicationInstruction != null) {
      _json["applicationInstruction"] = applicationInstruction;
    }
    if (applicationUrls != null) {
      _json["applicationUrls"] = applicationUrls;
    }
    if (benefits != null) {
      _json["benefits"] = benefits;
    }
    if (companyDisplayName != null) {
      _json["companyDisplayName"] = companyDisplayName;
    }
    if (companyName != null) {
      _json["companyName"] = companyName;
    }
    if (companyTitle != null) {
      _json["companyTitle"] = companyTitle;
    }
    if (compensationInfo != null) {
      _json["compensationInfo"] = (compensationInfo).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (customAttributes != null) {
      _json["customAttributes"] =
          commons.mapMap<CustomAttribute, core.Map<core.String, core.Object>>(
              customAttributes, (CustomAttribute item) => (item).toJson());
    }
    if (department != null) {
      _json["department"] = department;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (distributorCompanyId != null) {
      _json["distributorCompanyId"] = distributorCompanyId;
    }
    if (educationLevels != null) {
      _json["educationLevels"] = educationLevels;
    }
    if (employmentTypes != null) {
      _json["employmentTypes"] = employmentTypes;
    }
    if (endDate != null) {
      _json["endDate"] = (endDate).toJson();
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    if (expiryDate != null) {
      _json["expiryDate"] = (expiryDate).toJson();
    }
    if (extendedCompensationInfo != null) {
      _json["extendedCompensationInfo"] = (extendedCompensationInfo).toJson();
    }
    if (filterableCustomFields != null) {
      _json["filterableCustomFields"] =
          commons.mapMap<CustomField, core.Map<core.String, core.Object>>(
              filterableCustomFields, (CustomField item) => (item).toJson());
    }
    if (incentives != null) {
      _json["incentives"] = incentives;
    }
    if (jobLocations != null) {
      _json["jobLocations"] =
          jobLocations.map((value) => (value).toJson()).toList();
    }
    if (jobTitle != null) {
      _json["jobTitle"] = jobTitle;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (level != null) {
      _json["level"] = level;
    }
    if (locations != null) {
      _json["locations"] = locations;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (promotionValue != null) {
      _json["promotionValue"] = promotionValue;
    }
    if (publishDate != null) {
      _json["publishDate"] = (publishDate).toJson();
    }
    if (qualifications != null) {
      _json["qualifications"] = qualifications;
    }
    if (referenceUrl != null) {
      _json["referenceUrl"] = referenceUrl;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (requisitionId != null) {
      _json["requisitionId"] = requisitionId;
    }
    if (responsibilities != null) {
      _json["responsibilities"] = responsibilities;
    }
    if (startDate != null) {
      _json["startDate"] = (startDate).toJson();
    }
    if (unindexedCustomFields != null) {
      _json["unindexedCustomFields"] =
          commons.mapMap<CustomField, core.Map<core.String, core.Object>>(
              unindexedCustomFields, (CustomField item) => (item).toJson());
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// Input only.
///
/// Deprecated. Use JobQuery instead.
///
/// The filters required to perform a search query or histogram.
class JobFilters {
  /// Optional.
  ///
  /// The category filter specifies the categories of jobs to search against.
  /// See Category for more information.
  ///
  /// If a value is not specified, jobs from any category are searched against.
  ///
  /// If multiple values are specified, jobs from any of the specified
  /// categories are searched against.
  core.List<core.String> categories;

  /// Optional.
  ///
  /// Allows filtering jobs by commute time with different travel methods (e.g.
  ///  driving or public transit). Note: this only works with COMMUTE
  ///  MODE. When specified, [JobFilters.location_filters] will be
  ///  ignored.
  ///
  ///  Currently we do not support sorting by commute time.
  CommutePreference commuteFilter;

  /// Optional.
  ///
  /// The company names filter specifies the company entities to search
  /// against.
  ///
  /// If a value is not specified, jobs are searched for against all companies.
  ///
  /// If multiple values are specified, jobs are searched against the
  /// specified companies.
  ///
  /// At most 20 company filters are allowed.
  core.List<core.String> companyNames;

  /// Optional.
  ///
  /// This filter specifies the exact company titles
  /// of jobs to search against.
  ///
  /// If a value is not specified, jobs within the search results can be
  /// associated with any company.
  ///
  /// If multiple values are specified, jobs within the search results may be
  /// associated with any of the specified companies.
  ///
  /// At most 20 company title filters are allowed.
  core.List<core.String> companyTitles;

  /// Optional.
  ///
  /// This search filter is applied only to
  /// Job.compensation_info. For example, if the filter is specified
  /// as "Hourly job with per-hour compensation > $15", only jobs that meet
  /// this criteria are searched. If a filter is not defined, all open jobs
  /// are searched.
  CompensationFilter compensationFilter;

  /// Optional.
  ///
  /// This filter specifies a structured syntax to match against the
  /// Job.custom_attributes that are marked as `filterable`.
  ///
  /// The syntax for this expression is a subset of Google SQL syntax.
  ///
  /// Supported operators are: =, !=, <, <=, >, >= where the left of the
  /// operator
  /// is a custom field key and the right of the operator is a number or string
  /// (surrounded by quotes) value.
  ///
  /// Supported functions are LOWER(<field_name>) to
  /// perform case insensitive match and EMPTY(<field_name>) to filter on the
  /// existence of a key.
  ///
  /// Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
  /// nesting (For example, "((A AND B AND C) OR NOT D) AND E"), and there can
  /// be a maximum of 100 comparisons/functions in the expression. The
  /// expression
  /// must be < 3000 bytes in length.
  ///
  /// Sample Query:
  /// (key1 = "TEST" OR LOWER(key1)="test" OR NOT EMPTY(key1)) AND key2 > 100
  core.String customAttributeFilter;

  /// Deprecated. Use custom_attribute_filter instead.
  ///
  /// Optional.
  ///
  /// This filter specifies searching against
  /// custom field values. See Job.filterable_custom_fields for information.
  /// The key value specifies a number between 1-20 (the service
  /// supports 20 custom fields) corresponding to the desired custom field map
  /// value. If an invalid key is provided or specified together with
  /// custom_attribute_filter, an error is thrown.
  core.Map<core.String, CustomFieldFilter> customFieldFilters;

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
  /// If a value is not specified, jobs in the search results include any
  /// employment type.
  ///
  /// If multiple values are specified, jobs in the search results include any
  /// of the specified employment types.
  core.List<core.String> employmentTypes;

  /// Deprecated. Always use compensation_filter.
  ///
  /// Optional.
  ///
  /// This search filter is applied only to
  /// Job.extended_compensation_info. For example, if the filter is specified
  /// as "Hourly job with per-hour compensation > $15", only jobs that meet
  /// these criteria are searched. If a filter is not defined, all open jobs
  /// are searched.
  ExtendedCompensationFilter extendedCompensationFilter;

  /// Optional.
  ///
  /// This filter specifies the locale of jobs to search against,
  /// for example, "en-US".
  ///
  /// If a value is not specified, the search results may contain jobs in any
  /// locale.
  ///
  ///
  /// Language codes should be in BCP-47 format, for example, "en-US" or
  /// "sr-Latn". For more information, see [Tags for Identifying
  /// Languages](https://tools.ietf.org/html/bcp47).
  ///
  /// At most 10 language code filters are allowed.
  core.List<core.String> languageCodes;

  /// Optional.
  ///
  /// The location filter specifies geo-regions containing the jobs to
  /// search against. See LocationFilter for more information.
  ///
  /// If a location value is not specified, jobs are retrieved
  /// from all locations.
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
  /// against, for example, DateRange.PAST_MONTH. If a value is not
  /// specified, all open jobs are searched against regardless of the
  /// date they were published.
  /// Possible string values are:
  /// - "DATE_RANGE_UNSPECIFIED" : Default value: Filtering on time is not
  /// performed.
  /// - "PAST_24_HOURS" : The past 24 hours
  /// - "PAST_WEEK" : The past week (7 days)
  /// - "PAST_MONTH" : The past month (30 days)
  /// - "PAST_YEAR" : The past year (365 days)
  /// - "PAST_3_DAYS" : The past 3 days
  core.String publishDateRange;

  /// Optional.
  ///
  /// The query filter contains the keywords that match against the job
  /// title, description, and location fields.
  ///
  /// The maximum query size is 255 bytes/characters.
  core.String query;

  /// Deprecated. Do not use this field.
  ///
  /// This flag controls whether the job search should be restricted to jobs
  /// owned by the current user.
  ///
  /// Defaults to false where all jobs accessible to the
  /// user are searched against.
  core.bool tenantJobOnly;

  JobFilters();

  JobFilters.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("commuteFilter")) {
      commuteFilter = new CommutePreference.fromJson(_json["commuteFilter"]);
    }
    if (_json.containsKey("companyNames")) {
      companyNames = (_json["companyNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("companyTitles")) {
      companyTitles = (_json["companyTitles"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("compensationFilter")) {
      compensationFilter =
          new CompensationFilter.fromJson(_json["compensationFilter"]);
    }
    if (_json.containsKey("customAttributeFilter")) {
      customAttributeFilter = _json["customAttributeFilter"];
    }
    if (_json.containsKey("customFieldFilters")) {
      customFieldFilters = commons.mapMap<core.Map, CustomFieldFilter>(
          _json["customFieldFilters"].cast<core.String, core.Map>(),
          (core.Map item) => new CustomFieldFilter.fromJson(item));
    }
    if (_json.containsKey("disableSpellCheck")) {
      disableSpellCheck = _json["disableSpellCheck"];
    }
    if (_json.containsKey("employmentTypes")) {
      employmentTypes =
          (_json["employmentTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("extendedCompensationFilter")) {
      extendedCompensationFilter = new ExtendedCompensationFilter.fromJson(
          _json["extendedCompensationFilter"]);
    }
    if (_json.containsKey("languageCodes")) {
      languageCodes = (_json["languageCodes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("locationFilters")) {
      locationFilters = (_json["locationFilters"] as core.List)
          .map<LocationFilter>((value) => new LocationFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("publishDateRange")) {
      publishDateRange = _json["publishDateRange"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("tenantJobOnly")) {
      tenantJobOnly = _json["tenantJobOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categories != null) {
      _json["categories"] = categories;
    }
    if (commuteFilter != null) {
      _json["commuteFilter"] = (commuteFilter).toJson();
    }
    if (companyNames != null) {
      _json["companyNames"] = companyNames;
    }
    if (companyTitles != null) {
      _json["companyTitles"] = companyTitles;
    }
    if (compensationFilter != null) {
      _json["compensationFilter"] = (compensationFilter).toJson();
    }
    if (customAttributeFilter != null) {
      _json["customAttributeFilter"] = customAttributeFilter;
    }
    if (customFieldFilters != null) {
      _json["customFieldFilters"] =
          commons.mapMap<CustomFieldFilter, core.Map<core.String, core.Object>>(
              customFieldFilters, (CustomFieldFilter item) => (item).toJson());
    }
    if (disableSpellCheck != null) {
      _json["disableSpellCheck"] = disableSpellCheck;
    }
    if (employmentTypes != null) {
      _json["employmentTypes"] = employmentTypes;
    }
    if (extendedCompensationFilter != null) {
      _json["extendedCompensationFilter"] =
          (extendedCompensationFilter).toJson();
    }
    if (languageCodes != null) {
      _json["languageCodes"] = languageCodes;
    }
    if (locationFilters != null) {
      _json["locationFilters"] =
          locationFilters.map((value) => (value).toJson()).toList();
    }
    if (publishDateRange != null) {
      _json["publishDateRange"] = publishDateRange;
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (tenantJobOnly != null) {
      _json["tenantJobOnly"] = tenantJobOnly;
    }
    return _json;
  }
}

/// Output only.
///
/// A resource that represents a location with full geographic
/// information.
class JobLocation {
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

  /// Radius in meters of the job location. This value is derived from the
  /// location bounding box in which a circle with the specified radius
  /// centered from LatLng coves the area associated with the job location.
  /// For example, currently, "Mountain View, CA, USA" has a radius of
  /// 7885.79 meters.
  core.double radiusMeters;

  JobLocation();

  JobLocation.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
    if (_json.containsKey("postalAddress")) {
      postalAddress = new PostalAddress.fromJson(_json["postalAddress"]);
    }
    if (_json.containsKey("radiusMeters")) {
      radiusMeters = _json["radiusMeters"].toDouble();
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
    if (radiusMeters != null) {
      _json["radiusMeters"] = radiusMeters;
    }
    return _json;
  }
}

/// Input only.
///
/// Options for job processing.
class JobProcessingOptions {
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
  /// * applicationInstruction
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

  JobProcessingOptions();

  JobProcessingOptions.fromJson(core.Map _json) {
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
/// The query required to perform a search query or histogram.
class JobQuery {
  /// Optional.
  ///
  /// The category filter specifies the categories of jobs to search against.
  /// See Category for more information.
  ///
  /// If a value is not specified, jobs from any category are searched against.
  ///
  /// If multiple values are specified, jobs from any of the specified
  /// categories are searched against.
  core.List<core.String> categories;

  /// Optional.
  ///
  ///  Allows filtering jobs by commute time with different travel methods (for
  ///  example, driving or public transit). Note: This only works with COMMUTE
  ///  MODE. When specified, [JobQuery.location_filters] is
  ///  ignored.
  ///
  ///  Currently we don't support sorting by commute time.
  CommutePreference commuteFilter;

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
  /// The syntax for this expression is a subset of Google SQL syntax.
  ///
  /// Supported operators are: =, !=, <, <=, >, >= where the left of the
  /// operator
  /// is a custom field key and the right of the operator is a number or string
  /// (surrounded by quotes) value.
  ///
  /// Supported functions are LOWER(<field_name>) to
  /// perform case insensitive match and EMPTY(<field_name>) to filter on the
  /// existence of a key.
  ///
  /// Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
  /// nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of 50
  /// comparisons/functions are allowed in the expression. The expression
  /// must be < 2000 characters in length.
  ///
  /// Sample Query:
  /// (key1 = "TEST" OR LOWER(key1)="test" OR NOT EMPTY(key1)) AND key2 > 100
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
  /// If a value is not specified, jobs in the search results include any
  /// employment type.
  ///
  /// If multiple values are specified, jobs in the search results include
  /// any of the specified employment types.
  core.List<core.String> employmentTypes;

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
  /// against, for example, DateRange.PAST_MONTH. If a value isn't
  /// specified, all open jobs are searched against regardless of their
  /// published date.
  /// Possible string values are:
  /// - "DATE_RANGE_UNSPECIFIED" : Default value: Filtering on time is not
  /// performed.
  /// - "PAST_24_HOURS" : The past 24 hours
  /// - "PAST_WEEK" : The past week (7 days)
  /// - "PAST_MONTH" : The past month (30 days)
  /// - "PAST_YEAR" : The past year (365 days)
  /// - "PAST_3_DAYS" : The past 3 days
  core.String publishDateRange;

  /// Optional.
  ///
  /// The query string that matches against the job title, description, and
  /// location fields.
  ///
  /// The maximum query size is 255 bytes.
  core.String query;

  JobQuery();

  JobQuery.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = (_json["categories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("commuteFilter")) {
      commuteFilter = new CommutePreference.fromJson(_json["commuteFilter"]);
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
    if (_json.containsKey("languageCodes")) {
      languageCodes = (_json["languageCodes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("locationFilters")) {
      locationFilters = (_json["locationFilters"] as core.List)
          .map<LocationFilter>((value) => new LocationFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("publishDateRange")) {
      publishDateRange = _json["publishDateRange"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categories != null) {
      _json["categories"] = categories;
    }
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
    if (languageCodes != null) {
      _json["languageCodes"] = languageCodes;
    }
    if (locationFilters != null) {
      _json["locationFilters"] =
          locationFilters.map((value) => (value).toJson()).toList();
    }
    if (publishDateRange != null) {
      _json["publishDateRange"] = publishDateRange;
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

/// Deprecated. Use ListJobsResponse instead.
///
/// Output only.
///
/// The List jobs response object.
class ListCompanyJobsResponse {
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

  /// The total number of open jobs. The result will be
  /// empty if ListCompanyJobsRequest.include_jobs_count is not enabled
  /// or if no open jobs are available.
  core.String totalSize;

  ListCompanyJobsResponse();

  ListCompanyJobsResponse.fromJson(core.Map _json) {
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
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
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
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
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

/// Input only.
///
/// Geographic region of the search.
class LocationFilter {
  /// Optional.
  ///
  ///
  /// The distance_in_miles is applied when the location being searched for is
  /// identified as a city or smaller. When the location being searched for is a
  /// state or larger, this field is ignored.
  core.double distanceInMiles;

  /// Optional.
  ///
  /// Allows the client to return jobs without a
  /// set location, specifically, telecommuting jobs (telecomuting is considered
  /// by the service as a special location.
  /// Job.allow_telecommute indicates if a job permits telecommuting.
  /// If this field is true, telecommuting jobs are searched, and
  /// name and lat_lng are
  /// ignored.
  /// This filter can be used by itself to search exclusively for telecommuting
  /// jobs, or it can be combined with another location
  /// filter to search for a combination of job locations,
  /// such as "Mountain View" or "telecommuting" jobs. However, when used in
  /// combination with other location filters, telecommuting jobs can be
  /// treated as less relevant than other jobs in the search response.
  core.bool isTelecommute;

  /// Optional.
  ///
  /// The latitude and longitude of the geographic center from which to
  /// search. This field is ignored if `location_name` is provided.
  LatLng latLng;

  /// Optional.
  ///
  /// The address name, such as "Mountain View" or "Bay Area".
  core.String name;

  /// Optional.
  ///
  /// CLDR region code of the country/region of the address. This will be used
  /// to address ambiguity of the user-input location, e.g. "Liverpool"
  /// against "Liverpool, NY, US" or "Liverpool, UK".
  ///
  /// Set this field if all the jobs to search against are from a same region,
  /// or jobs are world-wide but the job seeker is from a specific region.
  ///
  /// See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  core.String regionCode;

  LocationFilter();

  LocationFilter.fromJson(core.Map _json) {
    if (_json.containsKey("distanceInMiles")) {
      distanceInMiles = _json["distanceInMiles"].toDouble();
    }
    if (_json.containsKey("isTelecommute")) {
      isTelecommute = _json["isTelecommute"];
    }
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (distanceInMiles != null) {
      _json["distanceInMiles"] = distanceInMiles;
    }
    if (isTelecommute != null) {
      _json["isTelecommute"] = isTelecommute;
    }
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    return _json;
  }
}

/// Output only.
///
/// Job entry with metadata inside SearchJobsResponse.
class MatchingJob {
  /// Commute information which is generated based on specified
  ///  CommutePreference.
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

  /// Stores the maximum value of the numeric field. Will be populated only if
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
  /// If this field is not available for some reason, send "UNKNOWN". Note that
  /// any improvements to the service model for a particular tenant site rely on
  /// this field being set correctly to some domain.
  core.String domain;

  /// Required.
  ///
  /// A unique session identification string. A session is defined as the
  /// duration of an end user's interaction with the service over a period.
  /// Obfuscate this field for privacy concerns before
  /// providing it to the API.
  ///
  /// If this field is not available for some reason, please send "UNKNOWN".
  /// Note
  /// that any improvements to the service model for a particular tenant site,
  /// rely on this field being set correctly to some unique session_id.
  core.String sessionId;

  /// Required.
  ///
  /// A unique user identification string, as determined by the client. The
  /// client is responsible for ensuring client-level uniqueness of this value
  /// in order to have the strongest positive impact on search quality.
  /// Obfuscate this field for privacy concerns before
  /// providing it to the service.
  ///
  /// If this field is not available for some reason, please send "UNKNOWN".
  /// Note
  /// that any improvements to the service model for a particular tenant site,
  /// rely on this field being set correctly to some unique user_id.
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
/// Additional information returned to client, such as debugging
/// information.
class ResponseMetadata {
  /// Identifiers for the versions of the search algorithm used during
  /// this API invocation if multiple algorithms are used.
  /// The default value is empty.
  /// For search response only.
  core.List<core.int> experimentIdList;

  /// For search response only. Indicates the mode of a performed search.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : The mode of the search method isn't
  /// specified.
  /// - "JOB_SEARCH" : The job search doesn't include support for featured jobs.
  /// - "FEATURED_JOB_SEARCH" : The job search matches only against featured
  /// jobs (jobs with a
  /// promotionValue > 0). This method doesn't return any jobs having a
  /// promotionValue <= 0. The search results order is determined by the
  /// promotionValue (jobs with a higher promotionValue are returned higher up
  /// in
  /// the search results), with relevance being used as a tiebreaker.
  /// - "EMAIL_ALERT_SEARCH" : Deprecated. Please use the SearchJobsForAlert
  /// API.
  ///
  /// The job search matches against jobs suited to email notifications.
  core.String mode;

  /// A unique id associated with this call.
  /// This id is logged for tracking purposes.
  core.String requestId;

  ResponseMetadata();

  ResponseMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("experimentIdList")) {
      experimentIdList =
          (_json["experimentIdList"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (experimentIdList != null) {
      _json["experimentIdList"] = experimentIdList;
    }
    if (mode != null) {
      _json["mode"] = mode;
    }
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
  /// Controls whether to disable relevance thresholding. Relevance
  /// thresholding removes jobs that have low relevance in search results,
  /// for example, removing "Assistant to the CEO" positions from the search
  /// results of a search for "CEO".
  ///
  /// Disabling relevance thresholding improves the accuracy of subsequent
  /// search requests.
  ///
  /// Defaults to false.
  core.bool disableRelevanceThresholding;

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
  core.bool enablePreciseResultSize;

  /// Deprecated. Use query instead.
  ///
  /// Optional.
  ///
  /// Restrictions on the scope of the search request, such as filtering
  /// by location.
  JobFilters filters;

  /// Optional.
  ///
  /// Restrictions on what fields to perform histogram on, such as
  /// `COMPANY_SIZE` etc.
  HistogramFacets histogramFacets;

  /// Optional.
  ///
  /// The number of job attributes returned for jobs in the
  /// search response. Defaults to JobView.SMALL if no value is specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "SMALL" : A small view of the job, with the following attributes in the
  /// search
  /// results: Job.name, Job.requisition_id, Job.job_title,
  /// Job.company_name, Job.job_locations, Job.description,
  /// Job.visibility.
  /// Note: Job.description is deprecated. It is scheduled to be removed
  /// from MatchingJob.Job objects in the SearchJobsResponse results
  /// on 12/31/2018.
  /// - "MINIMAL" : A minimal view of the job, with the following attributes in
  /// the search
  /// results: Job.name, Job.requisition_id, Job.job_title,
  /// Job.company_name, Job.job_locations.
  /// - "FULL" : All available attributes are included in the search results.
  /// Note: [Job.description, Job.responsibilities,
  /// Job.qualifications and Job.incentives are deprecated.
  /// These fields are scheduled to be removed from MatchingJob.Job objects
  /// in the SearchJobsResponse results on 12/31/2018.
  /// See the alternative MatchingJob.search_text_snippet and
  /// MatchingJob.job_summary fields.
  core.String jobView;

  /// Required.
  ///
  /// Mode of a search.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : The mode of the search method isn't
  /// specified.
  /// - "JOB_SEARCH" : The job search doesn't include support for featured jobs.
  /// - "FEATURED_JOB_SEARCH" : The job search matches only against featured
  /// jobs (jobs with a
  /// promotionValue > 0). This method doesn't return any jobs having a
  /// promotionValue <= 0. The search results order is determined by the
  /// promotionValue (jobs with a higher promotionValue are returned higher up
  /// in
  /// the search results), with relevance being used as a tiebreaker.
  /// - "EMAIL_ALERT_SEARCH" : Deprecated. Please use the SearchJobsForAlert
  /// API.
  ///
  /// The job search matches against jobs suited to email notifications.
  core.String mode;

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

  /// Deprecated. Use sort_by instead.
  ///
  /// Optional.
  ///
  /// The criteria determining how search results are sorted.
  /// Defaults to SortBy.RELEVANCE_DESC if no value is specified.
  /// Possible string values are:
  /// - "SORT_BY_UNSPECIFIED" : Default value.
  /// - "RELEVANCE_DESC" : By descending relevance, as determined by the API
  /// algorithms.
  ///
  /// Relevance thresholding of query results is only available for queries if
  /// RELEVANCE_DESC sort ordering is specified.
  /// - "PUBLISHED_DATE_DESC" : Sort by published date descending.
  /// - "UPDATED_DATE_DESC" : Sort by updated date descending.
  /// - "TITLE" : Sort by job title ascending.
  /// - "TITLE_DESC" : Sort by job title descending.
  /// - "ANNUALIZED_BASE_COMPENSATION" : Sort by job annualized base
  /// compensation in ascending order.
  /// If job's annualized base compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_TOTAL_COMPENSATION" : Sort by job annualized total
  /// compensation in ascending order.
  /// If job's annualized total compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_BASE_COMPENSATION_DESC" : Sort by job annualized base
  /// compensation in descending order.
  /// If job's annualized base compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_TOTAL_COMPENSATION_DESC" : Sort by job annualized total
  /// compensation in descending order.
  /// If job's annualized total compensation is unspecified, they are put at
  /// the end of search result.
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

  /// Optional.
  ///
  /// Query used to search against jobs, such as keyword, location filters, etc.
  JobQuery query;

  /// Required.
  ///
  /// The meta information collected about the job searcher, used to improve the
  /// search quality of the service. The identifiers, (such as `user_id`) are
  /// provided by users, and must be unique and consistent.
  RequestMetadata requestMetadata;

  /// Optional.
  ///
  /// The criteria determining how search results are sorted.
  /// Defaults to SortBy.RELEVANCE_DESC if no value is specified.
  /// Possible string values are:
  /// - "SORT_BY_UNSPECIFIED" : Default value.
  /// - "RELEVANCE_DESC" : By descending relevance, as determined by the API
  /// algorithms.
  ///
  /// Relevance thresholding of query results is only available for queries if
  /// RELEVANCE_DESC sort ordering is specified.
  /// - "PUBLISHED_DATE_DESC" : Sort by published date descending.
  /// - "UPDATED_DATE_DESC" : Sort by updated date descending.
  /// - "TITLE" : Sort by job title ascending.
  /// - "TITLE_DESC" : Sort by job title descending.
  /// - "ANNUALIZED_BASE_COMPENSATION" : Sort by job annualized base
  /// compensation in ascending order.
  /// If job's annualized base compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_TOTAL_COMPENSATION" : Sort by job annualized total
  /// compensation in ascending order.
  /// If job's annualized total compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_BASE_COMPENSATION_DESC" : Sort by job annualized base
  /// compensation in descending order.
  /// If job's annualized base compensation is unspecified, they are put at
  /// the end of search result.
  /// - "ANNUALIZED_TOTAL_COMPENSATION_DESC" : Sort by job annualized total
  /// compensation in descending order.
  /// If job's annualized total compensation is unspecified, they are put at
  /// the end of search result.
  core.String sortBy;

  SearchJobsRequest();

  SearchJobsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("disableRelevanceThresholding")) {
      disableRelevanceThresholding = _json["disableRelevanceThresholding"];
    }
    if (_json.containsKey("enableBroadening")) {
      enableBroadening = _json["enableBroadening"];
    }
    if (_json.containsKey("enablePreciseResultSize")) {
      enablePreciseResultSize = _json["enablePreciseResultSize"];
    }
    if (_json.containsKey("filters")) {
      filters = new JobFilters.fromJson(_json["filters"]);
    }
    if (_json.containsKey("histogramFacets")) {
      histogramFacets = new HistogramFacets.fromJson(_json["histogramFacets"]);
    }
    if (_json.containsKey("jobView")) {
      jobView = _json["jobView"];
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
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
    if (_json.containsKey("query")) {
      query = new JobQuery.fromJson(_json["query"]);
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("sortBy")) {
      sortBy = _json["sortBy"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableRelevanceThresholding != null) {
      _json["disableRelevanceThresholding"] = disableRelevanceThresholding;
    }
    if (enableBroadening != null) {
      _json["enableBroadening"] = enableBroadening;
    }
    if (enablePreciseResultSize != null) {
      _json["enablePreciseResultSize"] = enablePreciseResultSize;
    }
    if (filters != null) {
      _json["filters"] = (filters).toJson();
    }
    if (histogramFacets != null) {
      _json["histogramFacets"] = (histogramFacets).toJson();
    }
    if (jobView != null) {
      _json["jobView"] = jobView;
    }
    if (mode != null) {
      _json["mode"] = mode;
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
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (sortBy != null) {
      _json["sortBy"] = sortBy;
    }
    return _json;
  }
}

/// Output only.
///
/// Response for SearchJob method.
class SearchJobsResponse {
  /// The commute filter the service applied to the specified query. This
  /// information is only available when query has a valid CommutePreference.
  CommutePreference appliedCommuteFilter;

  /// The location filters that the service applied to the specified query. If
  /// any filters are lat-lng based, the JobLocation.location_type is
  /// JobLocation.LocationType#LOCATION_TYPE_UNSPECIFIED.
  core.List<JobLocation> appliedJobLocationFilters;

  /// An estimation of the number of jobs that match the specified query.
  ///
  /// This number is not guaranteed to be accurate. For accurate results,
  /// seenenable_precise_result_size.
  core.String estimatedTotalSize;

  /// The histogram results that match specified
  /// SearchJobsRequest.HistogramFacets.
  HistogramResults histogramResults;

  /// Corresponds to SearchJobsRequest.job_view.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "SMALL" : A small view of the job, with the following attributes in the
  /// search
  /// results: Job.name, Job.requisition_id, Job.job_title,
  /// Job.company_name, Job.job_locations, Job.description,
  /// Job.visibility.
  /// Note: Job.description is deprecated. It is scheduled to be removed
  /// from MatchingJob.Job objects in the SearchJobsResponse results
  /// on 12/31/2018.
  /// - "MINIMAL" : A minimal view of the job, with the following attributes in
  /// the search
  /// results: Job.name, Job.requisition_id, Job.job_title,
  /// Job.company_name, Job.job_locations.
  /// - "FULL" : All available attributes are included in the search results.
  /// Note: [Job.description, Job.responsibilities,
  /// Job.qualifications and Job.incentives are deprecated.
  /// These fields are scheduled to be removed from MatchingJob.Job objects
  /// in the SearchJobsResponse results on 12/31/2018.
  /// See the alternative MatchingJob.search_text_snippet and
  /// MatchingJob.job_summary fields.
  core.String jobView;

  /// The Job entities that match the specified SearchJobsRequest.
  core.List<MatchingJob> matchingJobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata metadata;

  /// The token that specifies the starting position of the next page of
  /// results.
  /// This field is empty if there are no more results.
  core.String nextPageToken;

  /// If query broadening is enabled, we may append additional results from the
  /// broadened query. This number indicates how many of the jobs returned in
  /// the
  /// jobs field are from the broadened query. These results are always at the
  /// end of the jobs list. In particular, a value of 0 means all the jobs in
  /// the
  /// jobs list are from the original (without broadening) query. If this
  /// field is non-zero, subsequent requests with offset after this result set
  /// should contain all broadened results.
  core.int numJobsFromBroadenedQuery;

  /// The spell checking result, and correction.
  SpellingCorrection spellResult;

  /// The precise result count, which is available only if the client set
  /// enable_precise_result_size to `true` or if the response
  /// is the last page of results. Otherwise, the value will be `-1`.
  core.String totalSize;

  SearchJobsResponse();

  SearchJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("appliedCommuteFilter")) {
      appliedCommuteFilter =
          new CommutePreference.fromJson(_json["appliedCommuteFilter"]);
    }
    if (_json.containsKey("appliedJobLocationFilters")) {
      appliedJobLocationFilters =
          (_json["appliedJobLocationFilters"] as core.List)
              .map<JobLocation>((value) => new JobLocation.fromJson(value))
              .toList();
    }
    if (_json.containsKey("estimatedTotalSize")) {
      estimatedTotalSize = _json["estimatedTotalSize"];
    }
    if (_json.containsKey("histogramResults")) {
      histogramResults =
          new HistogramResults.fromJson(_json["histogramResults"]);
    }
    if (_json.containsKey("jobView")) {
      jobView = _json["jobView"];
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
    if (_json.containsKey("numJobsFromBroadenedQuery")) {
      numJobsFromBroadenedQuery = _json["numJobsFromBroadenedQuery"];
    }
    if (_json.containsKey("spellResult")) {
      spellResult = new SpellingCorrection.fromJson(_json["spellResult"]);
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appliedCommuteFilter != null) {
      _json["appliedCommuteFilter"] = (appliedCommuteFilter).toJson();
    }
    if (appliedJobLocationFilters != null) {
      _json["appliedJobLocationFilters"] =
          appliedJobLocationFilters.map((value) => (value).toJson()).toList();
    }
    if (estimatedTotalSize != null) {
      _json["estimatedTotalSize"] = estimatedTotalSize;
    }
    if (histogramResults != null) {
      _json["histogramResults"] = (histogramResults).toJson();
    }
    if (jobView != null) {
      _json["jobView"] = jobView;
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
    if (numJobsFromBroadenedQuery != null) {
      _json["numJobsFromBroadenedQuery"] = numJobsFromBroadenedQuery;
    }
    if (spellResult != null) {
      _json["spellResult"] = (spellResult).toJson();
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

/// Represents array of string values.
class StringValues {
  /// Required.
  ///
  /// String values.
  core.List<core.String> values;

  StringValues();

  StringValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Input only.
///
/// Update job request.
class UpdateJobRequest {
  /// Deprecated. Please use processing_options. This flag is ignored if
  /// processing_options is set.
  ///
  /// Optional.
  ///
  /// If set to `true`, the service does not attempt resolve a more precise
  /// address for the job.
  core.bool disableStreetAddressResolution;

  /// Required.
  ///
  /// The Job to be updated.
  Job job;

  /// Optional.
  ///
  /// Options for job processing.
  ///
  /// UpdateJobRequest.disable_street_address_resolution is ignored if this
  /// flag is set.
  JobProcessingOptions processingOptions;

  /// Optional but strongly recommended to be provided for the best service
  /// experience.
  ///
  /// If update_job_fields is provided, only the specified fields in
  /// job are updated. Otherwise all the fields are updated.
  ///
  /// A field mask to restrict the fields that are updated. Valid values are:
  ///
  /// * jobTitle
  /// * employmentTypes
  /// * description
  /// * applicationUrls
  /// * applicationEmailList
  /// * applicationInstruction
  /// * responsibilities
  /// * qualifications
  /// * educationLevels
  /// * level
  /// * department
  /// * startDate
  /// * endDate
  /// * compensationInfo
  /// * incentives
  /// * languageCode
  /// * benefits
  /// * expireTime
  /// * customAttributes
  /// * visibility
  /// * publishDate
  /// * promotionValue
  /// * locations
  /// * region
  /// * expiryDate (deprecated)
  /// * filterableCustomFields (deprecated)
  /// * unindexedCustomFields (deprecated)
  core.String updateJobFields;

  UpdateJobRequest();

  UpdateJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("disableStreetAddressResolution")) {
      disableStreetAddressResolution = _json["disableStreetAddressResolution"];
    }
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("processingOptions")) {
      processingOptions =
          new JobProcessingOptions.fromJson(_json["processingOptions"]);
    }
    if (_json.containsKey("updateJobFields")) {
      updateJobFields = _json["updateJobFields"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableStreetAddressResolution != null) {
      _json["disableStreetAddressResolution"] = disableStreetAddressResolution;
    }
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (processingOptions != null) {
      _json["processingOptions"] = (processingOptions).toJson();
    }
    if (updateJobFields != null) {
      _json["updateJobFields"] = updateJobFields;
    }
    return _json;
  }
}
