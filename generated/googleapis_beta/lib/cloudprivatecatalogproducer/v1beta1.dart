// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.cloudprivatecatalogproducer.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT =
    'dart-api-client cloudprivatecatalogproducer/v1beta1';

/// Enables cloud users to manage and share enterprise catalogs intheir
/// organizations.
class CloudprivatecatalogproducerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  CatalogsResourceApi get catalogs => new CatalogsResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);

  CloudprivatecatalogproducerApi(http.Client client,
      {core.String rootUrl =
          "https://cloudprivatecatalogproducer.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CatalogsResourceApi {
  final commons.ApiRequester _requester;

  CatalogsAssociationsResourceApi get associations =>
      new CatalogsAssociationsResourceApi(_requester);
  CatalogsProductsResourceApi get products =>
      new CatalogsProductsResourceApi(_requester);

  CatalogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new Catalog resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
      GoogleCloudPrivatecatalogproducerV1beta1Catalog request,
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

    _url = 'v1beta1/catalogs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Soft deletes an existing Catalog and all resources under it.
  /// The catalog can only be deleted if there is no associations under it or
  /// DeleteCatalogRequest.force is true. The delete operation
  /// can be recovered by the PrivateCatalogProducer.UndeleteCatalog
  /// method.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the catalog.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [force] - Forces deletion of the `Catalog` and its `Association`
  /// resources.
  /// If the `Catalog` is still associated with other resources and
  /// force is not set to true, then the operation fails.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Catalog> delete(
      core.String name,
      {core.bool force,
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
    if (force != null) {
      _queryParams["force"] = ["${force}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(data));
  }

  /// Returns the requested Catalog resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the catalog.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Catalog> get(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(data));
  }

  /// Gets IAM policy for the specified Catalog.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleIamV1Policy.fromJson(data));
  }

  /// Lists Catalog resources that the producer has access to, within the
  /// scope of the parent resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListCatalogs
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of catalogs to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse>
      list(
          {core.String parent,
          core.String pageToken,
          core.int pageSize,
          core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent != null) {
      _queryParams["parent"] = [parent];
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

    _url = 'v1beta1/catalogs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
            .fromJson(data));
  }

  /// Updates a specific Catalog resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the catalog, in the format
  /// `catalogs/{catalog_id}'.
  ///
  /// A unique identifier for the catalog, which is generated
  /// by catalog service.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [updateMask] - Field mask that controls which fields of the catalog should
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Catalog> patch(
      GoogleCloudPrivatecatalogproducerV1beta1Catalog request, core.String name,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(data));
  }

  /// Sets the IAM policy for the specified Catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
      GoogleIamV1SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleIamV1Policy.fromJson(data));
  }

  /// Tests the IAM permissions for the specified Catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
      GoogleIamV1TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleIamV1TestIamPermissionsResponse.fromJson(data));
  }

  /// Undeletes a deleted Catalog and all resources under it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the catalog.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Catalog> undelete(
      GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest request,
      core.String name,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(data));
  }
}

class CatalogsAssociationsResourceApi {
  final commons.ApiRequester _requester;

  CatalogsAssociationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Association instance under a given Catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `Catalog` resource's name.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Association].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Association> create(
      GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest request,
      core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/associations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(data));
  }

  /// Deletes the given Association.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the `Association` to delete.
  /// Value must have pattern "^catalogs/[^/]+/associations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Returns the requested Association resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the `Association` to retrieve.
  /// Value must have pattern "^catalogs/[^/]+/associations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Association].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Association> get(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(data));
  }

  /// Lists all Association resources under a catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the `Catalog` whose `Associations` are
  /// being retrieved. In the format `catalogs/<catalog>`.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from the previous call to
  /// `ListAssociations`.
  ///
  /// [pageSize] - The maximum number of catalog associations to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse>
      list(core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/associations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
            .fromJson(data));
  }
}

class CatalogsProductsResourceApi {
  final commons.ApiRequester _requester;

  CatalogsProductsIconsResourceApi get icons =>
      new CatalogsProductsIconsResourceApi(_requester);
  CatalogsProductsVersionsResourceApi get versions =>
      new CatalogsProductsVersionsResourceApi(_requester);

  CatalogsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Copies a Product under another Catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the current product that is copied from.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> copy(
      GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest request,
      core.String name,
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
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':copy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Creates a Product instance under a given Catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The catalog name of the new product's parent.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Product> create(
      GoogleCloudPrivatecatalogproducerV1beta1Product request,
      core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/products';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(data));
  }

  /// Hard deletes a Product.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the product.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Returns the requested Product resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the product.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Product> get(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(data));
  }

  /// Lists Product resources that the producer has access to, within the
  /// scope of the parent catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource.
  /// Value must have pattern "^catalogs/[^/]+$".
  ///
  /// [filter] - A filter expression used to restrict the returned results based
  /// upon properties of the product.
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListProducts
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of products to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse>
      list(core.String parent,
          {core.String filter,
          core.String pageToken,
          core.int pageSize,
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
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
            .fromJson(data));
  }

  /// Updates a specific Product resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the product in the format
  /// `catalogs/{catalog_id}/products/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the product under a catalog, which cannot
  /// be changed after the product is created. The final
  /// segment of the name must between 1 and 256 characters in length.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [updateMask] - Field mask that controls which fields of the product should
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Product> patch(
      GoogleCloudPrivatecatalogproducerV1beta1Product request, core.String name,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(data));
  }
}

class CatalogsProductsIconsResourceApi {
  final commons.ApiRequester _requester;

  CatalogsProductsIconsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Icon instance under a given Product.
  /// If Product only has a default icon, a new Icon
  /// instance is created and associated with the given Product.
  /// If Product already has a non-default icon, the action creates
  /// a new Icon instance, associates the newly created
  /// Icon with the given Product and deletes the old icon.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - The resource name of the product.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> upload(
      GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest request,
      core.String product,
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
    if (product == null) {
      throw new core.ArgumentError("Parameter product is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$product') +
        '/icons:upload';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }
}

class CatalogsProductsVersionsResourceApi {
  final commons.ApiRequester _requester;

  CatalogsProductsVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Version instance under a given Product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The product name of the new version's parent.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
      GoogleCloudPrivatecatalogproducerV1beta1Version request,
      core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Hard deletes a Version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the version.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+/versions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Returns the requested Version resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the version.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+/versions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Version> get(
      core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(data));
  }

