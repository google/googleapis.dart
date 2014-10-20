library googleapis.mapsengine.v1;

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

/**
 * The Google Maps Engine API allows developers to store and query geospatial
 * vector and raster data.
 */
class MapsengineApi {
  /** View and manage your Google Maps Engine data */
  static const MapsengineScope = "https://www.googleapis.com/auth/mapsengine";

  /** View your Google Maps Engine data */
  static const MapsengineReadonlyScope = "https://www.googleapis.com/auth/mapsengine.readonly";


  final common_internal.ApiRequester _requester;

  AssetsResourceApi get assets => new AssetsResourceApi(_requester);
  LayersResourceApi get layers => new LayersResourceApi(_requester);
  MapsResourceApi get maps => new MapsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  RasterCollectionsResourceApi get rasterCollections => new RasterCollectionsResourceApi(_requester);
  RastersResourceApi get rasters => new RastersResourceApi(_requester);
  TablesResourceApi get tables => new TablesResourceApi(_requester);

  MapsengineApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "mapsengine/v1/");
}


/** Not documented yet. */
class AssetsResourceApi {
  final common_internal.ApiRequester _requester;

  AssetsParentsResourceApi get parents => new AssetsParentsResourceApi(_requester);
  AssetsPermissionsResourceApi get permissions => new AssetsPermissionsResourceApi(_requester);

  AssetsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return metadata for a particular asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset.
   *
   * Completes with a [Asset].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Asset> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'assets/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Asset.fromJson(data));
  }

  /**
   * Return all assets readable by the current user.
   *
   * Request parameters:
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * [type] - A comma separated list of asset types. Returned assets will have
   * one of the types from the provided list. Supported values are 'map',
   * 'layer', 'rasterCollection' and 'table'.
   *
   * Completes with a [AssetsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AssetsListResponse> list({core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String projectId, core.String role, core.String search, core.String tags, core.String type}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }
    if (type != null) {
      _queryParams["type"] = [type];
    }


    _url = 'assets';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AssetsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class AssetsParentsResourceApi {
  final common_internal.ApiRequester _requester;

  AssetsParentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all parent ids of the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [ParentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'assets/' + common_internal.Escaper.ecapeVariable('$id') + '/parents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ParentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class AssetsPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  AssetsPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'assets/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class LayersResourceApi {
  final common_internal.ApiRequester _requester;

  LayersParentsResourceApi get parents => new LayersParentsResourceApi(_requester);
  LayersPermissionsResourceApi get permissions => new LayersPermissionsResourceApi(_requester);

  LayersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Cancel processing on a layer asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> cancelProcessing(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/cancelProcessing';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a layer asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [process_1] - Whether to queue the created layer for processing.
   *
   * Completes with a [Layer].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Layer> create(Layer request, {core.bool process_1}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (process_1 != null) {
      _queryParams["process"] = ["${process_1}"];
    }


    _url = 'layers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Layer.fromJson(data));
  }

  /**
   * Delete a layer.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer. Only the layer creator or project owner are
   * permitted to delete. If the layer is published, or included in a map, the
   * request will fail. Unpublish the layer, and remove it from all maps prior
   * to deleting.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id');

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
   * Return metadata for a particular layer.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * [version] - Deprecated: The version parameter indicates which version of
   * the layer should be returned. When version is set to published, the
   * published version of the layer will be returned. Please use the
   * layers.getPublished endpoint instead.
   * Possible string values are:
   * - "draft" : The draft version.
   * - "published" : The published version.
   *
   * Completes with a [Layer].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Layer> get(core.String id, {core.String version}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Layer.fromJson(data));
  }

  /**
   * Return the published metadata for a particular layer.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * Completes with a [PublishedLayer].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishedLayer> getPublished(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/published';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishedLayer.fromJson(data));
  }

  /**
   * Return all layers readable by the current user.
   *
   * Request parameters:
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [processingStatus] - null
   * Possible string values are:
   * - "complete" : The layer has completed processing.
   * - "failed" : The layer has failed processing.
   * - "notReady" : The layer is not ready for processing.
   * - "processing" : The layer is processing.
   * - "ready" : The layer is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [LayersListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LayersListResponse> list({core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (processingStatus != null) {
      _queryParams["processingStatus"] = [processingStatus];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'layers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LayersListResponse.fromJson(data));
  }

  /**
   * Return all published layers readable by the current user.
   *
   * Request parameters:
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * Completes with a [PublishedLayersListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishedLayersListResponse> listPublished({core.int maxResults, core.String pageToken, core.String projectId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }


    _url = 'layers/published';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishedLayersListResponse.fromJson(data));
  }

  /**
   * Mutate a layer asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future patch(Layer request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Process a layer asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> process(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/process';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Publish a layer asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * [force] - If set to true, the API will allow publication of the layer even
   * if it's out of date. If not true, you'll need to reprocess any out-of-date
   * layer before publishing.
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishResponse> publish(core.String id, {core.bool force}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (force != null) {
      _queryParams["force"] = ["${force}"];
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

  /**
   * Unpublish a layer asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer.
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishResponse> unpublish(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/unpublish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

}


/** Not documented yet. */
class LayersParentsResourceApi {
  final common_internal.ApiRequester _requester;

  LayersParentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all parent ids of the specified layer.
   *
   * Request parameters:
   *
   * [id] - The ID of the layer whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [ParentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/parents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ParentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class LayersPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  LayersPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove permission entries from an already existing asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset from which permissions will be removed.
   *
   * Completes with a [PermissionsBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchDeleteResponse> batchDelete(PermissionsBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add or update permission entries to an already existing asset.
   *
   * An asset can hold up to 20 different permission entries. Each batchInsert
   * request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset to which permissions will be added.
   *
   * Completes with a [PermissionsBatchUpdateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchUpdateResponse> batchUpdate(PermissionsBatchUpdateRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchUpdateResponse.fromJson(data));
  }

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'layers/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class MapsResourceApi {
  final common_internal.ApiRequester _requester;

  MapsPermissionsResourceApi get permissions => new MapsPermissionsResourceApi(_requester);

  MapsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Create a map asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Map].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Map> create(Map request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'maps';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Map.fromJson(data));
  }

  /**
   * Delete a map.
   *
   * Request parameters:
   *
   * [id] - The ID of the map. Only the map creator or project owner are
   * permitted to delete. If the map is published the request will fail.
   * Unpublish the map prior to deleting.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id');

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
   * Return metadata for a particular map.
   *
   * Request parameters:
   *
   * [id] - The ID of the map.
   *
   * [version] - Deprecated: The version parameter indicates which version of
   * the map should be returned. When version is set to published, the published
   * version of the map will be returned. Please use the maps.getPublished
   * endpoint instead.
   * Possible string values are:
   * - "draft" : The draft version.
   * - "published" : The published version.
   *
   * Completes with a [Map].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Map> get(core.String id, {core.String version}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Map.fromJson(data));
  }

  /**
   * Return the published metadata for a particular map.
   *
   * Request parameters:
   *
   * [id] - The ID of the map.
   *
   * Completes with a [PublishedMap].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishedMap> getPublished(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/published';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishedMap.fromJson(data));
  }

  /**
   * Return all maps readable by the current user.
   *
   * Request parameters:
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [processingStatus] - null
   * Possible string values are:
   * - "complete" : The map has completed processing.
   * - "failed" : The map has failed processing.
   * - "notReady" : The map is not ready for processing.
   * - "processing" : The map is processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [MapsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<MapsListResponse> list({core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (processingStatus != null) {
      _queryParams["processingStatus"] = [processingStatus];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'maps';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MapsListResponse.fromJson(data));
  }

  /**
   * Return all published maps readable by the current user.
   *
   * Request parameters:
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * Completes with a [PublishedMapsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishedMapsListResponse> listPublished({core.int maxResults, core.String pageToken, core.String projectId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }


    _url = 'maps/published';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishedMapsListResponse.fromJson(data));
  }

  /**
   * Mutate a map asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the map.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future patch(Map request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Publish a map asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the map.
   *
   * [force] - If set to true, the API will allow publication of the map even if
   * it's out of date. If false, the map must have a processingStatus of
   * complete before publishing.
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishResponse> publish(core.String id, {core.bool force}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (force != null) {
      _queryParams["force"] = ["${force}"];
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

  /**
   * Unpublish a map asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the map.
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishResponse> unpublish(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/unpublish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

}


/** Not documented yet. */
class MapsPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  MapsPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove permission entries from an already existing asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset from which permissions will be removed.
   *
   * Completes with a [PermissionsBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchDeleteResponse> batchDelete(PermissionsBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add or update permission entries to an already existing asset.
   *
   * An asset can hold up to 20 different permission entries. Each batchInsert
   * request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset to which permissions will be added.
   *
   * Completes with a [PermissionsBatchUpdateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchUpdateResponse> batchUpdate(PermissionsBatchUpdateRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchUpdateResponse.fromJson(data));
  }

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'maps/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsIconsResourceApi get icons => new ProjectsIconsResourceApi(_requester);

  ProjectsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all projects readable by the current user.
   *
   * Request parameters:
   *
   * Completes with a [ProjectsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProjectsListResponse> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'projects';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProjectsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class ProjectsIconsResourceApi {
  final common_internal.ApiRequester _requester;

  ProjectsIconsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Create an icon.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The ID of the project.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Icon].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Icon> create(Icon request, core.String projectId, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = 'projects/' + common_internal.Escaper.ecapeVariable('$projectId') + '/icons';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/mapsengine/v1/projects/' + common_internal.Escaper.ecapeVariable('$projectId') + '/icons';
    } else {
      _url = '/upload/mapsengine/v1/projects/' + common_internal.Escaper.ecapeVariable('$projectId') + '/icons';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Icon.fromJson(data));
  }

  /**
   * Return an icon or its associated metadata
   *
   * Request parameters:
   *
   * [projectId] - The ID of the project.
   *
   * [id] - The ID of the icon.
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a
   *
   * - [Icon] for Metadata downloads (see [downloadOptions]).
   *
   * - [common.Media] for Media downloads (see [downloadOptions]).
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future get(core.String projectId, core.String id, {common.DownloadOptions downloadOptions: common.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = downloadOptions;

    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$projectId') + '/icons/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == common.DownloadOptions.Metadata) {
      return _response.then((data) => new Icon.fromJson(data));
    } else {
      return _response;
    }
  }

  /**
   * Return all icons in the current project
   *
   * Request parameters:
   *
   * [projectId] - The ID of the project.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [IconsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<IconsListResponse> list(core.String projectId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'projects/' + common_internal.Escaper.ecapeVariable('$projectId') + '/icons';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new IconsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RasterCollectionsResourceApi {
  final common_internal.ApiRequester _requester;

  RasterCollectionsParentsResourceApi get parents => new RasterCollectionsParentsResourceApi(_requester);
  RasterCollectionsPermissionsResourceApi get permissions => new RasterCollectionsPermissionsResourceApi(_requester);
  RasterCollectionsRastersResourceApi get rasters => new RasterCollectionsRastersResourceApi(_requester);

  RasterCollectionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Cancel processing on a raster collection asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> cancelProcessing(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/cancelProcessing';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a raster collection asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [RasterCollection].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollection> create(RasterCollection request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'rasterCollections';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollection.fromJson(data));
  }

  /**
   * Delete a raster collection.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection. Only the raster collection creator
   * or project owner are permitted to delete. If the rastor collection is
   * included in a layer, the request will fail. Remove the raster collection
   * from all layers prior to deleting.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id');

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
   * Return metadata for a particular raster collection.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection.
   *
   * Completes with a [RasterCollection].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollection> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollection.fromJson(data));
  }

  /**
   * Return all raster collections readable by the current user.
   *
   * Request parameters:
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [processingStatus] - null
   * Possible string values are:
   * - "complete" : The raster collection has completed processing.
   * - "failed" : The raster collection has failed processing.
   * - "notReady" : The raster collection is not ready for processing.
   * - "processing" : The raster collection is processing.
   * - "ready" : The raster collection is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [RasterCollectionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollectionsListResponse> list({core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (processingStatus != null) {
      _queryParams["processingStatus"] = [processingStatus];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'rasterCollections';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollectionsListResponse.fromJson(data));
  }

  /**
   * Mutate a raster collection asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future patch(RasterCollection request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Process a raster collection asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> process(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/process';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RasterCollectionsParentsResourceApi {
  final common_internal.ApiRequester _requester;

  RasterCollectionsParentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all parent ids of the specified raster collection.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [ParentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/parents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ParentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RasterCollectionsPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  RasterCollectionsPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove permission entries from an already existing asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset from which permissions will be removed.
   *
   * Completes with a [PermissionsBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchDeleteResponse> batchDelete(PermissionsBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add or update permission entries to an already existing asset.
   *
   * An asset can hold up to 20 different permission entries. Each batchInsert
   * request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset to which permissions will be added.
   *
   * Completes with a [PermissionsBatchUpdateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchUpdateResponse> batchUpdate(PermissionsBatchUpdateRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchUpdateResponse.fromJson(data));
  }

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RasterCollectionsRastersResourceApi {
  final common_internal.ApiRequester _requester;

  RasterCollectionsRastersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove rasters from an existing raster collection.
   *
   * Up to 50 rasters can be included in a single batchDelete request. Each
   * batchDelete request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * Completes with a [RasterCollectionsRastersBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollectionsRastersBatchDeleteResponse> batchDelete(RasterCollectionsRasterBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/rasters/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollectionsRastersBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add rasters to an existing raster collection. Rasters must be successfully
   * processed in order to be added to a raster collection.
   *
   * Up to 50 rasters can be included in a single batchInsert request. Each
   * batchInsert request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * Completes with a [RasterCollectionsRastersBatchInsertResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollectionsRastersBatchInsertResponse> batchInsert(RasterCollectionsRastersBatchInsertRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/rasters/batchInsert';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollectionsRastersBatchInsertResponse.fromJson(data));
  }

  /**
   * Return all rasters within a raster collection.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster collection to which these rasters belong.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [RasterCollectionsRastersListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RasterCollectionsRastersListResponse> list(core.String id, {core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'rasterCollections/' + common_internal.Escaper.ecapeVariable('$id') + '/rasters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RasterCollectionsRastersListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RastersResourceApi {
  final common_internal.ApiRequester _requester;

  RastersFilesResourceApi get files => new RastersFilesResourceApi(_requester);
  RastersParentsResourceApi get parents => new RastersParentsResourceApi(_requester);
  RastersPermissionsResourceApi get permissions => new RastersPermissionsResourceApi(_requester);

  RastersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Delete a raster.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster. Only the raster creator or project owner are
   * permitted to delete. If the raster is included in a layer or mosaic, the
   * request will fail. Remove it from all parents prior to deleting.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id');

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
   * Return metadata for a single raster.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster.
   *
   * Completes with a [Raster].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Raster> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Raster.fromJson(data));
  }

  /**
   * Return all rasters readable by the current user.
   *
   * Request parameters:
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [processingStatus] - null
   * Possible string values are:
   * - "complete" : The raster has completed processing.
   * - "failed" : The raster has failed processing.
   * - "notReady" : The raster is not ready for processing.
   * - "processing" : The raster is processing.
   * - "ready" : The raster is ready for processing.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [RastersListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<RastersListResponse> list(core.String projectId, {core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String processingStatus, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    _queryParams["projectId"] = [projectId];
    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (processingStatus != null) {
      _queryParams["processingStatus"] = [processingStatus];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'rasters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RastersListResponse.fromJson(data));
  }

  /**
   * Mutate a raster asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future patch(Raster request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Process a raster asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> process(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/process';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a skeleton raster asset for upload.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Raster].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Raster> upload(Raster request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'rasters/upload';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Raster.fromJson(data));
  }

}


/** Not documented yet. */
class RastersFilesResourceApi {
  final common_internal.ApiRequester _requester;

  RastersFilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Upload a file to a raster asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the raster asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future insert(core.String id, core.String filename, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (filename == null) {
      throw new core.ArgumentError("Parameter filename is required.");
    }
    _queryParams["filename"] = [filename];

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;
    _downloadOptions = null;

    if (_uploadMedia == null) {
      _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/mapsengine/v1/rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    } else {
      _url = '/upload/mapsengine/v1/rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}


/** Not documented yet. */
class RastersParentsResourceApi {
  final common_internal.ApiRequester _requester;

  RastersParentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all parent ids of the specified rasters.
   *
   * Request parameters:
   *
   * [id] - The ID of the rasters whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [ParentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/parents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ParentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class RastersPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  RastersPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove permission entries from an already existing asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset from which permissions will be removed.
   *
   * Completes with a [PermissionsBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchDeleteResponse> batchDelete(PermissionsBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add or update permission entries to an already existing asset.
   *
   * An asset can hold up to 20 different permission entries. Each batchInsert
   * request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset to which permissions will be added.
   *
   * Completes with a [PermissionsBatchUpdateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchUpdateResponse> batchUpdate(PermissionsBatchUpdateRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchUpdateResponse.fromJson(data));
  }

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'rasters/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TablesResourceApi {
  final common_internal.ApiRequester _requester;

  TablesFeaturesResourceApi get features => new TablesFeaturesResourceApi(_requester);
  TablesFilesResourceApi get files => new TablesFilesResourceApi(_requester);
  TablesParentsResourceApi get parents => new TablesParentsResourceApi(_requester);
  TablesPermissionsResourceApi get permissions => new TablesPermissionsResourceApi(_requester);

  TablesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Create a table asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Table].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Table> create(Table request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'tables';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /**
   * Delete a table.
   *
   * Request parameters:
   *
   * [id] - The ID of the table. Only the table creator or project owner are
   * permitted to delete. If the table is included in a layer, the request will
   * fail. Remove it from all layers prior to deleting.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id');

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
   * Return metadata for a particular table, including the schema.
   *
   * Request parameters:
   *
   * [id] - The ID of the table.
   *
   * [version] - null
   * Possible string values are:
   * - "draft" : The draft version.
   * - "published" : The published version.
   *
   * Completes with a [Table].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Table> get(core.String id, {core.String version}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /**
   * Return all tables readable by the current user.
   *
   * Request parameters:
   *
   * [bbox] - A bounding box, expressed as "west,south,east,north". If set, only
   * assets which intersect this bounding box will be returned.
   *
   * [createdAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or after
   * this time.
   *
   * [createdBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been created at or before
   * this time.
   *
   * [creatorEmail] - An email address representing a user. Returned assets that
   * have been created by the user associated with the provided email address.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 100.
   *
   * [modifiedAfter] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or after
   * this time.
   *
   * [modifiedBefore] - An RFC 3339 formatted date-time value (e.g.
   * 1970-01-01T00:00:00Z). Returned assets will have been modified at or before
   * this time.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [processingStatus] - null
   * Possible string values are:
   * - "complete" : The table has completed processing.
   * - "failed" : The table has failed processing.
   * - "notReady" : The table is not ready for processing.
   * - "processing" : The table is processing.
   * - "ready" : The table is ready for processing.
   *
   * [projectId] - The ID of a Maps Engine project, used to filter the response.
   * To list all available projects with their IDs, send a Projects: list
   * request. You can also find your project ID as the value of the
   * DashboardPlace:cid URL parameter when signed in to mapsengine.google.com.
   *
   * [role] - The role parameter indicates that the response should only contain
   * assets where the current user has the specified level of access.
   * Possible string values are:
   * - "owner" : The user can read, write and administer the asset.
   * - "reader" : The user can read the asset.
   * - "writer" : The user can read and write the asset.
   *
   * [search] - An unstructured search string used to filter the set of results
   * based on asset metadata.
   *
   * [tags] - A comma separated list of tags. Returned assets will contain all
   * the tags from the list.
   *
   * Completes with a [TablesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TablesListResponse> list({core.String bbox, core.DateTime createdAfter, core.DateTime createdBefore, core.String creatorEmail, core.int maxResults, core.DateTime modifiedAfter, core.DateTime modifiedBefore, core.String pageToken, core.String processingStatus, core.String projectId, core.String role, core.String search, core.String tags}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (bbox != null) {
      _queryParams["bbox"] = [bbox];
    }
    if (createdAfter != null) {
      _queryParams["createdAfter"] = [(createdAfter).toIso8601String()];
    }
    if (createdBefore != null) {
      _queryParams["createdBefore"] = [(createdBefore).toIso8601String()];
    }
    if (creatorEmail != null) {
      _queryParams["creatorEmail"] = [creatorEmail];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (modifiedAfter != null) {
      _queryParams["modifiedAfter"] = [(modifiedAfter).toIso8601String()];
    }
    if (modifiedBefore != null) {
      _queryParams["modifiedBefore"] = [(modifiedBefore).toIso8601String()];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (processingStatus != null) {
      _queryParams["processingStatus"] = [processingStatus];
    }
    if (projectId != null) {
      _queryParams["projectId"] = [projectId];
    }
    if (role != null) {
      _queryParams["role"] = [role];
    }
    if (search != null) {
      _queryParams["search"] = [search];
    }
    if (tags != null) {
      _queryParams["tags"] = [tags];
    }


    _url = 'tables';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TablesListResponse.fromJson(data));
  }

  /**
   * Mutate a table asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the table.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future patch(Table request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Process a table asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the table.
   *
   * Completes with a [ProcessResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProcessResponse> process(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/process';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProcessResponse.fromJson(data));
  }

  /**
   * Create a placeholder table asset to which table files can be uploaded.
   * Once the placeholder has been created, files are uploaded to the
   * https://www.googleapis.com/upload/mapsengine/v1/tables/table_id/files
   * endpoint.
   * See Table Upload in the Developer's Guide or Table.files: insert in the
   * reference documentation for more information.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Table].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Table> upload(Table request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'tables/upload';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

}


/** Not documented yet. */
class TablesFeaturesResourceApi {
  final common_internal.ApiRequester _requester;

  TablesFeaturesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Delete all features matching the given IDs.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the table that contains the features to be deleted.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future batchDelete(FeaturesBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/features/batchDelete';

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
   * Append features to an existing table.
   *
   * A single batchInsert request can create:
   *
   * - Up to 50 features.
   * - A combined total of 10 000 vertices.
   * Feature limits are documented in the Supported data formats and limits
   * article of the Google Maps Engine help center. Note that free and paid
   * accounts have different limits.
   *
   * For more information about inserting features, read Creating features in
   * the Google Maps Engine developer's guide.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the table to append the features to.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future batchInsert(FeaturesBatchInsertRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/features/batchInsert';

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
   * Update the supplied features.
   *
   * A single batchPatch request can update:
   *
   * - Up to 50 features.
   * - A combined total of 10 000 vertices.
   * Feature limits are documented in the Supported data formats and limits
   * article of the Google Maps Engine help center. Note that free and paid
   * accounts have different limits.
   *
   * Feature updates use HTTP PATCH semantics:
   *
   * - A supplied value replaces an existing value (if any) in that field.
   * - Omitted fields remain unchanged.
   * - Complex values in geometries and properties must be replaced as atomic
   * units. For example, providing just the coordinates of a geometry is not
   * allowed; the complete geometry, including type, must be supplied.
   * - Setting a property's value to null deletes that property.
   * For more information about updating features, read Updating features in the
   * Google Maps Engine developer's guide.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the table containing the features to be patched.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future batchPatch(FeaturesBatchPatchRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _downloadOptions = null;

    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/features/batchPatch';

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
   * Return a single feature, given its ID.
   *
   * Request parameters:
   *
   * [tableId] - The ID of the table.
   *
   * [id] - The ID of the feature to get.
   *
   * [select] - A SQL-like projection clause used to specify returned
   * properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for
   * information.
   * Possible string values are:
   * - "draft" : The draft version.
   * - "published" : The published version.
   *
   * Completes with a [Feature].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Feature> get(core.String tableId, core.String id, {core.String select, core.String version}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (tableId == null) {
      throw new core.ArgumentError("Parameter tableId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (select != null) {
      _queryParams["select"] = [select];
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$tableId') + '/features/' + common_internal.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Feature.fromJson(data));
  }

  /**
   * Return all features readable by the current user.
   *
   * Request parameters:
   *
   * [id] - The ID of the table to which these features belong.
   *
   * [include] - A comma separated list of optional data to include. Optional
   * data available: schema.
   *
   * [intersects] - A geometry literal that specifies the spatial restriction of
   * the query.
   *
   * [limit] - The total number of features to return from the query,
   * irrespective of the number of pages.
   *
   * [maxResults] - The maximum number of items to include in the response, used
   * for paging. The maximum supported value is 1000.
   *
   * [orderBy] - An SQL-like order by clause used to sort results. If this
   * parameter is not included, the order of features is undefined.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * [select] - A SQL-like projection clause used to specify returned
   * properties. If this parameter is not included, all properties are returned.
   *
   * [version] - The table version to access. See Accessing Public Data for
   * information.
   * Possible string values are:
   * - "draft" : The draft version.
   * - "published" : The published version.
   *
   * [where] - An SQL-like predicate used to filter results.
   *
   * Completes with a [FeaturesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<FeaturesListResponse> list(core.String id, {core.String include, core.String intersects, core.int limit, core.int maxResults, core.String orderBy, core.String pageToken, core.String select, core.String version, core.String where}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (include != null) {
      _queryParams["include"] = [include];
    }
    if (intersects != null) {
      _queryParams["intersects"] = [intersects];
    }
    if (limit != null) {
      _queryParams["limit"] = ["${limit}"];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (select != null) {
      _queryParams["select"] = [select];
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }
    if (where != null) {
      _queryParams["where"] = [where];
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/features';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FeaturesListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TablesFilesResourceApi {
  final common_internal.ApiRequester _requester;

  TablesFilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Upload a file to a placeholder table asset. See Table Upload in the
   * Developer's Guide for more information.
   * Supported file types are listed in the Supported data formats and limits
   * article of the Google Maps Engine help center.
   *
   * Request parameters:
   *
   * [id] - The ID of the table asset.
   *
   * [filename] - The file name of this uploaded file.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future insert(core.String id, core.String filename, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (filename == null) {
      throw new core.ArgumentError("Parameter filename is required.");
    }
    _queryParams["filename"] = [filename];

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;
    _downloadOptions = null;

    if (_uploadMedia == null) {
      _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/mapsengine/v1/tables/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    } else {
      _url = '/upload/mapsengine/v1/tables/' + common_internal.Escaper.ecapeVariable('$id') + '/files';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}


/** Not documented yet. */
class TablesParentsResourceApi {
  final common_internal.ApiRequester _requester;

  TablesParentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Return all parent ids of the specified table.
   *
   * Request parameters:
   *
   * [id] - The ID of the table whose parents will be listed.
   *
   * [maxResults] - The maximum number of items to include in a single response
   * page. The maximum supported value is 50.
   *
   * [pageToken] - The continuation token, used to page through large result
   * sets. To get the next page of results, set this parameter to the value of
   * nextPageToken from the previous response.
   *
   * Completes with a [ParentsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ParentsListResponse> list(core.String id, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/parents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ParentsListResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TablesPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  TablesPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Remove permission entries from an already existing asset.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset from which permissions will be removed.
   *
   * Completes with a [PermissionsBatchDeleteResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchDeleteResponse> batchDelete(PermissionsBatchDeleteRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchDeleteResponse.fromJson(data));
  }

  /**
   * Add or update permission entries to an already existing asset.
   *
   * An asset can hold up to 20 different permission entries. Each batchInsert
   * request is atomic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset to which permissions will be added.
   *
   * Completes with a [PermissionsBatchUpdateResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsBatchUpdateResponse> batchUpdate(PermissionsBatchUpdateRequest request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions/batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsBatchUpdateResponse.fromJson(data));
  }

  /**
   * Return all of the permissions for the specified asset.
   *
   * Request parameters:
   *
   * [id] - The ID of the asset whose permissions will be listed.
   *
   * Completes with a [PermissionsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PermissionsListResponse> list(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }


    _url = 'tables/' + common_internal.Escaper.ecapeVariable('$id') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionsListResponse.fromJson(data));
  }

}



/** Acquisition time represents acquired time of a raster. */
class AcquisitionTime {
  /**
   * The end time if acquisition time is a range. The value is an RFC 3339
   * formatted date-time value (1970-01-01T00:00:00Z).
   */
  core.DateTime end;

  /**
   * The precision of acquisition time.
   * Possible string values are:
   * - "day"
   * - "hour"
   * - "minute"
   * - "month"
   * - "second"
   * - "year"
   */
  core.String precision;

  /**
   * The acquisition time, or start time if acquisition time is a range. The
   * value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
   */
  core.DateTime start;


  AcquisitionTime();

  AcquisitionTime.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = core.DateTime.parse(_json["end"]);
    }
    if (_json.containsKey("precision")) {
      precision = _json["precision"];
    }
    if (_json.containsKey("start")) {
      start = core.DateTime.parse(_json["start"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (end != null) {
      _json["end"] = (end).toIso8601String();
    }
    if (precision != null) {
      _json["precision"] = precision;
    }
    if (start != null) {
      _json["start"] = (start).toIso8601String();
    }
    return _json;
  }
}


/**
 * An asset is any Google Maps Engine resource that has a globally unique ID.
 * Assets include maps, layers, vector tables, raster collections, and rasters.
 * Projects and features are not considered assets.
 *
 * More detailed information about an asset can be obtained by querying the
 * asset's particular endpoint.
 */
class Asset {
  /**
   * A rectangular bounding box which contains all of the data in this asset.
   * The box is expressed as \"west, south, east, north\". The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this asset. The value is an RFC 3339-formatted
   * date-time value (for example, 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this asset. This is only returned on
   * GET requests and not LIST requests.
   */
  core.String creatorEmail;

  /** The asset's description. */
  core.String description;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** The asset's globally unique ID. */
  core.String id;

  /**
   * The last modified time of this asset. The value is an RFC 3339-formatted
   * date-time value (for example, 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this asset. This is only returned
   * on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /** The asset's name. */
  core.String name;

  /** The ID of the project to which the asset belongs. */
  core.String projectId;

  /**
   * The URL to query to retrieve the asset's complete object. The assets
   * endpoint only returns high-level information about a resource.
   */
  core.String resource;

  /**
   * An array of text strings, with each string representing a tag. More
   * information about tags can be found in the Tagging data article of the Maps
   * Engine help center.
   */
  core.List<core.String> tags;

  /**
   * The type of asset. One of raster, rasterCollection, table, map, or layer.
   * Possible string values are:
   * - "layer"
   * - "map"
   * - "raster"
   * - "rasterCollection"
   * - "table"
   */
  core.String type;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  Asset();

  Asset.fromJson(core.Map _json) {
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/** The response returned by a call to resources.List. */
class AssetsListResponse {
  /** Assets returned. */
  core.List<Asset> assets;

  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }


  AssetsListResponse();

  AssetsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("assets")) {
      assets = _json["assets"].map((value) => new Asset.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (assets != null) {
      _json["assets"] = assets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Border in line style. Both color and width are required. */
class Border {
  /** Color of the border. */
  core.String color;

  /** Opacity of the border. */
  core.double opacity;

  /** Width of the border, in pixels. */
  core.double width;


  Border();

  Border.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (color != null) {
      _json["color"] = color;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}


/** Basic color used in styling. */
class Color {
  /** The CSS style color, can be in format of "red" or "#7733EE". */
  core.String color;

  /** Opacity ranges from 0 to 1, inclusive. If not provided, default to 1. */
  core.double opacity;


  Color();

  Color.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (color != null) {
      _json["color"] = color;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    return _json;
  }
}


/** Not documented yet. */
class Datasource {
  /** The ID of a datasource. */
  core.String id;


  Datasource();

  Datasource.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}


/** Not documented yet. */
class Datasources
    extends collection.ListBase<Datasource> {
  final core.List<Datasource> _inner;

  Datasources() : _inner = [];

  Datasources.fromJson(core.List json)
      : _inner = json.map((value) => new Datasource.fromJson(value)).toList();

  core.List toJson() {
    return _inner.map((value) => (value).toJson()).toList();
  }

  Datasource operator [](core.int key) => _inner[key];

  void operator []=(core.int key, Datasource value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  void set length(core.int newLength) {
    _inner.length = newLength;
  }
}


/** A display rule of the vector style. */
class DisplayRule {
  /**
   * This display rule will only be applied to features that match all of the
   * filters here. If filters is empty, then the rule applies to all features.
   */
  core.List<Filter> filters;

  /** Style applied to lines. Required for LineString Geometry. */
  LineStyle lineOptions;

  /**
   * Display rule name. Name is not unique and cannot be used for identification
   * purpose.
   */
  core.String name;

  /** Style applied to points. Required for Point Geometry. */
  PointStyle pointOptions;

  /** Style applied to polygons. Required for Polygon Geometry. */
  PolygonStyle polygonOptions;

  /** The zoom levels that this display rule apply. */
  ZoomLevels zoomLevels;


  DisplayRule();

  DisplayRule.fromJson(core.Map _json) {
    if (_json.containsKey("filters")) {
      filters = _json["filters"].map((value) => new Filter.fromJson(value)).toList();
    }
    if (_json.containsKey("lineOptions")) {
      lineOptions = new LineStyle.fromJson(_json["lineOptions"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pointOptions")) {
      pointOptions = new PointStyle.fromJson(_json["pointOptions"]);
    }
    if (_json.containsKey("polygonOptions")) {
      polygonOptions = new PolygonStyle.fromJson(_json["polygonOptions"]);
    }
    if (_json.containsKey("zoomLevels")) {
      zoomLevels = new ZoomLevels.fromJson(_json["zoomLevels"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (lineOptions != null) {
      _json["lineOptions"] = (lineOptions).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pointOptions != null) {
      _json["pointOptions"] = (pointOptions).toJson();
    }
    if (polygonOptions != null) {
      _json["polygonOptions"] = (polygonOptions).toJson();
    }
    if (zoomLevels != null) {
      _json["zoomLevels"] = (zoomLevels).toJson();
    }
    return _json;
  }
}


/** A feature within a table. */
class Feature {
  /** The geometry member of this Feature. */
  GeoJsonGeometry geometry;

  /** Key/value pairs of this Feature. */
  GeoJsonProperties properties;

  /** Identifies this object as a feature. */
  core.String type;


  Feature();

  Feature.fromJson(core.Map _json) {
    if (_json.containsKey("geometry")) {
      geometry = new GeoJsonGeometry.fromJson(_json["geometry"]);
    }
    if (_json.containsKey("properties")) {
      properties = new GeoJsonProperties.fromJson(_json["properties"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (geometry != null) {
      _json["geometry"] = (geometry).toJson();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** A feature info contains information about individual feature. */
class FeatureInfo {
  /**
   * HTML template of the info window. If not provided, a default template with
   * all attributes will be generated.
   */
  core.String content;


  FeatureInfo();

  FeatureInfo.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (content != null) {
      _json["content"] = content;
    }
    return _json;
  }
}


/** The request sent to features.BatchDelete. */
class FeaturesBatchDeleteRequest {
  /** Not documented yet. */
  core.List<core.String> gxIds;

  /** Not documented yet. */
  core.List<core.String> primaryKeys;


  FeaturesBatchDeleteRequest();

  FeaturesBatchDeleteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("gx_ids")) {
      gxIds = _json["gx_ids"];
    }
    if (_json.containsKey("primaryKeys")) {
      primaryKeys = _json["primaryKeys"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (gxIds != null) {
      _json["gx_ids"] = gxIds;
    }
    if (primaryKeys != null) {
      _json["primaryKeys"] = primaryKeys;
    }
    return _json;
  }
}


/** The request sent to features.Insert. */
class FeaturesBatchInsertRequest {
  /** Not documented yet. */
  core.List<Feature> features;

  /**
   * If true, the server will normalize feature geometries. It is assumed that
   * the South Pole is exterior to any polygons given. See here for a list of
   * normalizations. If false, all feature geometries must be given already
   * normalized. The points in all LinearRings must be listed in
   * counter-clockwise order, and LinearRings may not intersect.
   */
  core.bool normalizeGeometries;


  FeaturesBatchInsertRequest();

  FeaturesBatchInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = _json["features"].map((value) => new Feature.fromJson(value)).toList();
    }
    if (_json.containsKey("normalizeGeometries")) {
      normalizeGeometries = _json["normalizeGeometries"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (normalizeGeometries != null) {
      _json["normalizeGeometries"] = normalizeGeometries;
    }
    return _json;
  }
}


/** The request sent to features.BatchPatch. */
class FeaturesBatchPatchRequest {
  /** Not documented yet. */
  core.List<Feature> features;

  /**
   * If true, the server will normalize feature geometries. It is assumed that
   * the South Pole is exterior to any polygons given. See here for a list of
   * normalizations. If false, all feature geometries must be given already
   * normalized. The points in all LinearRings must be listed in
   * counter-clockwise order, and LinearRings may not intersect.
   */
  core.bool normalizeGeometries;


  FeaturesBatchPatchRequest();

  FeaturesBatchPatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = _json["features"].map((value) => new Feature.fromJson(value)).toList();
    }
    if (_json.containsKey("normalizeGeometries")) {
      normalizeGeometries = _json["normalizeGeometries"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (normalizeGeometries != null) {
      _json["normalizeGeometries"] = normalizeGeometries;
    }
    return _json;
  }
}


/** The response returned by a call to features.List. */
class FeaturesListResponse {
  /**
   * An indicator of the maximum rate at which queries may be made, if all
   * queries were as expensive as this query.
   */
  core.double allowedQueriesPerSecond;

  /** Resources returned. */
  core.List<Feature> features;

  /** Next page token. */
  core.String nextPageToken;

  /** The feature schema. */
  Schema schema;

  /** Not documented yet. */
  core.String type;


  FeaturesListResponse();

  FeaturesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("allowedQueriesPerSecond")) {
      allowedQueriesPerSecond = _json["allowedQueriesPerSecond"];
    }
    if (_json.containsKey("features")) {
      features = _json["features"].map((value) => new Feature.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("schema")) {
      schema = new Schema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowedQueriesPerSecond != null) {
      _json["allowedQueriesPerSecond"] = allowedQueriesPerSecond;
    }
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** A single File, which is a component of an Asset. */
class File {
  /** The name of the file. */
  core.String filename;

  /** The size of the file in bytes. */
  core.String size;

  /**
   * The upload status of the file.
   * Possible string values are:
   * - "canceled"
   * - "complete"
   * - "failed"
   * - "inProgress"
   */
  core.String uploadStatus;


  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("filename")) {
      filename = _json["filename"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("uploadStatus")) {
      uploadStatus = _json["uploadStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filename != null) {
      _json["filename"] = filename;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (uploadStatus != null) {
      _json["uploadStatus"] = uploadStatus;
    }
    return _json;
  }
}


/** Conditions for filtering features. */
class Filter {
  /** The column name to filter on. */
  core.String column;

  /**
   * Operation used to evaluate the filter.
   * Possible string values are:
   * - "!="
   * - "<"
   * - "<="
   * - "=="
   * - ">"
   * - ">="
   * - "contains"
   * - "endsWith"
   * - "startsWith"
   */
  core.String operator;

  /**
   * Value to be evaluated against attribute.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object value;


  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("column")) {
      column = _json["column"];
    }
    if (_json.containsKey("operator")) {
      operator = _json["operator"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (column != null) {
      _json["column"] = column;
    }
    if (operator != null) {
      _json["operator"] = operator;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Not documented yet. */
abstract class GeoJsonGeometry {
  GeoJsonGeometry();
  factory GeoJsonGeometry.fromJson(core.Map json) {
    var discriminant = json["type"];
    if (discriminant == "GeometryCollection") {
      return new GeoJsonGeometryCollection.fromJson(json);
    }
    if (discriminant == "LineString") {
      return new GeoJsonLineString.fromJson(json);
    }
    if (discriminant == "MultiLineString") {
      return new GeoJsonMultiLineString.fromJson(json);
    }
    if (discriminant == "MultiPoint") {
      return new GeoJsonMultiPoint.fromJson(json);
    }
    if (discriminant == "MultiPolygon") {
      return new GeoJsonMultiPolygon.fromJson(json);
    }
    if (discriminant == "Point") {
      return new GeoJsonPoint.fromJson(json);
    }
    if (discriminant == "Polygon") {
      return new GeoJsonPolygon.fromJson(json);
    }
    throw new core.ArgumentError("Invalid discriminant: $discriminant!");
  }

  core.Map toJson();

}


/** A heterogenous collection of GeoJsonGeometry objects. */
class GeoJsonGeometryCollection  extends GeoJsonGeometry {
  /**
   * An array of geometry objects. There must be at least 2 different types of
   * geometries in the array.
   */
  core.List<GeoJsonGeometry> geometries;

  /**
   * Identifies this object as a GeoJsonGeometryCollection.
   * Possible string values are:
   * - "GeometryCollection"
   */
  final core.String type = "GeometryCollection";


  GeoJsonGeometryCollection();

  GeoJsonGeometryCollection.fromJson(core.Map _json) {
    if (_json.containsKey("geometries")) {
      geometries = _json["geometries"].map((value) => new GeoJsonGeometry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (geometries != null) {
      _json["geometries"] = geometries.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class GeoJsonLineString  extends GeoJsonGeometry {
  /** An array of two or more positions, representing a line. */
  core.List<GeoJsonPosition> coordinates;

  /**
   * Identifies this object as a GeoJsonLineString.
   * Possible string values are:
   * - "LineString"
   */
  final core.String type = "LineString";


  GeoJsonLineString();

  GeoJsonLineString.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = _json["coordinates"].map((value) => new GeoJsonPosition.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Multi Line String */
class GeoJsonMultiLineString  extends GeoJsonGeometry {
  /** An array of at least two GeoJsonLineString coordinate arrays. */
  core.List<core.List<GeoJsonPosition>> coordinates;

  /**
   * Identifies this object as a GeoJsonMultiLineString.
   * Possible string values are:
   * - "MultiLineString"
   */
  final core.String type = "MultiLineString";


  GeoJsonMultiLineString();

  GeoJsonMultiLineString.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = _json["coordinates"].map((value) => value.map((value) => new GeoJsonPosition.fromJson(value)).toList()).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class GeoJsonMultiPoint  extends GeoJsonGeometry {
  /** An array of at least two GeoJsonPoint coordinate arrays. */
  core.List<GeoJsonPosition> coordinates;

  /**
   * Identifies this object as a GeoJsonMultiPoint.
   * Possible string values are:
   * - "MultiPoint"
   */
  final core.String type = "MultiPoint";


  GeoJsonMultiPoint();

  GeoJsonMultiPoint.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = _json["coordinates"].map((value) => new GeoJsonPosition.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class GeoJsonMultiPolygon  extends GeoJsonGeometry {
  /** An array of at least two GeoJsonPolygon coordinate arrays. */
  core.List<core.List<core.List<GeoJsonPosition>>> coordinates;

  /**
   * Identifies this object as a GeoJsonMultiPolygon.
   * Possible string values are:
   * - "MultiPolygon"
   */
  final core.String type = "MultiPolygon";


  GeoJsonMultiPolygon();

  GeoJsonMultiPolygon.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = _json["coordinates"].map((value) => value.map((value) => value.map((value) => new GeoJsonPosition.fromJson(value)).toList()).toList()).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class GeoJsonPoint  extends GeoJsonGeometry {
  /** A single GeoJsonPosition, specifying the location of the point. */
  GeoJsonPosition coordinates;

  /**
   * Identifies this object as a GeoJsonPoint.
   * Possible string values are:
   * - "Point"
   */
  final core.String type = "Point";


  GeoJsonPoint();

  GeoJsonPoint.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = new GeoJsonPosition.fromJson(_json["coordinates"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class GeoJsonPolygon  extends GeoJsonGeometry {
  /**
   * An array of LinearRings. A LinearRing is a GeoJsonLineString which is
   * closed (that is, the first and last GeoJsonPositions are equal), and which
   * contains at least four GeoJsonPositions. For polygons with multiple rings,
   * the first LinearRing is the exterior ring, and any subsequent rings are
   * interior rings (that is, holes).
   */
  core.List<core.List<GeoJsonPosition>> coordinates;

  /**
   * Identifies this object as a GeoJsonPolygon.
   * Possible string values are:
   * - "Polygon"
   */
  final core.String type = "Polygon";


  GeoJsonPolygon();

  GeoJsonPolygon.fromJson(core.Map _json) {
    if (_json.containsKey("coordinates")) {
      coordinates = _json["coordinates"].map((value) => value.map((value) => new GeoJsonPosition.fromJson(value)).toList()).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coordinates != null) {
      _json["coordinates"] = coordinates;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * A position represents a geographical position as an array containing a
 * longitude and a latitude, and optionally an altitude, in that order. All
 * Geometry objects make use of positions to represent geometries as nested
 * arrays. The structure of the array is governed by the type of the geometry.
 */
class GeoJsonPosition
    extends collection.ListBase<core.double> {
  final core.List<core.double> _inner;

  GeoJsonPosition() : _inner = [];

  GeoJsonPosition.fromJson(core.List json)
      : _inner = json.map((value) => value).toList();

  core.List toJson() {
    return _inner.map((value) => value).toList();
  }

  core.double operator [](core.int key) => _inner[key];

  void operator []=(core.int key, core.double value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  void set length(core.int newLength) {
    _inner.length = newLength;
  }
}


/**
 * The properties associated with a feature.
 *
 * An arbitrary key-value pair. The key must be the name of a column in the
 * table's schema, and the type of the value must correspond to the type
 * specified in the schema.
 */
class GeoJsonProperties
    extends collection.MapBase<core.String, core.Object> {
  final core.Map _innerMap = {};

  GeoJsonProperties();

  GeoJsonProperties.fromJson(core.Map _json) {
    _json.forEach((core.String key, value) {
      this[key] = value;
    });
  }

  core.Map toJson() {
    var _json = {};
    this.forEach((core.String key, value) {
      _json[key] = value;
    });
    return _json;
  }

  core.Object operator [](core.Object key)
      => _innerMap[key];

  operator []=(core.String key, core.Object value) {
    _innerMap[key] = value;
  }

  void clear() {
    _innerMap.clear();
  }

  core.Iterable<core.String> get keys => _innerMap.keys;

  core.Object remove(core.Object key) => _innerMap.remove(key);
}


/**
 * An icon is a user-uploaded image that can be used to style point geometries.
 */
class Icon {
  /** The description of this Icon, supplied by the author. */
  core.String description;

  /** An ID used to refer to this Icon. */
  core.String id;

  /** The name of this Icon, supplied by the author. */
  core.String name;


  Icon();

  Icon.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
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
    if (description != null) {
      _json["description"] = description;
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


/** Style for icon, this is part of point style. */
class IconStyle {
  /** Custom icon id. */
  core.String id;

  /**
   * Stock icon name. To use a stock icon, prefix it with 'gx_'. See Stock icon
   * names for valid icon names. For example, to specify small_red, set name to
   * 'gx_small_red'.
   */
  core.String name;

  /** A scalable shape. */
  ScaledShape scaledShape;

  /**
   * The function used to scale shapes. Required when a scaledShape is
   * specified.
   */
  ScalingFunction scalingFunction;


  IconStyle();

  IconStyle.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("scaledShape")) {
      scaledShape = new ScaledShape.fromJson(_json["scaledShape"]);
    }
    if (_json.containsKey("scalingFunction")) {
      scalingFunction = new ScalingFunction.fromJson(_json["scalingFunction"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (scaledShape != null) {
      _json["scaledShape"] = (scaledShape).toJson();
    }
    if (scalingFunction != null) {
      _json["scalingFunction"] = (scalingFunction).toJson();
    }
    return _json;
  }
}


/** The response returned by a call to icons.List. */
class IconsListResponse {
  /** Resources returned. */
  core.List<Icon> icons;

  /** Next page token. */
  core.String nextPageToken;


  IconsListResponse();

  IconsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("icons")) {
      icons = _json["icons"].map((value) => new Icon.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (icons != null) {
      _json["icons"] = icons.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Text label style. */
class LabelStyle {
  /** Color of the text. If not provided, default to black. */
  core.String color;

  /** The column value of the feature to be displayed. */
  core.String column;

  /**
   * Font style of the label, defaults to 'normal'.
   * Possible string values are:
   * - "italic"
   * - "normal"
   */
  core.String fontStyle;

  /**
   * Font weight of the label, defaults to 'normal'.
   * Possible string values are:
   * - "bold"
   * - "normal"
   */
  core.String fontWeight;

  /** Opacity of the text. */
  core.double opacity;

  /** Outline color of the text. */
  Color outline;

  /**
   * Font size of the label, in pixels. 8 <= size <= 15. If not provided, a
   * default size will be provided.
   */
  core.double size;


  LabelStyle();

  LabelStyle.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("column")) {
      column = _json["column"];
    }
    if (_json.containsKey("fontStyle")) {
      fontStyle = _json["fontStyle"];
    }
    if (_json.containsKey("fontWeight")) {
      fontWeight = _json["fontWeight"];
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"];
    }
    if (_json.containsKey("outline")) {
      outline = new Color.fromJson(_json["outline"]);
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (color != null) {
      _json["color"] = color;
    }
    if (column != null) {
      _json["column"] = column;
    }
    if (fontStyle != null) {
      _json["fontStyle"] = fontStyle;
    }
    if (fontWeight != null) {
      _json["fontWeight"] = fontWeight;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    if (outline != null) {
      _json["outline"] = (outline).toJson();
    }
    if (size != null) {
      _json["size"] = size;
    }
    return _json;
  }
}


/** A rectangular geographic bounds. */
class LatLngBox
    extends collection.ListBase<core.double> {
  final core.List<core.double> _inner;

  LatLngBox() : _inner = [];

  LatLngBox.fromJson(core.List json)
      : _inner = json.map((value) => value).toList();

  core.List toJson() {
    return _inner.map((value) => value).toList();
  }

  core.double operator [](core.int key) => _inner[key];

  void operator []=(core.int key, core.double value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  void set length(core.int newLength) {
    _inner.length = newLength;
  }
}


/**
 * A Layer combines multiple datasources, with styling information, for
 * presentation on a map.
 */
class Layer {
  /**
   * A rectangular bounding box which contains all of the data in this Layer.
   * The box is expressed as \"west, south, east, north\". The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this layer. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this layer. This is only returned on
   * GET requests and not LIST requests.
   */
  core.String creatorEmail;

  /**
   * Deprecated: The type of the datasources used to build this Layer. Note:
   * This has been replaced by layerType, but is still available for now to
   * maintain backward compatibility.
   * Possible string values are:
   * - "image"
   * - "table"
   */
  core.String datasourceType;

  /**
   * An array of datasources used to build this layer. If layerType is "image",
   * or layerType is not specified and datasourceType is "image", then each
   * element in this array is a reference to an Image or RasterCollection. If
   * layerType is "vector", or layerType is not specified and datasourceType is
   * "table" then each element in this array is a reference to a Vector Table.
   */
  Datasources datasources;

  /** The description of this Layer, supplied by the author. */
  core.String description;

  /**
   * Deprecated: The name of an access list of the Map Editor type. The user on
   * whose behalf the request is being sent must be an editor on that access
   * list. Note: Google Maps Engine no longer uses access lists. Instead, each
   * asset has its own list of permissions. For backward compatibility, the API
   * still accepts access lists for projects that are already using access
   * lists. If you created a GME account/project after July 14th, 2014, you will
   * not be able to send API requests that include access lists. Note: This is
   * an input field only. It is not returned in response to a list or get
   * request.
   */
  core.String draftAccessList;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** A globally unique ID, used to refer to this Layer. */
  core.String id;

  /**
   * The last modified time of this layer. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this layer. This is only returned
   * on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /**
   * The type of the datasources used to build this Layer. This should be used
   * instead of datasourceType. At least one of layerType and datasourceType and
   * must be specified, but layerType takes precedence.
   * Possible string values are:
   * - "image"
   * - "vector"
   */
  core.String layerType;

  /** The name of this Layer, supplied by the author. */
  core.String name;

  /**
   * The processing status of this layer.
   * Possible string values are:
   * - "complete"
   * - "failed"
   * - "notReady"
   * - "processing"
   * - "ready"
   */
  core.String processingStatus;

  /** The ID of the project that this Layer is in. */
  core.String projectId;

  /**
   * Deprecated: The access list to whom view permissions are granted. The value
   * must be the name of a Maps Engine access list of the Map Viewer type, and
   * the user must be a viewer on that list. Note: Google Maps Engine no longer
   * uses access lists. Instead, each asset has its own list of permissions. For
   * backward compatibility, the API still accepts access lists for projects
   * that are already using access lists. If you created a GME account/project
   * after July 14th, 2014, you will not be able to send API requests that
   * include access lists. Note: This is an input field only. It is not returned
   * in response to a list or get request.
   */
  core.String publishedAccessList;

  /**
   * The publishing status of this layer.
   * Possible string values are:
   * - "notPublished"
   * - "published"
   */
  core.String publishingStatus;

  /**
   * The styling information for a vector layer. Note: Style information is
   * returned in response to a get request but not a list request. After
   * requesting a list of layers, you'll need to send a get request to retrieve
   * the VectorStyles for each layer.
   */
  VectorStyle style;

  /** Tags of this Layer. */
  Tags tags;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  Layer();

  Layer.fromJson(core.Map _json) {
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("datasourceType")) {
      datasourceType = _json["datasourceType"];
    }
    if (_json.containsKey("datasources")) {
      datasources = new Datasources.fromJson(_json["datasources"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("draftAccessList")) {
      draftAccessList = _json["draftAccessList"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("layerType")) {
      layerType = _json["layerType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("publishedAccessList")) {
      publishedAccessList = _json["publishedAccessList"];
    }
    if (_json.containsKey("publishingStatus")) {
      publishingStatus = _json["publishingStatus"];
    }
    if (_json.containsKey("style")) {
      style = new VectorStyle.fromJson(_json["style"]);
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (datasourceType != null) {
      _json["datasourceType"] = datasourceType;
    }
    if (datasources != null) {
      _json["datasources"] = (datasources).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (draftAccessList != null) {
      _json["draftAccessList"] = draftAccessList;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (layerType != null) {
      _json["layerType"] = layerType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      _json["publishedAccessList"] = publishedAccessList;
    }
    if (publishingStatus != null) {
      _json["publishingStatus"] = publishingStatus;
    }
    if (style != null) {
      _json["style"] = (style).toJson();
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/**
 * The response returned by a call to layers.List. Note: The list response does
 * not include all the fields available in a layer. Refer to the layer resource
 * description for details of the fields that are not included. You'll need to
 * send a get request to retrieve the additional fields for each layer.
 */
class LayersListResponse {
  /** Resources returned. */
  core.List<Layer> layers;

  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }


  LayersListResponse();

  LayersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("layers")) {
      layers = _json["layers"].map((value) => new Layer.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (layers != null) {
      _json["layers"] = layers.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Stroke of the line. */
class LineStyleStroke {
  /** Color of the line. */
  core.String color;

  /** Opacity of the line. */
  core.double opacity;

  /**
   * Width of the line, in pixels. 0 <= width <= 10. If width is set to 0, the
   * line will be invisible.
   */
  core.double width;


  LineStyleStroke();

  LineStyleStroke.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("opacity")) {
      opacity = _json["opacity"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (color != null) {
      _json["color"] = color;
    }
    if (opacity != null) {
      _json["opacity"] = opacity;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}


/** Style for lines. */
class LineStyle {
  /** Border of the line. 0 < border.width <= 5. */
  Border border;

  /**
   * Dash defines the pattern of the line, the values are pixel lengths of
   * alternating dash and gap. If dash is not provided, then it means a solid
   * line. Dash can contain up to 10 values and must contain even number of
   * values.
   */
  core.List<core.double> dash;

  /** Label style for the line. */
  LabelStyle label;

  /** Stroke of the line. */
  LineStyleStroke stroke;


  LineStyle();

  LineStyle.fromJson(core.Map _json) {
    if (_json.containsKey("border")) {
      border = new Border.fromJson(_json["border"]);
    }
    if (_json.containsKey("dash")) {
      dash = _json["dash"];
    }
    if (_json.containsKey("label")) {
      label = new LabelStyle.fromJson(_json["label"]);
    }
    if (_json.containsKey("stroke")) {
      stroke = new LineStyleStroke.fromJson(_json["stroke"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (border != null) {
      _json["border"] = (border).toJson();
    }
    if (dash != null) {
      _json["dash"] = dash;
    }
    if (label != null) {
      _json["label"] = (label).toJson();
    }
    if (stroke != null) {
      _json["stroke"] = (stroke).toJson();
    }
    return _json;
  }
}


/** A Map is a collection of Layers, optionally contained within folders. */
class Map {
  /**
   * A rectangular bounding box which contains all of the data in this Map. The
   * box is expressed as \"west, south, east, north\". The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> bbox;

  /** The contents of this Map. */
  MapContents contents;

  /**
   * The creation time of this map. The value is an RFC 3339 formatted date-time
   * value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this map. This is only returned on GET
   * requests and not LIST requests.
   */
  core.String creatorEmail;

  /**
   * An array of four numbers (west, south, east, north) which defines the
   * rectangular bounding box of the default viewport. The numbers represent
   * latitude and longitude in decimal degrees.
   */
  LatLngBox defaultViewport;

  /** The description of this Map, supplied by the author. */
  core.String description;

  /**
   * Deprecated: The name of an access list of the Map Editor type. The user on
   * whose behalf the request is being sent must be an editor on that access
   * list. Note: Google Maps Engine no longer uses access lists. Instead, each
   * asset has its own list of permissions. For backward compatibility, the API
   * still accepts access lists for projects that are already using access
   * lists. If you created a GME account/project after July 14th, 2014, you will
   * not be able to send API requests that include access lists. Note: This is
   * an input field only. It is not returned in response to a list or get
   * request.
   */
  core.String draftAccessList;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** A globally unique ID, used to refer to this Map. */
  core.String id;

  /**
   * The last modified time of this map. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this map. This is only returned
   * on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /** The name of this Map, supplied by the author. */
  core.String name;

  /**
   * The processing status of this map. Map processing is automatically started
   * once a map becomes ready for processing.
   * Possible string values are:
   * - "complete"
   * - "failed"
   * - "notReady"
   * - "processing"
   * - "ready"
   */
  core.String processingStatus;

  /** The ID of the project that this Map is in. */
  core.String projectId;

  /**
   * Deprecated: The access list to whom view permissions are granted. The value
   * must be the name of a Maps Engine access list of the Map Viewer type, and
   * the user must be a viewer on that list. Note: Google Maps Engine no longer
   * uses access lists. Instead, each asset has its own list of permissions. For
   * backward compatibility, the API still accepts access lists for projects
   * that are already using access lists. If you created a GME account/project
   * after July 14th, 2014, you will not be able to send API requests that
   * include access lists. This is an input field only. It is not returned in
   * response to a list or get request.
   */
  core.String publishedAccessList;

  /**
   * The publishing status of this map.
   * Possible string values are:
   * - "notPublished"
   * - "published"
   */
  core.String publishingStatus;

  /** Tags of this Map. */
  Tags tags;

  /**
   * Deprecated: An array containing the available versions of this Map.
   * Currently may only contain "published". The publishingStatus field should
   * be used instead.
   */
  core.List<core.String> versions;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  Map();

  Map.fromJson(core.Map _json) {
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("contents")) {
      contents = new MapContents.fromJson(_json["contents"]);
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("defaultViewport")) {
      defaultViewport = new LatLngBox.fromJson(_json["defaultViewport"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("draftAccessList")) {
      draftAccessList = _json["draftAccessList"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("publishedAccessList")) {
      publishedAccessList = _json["publishedAccessList"];
    }
    if (_json.containsKey("publishingStatus")) {
      publishingStatus = _json["publishingStatus"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("versions")) {
      versions = _json["versions"];
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (contents != null) {
      _json["contents"] = (contents).toJson();
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (defaultViewport != null) {
      _json["defaultViewport"] = defaultViewport;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (draftAccessList != null) {
      _json["draftAccessList"] = draftAccessList;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      _json["publishedAccessList"] = publishedAccessList;
    }
    if (publishingStatus != null) {
      _json["publishingStatus"] = publishingStatus;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (versions != null) {
      _json["versions"] = versions;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/** Not documented yet. */
class MapContents
    extends collection.ListBase<MapItem> {
  final core.List<MapItem> _inner;

  MapContents() : _inner = [];

  MapContents.fromJson(core.List json)
      : _inner = json.map((value) => new MapItem.fromJson(value)).toList();

  core.List toJson() {
    return _inner.map((value) => (value).toJson()).toList();
  }

  MapItem operator [](core.int key) => _inner[key];

  void operator []=(core.int key, MapItem value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  void set length(core.int newLength) {
    _inner.length = newLength;
  }
}


/** Not documented yet. */
class MapFolder  extends MapItem {
  /** Not documented yet. */
  core.List<MapItem> contents;

  /**
   * An array of four numbers (west, south, east, north) which defines the
   * rectangular bounding box of the default viewport. The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> defaultViewport;

  /**
   * The expandability setting of this MapFolder. If true, the folder can be
   * expanded.
   */
  core.bool expandable;

  /** A user defined alias for this MapFolder, specific to this Map. */
  core.String key;

  /** The name of this MapFolder. */
  core.String name;

  /**
   * Identifies this object as a MapFolder.
   * Possible string values are:
   * - "folder"
   */
  final core.String type = "folder";

  /**
   * The visibility setting of this MapFolder. One of "defaultOn" or
   * "defaultOff".
   */
  core.String visibility;


  MapFolder();

  MapFolder.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = _json["contents"].map((value) => new MapItem.fromJson(value)).toList();
    }
    if (_json.containsKey("defaultViewport")) {
      defaultViewport = _json["defaultViewport"];
    }
    if (_json.containsKey("expandable")) {
      expandable = _json["expandable"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contents != null) {
      _json["contents"] = contents.map((value) => (value).toJson()).toList();
    }
    if (defaultViewport != null) {
      _json["defaultViewport"] = defaultViewport;
    }
    if (expandable != null) {
      _json["expandable"] = expandable;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}


/** Not documented yet. */
abstract class MapItem {
  MapItem();
  factory MapItem.fromJson(core.Map json) {
    var discriminant = json["type"];
    if (discriminant == "folder") {
      return new MapFolder.fromJson(json);
    }
    if (discriminant == "kmlLink") {
      return new MapKmlLink.fromJson(json);
    }
    if (discriminant == "layer") {
      return new MapLayer.fromJson(json);
    }
    throw new core.ArgumentError("Invalid discriminant: $discriminant!");
  }

  core.Map toJson();

}


/** Not documented yet. */
class MapKmlLink  extends MapItem {
  /**
   * An array of four numbers (west, south, east, north) which defines the
   * rectangular bounding box of the default viewport. The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> defaultViewport;

  /** The URL to the KML file represented by this MapKmlLink. */
  core.String kmlUrl;

  /** The name of this MapKmlLink. */
  core.String name;

  /**
   * Identifies this object as a MapKmlLink.
   * Possible string values are:
   * - "kmlLink"
   */
  final core.String type = "kmlLink";

  /**
   * The visibility setting of this MapKmlLink. One of "defaultOn" or
   * "defaultOff".
   */
  core.String visibility;


  MapKmlLink();

  MapKmlLink.fromJson(core.Map _json) {
    if (_json.containsKey("defaultViewport")) {
      defaultViewport = _json["defaultViewport"];
    }
    if (_json.containsKey("kmlUrl")) {
      kmlUrl = _json["kmlUrl"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultViewport != null) {
      _json["defaultViewport"] = defaultViewport;
    }
    if (kmlUrl != null) {
      _json["kmlUrl"] = kmlUrl;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}


/** Not documented yet. */
class MapLayer  extends MapItem {
  /**
   * An array of four numbers (west, south, east, north) which defines the
   * rectangular bounding box of the default viewport. The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> defaultViewport;

  /**
   * The ID of this MapLayer. This ID can be used to request more details about
   * the layer.
   */
  core.String id;

  /** A user defined alias for this MapLayer, specific to this Map. */
  core.String key;

  /** The name of this MapLayer. */
  core.String name;

  /**
   * Identifies this object as a MapLayer.
   * Possible string values are:
   * - "layer"
   */
  final core.String type = "layer";

  /**
   * The visibility setting of this MapLayer. One of "defaultOn" or
   * "defaultOff".
   */
  core.String visibility;


  MapLayer();

  MapLayer.fromJson(core.Map _json) {
    if (_json.containsKey("defaultViewport")) {
      defaultViewport = _json["defaultViewport"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultViewport != null) {
      _json["defaultViewport"] = defaultViewport;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}


/** The response returned by a call to maps.List. */
class MapsListResponse {
  /** Resources returned. */
  core.List<Map> maps;

  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }


  MapsListResponse();

  MapsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("maps")) {
      maps = _json["maps"].map((value) => new Map.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maps != null) {
      _json["maps"] = maps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** A list of the parents of an asset. */
class Parent {
  /** The ID of this parent. */
  core.String id;


  Parent();

  Parent.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}


/** The response returned by a call to parents.List. */
class ParentsListResponse {
  /** Next page token. */
  core.String nextPageToken;

  /** The parent assets. */
  core.List<Parent> parents;


  ParentsListResponse();

  ParentsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("parents")) {
      parents = _json["parents"].map((value) => new Parent.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (parents != null) {
      _json["parents"] = parents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * A permission defines the user or group that has access to an asset, and the
 * type of access they have.
 */
class Permission {
  /**
   * Indicates whether a public asset is listed and can be found via a web
   * search (value true), or is visible only to people who have a link to the
   * asset (value false).
   */
  core.bool discoverable;

  /**
   * The unique identifier of the permission. This could be the email address of
   * the user or group this permission refers to, or the string "anyone" for
   * public permissions.
   */
  core.String id;

  /**
   * The type of access granted to this user or group.
   * Possible string values are:
   * - "owner"
   * - "reader"
   * - "viewer"
   * - "writer"
   */
  core.String role;

  /**
   * The account type.
   * Possible string values are:
   * - "anyone"
   * - "group"
   * - "user"
   */
  core.String type;


  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey("discoverable")) {
      discoverable = _json["discoverable"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (discoverable != null) {
      _json["discoverable"] = discoverable;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** The request sent to mapsengine.permissions.batchDelete. */
class PermissionsBatchDeleteRequest {
  /**
   * An array of permission ids to be removed. This could be the email address
   * of the user or group this permission refers to, or the string "anyone" for
   * public permissions.
   */
  core.List<core.String> ids;


  PermissionsBatchDeleteRequest();

  PermissionsBatchDeleteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ids")) {
      ids = _json["ids"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ids != null) {
      _json["ids"] = ids;
    }
    return _json;
  }
}


/** The response returned by a call to mapsengine.permissions.batchDelete. */
class PermissionsBatchDeleteResponse {

  PermissionsBatchDeleteResponse();

  PermissionsBatchDeleteResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** The request sent to mapsengine.permissions.batchUpdate. */
class PermissionsBatchUpdateRequest {
  /** The permissions to be inserted or updated. */
  core.List<Permission> permissions;


  PermissionsBatchUpdateRequest();

  PermissionsBatchUpdateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"].map((value) => new Permission.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The response returned by a call to mapsengine.permissions.batchUpdate. */
class PermissionsBatchUpdateResponse {

  PermissionsBatchUpdateResponse();

  PermissionsBatchUpdateResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** Not documented yet. */
class PermissionsListResponse {
  /** The set of permissions associated with this asset. */
  core.List<Permission> permissions;


  PermissionsListResponse();

  PermissionsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"].map((value) => new Permission.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Style for points. */
class PointStyle {
  /**
   * Icon for the point; if it isn't null, exactly one of 'name', 'id' or
   * 'scaledShape' must be set.
   */
  IconStyle icon;

  /** Label style for the point. */
  LabelStyle label;


  PointStyle();

  PointStyle.fromJson(core.Map _json) {
    if (_json.containsKey("icon")) {
      icon = new IconStyle.fromJson(_json["icon"]);
    }
    if (_json.containsKey("label")) {
      label = new LabelStyle.fromJson(_json["label"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (icon != null) {
      _json["icon"] = (icon).toJson();
    }
    if (label != null) {
      _json["label"] = (label).toJson();
    }
    return _json;
  }
}


/** Style for polygons. */
class PolygonStyle {
  /**
   * Fill color of the polygon. If not provided, the polygon will be transparent
   * and not visible if there is no border.
   */
  Color fill;

  /** Border of the polygon. 0 < border.width <= 10. */
  Border stroke;


  PolygonStyle();

  PolygonStyle.fromJson(core.Map _json) {
    if (_json.containsKey("fill")) {
      fill = new Color.fromJson(_json["fill"]);
    }
    if (_json.containsKey("stroke")) {
      stroke = new Border.fromJson(_json["stroke"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fill != null) {
      _json["fill"] = (fill).toJson();
    }
    if (stroke != null) {
      _json["stroke"] = (stroke).toJson();
    }
    return _json;
  }
}


/** The response returned by a call to any asset's Process method. */
class ProcessResponse {

  ProcessResponse();

  ProcessResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** A Maps Engine project groups a collection of resources. */
class Project {
  /** An ID used to refer to this Maps Engine project. */
  core.String id;

  /** A user provided name for this Maps Engine project. */
  core.String name;


  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** The response returned by a call to projects.List. */
class ProjectsListResponse {
  /** Projects returned. */
  core.List<Project> projects;


  ProjectsListResponse();

  ProjectsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("projects")) {
      projects = _json["projects"].map((value) => new Project.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (projects != null) {
      _json["projects"] = projects.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The response returned by a call to any asset's Publish method. */
class PublishResponse {

  PublishResponse();

  PublishResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** The published version of a layer. */
class PublishedLayer {
  /** The description of this Layer, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Layer. */
  core.String id;

  /**
   * The type of the datasources used to build this Layer. This should be used
   * instead of datasourceType. At least one of layerType and datasourceType and
   * must be specified, but layerType takes precedence.
   * Possible string values are:
   * - "image"
   * - "vector"
   */
  core.String layerType;

  /** The name of this Layer, supplied by the author. */
  core.String name;

  /** The ID of the project that this Layer is in. */
  core.String projectId;


  PublishedLayer();

  PublishedLayer.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("layerType")) {
      layerType = _json["layerType"];
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
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (layerType != null) {
      _json["layerType"] = layerType;
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


/** The response returned by a call to layers.List.published. */
class PublishedLayersListResponse {
  /** Resources returned. */
  core.List<PublishedLayer> layers;

  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }


  PublishedLayersListResponse();

  PublishedLayersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("layers")) {
      layers = _json["layers"].map((value) => new PublishedLayer.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (layers != null) {
      _json["layers"] = layers.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** The published version of a map asset. */
class PublishedMap {
  /** The contents of this Map. */
  MapContents contents;

  /**
   * An array of four numbers (west, south, east, north) which defines the
   * rectangular bounding box of the default viewport. The numbers represent
   * latitude and longitude in decimal degrees.
   */
  LatLngBox defaultViewport;

  /** The description of this Map, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Map. */
  core.String id;

  /** The name of this Map, supplied by the author. */
  core.String name;

  /** The ID of the project that this Map is in. */
  core.String projectId;


  PublishedMap();

  PublishedMap.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = new MapContents.fromJson(_json["contents"]);
    }
    if (_json.containsKey("defaultViewport")) {
      defaultViewport = new LatLngBox.fromJson(_json["defaultViewport"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
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
    if (contents != null) {
      _json["contents"] = (contents).toJson();
    }
    if (defaultViewport != null) {
      _json["defaultViewport"] = defaultViewport;
    }
    if (description != null) {
      _json["description"] = description;
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


/** The response returned by a call to maps.List.published. */
class PublishedMapsListResponse {
  /** Resources returned. */
  core.List<PublishedMap> maps;

  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }


  PublishedMapsListResponse();

  PublishedMapsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("maps")) {
      maps = _json["maps"].map((value) => new PublishedMap.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maps != null) {
      _json["maps"] = maps.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** A geo-referenced raster. */
class Raster {
  /** The acquisition time of this Raster. */
  AcquisitionTime acquisitionTime;

  /** The name of the attribution to be used for this Raster. */
  core.String attribution;

  /**
   * A rectangular bounding box which contains all of the data in this Raster.
   * The box is expressed as \"west, south, east, north\". The numbers represent
   * latitudes and longitudes in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this raster. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this raster. This is only returned on
   * GET requests and not LIST requests.
   */
  core.String creatorEmail;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /**
   * Deprecated: The name of an access list of the Map Editor type. The user on
   * whose behalf the request is being sent must be an editor on that access
   * list. Note: Google Maps Engine no longer uses access lists. Instead, each
   * asset has its own list of permissions. For backward compatibility, the API
   * still accepts access lists for projects that are already using access
   * lists. If you created a GME account/project after July 14th, 2014, you will
   * not be able to send API requests that include access lists. Note: This is
   * an input field only. It is not returned in response to a list or get
   * request.
   */
  core.String draftAccessList;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** The files associated with this Raster. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /**
   * The last modified time of this raster. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this raster. This is only
   * returned on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /** The mask processing type of this Raster. */
  core.String maskType;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /**
   * The processing status of this Raster.
   * Possible string values are:
   * - "complete"
   * - "failed"
   * - "notReady"
   * - "processing"
   * - "ready"
   */
  core.String processingStatus;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /**
   * The type of this Raster. Always "image" today.
   * Possible string values are:
   * - "image"
   */
  core.String rasterType;

  /** Tags of this Raster. */
  Tags tags;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  Raster();

  Raster.fromJson(core.Map _json) {
    if (_json.containsKey("acquisitionTime")) {
      acquisitionTime = new AcquisitionTime.fromJson(_json["acquisitionTime"]);
    }
    if (_json.containsKey("attribution")) {
      attribution = _json["attribution"];
    }
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("draftAccessList")) {
      draftAccessList = _json["draftAccessList"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("files")) {
      files = _json["files"].map((value) => new File.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("maskType")) {
      maskType = _json["maskType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("rasterType")) {
      rasterType = _json["rasterType"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (acquisitionTime != null) {
      _json["acquisitionTime"] = (acquisitionTime).toJson();
    }
    if (attribution != null) {
      _json["attribution"] = attribution;
    }
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (draftAccessList != null) {
      _json["draftAccessList"] = draftAccessList;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (maskType != null) {
      _json["maskType"] = maskType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (rasterType != null) {
      _json["rasterType"] = rasterType;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/**
 * A raster collection groups multiple Raster resources for inclusion in a
 * Layer.
 */
class RasterCollection {
  /**
   * The name of the attribution to be used for this RasterCollection. Note:
   * Attribution is returned in response to a get request but not a list
   * request. After requesting a list of raster collections, you'll need to send
   * a get request to retrieve the attribution for each raster collection.
   */
  core.String attribution;

  /**
   * A rectangular bounding box which contains all of the data in this
   * RasterCollection. The box is expressed as \"west, south, east, north\". The
   * numbers represent latitude and longitude in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this RasterCollection. The value is an RFC 3339
   * formatted date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this raster collection. This is only
   * returned on GET requests and not LIST requests.
   */
  core.String creatorEmail;

  /** The description of this RasterCollection, supplied by the author. */
  core.String description;

  /**
   * Deprecated: The name of an access list of the Map Editor type. The user on
   * whose behalf the request is being sent must be an editor on that access
   * list. Note: Google Maps Engine no longer uses access lists. Instead, each
   * asset has its own list of permissions. For backward compatibility, the API
   * still accepts access lists for projects that are already using access
   * lists. If you created a GME account/project after July 14th, 2014, you will
   * not be able to send API requests that include access lists. Note: This is
   * an input field only. It is not returned in response to a list or get
   * request.
   */
  core.String draftAccessList;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** A globally unique ID, used to refer to this RasterCollection. */
  core.String id;

  /**
   * The last modified time of this RasterCollection. The value is an RFC 3339
   * formatted date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this raster collection. This is
   * only returned on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /** True if this RasterCollection is a mosaic. */
  core.bool mosaic;

  /** The name of this RasterCollection, supplied by the author. */
  core.String name;

  /**
   * The processing status of this RasterCollection.
   * Possible string values are:
   * - "complete"
   * - "failed"
   * - "notReady"
   * - "processing"
   * - "ready"
   */
  core.String processingStatus;

  /** The ID of the project that this RasterCollection is in. */
  core.String projectId;

  /**
   * The type of rasters contained within this RasterCollection.
   * Possible string values are:
   * - "image"
   */
  core.String rasterType;

  /** Tags of this RasterCollection. */
  Tags tags;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  RasterCollection();

  RasterCollection.fromJson(core.Map _json) {
    if (_json.containsKey("attribution")) {
      attribution = _json["attribution"];
    }
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("draftAccessList")) {
      draftAccessList = _json["draftAccessList"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("mosaic")) {
      mosaic = _json["mosaic"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("rasterType")) {
      rasterType = _json["rasterType"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attribution != null) {
      _json["attribution"] = attribution;
    }
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (draftAccessList != null) {
      _json["draftAccessList"] = draftAccessList;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (mosaic != null) {
      _json["mosaic"] = mosaic;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (rasterType != null) {
      _json["rasterType"] = rasterType;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/**
 * The response returned by a call to raster_collections.List. Note: The list
 * response does not include all the fields available in a raster collection.
 * Refer to the RasterCollection resource description for details of the fields
 * that are not included. You'll need to send a get request to retrieve the
 * additional fields for each raster collection.
 */
class RasterCollectionsListResponse {
  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Resources returned. */
  core.List<RasterCollection> rasterCollections;


  RasterCollectionsListResponse();

  RasterCollectionsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("rasterCollections")) {
      rasterCollections = _json["rasterCollections"].map((value) => new RasterCollection.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (rasterCollections != null) {
      _json["rasterCollections"] = rasterCollections.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** A raster resource. */
class RasterCollectionsRaster {
  /**
   * A rectangular bounding box which contains all of the data in this Raster.
   * The box is expressed as \"west, south, east, north\". The numbers represent
   * latitudes and longitudes in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this raster. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /** The description of this Raster, supplied by the author. */
  core.String description;

  /** A globally unique ID, used to refer to this Raster. */
  core.String id;

  /**
   * The last modified time of this raster. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /** The name of this Raster, supplied by the author. */
  core.String name;

  /** The ID of the project that this Raster is in. */
  core.String projectId;

  /** The type of this Raster. Always "image" today. */
  core.String rasterType;

  /** Tags of this Raster. */
  core.List<core.String> tags;


  RasterCollectionsRaster();

  RasterCollectionsRaster.fromJson(core.Map _json) {
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("rasterType")) {
      rasterType = _json["rasterType"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (rasterType != null) {
      _json["rasterType"] = rasterType;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}


/** The request sent to rasterCollections.Rasters.BatchDelete. */
class RasterCollectionsRasterBatchDeleteRequest {
  /** An array of Raster asset IDs to be removed from this RasterCollection. */
  core.List<core.String> ids;


  RasterCollectionsRasterBatchDeleteRequest();

  RasterCollectionsRasterBatchDeleteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ids")) {
      ids = _json["ids"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ids != null) {
      _json["ids"] = ids;
    }
    return _json;
  }
}


/**
 * The response returned by a call to rasterCollections.rasters.batchDelete.
 */
class RasterCollectionsRastersBatchDeleteResponse {

  RasterCollectionsRastersBatchDeleteResponse();

  RasterCollectionsRastersBatchDeleteResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** The request sent to rasterCollections.Rasters.BatchInsert. */
class RasterCollectionsRastersBatchInsertRequest {
  /** An array of Raster asset IDs to be added to this RasterCollection. */
  core.List<core.String> ids;


  RasterCollectionsRastersBatchInsertRequest();

  RasterCollectionsRastersBatchInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ids")) {
      ids = _json["ids"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ids != null) {
      _json["ids"] = ids;
    }
    return _json;
  }
}


/**
 * The response returned by a call to rasterCollections.rasters.batchInsert.
 */
class RasterCollectionsRastersBatchInsertResponse {

  RasterCollectionsRastersBatchInsertResponse();

  RasterCollectionsRastersBatchInsertResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** The response returned by a call to rasterCollections.rasters.List. */
class RasterCollectionsRastersListResponse {
  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<RasterCollectionsRaster> rasters;


  RasterCollectionsRastersListResponse();

  RasterCollectionsRastersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("rasters")) {
      rasters = _json["rasters"].map((value) => new RasterCollectionsRaster.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (rasters != null) {
      _json["rasters"] = rasters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The response returned by a call to rasters.List. */
class RastersListResponse {
  /** Next page token. */
  core.String nextPageToken;

  /** Resources returned. */
  core.List<Raster> rasters;


  RastersListResponse();

  RastersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("rasters")) {
      rasters = _json["rasters"].map((value) => new Raster.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (rasters != null) {
      _json["rasters"] = rasters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Parameters for styling points as scaled shapes. */
class ScaledShape {
  /**
   * Border color/width of the shape. If not specified the shape won't have a
   * border.
   */
  Border border;

  /**
   * The fill color of the shape. If not specified the shape will be transparent
   * (although the borders may not be).
   */
  Color fill;

  /**
   * Name of the shape.
   * Possible string values are:
   * - "circle"
   */
  core.String shape;


  ScaledShape();

  ScaledShape.fromJson(core.Map _json) {
    if (_json.containsKey("border")) {
      border = new Border.fromJson(_json["border"]);
    }
    if (_json.containsKey("fill")) {
      fill = new Color.fromJson(_json["fill"]);
    }
    if (_json.containsKey("shape")) {
      shape = _json["shape"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (border != null) {
      _json["border"] = (border).toJson();
    }
    if (fill != null) {
      _json["fill"] = (fill).toJson();
    }
    if (shape != null) {
      _json["shape"] = shape;
    }
    return _json;
  }
}


/** Parameters for scaling scaled shapes. */
class ScalingFunction {
  /** Name of the numeric column used to scale a shape. */
  core.String column;

  /**
   * The type of scaling function to use. Defaults to SQRT. Currently only
   * linear and square root scaling are supported.
   * Possible string values are:
   * - "linear"
   * - "sqrt"
   */
  core.String scalingType;

  /**
   * The range of shape sizes, in pixels. For circles, the size corresponds to
   * the diameter.
   */
  SizeRange sizeRange;

  /** The range of values to display across the size range. */
  ValueRange valueRange;


  ScalingFunction();

  ScalingFunction.fromJson(core.Map _json) {
    if (_json.containsKey("column")) {
      column = _json["column"];
    }
    if (_json.containsKey("scalingType")) {
      scalingType = _json["scalingType"];
    }
    if (_json.containsKey("sizeRange")) {
      sizeRange = new SizeRange.fromJson(_json["sizeRange"]);
    }
    if (_json.containsKey("valueRange")) {
      valueRange = new ValueRange.fromJson(_json["valueRange"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (column != null) {
      _json["column"] = column;
    }
    if (scalingType != null) {
      _json["scalingType"] = scalingType;
    }
    if (sizeRange != null) {
      _json["sizeRange"] = (sizeRange).toJson();
    }
    if (valueRange != null) {
      _json["valueRange"] = (valueRange).toJson();
    }
    return _json;
  }
}


/**
 * A schema indicating the properties which may be associated with features
 * within a Table, and the types of those properties.
 */
class Schema {
  /**
   * An array of TableColumn objects. The first object in the array must be
   * named geometry and be of type points, lineStrings, polygons, or
   * mixedGeometry.
   */
  core.List<TableColumn> columns;

  /**
   * The name of the column that contains a feature's geometry. This field can
   * be omitted during table create; Google Maps Engine supports only a single
   * geometry column, which must be named geometry and be the first object in
   * the columns array.
   */
  core.String primaryGeometry;

  /**
   * The name of the column that contains the unique identifier of a Feature.
   */
  core.String primaryKey;


  Schema();

  Schema.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = _json["columns"].map((value) => new TableColumn.fromJson(value)).toList();
    }
    if (_json.containsKey("primaryGeometry")) {
      primaryGeometry = _json["primaryGeometry"];
    }
    if (_json.containsKey("primaryKey")) {
      primaryKey = _json["primaryKey"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columns != null) {
      _json["columns"] = columns.map((value) => (value).toJson()).toList();
    }
    if (primaryGeometry != null) {
      _json["primaryGeometry"] = primaryGeometry;
    }
    if (primaryKey != null) {
      _json["primaryKey"] = primaryKey;
    }
    return _json;
  }
}


/**
 * Scaled shape size range in pixels. For circles, size corresponds to diameter.
 */
class SizeRange {
  /** Maximum size, in pixels. */
  core.double max;

  /** Minimum size, in pixels. */
  core.double min;


  SizeRange();

  SizeRange.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = _json["max"];
    }
    if (_json.containsKey("min")) {
      min = _json["min"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    return _json;
  }
}


/** A collection of geographic features, and associated metadata. */
class Table {
  /**
   * A rectangular bounding box which contains all of the data in this Table.
   * The box is expressed as \"west, south, east, north\". The numbers represent
   * latitude and longitude in decimal degrees.
   */
  core.List<core.double> bbox;

  /**
   * The creation time of this table. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime creationTime;

  /**
   * The email address of the creator of this table. This is only returned on
   * GET requests and not LIST requests.
   */
  core.String creatorEmail;

  /** The description of this table, supplied by the author. */
  core.String description;

  /**
   * Deprecated: The name of an access list of the Map Editor type. The user on
   * whose behalf the request is being sent must be an editor on that access
   * list. Note: Google Maps Engine no longer uses access lists. Instead, each
   * asset has its own list of permissions. For backward compatibility, the API
   * still accepts access lists for projects that are already using access
   * lists. If you created a GME account/project after July 14th, 2014, you will
   * not be able to send API requests that include access lists. Note: This is
   * an input field only. It is not returned in response to a list or get
   * request.
   */
  core.String draftAccessList;

  /** The ETag, used to refer to the current version of the asset. */
  core.String etag;

  /** The files associated with this table. */
  core.List<File> files;

  /** A globally unique ID, used to refer to this table. */
  core.String id;

  /**
   * The last modified time of this table. The value is an RFC 3339 formatted
   * date-time value (e.g. 1970-01-01T00:00:00Z).
   */
  core.DateTime lastModifiedTime;

  /**
   * The email address of the last modifier of this table. This is only returned
   * on GET requests and not LIST requests.
   */
  core.String lastModifierEmail;

  /** The name of this table, supplied by the author. */
  core.String name;

  /**
   * The processing status of this table.
   * Possible string values are:
   * - "complete"
   * - "failed"
   * - "notReady"
   * - "processing"
   * - "ready"
   */
  core.String processingStatus;

  /** The ID of the project to which the table belongs. */
  core.String projectId;

  /**
   * Deprecated: The access list to whom view permissions are granted. The value
   * must be the name of a Maps Engine access list of the Map Viewer type, and
   * the user must be a viewer on that list. Note: Google Maps Engine no longer
   * uses access lists. Instead, each asset has its own list of permissions. For
   * backward compatibility, the API still accepts access lists for projects
   * that are already using access lists. If you created a GME account/project
   * after July 14th, 2014, you will not be able to send API requests that
   * include access lists. Note: This is an input field only. It is not returned
   * in response to a list or get request.
   */
  core.String publishedAccessList;

  /**
   * The schema for this table. Note: The schema is returned in response to a
   * get request but not a list request. After requesting a list of tables,
   * you'll need to send a get request to retrieve the schema for each table.
   */
  Schema schema;

  /**
   * Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO
   * 8859-1, and Shift_JIS.
   */
  core.String sourceEncoding;

  /**
   * An array of text strings, with each string representing a tag. More
   * information about tags can be found in the Tagging data article of the Maps
   * Engine help center.
   */
  Tags tags;

  /** If true, WRITERs of the asset are able to edit the asset permissions. */
  core.bool writersCanEditPermissions;


  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey("bbox")) {
      bbox = _json["bbox"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("creatorEmail")) {
      creatorEmail = _json["creatorEmail"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("draftAccessList")) {
      draftAccessList = _json["draftAccessList"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("files")) {
      files = _json["files"].map((value) => new File.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = core.DateTime.parse(_json["lastModifiedTime"]);
    }
    if (_json.containsKey("lastModifierEmail")) {
      lastModifierEmail = _json["lastModifierEmail"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("publishedAccessList")) {
      publishedAccessList = _json["publishedAccessList"];
    }
    if (_json.containsKey("schema")) {
      schema = new Schema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("sourceEncoding")) {
      sourceEncoding = _json["sourceEncoding"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("writersCanEditPermissions")) {
      writersCanEditPermissions = _json["writersCanEditPermissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bbox != null) {
      _json["bbox"] = bbox;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (creatorEmail != null) {
      _json["creatorEmail"] = creatorEmail;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (draftAccessList != null) {
      _json["draftAccessList"] = draftAccessList;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = (lastModifiedTime).toIso8601String();
    }
    if (lastModifierEmail != null) {
      _json["lastModifierEmail"] = lastModifierEmail;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (publishedAccessList != null) {
      _json["publishedAccessList"] = publishedAccessList;
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (sourceEncoding != null) {
      _json["sourceEncoding"] = sourceEncoding;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (writersCanEditPermissions != null) {
      _json["writersCanEditPermissions"] = writersCanEditPermissions;
    }
    return _json;
  }
}


/** Not documented yet. */
class TableColumn {
  /** The column name. */
  core.String name;

  /**
   * The type of data stored in this column.
   * Possible string values are:
   * - "datetime"
   * - "double"
   * - "integer"
   * - "lineStrings"
   * - "mixedGeometry"
   * - "points"
   * - "polygons"
   * - "string"
   */
  core.String type;


  TableColumn();

  TableColumn.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * The response returned by a call to tables.List. Note: The list response does
 * not include all the fields available in a table. Refer to the table resource
 * description for details of the fields that are not included. You'll need to
 * send a get request to retrieve the additional fields for each table.
 */
class TablesListResponse {
  /** Next page token. */
  core.String nextPageToken;

  core.List<core.int> get nextPageTokenAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(nextPageToken);
  }

  void set nextPageTokenAsBytes(core.List<core.int> _bytes) {
    nextPageToken = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /** Resources returned. */
  core.List<Table> tables;


  TablesListResponse();

  TablesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tables")) {
      tables = _json["tables"].map((value) => new Table.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      _json["tables"] = tables.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class Tags
    extends collection.ListBase<core.String> {
  final core.List<core.String> _inner;

  Tags() : _inner = [];

  Tags.fromJson(core.List json)
      : _inner = json.map((value) => value).toList();

  core.List toJson() {
    return _inner.map((value) => value).toList();
  }

  core.String operator [](core.int key) => _inner[key];

  void operator []=(core.int key, core.String value) {
    _inner[key] = value;
  }

  core.int get length => _inner.length;

  void set length(core.int newLength) {
    _inner.length = newLength;
  }
}


/**
 * Range of values used for scaling shapes. The min/max values will be drawn as
 * shapes with the min/max size.
 */
class ValueRange {
  /** Maximum value. */
  core.double max;

  /** Minimum value. */
  core.double min;


  ValueRange();

  ValueRange.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = _json["max"];
    }
    if (_json.containsKey("min")) {
      min = _json["min"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    return _json;
  }
}


/** A vector style contains styling information for vector layer. */
class VectorStyle {
  /** Not documented yet. */
  core.List<DisplayRule> displayRules;

  /**
   * Individual feature info, this is called Info Window in Maps Engine UI. If
   * not provided, a default template with all attributes will be generated.
   */
  FeatureInfo featureInfo;

  /**
   * The type of the vector style. Currently, only displayRule is supported.
   * Possible string values are:
   * - "displayRule"
   */
  core.String type;


  VectorStyle();

  VectorStyle.fromJson(core.Map _json) {
    if (_json.containsKey("displayRules")) {
      displayRules = _json["displayRules"].map((value) => new DisplayRule.fromJson(value)).toList();
    }
    if (_json.containsKey("featureInfo")) {
      featureInfo = new FeatureInfo.fromJson(_json["featureInfo"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayRules != null) {
      _json["displayRules"] = displayRules.map((value) => (value).toJson()).toList();
    }
    if (featureInfo != null) {
      _json["featureInfo"] = (featureInfo).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * Zoom level range. Zoom levels are restricted between 0 and 24, inclusive.
 */
class ZoomLevels {
  /** Maximum zoom level. */
  core.int max;

  /** Minimum zoom level. */
  core.int min;


  ZoomLevels();

  ZoomLevels.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = _json["max"];
    }
    if (_json.containsKey("min")) {
      min = _json["min"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    return _json;
  }
}


