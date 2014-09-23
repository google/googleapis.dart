library googleapis_beta.genomics.v1beta;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** Provides access to Genomics data. */
class GenomicsApi {
  /** View and manage your data in Google BigQuery */
  static const BigqueryScope = "https://www.googleapis.com/auth/bigquery";

  /** Manage your data in Google Cloud Storage */
  static const DevstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";

  /** View and manage Genomics data */
  static const GenomicsScope = "https://www.googleapis.com/auth/genomics";

  /** View Genomics data */
  static const GenomicsReadonlyScope = "https://www.googleapis.com/auth/genomics.readonly";


  final common_internal.ApiRequester _requester;

  BeaconsResourceApi get beacons => new BeaconsResourceApi(_requester);
  CallsetsResourceApi get callsets => new CallsetsResourceApi(_requester);
  DatasetsResourceApi get datasets => new DatasetsResourceApi(_requester);
  ExperimentalResourceApi get experimental => new ExperimentalResourceApi(_requester);
  JobsResourceApi get jobs => new JobsResourceApi(_requester);
  ReadsResourceApi get reads => new ReadsResourceApi(_requester);
  ReadsetsResourceApi get readsets => new ReadsetsResourceApi(_requester);
  VariantsResourceApi get variants => new VariantsResourceApi(_requester);
  VariantsetsResourceApi get variantsets => new VariantsetsResourceApi(_requester);

  GenomicsApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "genomics/v1beta/");
}


/** Not documented yet. */
class BeaconsResourceApi {
  final common_internal.ApiRequester _requester;

  BeaconsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * This is an experimental API that provides a Global Alliance for Genomics
   * and Health Beacon. It may change at any time.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant set to query over. It must be
   * public. Private variant sets will return an unauthorized exception.
   *
   * [allele] - Required. The allele to look for ('A', 'C', 'G' or 'T').
   *
   * [position] - Required. The 0-based position to query.
   *
   * [referenceName] - Required. The reference to query over.
   *
   * Completes with a [Beacon].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Beacon> get(core.String variantSetId, {core.String allele, core.String position, core.String referenceName}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }
    if (allele != null) {
      _queryParams["allele"] = [allele];
    }
    if (position != null) {
      _queryParams["position"] = [position];
    }
    if (referenceName != null) {
      _queryParams["referenceName"] = [referenceName];
    }


    _url = 'beacons/' + common_internal.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Beacon.fromJson(data));
  }

}


/** Not documented yet. */
class CallsetsResourceApi {
  final common_internal.ApiRequester _requester;

  CallsetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new call set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [CallSet].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CallSet> create(CallSet request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'callsets';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CallSet.fromJson(data));
  }

  /**
   * Deletes a call set.
   *
   * Request parameters:
   *
   * [callSetId] - The ID of the callset to be deleted.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }

    _downloadOptions = null;

    _url = 'callsets/' + common_internal.Escaper.ecapeVariable('$callSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a call set by ID.
   *
   * Request parameters:
   *
   * [callSetId] - The ID of the callset.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CallSet> get(core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + common_internal.Escaper.ecapeVariable('$callSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CallSet.fromJson(data));
  }

  /**
   * Updates a call set. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [callSetId] - The ID of the callset to be updated.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CallSet> patch(CallSet request, core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + common_internal.Escaper.ecapeVariable('$callSetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CallSet.fromJson(data));
  }

  /**
   * Gets a list of call sets matching the criteria.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchCallSetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchCallSetsResponse> search(SearchCallSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'callsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchCallSetsResponse.fromJson(data));
  }

  /**
   * Updates a call set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [callSetId] - The ID of the callset to be updated.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CallSet> update(CallSet request, core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + common_internal.Escaper.ecapeVariable('$callSetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CallSet.fromJson(data));
  }

}


/** Not documented yet. */
class DatasetsResourceApi {
  final common_internal.ApiRequester _requester;

  DatasetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Dataset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Dataset> create(Dataset request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'datasets';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /**
   * Deletes a dataset.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset to be deleted.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _downloadOptions = null;

    _url = 'datasets/' + common_internal.Escaper.ecapeVariable('$datasetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a dataset by ID.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Dataset> get(core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + common_internal.Escaper.ecapeVariable('$datasetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /**
   * Lists all datasets.
   *
   * Request parameters:
   *
   * [maxResults] - The maximum number of results returned by this request.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of nextPageToken from the previous response.
   *
   * [projectId] - Only return datasets which belong to this Google Developers
   * Console project. Only accepts project numbers.
   *
   * Completes with a [ListDatasetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListDatasetsResponse> list({core.String maxResults, core.String pageToken, core.String projectId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = [maxResults];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }


    _url = 'datasets';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDatasetsResponse.fromJson(data));
  }

  /**
   * Updates a dataset. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset to be updated.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Dataset> patch(Dataset request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + common_internal.Escaper.ecapeVariable('$datasetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /**
   * Undeletes a dataset by restoring a dataset which was deleted via this API.
   * This operation is only possible for a week after the deletion occurred.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset to be undeleted.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Dataset> undelete(core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + common_internal.Escaper.ecapeVariable('$datasetId') + '/undelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /**
   * Updates a dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset to be updated.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Dataset> update(Dataset request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + common_internal.Escaper.ecapeVariable('$datasetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

}


/** Not documented yet. */
class ExperimentalResourceApi {
  final common_internal.ApiRequester _requester;

  ExperimentalJobsResourceApi get jobs => new ExperimentalJobsResourceApi(_requester);

  ExperimentalResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class ExperimentalJobsResourceApi {
  final common_internal.ApiRequester _requester;

  ExperimentalJobsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates and asynchronously runs an ad-hoc job. This is an experimental call
   * and may be removed or changed at any time.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ExperimentalCreateJobResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExperimentalCreateJobResponse> create(ExperimentalCreateJobRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'experimental/jobs/create';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExperimentalCreateJobResponse.fromJson(data));
  }

}


/** Not documented yet. */
class JobsResourceApi {
  final common_internal.ApiRequester _requester;

  JobsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels a job by ID. Note that it is possible for partial results to be
   * generated and stored for cancelled jobs.
   *
   * Request parameters:
   *
   * [jobId] - Required. The ID of the job.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future cancel(core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _downloadOptions = null;

    _url = 'jobs/' + common_internal.Escaper.ecapeVariable('$jobId') + '/cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a job by ID.
   *
   * Request parameters:
   *
   * [jobId] - Required. The ID of the job.
   *
   * Completes with a [Job].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Job> get(core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = 'jobs/' + common_internal.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Gets a list of jobs matching the criteria.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchJobsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchJobsResponse> search(SearchJobsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'jobs/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchJobsResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ReadsResourceApi {
  final common_internal.ApiRequester _requester;

  ReadsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a list of reads for one or more readsets. Reads search operates over a
   * genomic coordinate space of reference sequence & position defined over the
   * reference sequences to which the requested readsets are aligned. If a
   * target positional range is specified, search returns all reads whose
   * alignment to the reference genome overlap the range. A query which
   * specifies only readset IDs yields all reads in those readsets, including
   * unmapped reads. All reads returned (including reads on subsequent pages)
   * are ordered by genomic coordinate (reference sequence & position). Reads
   * with equivalent genomic coordinates are returned in a deterministic order.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReadsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchReadsResponse> search(SearchReadsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'reads/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReadsResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ReadsetsResourceApi {
  final common_internal.ApiRequester _requester;

  ReadsetsCoveragebucketsResourceApi get coveragebuckets => new ReadsetsCoveragebucketsResourceApi(_requester);

  ReadsetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a readset.
   *
   * Request parameters:
   *
   * [readsetId] - The ID of the readset to be deleted. The caller must have
   * WRITE permissions to the dataset associated with this readset.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String readsetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (readsetId == null) {
      throw new core.ArgumentError("Parameter readsetId is required.");
    }

    _downloadOptions = null;

    _url = 'readsets/' + common_internal.Escaper.ecapeVariable('$readsetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Exports readsets to a BAM file in Google Cloud Storage. Note that currently
   * there may be some differences between exported BAM files and the original
   * BAM file at the time of import. In particular, comments in the input file
   * header will not be preserved, and some custom tags will be converted to
   * strings.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ExportReadsetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExportReadsetsResponse> export(ExportReadsetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readsets/export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExportReadsetsResponse.fromJson(data));
  }

  /**
   * Gets a readset by ID.
   *
   * Request parameters:
   *
   * [readsetId] - The ID of the readset.
   *
   * Completes with a [Readset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Readset> get(core.String readsetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (readsetId == null) {
      throw new core.ArgumentError("Parameter readsetId is required.");
    }


    _url = 'readsets/' + common_internal.Escaper.ecapeVariable('$readsetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Readset.fromJson(data));
  }

  /**
   * Creates readsets by asynchronously importing the provided information. Note
   * that currently comments in the input file header are not imported and some
   * custom tags will be converted to strings, rather than preserving tag types.
   * The caller must have WRITE permissions to the dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ImportReadsetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImportReadsetsResponse> import(ImportReadsetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readsets/import';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImportReadsetsResponse.fromJson(data));
  }

  /**
   * Updates a readset. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [readsetId] - The ID of the readset to be updated. The caller must have
   * WRITE permissions to the dataset associated with this readset.
   *
   * Completes with a [Readset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Readset> patch(Readset request, core.String readsetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (readsetId == null) {
      throw new core.ArgumentError("Parameter readsetId is required.");
    }


    _url = 'readsets/' + common_internal.Escaper.ecapeVariable('$readsetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Readset.fromJson(data));
  }

  /**
   * Gets a list of readsets matching the criteria.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReadsetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchReadsetsResponse> search(SearchReadsetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReadsetsResponse.fromJson(data));
  }

  /**
   * Updates a readset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [readsetId] - The ID of the readset to be updated. The caller must have
   * WRITE permissions to the dataset associated with this readset.
   *
   * Completes with a [Readset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Readset> update(Readset request, core.String readsetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (readsetId == null) {
      throw new core.ArgumentError("Parameter readsetId is required.");
    }


    _url = 'readsets/' + common_internal.Escaper.ecapeVariable('$readsetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Readset.fromJson(data));
  }

}


/** Not documented yet. */
class ReadsetsCoveragebucketsResourceApi {
  final common_internal.ApiRequester _requester;

  ReadsetsCoveragebucketsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Lists fixed width coverage buckets for a readset, each of which correspond
   * to a range of a reference sequence. Each bucket summarizes coverage
   * information across its corresponding genomic range. Coverage is defined as
   * the number of reads which are aligned to a given base in the reference
   * sequence. Coverage buckets are available at various bucket widths, enabling
   * various coverage "zoom levels". The caller must have READ permissions for
   * the target readset.
   *
   * Request parameters:
   *
   * [readsetId] - Required. The ID of the readset over which coverage is
   * requested.
   *
   * [maxResults] - The maximum number of results to return in a single page. If
   * unspecified, defaults to 1024. The maximum value is 2048.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of nextPageToken from the previous response.
   *
   * [range_sequenceEnd] - The end position of the range on the reference,
   * 1-based exclusive. If specified, sequenceName must also be specified.
   *
   * [range_sequenceName] - The reference sequence name, for example chr1, 1, or
   * chrX.
   *
   * [range_sequenceStart] - The start position of the range on the reference,
   * 1-based inclusive. If specified, sequenceName must also be specified.
   *
   * [targetBucketWidth] - The desired width of each reported coverage bucket in
   * base pairs. This will be rounded down to the nearest precomputed bucket
   * width; the value of which is returned as bucketWidth in the response.
   * Defaults to infinity (each bucket spans an entire reference sequence) or
   * the length of the target range, if specified. The smallest precomputed
   * bucketWidth is currently 2048 base pairs; this is subject to change.
   *
   * Completes with a [ListCoverageBucketsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListCoverageBucketsResponse> list(core.String readsetId, {core.String maxResults, core.String pageToken, core.String range_sequenceEnd, core.String range_sequenceName, core.String range_sequenceStart, core.String targetBucketWidth}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (readsetId == null) {
      throw new core.ArgumentError("Parameter readsetId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = [maxResults];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (range_sequenceEnd != null) {
      _queryParams["range.sequenceEnd"] = [range_sequenceEnd];
    }
    if (range_sequenceName != null) {
      _queryParams["range.sequenceName"] = [range_sequenceName];
    }
    if (range_sequenceStart != null) {
      _queryParams["range.sequenceStart"] = [range_sequenceStart];
    }
    if (targetBucketWidth != null) {
      _queryParams["targetBucketWidth"] = [targetBucketWidth];
    }


    _url = 'readsets/' + common_internal.Escaper.ecapeVariable('$readsetId') + '/coveragebuckets';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCoverageBucketsResponse.fromJson(data));
  }

}


/** Not documented yet. */
class VariantsResourceApi {
  final common_internal.ApiRequester _requester;

  VariantsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new variant.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Variant].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variant> create(Variant request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'variants';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variant.fromJson(data));
  }

  /**
   * Deletes a variant.
   *
   * Request parameters:
   *
   * [variantId] - The ID of the variant to be deleted.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String variantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }

    _downloadOptions = null;

    _url = 'variants/' + common_internal.Escaper.ecapeVariable('$variantId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Exports variant data to an external destination.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ExportVariantsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExportVariantsResponse> export(ExportVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'variants/export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExportVariantsResponse.fromJson(data));
  }

  /**
   * Gets a variant by ID.
   *
   * Request parameters:
   *
   * [variantId] - The ID of the variant.
   *
   * Completes with a [Variant].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variant> get(core.String variantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }


    _url = 'variants/' + common_internal.Escaper.ecapeVariable('$variantId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variant.fromJson(data));
  }

  /**
   * Creates variant data by asynchronously importing the provided information.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ImportVariantsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImportVariantsResponse> import(ImportVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'variants/import';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImportVariantsResponse.fromJson(data));
  }

  /**
   * Gets a list of variants matching the criteria.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchVariantsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchVariantsResponse> search(SearchVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'variants/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchVariantsResponse.fromJson(data));
  }

  /**
   * Updates a variant's names and info fields. All other modifications are
   * silently ignored. Returns the modified variant without its calls.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantId] - The ID of the variant to be updated.
   *
   * Completes with a [Variant].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variant> update(Variant request, core.String variantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }


    _url = 'variants/' + common_internal.Escaper.ecapeVariable('$variantId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variant.fromJson(data));
  }

}


/** Not documented yet. */
class VariantsetsResourceApi {
  final common_internal.ApiRequester _requester;

  VariantsetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the contents of a variant set. The variant set object is not
   * deleted.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant set to be deleted.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String variantSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }

    _downloadOptions = null;

    _url = 'variantsets/' + common_internal.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a variant set by ID.
   *
   * Request parameters:
   *
   * [variantSetId] - Required. The ID of the variant set.
   *
   * Completes with a [VariantSet].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VariantSet> get(core.String variantSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }


    _url = 'variantsets/' + common_internal.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VariantSet.fromJson(data));
  }

  /**
   * Returns a list of all variant sets matching search criteria.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchVariantSetsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchVariantSetsResponse> search(SearchVariantSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'variantsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchVariantSetsResponse.fromJson(data));
  }

}



/**
 * A beacon represents whether any variant call in a variant set has a specific
 * allele at a particular position.
 */
class Beacon {
  /** True if the allele exists on any variant call, false otherwise. */
  core.bool exists;


  Beacon();

  Beacon.fromJson(core.Map _json) {
    if (_json.containsKey("exists")) {
      exists = _json["exists"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (exists != null) {
      _json["exists"] = exists;
    }
    return _json;
  }
}


/**
 * A Call represents the determination of genotype with respect to a particular
 * variant. It may include associated information such as quality and phasing.
 * For example, a Call might assign a probability of 0.32 to the occurrence of a
 * SNP named rs1234 in a call set with the name NA12345.
 */
class Call {
  /** The ID of the call set this variant call belongs to. */
  core.String callSetId;

  /** The name of the call set this variant call belongs to. */
  core.String callSetName;

  /**
   * The genotype of this variant call. Each value represents either the value
   * of the referenceBases field or a 1-based index into alternateBases. If a
   * variant had a referenceBases value of T and an alternateBases value of
   * ["A", "C"], and the genotype was [2, 1], that would mean the call
   * represented the heterozygous value CA for this variant. If the genotype was
   * instead [0, 1], the represented value would be TA. Ordering of the genotype
   * values is important if the phaseset is present. If a genotype is not called
   * (that is, a . is present in the GT string) -1 is returned.
   */
  core.List<core.int> genotype;

  /**
   * The genotype likelihoods for this variant call. Each array entry represents
   * how likely a specific genotype is for this call. The value ordering is
   * defined by the GL tag in the VCF spec.
   */
  core.List<core.double> genotypeLikelihood;

  /** A map of additional variant call information. */
  core.Map<core.String, core.List<core.String>> info;

  /**
   * If this field is present, this variant call's genotype ordering implies the
   * phase of the bases and is consistent with any other variant calls in the
   * same reference sequence which have the same phaseset value. When importing
   * data from VCF, if the genotype data was phased but no phase set was
   * specified this field will be set to *.
   */
  core.String phaseset;


  Call();

  Call.fromJson(core.Map _json) {
    if (_json.containsKey("callSetId")) {
      callSetId = _json["callSetId"];
    }
    if (_json.containsKey("callSetName")) {
      callSetName = _json["callSetName"];
    }
    if (_json.containsKey("genotype")) {
      genotype = _json["genotype"];
    }
    if (_json.containsKey("genotypeLikelihood")) {
      genotypeLikelihood = _json["genotypeLikelihood"];
    }
    if (_json.containsKey("info")) {
      info = _json["info"];
    }
    if (_json.containsKey("phaseset")) {
      phaseset = _json["phaseset"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (callSetId != null) {
      _json["callSetId"] = callSetId;
    }
    if (callSetName != null) {
      _json["callSetName"] = callSetName;
    }
    if (genotype != null) {
      _json["genotype"] = genotype;
    }
    if (genotypeLikelihood != null) {
      _json["genotypeLikelihood"] = genotypeLikelihood;
    }
    if (info != null) {
      _json["info"] = info;
    }
    if (phaseset != null) {
      _json["phaseset"] = phaseset;
    }
    return _json;
  }
}


/** A CallSet is a collection of variant calls. It belongs to a variant set. */
class CallSet {
  /** The date this call set was created in milliseconds from the epoch. */
  core.String created;

  /** The Google generated ID of the call set, immutable. */
  core.String id;

  /** A map of additional callset information. */
  core.Map<core.String, core.List<core.String>> info;

  /** The callset name. */
  core.String name;

  /** The sample ID this call set corresponds to. */
  core.String sampleId;

  /** The IDs of the variant sets this call set belongs to. */
  core.List<core.String> variantSetIds;


  CallSet();

  CallSet.fromJson(core.Map _json) {
    if (_json.containsKey("created")) {
      created = _json["created"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("info")) {
      info = _json["info"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sampleId")) {
      sampleId = _json["sampleId"];
    }
    if (_json.containsKey("variantSetIds")) {
      variantSetIds = _json["variantSetIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (created != null) {
      _json["created"] = created;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (info != null) {
      _json["info"] = info;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sampleId != null) {
      _json["sampleId"] = sampleId;
    }
    if (variantSetIds != null) {
      _json["variantSetIds"] = variantSetIds;
    }
    return _json;
  }
}


/**
 * A bucket over which read coverage has been precomputed. A bucket corresponds
 * to a specific range of the reference sequence.
 */
class CoverageBucket {
  /**
   * The average number of reads which are aligned to each individual reference
   * base in this bucket.
   */
  core.double meanCoverage;

  /** The genomic coordinate range spanned by this bucket. */
  GenomicRange range;


  CoverageBucket();

  CoverageBucket.fromJson(core.Map _json) {
    if (_json.containsKey("meanCoverage")) {
      meanCoverage = _json["meanCoverage"];
    }
    if (_json.containsKey("range")) {
      range = new GenomicRange.fromJson(_json["range"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (meanCoverage != null) {
      _json["meanCoverage"] = meanCoverage;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}


/** A Dataset is a collection of genomic data. */
class Dataset {
  /** The Google generated ID of the dataset, immutable. */
  core.String id;

  /**
   * Flag indicating whether or not a dataset is publicly viewable. If a dataset
   * is not public, it inherits viewing permissions from its project.
   */
  core.bool isPublic;

  /** The dataset name. */
  core.String name;

  /**
   * The Google Developers Console project number that this dataset belongs to.
   */
  core.String projectId;


  Dataset();

  Dataset.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isPublic")) {
      isPublic = _json["isPublic"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (isPublic != null) {
      _json["isPublic"] = isPublic;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}


/** The job creation request. */
class ExperimentalCreateJobRequest {
  /**
   * Specifies whether or not to run the alignment pipeline. At least one of
   * align or callVariants must be provided.
   */
  core.bool align;

  /**
   * Specifies whether or not to run the variant calling pipeline. If specified,
   * alignment will be performed first and the aligned BAMs will passed as input
   * to the variant caller. At least one of align or callVariants must be
   * provided.
   */
  core.bool callVariants;

  /**
   * Specifies where to copy the results of certain pipelines. This should be in
   * the form of gs://bucket/path.
   */
  core.String gcsOutputPath;

  /**
   * A list of Google Cloud Storage URIs of paired end .fastq files to operate
   * upon. If specified, this represents the second file of each paired .fastq
   * file. The first file of each pair should be specified in sourceUris.
   */
  core.List<core.String> pairedSourceUris;

  /**
   * Required. The Google Cloud Project ID with which to associate the request.
   */
  core.String projectId;

  /**
   * A list of Google Cloud Storage URIs of data files to operate upon. These
   * can be .bam, interleaved .fastq, or paired .fastq. If specifying paired
   * .fastq files, the first of each pair of files should be listed here, and
   * the second of each pair should be listed in pairedSourceUris.
   */
  core.List<core.String> sourceUris;


  ExperimentalCreateJobRequest();

  ExperimentalCreateJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("align")) {
      align = _json["align"];
    }
    if (_json.containsKey("callVariants")) {
      callVariants = _json["callVariants"];
    }
    if (_json.containsKey("gcsOutputPath")) {
      gcsOutputPath = _json["gcsOutputPath"];
    }
    if (_json.containsKey("pairedSourceUris")) {
      pairedSourceUris = _json["pairedSourceUris"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (align != null) {
      _json["align"] = align;
    }
    if (callVariants != null) {
      _json["callVariants"] = callVariants;
    }
    if (gcsOutputPath != null) {
      _json["gcsOutputPath"] = gcsOutputPath;
    }
    if (pairedSourceUris != null) {
      _json["pairedSourceUris"] = pairedSourceUris;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    return _json;
  }
}


/** The job creation response. */
class ExperimentalCreateJobResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ExperimentalCreateJobResponse();

  ExperimentalCreateJobResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    return _json;
  }
}


/** The readset export request. */
class ExportReadsetsRequest {
  /**
   * A Google Cloud Storage URI where the exported BAM file will be created. The
   * currently authenticated user must have write access to the new file
   * location. An error will be returned if the URI already contains data.
   */
  core.String exportUri;

  /**
   * The Google Developers Console project number that owns this export. This is
   * the project that will be billed.
   */
  core.String projectId;

  /** The IDs of the readsets to export. */
  core.List<core.String> readsetIds;

  /**
   * The reference names to export. If this is not specified, all reference
   * sequences, including unmapped reads, are exported. Use * to export only
   * unmapped reads.
   */
  core.List<core.String> referenceNames;


  ExportReadsetsRequest();

  ExportReadsetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("exportUri")) {
      exportUri = _json["exportUri"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("readsetIds")) {
      readsetIds = _json["readsetIds"];
    }
    if (_json.containsKey("referenceNames")) {
      referenceNames = _json["referenceNames"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (exportUri != null) {
      _json["exportUri"] = exportUri;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (readsetIds != null) {
      _json["readsetIds"] = readsetIds;
    }
    if (referenceNames != null) {
      _json["referenceNames"] = referenceNames;
    }
    return _json;
  }
}


/** The readset export response. */
class ExportReadsetsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ExportReadsetsResponse();

  ExportReadsetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    return _json;
  }
}


/** The variant data export request. */
class ExportVariantsRequest {
  /**
   * The BigQuery dataset to export data to. Note that this is distinct from the
   * Genomics concept of "dataset". The caller must have WRITE access to this
   * BigQuery dataset.
   */
  core.String bigqueryDataset;

  /**
   * The BigQuery table to export data to. The caller must have WRITE access to
   * this BigQuery table.
   */
  core.String bigqueryTable;

  /**
   * If provided, only variant call information from the specified call sets
   * will be exported. By default all variant calls are exported.
   */
  core.List<core.String> callSetIds;

  /**
   * The format for the exported data.
   * Possible string values are:
   * - "bigquery"
   */
  core.String format;

  /**
   * The Google Cloud project number that owns this export. This is the project
   * that will be billed.
   */
  core.String projectId;

  /**
   * Required. The ID of the variant set that contains variant data which should
   * be exported. The caller must have READ access to this variant set.
   */
  core.String variantSetId;


  ExportVariantsRequest();

  ExportVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bigqueryDataset")) {
      bigqueryDataset = _json["bigqueryDataset"];
    }
    if (_json.containsKey("bigqueryTable")) {
      bigqueryTable = _json["bigqueryTable"];
    }
    if (_json.containsKey("callSetIds")) {
      callSetIds = _json["callSetIds"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("variantSetId")) {
      variantSetId = _json["variantSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bigqueryDataset != null) {
      _json["bigqueryDataset"] = bigqueryDataset;
    }
    if (bigqueryTable != null) {
      _json["bigqueryTable"] = bigqueryTable;
    }
    if (callSetIds != null) {
      _json["callSetIds"] = callSetIds;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (variantSetId != null) {
      _json["variantSetId"] = variantSetId;
    }
    return _json;
  }
}


/** The variant data export response. */
class ExportVariantsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ExportVariantsResponse();

  ExportVariantsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    return _json;
  }
}


/**
 * An inclusive, exclusive genomic coordinate range over a reference sequence.
 */
class GenomicRange {
  /**
   * The end position of the range on the reference, 1-based exclusive. If
   * specified, sequenceName must also be specified.
   */
  core.String sequenceEnd;

  /** The reference sequence name, for example chr1, 1, or chrX. */
  core.String sequenceName;

  /**
   * The start position of the range on the reference, 1-based inclusive. If
   * specified, sequenceName must also be specified.
   */
  core.String sequenceStart;


  GenomicRange();

  GenomicRange.fromJson(core.Map _json) {
    if (_json.containsKey("sequenceEnd")) {
      sequenceEnd = _json["sequenceEnd"];
    }
    if (_json.containsKey("sequenceName")) {
      sequenceName = _json["sequenceName"];
    }
    if (_json.containsKey("sequenceStart")) {
      sequenceStart = _json["sequenceStart"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sequenceEnd != null) {
      _json["sequenceEnd"] = sequenceEnd;
    }
    if (sequenceName != null) {
      _json["sequenceName"] = sequenceName;
    }
    if (sequenceStart != null) {
      _json["sequenceStart"] = sequenceStart;
    }
    return _json;
  }
}


/** Not documented yet. */
class Header {
  /** (SO) Sorting order of alignments. */
  core.String sortingOrder;

  /** (VN) BAM format version. */
  core.String version;


  Header();

  Header.fromJson(core.Map _json) {
    if (_json.containsKey("sortingOrder")) {
      sortingOrder = _json["sortingOrder"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sortingOrder != null) {
      _json["sortingOrder"] = sortingOrder;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}


/** The header section of the BAM/SAM file. */
class HeaderSection {
  /** (@CO) One-line text comments. */
  core.List<core.String> comments;

  /**
   * [Deprecated] This field is deprecated and will no longer be populated.
   * Please use filename instead.
   */
  core.String fileUri;

  /** The name of the file from which this data was imported. */
  core.String filename;

  /** (@HD) The header line. */
  core.List<Header> headers;

  /** (@PG) Programs. */
  core.List<Program> programs;

  /** (@RG) Read group. */
  core.List<ReadGroup> readGroups;

  /** (@SQ) Reference sequence dictionary. */
  core.List<ReferenceSequence> refSequences;


  HeaderSection();

  HeaderSection.fromJson(core.Map _json) {
    if (_json.containsKey("comments")) {
      comments = _json["comments"];
    }
    if (_json.containsKey("fileUri")) {
      fileUri = _json["fileUri"];
    }
    if (_json.containsKey("filename")) {
      filename = _json["filename"];
    }
    if (_json.containsKey("headers")) {
      headers = _json["headers"].map((value) => new Header.fromJson(value)).toList();
    }
    if (_json.containsKey("programs")) {
      programs = _json["programs"].map((value) => new Program.fromJson(value)).toList();
    }
    if (_json.containsKey("readGroups")) {
      readGroups = _json["readGroups"].map((value) => new ReadGroup.fromJson(value)).toList();
    }
    if (_json.containsKey("refSequences")) {
      refSequences = _json["refSequences"].map((value) => new ReferenceSequence.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (comments != null) {
      _json["comments"] = comments;
    }
    if (fileUri != null) {
      _json["fileUri"] = fileUri;
    }
    if (filename != null) {
      _json["filename"] = filename;
    }
    if (headers != null) {
      _json["headers"] = headers.map((value) => (value).toJson()).toList();
    }
    if (programs != null) {
      _json["programs"] = programs.map((value) => (value).toJson()).toList();
    }
    if (readGroups != null) {
      _json["readGroups"] = readGroups.map((value) => (value).toJson()).toList();
    }
    if (refSequences != null) {
      _json["refSequences"] = refSequences.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The readset import request. */
class ImportReadsetsRequest {
  /**
   * Required. The ID of the dataset these readsets will belong to. The caller
   * must have WRITE permissions to this dataset.
   */
  core.String datasetId;

  /** A list of URIs pointing at BAM files in Google Cloud Storage. */
  core.List<core.String> sourceUris;


  ImportReadsetsRequest();

  ImportReadsetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    return _json;
  }
}


/** The readset import response. */
class ImportReadsetsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ImportReadsetsResponse();

  ImportReadsetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    return _json;
  }
}


/** The variant data import request. */
class ImportVariantsRequest {
  /**
   * The format of the variant data being imported.
   * Possible string values are:
   * - "completeGenomics"
   * - "vcf"
   */
  core.String format;

  /**
   * A list of URIs pointing at VCF files in Google Cloud Storage. See the VCF
   * Specification for more details on the input format.
   */
  core.List<core.String> sourceUris;

  /** Required. The variant set to which variant data should be imported. */
  core.String variantSetId;


  ImportVariantsRequest();

  ImportVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
    if (_json.containsKey("variantSetId")) {
      variantSetId = _json["variantSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (format != null) {
      _json["format"] = format;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    if (variantSetId != null) {
      _json["variantSetId"] = variantSetId;
    }
    return _json;
  }
}


/** The variant data import response. */
class ImportVariantsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ImportVariantsResponse();

  ImportVariantsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    return _json;
  }
}


/**
 * A Job represents an ongoing process that can be monitored for status
 * information.
 */
class Job {
  /** The date this job was created, in milliseconds from the epoch. */
  core.String created;

  /** A more detailed description of this job's current status. */
  core.String description;

  /** Any errors that occurred during processing. */
  core.List<core.String> errors;

  /** The job ID. */
  core.String id;

  /**
   * If this Job represents an import, this field will contain the IDs of the
   * objects that were successfully imported.
   */
  core.List<core.String> importedIds;

  /**
   * The Google Developers Console project number to which this job belongs.
   */
  core.String projectId;

  /** A summarized representation of the original service request. */
  JobRequest request;

  /**
   * The status of this job.
   * Possible string values are:
   * - "canceled"
   * - "failure"
   * - "new"
   * - "pending"
   * - "running"
   * - "success"
   * - "unknownStatus"
   */
  core.String status;

  /** Any warnings that occurred during processing. */
  core.List<core.String> warnings;


  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("created")) {
      created = _json["created"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("importedIds")) {
      importedIds = _json["importedIds"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("request")) {
      request = new JobRequest.fromJson(_json["request"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (created != null) {
      _json["created"] = created;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (errors != null) {
      _json["errors"] = errors;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (importedIds != null) {
      _json["importedIds"] = importedIds;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (request != null) {
      _json["request"] = (request).toJson();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (warnings != null) {
      _json["warnings"] = warnings;
    }
    return _json;
  }
}


/** A summary representation of the service request that spawned the job. */
class JobRequest {
  /**
   * The data destination of the request, for example, a Google BigQuery Table
   * or Dataset ID.
   */
  core.List<core.String> destination;

  /**
   * The data source of the request, for example, a Google Cloud Storage object
   * path or Readset ID.
   */
  core.List<core.String> source;

  /**
   * The original request type.
   * Possible string values are:
   * - "experimentalCreateJob"
   * - "exportReadsets"
   * - "exportVariants"
   * - "importReadsets"
   * - "importVariants"
   * - "unknownType"
   */
  core.String type;


  JobRequest();

  JobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class ListCoverageBucketsResponse {
  /**
   * The length of each coverage bucket in base pairs. Note that buckets at the
   * end of a reference sequence may be shorter. This value is omitted if the
   * bucket width is infinity (the default behaviour, with no range or
   * targetBucketWidth).
   */
  core.String bucketWidth;

  /**
   * The coverage buckets. The list of buckets is sparse; a bucket with 0
   * overlapping reads is not returned. A bucket never crosses more than one
   * reference sequence. Each bucket has width bucketWidth, unless its end is
   * the end of the reference sequence.
   */
  core.List<CoverageBucket> coverageBuckets;

  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;


  ListCoverageBucketsResponse();

  ListCoverageBucketsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("bucketWidth")) {
      bucketWidth = _json["bucketWidth"];
    }
    if (_json.containsKey("coverageBuckets")) {
      coverageBuckets = _json["coverageBuckets"].map((value) => new CoverageBucket.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bucketWidth != null) {
      _json["bucketWidth"] = bucketWidth;
    }
    if (coverageBuckets != null) {
      _json["coverageBuckets"] = coverageBuckets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** The dataset list response. */
class ListDatasetsResponse {
  /** The list of matching Datasets. */
  core.List<Dataset> datasets;

  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;


  ListDatasetsResponse();

  ListDatasetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("datasets")) {
      datasets = _json["datasets"].map((value) => new Dataset.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasets != null) {
      _json["datasets"] = datasets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/**
 * Metadata describes a single piece of variant call metadata. These data
 * include a top level key and either a single value string (value) or a list of
 * key-value pairs (info.) Value and info are mutually exclusive.
 */
class Metadata {
  /** A textual description of this metadata. */
  core.String description;

  /**
   * User-provided ID field, not enforced by this API. Two or more pieces of
   * structured metadata with identical id and key fields are considered
   * equivalent.
   */
  core.String id;

  /** Remaining structured metadata key-value pairs. */
  core.Map<core.String, core.List<core.String>> info;

  /** The top-level key. */
  core.String key;

  /**
   * The number of values that can be included in a field described by this
   * metadata.
   */
  core.String number;

  /**
   * The type of data. Possible types include: Integer, Float, Flag, Character,
   * and String.
   * Possible string values are:
   * - "character"
   * - "flag"
   * - "float"
   * - "integer"
   * - "string"
   * - "unknownType"
   */
  core.String type;

  /** The value field for simple metadata */
  core.String value;


  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("info")) {
      info = _json["info"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (info != null) {
      _json["info"] = info;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
class Program {
  /** (CL) Command line. */
  core.String commandLine;

  /** (ID) Program record identifier. */
  core.String id;

  /** (PN) Program name. */
  core.String name;

  /** (PP) Previous program ID. */
  core.String prevProgramId;

  /** (VN) Program version. */
  core.String version;


  Program();

  Program.fromJson(core.Map _json) {
    if (_json.containsKey("commandLine")) {
      commandLine = _json["commandLine"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("prevProgramId")) {
      prevProgramId = _json["prevProgramId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commandLine != null) {
      _json["commandLine"] = commandLine;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (prevProgramId != null) {
      _json["prevProgramId"] = prevProgramId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}


/**
 * A Read is a group of bases that may or may not have been aligned to a
 * reference. It contains quality information and other metadata.
 */
class Read {
  /**
   * The originalBases after the cigar field has been applied. Deletions are
   * represented with '-' and insertions are omitted.
   */
  core.String alignedBases;

  /**
   * Represents the quality of each base in this read. Each character represents
   * one base. To get the quality, take the ASCII value of the character and
   * subtract 33. (QUAL)
   */
  core.String baseQuality;

  /**
   * A condensed representation of how this read matches up to the reference.
   * (CIGAR)
   */
  core.String cigar;

  /**
   * Each bit of this number has a different meaning if enabled. See the full
   * BAM spec for more details. (FLAG)
   */
  core.int flags;

  /** The Google generated ID of the read, immutable. */
  core.String id;

  /**
   * A score up to 255 that represents how likely this read's aligned position
   * is to be correct. A higher value is better. (MAPQ)
   */
  core.int mappingQuality;

  /** The 1-based start position of the paired read. (PNEXT) */
  core.int matePosition;

  /**
   * The name of the sequence that the paired read is aligned to. This is
   * usually the same as referenceSequenceName. (RNEXT)
   */
  core.String mateReferenceSequenceName;

  /**
   * The name of the read. When imported from a BAM file, this is the query
   * template name. (QNAME)
   */
  core.String name;

  /** The list of bases that this read represents (such as "CATCGA"). (SEQ) */
  core.String originalBases;

  /**
   * The 1-based start position of the aligned read. If the first base starts at
   * the very beginning of the reference sequence, then the position would be
   * '1'. (POS)
   */
  core.int position;

  /** The ID of the readset this read belongs to. */
  core.String readsetId;

  /**
   * The name of the sequence that this read is aligned to. This would be, for
   * example, 'X' for the X Chromosome or '20' for Chromosome 20. (RNAME)
   */
  core.String referenceSequenceName;

  /** A map of additional read information. (TAG) */
  core.Map<core.String, core.List<core.String>> tags;

  /**
   * Length of the original piece of DNA that produced both this read and the
   * paired read. (TLEN)
   */
  core.int templateLength;


  Read();

  Read.fromJson(core.Map _json) {
    if (_json.containsKey("alignedBases")) {
      alignedBases = _json["alignedBases"];
    }
    if (_json.containsKey("baseQuality")) {
      baseQuality = _json["baseQuality"];
    }
    if (_json.containsKey("cigar")) {
      cigar = _json["cigar"];
    }
    if (_json.containsKey("flags")) {
      flags = _json["flags"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("mappingQuality")) {
      mappingQuality = _json["mappingQuality"];
    }
    if (_json.containsKey("matePosition")) {
      matePosition = _json["matePosition"];
    }
    if (_json.containsKey("mateReferenceSequenceName")) {
      mateReferenceSequenceName = _json["mateReferenceSequenceName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("originalBases")) {
      originalBases = _json["originalBases"];
    }
    if (_json.containsKey("position")) {
      position = _json["position"];
    }
    if (_json.containsKey("readsetId")) {
      readsetId = _json["readsetId"];
    }
    if (_json.containsKey("referenceSequenceName")) {
      referenceSequenceName = _json["referenceSequenceName"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("templateLength")) {
      templateLength = _json["templateLength"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alignedBases != null) {
      _json["alignedBases"] = alignedBases;
    }
    if (baseQuality != null) {
      _json["baseQuality"] = baseQuality;
    }
    if (cigar != null) {
      _json["cigar"] = cigar;
    }
    if (flags != null) {
      _json["flags"] = flags;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (mappingQuality != null) {
      _json["mappingQuality"] = mappingQuality;
    }
    if (matePosition != null) {
      _json["matePosition"] = matePosition;
    }
    if (mateReferenceSequenceName != null) {
      _json["mateReferenceSequenceName"] = mateReferenceSequenceName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (originalBases != null) {
      _json["originalBases"] = originalBases;
    }
    if (position != null) {
      _json["position"] = position;
    }
    if (readsetId != null) {
      _json["readsetId"] = readsetId;
    }
    if (referenceSequenceName != null) {
      _json["referenceSequenceName"] = referenceSequenceName;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (templateLength != null) {
      _json["templateLength"] = templateLength;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReadGroup {
  /** (DT) Date the run was produced (ISO8601 date or date/time). */
  core.String date;

  /** (DS) Description. */
  core.String description;

  /**
   * (FO) Flow order. The array of nucleotide bases that correspond to the
   * nucleotides used for each flow of each read.
   */
  core.String flowOrder;

  /** (ID) Read group identifier. */
  core.String id;

  /**
   * (KS) The array of nucleotide bases that correspond to the key sequence of
   * each read.
   */
  core.String keySequence;

  /** (LS) Library. */
  core.String library;

  /** (PU) Platform unit. */
  core.String platformUnit;

  /** (PI) Predicted median insert size. */
  core.int predictedInsertSize;

  /** (PG) Programs used for processing the read group. */
  core.String processingProgram;

  /** (SM) Sample. */
  core.String sample;

  /** (CN) Name of sequencing center producing the read. */
  core.String sequencingCenterName;

  /** (PL) Platform/technology used to produce the reads. */
  core.String sequencingTechnology;


  ReadGroup();

  ReadGroup.fromJson(core.Map _json) {
    if (_json.containsKey("date")) {
      date = _json["date"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("flowOrder")) {
      flowOrder = _json["flowOrder"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("keySequence")) {
      keySequence = _json["keySequence"];
    }
    if (_json.containsKey("library")) {
      library = _json["library"];
    }
    if (_json.containsKey("platformUnit")) {
      platformUnit = _json["platformUnit"];
    }
    if (_json.containsKey("predictedInsertSize")) {
      predictedInsertSize = _json["predictedInsertSize"];
    }
    if (_json.containsKey("processingProgram")) {
      processingProgram = _json["processingProgram"];
    }
    if (_json.containsKey("sample")) {
      sample = _json["sample"];
    }
    if (_json.containsKey("sequencingCenterName")) {
      sequencingCenterName = _json["sequencingCenterName"];
    }
    if (_json.containsKey("sequencingTechnology")) {
      sequencingTechnology = _json["sequencingTechnology"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (date != null) {
      _json["date"] = date;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (flowOrder != null) {
      _json["flowOrder"] = flowOrder;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (keySequence != null) {
      _json["keySequence"] = keySequence;
    }
    if (library != null) {
      _json["library"] = library;
    }
    if (platformUnit != null) {
      _json["platformUnit"] = platformUnit;
    }
    if (predictedInsertSize != null) {
      _json["predictedInsertSize"] = predictedInsertSize;
    }
    if (processingProgram != null) {
      _json["processingProgram"] = processingProgram;
    }
    if (sample != null) {
      _json["sample"] = sample;
    }
    if (sequencingCenterName != null) {
      _json["sequencingCenterName"] = sequencingCenterName;
    }
    if (sequencingTechnology != null) {
      _json["sequencingTechnology"] = sequencingTechnology;
    }
    return _json;
  }
}


/** A Readset is a collection of Reads. */
class Readset {
  /** The ID of the dataset this readset belongs to. */
  core.String datasetId;

  /**
   * File information from the original BAM import. See the BAM format
   * specification for additional information on each field.
   */
  core.List<HeaderSection> fileData;

  /** The Google generated ID of the readset, immutable. */
  core.String id;

  /** The readset name, typically this is the sample name. */
  core.String name;


  Readset();

  Readset.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("fileData")) {
      fileData = _json["fileData"].map((value) => new HeaderSection.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (fileData != null) {
      _json["fileData"] = fileData.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/**
 * ReferenceBound records an upper bound for the starting coordinate of variants
 * in a particular reference.
 */
class ReferenceBound {
  /** The reference the bound is associate with. */
  core.String referenceName;

  /**
   * An upper bound (inclusive) on the starting coordinate of any variant in the
   * reference sequence.
   */
  core.String upperBound;


  ReferenceBound();

  ReferenceBound.fromJson(core.Map _json) {
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("upperBound")) {
      upperBound = _json["upperBound"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (upperBound != null) {
      _json["upperBound"] = upperBound;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReferenceSequence {
  /** (AS) Genome assembly identifier. */
  core.String assemblyId;

  /** (LN) Reference sequence length. */
  core.int length;

  /**
   * (M5) MD5 checksum of the sequence in the uppercase, excluding spaces but
   * including pads as *.
   */
  core.String md5Checksum;

  /** (SN) Reference sequence name. */
  core.String name;

  /** (SP) Species. */
  core.String species;

  /** (UR) URI of the sequence. */
  core.String uri;


  ReferenceSequence();

  ReferenceSequence.fromJson(core.Map _json) {
    if (_json.containsKey("assemblyId")) {
      assemblyId = _json["assemblyId"];
    }
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("md5Checksum")) {
      md5Checksum = _json["md5Checksum"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("species")) {
      species = _json["species"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (assemblyId != null) {
      _json["assemblyId"] = assemblyId;
    }
    if (length != null) {
      _json["length"] = length;
    }
    if (md5Checksum != null) {
      _json["md5Checksum"] = md5Checksum;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (species != null) {
      _json["species"] = species;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}


/** The call set search request. */
class SearchCallSetsRequest {
  /**
   * Only return call sets for which a substring of the name matches this
   * string.
   */
  core.String name;

  /** The maximum number of call sets to return. */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * Restrict the query to call sets within the given variant sets. At least one
   * ID must be provided.
   */
  core.List<core.String> variantSetIds;


  SearchCallSetsRequest();

  SearchCallSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("variantSetIds")) {
      variantSetIds = _json["variantSetIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (variantSetIds != null) {
      _json["variantSetIds"] = variantSetIds;
    }
    return _json;
  }
}


/** The call set search response. */
class SearchCallSetsResponse {
  /** The list of matching call sets. */
  core.List<CallSet> callSets;

  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;


  SearchCallSetsResponse();

  SearchCallSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("callSets")) {
      callSets = _json["callSets"].map((value) => new CallSet.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (callSets != null) {
      _json["callSets"] = callSets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** The jobs search request. */
class SearchJobsRequest {
  /**
   * If specified, only jobs created on or after this date, given in
   * milliseconds since Unix epoch, will be returned.
   */
  core.String createdAfter;

  /**
   * If specified, only jobs created prior to this date, given in milliseconds
   * since Unix epoch, will be returned.
   */
  core.String createdBefore;

  /**
   * Specifies the number of results to return in a single page. Defaults to
   * 128. The maximum value is 256.
   */
  core.String maxResults;

  /**
   * The continuation token which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of the
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /** Required. Only return jobs which belong to this Google Developers */
  core.String projectId;

  /** Only return jobs which have a matching status. */
  core.List<core.String> status;


  SearchJobsRequest();

  SearchJobsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("createdAfter")) {
      createdAfter = _json["createdAfter"];
    }
    if (_json.containsKey("createdBefore")) {
      createdBefore = _json["createdBefore"];
    }
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createdAfter != null) {
      _json["createdAfter"] = createdAfter;
    }
    if (createdBefore != null) {
      _json["createdBefore"] = createdBefore;
    }
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** The job search response. */
class SearchJobsResponse {
  /** The list of jobs results, ordered newest to oldest. */
  core.List<Job> jobs;

  /**
   * The continuation token which is used to page through large result sets.
   * Provide this value is a subsequent request to return the next page of
   * results. This field will be empty if there are no more results.
   */
  core.String nextPageToken;


  SearchJobsResponse();

  SearchJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = _json["jobs"].map((value) => new Job.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** The read search request. */
class SearchReadsRequest {
  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 256. The maximum value is 2048.
   */
  core.String maxResults;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * The readsets within which to search for reads. At least one readset ID must
   * be provided. All specified readsets must be aligned against a common set of
   * reference sequences; this defines the genomic coordinates for the query.
   */
  core.List<core.String> readsetIds;

  /**
   * The end position (1-based, inclusive) of the target range. If specified,
   * sequenceName must also be specified. Defaults to the end of the target
   * reference sequence, if any.
   */
  core.String sequenceEnd;

  /**
   * Restricts the results to a particular reference sequence such as 1, chr1,
   * or X. The set of valid references sequences depends on the readsets
   * specified. If set to *, only unmapped Reads are returned.
   */
  core.String sequenceName;

  /**
   * The start position (1-based, inclusive) of the target range. If specified,
   * sequenceName must also be specified. Defaults to the start of the target
   * reference sequence, if any.
   */
  core.String sequenceStart;


  SearchReadsRequest();

  SearchReadsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("readsetIds")) {
      readsetIds = _json["readsetIds"];
    }
    if (_json.containsKey("sequenceEnd")) {
      sequenceEnd = _json["sequenceEnd"];
    }
    if (_json.containsKey("sequenceName")) {
      sequenceName = _json["sequenceName"];
    }
    if (_json.containsKey("sequenceStart")) {
      sequenceStart = _json["sequenceStart"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (readsetIds != null) {
      _json["readsetIds"] = readsetIds;
    }
    if (sequenceEnd != null) {
      _json["sequenceEnd"] = sequenceEnd;
    }
    if (sequenceName != null) {
      _json["sequenceName"] = sequenceName;
    }
    if (sequenceStart != null) {
      _json["sequenceStart"] = sequenceStart;
    }
    return _json;
  }
}


/** The read search response. */
class SearchReadsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;

  /**
   * The list of matching Reads. The resulting Reads are sorted by position; the
   * smallest positions are returned first. Unmapped reads, which have no
   * position, are returned last and are further sorted alphabetically by name.
   */
  core.List<Read> reads;


  SearchReadsResponse();

  SearchReadsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("reads")) {
      reads = _json["reads"].map((value) => new Read.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (reads != null) {
      _json["reads"] = reads.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The readset search request. */
class SearchReadsetsRequest {
  /**
   * Restricts this query to readsets within the given datasets. At least one ID
   * must be provided.
   */
  core.List<core.String> datasetIds;

  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 128. The maximum value is 1024.
   */
  core.String maxResults;

  /**
   * Only return readsets for which a substring of the name matches this string.
   */
  core.String name;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;


  SearchReadsetsRequest();

  SearchReadsetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetIds")) {
      datasetIds = _json["datasetIds"];
    }
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetIds != null) {
      _json["datasetIds"] = datasetIds;
    }
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}


/** The readset search response. */
class SearchReadsetsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;

  /** The list of matching Readsets. */
  core.List<Readset> readsets;


  SearchReadsetsResponse();

  SearchReadsetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readsets")) {
      readsets = _json["readsets"].map((value) => new Readset.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readsets != null) {
      _json["readsets"] = readsets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The search variant sets request. */
class SearchVariantSetsRequest {
  /**
   * Exactly one dataset ID must be provided here. Only variant sets which
   * belong to this dataset will be returned.
   */
  core.List<core.String> datasetIds;

  /** The maximum number of variant sets to return in a request. */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;


  SearchVariantSetsRequest();

  SearchVariantSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetIds")) {
      datasetIds = _json["datasetIds"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetIds != null) {
      _json["datasetIds"] = datasetIds;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}


/** The search variant sets response. */
class SearchVariantSetsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;

  /** The variant sets belonging to the requested dataset. */
  core.List<VariantSet> variantSets;


  SearchVariantSetsResponse();

  SearchVariantSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("variantSets")) {
      variantSets = _json["variantSets"].map((value) => new VariantSet.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (variantSets != null) {
      _json["variantSets"] = variantSets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The variant search request. */
class SearchVariantsRequest {
  /**
   * Only return variant calls which belong to call sets with these ids. Leaving
   * this blank returns all variant calls.
   */
  core.List<core.String> callSetIds;

  /**
   * Required. The end of the window (0-based, exclusive) for which overlapping
   * variants should be returned.
   */
  core.String end;

  /**
   * The maximum number of calls to return. However, at least one variant will
   * always be returned, even if it has more calls than this limit.
   */
  core.int maxCalls;

  /** The maximum number of variants to return. */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /** Required. Only return variants in this reference sequence. */
  core.String referenceName;

  /**
   * Required. The beginning of the window (0-based, inclusive) for which
   * overlapping variants should be returned.
   */
  core.String start;

  /** Only return variants which have exactly this name. */
  core.String variantName;

  /**
   * Exactly one variant set ID must be provided. Only variants from this
   * variant set will be returned.
   */
  core.List<core.String> variantSetIds;


  SearchVariantsRequest();

  SearchVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("callSetIds")) {
      callSetIds = _json["callSetIds"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("maxCalls")) {
      maxCalls = _json["maxCalls"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
    if (_json.containsKey("variantName")) {
      variantName = _json["variantName"];
    }
    if (_json.containsKey("variantSetIds")) {
      variantSetIds = _json["variantSetIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (callSetIds != null) {
      _json["callSetIds"] = callSetIds;
    }
    if (end != null) {
      _json["end"] = end;
    }
    if (maxCalls != null) {
      _json["maxCalls"] = maxCalls;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (start != null) {
      _json["start"] = start;
    }
    if (variantName != null) {
      _json["variantName"] = variantName;
    }
    if (variantSetIds != null) {
      _json["variantSetIds"] = variantSetIds;
    }
    return _json;
  }
}


/** The variant search response. */
class SearchVariantsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;

  /** The list of matching Variants. */
  core.List<Variant> variants;


  SearchVariantsResponse();

  SearchVariantsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("variants")) {
      variants = _json["variants"].map((value) => new Variant.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (variants != null) {
      _json["variants"] = variants.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A Variant represents a change in DNA sequence relative to some reference. For
 * example, a Variant could represent a SNP or an insertion. Variants belong to
 * a variant set.
 */
class Variant {
  /** The bases that appear instead of the reference bases. */
  core.List<core.String> alternateBases;

  /**
   * The variant calls for this particular variant. Each one represents the
   * determination of genotype with respect to this variant.
   */
  core.List<Call> calls;

  /** The date this variant was created, in milliseconds from the epoch. */
  core.String created;

  /**
   * The end position (0-based) of this variant. This corresponds to the first
   * base after the last base in the reference allele. So, the length of the
   * reference allele is (end - start). This is useful for variants that don't
   * explicitly give alternate bases, for example large deletions.
   */
  core.String end;

  /** The Google generated ID of the variant, immutable. */
  core.String id;

  /** A map of additional variant information. */
  core.Map<core.String, core.List<core.String>> info;

  /** Names for the variant, for example a RefSNP ID. */
  core.List<core.String> names;

  /**
   * The reference bases for this variant. They start at the given position.
   */
  core.String referenceBases;

  /** The reference on which this variant occurs. (such as chr20 or X) */
  core.String referenceName;

  /**
   * The position at which this variant occurs (0-based). This corresponds to
   * the first base of the string of reference bases.
   */
  core.String start;

  /** The ID of the variant set this variant belongs to. */
  core.String variantSetId;


  Variant();

  Variant.fromJson(core.Map _json) {
    if (_json.containsKey("alternateBases")) {
      alternateBases = _json["alternateBases"];
    }
    if (_json.containsKey("calls")) {
      calls = _json["calls"].map((value) => new Call.fromJson(value)).toList();
    }
    if (_json.containsKey("created")) {
      created = _json["created"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("info")) {
      info = _json["info"];
    }
    if (_json.containsKey("names")) {
      names = _json["names"];
    }
    if (_json.containsKey("referenceBases")) {
      referenceBases = _json["referenceBases"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
    if (_json.containsKey("variantSetId")) {
      variantSetId = _json["variantSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alternateBases != null) {
      _json["alternateBases"] = alternateBases;
    }
    if (calls != null) {
      _json["calls"] = calls.map((value) => (value).toJson()).toList();
    }
    if (created != null) {
      _json["created"] = created;
    }
    if (end != null) {
      _json["end"] = end;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (info != null) {
      _json["info"] = info;
    }
    if (names != null) {
      _json["names"] = names;
    }
    if (referenceBases != null) {
      _json["referenceBases"] = referenceBases;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (start != null) {
      _json["start"] = start;
    }
    if (variantSetId != null) {
      _json["variantSetId"] = variantSetId;
    }
    return _json;
  }
}


/**
 * A VariantSet represents a collection of Variants and their summary
 * statistics.
 */
class VariantSet {
  /** The dataset to which this variant set belongs. Immutable. */
  core.String datasetId;

  /** The Google-generated ID of the variant set. Immutable. */
  core.String id;

  /** The metadata associated with this variant set. */
  core.List<Metadata> metadata;

  /**
   * A list of all references used by the variants in a variant set with
   * associated coordinate upper bounds for each one.
   */
  core.List<ReferenceBound> referenceBounds;


  VariantSet();

  VariantSet.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"].map((value) => new Metadata.fromJson(value)).toList();
    }
    if (_json.containsKey("referenceBounds")) {
      referenceBounds = _json["referenceBounds"].map((value) => new ReferenceBound.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (metadata != null) {
      _json["metadata"] = metadata.map((value) => (value).toJson()).toList();
    }
    if (referenceBounds != null) {
      _json["referenceBounds"] = referenceBounds.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


