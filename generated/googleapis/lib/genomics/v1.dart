// This is a generated file (see the discoveryapis_generator project).

library googleapis.genomics.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client genomics/v1';

/**
 * An API to store, process, explore, and share DNA sequence reads,
 * reference-based alignments, and variant calls.
 */
class GenomicsApi {
  /** View and manage your data in Google BigQuery */
  static const BigqueryScope = "https://www.googleapis.com/auth/bigquery";

  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Manage your data in Google Cloud Storage */
  static const DevstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";

  /** View and manage Genomics data */
  static const GenomicsScope = "https://www.googleapis.com/auth/genomics";

  /** View Genomics data */
  static const GenomicsReadonlyScope = "https://www.googleapis.com/auth/genomics.readonly";


  final commons.ApiRequester _requester;

  CallsetsResourceApi get callsets => new CallsetsResourceApi(_requester);
  DatasetsResourceApi get datasets => new DatasetsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ReadgroupsetsResourceApi get readgroupsets => new ReadgroupsetsResourceApi(_requester);
  ReadsResourceApi get reads => new ReadsResourceApi(_requester);
  ReferencesResourceApi get references => new ReferencesResourceApi(_requester);
  ReferencesetsResourceApi get referencesets => new ReferencesetsResourceApi(_requester);
  VariantsResourceApi get variants => new VariantsResourceApi(_requester);
  VariantsetsResourceApi get variantsets => new VariantsetsResourceApi(_requester);

