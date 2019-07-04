// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.cloudprivatecatalog.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudprivatecatalog/v1beta1';

/// Enable cloud users to discover enterprise catalogs and products in their
/// organizations.
class CloudprivatecatalogApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  FoldersResourceApi get folders => new FoldersResourceApi(_requester);
  OrganizationsResourceApi get organizations =>
      new OrganizationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudprivatecatalogApi(http.Client client,
      {core.String rootUrl = "https://cloudprivatecatalog.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class FoldersResourceApi {
  final commons.ApiRequester _requester;

  FoldersCatalogsResourceApi get catalogs =>
      new FoldersCatalogsResourceApi(_requester);
  FoldersProductsResourceApi get products =>
      new FoldersProductsResourceApi(_requester);
  FoldersVersionsResourceApi get versions =>
      new FoldersVersionsResourceApi(_requester);

  FoldersResourceApi(commons.ApiRequester client) : _requester = client;
}

class FoldersCatalogsResourceApi {
  final commons.ApiRequester _requester;

  FoldersCatalogsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Search Catalog resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. It can be in
  /// following formats:
  ///
  /// * `projects/{project_id}`
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchCatalogs that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the catalogs. The supported queries are:
  ///
  /// * Get a single catalog: `name=catalogs/{catalog_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/catalogs:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.fromJson(
            data));
  }
}

class FoldersProductsResourceApi {
  final commons.ApiRequester _requester;

  FoldersProductsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Search Product resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchProducts that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the products.
  ///
  /// The supported queries are:
  /// * List products of all catalogs: empty
  /// * List products under a catalog: `parent=catalogs/{catalog_id}`
  /// * Get a product by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchProductsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/products:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchProductsResponse.fromJson(
            data));
  }
}

class FoldersVersionsResourceApi {
  final commons.ApiRequester _requester;

  FoldersVersionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Search Version resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^folders/[^/]+$".
  ///
  /// [query] - The query to filter the versions. Required.
  ///
  /// The supported queries are:
  /// * List versions under a product:
  /// `parent=catalogs/{catalog_id}/products/{product_id}`
  /// * Get a version by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}/versions/{version_id}`
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchVersions
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse> search(
      core.String resource,
      {core.String query,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (query != null) {
      _queryParams["query"] = [query];
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
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/versions:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.fromJson(
            data));
  }
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsCatalogsResourceApi get catalogs =>
      new OrganizationsCatalogsResourceApi(_requester);
  OrganizationsProductsResourceApi get products =>
      new OrganizationsProductsResourceApi(_requester);
  OrganizationsVersionsResourceApi get versions =>
      new OrganizationsVersionsResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;
}

class OrganizationsCatalogsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsCatalogsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Catalog resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. It can be in
  /// following formats:
  ///
  /// * `projects/{project_id}`
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchCatalogs that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the catalogs. The supported queries are:
  ///
  /// * Get a single catalog: `name=catalogs/{catalog_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/catalogs:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.fromJson(
            data));
  }
}

class OrganizationsProductsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Product resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [query] - The query to filter the products.
  ///
  /// The supported queries are:
  /// * List products of all catalogs: empty
  /// * List products under a catalog: `parent=catalogs/{catalog_id}`
  /// * Get a product by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}`
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchProducts that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchProductsResponse> search(
      core.String resource,
      {core.String query,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (query != null) {
      _queryParams["query"] = [query];
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
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/products:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchProductsResponse.fromJson(
            data));
  }
}

class OrganizationsVersionsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Version resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchVersions
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the versions. Required.
  ///
  /// The supported queries are:
  /// * List versions under a product:
  /// `parent=catalogs/{catalog_id}/products/{product_id}`
  /// * Get a version by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}/versions/{version_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/versions:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.fromJson(
            data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsCatalogsResourceApi get catalogs =>
      new ProjectsCatalogsResourceApi(_requester);
  ProjectsProductsResourceApi get products =>
      new ProjectsProductsResourceApi(_requester);
  ProjectsVersionsResourceApi get versions =>
      new ProjectsVersionsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsCatalogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsCatalogsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Catalog resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. It can be in
  /// following formats:
  ///
  /// * `projects/{project_id}`
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchCatalogs that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the catalogs. The supported queries are:
  ///
  /// * Get a single catalog: `name=catalogs/{catalog_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/catalogs:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.fromJson(
            data));
  }
}

class ProjectsProductsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsProductsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Product resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the products.
  ///
  /// The supported queries are:
  /// * List products of all catalogs: empty
  /// * List products under a catalog: `parent=catalogs/{catalog_id}`
  /// * Get a product by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}`
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchProducts that
  /// indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchProductsResponse> search(
      core.String resource,
      {core.int pageSize,
      core.String query,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/products:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchProductsResponse.fromJson(
            data));
  }
}

class ProjectsVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Search Version resources that consumers have access to, within the
  /// scope of the consumer cloud resource hierarchy context.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. The name of the resource context. See
  /// SearchCatalogsRequest.resource for details.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - A pagination token returned from a previous call to
  /// SearchVersions
  /// that indicates where this listing should continue from.
  /// This field is optional.
  ///
  /// [pageSize] - The maximum number of entries that are requested.
  ///
  /// [query] - The query to filter the versions. Required.
  ///
  /// The supported queries are:
  /// * List versions under a product:
  /// `parent=catalogs/{catalog_id}/products/{product_id}`
  /// * Get a version by name:
  /// `name=catalogs/{catalog_id}/products/{product_id}/versions/{version_id}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse> search(
      core.String resource,
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        '/versions:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.fromJson(
            data));
  }
}

/// The readonly representation of a catalog computed with a given resource
/// context.
class GoogleCloudPrivatecatalogV1beta1Catalog {
  /// Output only. The time when the catalog was created.
  core.String createTime;

  /// Output only. The description of the catalog.
  core.String description;

  /// Output only. The descriptive name of the catalog as it appears in UIs.
  core.String displayName;

  /// Output only. The resource name of the target catalog, in the format of
  /// `catalogs/{catalog_id}'.
  core.String name;

  /// Output only. The time when the catalog was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogV1beta1Catalog();

  GoogleCloudPrivatecatalogV1beta1Catalog.fromJson(core.Map _json) {
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
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The readonly representation of a product computed with a given resource
/// context.
class GoogleCloudPrivatecatalogV1beta1Product {
  /// Output only. The type of the product asset. It can be one of the
  /// following values:
  ///
  /// * `google.deploymentmanager.Template`
  /// * `google.cloudprivatecatalog.ListingOnly`
  core.String assetType;

  /// Output only. The time when the product was created.
  core.String createTime;

  /// Output only. The display metadata to describe the product.
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

  /// Output only. The icon URI of the product.
  core.String iconUri;

  /// Output only. The resource name of the target product, in the format of
  /// `products/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the product under a catalog.
  core.String name;

  /// Output only. The time when the product was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogV1beta1Product();

  GoogleCloudPrivatecatalogV1beta1Product.fromJson(core.Map _json) {
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

/// Response message for PrivateCatalog.SearchCatalogs.
class GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse {
  /// The `Catalog`s computed from the resource context.
  core.List<GoogleCloudPrivatecatalogV1beta1Catalog> catalogs;

  /// A pagination token returned from a previous call to SearchCatalogs that
  /// indicates from where listing should continue.
  /// This field is optional.
  core.String nextPageToken;

  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse();

  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("catalogs")) {
      catalogs = (_json["catalogs"] as core.List)
          .map<GoogleCloudPrivatecatalogV1beta1Catalog>((value) =>
              new GoogleCloudPrivatecatalogV1beta1Catalog.fromJson(value))
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

/// Response message for PrivateCatalog.SearchProducts.
class GoogleCloudPrivatecatalogV1beta1SearchProductsResponse {
  /// A pagination token returned from a previous call to SearchProducts that
  /// indicates from where listing should continue.
  /// This field is optional.
  core.String nextPageToken;

  /// The `Product` resources computed from the resource context.
  core.List<GoogleCloudPrivatecatalogV1beta1Product> products;

  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse();

  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("products")) {
      products = (_json["products"] as core.List)
          .map<GoogleCloudPrivatecatalogV1beta1Product>((value) =>
              new GoogleCloudPrivatecatalogV1beta1Product.fromJson(value))
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

/// Response message for PrivateCatalog.SearchVersions.
class GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse {
  /// A pagination token returned from a previous call to SearchVersions that
  /// indicates from where the listing should continue.
  /// This field is optional.
  core.String nextPageToken;

  /// The `Version` resources computed from the resource context.
  core.List<GoogleCloudPrivatecatalogV1beta1Version> versions;

  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse();

  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("versions")) {
      versions = (_json["versions"] as core.List)
          .map<GoogleCloudPrivatecatalogV1beta1Version>((value) =>
              new GoogleCloudPrivatecatalogV1beta1Version.fromJson(value))
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

/// The consumer representation of a version which is a child resource under a
/// `Product` with asset data.
class GoogleCloudPrivatecatalogV1beta1Version {
  /// Output only. The asset which has been validated and is ready to be
  /// provisioned. See
  /// google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> asset;

  /// Output only. The time when the version was created.
  core.String createTime;

  /// Output only. The user-supplied description of the version. Maximum of 256
  /// characters.
  core.String description;

  /// Output only. The resource name of the version, in the format
  /// `catalogs/{catalog_id}/products/{product_id}/versions/a-z*[a-z0-9]'.
  ///
  /// A unique identifier for the version under a product.
  core.String name;

  /// Output only. The time when the version was last updated.
  core.String updateTime;

  GoogleCloudPrivatecatalogV1beta1Version();

  GoogleCloudPrivatecatalogV1beta1Version.fromJson(core.Map _json) {
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
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}
