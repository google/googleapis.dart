// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.vision.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client vision/v1';

/// Integrates Google Vision features, including image labeling, face, logo, and
/// landmark detection, optical character recognition (OCR), and detection of
/// explicit content, into applications.
class VisionApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Apply machine learning models to understand and label images
  static const CloudVisionScope =
      "https://www.googleapis.com/auth/cloud-vision";

  final commons.ApiRequester _requester;

  FilesResourceApi get files => new FilesResourceApi(_requester);
  ImagesResourceApi get images => new ImagesResourceApi(_requester);
  LocationsResourceApi get locations => new LocationsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  VisionApi(http.Client client,
      {core.String rootUrl = "https://vision.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class FilesResourceApi {
  final commons.ApiRequester _requester;

  FilesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Service that performs image detection and annotation for a batch of files.
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  ///
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateFilesResponse> annotate(
      BatchAnnotateFilesRequest request,
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

    _url = 'v1/files:annotate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchAnnotateFilesResponse.fromJson(data));
  }

  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page. Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Operation> asyncBatchAnnotate(
      AsyncBatchAnnotateFilesRequest request,
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

    _url = 'v1/files:asyncBatchAnnotate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ImagesResourceApi {
  final commons.ApiRequester _requester;

  ImagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Run image detection and annotation for a batch of images.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateImagesResponse> annotate(
      BatchAnnotateImagesRequest request,
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

    _url = 'v1/images:annotate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchAnnotateImagesResponse.fromJson(data));
  }

  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `OperationMetadata` (metadata).
  /// `Operation.response` contains `AsyncBatchAnnotateImagesResponse`
  /// (results).
  ///
  /// This service will write image annotation outputs to json files in customer
  /// GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Operation> asyncBatchAnnotate(
      AsyncBatchAnnotateImagesRequest request,
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

    _url = 'v1/images:asyncBatchAnnotate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class LocationsResourceApi {
  final commons.ApiRequester _requester;

  LocationsOperationsResourceApi get operations =>
      new LocationsOperationsResourceApi(_requester);

  LocationsResourceApi(commons.ApiRequester client) : _requester = client;
}

class LocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  LocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^locations/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^operations/.+$".
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
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^operations/.+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      new ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi get operations =>
      new ProjectsLocationsOperationsResourceApi(_requester);
  ProjectsLocationsProductSetsResourceApi get productSets =>
      new ProjectsLocationsProductSetsResourceApi(_requester);
  ProjectsLocationsProductsResourceApi get products =>
      new ProjectsLocationsProductsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsLocationsProductSetsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductSetsProductsResourceApi get products =>
      new ProjectsLocationsProductSetsProductsResourceApi(_requester);

  ProjectsLocationsProductSetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Adds a Product to the specified ProductSet. If the Product is already
  /// present, no change is made.
  ///
  /// One Product can be added to at most 100 ProductSets.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the Product or the ProductSet doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the ProductSet to modify.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
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
  async.Future<Empty> addProduct(
      AddProductToProductSetRequest request, core.String name,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':addProduct';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Creates and returns a new ProductSet resource.
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if display_name is missing, or is longer than
  ///   4096 characters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project in which the ProductSet should be created.
  ///
  /// Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [productSetId] - A user-supplied resource id for this ProductSet. If set,
  /// the server will
  /// attempt to use this value as the resource id. If it is already in use, an
  /// error is returned with code ALREADY_EXISTS. Must be at most 128 characters
  /// long. It cannot contain the character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> create(ProductSet request, core.String parent,
      {core.String productSetId, core.String $fields}) {
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
    if (productSetId != null) {
      _queryParams["productSetId"] = [productSetId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/productSets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /// Permanently deletes a ProductSet. Products and ReferenceImages in the
  /// ProductSet are not deleted.
  ///
  /// The actual image files are not deleted from Google Cloud Storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the ProductSet to delete.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information associated with a ProductSet.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the ProductSet does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the ProductSet to get.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOG_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /// Asynchronous API that imports a list of reference images to specified
  /// product sets based on a list of image information.
  ///
  /// The google.longrunning.Operation API can be used to keep track of the
  /// progress and results of the request.
  /// `Operation.metadata` contains `BatchOperationMetadata`. (progress)
  /// `Operation.response` contains `ImportProductSetsResponse`. (results)
  ///
  /// The input source of this method is a csv file on Google Cloud Storage.
  /// For the format of the csv file please see
  /// ImportProductSetsGcsSource.csv_file_uri.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project in which the ProductSets should be imported.
  ///
  /// Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Operation> import(
      ImportProductSetsRequest request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/productSets:import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists ProductSets in an unspecified order.
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if page_size is greater than 100, or less
  ///   than 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project from which ProductSets should be listed.
  ///
  /// Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductSetsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/productSets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProductSetsResponse.fromJson(data));
  }

  /// Makes changes to a ProductSet resource.
  /// Only display_name can be updated currently.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the ProductSet does not exist.
  /// * Returns INVALID_ARGUMENT if display_name is present in update_mask but
  ///   missing from the request or longer than 4096 characters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ProductSet.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.
  ///
  /// This field is ignored when creating a ProductSet.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
  ///
  /// [updateMask] - The FieldMask that specifies which fields to
  /// update.
  /// If update_mask isn't specified, all mutable fields are to be updated.
  /// Valid mask path is `display_name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> patch(ProductSet request, core.String name,
      {core.String updateMask, core.String $fields}) {
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
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductSet.fromJson(data));
  }

  /// Removes a Product from the specified ProductSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the ProductSet to modify.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
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
  async.Future<Empty> removeProduct(
      RemoveProductFromProductSetRequest request, core.String name,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':removeProduct';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class ProjectsLocationsProductSetsProductsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductSetsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the Products in a ProductSet, in an unspecified order. If the
  /// ProductSet does not exist, the products field of the response will be
  /// empty.
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than
  /// 1.
  ///
  /// Request parameters:
  ///
  /// [name] - The ProductSet resource for which to retrieve Products.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/productSets/[^/]+$".
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsInProductSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsInProductSetResponse> list(core.String name,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListProductsInProductSetResponse.fromJson(data));
  }
}

class ProjectsLocationsProductsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsReferenceImagesResourceApi get referenceImages =>
      new ProjectsLocationsProductsReferenceImagesResourceApi(_requester);

  ProjectsLocationsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates and returns a new product resource.
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if display_name is missing or longer than 4096
  ///   characters.
  /// * Returns INVALID_ARGUMENT if description is longer than 4096 characters.
  /// * Returns INVALID_ARGUMENT if product_category is missing or invalid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project in which the Product should be created.
  ///
  /// Format is
  /// `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [productId] - A user-supplied resource id for this Product. If set, the
  /// server will
  /// attempt to use this value as the resource id. If it is already in use, an
  /// error is returned with code ALREADY_EXISTS. Must be at most 128 characters
  /// long. It cannot contain the character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> create(Product request, core.String parent,
      {core.String productId, core.String $fields}) {
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
    if (productId != null) {
      _queryParams["productId"] = [productId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/products';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /// Permanently deletes a product and its reference images.
  ///
  /// Metadata of the product and all its images will be deleted right away, but
  /// search queries against ProductSets containing the product may still work
  /// until all related caches are refreshed.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of product to delete.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/products/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information associated with a Product.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the Product does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Product to get.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }

  /// Lists products in an unspecified order.
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if page_size is greater than 100 or less than
  /// 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project OR ProductSet from which Products should be listed.
  ///
  /// Format:
  /// `projects/PROJECT_ID/locations/LOC_ID`
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListProductsResponse.fromJson(data));
  }

  /// Makes changes to a Product resource.
  /// Only the `display_name`, `description`, and `labels` fields can be updated
  /// right now.
  ///
  /// If labels are updated, the change will not be reflected in queries until
  /// the next index time.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the Product does not exist.
  /// * Returns INVALID_ARGUMENT if display_name is present in update_mask but
  /// is
  ///   missing from the request or longer than 4096 characters.
  /// * Returns INVALID_ARGUMENT if description is present in update_mask but is
  ///   longer than 4096 characters.
  /// * Returns INVALID_ARGUMENT if product_category is present in update_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/products/[^/]+$".
  ///
  /// [updateMask] - The FieldMask that specifies which fields
  /// to update.
  /// If update_mask isn't specified, all mutable fields are to be updated.
  /// Valid mask paths include `product_labels`, `display_name`, and
  /// `description`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> patch(Product request, core.String name,
      {core.String updateMask, core.String $fields}) {
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
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }
}

class ProjectsLocationsProductsReferenceImagesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsReferenceImagesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates and returns a new ReferenceImage resource.
  ///
  /// The `bounding_poly` field is optional. If `bounding_poly` is not
  /// specified,
  /// the system will try to detect regions of interest in the image that are
  /// compatible with the product_category on the parent product. If it is
  /// specified, detection is ALWAYS skipped. The system converts polygons into
  /// non-rotated rectangles.
  ///
  /// Note that the pipeline will resize the image if the image resolution is
  /// too
  /// large to process (above 50MP).
  ///
  /// Possible errors:
  ///
  /// * Returns INVALID_ARGUMENT if the image_uri is missing or longer than 4096
  ///   characters.
  /// * Returns INVALID_ARGUMENT if the product does not exist.
  /// * Returns INVALID_ARGUMENT if bounding_poly is not provided, and nothing
  ///   compatible with the parent product's product_category is detected.
  /// * Returns INVALID_ARGUMENT if bounding_poly contains more than 10
  /// polygons.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the product in which to create the reference
  /// image.
  ///
  /// Format is
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/products/[^/]+$".
  ///
  /// [referenceImageId] - A user-supplied resource id for the ReferenceImage to
  /// be added. If set,
  /// the server will attempt to use this value as the resource id. If it is
  /// already in use, an error is returned with code ALREADY_EXISTS. Must be at
  /// most 128 characters long. It cannot contain the character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReferenceImage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReferenceImage> create(
      ReferenceImage request, core.String parent,
      {core.String referenceImageId, core.String $fields}) {
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
    if (referenceImageId != null) {
      _queryParams["referenceImageId"] = [referenceImageId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/referenceImages';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReferenceImage.fromJson(data));
  }

  /// Permanently deletes a reference image.
  ///
  /// The image metadata will be deleted right away, but search queries
  /// against ProductSets containing the image may still work until all related
  /// caches are refreshed.
  ///
  /// The actual image files are not deleted from Google Cloud Storage.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the reference image to delete.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/products/[^/]+/referenceImages/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information associated with a ReferenceImage.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the specified image does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ReferenceImage to get.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/products/[^/]+/referenceImages/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReferenceImage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReferenceImage> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReferenceImage.fromJson(data));
  }

  /// Lists reference images.
  ///
  /// Possible errors:
  ///
  /// * Returns NOT_FOUND if the parent product does not exist.
  /// * Returns INVALID_ARGUMENT if the page_size is greater than 100, or less
  ///   than 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the product containing the reference images.
  ///
  /// Format is
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/products/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// is the value
  /// of `nextPageToken` returned in a previous reference image list request.
  ///
  /// Defaults to the first page if not specified.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReferenceImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReferenceImagesResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/referenceImages';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListReferenceImagesResponse.fromJson(data));
  }
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// Request message for the `AddProductToProductSet` method.
class AddProductToProductSetRequest {
  /// The resource name for the Product to be added to this ProductSet.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  core.String product;

  AddProductToProductSetRequest();

  AddProductToProductSetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("product")) {
      product = _json["product"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (product != null) {
      _json["product"] = product;
    }
    return _json;
  }
}

/// A request to annotate one single file, e.g. a PDF, TIFF or GIF file.
class AnnotateFileRequest {
  /// Required. Requested features.
  core.List<Feature> features;

  /// Additional context that may accompany the image(s) in the file.
  ImageContext imageContext;

  /// Required. Information about the input file.
  InputConfig inputConfig;

  /// Pages of the file to perform image annotation.
  ///
  /// Pages starts from 1, we assume the first page of the file is page 1.
  /// At most 5 pages are supported per request. Pages can be negative.
  ///
  /// Page 1 means the first page.
  /// Page 2 means the second page.
  /// Page -1 means the last page.
  /// Page -2 means the second to the last page.
  ///
  /// If the file is GIF instead of PDF or TIFF, page refers to GIF frames.
  ///
  /// If this field is empty, by default the service performs image annotation
  /// for the first 5 pages of the file.
  core.List<core.int> pages;

  AnnotateFileRequest();

  AnnotateFileRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List)
          .map<Feature>((value) => new Feature.fromJson(value))
          .toList();
    }
    if (_json.containsKey("imageContext")) {
      imageContext = new ImageContext.fromJson(_json["imageContext"]);
    }
    if (_json.containsKey("inputConfig")) {
      inputConfig = new InputConfig.fromJson(_json["inputConfig"]);
    }
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List).cast<core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (imageContext != null) {
      _json["imageContext"] = (imageContext).toJson();
    }
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (pages != null) {
      _json["pages"] = pages;
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  AnnotateFileResponse();

  AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new InputConfig.fromJson(_json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<AnnotateImageResponse>(
              (value) => new AnnotateImageResponse.fromJson(value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Request for performing Google Cloud Vision API tasks over a user-provided
/// image, with user-requested features, and with context information.
class AnnotateImageRequest {
  /// Requested features.
  core.List<Feature> features;

  /// The image to be processed.
  Image image;

  /// Additional context that may accompany the image.
  ImageContext imageContext;

  AnnotateImageRequest();

  AnnotateImageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List)
          .map<Feature>((value) => new Feature.fromJson(value))
          .toList();
    }
    if (_json.containsKey("image")) {
      image = new Image.fromJson(_json["image"]);
    }
    if (_json.containsKey("imageContext")) {
      imageContext = new ImageContext.fromJson(_json["imageContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (imageContext != null) {
      _json["imageContext"] = (imageContext).toJson();
    }
    return _json;
  }
}

/// Response to an image annotation request.
class AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<LocalizedObjectAnnotation> localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  WebDetection webDetection;

  AnnotateImageResponse();

  AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new ImageAnnotationContext.fromJson(_json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new CropHintsAnnotation.fromJson(_json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<FaceAnnotation>((value) => new FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new TextAnnotation.fromJson(_json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new ImageProperties.fromJson(_json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<EntityAnnotation>(
              (value) => new EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<EntityAnnotation>(
              (value) => new EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations =
          (_json["localizedObjectAnnotations"] as core.List)
              .map<LocalizedObjectAnnotation>(
                  (value) => new LocalizedObjectAnnotation.fromJson(value))
              .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<EntityAnnotation>(
              (value) => new EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new ProductSearchResults.fromJson(_json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new SafeSearchAnnotation.fromJson(_json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<EntityAnnotation>(
              (value) => new EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new WebDetection.fromJson(_json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// An offline file annotation request.
class AsyncAnnotateFileRequest {
  /// Required. Requested features.
  core.List<Feature> features;

  /// Additional context that may accompany the image(s) in the file.
  ImageContext imageContext;

  /// Required. Information about the input file.
  InputConfig inputConfig;

  /// Required. The desired output location and metadata (e.g. format).
  OutputConfig outputConfig;

  AsyncAnnotateFileRequest();

  AsyncAnnotateFileRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List)
          .map<Feature>((value) => new Feature.fromJson(value))
          .toList();
    }
    if (_json.containsKey("imageContext")) {
      imageContext = new ImageContext.fromJson(_json["imageContext"]);
    }
    if (_json.containsKey("inputConfig")) {
      inputConfig = new InputConfig.fromJson(_json["inputConfig"]);
    }
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (features != null) {
      _json["features"] = features.map((value) => (value).toJson()).toList();
    }
    if (imageContext != null) {
      _json["imageContext"] = (imageContext).toJson();
    }
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  OutputConfig outputConfig;

  AsyncAnnotateFileResponse();

  AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Multiple async file annotation requests are batched into a single service
/// call.
class AsyncBatchAnnotateFilesRequest {
  /// Individual async file annotation requests for this batch.
  core.List<AsyncAnnotateFileRequest> requests;

  AsyncBatchAnnotateFilesRequest();

  AsyncBatchAnnotateFilesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("requests")) {
      requests = (_json["requests"] as core.List)
          .map<AsyncAnnotateFileRequest>(
              (value) => new AsyncAnnotateFileRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requests != null) {
      _json["requests"] = requests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<AsyncAnnotateFileResponse> responses;

  AsyncBatchAnnotateFilesResponse();

  AsyncBatchAnnotateFilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<AsyncAnnotateFileResponse>(
              (value) => new AsyncAnnotateFileResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Request for async image annotation for a list of images.
class AsyncBatchAnnotateImagesRequest {
  /// Required. The desired output location and metadata (e.g. format).
  OutputConfig outputConfig;

  /// Individual image annotation requests for this batch.
  core.List<AnnotateImageRequest> requests;

  AsyncBatchAnnotateImagesRequest();

  AsyncBatchAnnotateImagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
    if (_json.containsKey("requests")) {
      requests = (_json["requests"] as core.List)
          .map<AnnotateImageRequest>(
              (value) => new AnnotateImageRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    if (requests != null) {
      _json["requests"] = requests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to an async batch image annotation request.
class AsyncBatchAnnotateImagesResponse {
  /// The output location and metadata from AsyncBatchAnnotateImagesRequest.
  OutputConfig outputConfig;

  AsyncBatchAnnotateImagesResponse();

  AsyncBatchAnnotateImagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// A list of requests to annotate files using the BatchAnnotateFiles API.
class BatchAnnotateFilesRequest {
  /// The list of file annotation requests. Right now we support only one
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<AnnotateFileRequest> requests;

  BatchAnnotateFilesRequest();

  BatchAnnotateFilesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("requests")) {
      requests = (_json["requests"] as core.List)
          .map<AnnotateFileRequest>(
              (value) => new AnnotateFileRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requests != null) {
      _json["requests"] = requests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A list of file annotation responses.
class BatchAnnotateFilesResponse {
  /// The list of file annotation responses, each response corresponding to each
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<AnnotateFileResponse> responses;

  BatchAnnotateFilesResponse();

  BatchAnnotateFilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<AnnotateFileResponse>(
              (value) => new AnnotateFileResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Multiple image annotation requests are batched into a single service call.
class BatchAnnotateImagesRequest {
  /// Individual image annotation requests for this batch.
  core.List<AnnotateImageRequest> requests;

  BatchAnnotateImagesRequest();

  BatchAnnotateImagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("requests")) {
      requests = (_json["requests"] as core.List)
          .map<AnnotateImageRequest>(
              (value) => new AnnotateImageRequest.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (requests != null) {
      _json["requests"] = requests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a batch image annotation request.
class BatchAnnotateImagesResponse {
  /// Individual responses to image annotation requests within the batch.
  core.List<AnnotateImageResponse> responses;

  BatchAnnotateImagesResponse();

  BatchAnnotateImagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<AnnotateImageResponse>(
              (value) => new AnnotateImageResponse.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Metadata for the batch operations such as the current state.
///
/// This is included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
class BatchOperationMetadata {
  /// The time when the batch request is finished and
  /// google.longrunning.Operation.done is set to true.
  core.String endTime;

  /// The current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "SUCCESSFUL" : The request is done and at least one item has been
  /// successfully
  /// processed.
  /// - "FAILED" : The request is done and no item has been successfully
  /// processed.
  /// - "CANCELLED" : The request is done after the
  /// longrunning.Operations.CancelOperation has
  /// been called by the user.  Any records that were processed before the
  /// cancel command are output as specified in the request.
  core.String state;

  /// The time when the batch request was submitted to the server.
  core.String submitTime;

  BatchOperationMetadata();

  BatchOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submitTime")) {
      submitTime = _json["submitTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submitTime != null) {
      _json["submitTime"] = submitTime;
    }
    return _json;
  }
}

/// Logical element on the page.
class Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<Paragraph> paragraphs;

  /// Additional information detected for the block.
  TextProperty property;

  Block();

  Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new BoundingPoly.fromJson(_json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<Paragraph>((value) => new Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property = new TextProperty.fromJson(_json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<Vertex> vertices;

  BoundingPoly();

  BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<NormalizedVertex>(
              (value) => new NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<Vertex>((value) => new Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Represents a color in the RGBA color space. This representation is designed
/// for simplicity of conversion to/from color representations in various
/// languages over compactness; for example, the fields of this representation
/// can be trivially provided to the constructor of "java.awt.Color" in Java; it
/// can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
/// method in iOS; and, with just a little work, it can be easily formatted into
/// a CSS "rgba()" string in JavaScript, as well.
///
/// Note: this proto does not carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB
/// color
/// space.
///
/// Example (Java):
///
///      import com.google.type.Color;
///
///      // ...
///      public static java.awt.Color fromProto(Color protocolor) {
///        float alpha = protocolor.hasAlpha()
///            ? protocolor.getAlpha().getValue()
///            : 1.0;
///
///        return new java.awt.Color(
///            protocolor.getRed(),
///            protocolor.getGreen(),
///            protocolor.getBlue(),
///            alpha);
///      }
///
///      public static Color toProto(java.awt.Color color) {
///        float red = (float) color.getRed();
///        float green = (float) color.getGreen();
///        float blue = (float) color.getBlue();
///        float denominator = 255.0;
///        Color.Builder resultBuilder =
///            Color
///                .newBuilder()
///                .setRed(red / denominator)
///                .setGreen(green / denominator)
///                .setBlue(blue / denominator);
///        int alpha = color.getAlpha();
///        if (alpha != 255) {
///          result.setAlpha(
///              FloatValue
///                  .newBuilder()
///                  .setValue(((float) alpha) / denominator)
///                  .build());
///        }
///        return resultBuilder.build();
///      }
///      // ...
///
/// Example (iOS / Obj-C):
///
///      // ...
///      static UIColor* fromProto(Color* protocolor) {
///         float red = [protocolor red];
///         float green = [protocolor green];
///         float blue = [protocolor blue];
///         FloatValue* alpha_wrapper = [protocolor alpha];
///         float alpha = 1.0;
///         if (alpha_wrapper != nil) {
///           alpha = [alpha_wrapper value];
///         }
/// return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
///      }
///
///      static Color* toProto(UIColor* color) {
///          CGFloat red, green, blue, alpha;
///          if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) {
///            return nil;
///          }
///          Color* result = [[Color alloc] init];
///          [result setRed:red];
///          [result setGreen:green];
///          [result setBlue:blue];
///          if (alpha <= 0.9999) {
///            [result setAlpha:floatWrapperWithValue(alpha)];
///          }
///          [result autorelease];
///          return result;
///     }
///     // ...
///
///  Example (JavaScript):
///
///     // ...
///
///     var protoToCssColor = function(rgb_color) {
///        var redFrac = rgb_color.red || 0.0;
///        var greenFrac = rgb_color.green || 0.0;
///        var blueFrac = rgb_color.blue || 0.0;
///        var red = Math.floor(redFrac * 255);
///        var green = Math.floor(greenFrac * 255);
///        var blue = Math.floor(blueFrac * 255);
///
///        if (!('alpha' in rgb_color)) {
///           return rgbToCssColor_(red, green, blue);
///        }
///
///        var alphaFrac = rgb_color.alpha.value || 0.0;
///        var rgbParams = [red, green, blue].join(',');
///        return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
///     };
///
///     var rgbToCssColor_ = function(red, green, blue) {
///       var rgbNumber = new Number((red << 16) | (green << 8) | blue);
///       var hexString = rgbNumber.toString(16);
///       var missingZeros = 6 - hexString.length;
///       var resultBuilder = ['#'];
///       for (var i = 0; i < missingZeros; i++) {
///          resultBuilder.push('0');
///       }
///       resultBuilder.push(hexString);
///       return resultBuilder.join('');
///     };
///
///     // ...
class Color {
  /// The fraction of this color that should be applied to the pixel. That is,
  /// the final pixel color is defined by the equation:
  ///
  ///   pixel color = alpha * (this color) + (1.0 - alpha) * (background color)
  ///
  /// This means that a value of 1.0 corresponds to a solid color, whereas
  /// a value of 0.0 corresponds to a completely transparent color. This
  /// uses a wrapper message rather than a simple float scalar so that it is
  /// possible to distinguish between a default value and the value being unset.
  /// If omitted, this color object is to be rendered as a solid color
  /// (as if the alpha value had been explicitly given with a value of 1.0).
  core.double alpha;

  /// The amount of blue in the color as a value in the interval [0, 1].
  core.double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  core.double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  core.double red;

  Color();

  Color.fromJson(core.Map _json) {
    if (_json.containsKey("alpha")) {
      alpha = _json["alpha"].toDouble();
    }
    if (_json.containsKey("blue")) {
      blue = _json["blue"].toDouble();
    }
    if (_json.containsKey("green")) {
      green = _json["green"].toDouble();
    }
    if (_json.containsKey("red")) {
      red = _json["red"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alpha != null) {
      _json["alpha"] = alpha;
    }
    if (blue != null) {
      _json["blue"] = blue;
    }
    if (green != null) {
      _json["green"] = green;
    }
    if (red != null) {
      _json["red"] = red;
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  ColorInfo();

  ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  CropHint();

  CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class CropHintsAnnotation {
  /// Crop hint results.
  core.List<CropHint> cropHints;

  CropHintsAnnotation();

  CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<CropHint>((value) => new CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Parameters for crop hints annotation request.
class CropHintsParams {
  /// Aspect ratios in floats, representing the ratio of the width to the height
  /// of the image. For example, if the desired aspect ratio is 4/3, the
  /// corresponding float value should be 1.33333.  If not specified, the
  /// best possible crop is returned. The number of provided aspect ratios is
  /// limited to a maximum of 16; any aspect ratios provided after the 16th are
  /// ignored.
  core.List<core.double> aspectRatios;

  CropHintsParams();

  CropHintsParams.fromJson(core.Map _json) {
    if (_json.containsKey("aspectRatios")) {
      aspectRatios = (_json["aspectRatios"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aspectRatios != null) {
      _json["aspectRatios"] = aspectRatios;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class DetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  DetectedBreak();

  DetectedBreak.fromJson(core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class DetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  DetectedLanguage();

  DetectedLanguage.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<ColorInfo> colors;

  DominantColorsAnnotation();

  DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<ColorInfo>((value) => new ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
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

/// Set of detected entity features.
class EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  EntityAnnotation();

  EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<LocationInfo>((value) => new LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<Property>((value) => new Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<Landmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  FaceAnnotation();

  FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new BoundingPoly.fromJson(_json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<Landmark>((value) => new Landmark.fromJson(value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// The type of Google Cloud Vision API detection to perform, and the maximum
/// number of results to return for that type. Multiple `Feature` objects can
/// be specified in the `features` list.
class Feature {
  /// Maximum number of results of this type. Does not apply to
  /// `TEXT_DETECTION`, `DOCUMENT_TEXT_DETECTION`, or `CROP_HINTS`.
  core.int maxResults;

  /// Model to use for the feature.
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String model;

  /// The feature type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified feature type.
  /// - "FACE_DETECTION" : Run face detection.
  /// - "LANDMARK_DETECTION" : Run landmark detection.
  /// - "LOGO_DETECTION" : Run logo detection.
  /// - "LABEL_DETECTION" : Run label detection.
  /// - "TEXT_DETECTION" : Run text detection / optical character recognition
  /// (OCR). Text detection
  /// is optimized for areas of text within a larger image; if the image is
  /// a document, use `DOCUMENT_TEXT_DETECTION` instead.
  /// - "DOCUMENT_TEXT_DETECTION" : Run dense text document OCR. Takes
  /// precedence when both
  /// `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` are present.
  /// - "SAFE_SEARCH_DETECTION" : Run Safe Search to detect potentially unsafe
  /// or undesirable content.
  /// - "IMAGE_PROPERTIES" : Compute a set of image properties, such as the
  /// image's dominant colors.
  /// - "CROP_HINTS" : Run crop hints.
  /// - "WEB_DETECTION" : Run web detection.
  /// - "PRODUCT_SEARCH" : Run Product Search.
  /// - "OBJECT_LOCALIZATION" : Run localizer for object detection.
  core.String type;

  Feature();

  Feature.fromJson(core.Map _json) {
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GcsDestination();

  GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GcsSource();

  GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class GoogleCloudVisionV1p1beta1AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p1beta1InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<GoogleCloudVisionV1p1beta1AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  GoogleCloudVisionV1p1beta1AnnotateFileResponse();

  GoogleCloudVisionV1p1beta1AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new GoogleCloudVisionV1p1beta1InputConfig.fromJson(
          _json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p1beta1AnnotateImageResponse>((value) =>
              new GoogleCloudVisionV1p1beta1AnnotateImageResponse.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p1beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  GoogleCloudVisionV1p1beta1ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p1beta1CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p1beta1FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p1beta1TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p1beta1ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p1beta1EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p1beta1EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation>
      localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p1beta1EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p1beta1ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p1beta1EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p1beta1WebDetection webDetection;

  GoogleCloudVisionV1p1beta1AnnotateImageResponse();

  GoogleCloudVisionV1p1beta1AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new GoogleCloudVisionV1p1beta1ImageAnnotationContext.fromJson(
          _json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new GoogleCloudVisionV1p1beta1CropHintsAnnotation.fromJson(
              _json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1FaceAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new GoogleCloudVisionV1p1beta1TextAnnotation.fromJson(
              _json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new GoogleCloudVisionV1p1beta1ImageProperties.fromJson(
              _json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations = (_json["localizedObjectAnnotations"]
              as core.List)
          .map<GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new GoogleCloudVisionV1p1beta1ProductSearchResults.fromJson(
              _json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new GoogleCloudVisionV1p1beta1SafeSearchAnnotation.fromJson(
              _json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new GoogleCloudVisionV1p1beta1WebDetection.fromJson(
          _json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  GoogleCloudVisionV1p1beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse();

  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p1beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse> responses;

  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse();

  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Logical element on the page.
class GoogleCloudVisionV1p1beta1Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p1beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p1beta1Paragraph> paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty property;

  GoogleCloudVisionV1p1beta1Block();

  GoogleCloudVisionV1p1beta1Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Paragraph>((value) =>
              new GoogleCloudVisionV1p1beta1Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudVisionV1p1beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p1beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p1beta1Vertex> vertices;

  GoogleCloudVisionV1p1beta1BoundingPoly();

  GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<GoogleCloudVisionV1p1beta1NormalizedVertex>((value) =>
              new GoogleCloudVisionV1p1beta1NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Vertex>(
              (value) => new GoogleCloudVisionV1p1beta1Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class GoogleCloudVisionV1p1beta1ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  GoogleCloudVisionV1p1beta1ColorInfo();

  GoogleCloudVisionV1p1beta1ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p1beta1CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  GoogleCloudVisionV1p1beta1BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  GoogleCloudVisionV1p1beta1CropHint();

  GoogleCloudVisionV1p1beta1CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p1beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p1beta1CropHint> cropHints;

  GoogleCloudVisionV1p1beta1CropHintsAnnotation();

  GoogleCloudVisionV1p1beta1CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<GoogleCloudVisionV1p1beta1CropHint>(
              (value) => new GoogleCloudVisionV1p1beta1CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p1beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p1beta1ColorInfo> colors;

  GoogleCloudVisionV1p1beta1DominantColorsAnnotation();

  GoogleCloudVisionV1p1beta1DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<GoogleCloudVisionV1p1beta1ColorInfo>((value) =>
              new GoogleCloudVisionV1p1beta1ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected entity features.
class GoogleCloudVisionV1p1beta1EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p1beta1BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<GoogleCloudVisionV1p1beta1LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p1beta1Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  GoogleCloudVisionV1p1beta1EntityAnnotation();

  GoogleCloudVisionV1p1beta1EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<GoogleCloudVisionV1p1beta1LocationInfo>((value) =>
              new GoogleCloudVisionV1p1beta1LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Property>(
              (value) => new GoogleCloudVisionV1p1beta1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class GoogleCloudVisionV1p1beta1FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  GoogleCloudVisionV1p1beta1BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  GoogleCloudVisionV1p1beta1BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<GoogleCloudVisionV1p1beta1FaceAnnotationLandmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  GoogleCloudVisionV1p1beta1FaceAnnotation();

  GoogleCloudVisionV1p1beta1FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<GoogleCloudVisionV1p1beta1FaceAnnotationLandmark>((value) =>
              new GoogleCloudVisionV1p1beta1FaceAnnotationLandmark.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class GoogleCloudVisionV1p1beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p1beta1Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark();

  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position =
          new GoogleCloudVisionV1p1beta1Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GoogleCloudVisionV1p1beta1GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GoogleCloudVisionV1p1beta1GcsDestination();

  GoogleCloudVisionV1p1beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GoogleCloudVisionV1p1beta1GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GoogleCloudVisionV1p1beta1GcsSource();

  GoogleCloudVisionV1p1beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class GoogleCloudVisionV1p1beta1ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  GoogleCloudVisionV1p1beta1ImageAnnotationContext();

  GoogleCloudVisionV1p1beta1ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p1beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p1beta1DominantColorsAnnotation dominantColors;

  GoogleCloudVisionV1p1beta1ImageProperties();

  GoogleCloudVisionV1p1beta1ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new GoogleCloudVisionV1p1beta1DominantColorsAnnotation.fromJson(
              _json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudVisionV1p1beta1InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p1beta1GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  GoogleCloudVisionV1p1beta1InputConfig();

  GoogleCloudVisionV1p1beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource =
          new GoogleCloudVisionV1p1beta1GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  GoogleCloudVisionV1p1beta1BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation();

  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class GoogleCloudVisionV1p1beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  GoogleCloudVisionV1p1beta1LocationInfo();

  GoogleCloudVisionV1p1beta1LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVisionV1p1beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVisionV1p1beta1NormalizedVertex();

  GoogleCloudVisionV1p1beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchAnnotateImages operation.
class GoogleCloudVisionV1p1beta1OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  GoogleCloudVisionV1p1beta1OperationMetadata();

  GoogleCloudVisionV1p1beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudVisionV1p1beta1OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GoogleCloudVisionV1p1beta1GcsDestination gcsDestination;

  GoogleCloudVisionV1p1beta1OutputConfig();

  GoogleCloudVisionV1p1beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GoogleCloudVisionV1p1beta1GcsDestination.fromJson(
          _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class GoogleCloudVisionV1p1beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p1beta1Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// Additional information detected on the page.
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  GoogleCloudVisionV1p1beta1Page();

  GoogleCloudVisionV1p1beta1Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Block>(
              (value) => new GoogleCloudVisionV1p1beta1Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class GoogleCloudVisionV1p1beta1Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p1beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty property;

  /// List of words in this paragraph.
  core.List<GoogleCloudVisionV1p1beta1Word> words;

  GoogleCloudVisionV1p1beta1Paragraph();

  GoogleCloudVisionV1p1beta1Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Word>(
              (value) => new GoogleCloudVisionV1p1beta1Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p1beta1Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  GoogleCloudVisionV1p1beta1Position();

  GoogleCloudVisionV1p1beta1Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p1beta1Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<GoogleCloudVisionV1p1beta1ProductKeyValue> productLabels;

  GoogleCloudVisionV1p1beta1Product();

  GoogleCloudVisionV1p1beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<GoogleCloudVisionV1p1beta1ProductKeyValue>((value) =>
              new GoogleCloudVisionV1p1beta1ProductKeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class GoogleCloudVisionV1p1beta1ProductKeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  GoogleCloudVisionV1p1beta1ProductKeyValue();

  GoogleCloudVisionV1p1beta1ProductKeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Results for a product search request.
class GoogleCloudVisionV1p1beta1ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>
      productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p1beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p1beta1ProductSearchResults();

  GoogleCloudVisionV1p1beta1ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult>(
              (value) =>
                  new GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p1beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p1beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p1beta1BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p1beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult();

  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p1beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p1beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a product.
class GoogleCloudVisionV1p1beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  GoogleCloudVisionV1p1beta1Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  GoogleCloudVisionV1p1beta1ProductSearchResultsResult();

  GoogleCloudVisionV1p1beta1ProductSearchResultsResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product =
          new GoogleCloudVisionV1p1beta1Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class GoogleCloudVisionV1p1beta1Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  GoogleCloudVisionV1p1beta1Property();

  GoogleCloudVisionV1p1beta1Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class GoogleCloudVisionV1p1beta1SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  GoogleCloudVisionV1p1beta1SafeSearchAnnotation();

  GoogleCloudVisionV1p1beta1SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// A single symbol representation.
class GoogleCloudVisionV1p1beta1Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p1beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  GoogleCloudVisionV1p1beta1Symbol();

  GoogleCloudVisionV1p1beta1Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class GoogleCloudVisionV1p1beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p1beta1Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  GoogleCloudVisionV1p1beta1TextAnnotation();

  GoogleCloudVisionV1p1beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Page>(
              (value) => new GoogleCloudVisionV1p1beta1Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak();

  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage();

  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p1beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>
      detectedLanguages;

  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty();

  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
      core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak =
          new GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak.fromJson(
              _json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage>(
              (value) =>
                  new GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p1beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudVisionV1p1beta1Vertex();

  GoogleCloudVisionV1p1beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p1beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebPage>
      pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebImage>
      partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebImage>
      visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebEntity> webEntities;

  GoogleCloudVisionV1p1beta1WebDetection();

  GoogleCloudVisionV1p1beta1WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebLabel>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebLabel.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebPage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebEntity>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebEntity.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class GoogleCloudVisionV1p1beta1WebDetectionWebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  GoogleCloudVisionV1p1beta1WebDetectionWebEntity();

  GoogleCloudVisionV1p1beta1WebDetectionWebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class GoogleCloudVisionV1p1beta1WebDetectionWebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  GoogleCloudVisionV1p1beta1WebDetectionWebImage();

  GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class GoogleCloudVisionV1p1beta1WebDetectionWebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p1beta1WebDetectionWebLabel();

  GoogleCloudVisionV1p1beta1WebDetectionWebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class GoogleCloudVisionV1p1beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<GoogleCloudVisionV1p1beta1WebDetectionWebImage>
      partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  GoogleCloudVisionV1p1beta1WebDetectionWebPage();

  GoogleCloudVisionV1p1beta1WebDetectionWebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p1beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p1beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class GoogleCloudVisionV1p1beta1Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p1beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p1beta1Symbol> symbols;

  GoogleCloudVisionV1p1beta1Word();

  GoogleCloudVisionV1p1beta1Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p1beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p1beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<GoogleCloudVisionV1p1beta1Symbol>(
              (value) => new GoogleCloudVisionV1p1beta1Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class GoogleCloudVisionV1p2beta1AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p2beta1InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<GoogleCloudVisionV1p2beta1AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  GoogleCloudVisionV1p2beta1AnnotateFileResponse();

  GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new GoogleCloudVisionV1p2beta1InputConfig.fromJson(
          _json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p2beta1AnnotateImageResponse>((value) =>
              new GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p2beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  GoogleCloudVisionV1p2beta1ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p2beta1CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p2beta1TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p2beta1ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>
      localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p2beta1ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p2beta1WebDetection webDetection;

  GoogleCloudVisionV1p2beta1AnnotateImageResponse();

  GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(
          _json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(
              _json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1FaceAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(
              _json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new GoogleCloudVisionV1p2beta1ImageProperties.fromJson(
              _json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations = (_json["localizedObjectAnnotations"]
              as core.List)
          .map<GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(
              _json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(
              _json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new GoogleCloudVisionV1p2beta1WebDetection.fromJson(
          _json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  GoogleCloudVisionV1p2beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse();

  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p2beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse> responses;

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse();

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Logical element on the page.
class GoogleCloudVisionV1p2beta1Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p2beta1Paragraph> paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty property;

  GoogleCloudVisionV1p2beta1Block();

  GoogleCloudVisionV1p2beta1Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Paragraph>((value) =>
              new GoogleCloudVisionV1p2beta1Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudVisionV1p2beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p2beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p2beta1Vertex> vertices;

  GoogleCloudVisionV1p2beta1BoundingPoly();

  GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<GoogleCloudVisionV1p2beta1NormalizedVertex>((value) =>
              new GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Vertex>(
              (value) => new GoogleCloudVisionV1p2beta1Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class GoogleCloudVisionV1p2beta1ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  GoogleCloudVisionV1p2beta1ColorInfo();

  GoogleCloudVisionV1p2beta1ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p2beta1CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  GoogleCloudVisionV1p2beta1BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  GoogleCloudVisionV1p2beta1CropHint();

  GoogleCloudVisionV1p2beta1CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p2beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p2beta1CropHint> cropHints;

  GoogleCloudVisionV1p2beta1CropHintsAnnotation();

  GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<GoogleCloudVisionV1p2beta1CropHint>(
              (value) => new GoogleCloudVisionV1p2beta1CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p2beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p2beta1ColorInfo> colors;

  GoogleCloudVisionV1p2beta1DominantColorsAnnotation();

  GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<GoogleCloudVisionV1p2beta1ColorInfo>((value) =>
              new GoogleCloudVisionV1p2beta1ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected entity features.
class GoogleCloudVisionV1p2beta1EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p2beta1BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<GoogleCloudVisionV1p2beta1LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p2beta1Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  GoogleCloudVisionV1p2beta1EntityAnnotation();

  GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<GoogleCloudVisionV1p2beta1LocationInfo>((value) =>
              new GoogleCloudVisionV1p2beta1LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Property>(
              (value) => new GoogleCloudVisionV1p2beta1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class GoogleCloudVisionV1p2beta1FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  GoogleCloudVisionV1p2beta1BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  GoogleCloudVisionV1p2beta1BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<GoogleCloudVisionV1p2beta1FaceAnnotationLandmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  GoogleCloudVisionV1p2beta1FaceAnnotation();

  GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>((value) =>
              new GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class GoogleCloudVisionV1p2beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p2beta1Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark();

  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position =
          new GoogleCloudVisionV1p2beta1Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GoogleCloudVisionV1p2beta1GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GoogleCloudVisionV1p2beta1GcsDestination();

  GoogleCloudVisionV1p2beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GoogleCloudVisionV1p2beta1GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GoogleCloudVisionV1p2beta1GcsSource();

  GoogleCloudVisionV1p2beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class GoogleCloudVisionV1p2beta1ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  GoogleCloudVisionV1p2beta1ImageAnnotationContext();

  GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p2beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation dominantColors;

  GoogleCloudVisionV1p2beta1ImageProperties();

  GoogleCloudVisionV1p2beta1ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(
              _json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudVisionV1p2beta1InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p2beta1GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  GoogleCloudVisionV1p2beta1InputConfig();

  GoogleCloudVisionV1p2beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource =
          new GoogleCloudVisionV1p2beta1GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  GoogleCloudVisionV1p2beta1BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation();

  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class GoogleCloudVisionV1p2beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  GoogleCloudVisionV1p2beta1LocationInfo();

  GoogleCloudVisionV1p2beta1LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVisionV1p2beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVisionV1p2beta1NormalizedVertex();

  GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchAnnotateImages operation.
class GoogleCloudVisionV1p2beta1OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  GoogleCloudVisionV1p2beta1OperationMetadata();

  GoogleCloudVisionV1p2beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudVisionV1p2beta1OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GoogleCloudVisionV1p2beta1GcsDestination gcsDestination;

  GoogleCloudVisionV1p2beta1OutputConfig();

  GoogleCloudVisionV1p2beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GoogleCloudVisionV1p2beta1GcsDestination.fromJson(
          _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class GoogleCloudVisionV1p2beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p2beta1Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// Additional information detected on the page.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  GoogleCloudVisionV1p2beta1Page();

  GoogleCloudVisionV1p2beta1Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Block>(
              (value) => new GoogleCloudVisionV1p2beta1Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class GoogleCloudVisionV1p2beta1Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty property;

  /// List of words in this paragraph.
  core.List<GoogleCloudVisionV1p2beta1Word> words;

  GoogleCloudVisionV1p2beta1Paragraph();

  GoogleCloudVisionV1p2beta1Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Word>(
              (value) => new GoogleCloudVisionV1p2beta1Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p2beta1Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  GoogleCloudVisionV1p2beta1Position();

  GoogleCloudVisionV1p2beta1Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p2beta1Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<GoogleCloudVisionV1p2beta1ProductKeyValue> productLabels;

  GoogleCloudVisionV1p2beta1Product();

  GoogleCloudVisionV1p2beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<GoogleCloudVisionV1p2beta1ProductKeyValue>((value) =>
              new GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class GoogleCloudVisionV1p2beta1ProductKeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  GoogleCloudVisionV1p2beta1ProductKeyValue();

  GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Results for a product search request.
class GoogleCloudVisionV1p2beta1ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>
      productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p2beta1ProductSearchResults();

  GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>(
              (value) =>
                  new GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p2beta1BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult();

  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a product.
class GoogleCloudVisionV1p2beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  GoogleCloudVisionV1p2beta1Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  GoogleCloudVisionV1p2beta1ProductSearchResultsResult();

  GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product =
          new GoogleCloudVisionV1p2beta1Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class GoogleCloudVisionV1p2beta1Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  GoogleCloudVisionV1p2beta1Property();

  GoogleCloudVisionV1p2beta1Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class GoogleCloudVisionV1p2beta1SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  GoogleCloudVisionV1p2beta1SafeSearchAnnotation();

  GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// A single symbol representation.
class GoogleCloudVisionV1p2beta1Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  GoogleCloudVisionV1p2beta1Symbol();

  GoogleCloudVisionV1p2beta1Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class GoogleCloudVisionV1p2beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p2beta1Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  GoogleCloudVisionV1p2beta1TextAnnotation();

  GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Page>(
              (value) => new GoogleCloudVisionV1p2beta1Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak();

  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage();

  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p2beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>
      detectedLanguages;

  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty();

  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
      core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak =
          new GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
              _json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>(
              (value) =>
                  new GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p2beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudVisionV1p2beta1Vertex();

  GoogleCloudVisionV1p2beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p2beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebPage>
      pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>
      partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>
      visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebEntity> webEntities;

  GoogleCloudVisionV1p2beta1WebDetection();

  GoogleCloudVisionV1p2beta1WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebLabel>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebPage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebEntity>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class GoogleCloudVisionV1p2beta1WebDetectionWebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  GoogleCloudVisionV1p2beta1WebDetectionWebEntity();

  GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class GoogleCloudVisionV1p2beta1WebDetectionWebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  GoogleCloudVisionV1p2beta1WebDetectionWebImage();

  GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class GoogleCloudVisionV1p2beta1WebDetectionWebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p2beta1WebDetectionWebLabel();

  GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class GoogleCloudVisionV1p2beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>
      partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  GoogleCloudVisionV1p2beta1WebDetectionWebPage();

  GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p2beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class GoogleCloudVisionV1p2beta1Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p2beta1Symbol> symbols;

  GoogleCloudVisionV1p2beta1Word();

  GoogleCloudVisionV1p2beta1Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<GoogleCloudVisionV1p2beta1Symbol>(
              (value) => new GoogleCloudVisionV1p2beta1Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class GoogleCloudVisionV1p3beta1AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p3beta1InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<GoogleCloudVisionV1p3beta1AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  GoogleCloudVisionV1p3beta1AnnotateFileResponse();

  GoogleCloudVisionV1p3beta1AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new GoogleCloudVisionV1p3beta1InputConfig.fromJson(
          _json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p3beta1AnnotateImageResponse>((value) =>
              new GoogleCloudVisionV1p3beta1AnnotateImageResponse.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p3beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  GoogleCloudVisionV1p3beta1ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p3beta1CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p3beta1FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p3beta1TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p3beta1ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p3beta1EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p3beta1EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>
      localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p3beta1EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p3beta1ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p3beta1EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p3beta1WebDetection webDetection;

  GoogleCloudVisionV1p3beta1AnnotateImageResponse();

  GoogleCloudVisionV1p3beta1AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new GoogleCloudVisionV1p3beta1ImageAnnotationContext.fromJson(
          _json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new GoogleCloudVisionV1p3beta1CropHintsAnnotation.fromJson(
              _json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1FaceAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new GoogleCloudVisionV1p3beta1TextAnnotation.fromJson(
              _json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new GoogleCloudVisionV1p3beta1ImageProperties.fromJson(
              _json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations = (_json["localizedObjectAnnotations"]
              as core.List)
          .map<GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new GoogleCloudVisionV1p3beta1ProductSearchResults.fromJson(
              _json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new GoogleCloudVisionV1p3beta1SafeSearchAnnotation.fromJson(
              _json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new GoogleCloudVisionV1p3beta1WebDetection.fromJson(
          _json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  GoogleCloudVisionV1p3beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse();

  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p3beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse> responses;

  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse();

  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Metadata for the batch operations such as the current state.
///
/// This is included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
class GoogleCloudVisionV1p3beta1BatchOperationMetadata {
  /// The time when the batch request is finished and
  /// google.longrunning.Operation.done is set to true.
  core.String endTime;

  /// The current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "SUCCESSFUL" : The request is done and at least one item has been
  /// successfully
  /// processed.
  /// - "FAILED" : The request is done and no item has been successfully
  /// processed.
  /// - "CANCELLED" : The request is done after the
  /// longrunning.Operations.CancelOperation has
  /// been called by the user.  Any records that were processed before the
  /// cancel command are output as specified in the request.
  core.String state;

  /// The time when the batch request was submitted to the server.
  core.String submitTime;

  GoogleCloudVisionV1p3beta1BatchOperationMetadata();

  GoogleCloudVisionV1p3beta1BatchOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submitTime")) {
      submitTime = _json["submitTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submitTime != null) {
      _json["submitTime"] = submitTime;
    }
    return _json;
  }
}

/// Logical element on the page.
class GoogleCloudVisionV1p3beta1Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p3beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p3beta1Paragraph> paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty property;

  GoogleCloudVisionV1p3beta1Block();

  GoogleCloudVisionV1p3beta1Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Paragraph>((value) =>
              new GoogleCloudVisionV1p3beta1Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudVisionV1p3beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p3beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p3beta1Vertex> vertices;

  GoogleCloudVisionV1p3beta1BoundingPoly();

  GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<GoogleCloudVisionV1p3beta1NormalizedVertex>((value) =>
              new GoogleCloudVisionV1p3beta1NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Vertex>(
              (value) => new GoogleCloudVisionV1p3beta1Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class GoogleCloudVisionV1p3beta1ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  GoogleCloudVisionV1p3beta1ColorInfo();

  GoogleCloudVisionV1p3beta1ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p3beta1CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  GoogleCloudVisionV1p3beta1BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  GoogleCloudVisionV1p3beta1CropHint();

  GoogleCloudVisionV1p3beta1CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p3beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p3beta1CropHint> cropHints;

  GoogleCloudVisionV1p3beta1CropHintsAnnotation();

  GoogleCloudVisionV1p3beta1CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<GoogleCloudVisionV1p3beta1CropHint>(
              (value) => new GoogleCloudVisionV1p3beta1CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p3beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p3beta1ColorInfo> colors;

  GoogleCloudVisionV1p3beta1DominantColorsAnnotation();

  GoogleCloudVisionV1p3beta1DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ColorInfo>((value) =>
              new GoogleCloudVisionV1p3beta1ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected entity features.
class GoogleCloudVisionV1p3beta1EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p3beta1BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<GoogleCloudVisionV1p3beta1LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p3beta1Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  GoogleCloudVisionV1p3beta1EntityAnnotation();

  GoogleCloudVisionV1p3beta1EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<GoogleCloudVisionV1p3beta1LocationInfo>((value) =>
              new GoogleCloudVisionV1p3beta1LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Property>(
              (value) => new GoogleCloudVisionV1p3beta1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class GoogleCloudVisionV1p3beta1FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  GoogleCloudVisionV1p3beta1BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  GoogleCloudVisionV1p3beta1BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<GoogleCloudVisionV1p3beta1FaceAnnotationLandmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  GoogleCloudVisionV1p3beta1FaceAnnotation();

  GoogleCloudVisionV1p3beta1FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<GoogleCloudVisionV1p3beta1FaceAnnotationLandmark>((value) =>
              new GoogleCloudVisionV1p3beta1FaceAnnotationLandmark.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class GoogleCloudVisionV1p3beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p3beta1Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark();

  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position =
          new GoogleCloudVisionV1p3beta1Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GoogleCloudVisionV1p3beta1GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GoogleCloudVisionV1p3beta1GcsDestination();

  GoogleCloudVisionV1p3beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GoogleCloudVisionV1p3beta1GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GoogleCloudVisionV1p3beta1GcsSource();

  GoogleCloudVisionV1p3beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class GoogleCloudVisionV1p3beta1ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  GoogleCloudVisionV1p3beta1ImageAnnotationContext();

  GoogleCloudVisionV1p3beta1ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p3beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p3beta1DominantColorsAnnotation dominantColors;

  GoogleCloudVisionV1p3beta1ImageProperties();

  GoogleCloudVisionV1p3beta1ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new GoogleCloudVisionV1p3beta1DominantColorsAnnotation.fromJson(
              _json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// Response message for the `ImportProductSets` method.
///
/// This message is returned by the
/// google.longrunning.Operations.GetOperation method in the returned
/// google.longrunning.Operation.response field.
class GoogleCloudVisionV1p3beta1ImportProductSetsResponse {
  /// The list of reference_images that are imported successfully.
  core.List<GoogleCloudVisionV1p3beta1ReferenceImage> referenceImages;

  /// The rpc status for each ImportProductSet request, including both successes
  /// and errors.
  ///
  /// The number of statuses here matches the number of lines in the csv file,
  /// and statuses[i] stores the success or failure status of processing the
  /// i-th
  /// line of the csv, starting from line 0.
  core.List<Status> statuses;

  GoogleCloudVisionV1p3beta1ImportProductSetsResponse();

  GoogleCloudVisionV1p3beta1ImportProductSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("referenceImages")) {
      referenceImages = (_json["referenceImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ReferenceImage>((value) =>
              new GoogleCloudVisionV1p3beta1ReferenceImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("statuses")) {
      statuses = (_json["statuses"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (referenceImages != null) {
      _json["referenceImages"] =
          referenceImages.map((value) => (value).toJson()).toList();
    }
    if (statuses != null) {
      _json["statuses"] = statuses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudVisionV1p3beta1InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p3beta1GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  GoogleCloudVisionV1p3beta1InputConfig();

  GoogleCloudVisionV1p3beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource =
          new GoogleCloudVisionV1p3beta1GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  GoogleCloudVisionV1p3beta1BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation();

  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class GoogleCloudVisionV1p3beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  GoogleCloudVisionV1p3beta1LocationInfo();

  GoogleCloudVisionV1p3beta1LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVisionV1p3beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVisionV1p3beta1NormalizedVertex();

  GoogleCloudVisionV1p3beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchAnnotateImages operation.
class GoogleCloudVisionV1p3beta1OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  GoogleCloudVisionV1p3beta1OperationMetadata();

  GoogleCloudVisionV1p3beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudVisionV1p3beta1OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GoogleCloudVisionV1p3beta1GcsDestination gcsDestination;

  GoogleCloudVisionV1p3beta1OutputConfig();

  GoogleCloudVisionV1p3beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GoogleCloudVisionV1p3beta1GcsDestination.fromJson(
          _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class GoogleCloudVisionV1p3beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p3beta1Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// Additional information detected on the page.
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  GoogleCloudVisionV1p3beta1Page();

  GoogleCloudVisionV1p3beta1Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Block>(
              (value) => new GoogleCloudVisionV1p3beta1Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class GoogleCloudVisionV1p3beta1Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p3beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty property;

  /// List of words in this paragraph.
  core.List<GoogleCloudVisionV1p3beta1Word> words;

  GoogleCloudVisionV1p3beta1Paragraph();

  GoogleCloudVisionV1p3beta1Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Word>(
              (value) => new GoogleCloudVisionV1p3beta1Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p3beta1Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  GoogleCloudVisionV1p3beta1Position();

  GoogleCloudVisionV1p3beta1Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p3beta1Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<GoogleCloudVisionV1p3beta1ProductKeyValue> productLabels;

  GoogleCloudVisionV1p3beta1Product();

  GoogleCloudVisionV1p3beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ProductKeyValue>((value) =>
              new GoogleCloudVisionV1p3beta1ProductKeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class GoogleCloudVisionV1p3beta1ProductKeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  GoogleCloudVisionV1p3beta1ProductKeyValue();

  GoogleCloudVisionV1p3beta1ProductKeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Results for a product search request.
class GoogleCloudVisionV1p3beta1ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>
      productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p3beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p3beta1ProductSearchResults();

  GoogleCloudVisionV1p3beta1ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult>(
              (value) =>
                  new GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p3beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p3beta1BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p3beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult();

  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p3beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p3beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a product.
class GoogleCloudVisionV1p3beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  GoogleCloudVisionV1p3beta1Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  GoogleCloudVisionV1p3beta1ProductSearchResultsResult();

  GoogleCloudVisionV1p3beta1ProductSearchResultsResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product =
          new GoogleCloudVisionV1p3beta1Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class GoogleCloudVisionV1p3beta1Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  GoogleCloudVisionV1p3beta1Property();

  GoogleCloudVisionV1p3beta1Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A `ReferenceImage` represents a product image and its associated metadata,
/// such as bounding boxes.
class GoogleCloudVisionV1p3beta1ReferenceImage {
  /// Bounding polygons around the areas of interest in the reference image.
  /// Optional. If this field is empty, the system will try to detect regions of
  /// interest. At most 10 bounding polygons will be used.
  ///
  /// The provided shape is converted into a non-rotated rectangle. Once
  /// converted, the small edge of the rectangle must be greater than or equal
  /// to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
  /// is not).
  core.List<GoogleCloudVisionV1p3beta1BoundingPoly> boundingPolys;

  /// The resource name of the reference image.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  ///
  /// This field is ignored when creating a reference image.
  core.String name;

  /// The Google Cloud Storage URI of the reference image.
  ///
  /// The URI must start with `gs://`.
  ///
  /// Required.
  core.String uri;

  GoogleCloudVisionV1p3beta1ReferenceImage();

  GoogleCloudVisionV1p3beta1ReferenceImage.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPolys")) {
      boundingPolys = (_json["boundingPolys"] as core.List)
          .map<GoogleCloudVisionV1p3beta1BoundingPoly>((value) =>
              new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPolys != null) {
      _json["boundingPolys"] =
          boundingPolys.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class GoogleCloudVisionV1p3beta1SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  GoogleCloudVisionV1p3beta1SafeSearchAnnotation();

  GoogleCloudVisionV1p3beta1SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// A single symbol representation.
class GoogleCloudVisionV1p3beta1Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p3beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  GoogleCloudVisionV1p3beta1Symbol();

  GoogleCloudVisionV1p3beta1Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class GoogleCloudVisionV1p3beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p3beta1Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  GoogleCloudVisionV1p3beta1TextAnnotation();

  GoogleCloudVisionV1p3beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Page>(
              (value) => new GoogleCloudVisionV1p3beta1Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak();

  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage();

  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p3beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>
      detectedLanguages;

  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty();

  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
      core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak =
          new GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak.fromJson(
              _json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage>(
              (value) =>
                  new GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p3beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudVisionV1p3beta1Vertex();

  GoogleCloudVisionV1p3beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p3beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebPage>
      pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebImage>
      partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebImage>
      visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebEntity> webEntities;

  GoogleCloudVisionV1p3beta1WebDetection();

  GoogleCloudVisionV1p3beta1WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebLabel>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebLabel.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebPage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebEntity>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebEntity.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class GoogleCloudVisionV1p3beta1WebDetectionWebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  GoogleCloudVisionV1p3beta1WebDetectionWebEntity();

  GoogleCloudVisionV1p3beta1WebDetectionWebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class GoogleCloudVisionV1p3beta1WebDetectionWebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  GoogleCloudVisionV1p3beta1WebDetectionWebImage();

  GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class GoogleCloudVisionV1p3beta1WebDetectionWebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p3beta1WebDetectionWebLabel();

  GoogleCloudVisionV1p3beta1WebDetectionWebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class GoogleCloudVisionV1p3beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<GoogleCloudVisionV1p3beta1WebDetectionWebImage>
      partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  GoogleCloudVisionV1p3beta1WebDetectionWebPage();

  GoogleCloudVisionV1p3beta1WebDetectionWebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p3beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p3beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class GoogleCloudVisionV1p3beta1Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p3beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p3beta1Symbol> symbols;

  GoogleCloudVisionV1p3beta1Word();

  GoogleCloudVisionV1p3beta1Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p3beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p3beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<GoogleCloudVisionV1p3beta1Symbol>(
              (value) => new GoogleCloudVisionV1p3beta1Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class GoogleCloudVisionV1p4beta1AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p4beta1InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<GoogleCloudVisionV1p4beta1AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  GoogleCloudVisionV1p4beta1AnnotateFileResponse();

  GoogleCloudVisionV1p4beta1AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new GoogleCloudVisionV1p4beta1InputConfig.fromJson(
          _json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p4beta1AnnotateImageResponse>((value) =>
              new GoogleCloudVisionV1p4beta1AnnotateImageResponse.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p4beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  GoogleCloudVisionV1p4beta1ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p4beta1CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p4beta1FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p4beta1TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p4beta1ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p4beta1EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p4beta1EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation>
      localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p4beta1EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p4beta1ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p4beta1EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p4beta1WebDetection webDetection;

  GoogleCloudVisionV1p4beta1AnnotateImageResponse();

  GoogleCloudVisionV1p4beta1AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new GoogleCloudVisionV1p4beta1ImageAnnotationContext.fromJson(
          _json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new GoogleCloudVisionV1p4beta1CropHintsAnnotation.fromJson(
              _json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1FaceAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new GoogleCloudVisionV1p4beta1TextAnnotation.fromJson(
              _json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new GoogleCloudVisionV1p4beta1ImageProperties.fromJson(
              _json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations = (_json["localizedObjectAnnotations"]
              as core.List)
          .map<GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new GoogleCloudVisionV1p4beta1ProductSearchResults.fromJson(
              _json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new GoogleCloudVisionV1p4beta1SafeSearchAnnotation.fromJson(
              _json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new GoogleCloudVisionV1p4beta1WebDetection.fromJson(
          _json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  GoogleCloudVisionV1p4beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse();

  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p4beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse> responses;

  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse();

  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to an async batch image annotation request.
class GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse {
  /// The output location and metadata from AsyncBatchAnnotateImagesRequest.
  GoogleCloudVisionV1p4beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse();

  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p4beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// A list of file annotation responses.
class GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse {
  /// The list of file annotation responses, each response corresponding to each
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p4beta1AnnotateFileResponse> responses;

  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse();

  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p4beta1AnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p4beta1AnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Metadata for the batch operations such as the current state.
///
/// This is included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
class GoogleCloudVisionV1p4beta1BatchOperationMetadata {
  /// The time when the batch request is finished and
  /// google.longrunning.Operation.done is set to true.
  core.String endTime;

  /// The current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "SUCCESSFUL" : The request is done and at least one item has been
  /// successfully
  /// processed.
  /// - "FAILED" : The request is done and no item has been successfully
  /// processed.
  /// - "CANCELLED" : The request is done after the
  /// longrunning.Operations.CancelOperation has
  /// been called by the user.  Any records that were processed before the
  /// cancel command are output as specified in the request.
  core.String state;

  /// The time when the batch request was submitted to the server.
  core.String submitTime;

  GoogleCloudVisionV1p4beta1BatchOperationMetadata();

  GoogleCloudVisionV1p4beta1BatchOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submitTime")) {
      submitTime = _json["submitTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submitTime != null) {
      _json["submitTime"] = submitTime;
    }
    return _json;
  }
}

/// Logical element on the page.
class GoogleCloudVisionV1p4beta1Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p4beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p4beta1Paragraph> paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty property;

  GoogleCloudVisionV1p4beta1Block();

  GoogleCloudVisionV1p4beta1Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Paragraph>((value) =>
              new GoogleCloudVisionV1p4beta1Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudVisionV1p4beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p4beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p4beta1Vertex> vertices;

  GoogleCloudVisionV1p4beta1BoundingPoly();

  GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<GoogleCloudVisionV1p4beta1NormalizedVertex>((value) =>
              new GoogleCloudVisionV1p4beta1NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Vertex>(
              (value) => new GoogleCloudVisionV1p4beta1Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class GoogleCloudVisionV1p4beta1ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  GoogleCloudVisionV1p4beta1ColorInfo();

  GoogleCloudVisionV1p4beta1ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p4beta1CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  GoogleCloudVisionV1p4beta1BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  GoogleCloudVisionV1p4beta1CropHint();

  GoogleCloudVisionV1p4beta1CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p4beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p4beta1CropHint> cropHints;

  GoogleCloudVisionV1p4beta1CropHintsAnnotation();

  GoogleCloudVisionV1p4beta1CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<GoogleCloudVisionV1p4beta1CropHint>(
              (value) => new GoogleCloudVisionV1p4beta1CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p4beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p4beta1ColorInfo> colors;

  GoogleCloudVisionV1p4beta1DominantColorsAnnotation();

  GoogleCloudVisionV1p4beta1DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ColorInfo>((value) =>
              new GoogleCloudVisionV1p4beta1ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected entity features.
class GoogleCloudVisionV1p4beta1EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p4beta1BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<GoogleCloudVisionV1p4beta1LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p4beta1Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  GoogleCloudVisionV1p4beta1EntityAnnotation();

  GoogleCloudVisionV1p4beta1EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<GoogleCloudVisionV1p4beta1LocationInfo>((value) =>
              new GoogleCloudVisionV1p4beta1LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Property>(
              (value) => new GoogleCloudVisionV1p4beta1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class GoogleCloudVisionV1p4beta1FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  GoogleCloudVisionV1p4beta1BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  GoogleCloudVisionV1p4beta1BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<GoogleCloudVisionV1p4beta1FaceAnnotationLandmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  GoogleCloudVisionV1p4beta1FaceAnnotation();

  GoogleCloudVisionV1p4beta1FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<GoogleCloudVisionV1p4beta1FaceAnnotationLandmark>((value) =>
              new GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class GoogleCloudVisionV1p4beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p4beta1Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark();

  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position =
          new GoogleCloudVisionV1p4beta1Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GoogleCloudVisionV1p4beta1GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GoogleCloudVisionV1p4beta1GcsDestination();

  GoogleCloudVisionV1p4beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GoogleCloudVisionV1p4beta1GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GoogleCloudVisionV1p4beta1GcsSource();

  GoogleCloudVisionV1p4beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class GoogleCloudVisionV1p4beta1ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  GoogleCloudVisionV1p4beta1ImageAnnotationContext();

  GoogleCloudVisionV1p4beta1ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p4beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p4beta1DominantColorsAnnotation dominantColors;

  GoogleCloudVisionV1p4beta1ImageProperties();

  GoogleCloudVisionV1p4beta1ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new GoogleCloudVisionV1p4beta1DominantColorsAnnotation.fromJson(
              _json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// Response message for the `ImportProductSets` method.
///
/// This message is returned by the
/// google.longrunning.Operations.GetOperation method in the returned
/// google.longrunning.Operation.response field.
class GoogleCloudVisionV1p4beta1ImportProductSetsResponse {
  /// The list of reference_images that are imported successfully.
  core.List<GoogleCloudVisionV1p4beta1ReferenceImage> referenceImages;

  /// The rpc status for each ImportProductSet request, including both successes
  /// and errors.
  ///
  /// The number of statuses here matches the number of lines in the csv file,
  /// and statuses[i] stores the success or failure status of processing the
  /// i-th
  /// line of the csv, starting from line 0.
  core.List<Status> statuses;

  GoogleCloudVisionV1p4beta1ImportProductSetsResponse();

  GoogleCloudVisionV1p4beta1ImportProductSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("referenceImages")) {
      referenceImages = (_json["referenceImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ReferenceImage>((value) =>
              new GoogleCloudVisionV1p4beta1ReferenceImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("statuses")) {
      statuses = (_json["statuses"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (referenceImages != null) {
      _json["referenceImages"] =
          referenceImages.map((value) => (value).toJson()).toList();
    }
    if (statuses != null) {
      _json["statuses"] = statuses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudVisionV1p4beta1InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p4beta1GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  GoogleCloudVisionV1p4beta1InputConfig();

  GoogleCloudVisionV1p4beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource =
          new GoogleCloudVisionV1p4beta1GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  GoogleCloudVisionV1p4beta1BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation();

  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class GoogleCloudVisionV1p4beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  GoogleCloudVisionV1p4beta1LocationInfo();

  GoogleCloudVisionV1p4beta1LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVisionV1p4beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVisionV1p4beta1NormalizedVertex();

  GoogleCloudVisionV1p4beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchAnnotateImages operation.
class GoogleCloudVisionV1p4beta1OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  GoogleCloudVisionV1p4beta1OperationMetadata();

  GoogleCloudVisionV1p4beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudVisionV1p4beta1OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GoogleCloudVisionV1p4beta1GcsDestination gcsDestination;

  GoogleCloudVisionV1p4beta1OutputConfig();

  GoogleCloudVisionV1p4beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GoogleCloudVisionV1p4beta1GcsDestination.fromJson(
          _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class GoogleCloudVisionV1p4beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p4beta1Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// Additional information detected on the page.
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  GoogleCloudVisionV1p4beta1Page();

  GoogleCloudVisionV1p4beta1Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Block>(
              (value) => new GoogleCloudVisionV1p4beta1Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class GoogleCloudVisionV1p4beta1Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p4beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty property;

  /// List of words in this paragraph.
  core.List<GoogleCloudVisionV1p4beta1Word> words;

  GoogleCloudVisionV1p4beta1Paragraph();

  GoogleCloudVisionV1p4beta1Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Word>(
              (value) => new GoogleCloudVisionV1p4beta1Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p4beta1Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  GoogleCloudVisionV1p4beta1Position();

  GoogleCloudVisionV1p4beta1Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p4beta1Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<GoogleCloudVisionV1p4beta1ProductKeyValue> productLabels;

  GoogleCloudVisionV1p4beta1Product();

  GoogleCloudVisionV1p4beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ProductKeyValue>((value) =>
              new GoogleCloudVisionV1p4beta1ProductKeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class GoogleCloudVisionV1p4beta1ProductKeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  GoogleCloudVisionV1p4beta1ProductKeyValue();

  GoogleCloudVisionV1p4beta1ProductKeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Results for a product search request.
class GoogleCloudVisionV1p4beta1ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>
      productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p4beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p4beta1ProductSearchResults();

  GoogleCloudVisionV1p4beta1ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult>(
              (value) =>
                  new GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p4beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p4beta1BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p4beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult();

  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p4beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p4beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a product.
class GoogleCloudVisionV1p4beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  GoogleCloudVisionV1p4beta1Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  GoogleCloudVisionV1p4beta1ProductSearchResultsResult();

  GoogleCloudVisionV1p4beta1ProductSearchResultsResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product =
          new GoogleCloudVisionV1p4beta1Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class GoogleCloudVisionV1p4beta1Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  GoogleCloudVisionV1p4beta1Property();

  GoogleCloudVisionV1p4beta1Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A `ReferenceImage` represents a product image and its associated metadata,
/// such as bounding boxes.
class GoogleCloudVisionV1p4beta1ReferenceImage {
  /// Bounding polygons around the areas of interest in the reference image.
  /// Optional. If this field is empty, the system will try to detect regions of
  /// interest. At most 10 bounding polygons will be used.
  ///
  /// The provided shape is converted into a non-rotated rectangle. Once
  /// converted, the small edge of the rectangle must be greater than or equal
  /// to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
  /// is not).
  core.List<GoogleCloudVisionV1p4beta1BoundingPoly> boundingPolys;

  /// The resource name of the reference image.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  ///
  /// This field is ignored when creating a reference image.
  core.String name;

  /// The Google Cloud Storage URI of the reference image.
  ///
  /// The URI must start with `gs://`.
  ///
  /// Required.
  core.String uri;

  GoogleCloudVisionV1p4beta1ReferenceImage();

  GoogleCloudVisionV1p4beta1ReferenceImage.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPolys")) {
      boundingPolys = (_json["boundingPolys"] as core.List)
          .map<GoogleCloudVisionV1p4beta1BoundingPoly>((value) =>
              new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPolys != null) {
      _json["boundingPolys"] =
          boundingPolys.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class GoogleCloudVisionV1p4beta1SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  GoogleCloudVisionV1p4beta1SafeSearchAnnotation();

  GoogleCloudVisionV1p4beta1SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// A single symbol representation.
class GoogleCloudVisionV1p4beta1Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p4beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  GoogleCloudVisionV1p4beta1Symbol();

  GoogleCloudVisionV1p4beta1Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class GoogleCloudVisionV1p4beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p4beta1Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  GoogleCloudVisionV1p4beta1TextAnnotation();

  GoogleCloudVisionV1p4beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Page>(
              (value) => new GoogleCloudVisionV1p4beta1Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak();

  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage();

  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p4beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage>
      detectedLanguages;

  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty();

  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
      core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak =
          new GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak.fromJson(
              _json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage>(
              (value) =>
                  new GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p4beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudVisionV1p4beta1Vertex();

  GoogleCloudVisionV1p4beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p4beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebPage>
      pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebImage>
      partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebImage>
      visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebEntity> webEntities;

  GoogleCloudVisionV1p4beta1WebDetection();

  GoogleCloudVisionV1p4beta1WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebLabel>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebLabel.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebPage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebEntity>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebEntity.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class GoogleCloudVisionV1p4beta1WebDetectionWebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  GoogleCloudVisionV1p4beta1WebDetectionWebEntity();

  GoogleCloudVisionV1p4beta1WebDetectionWebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class GoogleCloudVisionV1p4beta1WebDetectionWebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  GoogleCloudVisionV1p4beta1WebDetectionWebImage();

  GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class GoogleCloudVisionV1p4beta1WebDetectionWebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p4beta1WebDetectionWebLabel();

  GoogleCloudVisionV1p4beta1WebDetectionWebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class GoogleCloudVisionV1p4beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<GoogleCloudVisionV1p4beta1WebDetectionWebImage>
      partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  GoogleCloudVisionV1p4beta1WebDetectionWebPage();

  GoogleCloudVisionV1p4beta1WebDetectionWebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p4beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p4beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class GoogleCloudVisionV1p4beta1Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p4beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p4beta1Symbol> symbols;

  GoogleCloudVisionV1p4beta1Word();

  GoogleCloudVisionV1p4beta1Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p4beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p4beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<GoogleCloudVisionV1p4beta1Symbol>(
              (value) => new GoogleCloudVisionV1p4beta1Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to a single file annotation request. A file may contain one or more
/// images, which individually have their own responses.
class GoogleCloudVisionV1p5beta1AnnotateFileResponse {
  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p5beta1InputConfig inputConfig;

  /// Individual responses to images found within the file.
  core.List<GoogleCloudVisionV1p5beta1AnnotateImageResponse> responses;

  /// This field gives the total number of pages in the file.
  core.int totalPages;

  GoogleCloudVisionV1p5beta1AnnotateFileResponse();

  GoogleCloudVisionV1p5beta1AnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new GoogleCloudVisionV1p5beta1InputConfig.fromJson(
          _json["inputConfig"]);
    }
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p5beta1AnnotateImageResponse>((value) =>
              new GoogleCloudVisionV1p5beta1AnnotateImageResponse.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("totalPages")) {
      totalPages = _json["totalPages"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (totalPages != null) {
      _json["totalPages"] = totalPages;
    }
    return _json;
  }
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p5beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image
  /// comes from.
  GoogleCloudVisionV1p5beta1ImageAnnotationContext context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p5beta1CropHintsAnnotation cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  /// Note that filled-in image annotations are guaranteed to be
  /// correct, even when `error` is set.
  Status error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p5beta1FaceAnnotation> faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p5beta1TextAnnotation fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p5beta1ImageProperties imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p5beta1EntityAnnotation> labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p5beta1EntityAnnotation> landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation>
      localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p5beta1EntityAnnotation> logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p5beta1ProductSearchResults productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p5beta1SafeSearchAnnotation safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p5beta1EntityAnnotation> textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p5beta1WebDetection webDetection;

  GoogleCloudVisionV1p5beta1AnnotateImageResponse();

  GoogleCloudVisionV1p5beta1AnnotateImageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = new GoogleCloudVisionV1p5beta1ImageAnnotationContext.fromJson(
          _json["context"]);
    }
    if (_json.containsKey("cropHintsAnnotation")) {
      cropHintsAnnotation =
          new GoogleCloudVisionV1p5beta1CropHintsAnnotation.fromJson(
              _json["cropHintsAnnotation"]);
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("faceAnnotations")) {
      faceAnnotations = (_json["faceAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1FaceAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1FaceAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullTextAnnotation")) {
      fullTextAnnotation =
          new GoogleCloudVisionV1p5beta1TextAnnotation.fromJson(
              _json["fullTextAnnotation"]);
    }
    if (_json.containsKey("imagePropertiesAnnotation")) {
      imagePropertiesAnnotation =
          new GoogleCloudVisionV1p5beta1ImageProperties.fromJson(
              _json["imagePropertiesAnnotation"]);
    }
    if (_json.containsKey("labelAnnotations")) {
      labelAnnotations = (_json["labelAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("landmarkAnnotations")) {
      landmarkAnnotations = (_json["landmarkAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("localizedObjectAnnotations")) {
      localizedObjectAnnotations = (_json["localizedObjectAnnotations"]
              as core.List)
          .map<GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("logoAnnotations")) {
      logoAnnotations = (_json["logoAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productSearchResults")) {
      productSearchResults =
          new GoogleCloudVisionV1p5beta1ProductSearchResults.fromJson(
              _json["productSearchResults"]);
    }
    if (_json.containsKey("safeSearchAnnotation")) {
      safeSearchAnnotation =
          new GoogleCloudVisionV1p5beta1SafeSearchAnnotation.fromJson(
              _json["safeSearchAnnotation"]);
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1EntityAnnotation>((value) =>
              new GoogleCloudVisionV1p5beta1EntityAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webDetection")) {
      webDetection = new GoogleCloudVisionV1p5beta1WebDetection.fromJson(
          _json["webDetection"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (context != null) {
      _json["context"] = (context).toJson();
    }
    if (cropHintsAnnotation != null) {
      _json["cropHintsAnnotation"] = (cropHintsAnnotation).toJson();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (faceAnnotations != null) {
      _json["faceAnnotations"] =
          faceAnnotations.map((value) => (value).toJson()).toList();
    }
    if (fullTextAnnotation != null) {
      _json["fullTextAnnotation"] = (fullTextAnnotation).toJson();
    }
    if (imagePropertiesAnnotation != null) {
      _json["imagePropertiesAnnotation"] = (imagePropertiesAnnotation).toJson();
    }
    if (labelAnnotations != null) {
      _json["labelAnnotations"] =
          labelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (landmarkAnnotations != null) {
      _json["landmarkAnnotations"] =
          landmarkAnnotations.map((value) => (value).toJson()).toList();
    }
    if (localizedObjectAnnotations != null) {
      _json["localizedObjectAnnotations"] =
          localizedObjectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (logoAnnotations != null) {
      _json["logoAnnotations"] =
          logoAnnotations.map((value) => (value).toJson()).toList();
    }
    if (productSearchResults != null) {
      _json["productSearchResults"] = (productSearchResults).toJson();
    }
    if (safeSearchAnnotation != null) {
      _json["safeSearchAnnotation"] = (safeSearchAnnotation).toJson();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    if (webDetection != null) {
      _json["webDetection"] = (webDetection).toJson();
    }
    return _json;
  }
}

/// The response for a single offline file annotation request.
class GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse {
  /// The output location and metadata from AsyncAnnotateFileRequest.
  GoogleCloudVisionV1p5beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse();

  GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p5beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Response to an async batch file annotation request.
class GoogleCloudVisionV1p5beta1AsyncBatchAnnotateFilesResponse {
  /// The list of file annotation responses, one for each request in
  /// AsyncBatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse> responses;

  GoogleCloudVisionV1p5beta1AsyncBatchAnnotateFilesResponse();

  GoogleCloudVisionV1p5beta1AsyncBatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p5beta1AsyncAnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response to an async batch image annotation request.
class GoogleCloudVisionV1p5beta1AsyncBatchAnnotateImagesResponse {
  /// The output location and metadata from AsyncBatchAnnotateImagesRequest.
  GoogleCloudVisionV1p5beta1OutputConfig outputConfig;

  GoogleCloudVisionV1p5beta1AsyncBatchAnnotateImagesResponse();

  GoogleCloudVisionV1p5beta1AsyncBatchAnnotateImagesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new GoogleCloudVisionV1p5beta1OutputConfig.fromJson(
          _json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// A list of file annotation responses.
class GoogleCloudVisionV1p5beta1BatchAnnotateFilesResponse {
  /// The list of file annotation responses, each response corresponding to each
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p5beta1AnnotateFileResponse> responses;

  GoogleCloudVisionV1p5beta1BatchAnnotateFilesResponse();

  GoogleCloudVisionV1p5beta1BatchAnnotateFilesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<GoogleCloudVisionV1p5beta1AnnotateFileResponse>((value) =>
              new GoogleCloudVisionV1p5beta1AnnotateFileResponse.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Metadata for the batch operations such as the current state.
///
/// This is included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
class GoogleCloudVisionV1p5beta1BatchOperationMetadata {
  /// The time when the batch request is finished and
  /// google.longrunning.Operation.done is set to true.
  core.String endTime;

  /// The current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "SUCCESSFUL" : The request is done and at least one item has been
  /// successfully
  /// processed.
  /// - "FAILED" : The request is done and no item has been successfully
  /// processed.
  /// - "CANCELLED" : The request is done after the
  /// longrunning.Operations.CancelOperation has
  /// been called by the user.  Any records that were processed before the
  /// cancel command are output as specified in the request.
  core.String state;

  /// The time when the batch request was submitted to the server.
  core.String submitTime;

  GoogleCloudVisionV1p5beta1BatchOperationMetadata();

  GoogleCloudVisionV1p5beta1BatchOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submitTime")) {
      submitTime = _json["submitTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submitTime != null) {
      _json["submitTime"] = submitTime;
    }
    return _json;
  }
}

/// Logical element on the page.
class GoogleCloudVisionV1p5beta1Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  /// - "KEY_VALUE_PAIR" : A key-value pair block.
  core.String blockType;

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p5beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results on the block. Range [0, 1].
  core.double confidence;

  /// Detected pair for KEY_VALUE_PAIR block_type. This detection can be turned
  /// off by explicitly setting desired fields in
  /// DocumentParsingParams.block_filter.
  GoogleCloudVisionV1p5beta1KeyValuePair keyValuePair;

  /// All UTF-8 text detected in this block. This field is by default not
  /// returned unless specified in TextDetectionParams.block_filter or
  /// DocumentParsingParams.block_filter.
  core.String mergedText;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p5beta1Paragraph> paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty property;

  /// Detected table for TABLE block_type. This detection can be turned off by
  /// explicitly setting desired fields in DocumentParsingParams.block_filter.
  GoogleCloudVisionV1p5beta1Table table;

  GoogleCloudVisionV1p5beta1Block();

  GoogleCloudVisionV1p5beta1Block.fromJson(core.Map _json) {
    if (_json.containsKey("blockType")) {
      blockType = _json["blockType"];
    }
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("keyValuePair")) {
      keyValuePair = new GoogleCloudVisionV1p5beta1KeyValuePair.fromJson(
          _json["keyValuePair"]);
    }
    if (_json.containsKey("mergedText")) {
      mergedText = _json["mergedText"];
    }
    if (_json.containsKey("paragraphs")) {
      paragraphs = (_json["paragraphs"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Paragraph>((value) =>
              new GoogleCloudVisionV1p5beta1Paragraph.fromJson(value))
          .toList();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("table")) {
      table = new GoogleCloudVisionV1p5beta1Table.fromJson(_json["table"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blockType != null) {
      _json["blockType"] = blockType;
    }
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (keyValuePair != null) {
      _json["keyValuePair"] = (keyValuePair).toJson();
    }
    if (mergedText != null) {
      _json["mergedText"] = mergedText;
    }
    if (paragraphs != null) {
      _json["paragraphs"] =
          paragraphs.map((value) => (value).toJson()).toList();
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (table != null) {
      _json["table"] = (table).toJson();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudVisionV1p5beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p5beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p5beta1Vertex> vertices;

  GoogleCloudVisionV1p5beta1BoundingPoly();

  GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey("normalizedVertices")) {
      normalizedVertices = (_json["normalizedVertices"] as core.List)
          .map<GoogleCloudVisionV1p5beta1NormalizedVertex>((value) =>
              new GoogleCloudVisionV1p5beta1NormalizedVertex.fromJson(value))
          .toList();
    }
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Vertex>(
              (value) => new GoogleCloudVisionV1p5beta1Vertex.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedVertices != null) {
      _json["normalizedVertices"] =
          normalizedVertices.map((value) => (value).toJson()).toList();
    }
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Color information consists of RGB channels, score, and the fraction of
/// the image that the color occupies in the image.
class GoogleCloudVisionV1p5beta1ColorInfo {
  /// RGB components of the color.
  Color color;

  /// The fraction of pixels the color occupies in the image.
  /// Value in range [0, 1].
  core.double pixelFraction;

  /// Image-specific score for this color. Value in range [0, 1].
  core.double score;

  GoogleCloudVisionV1p5beta1ColorInfo();

  GoogleCloudVisionV1p5beta1ColorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("pixelFraction")) {
      pixelFraction = _json["pixelFraction"].toDouble();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (pixelFraction != null) {
      _json["pixelFraction"] = pixelFraction;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p5beta1CropHint {
  /// The bounding polygon for the crop region. The coordinates of the bounding
  /// box are in the original image's scale.
  GoogleCloudVisionV1p5beta1BoundingPoly boundingPoly;

  /// Confidence of this being a salient region.  Range [0, 1].
  core.double confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double importanceFraction;

  GoogleCloudVisionV1p5beta1CropHint();

  GoogleCloudVisionV1p5beta1CropHint.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("importanceFraction")) {
      importanceFraction = _json["importanceFraction"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (importanceFraction != null) {
      _json["importanceFraction"] = importanceFraction;
    }
    return _json;
  }
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p5beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p5beta1CropHint> cropHints;

  GoogleCloudVisionV1p5beta1CropHintsAnnotation();

  GoogleCloudVisionV1p5beta1CropHintsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("cropHints")) {
      cropHints = (_json["cropHints"] as core.List)
          .map<GoogleCloudVisionV1p5beta1CropHint>(
              (value) => new GoogleCloudVisionV1p5beta1CropHint.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHints != null) {
      _json["cropHints"] = cropHints.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p5beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p5beta1ColorInfo> colors;

  GoogleCloudVisionV1p5beta1DominantColorsAnnotation();

  GoogleCloudVisionV1p5beta1DominantColorsAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("colors")) {
      colors = (_json["colors"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ColorInfo>((value) =>
              new GoogleCloudVisionV1p5beta1ColorInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colors != null) {
      _json["colors"] = colors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected entity features.
class GoogleCloudVisionV1p5beta1EntityAnnotation {
  /// Image region to which this entity belongs. Not produced
  /// for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p5beta1BoundingPoly boundingPoly;

  /// **Deprecated. Use `score` instead.**
  /// The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range [0, 1].
  core.double confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String description;

  /// The language code for the locale in which the entity textual
  /// `description` is expressed.
  core.String locale;

  /// The location information for the detected entity. Multiple
  /// `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location
  /// may indicate the location of the place where the image was taken.
  /// Location information is usually present for landmarks.
  core.List<GoogleCloudVisionV1p5beta1LocationInfo> locations;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p5beta1Property> properties;

  /// Overall score of the result. Range [0, 1].
  core.double score;

  /// The relevancy of the ICA (Image Content Annotation) label to the
  /// image. For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that
  /// there is a tower in each image may be the same. Range [0, 1].
  core.double topicality;

  GoogleCloudVisionV1p5beta1EntityAnnotation();

  GoogleCloudVisionV1p5beta1EntityAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<GoogleCloudVisionV1p5beta1LocationInfo>((value) =>
              new GoogleCloudVisionV1p5beta1LocationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Property>(
              (value) => new GoogleCloudVisionV1p5beta1Property.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("topicality")) {
      topicality = _json["topicality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (topicality != null) {
      _json["topicality"] = topicality;
    }
    return _json;
  }
}

/// A face annotation object contains the results of face detection.
class GoogleCloudVisionV1p5beta1FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String blurredLikelihood;

  /// The bounding polygon around the face. The coordinates of the bounding box
  /// are in the original image's scale.
  /// The bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results.
  /// Note that one or more x and/or y coordinates may not be generated in the
  /// `BoundingPoly` (the polygon will be unbounded) if only a partial face
  /// appears in the image to be annotated.
  GoogleCloudVisionV1p5beta1BoundingPoly boundingPoly;

  /// Detection confidence. Range [0, 1].
  core.double detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face. Typically, it
  /// is used to eliminate the face from any image analysis that detects the
  /// "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence
  /// the <code>fd</code> (face detection) prefix.
  GoogleCloudVisionV1p5beta1BoundingPoly fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String joyLikelihood;

  /// Face landmarking confidence. Range [0, 1].
  core.double landmarkingConfidence;

  /// Detected face landmarks.
  core.List<GoogleCloudVisionV1p5beta1FaceAnnotationLandmark> landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image. Range
  /// [-180,180].
  core.double panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation
  /// of the face relative to the image vertical about the axis perpendicular to
  /// the face. Range [-180,180].
  core.double rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane. Range [-180,180].
  core.double tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String underExposedLikelihood;

  GoogleCloudVisionV1p5beta1FaceAnnotation();

  GoogleCloudVisionV1p5beta1FaceAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("angerLikelihood")) {
      angerLikelihood = _json["angerLikelihood"];
    }
    if (_json.containsKey("blurredLikelihood")) {
      blurredLikelihood = _json["blurredLikelihood"];
    }
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("detectionConfidence")) {
      detectionConfidence = _json["detectionConfidence"].toDouble();
    }
    if (_json.containsKey("fdBoundingPoly")) {
      fdBoundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["fdBoundingPoly"]);
    }
    if (_json.containsKey("headwearLikelihood")) {
      headwearLikelihood = _json["headwearLikelihood"];
    }
    if (_json.containsKey("joyLikelihood")) {
      joyLikelihood = _json["joyLikelihood"];
    }
    if (_json.containsKey("landmarkingConfidence")) {
      landmarkingConfidence = _json["landmarkingConfidence"].toDouble();
    }
    if (_json.containsKey("landmarks")) {
      landmarks = (_json["landmarks"] as core.List)
          .map<GoogleCloudVisionV1p5beta1FaceAnnotationLandmark>((value) =>
              new GoogleCloudVisionV1p5beta1FaceAnnotationLandmark.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("panAngle")) {
      panAngle = _json["panAngle"].toDouble();
    }
    if (_json.containsKey("rollAngle")) {
      rollAngle = _json["rollAngle"].toDouble();
    }
    if (_json.containsKey("sorrowLikelihood")) {
      sorrowLikelihood = _json["sorrowLikelihood"];
    }
    if (_json.containsKey("surpriseLikelihood")) {
      surpriseLikelihood = _json["surpriseLikelihood"];
    }
    if (_json.containsKey("tiltAngle")) {
      tiltAngle = _json["tiltAngle"].toDouble();
    }
    if (_json.containsKey("underExposedLikelihood")) {
      underExposedLikelihood = _json["underExposedLikelihood"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angerLikelihood != null) {
      _json["angerLikelihood"] = angerLikelihood;
    }
    if (blurredLikelihood != null) {
      _json["blurredLikelihood"] = blurredLikelihood;
    }
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (detectionConfidence != null) {
      _json["detectionConfidence"] = detectionConfidence;
    }
    if (fdBoundingPoly != null) {
      _json["fdBoundingPoly"] = (fdBoundingPoly).toJson();
    }
    if (headwearLikelihood != null) {
      _json["headwearLikelihood"] = headwearLikelihood;
    }
    if (joyLikelihood != null) {
      _json["joyLikelihood"] = joyLikelihood;
    }
    if (landmarkingConfidence != null) {
      _json["landmarkingConfidence"] = landmarkingConfidence;
    }
    if (landmarks != null) {
      _json["landmarks"] = landmarks.map((value) => (value).toJson()).toList();
    }
    if (panAngle != null) {
      _json["panAngle"] = panAngle;
    }
    if (rollAngle != null) {
      _json["rollAngle"] = rollAngle;
    }
    if (sorrowLikelihood != null) {
      _json["sorrowLikelihood"] = sorrowLikelihood;
    }
    if (surpriseLikelihood != null) {
      _json["surpriseLikelihood"] = surpriseLikelihood;
    }
    if (tiltAngle != null) {
      _json["tiltAngle"] = tiltAngle;
    }
    if (underExposedLikelihood != null) {
      _json["underExposedLikelihood"] = underExposedLikelihood;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class GoogleCloudVisionV1p5beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p5beta1Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  GoogleCloudVisionV1p5beta1FaceAnnotationLandmark();

  GoogleCloudVisionV1p5beta1FaceAnnotationLandmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position =
          new GoogleCloudVisionV1p5beta1Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output will be written to.
class GoogleCloudVisionV1p5beta1GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored. Results
  /// will be in JSON format and preceded by its corresponding input URI prefix.
  /// This field can either represent a gcs file prefix or gcs directory. In
  /// either case, the uri should be unique because in order to get all of the
  /// output files, you will need to do a wildcard gcs search on the uri prefix
  /// you provide.
  ///
  /// Examples:
  ///
  /// *    File Prefix: gs://bucket-name/here/filenameprefix   The output files
  /// will be created in gs://bucket-name/here/ and the names of the
  /// output files will begin with "filenameprefix".
  ///
  /// *    Directory Prefix: gs://bucket-name/some/location/   The output files
  /// will be created in gs://bucket-name/some/location/ and the names of the
  /// output files could be anything because there was no filename prefix
  /// specified.
  ///
  /// If multiple outputs, each response is still AnnotateFileResponse, each of
  /// which contains some subset of the full list of AnnotateImageResponse.
  /// Multiple outputs can happen if, for example, the output JSON is too large
  /// and overflows into multiple sharded files.
  core.String uri;

  GoogleCloudVisionV1p5beta1GcsDestination();

  GoogleCloudVisionV1p5beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input will be read from.
class GoogleCloudVisionV1p5beta1GcsSource {
  /// Google Cloud Storage URI for the input file. This must only be a
  /// Google Cloud Storage object. Wildcards are not currently supported.
  core.String uri;

  GoogleCloudVisionV1p5beta1GcsSource();

  GoogleCloudVisionV1p5beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class GoogleCloudVisionV1p5beta1ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  GoogleCloudVisionV1p5beta1ImageAnnotationContext();

  GoogleCloudVisionV1p5beta1ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p5beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p5beta1DominantColorsAnnotation dominantColors;

  GoogleCloudVisionV1p5beta1ImageProperties();

  GoogleCloudVisionV1p5beta1ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new GoogleCloudVisionV1p5beta1DominantColorsAnnotation.fromJson(
              _json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// Response message for the `ImportProductSets` method.
///
/// This message is returned by the
/// google.longrunning.Operations.GetOperation method in the returned
/// google.longrunning.Operation.response field.
class GoogleCloudVisionV1p5beta1ImportProductSetsResponse {
  /// The list of reference_images that are imported successfully.
  core.List<GoogleCloudVisionV1p5beta1ReferenceImage> referenceImages;

  /// The rpc status for each ImportProductSet request, including both successes
  /// and errors.
  ///
  /// The number of statuses here matches the number of lines in the csv file,
  /// and statuses[i] stores the success or failure status of processing the
  /// i-th
  /// line of the csv, starting from line 0.
  core.List<Status> statuses;

  GoogleCloudVisionV1p5beta1ImportProductSetsResponse();

  GoogleCloudVisionV1p5beta1ImportProductSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("referenceImages")) {
      referenceImages = (_json["referenceImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ReferenceImage>((value) =>
              new GoogleCloudVisionV1p5beta1ReferenceImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("statuses")) {
      statuses = (_json["statuses"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (referenceImages != null) {
      _json["referenceImages"] =
          referenceImages.map((value) => (value).toJson()).toList();
    }
    if (statuses != null) {
      _json["statuses"] = statuses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudVisionV1p5beta1InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p5beta1GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  GoogleCloudVisionV1p5beta1InputConfig();

  GoogleCloudVisionV1p5beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource =
          new GoogleCloudVisionV1p5beta1GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Proto for a key value pair.
class GoogleCloudVisionV1p5beta1KeyValuePair {
  /// The key string value.
  core.String key;

  /// Key block of the pair containing the normalized bounding box and key text.
  GoogleCloudVisionV1p5beta1Block keyBlock;

  /// Optional. The translation of key text if the text is not in English.
  core.String normalizedKey;

  /// Value block of the pair containing the normalized bounding box and value
  /// text, including potentially deeper structures within the value text.
  GoogleCloudVisionV1p5beta1Block valueBlock;

  /// Type of the value. Valid strings are the following:
  ///
  ///  "generic" - For generic text that is mapped to a value.
  ///  "number" - for numeric types
  ///  "id" - for generic identifiers.
  ///  "currency" - for currency values.
  ///  "date" - for dates.
  ///  "time" - for time and duration values.
  ///  "date_range" - for date ranges.
  ///  "address" - for address values (can be long).
  ///  "person" - for names of people or other personal identifiers.
  ///  "phone" - for phone numbers.
  core.String valueType;

  GoogleCloudVisionV1p5beta1KeyValuePair();

  GoogleCloudVisionV1p5beta1KeyValuePair.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("keyBlock")) {
      keyBlock =
          new GoogleCloudVisionV1p5beta1Block.fromJson(_json["keyBlock"]);
    }
    if (_json.containsKey("normalizedKey")) {
      normalizedKey = _json["normalizedKey"];
    }
    if (_json.containsKey("valueBlock")) {
      valueBlock =
          new GoogleCloudVisionV1p5beta1Block.fromJson(_json["valueBlock"]);
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (keyBlock != null) {
      _json["keyBlock"] = (keyBlock).toJson();
    }
    if (normalizedKey != null) {
      _json["normalizedKey"] = normalizedKey;
    }
    if (valueBlock != null) {
      _json["valueBlock"] = (valueBlock).toJson();
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  GoogleCloudVisionV1p5beta1BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation();

  GoogleCloudVisionV1p5beta1LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class GoogleCloudVisionV1p5beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  GoogleCloudVisionV1p5beta1LocationInfo();

  GoogleCloudVisionV1p5beta1LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVisionV1p5beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVisionV1p5beta1NormalizedVertex();

  GoogleCloudVisionV1p5beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchAnnotateImages operation.
class GoogleCloudVisionV1p5beta1OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  GoogleCloudVisionV1p5beta1OperationMetadata();

  GoogleCloudVisionV1p5beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudVisionV1p5beta1OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GoogleCloudVisionV1p5beta1GcsDestination gcsDestination;

  GoogleCloudVisionV1p5beta1OutputConfig();

  GoogleCloudVisionV1p5beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GoogleCloudVisionV1p5beta1GcsDestination.fromJson(
          _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class GoogleCloudVisionV1p5beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p5beta1Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// All UTF-8 text detected in this page. This field is by default not
  /// returned unless specified in TextDetectionParams.page_filter.
  core.String mergedText;

  /// Additional information detected on the page.
  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  GoogleCloudVisionV1p5beta1Page();

  GoogleCloudVisionV1p5beta1Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Block>(
              (value) => new GoogleCloudVisionV1p5beta1Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("mergedText")) {
      mergedText = _json["mergedText"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (mergedText != null) {
      _json["mergedText"] = mergedText;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class GoogleCloudVisionV1p5beta1Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p5beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// All UTF-8 text detected in this paragraph. This field is by default not
  /// returned unless specified in
  /// TextDetectionParams.paragraph_filter.
  core.String mergedText;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty property;

  /// List of words in this paragraph.
  core.List<GoogleCloudVisionV1p5beta1Word> words;

  GoogleCloudVisionV1p5beta1Paragraph();

  GoogleCloudVisionV1p5beta1Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("mergedText")) {
      mergedText = _json["mergedText"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Word>(
              (value) => new GoogleCloudVisionV1p5beta1Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (mergedText != null) {
      _json["mergedText"] = mergedText;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p5beta1Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  GoogleCloudVisionV1p5beta1Position();

  GoogleCloudVisionV1p5beta1Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p5beta1Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<GoogleCloudVisionV1p5beta1ProductKeyValue> productLabels;

  GoogleCloudVisionV1p5beta1Product();

  GoogleCloudVisionV1p5beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ProductKeyValue>((value) =>
              new GoogleCloudVisionV1p5beta1ProductKeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class GoogleCloudVisionV1p5beta1ProductKeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  GoogleCloudVisionV1p5beta1ProductKeyValue();

  GoogleCloudVisionV1p5beta1ProductKeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Results for a product search request.
class GoogleCloudVisionV1p5beta1ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult>
      productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p5beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p5beta1ProductSearchResults();

  GoogleCloudVisionV1p5beta1ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult>(
              (value) =>
                  new GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p5beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p5beta1BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p5beta1ProductSearchResultsResult> results;

  GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult();

  GoogleCloudVisionV1p5beta1ProductSearchResultsGroupedResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<GoogleCloudVisionV1p5beta1ProductSearchResultsResult>((value) =>
              new GoogleCloudVisionV1p5beta1ProductSearchResultsResult.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a product.
class GoogleCloudVisionV1p5beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  GoogleCloudVisionV1p5beta1Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  GoogleCloudVisionV1p5beta1ProductSearchResultsResult();

  GoogleCloudVisionV1p5beta1ProductSearchResultsResult.fromJson(
      core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product =
          new GoogleCloudVisionV1p5beta1Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class GoogleCloudVisionV1p5beta1Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  GoogleCloudVisionV1p5beta1Property();

  GoogleCloudVisionV1p5beta1Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A `ReferenceImage` represents a product image and its associated metadata,
/// such as bounding boxes.
class GoogleCloudVisionV1p5beta1ReferenceImage {
  /// Bounding polygons around the areas of interest in the reference image.
  /// Optional. If this field is empty, the system will try to detect regions of
  /// interest. At most 10 bounding polygons will be used.
  ///
  /// The provided shape is converted into a non-rotated rectangle. Once
  /// converted, the small edge of the rectangle must be greater than or equal
  /// to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
  /// is not).
  core.List<GoogleCloudVisionV1p5beta1BoundingPoly> boundingPolys;

  /// The resource name of the reference image.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  ///
  /// This field is ignored when creating a reference image.
  core.String name;

  /// The Google Cloud Storage URI of the reference image.
  ///
  /// The URI must start with `gs://`.
  ///
  /// Required.
  core.String uri;

  GoogleCloudVisionV1p5beta1ReferenceImage();

  GoogleCloudVisionV1p5beta1ReferenceImage.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPolys")) {
      boundingPolys = (_json["boundingPolys"] as core.List)
          .map<GoogleCloudVisionV1p5beta1BoundingPoly>((value) =>
              new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPolys != null) {
      _json["boundingPolys"] =
          boundingPolys.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class GoogleCloudVisionV1p5beta1SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  GoogleCloudVisionV1p5beta1SafeSearchAnnotation();

  GoogleCloudVisionV1p5beta1SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// A single symbol representation.
class GoogleCloudVisionV1p5beta1Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p5beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  GoogleCloudVisionV1p5beta1Symbol();

  GoogleCloudVisionV1p5beta1Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// A table representation similar to HTML table structure.
class GoogleCloudVisionV1p5beta1Table {
  /// Body rows of the table
  core.List<GoogleCloudVisionV1p5beta1TableTableRow> bodyRows;

  /// Header rows of the table
  core.List<GoogleCloudVisionV1p5beta1TableTableRow> headerRows;

  GoogleCloudVisionV1p5beta1Table();

  GoogleCloudVisionV1p5beta1Table.fromJson(core.Map _json) {
    if (_json.containsKey("bodyRows")) {
      bodyRows = (_json["bodyRows"] as core.List)
          .map<GoogleCloudVisionV1p5beta1TableTableRow>((value) =>
              new GoogleCloudVisionV1p5beta1TableTableRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("headerRows")) {
      headerRows = (_json["headerRows"] as core.List)
          .map<GoogleCloudVisionV1p5beta1TableTableRow>((value) =>
              new GoogleCloudVisionV1p5beta1TableTableRow.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bodyRows != null) {
      _json["bodyRows"] = bodyRows.map((value) => (value).toJson()).toList();
    }
    if (headerRows != null) {
      _json["headerRows"] =
          headerRows.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A cell representation inside of tables.
class GoogleCloudVisionV1p5beta1TableTableCell {
  /// How many columns this cell spans.
  core.int colSpan;

  /// How many rows this cell spans.
  core.int rowSpan;

  /// The merged text value of this cell, omitting any deeper structural
  /// information unlike `text_block`. This is useful for simple cells.
  core.String text;

  /// Text block for this cell which also contains the normalized bounding box
  /// for the cell and deeper structures within a cell if present.
  GoogleCloudVisionV1p5beta1Block textBlock;

  GoogleCloudVisionV1p5beta1TableTableCell();

  GoogleCloudVisionV1p5beta1TableTableCell.fromJson(core.Map _json) {
    if (_json.containsKey("colSpan")) {
      colSpan = _json["colSpan"];
    }
    if (_json.containsKey("rowSpan")) {
      rowSpan = _json["rowSpan"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("textBlock")) {
      textBlock =
          new GoogleCloudVisionV1p5beta1Block.fromJson(_json["textBlock"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colSpan != null) {
      _json["colSpan"] = colSpan;
    }
    if (rowSpan != null) {
      _json["rowSpan"] = rowSpan;
    }
    if (text != null) {
      _json["text"] = text;
    }
    if (textBlock != null) {
      _json["textBlock"] = (textBlock).toJson();
    }
    return _json;
  }
}

/// A row of table cells.
class GoogleCloudVisionV1p5beta1TableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudVisionV1p5beta1TableTableCell> cells;

  GoogleCloudVisionV1p5beta1TableTableRow();

  GoogleCloudVisionV1p5beta1TableTableRow.fromJson(core.Map _json) {
    if (_json.containsKey("cells")) {
      cells = (_json["cells"] as core.List)
          .map<GoogleCloudVisionV1p5beta1TableTableCell>((value) =>
              new GoogleCloudVisionV1p5beta1TableTableCell.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cells != null) {
      _json["cells"] = cells.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class GoogleCloudVisionV1p5beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p5beta1Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  GoogleCloudVisionV1p5beta1TextAnnotation();

  GoogleCloudVisionV1p5beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Page>(
              (value) => new GoogleCloudVisionV1p5beta1Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Detected start or end of a structural component.
class GoogleCloudVisionV1p5beta1TextAnnotationDetectedBreak {
  /// True if break prepends the element.
  core.bool isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with
  /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String type;

  GoogleCloudVisionV1p5beta1TextAnnotationDetectedBreak();

  GoogleCloudVisionV1p5beta1TextAnnotationDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey("isPrefix")) {
      isPrefix = _json["isPrefix"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isPrefix != null) {
      _json["isPrefix"] = isPrefix;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage();

  GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p5beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p5beta1TextAnnotationDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage>
      detectedLanguages;

  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty();

  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
      core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak =
          new GoogleCloudVisionV1p5beta1TextAnnotationDetectedBreak.fromJson(
              _json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage>(
              (value) =>
                  new GoogleCloudVisionV1p5beta1TextAnnotationDetectedLanguage
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudVisionV1p5beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudVisionV1p5beta1Vertex();

  GoogleCloudVisionV1p5beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p5beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebPage>
      pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebImage>
      partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebImage>
      visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebEntity> webEntities;

  GoogleCloudVisionV1p5beta1WebDetection();

  GoogleCloudVisionV1p5beta1WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebLabel>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebLabel.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebPage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebEntity>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebEntity.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class GoogleCloudVisionV1p5beta1WebDetectionWebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  GoogleCloudVisionV1p5beta1WebDetectionWebEntity();

  GoogleCloudVisionV1p5beta1WebDetectionWebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class GoogleCloudVisionV1p5beta1WebDetectionWebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  GoogleCloudVisionV1p5beta1WebDetectionWebImage();

  GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class GoogleCloudVisionV1p5beta1WebDetectionWebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudVisionV1p5beta1WebDetectionWebLabel();

  GoogleCloudVisionV1p5beta1WebDetectionWebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class GoogleCloudVisionV1p5beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<GoogleCloudVisionV1p5beta1WebDetectionWebImage>
      partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  GoogleCloudVisionV1p5beta1WebDetectionWebPage();

  GoogleCloudVisionV1p5beta1WebDetectionWebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<GoogleCloudVisionV1p5beta1WebDetectionWebImage>((value) =>
              new GoogleCloudVisionV1p5beta1WebDetectionWebImage.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class GoogleCloudVisionV1p5beta1Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p5beta1BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// All UTF-8 text detected in this word. This field is by default not
  /// returned unless specified in TextDetectionParams.word_filter.
  core.String mergedText;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p5beta1TextAnnotationTextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p5beta1Symbol> symbols;

  GoogleCloudVisionV1p5beta1Word();

  GoogleCloudVisionV1p5beta1Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new GoogleCloudVisionV1p5beta1BoundingPoly.fromJson(
          _json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("mergedText")) {
      mergedText = _json["mergedText"];
    }
    if (_json.containsKey("property")) {
      property =
          new GoogleCloudVisionV1p5beta1TextAnnotationTextProperty.fromJson(
              _json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<GoogleCloudVisionV1p5beta1Symbol>(
              (value) => new GoogleCloudVisionV1p5beta1Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (mergedText != null) {
      _json["mergedText"] = mergedText;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about the products similar to a single product in a query
/// image.
class GroupedResult {
  /// The bounding polygon around the product detected in the query image.
  BoundingPoly boundingPoly;

  /// List of results, one for each product match.
  core.List<Result> results;

  GroupedResult();

  GroupedResult.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<Result>((value) => new Result.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Client image to perform Google Cloud Vision API tasks over.
class Image {
  /// Image content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Google Cloud Storage image location, or publicly-accessible image
  /// URL. If both `content` and `source` are provided for an image, `content`
  /// takes precedence and is used to perform the image annotation request.
  ImageSource source;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("source")) {
      source = new ImageSource.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within
  /// the file used to produce the image.
  core.int pageNumber;

  /// The URI of the file used to produce the image.
  core.String uri;

  ImageAnnotationContext();

  ImageAnnotationContext.fromJson(core.Map _json) {
    if (_json.containsKey("pageNumber")) {
      pageNumber = _json["pageNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pageNumber != null) {
      _json["pageNumber"] = pageNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Image context and/or feature-specific parameters.
class ImageContext {
  /// Parameters for crop hints annotation request.
  CropHintsParams cropHintsParams;

  /// List of languages to use for TEXT_DETECTION. In most cases, an empty value
  /// yields the best results since it enables automatic language detection. For
  /// languages based on the Latin alphabet, setting `language_hints` is not
  /// needed. In rare cases, when the language of the text in the image is
  /// known,
  /// setting a hint will help get better results (although it will be a
  /// significant hindrance if the hint is wrong). Text detection returns an
  /// error if one or more of the specified languages is not one of the
  /// [supported languages](/vision/docs/languages).
  core.List<core.String> languageHints;

  /// Not used.
  LatLongRect latLongRect;

  /// Parameters for product search.
  ProductSearchParams productSearchParams;

  /// Parameters for web detection.
  WebDetectionParams webDetectionParams;

  ImageContext();

  ImageContext.fromJson(core.Map _json) {
    if (_json.containsKey("cropHintsParams")) {
      cropHintsParams = new CropHintsParams.fromJson(_json["cropHintsParams"]);
    }
    if (_json.containsKey("languageHints")) {
      languageHints = (_json["languageHints"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("latLongRect")) {
      latLongRect = new LatLongRect.fromJson(_json["latLongRect"]);
    }
    if (_json.containsKey("productSearchParams")) {
      productSearchParams =
          new ProductSearchParams.fromJson(_json["productSearchParams"]);
    }
    if (_json.containsKey("webDetectionParams")) {
      webDetectionParams =
          new WebDetectionParams.fromJson(_json["webDetectionParams"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cropHintsParams != null) {
      _json["cropHintsParams"] = (cropHintsParams).toJson();
    }
    if (languageHints != null) {
      _json["languageHints"] = languageHints;
    }
    if (latLongRect != null) {
      _json["latLongRect"] = (latLongRect).toJson();
    }
    if (productSearchParams != null) {
      _json["productSearchParams"] = (productSearchParams).toJson();
    }
    if (webDetectionParams != null) {
      _json["webDetectionParams"] = (webDetectionParams).toJson();
    }
    return _json;
  }
}

/// Stores image properties, such as dominant colors.
class ImageProperties {
  /// If present, dominant colors completed successfully.
  DominantColorsAnnotation dominantColors;

  ImageProperties();

  ImageProperties.fromJson(core.Map _json) {
    if (_json.containsKey("dominantColors")) {
      dominantColors =
          new DominantColorsAnnotation.fromJson(_json["dominantColors"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dominantColors != null) {
      _json["dominantColors"] = (dominantColors).toJson();
    }
    return _json;
  }
}

/// External image source (Google Cloud Storage or web URL image location).
class ImageSource {
  /// **Use `image_uri` instead.**
  ///
  /// The Google Cloud Storage  URI of the form
  /// `gs://bucket_name/object_name`. Object versioning is not supported. See
  /// [Google Cloud Storage Request
  /// URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.
  core.String gcsImageUri;

  /// The URI of the source image. Can be either:
  ///
  /// 1. A Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`. Object versioning is not supported. See
  ///    [Google Cloud Storage Request
  ///    URIs](https://cloud.google.com/storage/docs/reference-uris) for more
  ///    info.
  ///
  /// 2. A publicly-accessible image HTTP/HTTPS URL. When fetching images from
  ///    HTTP/HTTPS URLs, Google cannot guarantee that the request will be
  ///    completed. Your request may fail if the specified host denies the
  /// request (e.g. due to request throttling or DOS prevention), or if Google
  ///    throttles requests to the site for abuse prevention. You should not
  ///    depend on externally-hosted images for production applications.
  ///
  /// When both `gcs_image_uri` and `image_uri` are specified, `image_uri` takes
  /// precedence.
  core.String imageUri;

  ImageSource();

  ImageSource.fromJson(core.Map _json) {
    if (_json.containsKey("gcsImageUri")) {
      gcsImageUri = _json["gcsImageUri"];
    }
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsImageUri != null) {
      _json["gcsImageUri"] = gcsImageUri;
    }
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location for a csv file which preserves a list of
/// ImportProductSetRequests in each line.
class ImportProductSetsGcsSource {
  /// The Google Cloud Storage URI of the input csv file.
  ///
  /// The URI must start with `gs://`.
  ///
  /// The format of the input csv file should be one image per line.
  /// In each line, there are 8 columns.
  ///
  /// 1.  image-uri
  /// 2.  image-id
  /// 3.  product-set-id
  /// 4.  product-id
  /// 5.  product-category
  /// 6.  product-display-name
  /// 7.  labels
  /// 8.  bounding-poly
  ///
  /// The `image-uri`, `product-set-id`, `product-id`, and `product-category`
  /// columns are required. All other columns are optional.
  ///
  /// If the `ProductSet` or `Product` specified by the `product-set-id` and
  /// `product-id` values does not exist, then the system will create a new
  /// `ProductSet` or `Product` for the image. In this case, the
  /// `product-display-name` column refers to
  /// display_name, the
  /// `product-category` column refers to
  /// product_category, and the
  /// `labels` column refers to product_labels.
  ///
  /// The `image-id` column is optional but must be unique if provided. If it is
  /// empty, the system will automatically assign a unique id to the image.
  ///
  /// The `product-display-name` column is optional. If it is empty, the system
  /// sets the display_name field for the product to a
  /// space (" "). You can update the `display_name` later by using the API.
  ///
  /// If a `Product` with the specified `product-id` already exists, then the
  /// system ignores the `product-display-name`, `product-category`, and
  /// `labels`
  /// columns.
  ///
  /// The `labels` column (optional) is a line containing a list of
  /// comma-separated key-value pairs, in the following format:
  ///
  ///     "key_1=value_1,key_2=value_2,...,key_n=value_n"
  ///
  /// The `bounding-poly` column (optional) identifies one region of
  /// interest from the image in the same manner as `CreateReferenceImage`. If
  /// you do not specify the `bounding-poly` column, then the system will try to
  /// detect regions of interest automatically.
  ///
  /// At most one `bounding-poly` column is allowed per line. If the image
  /// contains multiple regions of interest, add a line to the CSV file that
  /// includes the same product information, and the `bounding-poly` values for
  /// each region of interest.
  ///
  /// The `bounding-poly` column must contain an even number of comma-separated
  /// numbers, in the format "p1_x,p1_y,p2_x,p2_y,...,pn_x,pn_y". Use
  /// non-negative integers for absolute bounding polygons, and float values
  /// in [0, 1] for normalized bounding polygons.
  ///
  /// The system will resize the image if the image resolution is too
  /// large to process (larger than 20MP).
  core.String csvFileUri;

  ImportProductSetsGcsSource();

  ImportProductSetsGcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("csvFileUri")) {
      csvFileUri = _json["csvFileUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (csvFileUri != null) {
      _json["csvFileUri"] = csvFileUri;
    }
    return _json;
  }
}

/// The input content for the `ImportProductSets` method.
class ImportProductSetsInputConfig {
  /// The Google Cloud Storage location for a csv file which preserves a list
  /// of ImportProductSetRequests in each line.
  ImportProductSetsGcsSource gcsSource;

  ImportProductSetsInputConfig();

  ImportProductSetsInputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("gcsSource")) {
      gcsSource = new ImportProductSetsGcsSource.fromJson(_json["gcsSource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    return _json;
  }
}

/// Request message for the `ImportProductSets` method.
class ImportProductSetsRequest {
  /// The input content for the list of requests.
  ImportProductSetsInputConfig inputConfig;

  ImportProductSetsRequest();

  ImportProductSetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig =
          new ImportProductSetsInputConfig.fromJson(_json["inputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    return _json;
  }
}

/// Response message for the `ImportProductSets` method.
///
/// This message is returned by the
/// google.longrunning.Operations.GetOperation method in the returned
/// google.longrunning.Operation.response field.
class ImportProductSetsResponse {
  /// The list of reference_images that are imported successfully.
  core.List<ReferenceImage> referenceImages;

  /// The rpc status for each ImportProductSet request, including both successes
  /// and errors.
  ///
  /// The number of statuses here matches the number of lines in the csv file,
  /// and statuses[i] stores the success or failure status of processing the
  /// i-th
  /// line of the csv, starting from line 0.
  core.List<Status> statuses;

  ImportProductSetsResponse();

  ImportProductSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("referenceImages")) {
      referenceImages = (_json["referenceImages"] as core.List)
          .map<ReferenceImage>((value) => new ReferenceImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("statuses")) {
      statuses = (_json["statuses"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (referenceImages != null) {
      _json["referenceImages"] =
          referenceImages.map((value) => (value).toJson()).toList();
    }
    if (statuses != null) {
      _json["statuses"] = statuses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The desired input location and metadata.
class InputConfig {
  /// File content, represented as a stream of bytes.
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Currently, this field only works for BatchAnnotateFiles requests. It does
  /// not work for AsyncBatchAnnotateFiles requests.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Google Cloud Storage location to read the input from.
  GcsSource gcsSource;

  /// The type of the file. Currently only "application/pdf", "image/tiff" and
  /// "image/gif" are supported. Wildcards are not supported.
  core.String mimeType;

  InputConfig();

  InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource = new GcsSource.fromJson(_json["gcsSource"]);
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// A product label represented as a key-value pair.
class KeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot
  /// exceed 128 bytes.
  core.String key;

  /// The value of the label attached to the product. Cannot be empty and
  /// cannot exceed 128 bytes.
  core.String value;

  KeyValue();

  KeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A face-specific landmark (for example, a face feature).
class Landmark {
  /// Face landmark position.
  Position position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  core.String type;

  Landmark();

  Landmark.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (type != null) {
      _json["type"] = type;
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

/// Rectangle determined by min and max `LatLng` pairs.
class LatLongRect {
  /// Max lat/long pair.
  LatLng maxLatLng;

  /// Min lat/long pair.
  LatLng minLatLng;

  LatLongRect();

  LatLongRect.fromJson(core.Map _json) {
    if (_json.containsKey("maxLatLng")) {
      maxLatLng = new LatLng.fromJson(_json["maxLatLng"]);
    }
    if (_json.containsKey("minLatLng")) {
      minLatLng = new LatLng.fromJson(_json["minLatLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxLatLng != null) {
      _json["maxLatLng"] = (maxLatLng).toJson();
    }
    if (minLatLng != null) {
      _json["minLatLng"] = (minLatLng).toJson();
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for the `ListProductSets` method.
class ListProductSetsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// List of ProductSets.
  core.List<ProductSet> productSets;

  ListProductSetsResponse();

  ListProductSetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("productSets")) {
      productSets = (_json["productSets"] as core.List)
          .map<ProductSet>((value) => new ProductSet.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (productSets != null) {
      _json["productSets"] =
          productSets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for the `ListProductsInProductSet` method.
class ListProductsInProductSetResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// The list of Products.
  core.List<Product> products;

  ListProductsInProductSetResponse();

  ListProductsInProductSetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (products != null) {
      _json["products"] = products.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for the `ListProducts` method.
class ListProductsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// List of products.
  core.List<Product> products;

  ListProductsResponse();

  ListProductsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (products != null) {
      _json["products"] = products.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for the `ListReferenceImages` method.
class ListReferenceImagesResponse {
  /// The next_page_token returned from a previous List request, if any.
  core.String nextPageToken;

  /// The maximum number of items to return. Default 10, maximum 100.
  core.int pageSize;

  /// The list of reference images.
  core.List<ReferenceImage> referenceImages;

  ListReferenceImagesResponse();

  ListReferenceImagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("referenceImages")) {
      referenceImages = (_json["referenceImages"] as core.List)
          .map<ReferenceImage>((value) => new ReferenceImage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (referenceImages != null) {
      _json["referenceImages"] =
          referenceImages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Set of detected objects with bounding boxes.
class LocalizedObjectAnnotation {
  /// Image region to which this object belongs. This must be populated.
  BoundingPoly boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String mid;

  /// Object name, expressed in its `language_code` language.
  core.String name;

  /// Score of the result. Range [0, 1].
  core.double score;

  LocalizedObjectAnnotation();

  LocalizedObjectAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Detected entity location information.
class LocationInfo {
  /// lat/long location coordinates.
  LatLng latLng;

  LocationInfo();

  LocationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  NormalizedVertex();

  NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
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
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Contains metadata for the BatchAnnotateImages operation.
class OperationMetadata {
  /// The time when the batch request was received.
  core.String createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String state;

  /// The time when the operation result was last updated.
  core.String updateTime;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  /// The valid range is [1, 100]. If not specified, the default value is 20.
  ///
  /// For example, for one pdf file with 100 pages, 100 response protos will
  /// be generated. If `batch_size` = 20, then 5 json files each
  /// containing 20 response protos will be written under the prefix
  /// `gcs_destination`.`uri`.
  ///
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future
  /// support for other output configurations.
  core.int batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GcsDestination gcsDestination;

  OutputConfig();

  OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("batchSize")) {
      batchSize = _json["batchSize"];
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GcsDestination.fromJson(_json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (batchSize != null) {
      _json["batchSize"] = batchSize;
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Detected page from OCR.
class Page {
  /// List of blocks of text, images etc on this page.
  core.List<Block> blocks;

  /// Confidence of the OCR results on the page. Range [0, 1].
  core.double confidence;

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int height;

  /// Additional information detected on the page.
  TextProperty property;

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  core.int width;

  Page();

  Page.fromJson(core.Map _json) {
    if (_json.containsKey("blocks")) {
      blocks = (_json["blocks"] as core.List)
          .map<Block>((value) => new Block.fromJson(value))
          .toList();
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("property")) {
      property = new TextProperty.fromJson(_json["property"]);
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (blocks != null) {
      _json["blocks"] = blocks.map((value) => (value).toJson()).toList();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Structural unit of text representing a number of words in certain order.
class Paragraph {
  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  BoundingPoly boundingBox;

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the paragraph.
  TextProperty property;

  /// List of words in this paragraph.
  core.List<Word> words;

  Paragraph();

  Paragraph.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new BoundingPoly.fromJson(_json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property = new TextProperty.fromJson(_json["property"]);
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<Word>((value) => new Word.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
class Position {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  /// Z coordinate (or depth).
  core.double z;

  Position();

  Position.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
    if (_json.containsKey("z")) {
      z = _json["z"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    if (z != null) {
      _json["z"] = z;
    }
    return _json;
  }
}

/// A Product contains ReferenceImages.
class Product {
  /// User-provided metadata to be stored with this product. Must be at most
  /// 4096
  /// characters long.
  core.String description;

  /// The user-provided name for this Product. Must not be empty. Must be at
  /// most
  /// 4096 characters long.
  core.String displayName;

  /// The resource name of the product.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  ///
  /// This field is ignored when creating a product.
  core.String name;

  /// The category for the product identified by the reference image. This
  /// should
  /// be either "homegoods-v2", "apparel-v2", or "toys-v2". The legacy
  /// categories
  /// "homegoods", "apparel", and "toys" are still supported, but these should
  /// not be used for new products.
  ///
  /// This field is immutable.
  core.String productCategory;

  /// Key-value pairs that can be attached to a product. At query time,
  /// constraints can be specified based on the product_labels.
  ///
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon.
  ///
  /// Multiple values can be assigned to the same key. One product may have up
  /// to
  /// 100 product_labels.
  core.List<KeyValue> productLabels;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("productCategory")) {
      productCategory = _json["productCategory"];
    }
    if (_json.containsKey("productLabels")) {
      productLabels = (_json["productLabels"] as core.List)
          .map<KeyValue>((value) => new KeyValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (productCategory != null) {
      _json["productCategory"] = productCategory;
    }
    if (productLabels != null) {
      _json["productLabels"] =
          productLabels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Parameters for a product search request.
class ProductSearchParams {
  /// The bounding polygon around the area of interest in the image.
  /// Optional. If it is not specified, system discretion will be applied.
  BoundingPoly boundingPoly;

  /// The filtering expression. This can be used to restrict search results
  /// based
  /// on Product labels. We currently support an AND of OR of key-value
  /// expressions, where each expression within an OR must have the same key. An
  /// '=' should be used to connect the key and value.
  ///
  /// For example, "(color = red OR color = blue) AND brand = Google" is
  /// acceptable, but "(color = red OR brand = Google)" is not acceptable.
  /// "color: red" is not acceptable because it uses a ':' instead of an '='.
  core.String filter;

  /// The list of product categories to search in. Currently, we only consider
  /// the first category, and either "homegoods-v2", "apparel-v2", or "toys-v2"
  /// should be specified. The legacy categories "homegoods", "apparel", and
  /// "toys" are still supported but will be deprecated. For new products,
  /// please
  /// use "homegoods-v2", "apparel-v2", or "toys-v2" for better product search
  /// accuracy. It is recommended to migrate existing products to these
  /// categories as well.
  core.List<core.String> productCategories;

  /// The resource name of a ProductSet to be searched for similar images.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.
  core.String productSet;

  ProductSearchParams();

  ProductSearchParams.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPoly")) {
      boundingPoly = new BoundingPoly.fromJson(_json["boundingPoly"]);
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("productCategories")) {
      productCategories =
          (_json["productCategories"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("productSet")) {
      productSet = _json["productSet"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPoly != null) {
      _json["boundingPoly"] = (boundingPoly).toJson();
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (productCategories != null) {
      _json["productCategories"] = productCategories;
    }
    if (productSet != null) {
      _json["productSet"] = productSet;
    }
    return _json;
  }
}

/// Results for a product search request.
class ProductSearchResults {
  /// Timestamp of the index which provided these results. Products added to the
  /// product set and products removed from the product set after this time are
  /// not reflected in the current results.
  core.String indexTime;

  /// List of results grouped by products detected in the query image. Each
  /// entry
  /// corresponds to one bounding polygon in the query image, and contains the
  /// matching products specific to that region. There may be duplicate product
  /// matches in the union of all the per-product results.
  core.List<GroupedResult> productGroupedResults;

  /// List of results, one for each product match.
  core.List<Result> results;

  ProductSearchResults();

  ProductSearchResults.fromJson(core.Map _json) {
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("productGroupedResults")) {
      productGroupedResults = (_json["productGroupedResults"] as core.List)
          .map<GroupedResult>((value) => new GroupedResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<Result>((value) => new Result.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (productGroupedResults != null) {
      _json["productGroupedResults"] =
          productGroupedResults.map((value) => (value).toJson()).toList();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A ProductSet contains Products. A ProductSet can contain a maximum of 1
/// million reference images. If the limit is exceeded, periodic indexing will
/// fail.
class ProductSet {
  /// The user-provided name for this ProductSet. Must not be empty. Must be at
  /// most 4096 characters long.
  core.String displayName;

  /// Output only. If there was an error with indexing the product set, the
  /// field
  /// is populated.
  ///
  /// This field is ignored when creating a ProductSet.
  Status indexError;

  /// Output only. The time at which this ProductSet was last indexed. Query
  /// results will reflect all updates before this time. If this ProductSet has
  /// never been indexed, this timestamp is the default value
  /// "1970-01-01T00:00:00Z".
  ///
  /// This field is ignored when creating a ProductSet.
  core.String indexTime;

  /// The resource name of the ProductSet.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.
  ///
  /// This field is ignored when creating a ProductSet.
  core.String name;

  ProductSet();

  ProductSet.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("indexError")) {
      indexError = new Status.fromJson(_json["indexError"]);
    }
    if (_json.containsKey("indexTime")) {
      indexTime = _json["indexTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (indexError != null) {
      _json["indexError"] = (indexError).toJson();
    }
    if (indexTime != null) {
      _json["indexTime"] = indexTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A `Property` consists of a user-supplied name/value pair.
class Property {
  /// Name of the property.
  core.String name;

  /// Value of numeric properties.
  core.String uint64Value;

  /// Value of the property.
  core.String value;

  Property();

  Property.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uint64Value")) {
      uint64Value = _json["uint64Value"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (uint64Value != null) {
      _json["uint64Value"] = uint64Value;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A `ReferenceImage` represents a product image and its associated metadata,
/// such as bounding boxes.
class ReferenceImage {
  /// Bounding polygons around the areas of interest in the reference image.
  /// Optional. If this field is empty, the system will try to detect regions of
  /// interest. At most 10 bounding polygons will be used.
  ///
  /// The provided shape is converted into a non-rotated rectangle. Once
  /// converted, the small edge of the rectangle must be greater than or equal
  /// to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
  /// is not).
  core.List<BoundingPoly> boundingPolys;

  /// The resource name of the reference image.
  ///
  /// Format is:
  ///
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  ///
  /// This field is ignored when creating a reference image.
  core.String name;

  /// The Google Cloud Storage URI of the reference image.
  ///
  /// The URI must start with `gs://`.
  ///
  /// Required.
  core.String uri;

  ReferenceImage();

  ReferenceImage.fromJson(core.Map _json) {
    if (_json.containsKey("boundingPolys")) {
      boundingPolys = (_json["boundingPolys"] as core.List)
          .map<BoundingPoly>((value) => new BoundingPoly.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingPolys != null) {
      _json["boundingPolys"] =
          boundingPolys.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Request message for the `RemoveProductFromProductSet` method.
class RemoveProductFromProductSetRequest {
  /// The resource name for the Product to be removed from this ProductSet.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  core.String product;

  RemoveProductFromProductSetRequest();

  RemoveProductFromProductSetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("product")) {
      product = _json["product"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (product != null) {
      _json["product"] = product;
    }
    return _json;
  }
}

/// Information about a product.
class Result {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String image;

  /// The Product.
  Product product;

  /// A confidence level on the match, ranging from 0 (no confidence) to
  /// 1 (full confidence).
  core.double score;

  Result();

  Result.fromJson(core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("product")) {
      product = new Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Set of features pertaining to the image, computed by computer vision
/// methods over safe-search verticals (for example, adult, spoof, medical,
/// violence).
class SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image. Adult content may
  /// contain elements such as nudity, pornographic images or cartoons, or
  /// sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String medical;

  /// Likelihood that the request image contains racy content. Racy content may
  /// include (but is not limited to) skimpy or sheer clothing, strategically
  /// covered nudity, lewd or provocative poses, or close-ups of sensitive
  /// body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String racy;

  /// Spoof likelihood. The likelihood that an modification
  /// was made to the image's canonical version to make it appear
  /// funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely that the image belongs to the
  /// specified vertical.
  /// - "UNLIKELY" : It is unlikely that the image belongs to the specified
  /// vertical.
  /// - "POSSIBLE" : It is possible that the image belongs to the specified
  /// vertical.
  /// - "LIKELY" : It is likely that the image belongs to the specified
  /// vertical.
  /// - "VERY_LIKELY" : It is very likely that the image belongs to the
  /// specified vertical.
  core.String violence;

  SafeSearchAnnotation();

  SafeSearchAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("adult")) {
      adult = _json["adult"];
    }
    if (_json.containsKey("medical")) {
      medical = _json["medical"];
    }
    if (_json.containsKey("racy")) {
      racy = _json["racy"];
    }
    if (_json.containsKey("spoof")) {
      spoof = _json["spoof"];
    }
    if (_json.containsKey("violence")) {
      violence = _json["violence"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adult != null) {
      _json["adult"] = adult;
    }
    if (medical != null) {
      _json["medical"] = medical;
    }
    if (racy != null) {
      _json["racy"] = racy;
    }
    if (spoof != null) {
      _json["spoof"] = spoof;
    }
    if (violence != null) {
      _json["violence"] = violence;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// A single symbol representation.
class Symbol {
  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertice order will still be (0, 1, 2, 3).
  BoundingPoly boundingBox;

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the symbol.
  TextProperty property;

  /// The actual UTF-8 representation of the symbol.
  core.String text;

  Symbol();

  Symbol.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new BoundingPoly.fromJson(_json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property = new TextProperty.fromJson(_json["property"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer
/// to the TextAnnotation.TextProperty message definition below for more
/// detail.
class TextAnnotation {
  /// List of pages detected by OCR.
  core.List<Page> pages;

  /// UTF-8 text detected on the pages.
  core.String text;

  TextAnnotation();

  TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("pages")) {
      pages = (_json["pages"] as core.List)
          .map<Page>((value) => new Page.fromJson(value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pages != null) {
      _json["pages"] = pages.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Additional information detected on the structural component.
class TextProperty {
  /// Detected start or end of a text segment.
  DetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<DetectedLanguage> detectedLanguages;

  TextProperty();

  TextProperty.fromJson(core.Map _json) {
    if (_json.containsKey("detectedBreak")) {
      detectedBreak = new DetectedBreak.fromJson(_json["detectedBreak"]);
    }
    if (_json.containsKey("detectedLanguages")) {
      detectedLanguages = (_json["detectedLanguages"] as core.List)
          .map<DetectedLanguage>(
              (value) => new DetectedLanguage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (detectedBreak != null) {
      _json["detectedBreak"] = (detectedBreak).toJson();
    }
    if (detectedLanguages != null) {
      _json["detectedLanguages"] =
          detectedLanguages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
class Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  Vertex();

  Vertex.fromJson(core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"];
    }
    if (_json.containsKey("y")) {
      y = _json["y"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Relevant information for the image from the Internet.
class WebDetection {
  /// The service's best guess as to the topic of the request image.
  /// Inferred from similar images on the open web.
  core.List<WebLabel> bestGuessLabels;

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  core.List<WebImage> fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<WebPage> pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<WebImage> partialMatchingImages;

  /// The visually similar image results.
  core.List<WebImage> visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<WebEntity> webEntities;

  WebDetection();

  WebDetection.fromJson(core.Map _json) {
    if (_json.containsKey("bestGuessLabels")) {
      bestGuessLabels = (_json["bestGuessLabels"] as core.List)
          .map<WebLabel>((value) => new WebLabel.fromJson(value))
          .toList();
    }
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<WebImage>((value) => new WebImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("pagesWithMatchingImages")) {
      pagesWithMatchingImages = (_json["pagesWithMatchingImages"] as core.List)
          .map<WebPage>((value) => new WebPage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<WebImage>((value) => new WebImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("visuallySimilarImages")) {
      visuallySimilarImages = (_json["visuallySimilarImages"] as core.List)
          .map<WebImage>((value) => new WebImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("webEntities")) {
      webEntities = (_json["webEntities"] as core.List)
          .map<WebEntity>((value) => new WebEntity.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bestGuessLabels != null) {
      _json["bestGuessLabels"] =
          bestGuessLabels.map((value) => (value).toJson()).toList();
    }
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pagesWithMatchingImages != null) {
      _json["pagesWithMatchingImages"] =
          pagesWithMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (visuallySimilarImages != null) {
      _json["visuallySimilarImages"] =
          visuallySimilarImages.map((value) => (value).toJson()).toList();
    }
    if (webEntities != null) {
      _json["webEntities"] =
          webEntities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Parameters for web detection request.
class WebDetectionParams {
  /// Whether to include results derived from the geo information in the image.
  core.bool includeGeoResults;

  WebDetectionParams();

  WebDetectionParams.fromJson(core.Map _json) {
    if (_json.containsKey("includeGeoResults")) {
      includeGeoResults = _json["includeGeoResults"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeGeoResults != null) {
      _json["includeGeoResults"] = includeGeoResults;
    }
    return _json;
  }
}

/// Entity deduced from similar images on the Internet.
class WebEntity {
  /// Canonical description of the entity, in English.
  core.String description;

  /// Opaque entity ID.
  core.String entityId;

  /// Overall relevancy score for the entity.
  /// Not normalized and not comparable across different image queries.
  core.double score;

  WebEntity();

  WebEntity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (score != null) {
      _json["score"] = score;
    }
    return _json;
  }
}

/// Metadata for online images.
class WebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double score;

  /// The result image URL.
  core.String url;

  WebImage();

  WebImage.fromJson(core.Map _json) {
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Label to provide extra metadata for the web detection.
class WebLabel {
  /// Label for extra metadata.
  core.String label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  WebLabel();

  WebLabel.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Metadata for web pages.
class WebPage {
  /// Fully matching images on the page.
  /// Can include resized copies of the query image.
  core.List<WebImage> fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String pageTitle;

  /// Partial matching images on the page.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its
  /// crops.
  core.List<WebImage> partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double score;

  /// The result web page URL.
  core.String url;

  WebPage();

  WebPage.fromJson(core.Map _json) {
    if (_json.containsKey("fullMatchingImages")) {
      fullMatchingImages = (_json["fullMatchingImages"] as core.List)
          .map<WebImage>((value) => new WebImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("pageTitle")) {
      pageTitle = _json["pageTitle"];
    }
    if (_json.containsKey("partialMatchingImages")) {
      partialMatchingImages = (_json["partialMatchingImages"] as core.List)
          .map<WebImage>((value) => new WebImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("score")) {
      score = _json["score"].toDouble();
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fullMatchingImages != null) {
      _json["fullMatchingImages"] =
          fullMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (pageTitle != null) {
      _json["pageTitle"] = pageTitle;
    }
    if (partialMatchingImages != null) {
      _json["partialMatchingImages"] =
          partialMatchingImages.map((value) => (value).toJson()).toList();
    }
    if (score != null) {
      _json["score"] = score;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A word representation.
class Word {
  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  BoundingPoly boundingBox;

  /// Confidence of the OCR results for the word. Range [0, 1].
  core.double confidence;

  /// Additional information detected for the word.
  TextProperty property;

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  core.List<Symbol> symbols;

  Word();

  Word.fromJson(core.Map _json) {
    if (_json.containsKey("boundingBox")) {
      boundingBox = new BoundingPoly.fromJson(_json["boundingBox"]);
    }
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("property")) {
      property = new TextProperty.fromJson(_json["property"]);
    }
    if (_json.containsKey("symbols")) {
      symbols = (_json["symbols"] as core.List)
          .map<Symbol>((value) => new Symbol.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boundingBox != null) {
      _json["boundingBox"] = (boundingBox).toJson();
    }
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (symbols != null) {
      _json["symbols"] = symbols.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