  GenomicsApi(http.Client client, {core.String rootUrl: "https://genomics.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class CallsetsResourceApi {
  final commons.ApiRequester _requester;

  CallsetsResourceApi(commons.ApiRequester client) : 
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CallSet> create(CallSet request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/callsets';

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
   * [callSetId] - The ID of the call set to be deleted.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }

    _url = 'v1/callsets/' + commons.Escaper.ecapeVariable('$callSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a call set by ID.
   *
   * Request parameters:
   *
   * [callSetId] - The ID of the call set.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CallSet> get(core.String callSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }

    _url = 'v1/callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * [callSetId] - The ID of the call set to be updated.
   *
   * [updateMask] - An optional mask specifying which fields to update. At this
   * time, the only mutable field is [name][google.genomics.v1.CallSet.name].
   * The only acceptable value is "name". If unspecified, all mutable fields
   * will be updated.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CallSet> patch(CallSet request, core.String callSetId, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * Gets a list of call sets matching the criteria. Implements
   * [GlobalAllianceApi.searchCallSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/variantmethods.avdl#L178).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchCallSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchCallSetsResponse> search(SearchCallSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/callsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchCallSetsResponse.fromJson(data));
  }

}


class DatasetsResourceApi {
  final commons.ApiRequester _requester;

  DatasetsResourceApi(commons.ApiRequester client) : 
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Dataset> create(Dataset request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/datasets';

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
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = 'v1/datasets/' + commons.Escaper.ecapeVariable('$datasetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Dataset> get(core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = 'v1/datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being specified.
   * Format is `datasets/`.
   * Value must have pattern "^datasets/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(GetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists datasets within a project.
   *
   * Request parameters:
   *
   * [projectId] - Required. The project to list datasets for.
   *
   * [pageSize] - The maximum number of results returned by this request. If
   * unspecified, defaults to 50. The maximum value is 1024.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of `nextPageToken` from the previous response.
   *
   * Completes with a [ListDatasetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListDatasetsResponse> list({core.String projectId, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/datasets';

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
   * [updateMask] - An optional mask specifying which fields to update. At this
   * time, the only mutable field is [name][google.genomics.v1.Dataset.name].
   * The only acceptable value is "name". If unspecified, all mutable fields
   * will be updated.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Dataset> patch(Dataset request, core.String datasetId, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being specified.
   * Format is `datasets/`.
   * Value must have pattern "^datasets/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being specified.
   * Format is `datasets/`.
   * Value must have pattern "^datasets/[^/]*$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /**
   * Undeletes a dataset by restoring a dataset which was deleted via this API.
   * This operation is only possible for a week after the deletion occurred.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - The ID of the dataset to be undeleted.
   *
   * Completes with a [Dataset].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Dataset> undelete(UndeleteDatasetRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = 'v1/datasets/' + commons.Escaper.ecapeVariable('$datasetId') + ':undelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

}


class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Starts asynchronous cancellation on a long-running operation. The server
   * makes a best effort to cancel the operation, but success is not guaranteed.
   * Clients may use
   * [Operations.GetOperation][google.longrunning.Operations.GetOperation] or
   * [Operations.ListOperations][google.longrunning.Operations.ListOperations]
   * to check whether the cancellation succeeded or the operation completed
   * despite cancellation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be cancelled.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * This method is not implemented. To cancel an operation, please use
   * [Operations.CancelOperation][google.longrunning.Operations.CancelOperation].
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be deleted.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the latest state of a long-running operation. Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists operations that match the specified filter in the request.
   *
   * Request parameters:
   *
   * [name] - The name of the operation collection.
   * Value must have pattern "^operations$".
   *
   * [filter] - A string for filtering
   * [Operations][google.longrunning.Operation]. The following filter fields are
   * supported: * projectId: Required. Corresponds to
   * [OperationMetadata.projectId][google.genomics.v1.OperationMetadata.project_id].
   * * createTime: The time this job was created, in seconds from the
   * [epoch](http://en.wikipedia.org/wiki/Unix_time). Can use `>=` and/or `=
   * 1432140000` * `projectId = my-project AND createTime >= 1432140000 AND
   * createTime <= 1432150000 AND status = RUNNING`
   *
   * [pageSize] - The maximum number of results to return. If unspecified,
   * defaults to 256. The maximum value is 2048.
   *
   * [pageToken] - The standard list page token.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String name, {core.String filter, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

}


class ReadgroupsetsResourceApi {
  final commons.ApiRequester _requester;

  ReadgroupsetsCoveragebucketsResourceApi get coveragebuckets => new ReadgroupsetsCoveragebucketsResourceApi(_requester);

  ReadgroupsetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a read group set.
   *
   * Request parameters:
   *
   * [readGroupSetId] - The ID of the read group set to be deleted. The caller
   * must have WRITE permissions to the dataset associated with this read group
   * set.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String readGroupSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }

    _url = 'v1/readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Exports a read group set to a BAM file in Google Cloud Storage. Note that
   * currently there may be some differences between exported BAM files and the
   * original BAM file at the time of import. See
   * [ImportReadGroupSets](google.genomics.v1.ReadServiceV1.ImportReadGroupSets)
   * for caveats.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [readGroupSetId] - Required. The ID of the read group set to export.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> export(ExportReadGroupSetRequest request, core.String readGroupSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }

    _url = 'v1/readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId') + ':export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Gets a read group set by ID.
   *
   * Request parameters:
   *
   * [readGroupSetId] - The ID of the read group set.
   *
   * Completes with a [ReadGroupSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ReadGroupSet> get(core.String readGroupSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }

    _url = 'v1/readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReadGroupSet.fromJson(data));
  }

  /**
   * Creates read group sets by asynchronously importing the provided
   * information. The caller must have WRITE permissions to the dataset. ##
   * Notes on [BAM](https://samtools.github.io/hts-specs/SAMv1.pdf) import -
   * Tags will be converted to strings - tag types are not preserved - Comments
   * (`@CO`) in the input file header will not be preserved - Original header
   * order of references (`@SQ`) will not be preserved - Any reverse stranded
   * unmapped reads will be reverse complemented, and their qualities (and "BQ"
   * tag, if any) will be reversed - Unmapped reads will be stripped of
   * positional information (reference name and position)
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> import(ImportReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/readgroupsets:import';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates a read group set. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [readGroupSetId] - The ID of the read group set to be updated. The caller
   * must have WRITE permissions to the dataset associated with this read group
   * set.
   *
   * [updateMask] - An optional mask specifying which fields to update. At this
   * time, mutable fields are
   * [referenceSetId][google.genomics.v1.ReadGroupSet.reference_set_id] and
   * [name][google.genomics.v1.ReadGroupSet.name]. Acceptable values are
   * "referenceSetId" and "name". If unspecified, all mutable fields will be
   * updated.
   *
   * Completes with a [ReadGroupSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ReadGroupSet> patch(ReadGroupSet request, core.String readGroupSetId, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReadGroupSet.fromJson(data));
  }

  /**
   * Searches for read group sets matching the criteria. Implements
   * [GlobalAllianceApi.searchReadGroupSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/readmethods.avdl#L135).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReadGroupSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchReadGroupSetsResponse> search(SearchReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/readgroupsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReadGroupSetsResponse.fromJson(data));
  }

}


class ReadgroupsetsCoveragebucketsResourceApi {
  final commons.ApiRequester _requester;

  ReadgroupsetsCoveragebucketsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists fixed width coverage buckets for a read group set, each of which
   * correspond to a range of a reference sequence. Each bucket summarizes
   * coverage information across its corresponding genomic range. Coverage is
   * defined as the number of reads which are aligned to a given base in the
   * reference sequence. Coverage buckets are available at several precomputed
   * bucket widths, enabling retrieval of various coverage 'zoom levels'. The
   * caller must have READ permissions for the target read group set.
   *
   * Request parameters:
   *
   * [readGroupSetId] - Required. The ID of the read group set over which
   * coverage is requested.
   *
   * [referenceName] - The name of the reference to query, within the reference
   * set associated with this query. Optional.
   *
   * [start] - The start position of the range on the reference, 0-based
   * inclusive. If specified, `referenceName` must also be specified. Defaults
   * to 0.
   *
   * [end] - The end position of the range on the reference, 0-based exclusive.
   * If specified, `referenceName` must also be specified. If unset or 0,
   * defaults to the length of the reference.
   *
   * [targetBucketWidth] - The desired width of each reported coverage bucket in
   * base pairs. This will be rounded down to the nearest precomputed bucket
   * width; the value of which is returned as `bucketWidth` in the response.
   * Defaults to infinity (each bucket spans an entire reference sequence) or
   * the length of the target range, if specified. The smallest precomputed
   * `bucketWidth` is currently 2048 base pairs; this is subject to change.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of `nextPageToken` from the previous response.
   *
   * [pageSize] - The maximum number of results to return in a single page. If
   * unspecified, defaults to 1024. The maximum value is 2048.
   *
   * Completes with a [ListCoverageBucketsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCoverageBucketsResponse> list(core.String readGroupSetId, {core.String referenceName, core.String start, core.String end, core.String targetBucketWidth, core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }
    if (referenceName != null) {
      _queryParams["referenceName"] = [referenceName];
    }
    if (start != null) {
      _queryParams["start"] = [start];
    }
    if (end != null) {
      _queryParams["end"] = [end];
    }
    if (targetBucketWidth != null) {
      _queryParams["targetBucketWidth"] = [targetBucketWidth];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v1/readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId') + '/coveragebuckets';

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


class ReadsResourceApi {
  final commons.ApiRequester _requester;

  ReadsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a list of reads for one or more read group sets. Reads search operates
   * over a genomic coordinate space of reference sequence & position defined
   * over the reference sequences to which the requested read group sets are
   * aligned. If a target positional range is specified, search returns all
   * reads whose alignment to the reference genome overlap the range. A query
   * which specifies only read group set IDs yields all reads in those read
   * group sets, including unmapped reads. All reads returned (including reads
   * on subsequent pages) are ordered by genomic coordinate (reference sequence
   * & position). Reads with equivalent genomic coordinates are returned in a
   * deterministic order. Implements
   * [GlobalAllianceApi.searchReads](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/readmethods.avdl#L85).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReadsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchReadsResponse> search(SearchReadsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/reads/search';

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


class ReferencesResourceApi {
  final commons.ApiRequester _requester;

  ReferencesBasesResourceApi get bases => new ReferencesBasesResourceApi(_requester);

  ReferencesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a reference. Implements
   * [GlobalAllianceApi.getReference](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L158).
   *
   * Request parameters:
   *
   * [referenceId] - The ID of the reference.
   *
   * Completes with a [Reference].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Reference> get(core.String referenceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (referenceId == null) {
      throw new core.ArgumentError("Parameter referenceId is required.");
    }

    _url = 'v1/references/' + commons.Escaper.ecapeVariable('$referenceId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Reference.fromJson(data));
  }

  /**
   * Searches for references which match the given criteria. Implements
   * [GlobalAllianceApi.searchReferences](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L146).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReferencesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchReferencesResponse> search(SearchReferencesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/references/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReferencesResponse.fromJson(data));
  }

}


class ReferencesBasesResourceApi {
  final commons.ApiRequester _requester;

  ReferencesBasesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the bases in a reference, optionally restricted to a range.
   * Implements
   * [GlobalAllianceApi.getReferenceBases](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L221).
   *
   * Request parameters:
   *
   * [referenceId] - The ID of the reference.
   *
   * [start] - The start position (0-based) of this query. Defaults to 0.
   *
   * [end] - The end position (0-based, exclusive) of this query. Defaults to
   * the length of this reference.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of `nextPageToken` from the previous response.
   *
   * [pageSize] - Specifies the maximum number of bases to return in a single
   * page.
   *
   * Completes with a [ListBasesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListBasesResponse> list(core.String referenceId, {core.String start, core.String end, core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (referenceId == null) {
      throw new core.ArgumentError("Parameter referenceId is required.");
    }
    if (start != null) {
      _queryParams["start"] = [start];
    }
    if (end != null) {
      _queryParams["end"] = [end];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v1/references/' + commons.Escaper.ecapeVariable('$referenceId') + '/bases';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListBasesResponse.fromJson(data));
  }

}


class ReferencesetsResourceApi {
  final commons.ApiRequester _requester;

  ReferencesetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a reference set. Implements
   * [GlobalAllianceApi.getReferenceSet](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L83).
   *
   * Request parameters:
   *
   * [referenceSetId] - The ID of the reference set.
   *
   * Completes with a [ReferenceSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ReferenceSet> get(core.String referenceSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (referenceSetId == null) {
      throw new core.ArgumentError("Parameter referenceSetId is required.");
    }

    _url = 'v1/referencesets/' + commons.Escaper.ecapeVariable('$referenceSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReferenceSet.fromJson(data));
  }

  /**
   * Searches for reference sets which match the given criteria. Implements
   * [GlobalAllianceApi.searchReferenceSets](http://ga4gh.org/documentation/api/v0.5.1/ga4gh_api.html#/schema/org.ga4gh.searchReferenceSets).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchReferenceSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchReferenceSetsResponse> search(SearchReferenceSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/referencesets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReferenceSetsResponse.fromJson(data));
  }

}


class VariantsResourceApi {
  final commons.ApiRequester _requester;

  VariantsResourceApi(commons.ApiRequester client) : 
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variant> create(Variant request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/variants';

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
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String variantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }

    _url = 'v1/variants/' + commons.Escaper.ecapeVariable('$variantId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variant> get(core.String variantId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }

    _url = 'v1/variants/' + commons.Escaper.ecapeVariable('$variantId');

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
   * The variants for import will be merged with any existing variant that
   * matches its reference sequence, start, end, reference bases, and
   * alternative bases. If no such variant exists, a new one will be created.
   * When variants are merged, the call information from the new variant is
   * added to the existing variant, and other fields (such as key/value pairs)
   * are discarded. In particular, this means for merged VCF variants that have
   * conflicting INFO fields, some data will be arbitrarily discarded. As a
   * special case, for single-sample VCF files, QUAL and FILTER fields will be
   * moved to the call level; these are sometimes interpreted in a call-specific
   * context. Imported VCF headers are appended to the metadata already in a
   * variant set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> import(ImportVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/variants:import';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates a variant. This method supports patch semantics. Returns the
   * modified variant without its calls.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantId] - The ID of the variant to be updated.
   *
   * [updateMask] - An optional mask specifying which fields to update. At this
   * time, mutable fields are [names][google.genomics.v1.Variant.names] and
   * [info][google.genomics.v1.Variant.info]. Acceptable values are "names" and
   * "info". If unspecified, all mutable fields will be updated.
   *
   * Completes with a [Variant].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Variant> patch(Variant request, core.String variantId, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/variants/' + commons.Escaper.ecapeVariable('$variantId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variant.fromJson(data));
  }

  /**
   * Gets a list of variants matching the criteria. Implements
   * [GlobalAllianceApi.searchVariants](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/variantmethods.avdl#L126).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchVariantsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchVariantsResponse> search(SearchVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/variants/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchVariantsResponse.fromJson(data));
  }

}


class VariantsetsResourceApi {
  final commons.ApiRequester _requester;

  VariantsetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new variant set. The provided variant set must have a valid
   * `datasetId` set - all other fields are optional. Note that the `id` field
   * will be ignored, as this is assigned by the server.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [VariantSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VariantSet> create(VariantSet request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/variantsets';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VariantSet.fromJson(data));
  }

  /**
   * Deletes the contents of a variant set. The variant set object is not
   * deleted.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant set to be deleted.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String variantSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }

    _url = 'v1/variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Exports variant set data to an external destination.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - Required. The ID of the variant set that contains variant
   * data which should be exported. The caller must have READ access to this
   * variant set.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> export(ExportVariantSetRequest request, core.String variantSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }

    _url = 'v1/variantsets/' + commons.Escaper.ecapeVariable('$variantSetId') + ':export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VariantSet> get(core.String variantSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }

    _url = 'v1/variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

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
   * Updates a variant set. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant to be updated (must already exist).
   *
   * [updateMask] - An optional mask specifying which fields to update. At this
   * time, the only mutable field is
   * [metadata][google.genomics.v1.VariantSet.metadata]. The only acceptable
   * value is "metadata". If unspecified, all mutable fields will be updated.
   *
   * Completes with a [VariantSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VariantSet> patch(VariantSet request, core.String variantSetId, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VariantSet.fromJson(data));
  }

  /**
   * Returns a list of all variant sets matching search criteria. Implements
   * [GlobalAllianceApi.searchVariantSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/variantmethods.avdl#L49).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchVariantSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchVariantSetsResponse> search(SearchVariantSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/variantsets/search';

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



/** Associates `members` with a `role`. */
class Binding {
  /**
   * Specifies the identities requesting access for a Cloud Platform resource.
   * `members` can have the following formats: * `allUsers`: A special
   * identifier that represents anyone who is on the internet; with or without a
   * Google account. * `allAuthenticatedUsers`: A special identifier that
   * represents anyone who is authenticated with a Google account or a service
   * account. * `user:{emailid}`: An email address that represents a specific
   * Google account. For example, `alice@gmail.com` or `joe@example.com`. *
   * `serviceAccount:{emailid}`: An email address that represents a service
   * account. For example, `my-other-app@appspot.gserviceaccount.com`. *
   * `group:{emailid}`: An email address that represents a Google group. For
   * example, `admins@example.com`. * `domain:{domain}`: A Google Apps domain
   * name that represents all the users of that domain. For example,
   * `google.com` or `example.com`.
   */
  core.List<core.String> members;
  /**
   * Role that is assigned to `members`. For example, `roles/viewer`,
   * `roles/editor`, or `roles/owner`. Required
   */
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/**
 * A call set is a collection of variant calls, typically for one sample. It
 * belongs to a variant set.
 */
class CallSet {
  /** The date this call set was created in milliseconds from the epoch. */
  core.String created;
  /** The server-generated call set ID, unique across all call sets. */
  core.String id;
  /**
   * A map of additional call set information. This must be of the form map
   * (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /** The call set name. */
  core.String name;
  /** The sample ID this call set corresponds to. */
  core.String sampleId;
  /**
   * The IDs of the variant sets this call set belongs to. This field must have
   * exactly length one, as a call set belongs to a single variant set. This
   * field is repeated for compatibility with the [GA4GH 0.5.1
   * API](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/variants.avdl#L76).
   */
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
 * The request message for
 * [Operations.CancelOperation][google.longrunning.Operations.CancelOperation].
 */
class CancelOperationRequest {

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** A single CIGAR operation. */
class CigarUnit {
  /**
   *
   * Possible string values are:
   * - "OPERATION_UNSPECIFIED" : A OPERATION_UNSPECIFIED.
   * - "ALIGNMENT_MATCH" : A ALIGNMENT_MATCH.
   * - "INSERT" : A INSERT.
   * - "DELETE" : A DELETE.
   * - "SKIP" : A SKIP.
   * - "CLIP_SOFT" : A CLIP_SOFT.
   * - "CLIP_HARD" : A CLIP_HARD.
   * - "PAD" : A PAD.
   * - "SEQUENCE_MATCH" : A SEQUENCE_MATCH.
   * - "SEQUENCE_MISMATCH" : A SEQUENCE_MISMATCH.
   */
  core.String operation;
  /** The number of genomic bases that the operation runs for. Required. */
  core.String operationLength;
  /**
   * `referenceSequence` is only used at mismatches (`SEQUENCE_MISMATCH`) and
   * deletions (`DELETE`). Filling this field replaces SAM's MD tag. If the
   * relevant information is not available, this field is unset.
   */
  core.String referenceSequence;

  CigarUnit();

  CigarUnit.fromJson(core.Map _json) {
    if (_json.containsKey("operation")) {
      operation = _json["operation"];
    }
    if (_json.containsKey("operationLength")) {
      operationLength = _json["operationLength"];
    }
    if (_json.containsKey("referenceSequence")) {
      referenceSequence = _json["referenceSequence"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operation != null) {
      _json["operation"] = operation;
    }
    if (operationLength != null) {
      _json["operationLength"] = operationLength;
    }
    if (referenceSequence != null) {
      _json["referenceSequence"] = referenceSequence;
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
  Range range;

  CoverageBucket();

  CoverageBucket.fromJson(core.Map _json) {
    if (_json.containsKey("meanCoverage")) {
      meanCoverage = _json["meanCoverage"];
    }
    if (_json.containsKey("range")) {
      range = new Range.fromJson(_json["range"]);
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
  /** The time this dataset was created, in seconds from the epoch. */
  core.String createTime;
  /** The server-generated dataset ID, unique across all datasets. */
  core.String id;
  /** The dataset name. */
  core.String name;
  /** The Google Developers Console project ID that this dataset belongs to. */
  core.String projectId;

  Dataset();

  Dataset.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
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
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (id != null) {
      _json["id"] = id;
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

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

class Experiment {
  /**
   * The instrument model used as part of this experiment. This maps to
   * sequencing technology in BAM.
   */
  core.String instrumentModel;
  /**
   * The library used as part of this experiment. Note: This is not an actual ID
   * within this repository, but rather an identifier for a library which may be
   * meaningful to some external system.
   */
  core.String libraryId;
  /**
   * The platform unit used as part of this experiment e.g.
   * flowcell-barcode.lane for Illumina or slide for SOLiD. Corresponds to the
   * @RG PU field in the SAM spec.
   */
  core.String platformUnit;
  /** The sequencing center used as part of this experiment. */
  core.String sequencingCenter;

  Experiment();

  Experiment.fromJson(core.Map _json) {
    if (_json.containsKey("instrumentModel")) {
      instrumentModel = _json["instrumentModel"];
    }
    if (_json.containsKey("libraryId")) {
      libraryId = _json["libraryId"];
    }
    if (_json.containsKey("platformUnit")) {
      platformUnit = _json["platformUnit"];
    }
    if (_json.containsKey("sequencingCenter")) {
      sequencingCenter = _json["sequencingCenter"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instrumentModel != null) {
      _json["instrumentModel"] = instrumentModel;
    }
    if (libraryId != null) {
      _json["libraryId"] = libraryId;
    }
    if (platformUnit != null) {
      _json["platformUnit"] = platformUnit;
    }
    if (sequencingCenter != null) {
      _json["sequencingCenter"] = sequencingCenter;
    }
    return _json;
  }
}

/** The read group set export request. */
class ExportReadGroupSetRequest {
  /**
   * Required. A Google Cloud Storage URI for the exported BAM file. The
   * currently authenticated user must have write access to the new file. An
   * error will be returned if the URI already contains data.
   */
  core.String exportUri;
  /**
   * Required. The Google Developers Console project ID that owns this export.
   */
  core.String projectId;
  /**
   * The reference names to export. If this is not specified, all reference
   * sequences, including unmapped reads, are exported. Use `*` to export only
   * unmapped reads.
   */
  core.List<core.String> referenceNames;

  ExportReadGroupSetRequest();

  ExportReadGroupSetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("exportUri")) {
      exportUri = _json["exportUri"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
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
    if (referenceNames != null) {
      _json["referenceNames"] = referenceNames;
    }
    return _json;
  }
}

/** The variant data export request. */
class ExportVariantSetRequest {
  /**
   * Required. The BigQuery dataset to export data to. This dataset must already
   * exist. Note that this is distinct from the Genomics concept of "dataset".
   */
  core.String bigqueryDataset;
  /**
   * Required. The BigQuery table to export data to. If the table doesn't exist,
   * it will be created. If it already exists, it will be overwritten.
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
   * - "FORMAT_UNSPECIFIED" : A FORMAT_UNSPECIFIED.
   * - "FORMAT_BIGQUERY" : A FORMAT_BIGQUERY.
   */
  core.String format;
  /**
   * Required. The Google Cloud project ID that owns the destination BigQuery
   * dataset. The caller must have WRITE access to this project. This project
   * will also own the resulting export job.
   */
  core.String projectId;

  ExportVariantSetRequest();

  ExportVariantSetRequest.fromJson(core.Map _json) {
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
    return _json;
  }
}

/** Request message for `GetIamPolicy` method. */
class GetIamPolicyRequest {

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** The read group set import request. */
class ImportReadGroupSetsRequest {
  /**
   * Required. The ID of the dataset these read group sets will belong to. The
   * caller must have WRITE permissions to this dataset.
   */
  core.String datasetId;
  /**
   * The partition strategy describes how read groups are partitioned into read
   * group sets.
   * Possible string values are:
   * - "PARTITION_STRATEGY_UNSPECIFIED" : A PARTITION_STRATEGY_UNSPECIFIED.
   * - "PER_FILE_PER_SAMPLE" : A PER_FILE_PER_SAMPLE.
   * - "MERGE_ALL" : A MERGE_ALL.
   */
  core.String partitionStrategy;
  /**
   * The reference set to which the imported read group sets are aligned to, if
   * any. The reference names of this reference set must be a superset of those
   * found in the imported file headers. If no reference set id is provided, a
   * best effort is made to associate with a matching reference set.
   */
  core.String referenceSetId;
  /**
   * A list of URIs pointing at [BAM
   * files](https://samtools.github.io/hts-specs/SAMv1.pdf) in Google Cloud
   * Storage.
   */
  core.List<core.String> sourceUris;

  ImportReadGroupSetsRequest();

  ImportReadGroupSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("partitionStrategy")) {
      partitionStrategy = _json["partitionStrategy"];
    }
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
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
    if (partitionStrategy != null) {
      _json["partitionStrategy"] = partitionStrategy;
    }
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    return _json;
  }
}

/** The read group set import response. */
class ImportReadGroupSetsResponse {
  /** IDs of the read group sets that were created. */
  core.List<core.String> readGroupSetIds;

  ImportReadGroupSetsResponse();

  ImportReadGroupSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("readGroupSetIds")) {
      readGroupSetIds = _json["readGroupSetIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (readGroupSetIds != null) {
      _json["readGroupSetIds"] = readGroupSetIds;
    }
    return _json;
  }
}

/** The variant data import request. */
class ImportVariantsRequest {
  /**
   * The format of the variant data being imported. If unspecified, defaults to
   * to `VCF`.
   * Possible string values are:
   * - "FORMAT_UNSPECIFIED" : A FORMAT_UNSPECIFIED.
   * - "FORMAT_VCF" : A FORMAT_VCF.
   * - "FORMAT_COMPLETE_GENOMICS" : A FORMAT_COMPLETE_GENOMICS.
   */
  core.String format;
  /**
   * Convert reference names to the canonical representation. hg19 haploytypes
   * (those reference names containing "_hap") are not modified in any way. All
   * other reference names are modified according to the following rules: The
   * reference name is capitalized. The "chr" prefix is dropped for all
   * autosomes and sex chromsomes. For example "chr17" becomes "17" and "chrX"
   * becomes "X". All mitochondrial chromosomes ("chrM", "chrMT", etc) become
   * "MT".
   */
  core.bool normalizeReferenceNames;
  /**
   * A list of URIs referencing variant files in Google Cloud Storage. URIs can
   * include wildcards [as described
   * here](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames).
   * Note that recursive wildcards ('**') are not supported.
   */
  core.List<core.String> sourceUris;
  /** Required. The variant set to which variant data should be imported. */
  core.String variantSetId;

  ImportVariantsRequest();

  ImportVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("normalizeReferenceNames")) {
      normalizeReferenceNames = _json["normalizeReferenceNames"];
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
    if (normalizeReferenceNames != null) {
      _json["normalizeReferenceNames"] = normalizeReferenceNames;
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
  /** IDs of the call sets that were created. */
  core.List<core.String> callSetIds;

  ImportVariantsResponse();

  ImportVariantsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("callSetIds")) {
      callSetIds = _json["callSetIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (callSetIds != null) {
      _json["callSetIds"] = callSetIds;
    }
    return _json;
  }
}

/**
 * A linear alignment can be represented by one CIGAR string. Describes the
 * mapped position and local alignment of the read to the reference.
 */
class LinearAlignment {
  /**
   * Represents the local alignment of this sequence (alignment matches, indels,
   * etc) against the reference.
   */
  core.List<CigarUnit> cigar;
  /**
   * The mapping quality of this alignment. Represents how likely the read maps
   * to this position as opposed to other locations.
   */
  core.int mappingQuality;
  /** The position of this alignment. */
  Position position;

  LinearAlignment();

  LinearAlignment.fromJson(core.Map _json) {
    if (_json.containsKey("cigar")) {
      cigar = _json["cigar"].map((value) => new CigarUnit.fromJson(value)).toList();
    }
    if (_json.containsKey("mappingQuality")) {
      mappingQuality = _json["mappingQuality"];
    }
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cigar != null) {
      _json["cigar"] = cigar.map((value) => (value).toJson()).toList();
    }
    if (mappingQuality != null) {
      _json["mappingQuality"] = mappingQuality;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    return _json;
  }
}

class ListBasesResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;
  /**
   * The offset position (0-based) of the given `sequence` from the start of
   * this `Reference`. This value will differ for each page in a paginated
   * request.
   */
  core.String offset;
  /** A substring of the bases that make up this reference. */
  core.String sequence;

  ListBasesResponse();

  ListBasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("sequence")) {
      sequence = _json["sequence"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (sequence != null) {
      _json["sequence"] = sequence;
    }
    return _json;
  }
}

class ListCoverageBucketsResponse {
  /**
   * The length of each coverage bucket in base pairs. Note that buckets at the
   * end of a reference sequence may be shorter. This value is omitted if the
   * bucket width is infinity (the default behaviour, with no range or
   * `targetBucketWidth`).
   */
  core.String bucketWidth;
  /**
   * The coverage buckets. The list of buckets is sparse; a bucket with 0
   * overlapping reads is not returned. A bucket never crosses more than one
   * reference sequence. Each bucket has width `bucketWidth`, unless its end is
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
 * The response message for
 * [Operations.ListOperations][google.longrunning.Operations.ListOperations].
 */
class ListOperationsResponse {
  /** The standard List next-page token. */
  core.String nextPageToken;
  /** A list of operations that matches the specified filter in the request. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress. If
   * true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure. */
  Status error;
  /**
   * An [OperationMetadata][google.genomics.v1.OperationMetadata] object. This
   * will always be returned with the [Operation][google.longrunning.Operation].
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. For example:
   * `operations/CJHU7Oi_ChDrveSpBRjfuL-qzoWAgEw`
   */
  core.String name;
  /**
   * If importing [ReadGroupSets][google.genomics.v1.ReadGroupSet], an
   * [ImportReadGroupSetsResponse][google.genomics.v1.ImportReadGroupSetsResponse]
   * is returned. If importing [Variants][google.genomics.v1.Variant], an
   * [ImportVariantsResponse][google.genomics.v1.ImportVariantsResponse] is
   * returned. For exports, an empty response is returned.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/**
 * An event that occurred during an [Operation][google.longrunning.Operation].
 */
class OperationEvent {
  /** Required description of event. */
  core.String description;

  OperationEvent();

  OperationEvent.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    return _json;
  }
}

/** Metadata describing an [Operation][google.longrunning.Operation]. */
class OperationMetadata {
  /** The time at which the job was submitted to the Genomics service. */
  core.String createTime;
  /**
   * Optional event messages that were generated during the job's execution.
   * This also contains any warnings that were generated during import or
   * export.
   */
  core.List<OperationEvent> events;
  /** The Google Cloud Project in which the job is scoped. */
  core.String projectId;
  /**
   * The original request that started the operation. Note that this will be in
   * current version of the API. If the operation was started with v1beta2 API
   * and a GetOperation is performed on v1 API, a v1 request will be returned.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> request;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("events")) {
      events = _json["events"].map((value) => new OperationEvent.fromJson(value)).toList();
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("request")) {
      request = _json["request"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (request != null) {
      _json["request"] = request;
    }
    return _json;
  }
}

/**
 * Defines an Identity and Access Management (IAM) policy. It is used to specify
 * access control policies for Cloud Platform resources. A `Policy` consists of
 * a list of `bindings`. A `Binding` binds a list of `members` to a `role`,
 * where the members can be user accounts, Google groups, Google domains, and
 * service accounts. A `role` is a named list of permissions defined by IAM.
 * **Example** { "bindings": [ { "role": "roles/owner", "members": [
 * "user:mike@example.com", "group:admins@example.com", "domain:google.com",
 * "serviceAccount:my-other-app@appspot.gserviceaccount.com"] }, { "role":
 * "roles/viewer", "members": ["user:sean@example.com"] } ] } For a description
 * of IAM and its features, see the [IAM developer's
 * guide](https://cloud.google.com/iam).
 */
class Policy {
  /**
   * Associates a list of `members` to a `role`. Multiple `bindings` must not be
   * specified for the same `role`. `bindings` with no members will result in an
   * error.
   */
  core.List<Binding> bindings;
  /** Can be used to perform a read-modify-write. */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /** Version of the `Policy`. The default version is 0. */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/**
 * An abstraction for referring to a genomic position, in relation to some
 * already known reference. For now, represents a genomic position as a
 * reference name, a base number on that reference (0-based), and a
 * determination of forward or reverse strand.
 */
class Position {
  /**
   * The 0-based offset from the start of the forward strand for that reference.
   */
  core.String position;
  /** The name of the reference in whatever reference set is being used. */
  core.String referenceName;
  /**
   * Whether this position is on the reverse strand, as opposed to the forward
   * strand.
   */
  core.bool reverseStrand;

  Position();

  Position.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position = _json["position"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("reverseStrand")) {
      reverseStrand = _json["reverseStrand"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (position != null) {
      _json["position"] = position;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (reverseStrand != null) {
      _json["reverseStrand"] = reverseStrand;
    }
    return _json;
  }
}

class Program {
  /** The command line used to run this program. */
  core.String commandLine;
  /**
   * The user specified locally unique ID of the program. Used along with
   * `prevProgramId` to define an ordering between programs.
   */
  core.String id;
  /** The name of the program. */
  core.String name;
  /** The ID of the program run before this one. */
  core.String prevProgramId;
  /** The version of the program run. */
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

/** A 0-based half-open genomic coordinate range for search requests. */
class Range {
  /** The end position of the range on the reference, 0-based exclusive. */
  core.String end;
  /** The reference sequence name, for example `chr1`, `1`, or `chrX`. */
  core.String referenceName;
  /** The start position of the range on the reference, 0-based inclusive. */
  core.String start;

  Range();

  Range.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (end != null) {
      _json["end"] = end;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/**
 * A read alignment describes a linear alignment of a string of DNA to a
 * [reference sequence][google.genomics.v1.Reference], in addition to metadata
 * about the fragment (the molecule of DNA sequenced) and the read (the bases
 * which were read by the sequencer). A read is equivalent to a line in a SAM
 * file. A read belongs to exactly one read group and exactly one [read group
 * set][google.genomics.v1.ReadGroupSet]. ### Generating a reference-aligned
 * sequence string When interacting with mapped reads, it's often useful to
 * produce a string representing the local alignment of the read to reference.
 * The following pseudocode demonstrates one way of doing this: out = "" offset
 * = 0 for c in read.alignment.cigar { switch c.operation { case
 * "ALIGNMENT_MATCH", "SEQUENCE_MATCH", "SEQUENCE_MISMATCH": out +=
 * read.alignedSequence[offset:offset+c.operationLength] offset +=
 * c.operationLength break case "CLIP_SOFT", "INSERT": offset +=
 * c.operationLength break case "PAD": out += repeat("*", c.operationLength)
 * break case "DELETE": out += repeat("-", c.operationLength) break case "SKIP":
 * out += repeat(" ", c.operationLength) break case "CLIP_HARD": break } }
 * return out ### Converting to SAM's CIGAR string The following pseudocode
 * generates a SAM CIGAR string from the `cigar` field. Note that this is a
 * lossy conversion (`cigar.referenceSequence` is lost). cigarMap = {
 * "ALIGNMENT_MATCH": "M", "INSERT": "I", "DELETE": "D", "SKIP": "N",
 * "CLIP_SOFT": "S", "CLIP_HARD": "H", "PAD": "P", "SEQUENCE_MATCH": "=",
 * "SEQUENCE_MISMATCH": "X", } cigarStr = "" for c in read.alignment.cigar {
 * cigarStr += c.operationLength + cigarMap[c.operation] } return cigarStr
 */
class Read {
  /**
   * The quality of the read sequence contained in this alignment record.
   * `alignedSequence` and `alignedQuality` may be shorter than the full read
   * sequence and quality. This will occur if the alignment is part of a
   * chimeric alignment, or if the read was trimmed. When this occurs, the CIGAR
   * for this read will begin/end with a hard clip operator that will indicate
   * the length of the excised sequence.
   */
  core.List<core.int> alignedQuality;
  /**
   * The bases of the read sequence contained in this alignment record, *without
   * CIGAR operations applied*. `alignedSequence` and `alignedQuality` may be
   * shorter than the full read sequence and quality. This will occur if the
   * alignment is part of a chimeric alignment, or if the read was trimmed. When
   * this occurs, the CIGAR for this read will begin/end with a hard clip
   * operator that will indicate the length of the excised sequence.
   */
  core.String alignedSequence;
  /**
   * The linear alignment for this alignment record. This field will be null if
   * the read is unmapped.
   */
  LinearAlignment alignment;
  /** The fragment is a PCR or optical duplicate (SAM flag 0x400) */
  core.bool duplicateFragment;
  /** SAM flag 0x200 */
  core.bool failedVendorQualityChecks;
  /** The observed length of the fragment, equivalent to TLEN in SAM. */
  core.int fragmentLength;
  /** The fragment name. Equivalent to QNAME (query template name) in SAM. */
  core.String fragmentName;
  /**
   * The server-generated read ID, unique across all reads. This is different
   * from the `fragmentName`.
   */
  core.String id;
  /**
   * A map of additional read alignment information. This must be of the form
   * map (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /**
   * The mapping of the primary alignment of the `(readNumber+1)%numberReads`
   * read in the fragment. It replaces mate position and mate strand in SAM.
   */
  Position nextMatePosition;
  /** The number of reads in the fragment (extension to SAM flag 0x1). */
  core.int numberReads;
  /**
   * The orientation and the distance between reads from the fragment are
   * consistent with the sequencing protocol (SAM flag 0x2)
   */
  core.bool properPlacement;
  /**
   * The ID of the read group this read belongs to. (Every read must belong to
   * exactly one read group.)
   */
  core.String readGroupId;
  /**
   * The ID of the read group set this read belongs to. (Every read must belong
   * to exactly one read group set.)
   */
  core.String readGroupSetId;
  /**
   * The read number in sequencing. 0-based and less than numberReads. This
   * field replaces SAM flag 0x40 and 0x80.
   */
  core.int readNumber;
  /**
   * Whether this alignment is secondary. Equivalent to SAM flag 0x100. A
   * secondary alignment represents an alternative to the primary alignment for
   * this read. Aligners may return secondary alignments if a read can map
   * ambiguously to multiple coordinates in the genome. By convention, each read
   * has one and only one alignment where both `secondaryAlignment` and
   * `supplementaryAlignment` are false.
   */
  core.bool secondaryAlignment;
  /**
   * Whether this alignment is supplementary. Equivalent to SAM flag 0x800.
   * Supplementary alignments are used in the representation of a chimeric
   * alignment. In a chimeric alignment, a read is split into multiple linear
   * alignments that map to different reference contigs. The first linear
   * alignment in the read will be designated as the representative alignment;
   * the remaining linear alignments will be designated as supplementary
   * alignments. These alignments may have different mapping quality scores. In
   * each linear alignment in a chimeric alignment, the read will be hard
   * clipped. The `alignedSequence` and `alignedQuality` fields in the alignment
   * record will only represent the bases for its respective linear alignment.
   */
  core.bool supplementaryAlignment;

  Read();

  Read.fromJson(core.Map _json) {
    if (_json.containsKey("alignedQuality")) {
      alignedQuality = _json["alignedQuality"];
    }
    if (_json.containsKey("alignedSequence")) {
      alignedSequence = _json["alignedSequence"];
    }
    if (_json.containsKey("alignment")) {
      alignment = new LinearAlignment.fromJson(_json["alignment"]);
    }
    if (_json.containsKey("duplicateFragment")) {
      duplicateFragment = _json["duplicateFragment"];
    }
    if (_json.containsKey("failedVendorQualityChecks")) {
      failedVendorQualityChecks = _json["failedVendorQualityChecks"];
    }
    if (_json.containsKey("fragmentLength")) {
      fragmentLength = _json["fragmentLength"];
    }
    if (_json.containsKey("fragmentName")) {
      fragmentName = _json["fragmentName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("info")) {
      info = _json["info"];
    }
    if (_json.containsKey("nextMatePosition")) {
      nextMatePosition = new Position.fromJson(_json["nextMatePosition"]);
    }
    if (_json.containsKey("numberReads")) {
      numberReads = _json["numberReads"];
    }
    if (_json.containsKey("properPlacement")) {
      properPlacement = _json["properPlacement"];
    }
    if (_json.containsKey("readGroupId")) {
      readGroupId = _json["readGroupId"];
    }
    if (_json.containsKey("readGroupSetId")) {
      readGroupSetId = _json["readGroupSetId"];
    }
    if (_json.containsKey("readNumber")) {
      readNumber = _json["readNumber"];
    }
    if (_json.containsKey("secondaryAlignment")) {
      secondaryAlignment = _json["secondaryAlignment"];
    }
    if (_json.containsKey("supplementaryAlignment")) {
      supplementaryAlignment = _json["supplementaryAlignment"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alignedQuality != null) {
      _json["alignedQuality"] = alignedQuality;
    }
    if (alignedSequence != null) {
      _json["alignedSequence"] = alignedSequence;
    }
    if (alignment != null) {
      _json["alignment"] = (alignment).toJson();
    }
    if (duplicateFragment != null) {
      _json["duplicateFragment"] = duplicateFragment;
    }
    if (failedVendorQualityChecks != null) {
      _json["failedVendorQualityChecks"] = failedVendorQualityChecks;
    }
    if (fragmentLength != null) {
      _json["fragmentLength"] = fragmentLength;
    }
    if (fragmentName != null) {
      _json["fragmentName"] = fragmentName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (info != null) {
      _json["info"] = info;
    }
    if (nextMatePosition != null) {
      _json["nextMatePosition"] = (nextMatePosition).toJson();
    }
    if (numberReads != null) {
      _json["numberReads"] = numberReads;
    }
    if (properPlacement != null) {
      _json["properPlacement"] = properPlacement;
    }
    if (readGroupId != null) {
      _json["readGroupId"] = readGroupId;
    }
    if (readGroupSetId != null) {
      _json["readGroupSetId"] = readGroupSetId;
    }
    if (readNumber != null) {
      _json["readNumber"] = readNumber;
    }
    if (secondaryAlignment != null) {
      _json["secondaryAlignment"] = secondaryAlignment;
    }
    if (supplementaryAlignment != null) {
      _json["supplementaryAlignment"] = supplementaryAlignment;
    }
    return _json;
  }
}

/**
 * A read group is all the data that's processed the same way by the sequencer.
 */
class ReadGroup {
  /** The ID of the dataset this read group belongs to. */
  core.String datasetId;
  /** A free-form text description of this read group. */
  core.String description;
  /** The experiment used to generate this read group. */
  Experiment experiment;
  /**
   * The server-generated read group ID, unique for all read groups. Note: This
   * is different than the `@RG ID` field in the SAM spec. For that value, see
   * the `name` field.
   */
  core.String id;
  /**
   * A map of additional read group information. This must be of the form map
   * (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /**
   * The read group name. This corresponds to the @RG ID field in the SAM spec.
   */
  core.String name;
  /**
   * The predicted insert size of this read group. The insert size is the length
   * the sequenced DNA fragment from end-to-end, not including the adapters.
   */
  core.int predictedInsertSize;
  /**
   * The programs used to generate this read group. Programs are always
   * identical for all read groups within a read group set. For this reason,
   * only the first read group in a returned set will have this field populated.
   */
  core.List<Program> programs;
  /**
   * The reference set the reads in this read group are aligned to. Required if
   * there are any read alignments.
   */
  core.String referenceSetId;
  /**
   * The sample this read group's data was generated from. Note: This is not an
   * actual ID within this repository, but rather an identifier for a sample
   * which may be meaningful to some external system.
   */
  core.String sampleId;

  ReadGroup();

  ReadGroup.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("experiment")) {
      experiment = new Experiment.fromJson(_json["experiment"]);
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
    if (_json.containsKey("predictedInsertSize")) {
      predictedInsertSize = _json["predictedInsertSize"];
    }
    if (_json.containsKey("programs")) {
      programs = _json["programs"].map((value) => new Program.fromJson(value)).toList();
    }
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
    }
    if (_json.containsKey("sampleId")) {
      sampleId = _json["sampleId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (experiment != null) {
      _json["experiment"] = (experiment).toJson();
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
    if (predictedInsertSize != null) {
      _json["predictedInsertSize"] = predictedInsertSize;
    }
    if (programs != null) {
      _json["programs"] = programs.map((value) => (value).toJson()).toList();
    }
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    if (sampleId != null) {
      _json["sampleId"] = sampleId;
    }
    return _json;
  }
}

/**
 * A read group set is a logical collection of read groups, which are
 * collections of reads produced by a sequencer. A read group set typically
 * models reads corresponding to one sample, sequenced one way, and aligned one
 * way. * A read group set belongs to one dataset. * A read group belongs to one
 * read group set. * A read belongs to one read group.
 */
class ReadGroupSet {
  /** The dataset ID. */
  core.String datasetId;
  /**
   * The filename of the original source file for this read group set, if any.
   */
  core.String filename;
  /**
   * The server-generated read group set ID, unique for all read group sets.
   */
  core.String id;
  /**
   * A map of additional read group set information.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /**
   * The read group set name. By default this will be initialized to the sample
   * name of the sequenced data contained in this set.
   */
  core.String name;
  /**
   * The read groups in this set. There are typically 1-10 read groups in a read
   * group set.
   */
  core.List<ReadGroup> readGroups;
  /** The reference set the reads in this read group set are aligned to. */
  core.String referenceSetId;

  ReadGroupSet();

  ReadGroupSet.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("filename")) {
      filename = _json["filename"];
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
    if (_json.containsKey("readGroups")) {
      readGroups = _json["readGroups"].map((value) => new ReadGroup.fromJson(value)).toList();
    }
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (filename != null) {
      _json["filename"] = filename;
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
    if (readGroups != null) {
      _json["readGroups"] = readGroups.map((value) => (value).toJson()).toList();
    }
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    return _json;
  }
}

/**
 * A reference is a canonical assembled DNA sequence, intended to act as a
 * reference coordinate space for other genomic annotations. A single reference
 * might represent the human chromosome 1 or mitochandrial DNA, for instance. A
 * reference belongs to one or more reference sets.
 */
class Reference {
  /** The server-generated reference ID, unique across all references. */
  core.String id;
  /** The length of this reference's sequence. */
  core.String length;
  /**
   * MD5 of the upper-case sequence excluding all whitespace characters (this is
   * equivalent to SQ:M5 in SAM). This value is represented in lower case
   * hexadecimal format.
   */
  core.String md5checksum;
  /** The name of this reference, for example `22`. */
  core.String name;
  /**
   * ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) if not
   * specified by the containing reference set.
   */
  core.int ncbiTaxonId;
  /**
   * All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally
   * with a version number, for example `GCF_000001405.26`.
   */
  core.List<core.String> sourceAccessions;
  /**
   * The URI from which the sequence was obtained. Specifies a FASTA format
   * file/string with one name, sequence pair.
   */
  core.String sourceUri;

  Reference();

  Reference.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("md5checksum")) {
      md5checksum = _json["md5checksum"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ncbiTaxonId")) {
      ncbiTaxonId = _json["ncbiTaxonId"];
    }
    if (_json.containsKey("sourceAccessions")) {
      sourceAccessions = _json["sourceAccessions"];
    }
    if (_json.containsKey("sourceUri")) {
      sourceUri = _json["sourceUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (length != null) {
      _json["length"] = length;
    }
    if (md5checksum != null) {
      _json["md5checksum"] = md5checksum;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (ncbiTaxonId != null) {
      _json["ncbiTaxonId"] = ncbiTaxonId;
    }
    if (sourceAccessions != null) {
      _json["sourceAccessions"] = sourceAccessions;
    }
    if (sourceUri != null) {
      _json["sourceUri"] = sourceUri;
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

/**
 * A reference set is a set of references which typically comprise a reference
 * assembly for a species, such as `GRCh38` which is representative of the human
 * genome. A reference set defines a common coordinate space for comparing
 * reference-aligned experimental data. A reference set contains 1 or more
 * references.
 */
class ReferenceSet {
  /** Public id of this reference set, such as `GRCh37`. */
  core.String assemblyId;
  /** Free text description of this reference set. */
  core.String description;
  /**
   * The server-generated reference set ID, unique across all reference sets.
   */
  core.String id;
  /**
   * Order-independent MD5 checksum which identifies this reference set. The
   * checksum is computed by sorting all lower case hexidecimal string
   * `reference.md5checksum` (for all reference in this set) in ascending
   * lexicographic order, concatenating, and taking the MD5 of that value. The
   * resulting value is represented in lower case hexadecimal format.
   */
  core.String md5checksum;
  /**
   * ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) indicating
   * the species which this assembly is intended to model. Note that contained
   * references may specify a different `ncbiTaxonId`, as assemblies may contain
   * reference sequences which do not belong to the modeled species, e.g. EBV in
   * a human reference genome.
   */
  core.int ncbiTaxonId;
  /**
   * The IDs of the reference objects that are part of this set.
   * `Reference.md5checksum` must be unique within this set.
   */
  core.List<core.String> referenceIds;
  /**
   * All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally
   * with a version number, for example `NC_000001.11`.
   */
  core.List<core.String> sourceAccessions;
  /** The URI from which the references were obtained. */
  core.String sourceUri;

  ReferenceSet();

  ReferenceSet.fromJson(core.Map _json) {
    if (_json.containsKey("assemblyId")) {
      assemblyId = _json["assemblyId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("md5checksum")) {
      md5checksum = _json["md5checksum"];
    }
    if (_json.containsKey("ncbiTaxonId")) {
      ncbiTaxonId = _json["ncbiTaxonId"];
    }
    if (_json.containsKey("referenceIds")) {
      referenceIds = _json["referenceIds"];
    }
    if (_json.containsKey("sourceAccessions")) {
      sourceAccessions = _json["sourceAccessions"];
    }
    if (_json.containsKey("sourceUri")) {
      sourceUri = _json["sourceUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (assemblyId != null) {
      _json["assemblyId"] = assemblyId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (md5checksum != null) {
      _json["md5checksum"] = md5checksum;
    }
    if (ncbiTaxonId != null) {
      _json["ncbiTaxonId"] = ncbiTaxonId;
    }
    if (referenceIds != null) {
      _json["referenceIds"] = referenceIds;
    }
    if (sourceAccessions != null) {
      _json["sourceAccessions"] = sourceAccessions;
    }
    if (sourceUri != null) {
      _json["sourceUri"] = sourceUri;
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
  /**
   * The maximum number of call sets to return. If unspecified, defaults to
   * 1000.
   */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
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

/** The read group set search request. */
class SearchReadGroupSetsRequest {
  /**
   * Restricts this query to read group sets within the given datasets. At least
   * one ID must be provided.
   */
  core.List<core.String> datasetIds;
  /**
   * Only return read group sets for which a substring of the name matches this
   * string.
   */
  core.String name;
  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 256. The maximum value is 1024.
   */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
   */
  core.String pageToken;

  SearchReadGroupSetsRequest();

  SearchReadGroupSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetIds")) {
      datasetIds = _json["datasetIds"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
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
    if (name != null) {
      _json["name"] = name;
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

/** The read group set search response. */
class SearchReadGroupSetsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;
  /** The list of matching read group sets. */
  core.List<ReadGroupSet> readGroupSets;

  SearchReadGroupSetsResponse();

  SearchReadGroupSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readGroupSets")) {
      readGroupSets = _json["readGroupSets"].map((value) => new ReadGroupSet.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readGroupSets != null) {
      _json["readGroupSets"] = readGroupSets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The read search request. */
class SearchReadsRequest {
  /**
   * The end position of the range on the reference, 0-based exclusive. If
   * specified, `referenceName` must also be specified.
   */
  core.String end;
  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 256. The maximum value is 2048.
   */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
   */
  core.String pageToken;
  /**
   * The IDs of the read groups within which to search for reads. All specified
   * read groups must belong to the same read group sets. Must specify one of
   * `readGroupSetIds` or `readGroupIds`.
   */
  core.List<core.String> readGroupIds;
  /**
   * The IDs of the read groups sets within which to search for reads. All
   * specified read group sets must be aligned against a common set of reference
   * sequences; this defines the genomic coordinates for the query. Must specify
   * one of `readGroupSetIds` or `readGroupIds`.
   */
  core.List<core.String> readGroupSetIds;
  /**
   * The reference sequence name, for example `chr1`, `1`, or `chrX`. If set to
   * *, only unmapped reads are returned.
   */
  core.String referenceName;
  /**
   * The start position of the range on the reference, 0-based inclusive. If
   * specified, `referenceName` must also be specified.
   */
  core.String start;

  SearchReadsRequest();

  SearchReadsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("readGroupIds")) {
      readGroupIds = _json["readGroupIds"];
    }
    if (_json.containsKey("readGroupSetIds")) {
      readGroupSetIds = _json["readGroupSetIds"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (end != null) {
      _json["end"] = end;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (readGroupIds != null) {
      _json["readGroupIds"] = readGroupIds;
    }
    if (readGroupSetIds != null) {
      _json["readGroupSetIds"] = readGroupSetIds;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/** The read search response. */
class SearchReadsResponse {
  /**
   * The list of matching alignments sorted by mapped genomic coordinate, if
   * any, ascending in position within the same reference. Unmapped reads, which
   * have no position, are returned contiguously and are sorted in ascending
   * lexicographic order by fragment name.
   */
  core.List<Read> alignments;
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;

  SearchReadsResponse();

  SearchReadsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("alignments")) {
      alignments = _json["alignments"].map((value) => new Read.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alignments != null) {
      _json["alignments"] = alignments.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class SearchReferenceSetsRequest {
  /**
   * If present, return references for which the accession matches any of these
   * strings. Best to give a version number, for example `GCF_000001405.26`. If
   * only the main accession number is given then all records with that main
   * accession will be returned, whichever version. Note that different versions
   * will have different sequences.
   */
  core.List<core.String> accessions;
  /**
   * If present, return reference sets for which a substring of their
   * `assemblyId` matches this string (case insensitive).
   */
  core.String assemblyId;
  /**
   * If present, return references for which the `md5checksum` matches. See
   * `ReferenceSet.md5checksum` for details.
   */
  core.List<core.String> md5checksums;
  /** Specifies the maximum number of results to return in a single page. */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
   */
  core.String pageToken;

  SearchReferenceSetsRequest();

  SearchReferenceSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accessions")) {
      accessions = _json["accessions"];
    }
    if (_json.containsKey("assemblyId")) {
      assemblyId = _json["assemblyId"];
    }
    if (_json.containsKey("md5checksums")) {
      md5checksums = _json["md5checksums"];
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
    if (accessions != null) {
      _json["accessions"] = accessions;
    }
    if (assemblyId != null) {
      _json["assemblyId"] = assemblyId;
    }
    if (md5checksums != null) {
      _json["md5checksums"] = md5checksums;
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

class SearchReferenceSetsResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;
  /** The matching references sets. */
  core.List<ReferenceSet> referenceSets;

  SearchReferenceSetsResponse();

  SearchReferenceSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("referenceSets")) {
      referenceSets = _json["referenceSets"].map((value) => new ReferenceSet.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (referenceSets != null) {
      _json["referenceSets"] = referenceSets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class SearchReferencesRequest {
  /**
   * If present, return references for which the accession matches this string.
   * Best to give a version number, for example `GCF_000001405.26`. If only the
   * main accession number is given then all records with that main accession
   * will be returned, whichever version. Note that different versions will have
   * different sequences.
   */
  core.List<core.String> accessions;
  /**
   * If present, return references for which the `md5checksum` matches. See
   * `Reference.md5checksum` for construction details.
   */
  core.List<core.String> md5checksums;
  /** Specifies the maximum number of results to return in a single page. */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
   */
  core.String pageToken;
  /** If present, return only references which belong to this reference set. */
  core.String referenceSetId;

  SearchReferencesRequest();

  SearchReferencesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accessions")) {
      accessions = _json["accessions"];
    }
    if (_json.containsKey("md5checksums")) {
      md5checksums = _json["md5checksums"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accessions != null) {
      _json["accessions"] = accessions;
    }
    if (md5checksums != null) {
      _json["md5checksums"] = md5checksums;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    return _json;
  }
}

class SearchReferencesResponse {
  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;
  /** The matching references. */
  core.List<Reference> references;

  SearchReferencesResponse();

  SearchReferencesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("references")) {
      references = _json["references"].map((value) => new Reference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (references != null) {
      _json["references"] = references.map((value) => (value).toJson()).toList();
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
   * `nextPageToken` from the previous response.
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
   * this blank returns all variant calls. If a variant has no calls belonging
   * to any of these call sets, it won't be returned at all. Currently, variants
   * with no calls from any call set will never be returned.
   */
  core.List<core.String> callSetIds;
  /**
   * The end of the window, 0-based exclusive. If unspecified or 0, defaults to
   * the length of the reference.
   */
  core.String end;
  /**
   * The maximum number of calls to return. However, at least one variant will
   * always be returned, even if it has more calls than this limit. If
   * unspecified, defaults to 5000.
   */
  core.int maxCalls;
  /**
   * The maximum number of variants to return. If unspecified, defaults to 5000.
   */
  core.int pageSize;
  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * `nextPageToken` from the previous response.
   */
  core.String pageToken;
  /** Required. Only return variants in this reference sequence. */
  core.String referenceName;
  /**
   * The beginning of the window (0-based, inclusive) for which overlapping
   * variants should be returned. If unspecified, defaults to 0.
   */
  core.String start;
  /** Only return variants which have exactly this name. */
  core.String variantName;
  /**
   * At most one variant set ID must be provided. Only variants from this
   * variant set will be returned. If omitted, a call set id must be included in
   * the request.
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

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /**
   * REQUIRED: The complete policy to be applied to the `resource`. The size of
   * the policy is limited to a few 10s of KB. An empty policy is a valid policy
   * but certain Cloud Platform services (such as Projects) might reject them.
   */
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different programming environments, including REST APIs and RPC APIs. It is
 * used by [gRPC](https://github.com/grpc). The error model is designed to be: -
 * Simple to use and understand for most users - Flexible enough to meet
 * unexpected needs # Overview The `Status` message contains three pieces of
 * data: error code, error message, and error details. The error code should be
 * an enum value of [google.rpc.Code][google.rpc.Code], but it may accept
 * additional error codes if needed. The error message should be a
 * developer-facing English message that helps developers *understand* and
 * *resolve* the error. If a localized user-facing error message is needed, put
 * the localized message in the error details or localize it in the client. The
 * optional error details may contain arbitrary information about the error.
 * There is a predefined set of error detail types in the package `google.rpc`
 * which can be used for common error conditions. # Language mapping The
 * `Status` message is the logical representation of the error model, but it is
 * not necessarily the actual wire format. When the `Status` message is exposed
 * in different client libraries and different wire protocols, it can be mapped
 * differently. For example, it will likely be mapped to some exceptions in
 * Java, but more likely mapped to some error codes in C. # Other uses The error
 * model and the `Status` message can be used in a variety of environments,
 * either with or without APIs, to provide a consistent developer experience
 * across different environments. Example uses of this error model include: -
 * Partial errors. If a service needs to return partial errors to the client, it
 * may embed the `Status` in the normal response to indicate the partial errors.
 * - Workflow errors. A typical workflow has multiple steps. Each step may have
 * a `Status` message for error reporting purpose. - Batch operations. If a
 * client uses batch request and batch response, the `Status` message should be
 * used directly inside batch response, one for each error sub-response. -
 * Asynchronous operations. If an API call embeds asynchronous operation results
 * in its response, the status of those operations should be represented
 * directly using the `Status` message. - Logging. If some API errors are stored
 * in logs, the message `Status` could be used directly after any stripping
 * needed for security/privacy reasons.
 */
class Status {
  /**
   * The status code, which should be an enum value of
   * [google.rpc.Code][google.rpc.Code].
   */
  core.int code;
  /**
   * A list of messages that carry the error details. There will be a common set
   * of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * [google.rpc.Status.details][google.rpc.Status.details] field, or localized
   * by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * REQUIRED: The set of permissions to check for the 'resource'. Permissions
   * with wildcards (such as '*' or 'storage.*') are not allowed. Allowed
   * permissions are: * `genomics.datasets.create` * `genomics.datasets.delete`
   * * `genomics.datasets.get` * `genomics.datasets.list` *
   * `genomics.datasets.update` * `genomics.datasets.getIamPolicy` *
   * `genomics.datasets.setIamPolicy`
   */
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Response message for `TestIamPermissions` method. */
class TestIamPermissionsResponse {
  /**
   * A subset of `TestPermissionsRequest.permissions` that the caller is
   * allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

class UndeleteDatasetRequest {

  UndeleteDatasetRequest();

  UndeleteDatasetRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * A variant represents a change in DNA sequence relative to a reference
 * sequence. For example, a variant could represent a SNP or an insertion.
 * Variants belong to a variant set. Each of the calls on a variant represent a
 * determination of genotype with respect to that variant. For example, a call
 * might assign probability of 0.32 to the occurrence of a SNP named rs1234 in a
 * sample named NA12345. A call belongs to a call set, which contains related
 * calls typically from one sample.
 */
class Variant {
  /** The bases that appear instead of the reference bases. */
  core.List<core.String> alternateBases;
  /**
   * The variant calls for this particular variant. Each one represents the
   * determination of genotype with respect to this variant.
   */
  core.List<VariantCall> calls;
  /** The date this variant was created, in milliseconds from the epoch. */
  core.String created;
  /**
   * The end position (0-based) of this variant. This corresponds to the first
   * base after the last base in the reference allele. So, the length of the
   * reference allele is (end - start). This is useful for variants that don't
   * explicitly give alternate bases, for example large deletions.
   */
  core.String end;
  /**
   * A list of filters (normally quality filters) this variant has failed.
   * `PASS` indicates this variant has passed all filters.
   */
  core.List<core.String> filter;
  /** The server-generated variant ID, unique across all variants. */
  core.String id;
  /**
   * A map of additional variant information. This must be of the form map
   * (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /** Names for the variant, for example a RefSNP ID. */
  core.List<core.String> names;
  /**
   * A measure of how likely this variant is to be real. A higher value is
   * better.
   */
  core.double quality;
  /**
   * The reference bases for this variant. They start at the given position.
   */
  core.String referenceBases;
  /** The reference on which this variant occurs. (such as `chr20` or `X`) */
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
      calls = _json["calls"].map((value) => new VariantCall.fromJson(value)).toList();
    }
    if (_json.containsKey("created")) {
      created = _json["created"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
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
    if (_json.containsKey("quality")) {
      quality = _json["quality"];
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
    if (filter != null) {
      _json["filter"] = filter;
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
    if (quality != null) {
      _json["quality"] = quality;
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
 * A call represents the determination of genotype with respect to a particular
 * variant. It may include associated information such as quality and phasing.
 * For example, a call might assign a probability of 0.32 to the occurrence of a
 * SNP named rs1234 in a call set with the name NA12345.
 */
class VariantCall {
  /** The ID of the call set this variant call belongs to. */
  core.String callSetId;
  /** The name of the call set this variant call belongs to. */
  core.String callSetName;
  /**
   * The genotype of this variant call. Each value represents either the value
   * of the `referenceBases` field or a 1-based index into `alternateBases`. If
   * a variant had a `referenceBases` value of `T` and an `alternateBases` value
   * of `["A", "C"]`, and the `genotype` was `[2, 1]`, that would mean the call
   * represented the heterozygous value `CA` for this variant. If the `genotype`
   * was instead `[0, 1]`, the represented value would be `TA`. Ordering of the
   * genotype values is important if the `phaseset` is present. If a genotype is
   * not called (that is, a `.` is present in the GT string) -1 is returned.
   */
  core.List<core.int> genotype;
  /**
   * The genotype likelihoods for this variant call. Each array entry represents
   * how likely a specific genotype is for this call. The value ordering is
   * defined by the GL tag in the VCF spec. If Phred-scaled genotype likelihood
   * scores (PL) are available and log10(P) genotype likelihood scores (GL) are
   * not, PL scores are converted to GL scores. If both are available, PL scores
   * are stored in `info`.
   */
  core.List<core.double> genotypeLikelihood;
  /**
   * A map of additional variant call information. This must be of the form map
   * (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
  /**
   * If this field is present, this variant call's genotype ordering implies the
   * phase of the bases and is consistent with any other variant calls in the
   * same reference sequence which have the same phaseset value. When importing
   * data from VCF, if the genotype data was phased but no phase set was
   * specified this field will be set to `*`.
   */
  core.String phaseset;

  VariantCall();

  VariantCall.fromJson(core.Map _json) {
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

/**
 * A variant set is a collection of call sets and variants. It contains summary
 * statistics of those contents. A variant set belongs to a dataset.
 */
class VariantSet {
  /** The dataset to which this variant set belongs. */
  core.String datasetId;
  /** The server-generated variant set ID, unique across all variant sets. */
  core.String id;
  /** The metadata associated with this variant set. */
  core.List<VariantSetMetadata> metadata;
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
      metadata = _json["metadata"].map((value) => new VariantSetMetadata.fromJson(value)).toList();
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

/**
 * Metadata describes a single piece of variant call metadata. These data
 * include a top level key and either a single value string (value) or a list of
 * key-value pairs (info.) Value and info are mutually exclusive.
 */
class VariantSetMetadata {
  /** A textual description of this metadata. */
  core.String description;
  /**
   * User-provided ID field, not enforced by this API. Two or more pieces of
   * structured metadata with identical id and key fields are considered
   * equivalent.
   */
  core.String id;
  /**
   * Remaining structured metadata key-value pairs. This must be of the form map
   * (string key mapping to a list of string values).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.List<core.Object>> info;
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
   * - "TYPE_UNSPECIFIED" : A TYPE_UNSPECIFIED.
   * - "INTEGER" : A INTEGER.
   * - "FLOAT" : A FLOAT.
   * - "FLAG" : A FLAG.
   * - "CHARACTER" : A CHARACTER.
   * - "STRING" : A STRING.
   */
  core.String type;
  /** The value field for simple metadata */
  core.String value;

  VariantSetMetadata();

  VariantSetMetadata.fromJson(core.Map _json) {
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