  /// Lists Version resources that the producer has access to, within the
  /// scope of the parent Product.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent resource.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// ListVersions
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of versions to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse>
      list(core.String parent,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
            .fromJson(data));
  }

  /// Updates a specific Version resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the version, in the format
  /// `catalogs/{catalog_id}/products/{product_id}/versions/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the version under a product, which can't
  /// be changed after the version is created. The final segment of the name
  /// must
  /// between 1 and 63 characters in length.
  /// Value must have pattern "^catalogs/[^/]+/products/[^/]+/versions/[^/]+$".
  ///
  /// [updateMask] - Field mask that controls which fields of the version should
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogproducerV1beta1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogproducerV1beta1Version> patch(
      GoogleCloudPrivatecatalogproducerV1beta1Version request, core.String name,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(data));
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
  /// Value must have pattern "^operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
      GoogleLongrunningCancelOperationRequest request, core.String name,
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
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(core.String name,
      {core.String $fields}) {
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
      {core.String name,
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

    if (name != null) {
      _queryParams["name"] = [name];
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

    _url = 'v1beta1/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

/// An association tuple that pairs a `Catalog` to a resource
/// that can use the `Catalog`. After association, a
/// google.cloud.privatecatalog.v1beta1.Catalog becomes available to
/// consumers under specified Association.resource and all of its child
/// nodes.
/// Users who have the `cloudprivatecatalog.targets.get` permission on any of
/// the resource nodes can access the catalog and child products under the node.
///
/// For example, suppose the cloud resource hierarchy is as follows:
///
/// * organizations/example.com
///   * folders/team
///     * projects/test
///
/// After creating an association with `organizations/example.com`, the catalog
/// `catalogs/1`  is accessible from the following paths:
///
/// * organizations/example.com
/// * folders/team
/// * projects/test
///
/// Users can access them by
/// google.cloud.v1beta1.PrivateCatalog.SearchCatalogs action.
class GoogleCloudPrivatecatalogproducerV1beta1Association {
  /// The creation time of the association.
  core.String createTime;

  /// Output only. The resource name of the catalog association, in the format
  /// `catalogs/{catalog_id}/associations/{association_id}'.
  ///
  /// A unique identifier for the catalog association, which is
  /// generated by catalog service.
  core.String name;

  /// Required. The user-supplied fully qualified name of the `Resource`
  /// associated to the `Catalog`. It supports `Organization`, `Folder`,
  /// and `Project`. Values are of the form
  ///
  /// * `//cloudresourcemanager.googleapis.com/projects/{product_number}`
  /// * `//cloudresourcemanager.googleapis.com/folders/{folder_id}`
  /// * `//cloudresourcemanager.googleapis.com/organizations/{organization_id}`
  core.String resource;

  GoogleCloudPrivatecatalogproducerV1beta1Association();

  GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    return _json;
  }
}

/// The producer representation of a catalog which is a curated collection of
/// solutions that can be managed, controlled, and shared by cloud admins.
class GoogleCloudPrivatecatalogproducerV1beta1Catalog {
  /// Output only. The time when the catalog was created.
  core.String createTime;

  /// Required. The user-supplied description of the catalog. Maximum of 512
  /// characters.
  core.String description;

  /// Required. The user-supplied descriptive name of the catalog as it appears
  /// in UIs. Maximum 256 characters in length.
  core.String displayName;

  /// Output only. The resource name of the catalog, in the format
  /// `catalogs/{catalog_id}'.
  ///
  /// A unique identifier for the catalog, which is generated
  /// by catalog service.
  core.String name;

  /// Required. The parent resource name of the catalog, which can't be changed
  /// after a catalog is created. It can only be an organization. Values are of
  /// the form `//cloudresourcemanager.googleapis.com/organizations/<id>`.
  /// Maximum 256 characters in length.
  core.String parent;

  /// Output only. The time when the catalog was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogproducerV1beta1Catalog();

  GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
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
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest {
  /// The resource name of the destination product that is copied to.
  core.String destinationProductName;

  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest();

  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("destinationProductName")) {
      destinationProductName = _json["destinationProductName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationProductName != null) {
      _json["destinationProductName"] = destinationProductName;
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest {
  /// The user-supplied `Association` that is going to be created.
  ///
  /// If the `resource` field is set, the
  /// `privatecatalogproducer.catalogTargets.associate` permission is checked on
  /// the target resource.
  GoogleCloudPrivatecatalogproducerV1beta1Association association;

  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest();

  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("association")) {
      association =
          new GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(
              _json["association"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (association != null) {
      _json["association"] = (association).toJson();
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse {
  /// The returned `Association` resources from the list call.
  core.List<GoogleCloudPrivatecatalogproducerV1beta1Association> associations;

  /// A pagination token returned from a previous call to
  /// `ListAssociations` that indicates where the listing should continue from.
  /// This field is optional.
  core.String nextPageToken;

  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse();

  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("associations")) {
      associations = (_json["associations"] as core.List)
          .map<GoogleCloudPrivatecatalogproducerV1beta1Association>((value) =>
              new GoogleCloudPrivatecatalogproducerV1beta1Association.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (associations != null) {
      _json["associations"] =
          associations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse {
  /// The `Catalogs` returned from the list call.
  core.List<GoogleCloudPrivatecatalogproducerV1beta1Catalog> catalogs;

  /// A pagination token returned from a previous call to ListCatalogs
  /// that indicates where the listing should continue from.
  /// This field is optional.
  core.String nextPageToken;

  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse();

  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("catalogs")) {
      catalogs = (_json["catalogs"] as core.List)
          .map<GoogleCloudPrivatecatalogproducerV1beta1Catalog>((value) =>
              new GoogleCloudPrivatecatalogproducerV1beta1Catalog.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (catalogs != null) {
      _json["catalogs"] = catalogs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse {
  /// A pagination token returned from a previous call to ListProducts
  /// that indicates where the listing should continue from.
  /// This field is optional.
  core.String nextPageToken;

  /// The `Product` returned from the list call.
  core.List<GoogleCloudPrivatecatalogproducerV1beta1Product> products;

  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse();

  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<GoogleCloudPrivatecatalogproducerV1beta1Product>((value) =>
              new GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(
                  value))
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

class GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse {
  /// A pagination token returned from a previous call to ListProducts
  /// that indicates where the listing should continue from.
  /// This field is optional.
  core.String nextPageToken;

  /// The `VersiVersionon` returned from the list call.
  core.List<GoogleCloudPrivatecatalogproducerV1beta1Version> versions;

  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse();

  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("versions")) {
      versions = (_json["versions"] as core.List)
          .map<GoogleCloudPrivatecatalogproducerV1beta1Version>((value) =>
              new GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (versions != null) {
      _json["versions"] = versions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The producer representation of a product which is a child resource of
/// `Catalog` with display metadata and a list of `Version` resources.
class GoogleCloudPrivatecatalogproducerV1beta1Product {
  /// Required. The type of the product asset, which cannot be changed after the
  /// product is created. It supports the values
  /// `google.deploymentmanager.Template` and
  /// `google.cloudprivatecatalog.ListingOnly`. Other values will be
  /// rejected by the server. Read only after creation.
  ///
  /// The following fields or resource types have different validation rules
  /// under each `asset_type` values:
  ///
  /// * Product.display_metadata has different validation schema for each
  /// asset type value. See its comment for details.
  /// * Version resource isn't allowed to be added under the
  /// `google.cloudprivatecatalog.ListingOnly` type.
  core.String assetType;

  /// Output only. The time when the product was created.
  core.String createTime;

  /// The user-supplied display metadata to describe the product.
  /// The JSON schema of the metadata differs by Product.asset_type.
  /// When the type is `google.deploymentmanager.Template`, the schema is as
  /// follows:
  ///
  /// ```
  /// "$schema": http://json-schema.org/draft-04/schema#
  /// type: object
  /// properties:
  ///   name:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 64
  ///   description:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 2048
  ///   tagline:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 100
  ///   support_info:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 2048
  ///   creator:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 100
  ///   documentation:
  ///     type: array
  ///     items:
  ///       type: object
  ///       properties:
  ///         url:
  ///           type: string
  ///           pattern:
  /// "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
  ///         title:
  ///           type: string
  ///           minLength: 1
  ///           maxLength: 64
  ///         description:
  ///           type: string
  ///           minLength: 1
  ///           maxLength: 2048
  /// required:
  /// - name
  /// - description
  /// additionalProperties: false
  ///
  /// ```
  ///
  /// When the asset type is `google.cloudprivatecatalog.ListingOnly`, the
  /// schema
  /// is as follows:
  ///
  /// ```
  /// "$schema": http://json-schema.org/draft-04/schema#
  /// type: object
  /// properties:
  ///   name:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 64
  ///   description:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 2048
  ///   tagline:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 100
  ///   support_info:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 2048
  ///   creator:
  ///     type: string
  ///     minLength: 1
  ///     maxLength: 100
  ///   documentation:
  ///     type: array
  ///     items:
  ///       type: object
  ///       properties:
  ///         url:
  ///           type: string
  ///           pattern:
  /// "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
  ///         title:
  ///           type: string
  ///           minLength: 1
  ///           maxLength: 64
  ///         description:
  ///           type: string
  ///           minLength: 1
  ///           maxLength: 2048
  ///   signup_url:
  ///     type: string
  ///     pattern:
  ///     "^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
  /// required:
  /// - name
  /// - description
  /// - signup_url
  /// additionalProperties: false
  /// ```
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> displayMetadata;

  /// Output only. The public accessible URI of the icon uploaded by
  /// PrivateCatalogProducer.UploadIcon.
  ///
  /// If no icon is uploaded, it will be the default icon's URI.
  core.String iconUri;

  /// Required. The resource name of the product in the format
  /// `catalogs/{catalog_id}/products/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the product under a catalog, which cannot
  /// be changed after the product is created. The final
  /// segment of the name must between 1 and 256 characters in length.
  core.String name;

  /// Output only. The time when the product was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogproducerV1beta1Product();

  GoogleCloudPrivatecatalogproducerV1beta1Product.fromJson(core.Map _json) {
    if (_json.containsKey("assetType")) {
      assetType = _json["assetType"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("displayMetadata")) {
      displayMetadata = (_json["displayMetadata"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("iconUri")) {
      iconUri = _json["iconUri"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assetType != null) {
      _json["assetType"] = assetType;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (displayMetadata != null) {
      _json["displayMetadata"] = displayMetadata;
    }
    if (iconUri != null) {
      _json["iconUri"] = iconUri;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest {
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest();

  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest.fromJson(
      core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

class GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest {
  /// The raw icon bytes user-supplied to be uploaded to the product. The format
  /// of the icon can only be PNG or JPEG. The minimum allowed dimensions are
  /// 130x130 pixels and the maximum dimensions are 10000x10000 pixels.
  /// Required.
  core.String icon;
  core.List<core.int> get iconAsBytes {
    return convert.base64.decode(icon);
  }

  set iconAsBytes(core.List<core.int> _bytes) {
    icon =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest();

  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (icon != null) {
      _json["icon"] = icon;
    }
    return _json;
  }
}

/// The producer representation of a version, which is a child resource under a
/// `Product` with asset data.
class GoogleCloudPrivatecatalogproducerV1beta1Version {
  /// Output only. The asset which has been validated and is ready to be
  /// provisioned. See Version.original_asset for the schema.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> asset;

  /// Output only. The time when the version was created.
  core.String createTime;

  /// The user-supplied description of the version. Maximum of 256 characters.
  core.String description;

  /// Required. The resource name of the version, in the format
  /// `catalogs/{catalog_id}/products/{product_id}/versions/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the version under a product, which can't
  /// be changed after the version is created. The final segment of the name
  /// must
  /// between 1 and 63 characters in length.
  core.String name;

  /// The user-supplied asset payload. The maximum size of the payload is 2MB.
  /// The JSON schema of the payload is defined as:
  ///
  /// ```
  /// type: object
  /// properties:
  ///   mainTemplate:
  ///     type: string
  ///     description: The file name of the main template and name prefix of
  ///     schema file. The content of the main template should be set in the
  ///     imports list. The schema file name is expected to be
  ///     <mainTemplate>.schema in the imports list. required: true
  ///   imports:
  ///     type: array
  /// description: Import template and schema file contents. Required to have
  ///     both <mainTemplate> and <mainTemplate>.schema files. required: true
  ///     minItems: 2
  ///     items:
  ///       type: object
  ///       properties:
  ///         name:
  ///           type: string
  ///         content:
  ///           type: string
  /// ```
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> originalAsset;

  /// Output only. The time when the version was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogproducerV1beta1Version();

  GoogleCloudPrivatecatalogproducerV1beta1Version.fromJson(core.Map _json) {
    if (_json.containsKey("asset")) {
      asset = (_json["asset"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("originalAsset")) {
      originalAsset =
          (_json["originalAsset"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (asset != null) {
      _json["asset"] = asset;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (originalAsset != null) {
      _json["originalAsset"] = originalAsset;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  GoogleIamV1AuditConfig();

  GoogleIamV1AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<GoogleIamV1AuditLogConfig>(
              (value) => new GoogleIamV1AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class GoogleIamV1AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  GoogleIamV1AuditLogConfig();

  GoogleIamV1AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  GoogleTypeExpr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  GoogleIamV1Binding();

  GoogleIamV1Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new GoogleTypeExpr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<GoogleIamV1Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  GoogleIamV1Policy();

  GoogleIamV1Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<GoogleIamV1AuditConfig>(
              (value) => new GoogleIamV1AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<GoogleIamV1Binding>(
              (value) => new GoogleIamV1Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
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

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  GoogleIamV1Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  GoogleIamV1SetIamPolicyRequest();

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new GoogleIamV1Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  GoogleIamV1TestIamPermissionsRequest();

  GoogleIamV1TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class GoogleIamV1TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  GoogleIamV1TestIamPermissionsResponse();

  GoogleIamV1TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class GoogleLongrunningCancelOperationRequest {
  GoogleLongrunningCancelOperationRequest();

  GoogleLongrunningCancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation> operations;

  GoogleLongrunningListOperationsResponse();

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => new GoogleLongrunningOperation.fromJson(value))
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

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

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
class GoogleRpcStatus {
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

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
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

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class GoogleTypeExpr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  GoogleTypeExpr();

  GoogleTypeExpr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}
