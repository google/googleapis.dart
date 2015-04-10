// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.genomics.v1beta2;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client genomics/v1beta2';

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


  final commons.ApiRequester _requester;

  AnnotationSetsResourceApi get annotationSets => new AnnotationSetsResourceApi(_requester);
  AnnotationsResourceApi get annotations => new AnnotationsResourceApi(_requester);
  CallsetsResourceApi get callsets => new CallsetsResourceApi(_requester);
  DatasetsResourceApi get datasets => new DatasetsResourceApi(_requester);
  ExperimentalResourceApi get experimental => new ExperimentalResourceApi(_requester);
  JobsResourceApi get jobs => new JobsResourceApi(_requester);
  ReadgroupsetsResourceApi get readgroupsets => new ReadgroupsetsResourceApi(_requester);
  ReadsResourceApi get reads => new ReadsResourceApi(_requester);
  ReferencesResourceApi get references => new ReferencesResourceApi(_requester);
  ReferencesetsResourceApi get referencesets => new ReferencesetsResourceApi(_requester);
  StreamingVariantStoreResourceApi get streamingVariantStore => new StreamingVariantStoreResourceApi(_requester);
  VariantsResourceApi get variants => new VariantsResourceApi(_requester);
  VariantsetsResourceApi get variantsets => new VariantsetsResourceApi(_requester);

  GenomicsApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "genomics/v1beta2/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class AnnotationSetsResourceApi {
  final commons.ApiRequester _requester;

  AnnotationSetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new annotation set. Caller must have WRITE permission for the
   * associated dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [AnnotationSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AnnotationSet> create(AnnotationSet request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'annotationSets';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AnnotationSet.fromJson(data));
  }

  /**
   * Deletes an annotation set. Caller must have WRITE permission for the
   * associated annotation set.
   *
   * Request parameters:
   *
   * [annotationSetId] - The ID of the annotation set to be deleted.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String annotationSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (annotationSetId == null) {
      throw new core.ArgumentError("Parameter annotationSetId is required.");
    }

    _downloadOptions = null;

    _url = 'annotationSets/' + commons.Escaper.ecapeVariable('$annotationSetId');

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
   * Gets an annotation set. Caller must have READ permission for the associated
   * dataset.
   *
   * Request parameters:
   *
   * [annotationSetId] - The ID of the annotation set to be retrieved.
   *
   * Completes with a [AnnotationSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AnnotationSet> get(core.String annotationSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (annotationSetId == null) {
      throw new core.ArgumentError("Parameter annotationSetId is required.");
    }


    _url = 'annotationSets/' + commons.Escaper.ecapeVariable('$annotationSetId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AnnotationSet.fromJson(data));
  }

  /**
   * Updates an annotation set. The update must respect all mutability
   * restrictions and other invariants described on the annotation set resource.
   * Caller must have WRITE permission for the associated dataset. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [annotationSetId] - The ID of the annotation set to be updated.
   *
   * Completes with a [AnnotationSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AnnotationSet> patch(AnnotationSet request, core.String annotationSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (annotationSetId == null) {
      throw new core.ArgumentError("Parameter annotationSetId is required.");
    }


    _url = 'annotationSets/' + commons.Escaper.ecapeVariable('$annotationSetId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AnnotationSet.fromJson(data));
  }

  /**
   * Searches for annotation sets that match the given criteria. Results are
   * returned in a deterministic order. Caller must have READ permission for the
   * queried datasets.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchAnnotationSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchAnnotationSetsResponse> search(SearchAnnotationSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'annotationSets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchAnnotationSetsResponse.fromJson(data));
  }

  /**
   * Updates an annotation set. The update must respect all mutability
   * restrictions and other invariants described on the annotation set resource.
   * Caller must have WRITE permission for the associated dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [annotationSetId] - The ID of the annotation set to be updated.
   *
   * Completes with a [AnnotationSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AnnotationSet> update(AnnotationSet request, core.String annotationSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (annotationSetId == null) {
      throw new core.ArgumentError("Parameter annotationSetId is required.");
    }


    _url = 'annotationSets/' + commons.Escaper.ecapeVariable('$annotationSetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AnnotationSet.fromJson(data));
  }

}


class AnnotationsResourceApi {
  final commons.ApiRequester _requester;

  AnnotationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates one or more new annotations atomically. All annotations must belong
   * to the same annotation set. Caller must have WRITE permission for this
   * annotation set. For optimal performance, batch positionally adjacent
   * annotations together.
   *
   *
   * If the request has a systemic issue, such as an attempt to write to an
   * inaccessible annotation set, the entire RPC will fail accordingly. For
   * lesser data issues, when possible an error will be isolated to the
   * corresponding batch entry in the response; the remaining well formed
   * annotations will be created normally.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [BatchAnnotationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BatchAnnotationsResponse> batchCreate(BatchCreateAnnotationsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'annotations:batchCreate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BatchAnnotationsResponse.fromJson(data));
  }

  /**
   * Creates a new annotation. Caller must have WRITE permission for the
   * associated annotation set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Annotation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Annotation> create(Annotation request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'annotations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Annotation.fromJson(data));
  }

  /**
   * Deletes an annotation. Caller must have WRITE permission for the associated
   * annotation set.
   *
   * Request parameters:
   *
   * [annotationId] - The ID of the annotation set to be deleted.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String annotationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (annotationId == null) {
      throw new core.ArgumentError("Parameter annotationId is required.");
    }

    _downloadOptions = null;

    _url = 'annotations/' + commons.Escaper.ecapeVariable('$annotationId');

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
   * Gets an annotation. Caller must have READ permission for the associated
   * annotation set.
   *
   * Request parameters:
   *
   * [annotationId] - The ID of the annotation set to be retrieved.
   *
   * Completes with a [Annotation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Annotation> get(core.String annotationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (annotationId == null) {
      throw new core.ArgumentError("Parameter annotationId is required.");
    }


    _url = 'annotations/' + commons.Escaper.ecapeVariable('$annotationId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Annotation.fromJson(data));
  }

  /**
   * Updates an annotation. The update must respect all mutability restrictions
   * and other invariants described on the annotation resource. Caller must have
   * WRITE permission for the associated dataset. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [annotationId] - The ID of the annotation set to be updated.
   *
   * Completes with a [Annotation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Annotation> patch(Annotation request, core.String annotationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (annotationId == null) {
      throw new core.ArgumentError("Parameter annotationId is required.");
    }


    _url = 'annotations/' + commons.Escaper.ecapeVariable('$annotationId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Annotation.fromJson(data));
  }

  /**
   * Searches for annotations that match the given criteria. Results are
   * returned ordered by start position. Annotations that have matching start
   * positions are ordered deterministically. Caller must have READ permission
   * for the queried annotation sets.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [SearchAnnotationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchAnnotationsResponse> search(SearchAnnotationsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'annotations/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchAnnotationsResponse.fromJson(data));
  }

  /**
   * Updates an annotation. The update must respect all mutability restrictions
   * and other invariants described on the annotation resource. Caller must have
   * WRITE permission for the associated dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [annotationId] - The ID of the annotation set to be updated.
   *
   * Completes with a [Annotation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Annotation> update(Annotation request, core.String annotationId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (annotationId == null) {
      throw new core.ArgumentError("Parameter annotationId is required.");
    }


    _url = 'annotations/' + commons.Escaper.ecapeVariable('$annotationId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Annotation.fromJson(data));
  }

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
   * this method  will complete with the same error.
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
   * [callSetId] - The ID of the call set to be deleted.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }

    _downloadOptions = null;

    _url = 'callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * [callSetId] - The ID of the call set.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * Completes with a [CallSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * Implements GlobalAllianceApi.searchCallSets.
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
   * this method  will complete with the same error.
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
   * [callSetId] - The ID of the call set to be updated.
   *
   * Completes with a [CallSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (callSetId == null) {
      throw new core.ArgumentError("Parameter callSetId is required.");
    }


    _url = 'callsets/' + commons.Escaper.ecapeVariable('$callSetId');

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
   * this method  will complete with the same error.
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _downloadOptions = null;

    _url = 'datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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
   * Lists datasets within a project.
   *
   * Request parameters:
   *
   * [pageSize] - The maximum number of results returned by this request. If
   * unspecified, defaults to 50.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of nextPageToken from the previous response.
   *
   * [projectNumber] - The project to list datasets for.
   *
   * Completes with a [ListDatasetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListDatasetsResponse> list({core.int pageSize, core.String pageToken, core.String projectNumber}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projectNumber != null) {
      _queryParams["projectNumber"] = [projectNumber];
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + commons.Escaper.ecapeVariable('$datasetId') + '/undelete';

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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }


    _url = 'datasets/' + commons.Escaper.ecapeVariable('$datasetId');

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


class ExperimentalResourceApi {
  final commons.ApiRequester _requester;

  ExperimentalJobsResourceApi get jobs => new ExperimentalJobsResourceApi(_requester);

  ExperimentalResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ExperimentalJobsResourceApi {
  final commons.ApiRequester _requester;

  ExperimentalJobsResourceApi(commons.ApiRequester client) : 
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
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


class JobsResourceApi {
  final commons.ApiRequester _requester;

  JobsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels a job by ID. Note that it is possible for partial results to be
   * generated and stored for cancelled jobs.
   *
   * Request parameters:
   *
   * [jobId] - Required. The ID of the job.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _downloadOptions = null;

    _url = 'jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/cancel';

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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = 'jobs/' + commons.Escaper.ecapeVariable('$jobId');

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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
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


class ReadgroupsetsResourceApi {
  final commons.ApiRequester _requester;

  ReadgroupsetsCoveragebucketsResourceApi get coveragebuckets => new ReadgroupsetsCoveragebucketsResourceApi(_requester);

  ReadgroupsetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Aligns read data from existing read group sets or files from Google Cloud
   * Storage. See the  alignment and variant calling documentation for more
   * details.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [AlignReadGroupSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AlignReadGroupSetsResponse> align(AlignReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readgroupsets/align';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AlignReadGroupSetsResponse.fromJson(data));
  }

  /**
   * Calls variants on read data from existing read group sets or files from
   * Google Cloud Storage. See the  alignment and variant calling documentation
   * for more details.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [CallReadGroupSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CallReadGroupSetsResponse> call(CallReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readgroupsets/call';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CallReadGroupSetsResponse.fromJson(data));
  }

  /**
   * Deletes a read group set.
   *
   * Request parameters:
   *
   * [readGroupSetId] - The ID of the read group set to be deleted. The caller
   * must have WRITE permissions to the dataset associated with this read group
   * set.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String readGroupSetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }

    _downloadOptions = null;

    _url = 'readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

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
   * Exports read group sets to a BAM file in Google Cloud Storage.
   *
   * Note that currently there may be some differences between exported BAM
   * files and the original BAM file at the time of import. In particular,
   * comments in the input file header will not be preserved, some custom tags
   * will be converted to strings, and original reference sequence order is not
   * necessarily preserved.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ExportReadGroupSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExportReadGroupSetsResponse> export(ExportReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readgroupsets/export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExportReadGroupSetsResponse.fromJson(data));
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
   * this method  will complete with the same error.
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


    _url = 'readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

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
   * information.
   *
   * Note that currently comments in the input file header are not imported and
   * some custom tags will be converted to strings, rather than preserving tag
   * types. The caller must have WRITE permissions to the dataset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ImportReadGroupSetsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImportReadGroupSetsResponse> import(ImportReadGroupSetsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'readgroupsets/import';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImportReadGroupSetsResponse.fromJson(data));
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
   * Completes with a [ReadGroupSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ReadGroupSet> patch(ReadGroupSet request, core.String readGroupSetId) {
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


    _url = 'readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

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
   * Searches for read group sets matching the criteria.
   *
   * Implements GlobalAllianceApi.searchReadGroupSets.
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
   * this method  will complete with the same error.
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


    _url = 'readgroupsets/search';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchReadGroupSetsResponse.fromJson(data));
  }

  /**
   * Updates a read group set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [readGroupSetId] - The ID of the read group set to be updated. The caller
   * must have WRITE permissions to the dataset associated with this read group
   * set.
   *
   * Completes with a [ReadGroupSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ReadGroupSet> update(ReadGroupSet request, core.String readGroupSetId) {
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


    _url = 'readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReadGroupSet.fromJson(data));
  }

}


class ReadgroupsetsCoveragebucketsResourceApi {
  final commons.ApiRequester _requester;

  ReadgroupsetsCoveragebucketsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists fixed width coverage buckets for a read group set, each of which
   * correspond to a range of a reference sequence. Each bucket summarizes
   * coverage information across its corresponding genomic range.
   *
   * Coverage is defined as the number of reads which are aligned to a given
   * base in the reference sequence. Coverage buckets are available at several
   * precomputed bucket widths, enabling retrieval of various coverage 'zoom
   * levels'. The caller must have READ permissions for the target read group
   * set.
   *
   * Request parameters:
   *
   * [readGroupSetId] - Required. The ID of the read group set over which
   * coverage is requested.
   *
   * [pageSize] - The maximum number of results to return in a single page. If
   * unspecified, defaults to 1024. The maximum value is 2048.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of nextPageToken from the previous response.
   *
   * [range_end] - The end position of the range on the reference, 0-based
   * exclusive. If specified, referenceName must also be specified.
   *
   * [range_referenceName] - The reference sequence name, for example chr1, 1,
   * or chrX.
   *
   * [range_start] - The start position of the range on the reference, 0-based
   * inclusive. If specified, referenceName must also be specified.
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListCoverageBucketsResponse> list(core.String readGroupSetId, {core.int pageSize, core.String pageToken, core.String range_end, core.String range_referenceName, core.String range_start, core.String targetBucketWidth}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (readGroupSetId == null) {
      throw new core.ArgumentError("Parameter readGroupSetId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (range_end != null) {
      _queryParams["range.end"] = [range_end];
    }
    if (range_referenceName != null) {
      _queryParams["range.referenceName"] = [range_referenceName];
    }
    if (range_start != null) {
      _queryParams["range.start"] = [range_start];
    }
    if (targetBucketWidth != null) {
      _queryParams["targetBucketWidth"] = [targetBucketWidth];
    }


    _url = 'readgroupsets/' + commons.Escaper.ecapeVariable('$readGroupSetId') + '/coveragebuckets';

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
   * aligned.
   *
   * If a target positional range is specified, search returns all reads whose
   * alignment to the reference genome overlap the range. A query which
   * specifies only read group set IDs yields all reads in those read group
   * sets, including unmapped reads.
   *
   * All reads returned (including reads on subsequent pages) are ordered by
   * genomic coordinate (reference sequence & position). Reads with equivalent
   * genomic coordinates are returned in a deterministic order.
   *
   * Implements GlobalAllianceApi.searchReads.
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
   * this method  will complete with the same error.
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


class ReferencesResourceApi {
  final commons.ApiRequester _requester;

  ReferencesBasesResourceApi get bases => new ReferencesBasesResourceApi(_requester);

  ReferencesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a reference.
   *
   * Implements GlobalAllianceApi.getReference.
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
   * this method  will complete with the same error.
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


    _url = 'references/' + commons.Escaper.ecapeVariable('$referenceId');

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
   * Searches for references which match the given criteria.
   *
   * Implements GlobalAllianceApi.searchReferences.
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
   * this method  will complete with the same error.
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


    _url = 'references/search';

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
   *
   * Implements GlobalAllianceApi.getReferenceBases.
   *
   * Request parameters:
   *
   * [referenceId] - The ID of the reference.
   *
   * [end] - The end position (0-based, exclusive) of this query. Defaults to
   * the length of this reference.
   *
   * [pageSize] - Specifies the maximum number of bases to return in a single
   * page.
   *
   * [pageToken] - The continuation token, which is used to page through large
   * result sets. To get the next page of results, set this parameter to the
   * value of nextPageToken from the previous response.
   *
   * [start] - The start position (0-based) of this query. Defaults to 0.
   *
   * Completes with a [ListBasesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListBasesResponse> list(core.String referenceId, {core.String end, core.int pageSize, core.String pageToken, core.String start}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (referenceId == null) {
      throw new core.ArgumentError("Parameter referenceId is required.");
    }
    if (end != null) {
      _queryParams["end"] = [end];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (start != null) {
      _queryParams["start"] = [start];
    }


    _url = 'references/' + commons.Escaper.ecapeVariable('$referenceId') + '/bases';

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
   * Gets a reference set.
   *
   * Implements GlobalAllianceApi.getReferenceSet.
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
   * this method  will complete with the same error.
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


    _url = 'referencesets/' + commons.Escaper.ecapeVariable('$referenceSetId');

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
   * Searches for reference sets which match the given criteria.
   *
   * Implements GlobalAllianceApi.searchReferenceSets.
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
   * this method  will complete with the same error.
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


    _url = 'referencesets/search';

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


class StreamingVariantStoreResourceApi {
  final commons.ApiRequester _requester;

  StreamingVariantStoreResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a stream of all the variants matching the search request, ordered
   * by reference name, position, and ID.
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
   * this method  will complete with the same error.
   */
  async.Future<Variant> streamvariants(StreamVariantsRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'streamingVariantStore/streamvariants';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variant.fromJson(data));
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
   * this method  will complete with the same error.
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }

    _downloadOptions = null;

    _url = 'variants/' + commons.Escaper.ecapeVariable('$variantId');

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
   * this method  will complete with the same error.
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


    _url = 'variants/' + commons.Escaper.ecapeVariable('$variantId');

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
   * Gets a list of variants matching the criteria.
   *
   * Implements GlobalAllianceApi.searchVariants.
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
   * this method  will complete with the same error.
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
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (variantId == null) {
      throw new core.ArgumentError("Parameter variantId is required.");
    }


    _url = 'variants/' + commons.Escaper.ecapeVariable('$variantId');

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


class VariantsetsResourceApi {
  final commons.ApiRequester _requester;

  VariantsetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the contents of a variant set. The variant set object is not
   * deleted.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant set to be deleted.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (variantSetId == null) {
      throw new core.ArgumentError("Parameter variantSetId is required.");
    }

    _downloadOptions = null;

    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

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
   * Completes with a [ExportVariantSetResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExportVariantSetResponse> export(ExportVariantSetRequest request, core.String variantSetId) {
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


    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId') + '/export';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExportVariantSetResponse.fromJson(data));
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
   * this method  will complete with the same error.
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


    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

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
   * Creates variant data by asynchronously importing the provided information.
   *
   * The variants for import will be merged with any existing data and each
   * other according to the behavior of mergeVariants. In particular, this means
   * for merged VCF variants that have conflicting INFO fields, some data will
   * be arbitrarily discarded. As a special case, for single-sample VCF files,
   * QUAL and FILTER fields will be moved to the call level; these are sometimes
   * interpreted in a call-specific context. Imported VCF headers are appended
   * to the metadata already in a variant set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - Required. The variant set to which variant data should be
   * imported.
   *
   * Completes with a [ImportVariantsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImportVariantsResponse> importVariants(ImportVariantsRequest request, core.String variantSetId) {
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


    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId') + '/importVariants';

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
   * Merges the given variants with existing variants. Each variant will be
   * merged with an existing variant that matches its reference sequence, start,
   * end, reference bases, and alternative bases. If no such variant exists, a
   * new one will be created.
   *
   * When variants are merged, the call information from the new variant is
   * added to the existing variant, and other fields (such as key/value pairs)
   * are discarded.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - The destination variant set.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future mergeVariants(MergeVariantsRequest request, core.String variantSetId) {
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

    _downloadOptions = null;

    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId') + '/mergeVariants';

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
   * Updates a variant set's metadata. All other modifications are silently
   * ignored. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant to be updated.
   *
   * Completes with a [VariantSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VariantSet> patch(VariantSet request, core.String variantSetId) {
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


    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

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
   * Returns a list of all variant sets matching search criteria.
   *
   * Implements GlobalAllianceApi.searchVariantSets.
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
   * this method  will complete with the same error.
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

  /**
   * Updates a variant set's metadata. All other modifications are silently
   * ignored.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [variantSetId] - The ID of the variant to be updated.
   *
   * Completes with a [VariantSet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<VariantSet> update(VariantSet request, core.String variantSetId) {
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


    _url = 'variantsets/' + commons.Escaper.ecapeVariable('$variantSetId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VariantSet.fromJson(data));
  }

}



/** The read group set align request. */
class AlignReadGroupSetsRequest {
  /**
   * The BAM source files for alignment. Exactly one of readGroupSetId,
   * bamSourceUris, interleavedFastqSource or pairedFastqSource must be
   * provided. The caller must have READ permissions for these files.
   */
  core.List<core.String> bamSourceUris;

  /**
   * Required. The ID of the dataset the newly aligned read group sets will
   * belong to. The caller must have WRITE permissions to this dataset.
   */
  core.String datasetId;

  /**
   * The interleaved FASTQ source files for alignment, where both members of
   * each pair of reads are found on consecutive records within the same FASTQ
   * file. Exactly one of readGroupSetId, bamSourceUris, interleavedFastqSource
   * or pairedFastqSource must be provided.
   */
  InterleavedFastqSource interleavedFastqSource;

  /**
   * The paired end FASTQ source files for alignment, where each member of a
   * pair of reads are found in separate files. Exactly one of readGroupSetId,
   * bamSourceUris, interleavedFastqSource or pairedFastqSource must be
   * provided.
   */
  PairedFastqSource pairedFastqSource;

  /**
   * The ID of the read group set which will be aligned. A new read group set
   * will be generated to hold the aligned data, the originals will not be
   * modified. The caller must have READ permissions for this read group set.
   * Exactly one of readGroupSetId, bamSourceUris, interleavedFastqSource or
   * pairedFastqSource must be provided.
   */
  core.String readGroupSetId;


  AlignReadGroupSetsRequest();

  AlignReadGroupSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bamSourceUris")) {
      bamSourceUris = _json["bamSourceUris"];
    }
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("interleavedFastqSource")) {
      interleavedFastqSource = new InterleavedFastqSource.fromJson(_json["interleavedFastqSource"]);
    }
    if (_json.containsKey("pairedFastqSource")) {
      pairedFastqSource = new PairedFastqSource.fromJson(_json["pairedFastqSource"]);
    }
    if (_json.containsKey("readGroupSetId")) {
      readGroupSetId = _json["readGroupSetId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bamSourceUris != null) {
      _json["bamSourceUris"] = bamSourceUris;
    }
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (interleavedFastqSource != null) {
      _json["interleavedFastqSource"] = (interleavedFastqSource).toJson();
    }
    if (pairedFastqSource != null) {
      _json["pairedFastqSource"] = (pairedFastqSource).toJson();
    }
    if (readGroupSetId != null) {
      _json["readGroupSetId"] = readGroupSetId;
    }
    return _json;
  }
}


/** The read group set align response. */
class AlignReadGroupSetsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  AlignReadGroupSetsResponse();

  AlignReadGroupSetsResponse.fromJson(core.Map _json) {
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
 * An annotation describes a region of reference genome. The value of an
 * annotation may be one of several canonical types, supplemented by arbitrary
 * info tags. A variant annotation is represented by one or more of these
 * canonical types. An annotation is not inherently associated with a specific
 * sample or individual (though a client could choose to use annotations in this
 * way). Example canonical annotation types are 'Gene' and 'Variant'.
 */
class Annotation {
  /** The ID of the containing annotation set. */
  core.String annotationSetId;

  /** The generated unique ID for this annotation. */
  core.String id;

  /** A map of additional data for this annotation. */
  core.Map<core.String, core.List<core.String>> info;

  /** The display name of this annotation. */
  core.String name;

  /** The position of this annotation on the reference sequence. */
  RangePosition position;

  /**
   * A transcript value represents the assertion that a particular region of the
   * reference genome may be transcribed as RNA. An alternative splicing pattern
   * would be represented as a separate transcript object. This field is only
   * set for annotations of type TRANSCRIPT.
   */
  Transcript transcript;

  /**
   * The data type for this annotation. Must match the containing annotation
   * set's type.
   * Possible string values are:
   * - "GENE"
   * - "GENERIC"
   * - "TRANSCRIPT"
   * - "VARIANT"
   */
  core.String type;

  /**
   * A variant annotation, which describes the effect of a variant on the
   * genome, the coding sequence, and/or higher level consequences at the
   * organism level e.g. pathogenicity. This field is only set for annotations
   * of type VARIANT.
   */
  VariantAnnotation variant;


  Annotation();

  Annotation.fromJson(core.Map _json) {
    if (_json.containsKey("annotationSetId")) {
      annotationSetId = _json["annotationSetId"];
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
    if (_json.containsKey("position")) {
      position = new RangePosition.fromJson(_json["position"]);
    }
    if (_json.containsKey("transcript")) {
      transcript = new Transcript.fromJson(_json["transcript"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("variant")) {
      variant = new VariantAnnotation.fromJson(_json["variant"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotationSetId != null) {
      _json["annotationSetId"] = annotationSetId;
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
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (transcript != null) {
      _json["transcript"] = (transcript).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (variant != null) {
      _json["variant"] = (variant).toJson();
    }
    return _json;
  }
}


/**
 * An annotation set is a logical grouping of annotations that share consistent
 * type information and provenance. Examples of annotation sets include 'all
 * genes from refseq', and 'all variant annotations from ClinVar'.
 */
class AnnotationSet {
  /** The ID of the containing dataset. */
  core.String datasetId;

  /** The generated unique ID for this annotation set. */
  core.String id;

  /** A map of additional data for this annotation set. */
  core.Map<core.String, core.List<core.String>> info;

  /** The display name for this annotation set. */
  core.String name;

  /**
   * The ID of the reference set that defines the coordinate space for this
   * set's annotations.
   */
  core.String referenceSetId;

  /**
   * The source URI describing the file from which this annotation set was
   * generated, if any.
   */
  core.String sourceUri;

  /**
   * The type of annotations contained within this set.
   * Possible string values are:
   * - "GENE"
   * - "GENERIC"
   * - "TRANSCRIPT"
   * - "VARIANT"
   */
  core.String type;


  AnnotationSet();

  AnnotationSet.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
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
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
    }
    if (_json.containsKey("sourceUri")) {
      sourceUri = _json["sourceUri"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
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
    if (info != null) {
      _json["info"] = info;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    if (sourceUri != null) {
      _json["sourceUri"] = sourceUri;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


class BatchAnnotationsResponse {
  /**
   * The resulting per-annotation entries, ordered consistently with the
   * original request.
   */
  core.List<BatchAnnotationsResponseEntry> entries;


  BatchAnnotationsResponse();

  BatchAnnotationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new BatchAnnotationsResponseEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


class BatchAnnotationsResponseEntry {
  /** The annotation, if any. */
  Annotation annotation;

  /** The resulting status for this annotation operation. */
  BatchAnnotationsResponseEntryStatus status;


  BatchAnnotationsResponseEntry();

  BatchAnnotationsResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("annotation")) {
      annotation = new Annotation.fromJson(_json["annotation"]);
    }
    if (_json.containsKey("status")) {
      status = new BatchAnnotationsResponseEntryStatus.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotation != null) {
      _json["annotation"] = (annotation).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}


class BatchAnnotationsResponseEntryStatus {
  /** The HTTP status code for this operation. */
  core.int code;

  /** Error message for this status, if any. */
  core.String message;


  BatchAnnotationsResponseEntryStatus();

  BatchAnnotationsResponseEntryStatus.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
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
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


class BatchCreateAnnotationsRequest {
  /**
   * The annotations to be created. At most 4096 can be specified in a single
   * request.
   */
  core.List<Annotation> annotations;


  BatchCreateAnnotationsRequest();

  BatchCreateAnnotationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("annotations")) {
      annotations = _json["annotations"].map((value) => new Annotation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotations != null) {
      _json["annotations"] = annotations.map((value) => (value).toJson()).toList();
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
   * defined by the GL tag in the VCF spec. If Phred-scaled genotype likelihood
   * scores (PL) are available and log10(P) genotype likelihood scores (GL) are
   * not, PL scores are converted to GL scores. If both are available, PL scores
   * are stored in info.
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


/** The read group set call request. */
class CallReadGroupSetsRequest {
  /**
   * Required. The ID of the dataset the called variants will belong to. The
   * caller must have WRITE permissions to this dataset.
   */
  core.String datasetId;

  /**
   * The IDs of the read group sets which will be called. The caller must have
   * READ permissions for these read group sets. One of readGroupSetId or
   * sourceUris must be provided.
   */
  core.String readGroupSetId;

  /**
   * A list of URIs pointing at BAM files in Google Cloud Storage which will be
   * called. FASTQ files are not allowed. The caller must have READ permissions
   * for these files. One of readGroupSetId or sourceUris must be provided.
   */
  core.List<core.String> sourceUris;


  CallReadGroupSetsRequest();

  CallReadGroupSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("readGroupSetId")) {
      readGroupSetId = _json["readGroupSetId"];
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
    if (readGroupSetId != null) {
      _json["readGroupSetId"] = readGroupSetId;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    return _json;
  }
}


/** The read group set call response. */
class CallReadGroupSetsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  CallReadGroupSetsResponse();

  CallReadGroupSetsResponse.fromJson(core.Map _json) {
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
 * A call set is a collection of variant calls, typically for one sample. It
 * belongs to a variant set.
 */
class CallSet {
  /** The date this call set was created in milliseconds from the epoch. */
  core.String created;

  /** The Google generated ID of the call set, immutable. */
  core.String id;

  /** A map of additional call set information. */
  core.Map<core.String, core.List<core.String>> info;

  /** The call set name. */
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


/** A single CIGAR operation. */
class CigarUnit {
  /**
   *
   * Possible string values are:
   * - "ALIGNMENT_MATCH"
   * - "CLIP_HARD"
   * - "CLIP_SOFT"
   * - "DELETE"
   * - "INSERT"
   * - "PAD"
   * - "SEQUENCE_MATCH"
   * - "SEQUENCE_MISMATCH"
   * - "SKIP"
   */
  core.String operation;

  /** The number of bases that the operation runs for. Required. */
  core.String operationLength;

  /**
   * referenceSequence is only used at mismatches (SEQUENCE_MISMATCH) and
   * deletions (DELETE). Filling this field replaces SAM's MD tag. If the
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
  core.String projectNumber;


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
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
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
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    return _json;
  }
}


/** The job creation request. */
class ExperimentalCreateJobRequest {
  /**
   * Specifies whether or not to run the alignment pipeline. Either align or
   * callVariants must be set.
   */
  core.bool align;

  /**
   * Specifies whether or not to run the variant calling pipeline. Either align
   * or callVariants must be set.
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
  core.String projectNumber;

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
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
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
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
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


/** The read group set export request. */
class ExportReadGroupSetsRequest {
  /**
   * A Google Cloud Storage URI for the exported BAM file. The currently
   * authenticated user must have write access to the new file. An error will be
   * returned if the URI already contains data.
   */
  core.String exportUri;

  /** The Google Developers Console project number that owns this export. */
  core.String projectNumber;

  /** The IDs of the read group sets to export. */
  core.List<core.String> readGroupSetIds;

  /**
   * The reference names to export. If this is not specified, all reference
   * sequences, including unmapped reads, are exported. Use * to export only
   * unmapped reads.
   */
  core.List<core.String> referenceNames;


  ExportReadGroupSetsRequest();

  ExportReadGroupSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("exportUri")) {
      exportUri = _json["exportUri"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("readGroupSetIds")) {
      readGroupSetIds = _json["readGroupSetIds"];
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
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (readGroupSetIds != null) {
      _json["readGroupSetIds"] = readGroupSetIds;
    }
    if (referenceNames != null) {
      _json["referenceNames"] = referenceNames;
    }
    return _json;
  }
}


/** The read group set export response. */
class ExportReadGroupSetsResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ExportReadGroupSetsResponse();

  ExportReadGroupSetsResponse.fromJson(core.Map _json) {
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
class ExportVariantSetRequest {
  /**
   * The BigQuery dataset to export data to. Note that this is distinct from the
   * Genomics concept of "dataset".
   */
  core.String bigqueryDataset;

  /**
   * The BigQuery table to export data to. If the table doesn't exist, it will
   * be created. If it already exists, it will be overwritten.
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
   * - "BIGQUERY"
   */
  core.String format;

  /**
   * The Google Cloud project number that owns the destination BigQuery dataset.
   * The caller must have WRITE access to this project. This project will also
   * own the resulting export job.
   */
  core.String projectNumber;


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
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
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
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    return _json;
  }
}


/** The variant data export response. */
class ExportVariantSetResponse {
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ExportVariantSetResponse();

  ExportVariantSetResponse.fromJson(core.Map _json) {
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


class ExternalId {
  /** The id used by the source of this data. */
  core.String id;

  /** The name of the source of this data. */
  core.String sourceName;


  ExternalId();

  ExternalId.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("sourceName")) {
      sourceName = _json["sourceName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (sourceName != null) {
      _json["sourceName"] = sourceName;
    }
    return _json;
  }
}


class FastqMetadata {
  /** Optionally specifies the library name for alignment from FASTQ. */
  core.String libraryName;

  /**
   * Optionally specifies the platform name for alignment from FASTQ. For
   * example: CAPILLARY, LS454, ILLUMINA, SOLID, HELICOS, IONTORRENT, PACBIO.
   */
  core.String platformName;

  /**
   * Optionally specifies the platform unit for alignment from FASTQ. For
   * example: flowcell-barcode.lane for Illumina or slide for SOLID.
   */
  core.String platformUnit;

  /** Optionally specifies the read group name for alignment from FASTQ. */
  core.String readGroupName;

  /** Optionally specifies the sample name for alignment from FASTQ. */
  core.String sampleName;


  FastqMetadata();

  FastqMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("libraryName")) {
      libraryName = _json["libraryName"];
    }
    if (_json.containsKey("platformName")) {
      platformName = _json["platformName"];
    }
    if (_json.containsKey("platformUnit")) {
      platformUnit = _json["platformUnit"];
    }
    if (_json.containsKey("readGroupName")) {
      readGroupName = _json["readGroupName"];
    }
    if (_json.containsKey("sampleName")) {
      sampleName = _json["sampleName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (libraryName != null) {
      _json["libraryName"] = libraryName;
    }
    if (platformName != null) {
      _json["platformName"] = platformName;
    }
    if (platformUnit != null) {
      _json["platformUnit"] = platformUnit;
    }
    if (readGroupName != null) {
      _json["readGroupName"] = readGroupName;
    }
    if (sampleName != null) {
      _json["sampleName"] = sampleName;
    }
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
   * - "MERGE_ALL"
   * - "PER_FILE_PER_SAMPLE"
   */
  core.String partitionStrategy;

  /**
   * The reference set to which the imported read group sets are aligned to, if
   * any. The reference names of this reference set must be a superset of those
   * found in the imported file headers. If no reference set id is provided, a
   * best effort is made to associate with a matching reference set.
   */
  core.String referenceSetId;

  /** A list of URIs pointing at BAM files in Google Cloud Storage. */
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
  /** A job ID that can be used to get status information. */
  core.String jobId;


  ImportReadGroupSetsResponse();

  ImportReadGroupSetsResponse.fromJson(core.Map _json) {
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
   * - "COMPLETE_GENOMICS"
   * - "VCF"
   */
  core.String format;

  /**
   * A list of URIs pointing at VCF files in Google Cloud Storage. See the VCF
   * Specification for more details on the input format.
   */
  core.List<core.String> sourceUris;


  ImportVariantsRequest();

  ImportVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
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


/** Wrapper message for int32. */
class Int32Value {
  /** The int32 value. */
  core.int value;


  Int32Value();

  Int32Value.fromJson(core.Map _json) {
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Describes an interleaved FASTQ file source for alignment. */
class InterleavedFastqSource {
  /**
   * Optionally specifies the metadata to be associated with the final aligned
   * read group set.
   */
  FastqMetadata metadata;

  /**
   * A list of URIs pointing at interleaved FASTQ files in Google Cloud Storage
   * which will be aligned. The caller must have READ permissions for these
   * files.
   */
  core.List<core.String> sourceUris;


  InterleavedFastqSource();

  InterleavedFastqSource.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = new FastqMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
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
  core.String detailedStatus;

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
  core.String projectNumber;

  /** A summarized representation of the original service request. */
  JobRequest request;

  /**
   * The status of this job.
   * Possible string values are:
   * - "CANCELED"
   * - "FAILURE"
   * - "NEW"
   * - "PENDING"
   * - "RUNNING"
   * - "SUCCESS"
   * - "UNKNOWN_STATUS"
   */
  core.String status;

  /** Any warnings that occurred during processing. */
  core.List<core.String> warnings;


  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("created")) {
      created = _json["created"];
    }
    if (_json.containsKey("detailedStatus")) {
      detailedStatus = _json["detailedStatus"];
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
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
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
    if (detailedStatus != null) {
      _json["detailedStatus"] = detailedStatus;
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
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
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
   * - "ALIGN_READSETS"
   * - "CALL_READSETS"
   * - "EXPERIMENTAL_CREATE_JOB"
   * - "EXPORT_READSETS"
   * - "EXPORT_VARIANTS"
   * - "IMPORT_READSETS"
   * - "IMPORT_VARIANTS"
   * - "UNKNOWN_TYPE"
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
   * The offset position (0-based) of the given sequence from the start of this
   * Reference. This value will differ for each page in a paginated request.
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


class MergeVariantsRequest {
  /** The variants to be merged with existing variants. */
  core.List<Variant> variants;


  MergeVariantsRequest();

  MergeVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("variants")) {
      variants = _json["variants"].map((value) => new Variant.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (variants != null) {
      _json["variants"] = variants.map((value) => (value).toJson()).toList();
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
   * - "CHARACTER"
   * - "FLAG"
   * - "FLOAT"
   * - "INTEGER"
   * - "STRING"
   * - "UNKNOWN_TYPE"
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


/** Describes a paired-end FASTQ file source for alignment. */
class PairedFastqSource {
  /**
   * A list of URIs pointing at paired end FASTQ files in Google Cloud Storage
   * which will be aligned. The first of each paired file should be specified
   * here, in an order that matches the second of each paired file specified in
   * secondSourceUris. For example: firstSourceUris: [file1_1.fq, file2_1.fq],
   * secondSourceUris: [file1_2.fq, file2_2.fq]. The caller must have READ
   * permissions for these files.
   */
  core.List<core.String> firstSourceUris;

  /**
   * Optionally specifies the metadata to be associated with the final aligned
   * read group set.
   */
  FastqMetadata metadata;

  /**
   * A list of URIs pointing at paired end FASTQ files in Google Cloud Storage
   * which will be aligned. The second of each paired file should be specified
   * here, in an order that matches the first of each paired file specified in
   * firstSourceUris. For example: firstSourceUris: [file1_1.fq, file2_1.fq],
   * secondSourceUris: [file1_2.fq, file2_2.fq]. The caller must have READ
   * permissions for these files.
   */
  core.List<core.String> secondSourceUris;


  PairedFastqSource();

  PairedFastqSource.fromJson(core.Map _json) {
    if (_json.containsKey("firstSourceUris")) {
      firstSourceUris = _json["firstSourceUris"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new FastqMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("secondSourceUris")) {
      secondSourceUris = _json["secondSourceUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstSourceUris != null) {
      _json["firstSourceUris"] = firstSourceUris;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (secondSourceUris != null) {
      _json["secondSourceUris"] = secondSourceUris;
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


/** A 0-based half-open genomic coordinate range for search requests. */
class QueryRange {
  /**
   * The end position of the range on the reference, 0-based exclusive. If
   * specified, referenceId or referenceName must also be specified. If unset or
   * 0, defaults to the length of the reference.
   */
  core.String end;

  /**
   * The ID of the reference to query. At most one of referenceId and
   * referenceName should be specified.
   */
  core.String referenceId;

  /**
   * The name of the reference to query, within the reference set associated
   * with this query. At most one of referenceId and referenceName pshould be
   * specified.
   */
  core.String referenceName;

  /**
   * The start position of the range on the reference, 0-based inclusive. If
   * specified, referenceId or referenceName must also be specified. Defaults to
   * 0.
   */
  core.String start;


  QueryRange();

  QueryRange.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("referenceId")) {
      referenceId = _json["referenceId"];
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
    if (referenceId != null) {
      _json["referenceId"] = referenceId;
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


/** A 0-based half-open genomic coordinate range over a reference sequence. */
class Range {
  /**
   * The end position of the range on the reference, 0-based exclusive. If
   * specified, referenceName must also be specified.
   */
  core.String end;

  /** The reference sequence name, for example chr1, 1, or chrX. */
  core.String referenceName;

  /**
   * The start position of the range on the reference, 0-based inclusive. If
   * specified, referenceName must also be specified.
   */
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
 * A 0-based half-open genomic coordinate range over a reference sequence, for
 * representing the position of a genomic resource.
 */
class RangePosition {
  /** The end position of the range on the reference, 0-based exclusive. */
  core.String end;

  /** The ID of the Google Genomics reference associated with this range. */
  core.String referenceId;

  /**
   * The display name corresponding to the reference specified by referenceId,
   * for example chr1, 1, or chrX.
   */
  core.String referenceName;

  /**
   * Whether this range refers to the reverse strand, as opposed to the forward
   * strand. Note that regardless of this field, the start/end position of the
   * range always refer to the forward strand.
   */
  core.bool reverseStrand;

  /** The start position of the range on the reference, 0-based inclusive. */
  core.String start;


  RangePosition();

  RangePosition.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("referenceId")) {
      referenceId = _json["referenceId"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("reverseStrand")) {
      reverseStrand = _json["reverseStrand"];
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
    if (referenceId != null) {
      _json["referenceId"] = referenceId;
    }
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (reverseStrand != null) {
      _json["reverseStrand"] = reverseStrand;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}


/**
 * A read alignment describes a linear alignment of a string of DNA to a
 * reference sequence, in addition to metadata about the fragment (the molecule
 * of DNA sequenced) and the read (the bases which were read by the sequencer).
 * A read is equivalent to a line in a SAM file. A read belongs to exactly one
 * read group and exactly one read group set. Generating a reference-aligned
 * sequence string When interacting with mapped reads, it's often useful to
 * produce a string representing the local alignment of the read to reference.
 * The following pseudocode demonstrates one way of doing this:
 * out = "" offset = 0 for c in read.alignment.cigar { switch c.operation { case
 * "ALIGNMENT_MATCH", "SEQUENCE_MATCH", "SEQUENCE_MISMATCH": out +=
 * read.alignedSequence[offset:offset+c.operationLength] offset +=
 * c.operationLength break case "CLIP_SOFT", "INSERT": offset +=
 * c.operationLength break case "PAD": out += repeat("*", c.operationLength)
 * break case "DELETE": out += repeat("-", c.operationLength) break case "SKIP":
 * out += repeat(" ", c.operationLength) break case "CLIP_HARD": break } }
 * return out
 * Converting to SAM's CIGAR string The following pseudocode generates a SAM
 * CIGAR string from the cigar field. Note that this is a lossy conversion
 * (cigar.referenceSequence is lost).
 * cigarMap = { "ALIGNMENT_MATCH": "M", "INSERT": "I", "DELETE": "D", "SKIP":
 * "N", "CLIP_SOFT": "S", "CLIP_HARD": "H", "PAD": "P", "SEQUENCE_MATCH": "=",
 * "SEQUENCE_MISMATCH": "X", } cigarStr = "" for c in read.alignment.cigar {
 * cigarStr += c.operationLength + cigarMap[c.operation] } return cigarStr
 */
class Read {
  /**
   * The quality of the read sequence contained in this alignment record.
   * alignedSequence and alignedQuality may be shorter than the full read
   * sequence and quality. This will occur if the alignment is part of a
   * chimeric alignment, or if the read was trimmed. When this occurs, the CIGAR
   * for this read will begin/end with a hard clip operator that will indicate
   * the length of the excised sequence.
   */
  core.List<core.int> alignedQuality;

  /**
   * The bases of the read sequence contained in this alignment record, without
   * CIGAR operations applied. alignedSequence and alignedQuality may be shorter
   * than the full read sequence and quality. This will occur if the alignment
   * is part of a chimeric alignment, or if the read was trimmed. When this
   * occurs, the CIGAR for this read will begin/end with a hard clip operator
   * that will indicate the length of the excised sequence.
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
   * The unique ID for this read. This is a generated unique ID, not to be
   * confused with fragmentName.
   */
  core.String id;

  /** A map of additional read alignment information. */
  core.Map<core.String, core.List<core.String>> info;

  /**
   * The mapping of the primary alignment of the (readNumber+1)%numberReads read
   * in the fragment. It replaces mate position and mate strand in SAM.
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
   * has one and only one alignment where both secondaryAlignment and
   * supplementaryAlignment are false.
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
   * clipped. The alignedSequence and alignedQuality fields in the alignment
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
  ReadGroupExperiment experiment;

  /**
   * The generated unique read group ID. Note: This is different than the @RG ID
   * field in the SAM spec. For that value, see the name field.
   */
  core.String id;

  /** A map of additional read group information. */
  core.Map<core.String, core.List<core.String>> info;

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
  core.List<ReadGroupProgram> programs;

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
      experiment = new ReadGroupExperiment.fromJson(_json["experiment"]);
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
      programs = _json["programs"].map((value) => new ReadGroupProgram.fromJson(value)).toList();
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


class ReadGroupExperiment {
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
   */
  core.String platformUnit;

  /** The sequencing center used as part of this experiment. */
  core.String sequencingCenter;


  ReadGroupExperiment();

  ReadGroupExperiment.fromJson(core.Map _json) {
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


class ReadGroupProgram {
  /** The command line used to run this program. */
  core.String commandLine;

  /**
   * The user specified locally unique ID of the program. Used along with
   * prevProgramId to define an ordering between programs.
   */
  core.String id;

  /** The name of the program. */
  core.String name;

  /** The ID of the program run before this one. */
  core.String prevProgramId;

  /** The version of the program run. */
  core.String version;


  ReadGroupProgram();

  ReadGroupProgram.fromJson(core.Map _json) {
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
 * A read group set is a logical collection of read groups, which are
 * collections of reads produced by a sequencer. A read group set typically
 * models reads corresponding to one sample, sequenced one way, and aligned one
 * way.
 * - A read group set belongs to one dataset.
 * - A read group belongs to one read group set.
 * - A read belongs to one read group.
 */
class ReadGroupSet {
  /** The dataset ID. */
  core.String datasetId;

  /**
   * The filename of the original source file for this read group set, if any.
   */
  core.String filename;

  /** The read group set ID. */
  core.String id;

  /** A map of additional read group set information. */
  core.Map<core.String, core.List<core.String>> info;

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
  /** The Google generated immutable ID of the reference. */
  core.String id;

  /** The length of this reference's sequence. */
  core.String length;

  /**
   * MD5 of the upper-case sequence excluding all whitespace characters (this is
   * equivalent to SQ:M5 in SAM). This value is represented in lower case
   * hexadecimal format.
   */
  core.String md5checksum;

  /** The name of this reference, for example 22. */
  core.String name;

  /**
   * ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) if not
   * specified by the containing reference set.
   */
  core.int ncbiTaxonId;

  /**
   * All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally
   * with a version number, for example GCF_000001405.26.
   */
  core.List<core.String> sourceAccessions;

  /**
   * The URI from which the sequence was obtained. Specifies a FASTA format
   * file/string with one name, sequence pair.
   */
  core.String sourceURI;


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
    if (_json.containsKey("sourceURI")) {
      sourceURI = _json["sourceURI"];
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
    if (sourceURI != null) {
      _json["sourceURI"] = sourceURI;
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
 * assembly for a species, such as GRCh38 which is representative of the human
 * genome. A reference set defines a common coordinate space for comparing
 * reference-aligned experimental data. A reference set contains 1 or more
 * references.
 */
class ReferenceSet {
  /** Public id of this reference set, such as GRCh37. */
  core.String assemblyId;

  /** Free text description of this reference set. */
  core.String description;

  /** The Google generated immutable ID of the reference set. */
  core.String id;

  /**
   * Order-independent MD5 checksum which identifies this reference set. The
   * checksum is computed by sorting all lower case hexidecimal string
   * reference.md5checksum (for all reference in this set) in ascending
   * lexicographic order, concatenating, and taking the MD5 of that value. The
   * resulting value is represented in lower case hexadecimal format.
   */
  core.String md5checksum;

  /**
   * ID from http://www.ncbi.nlm.nih.gov/taxonomy (e.g. 9606->human) indicating
   * the species which this assembly is intended to model. Note that contained
   * references may specify a different ncbiTaxonId, as assemblies may contain
   * reference sequences which do not belong to the modeled species, e.g. EBV in
   * a human reference genome.
   */
  core.int ncbiTaxonId;

  /**
   * The IDs of the reference objects that are part of this set.
   * Reference.md5checksum must be unique within this set.
   */
  core.List<core.String> referenceIds;

  /**
   * All known corresponding accession IDs in INSDC (GenBank/ENA/DDBJ) ideally
   * with a version number, for example NC_000001.11.
   */
  core.List<core.String> sourceAccessions;

  /** The URI from which the references were obtained. */
  core.String sourceURI;


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
    if (_json.containsKey("sourceURI")) {
      sourceURI = _json["sourceURI"];
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
    if (sourceURI != null) {
      _json["sourceURI"] = sourceURI;
    }
    return _json;
  }
}


class SearchAnnotationSetsRequest {
  /**
   * The dataset IDs to search within. Caller must have READ access to these
   * datasets.
   */
  core.List<core.String> datasetIds;

  /**
   * Only return annotations sets for which a substring of the name matches this
   * string (case insensitive).
   */
  core.String name;

  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 128. The maximum value is 1024.
   */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * If specified, only annotation sets associated with the given reference set
   * are returned.
   */
  core.String referenceSetId;

  /**
   * If specified, only annotation sets that have any of these types are
   * returned.
   */
  core.List<core.String> types;


  SearchAnnotationSetsRequest();

  SearchAnnotationSetsRequest.fromJson(core.Map _json) {
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
    if (_json.containsKey("referenceSetId")) {
      referenceSetId = _json["referenceSetId"];
    }
    if (_json.containsKey("types")) {
      types = _json["types"];
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
    if (referenceSetId != null) {
      _json["referenceSetId"] = referenceSetId;
    }
    if (types != null) {
      _json["types"] = types;
    }
    return _json;
  }
}


class SearchAnnotationSetsResponse {
  /** The matching annotation sets. */
  core.List<AnnotationSet> annotationSets;

  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;


  SearchAnnotationSetsResponse();

  SearchAnnotationSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("annotationSets")) {
      annotationSets = _json["annotationSets"].map((value) => new AnnotationSet.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotationSets != null) {
      _json["annotationSets"] = annotationSets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


class SearchAnnotationsRequest {
  /**
   * The annotation sets to search within. The caller must have READ access to
   * these annotation sets. Required. All queried annotation sets must have the
   * same type.
   */
  core.List<core.String> annotationSetIds;

  /**
   * Specifies number of results to return in a single page. If unspecified, it
   * will default to 256. The maximum value is 2048.
   */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * If specified, this query matches only annotations that overlap this range.
   */
  QueryRange range;


  SearchAnnotationsRequest();

  SearchAnnotationsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("annotationSetIds")) {
      annotationSetIds = _json["annotationSetIds"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("range")) {
      range = new QueryRange.fromJson(_json["range"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotationSetIds != null) {
      _json["annotationSetIds"] = annotationSetIds;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}


class SearchAnnotationsResponse {
  /** The matching annotations. */
  core.List<Annotation> annotations;

  /**
   * The continuation token, which is used to page through large result sets.
   * Provide this value in a subsequent request to return the next page of
   * results. This field will be empty if there aren't any additional results.
   */
  core.String nextPageToken;


  SearchAnnotationsResponse();

  SearchAnnotationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("annotations")) {
      annotations = _json["annotations"].map((value) => new Annotation.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotations != null) {
      _json["annotations"] = annotations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
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
  core.int pageSize;

  /**
   * The continuation token which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of the
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * Required. Only return jobs which belong to this Google Developers Console
   * project.
   */
  core.String projectNumber;

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
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
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
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
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
   * nextPageToken from the previous response.
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
   * specified, referenceName must also be specified.
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
   * nextPageToken from the previous response.
   */
  core.String pageToken;

  /**
   * The IDs of the read groups within which to search for reads. All specified
   * read groups must belong to the same read group sets. Must specify one of
   * readGroupSetIds or readGroupIds.
   */
  core.List<core.String> readGroupIds;

  /**
   * The IDs of the read groups sets within which to search for reads. All
   * specified read group sets must be aligned against a common set of reference
   * sequences; this defines the genomic coordinates for the query. Must specify
   * one of readGroupSetIds or readGroupIds.
   */
  core.List<core.String> readGroupSetIds;

  /**
   * The reference sequence name, for example chr1, 1, or chrX. If set to *,
   * only unmapped reads are returned.
   */
  core.String referenceName;

  /**
   * The start position of the range on the reference, 0-based inclusive. If
   * specified, referenceName must also be specified.
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
   * have no position, are returned last and are further sorted in ascending
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
   * strings. Best to give a version number, for example GCF_000001405.26. If
   * only the main accession number is given then all records with that main
   * accession will be returned, whichever version. Note that different versions
   * will have different sequences.
   */
  core.List<core.String> accessions;

  /**
   * If present, return reference sets for which a substring of their assemblyId
   * matches this string (case insensitive).
   */
  core.String assemblyId;

  /**
   * If present, return references for which the md5checksum matches. See
   * ReferenceSet.md5checksum for details.
   */
  core.List<core.String> md5checksums;

  /** Specifies the maximum number of results to return in a single page. */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
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
   * Best to give a version number, for example GCF_000001405.26. If only the
   * main accession number is given then all records with that main accession
   * will be returned, whichever version. Note that different versions will have
   * different sequences.
   */
  core.List<core.String> accessions;

  /**
   * If present, return references for which the md5checksum matches. See
   * Reference.md5checksum for construction details.
   */
  core.List<core.String> md5checksums;

  /** Specifies the maximum number of results to return in a single page. */
  core.int pageSize;

  /**
   * The continuation token, which is used to page through large result sets. To
   * get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
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
   * this blank returns all variant calls. If a variant has no calls belonging
   * to any of these call sets, it won't be returned at all. Currently, variants
   * with no calls from any call set will never be returned.
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


/** The stream variants request. */
class StreamVariantsRequest {
  /**
   * Only return variant calls which belong to call sets with these ids. Leaving
   * this blank returns all variant calls.
   */
  core.List<core.String> callSetIds;

  /**
   * The end of the window (0-based, exclusive) for which overlapping variants
   * should be returned.
   */
  core.String end;

  /** Required. Only return variants in this reference sequence. */
  core.String referenceName;

  /**
   * The beginning of the window (0-based, inclusive) for which overlapping
   * variants should be returned.
   */
  core.String start;

  /**
   * Exactly one variant set ID must be provided. Only variants from this
   * variant set will be returned.
   */
  core.List<core.String> variantSetIds;


  StreamVariantsRequest();

  StreamVariantsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("callSetIds")) {
      callSetIds = _json["callSetIds"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("referenceName")) {
      referenceName = _json["referenceName"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
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
    if (referenceName != null) {
      _json["referenceName"] = referenceName;
    }
    if (start != null) {
      _json["start"] = start;
    }
    if (variantSetIds != null) {
      _json["variantSetIds"] = variantSetIds;
    }
    return _json;
  }
}


/**
 * A transcript represents the assertion that a particular region of the
 * reference genome may be transcribed as RNA.
 */
class Transcript {
  /**
   * The range of the coding sequence for this transcript, if any. To determine
   * the exact ranges of coding sequence, intersect this range with those of the
   * exons, if any. If there are any exons, the codingSequence must start and
   * end within them.
   *
   * Note that in some cases, the reference genome will not exactly match the
   * observed mRNA transcript e.g. due to variance in the source genome from
   * reference. In these cases, exon.frame will not necessarily match the
   * expected reference reading frame and coding exon reference bases cannot
   * necessarily be concatenated to produce the original transcript mRNA.
   */
  TranscriptCodingSequence codingSequence;

  /**
   * The exons that compose this transcript. This field should be unset for
   * genomes where transcript splicing does not occur, for example prokaryotes.
   *
   *
   * Introns are regions of the transcript that are not included in the spliced
   * RNA product. Though not explicitly modeled here, intron ranges can be
   * deduced; all regions of this transcript that are not exons are introns.
   *
   *
   * Exonic sequences do not necessarily code for a translational product (amino
   * acids). Only the regions of exons bounded by the codingSequence correspond
   * to coding DNA sequence.
   *
   *
   * Exons are ordered by start position and may not overlap.
   */
  core.List<TranscriptExon> exons;

  /**
   * The annotation ID of the gene from which this transcript is transcribed.
   */
  core.String geneId;


  Transcript();

  Transcript.fromJson(core.Map _json) {
    if (_json.containsKey("codingSequence")) {
      codingSequence = new TranscriptCodingSequence.fromJson(_json["codingSequence"]);
    }
    if (_json.containsKey("exons")) {
      exons = _json["exons"].map((value) => new TranscriptExon.fromJson(value)).toList();
    }
    if (_json.containsKey("geneId")) {
      geneId = _json["geneId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (codingSequence != null) {
      _json["codingSequence"] = (codingSequence).toJson();
    }
    if (exons != null) {
      _json["exons"] = exons.map((value) => (value).toJson()).toList();
    }
    if (geneId != null) {
      _json["geneId"] = geneId;
    }
    return _json;
  }
}


class TranscriptCodingSequence {
  /**
   * The end of the coding sequence on this annotation's reference sequence,
   * 0-based exclusive. Note that this position is relative to the reference
   * start, and not the containing annotation start.
   */
  core.String end;

  /**
   * The start of the coding sequence on this annotation's reference sequence,
   * 0-based inclusive. Note that this position is relative to the reference
   * start, and not the containing annotation start.
   */
  core.String start;


  TranscriptCodingSequence();

  TranscriptCodingSequence.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
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
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}


class TranscriptExon {
  /**
   * The end position of the exon on this annotation's reference sequence,
   * 0-based exclusive. Note that this is relative to the reference start, and
   * not the containing annotation start.
   */
  core.String end;

  /**
   * The frame of this exon. Contains a value of 0, 1, or 2, which indicates the
   * offset of the first coding base of the exon within the reading frame of the
   * coding DNA sequence, if any. This field is dependent on the strandedness of
   * this annotation (see Annotation.position.reverseStrand). For forward
   * stranded annotations, this offset is relative to the exon.start. For
   * reverse strand annotations, this offset is relative to the exon.end-1.
   *
   * Unset if this exon does not intersect the coding sequence. Upon creation of
   * a transcript, the frame must be populated for all or none of the coding
   * exons.
   */
  Int32Value frame;

  /**
   * The start position of the exon on this annotation's reference sequence,
   * 0-based inclusive. Note that this is relative to the reference start, and
   * not the containing annotation start.
   */
  core.String start;


  TranscriptExon();

  TranscriptExon.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("frame")) {
      frame = new Int32Value.fromJson(_json["frame"]);
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
    if (frame != null) {
      _json["frame"] = (frame).toJson();
    }
    if (start != null) {
      _json["start"] = start;
    }
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

  /**
   * A list of filters (normally quality filters) this variant has failed. PASS
   * indicates this variant has passed all filters.
   */
  core.List<core.String> filter;

  /** The Google generated ID of the variant, immutable. */
  core.String id;

  /** A map of additional variant information. */
  core.Map<core.String, core.List<core.String>> info;

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


/** A Variant annotation. */
class VariantAnnotation {
  /**
   * The alternate allele for this variant. If multiple alternate alleles exist
   * at this location, create a separate variant for each one, as they may
   * represent distinct conditions.
   */
  core.String alternateBases;

  /**
   * Describes the clinical significance of a variant. It is adapted from the
   * ClinVar controlled vocabulary for clinical significance described at:
   * http://www.ncbi.nlm.nih.gov/clinvar/docs/clinsig/
   * Possible string values are:
   * - "ASSOCIATION"
   * - "BENIGN"
   * - "CLINICAL_SIGNIFICANCE_UNSPECIFIED"
   * - "CONFERS_SENSITIVITY"
   * - "DRUG_RESPONSE"
   * - "HISTOCOMPATIBILITY"
   * - "LIKELY_BENIGN"
   * - "LIKELY_PATHOGENIC"
   * - "MULTIPLE_REPORTED"
   * - "OTHER"
   * - "PATHOGENIC"
   * - "PROTECTIVE"
   * - "RISK_FACTOR"
   * - "UNCERTAIN"
   */
  core.String clinicalSignificance;

  /**
   * The set of conditions associated with this variant. A condition describes
   * the way a variant influences human health.
   */
  core.List<VariantAnnotationCondition> conditions;

  /**
   * Effect of the variant on the coding sequence.
   * Possible string values are:
   * - "EFFECT_UNSPECIFIED"
   * - "FRAMESHIFT"
   * - "FRAME_PRESERVING_INDEL"
   * - "NONSYNONYMOUS_SNP"
   * - "OTHER"
   * - "SPLICE_SITE_DISRUPTION"
   * - "STOP_GAIN"
   * - "STOP_LOSS"
   * - "SYNONYMOUS_SNP"
   */
  core.String effect;

  /**
   * Google annotation ID of the gene affected by this variant. This should be
   * provided when the variant is created.
   */
  core.String geneId;

  /**
   * Google annotation IDs of the transcripts affected by this variant. These
   * should be provided when the variant is created.
   */
  core.List<core.String> transcriptIds;

  /**
   * Type has been adapted from ClinVar's list of variant types.
   * Possible string values are:
   * - "CNV"
   * - "DELETION"
   * - "INSERTION"
   * - "OTHER"
   * - "SNP"
   * - "STRUCTURAL"
   * - "SUBSTITUTION"
   * - "TYPE_UNSPECIFIED"
   */
  core.String type;


  VariantAnnotation();

  VariantAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("alternateBases")) {
      alternateBases = _json["alternateBases"];
    }
    if (_json.containsKey("clinicalSignificance")) {
      clinicalSignificance = _json["clinicalSignificance"];
    }
    if (_json.containsKey("conditions")) {
      conditions = _json["conditions"].map((value) => new VariantAnnotationCondition.fromJson(value)).toList();
    }
    if (_json.containsKey("effect")) {
      effect = _json["effect"];
    }
    if (_json.containsKey("geneId")) {
      geneId = _json["geneId"];
    }
    if (_json.containsKey("transcriptIds")) {
      transcriptIds = _json["transcriptIds"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alternateBases != null) {
      _json["alternateBases"] = alternateBases;
    }
    if (clinicalSignificance != null) {
      _json["clinicalSignificance"] = clinicalSignificance;
    }
    if (conditions != null) {
      _json["conditions"] = conditions.map((value) => (value).toJson()).toList();
    }
    if (effect != null) {
      _json["effect"] = effect;
    }
    if (geneId != null) {
      _json["geneId"] = geneId;
    }
    if (transcriptIds != null) {
      _json["transcriptIds"] = transcriptIds;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


class VariantAnnotationCondition {
  /**
   * The MedGen concept id associated with this gene. Search for these IDs at
   * http://www.ncbi.nlm.nih.gov/medgen/
   */
  core.String conceptId;

  /** The set of external IDs for this condition. */
  core.List<ExternalId> externalIds;

  /** A set of names for the condition. */
  core.List<core.String> names;

  /**
   * The OMIM id for this condition. Search for these IDs at http://omim.org/
   */
  core.String omimId;


  VariantAnnotationCondition();

  VariantAnnotationCondition.fromJson(core.Map _json) {
    if (_json.containsKey("conceptId")) {
      conceptId = _json["conceptId"];
    }
    if (_json.containsKey("externalIds")) {
      externalIds = _json["externalIds"].map((value) => new ExternalId.fromJson(value)).toList();
    }
    if (_json.containsKey("names")) {
      names = _json["names"];
    }
    if (_json.containsKey("omimId")) {
      omimId = _json["omimId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (conceptId != null) {
      _json["conceptId"] = conceptId;
    }
    if (externalIds != null) {
      _json["externalIds"] = externalIds.map((value) => (value).toJson()).toList();
    }
    if (names != null) {
      _json["names"] = names;
    }
    if (omimId != null) {
      _json["omimId"] = omimId;
    }
    return _json;
  }
}


/**
 * A variant set is a collection of call sets and variants. It contains summary
 * statistics of those contents. A variant set belongs to a dataset.
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
