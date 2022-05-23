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

/// Retail API - v2
///
/// Cloud Retail service enables customers to build end-to-end personalized
/// recommendation systems without requiring a high level of expertise in
/// machine learning, recommendation system, or Google Cloud.
///
/// For more information, see <https://cloud.google.com/recommendations>
///
/// Create an instance of [CloudRetailApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCatalogsResource]
///       - [ProjectsLocationsCatalogsBranchesResource]
///         - [ProjectsLocationsCatalogsBranchesOperationsResource]
///         - [ProjectsLocationsCatalogsBranchesProductsResource]
///       - [ProjectsLocationsCatalogsCompletionDataResource]
///       - [ProjectsLocationsCatalogsOperationsResource]
///       - [ProjectsLocationsCatalogsPlacementsResource]
///       - [ProjectsLocationsCatalogsUserEventsResource]
///     - [ProjectsLocationsOperationsResource]
///   - [ProjectsOperationsResource]
library retail.v2;

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

/// Cloud Retail service enables customers to build end-to-end personalized
/// recommendation systems without requiring a high level of expertise in
/// machine learning, recommendation system, or Google Cloud.
class CloudRetailApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRetailApi(http.Client client,
      {core.String rootUrl = 'https://retail.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsResource get catalogs =>
      ProjectsLocationsCatalogsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesResource get branches =>
      ProjectsLocationsCatalogsBranchesResource(_requester);
  ProjectsLocationsCatalogsCompletionDataResource get completionData =>
      ProjectsLocationsCatalogsCompletionDataResource(_requester);
  ProjectsLocationsCatalogsOperationsResource get operations =>
      ProjectsLocationsCatalogsOperationsResource(_requester);
  ProjectsLocationsCatalogsPlacementsResource get placements =>
      ProjectsLocationsCatalogsPlacementsResource(_requester);
  ProjectsLocationsCatalogsUserEventsResource get userEvents =>
      ProjectsLocationsCatalogsUserEventsResource(_requester);

  ProjectsLocationsCatalogsResource(commons.ApiRequester client)
      : _requester = client;

  /// Completes the specified prefix with keyword suggestions.
  ///
  /// This feature is only available for users who have Retail Search enabled.
  /// Please enable Retail Search on Cloud Console before using this feature.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Required. Catalog for which the completion is performed. Full
  /// resource name of catalog, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [dataset] - Determines which dataset to use for fetching completion.
  /// "user-data" will use the imported dataset through
  /// CompletionService.ImportCompletionData. "cloud-retail" will use the
  /// dataset generated by cloud retail based on user events. If leave empty, it
  /// will use the "user-data". Current supported values: * user-data *
  /// cloud-retail: This option requires enabling auto-learning function first.
  /// See
  /// [guidelines](https://cloud.google.com/retail/docs/completion-overview#generated-completion-dataset).
  ///
  /// [deviceType] - The device type context for completion suggestions. It is
  /// useful to apply different suggestions on different device types, e.g.
  /// `DESKTOP`, `MOBILE`. If it is empty, the suggestions are across all device
  /// types. Supported formats: * `UNKNOWN_DEVICE_TYPE` * `DESKTOP` * `MOBILE` *
  /// A customized string starts with `OTHER_`, e.g. `OTHER_IPHONE`.
  ///
  /// [languageCodes] - The language filters applied to the output suggestions.
  /// If set, it should contain the language of the query. If not set,
  /// suggestions are returned without considering language restrictions. This
  /// is the BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). The
  /// maximum number of language codes is 3.
  ///
  /// [maxSuggestions] - Completion max suggestions. If left unset or set to 0,
  /// then will fallback to the configured value
  /// CompletionConfig.max_suggestions. The maximum allowed max suggestions is
  /// 20. If it is set higher, it will be capped by 20.
  ///
  /// [query] - Required. The query used to generate suggestions. The maximum
  /// number of allowed characters is 255.
  ///
  /// [visitorId] - Required field. A unique identifier for tracking visitors.
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// The field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2CompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2CompleteQueryResponse> completeQuery(
    core.String catalog, {
    core.String? dataset,
    core.String? deviceType,
    core.List<core.String>? languageCodes,
    core.int? maxSuggestions,
    core.String? query,
    core.String? visitorId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (dataset != null) 'dataset': [dataset],
      if (deviceType != null) 'deviceType': [deviceType],
      if (languageCodes != null) 'languageCodes': languageCodes,
      if (maxSuggestions != null) 'maxSuggestions': ['${maxSuggestions}'],
      if (query != null) 'query': [query],
      if (visitorId != null) 'visitorId': [visitorId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$catalog') + ':completeQuery';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2CompleteQueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get which branch is currently default branch set by
  /// CatalogService.SetDefaultBranch method under a specified parent catalog.
  ///
  /// Request parameters:
  ///
  /// [catalog] - The parent catalog resource name, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2GetDefaultBranchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2GetDefaultBranchResponse> getDefaultBranch(
    core.String catalog, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$catalog') + ':getDefaultBranch';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2GetDefaultBranchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the Catalogs associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account resource name with an associated
  /// location. If the caller does not have permission to list Catalogs under
  /// this location, regardless of whether or not this location exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Catalogs to return. If unspecified,
  /// defaults to 50. The maximum allowed value is 1000. Values above 1000 will
  /// be coerced to 1000. If this field is negative, an INVALID_ARGUMENT is
  /// returned.
  ///
  /// [pageToken] - A page token ListCatalogsResponse.next_page_token, received
  /// from a previous CatalogService.ListCatalogs call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// CatalogService.ListCatalogs must match the call that provided the page
  /// token. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2ListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2ListCatalogsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2ListCatalogsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Catalogs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. The fully qualified resource name of the
  /// catalog.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Indicates which fields in the provided Catalog to update.
  /// If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2Catalog> patch(
    GoogleCloudRetailV2Catalog request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2Catalog.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Set a specified branch id as default branch.
  ///
  /// API methods such as SearchService.Search, ProductService.GetProduct,
  /// ProductService.ListProducts will treat requests using "default_branch" to
  /// the actual branch id set as default. For example, if `projects / *
  /// /locations / * /catalogs / * /branches/1` is set as default, setting
  /// SearchRequest.branch to `projects / * /locations / * /catalogs / *
  /// /branches/default_branch` is equivalent to setting SearchRequest.branch to
  /// `projects / * /locations / * /catalogs / * /branches/1`. Using multiple
  /// branches can be useful when developers would like to have a staging branch
  /// to test and verify for future usage. When it becomes ready, developers
  /// switch on the staging branch using this API while keeping using `projects
  /// / * /locations / * /catalogs / * /branches/default_branch` as
  /// SearchRequest.branch to route the traffic to this staging branch. CAUTION:
  /// If you have live predict/search traffic, switching the default branch
  /// could potentially cause outages if the ID space of the new branch is very
  /// different from the old one. More specifically: * PredictionService will
  /// only return product IDs from branch {newBranch}. * SearchService will only
  /// return product IDs from branch {newBranch} (if branch is not explicitly
  /// set). * UserEventService will only join events with products from branch
  /// {newBranch}.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [catalog] - Full resource name of the catalog, such as `projects / *
  /// /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> setDefaultBranch(
    GoogleCloudRetailV2SetDefaultBranchRequest request,
    core.String catalog, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$catalog') + ':setDefaultBranch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsBranchesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesOperationsResource get operations =>
      ProjectsLocationsCatalogsBranchesOperationsResource(_requester);
  ProjectsLocationsCatalogsBranchesProductsResource get products =>
      ProjectsLocationsCatalogsBranchesProductsResource(_requester);

  ProjectsLocationsCatalogsBranchesResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsCatalogsBranchesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsBranchesProductsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsBranchesProductsResource(commons.ApiRequester client)
      : _requester = client;

  /// Incrementally adds place IDs to Product.fulfillment_info.place_ids.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating fulfillment information. If the request is valid, the
  /// update will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, the added place IDs are not immediately manifested
  /// in the Product queried by GetProduct or ListProducts. This feature is only
  /// available for users who have Retail Search enabled. Please enable Retail
  /// Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> addFulfillmentPlaces(
    GoogleCloudRetailV2AddFulfillmentPlacesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$product') + ':addFulfillmentPlaces';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates local inventory information for a Product at a list of places,
  /// while respecting the last update timestamps of each inventory field.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating inventory information. If the request is valid, the update
  /// will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, updates are not immediately manifested in the
  /// Product queried by GetProduct or ListProducts. Local inventory information
  /// can only be modified using this method. CreateProduct and UpdateProduct
  /// has no effect on local inventories. This feature is only available for
  /// users who have Retail Search enabled. Please enable Retail Search on Cloud
  /// Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> addLocalInventories(
    GoogleCloudRetailV2AddLocalInventoriesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$product') + ':addLocalInventories';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog/branches/default_branch`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [productId] - Required. The ID to use for the Product, which will become
  /// the final component of the Product.name. If the caller does not have
  /// permission to create the Product, regardless of whether or not it exists,
  /// a PERMISSION_DENIED error is returned. This field must be unique among all
  /// Products with the same parent. Otherwise, an ALREADY_EXISTS error is
  /// returned. This field must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2Product> create(
    GoogleCloudRetailV2Product request,
    core.String parent, {
    core.String? productId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (productId != null) 'productId': [productId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/products';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2Product.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Product.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to delete the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// Product to delete does not exist, a NOT_FOUND error is returned. The
  /// Product to delete can neither be a Product.Type.COLLECTION Product member
  /// nor a Product.Type.PRIMARY Product with more than one variants. Otherwise,
  /// an INVALID_ARGUMENT error is returned. All inventory information for the
  /// named Product will be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a Product.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned. If the
  /// requested Product does not exist, a NOT_FOUND error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2Product> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2Product.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Bulk import of multiple Products.
  ///
  /// Request processing may be synchronous. Non-existing items are created.
  /// Note that it is possible for a subset of the Products to be successfully
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// `projects/1234/locations/global/catalogs/default_catalog/branches/default_branch`
  /// If no updateMask is specified, requires products.create permission. If
  /// updateMask is specified, requires products.update permission.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2ImportProductsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/products:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of Products.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent branch resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog/branches/0`. Use
  /// `default_branch` as the branch ID, to list products under the default
  /// branch. If the caller does not have permission to list Products under this
  /// branch, regardless of whether or not this branch exists, a
  /// PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+$`.
  ///
  /// [filter] - A filter to apply on the list results. Supported features: *
  /// List all the products under the parent branch if filter is unset. * List
  /// Product.Type.VARIANT Products sharing the same Product.Type.PRIMARY
  /// Product. For example: `primary_product_id = "some_product_id"` * List
  /// Products bundled in a Product.Type.COLLECTION Product. For example:
  /// `collection_product_id = "some_product_id"` * List Products with a
  /// partibular type. For example: `type = "PRIMARY"` `type = "VARIANT"` `type
  /// = "COLLECTION"` If the field is unrecognizable, an INVALID_ARGUMENT error
  /// is returned. If the specified Product.Type.PRIMARY Product or
  /// Product.Type.COLLECTION Product does not exist, a NOT_FOUND error is
  /// returned.
  ///
  /// [pageSize] - Maximum number of Products to return. If unspecified,
  /// defaults to 100. The maximum allowed value is 1000. Values above 1000 will
  /// be coerced to 1000. If this field is negative, an INVALID_ARGUMENT error
  /// is returned.
  ///
  /// [pageToken] - A page token ListProductsResponse.next_page_token, received
  /// from a previous ProductService.ListProducts call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// ProductService.ListProducts must match the call that provided the page
  /// token. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// [readMask] - The fields of Product to return in the responses. If not set
  /// or empty, the following fields are returned: * Product.name * Product.id *
  /// Product.title * Product.uri * Product.images * Product.price_info *
  /// Product.brands If "*" is provided, all fields are returned. Product.name
  /// is always returned no matter what mask is set. If an unsupported or
  /// unknown field is provided, an INVALID_ARGUMENT error is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2ListProductsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2ListProductsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Full resource name of the product, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
  ///
  /// [allowMissing] - If set to true, and the Product is not found, a new
  /// Product will be created. In this situation, `update_mask` is ignored.
  ///
  /// [updateMask] - Indicates which fields in the provided Product to update.
  /// The immutable and output only fields are NOT supported. If not set, all
  /// supported fields (the fields that are neither immutable nor output only)
  /// are updated. If an unsupported or unknown field is provided, an
  /// INVALID_ARGUMENT error is returned. The attribute key can be updated by
  /// setting the mask path as "attributes.${key_name}". If a key name is
  /// present in the mask but not in the patching product from the request, this
  /// key will be deleted after the update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2Product> patch(
    GoogleCloudRetailV2Product request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2Product.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Incrementally removes place IDs from a Product.fulfillment_info.place_ids.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating fulfillment information. If the request is valid, the
  /// update will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, the removed place IDs are not immediately manifested
  /// in the Product queried by GetProduct or ListProducts. This feature is only
  /// available for users who have Retail Search enabled. Please enable Retail
  /// Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> removeFulfillmentPlaces(
    GoogleCloudRetailV2RemoveFulfillmentPlacesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$product') + ':removeFulfillmentPlaces';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Remove local inventory information for a Product at a list of places at a
  /// removal timestamp.
  ///
  /// This process is asynchronous. If the request is valid, the removal will be
  /// enqueued and processed downstream. As a consequence, when a response is
  /// returned, removals are not immediately manifested in the Product queried
  /// by GetProduct or ListProducts. Local inventory information can only be
  /// removed using this method. CreateProduct and UpdateProduct has no effect
  /// on local inventories. This feature is only available for users who have
  /// Retail Search enabled. Please enable Retail Search on Cloud Console before
  /// using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [product] - Required. Full resource name of Product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/some_product_id`.
  /// If the caller does not have permission to access the Product, regardless
  /// of whether or not it exists, a PERMISSION_DENIED error is returned.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> removeLocalInventories(
    GoogleCloudRetailV2RemoveLocalInventoriesRequest request,
    core.String product, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$product') + ':removeLocalInventories';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates inventory information for a Product while respecting the last
  /// update timestamps of each inventory field.
  ///
  /// This process is asynchronous and does not require the Product to exist
  /// before updating fulfillment information. If the request is valid, the
  /// update will be enqueued and processed downstream. As a consequence, when a
  /// response is returned, updates are not immediately manifested in the
  /// Product queried by GetProduct or ListProducts. When inventory is updated
  /// with CreateProduct and UpdateProduct, the specified inventory field
  /// value(s) will overwrite any existing value(s) while ignoring the last
  /// update time for this field. Furthermore, the last update time for the
  /// specified inventory fields will be overwritten to the time of the
  /// CreateProduct or UpdateProduct request. If no inventory fields are set in
  /// CreateProductRequest.product, then any pre-existing inventory information
  /// for this product will be used. If no inventory fields are set in
  /// SetInventoryRequest.set_mask, then any existing inventory information will
  /// be preserved. Pre-existing inventory information can only be updated with
  /// SetInventory, ProductService.AddFulfillmentPlaces, and
  /// RemoveFulfillmentPlaces. This feature is only available for users who have
  /// Retail Search enabled. Please enable Retail Search on Cloud Console before
  /// using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Full resource name of the product, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/branches/\[^/\]+/products/.*$`.
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
  async.Future<GoogleLongrunningOperation> setInventory(
    GoogleCloudRetailV2SetInventoryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':setInventory';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsCompletionDataResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsCompletionDataResource(commons.ApiRequester client)
      : _requester = client;

  /// Bulk import of processed completion dataset.
  ///
  /// Request processing is asynchronous. Partial updating is not supported. The
  /// operation is successfully finished only after the imported suggestions are
  /// indexed successfully and ready for serving. The process takes hours. This
  /// feature is only available for users who have Retail Search enabled. Please
  /// enable Retail Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The catalog which the suggestions dataset belongs to.
  /// Format: `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2ImportCompletionDataRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/completionData:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsPlacementsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsPlacementsResource(commons.ApiRequester client)
      : _requester = client;

  /// Makes a recommendation prediction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. Full resource name of the format: {name=projects /
  /// * /locations/global/catalogs/default_catalog/placements / * } The ID of
  /// the Recommendations AI placement. Before you can request predictions from
  /// your model, you must create at least one placement for it. For more
  /// information, see
  /// [Managing placements](https://cloud.google.com/retail/recommendations-ai/docs/manage-placements).
  /// The full list of available placements can be seen at
  /// https://console.cloud.google.com/recommendation/catalogs/default_catalog/placements
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2PredictResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2PredictResponse> predict(
    GoogleCloudRetailV2PredictRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$placement') + ':predict';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2PredictResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Performs a search.
  ///
  /// This feature is only available for users who have Retail Search enabled.
  /// Please enable Retail Search on Cloud Console before using this feature.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [placement] - Required. The resource name of the search engine placement,
  /// such as `projects / *
  /// /locations/global/catalogs/default_catalog/placements/default_search`.
  /// This field is used to identify the serving configuration name and the set
  /// of models that will be used to make the search.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2SearchResponse> search(
    GoogleCloudRetailV2SearchRequest request,
    core.String placement, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$placement') + ':search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2SearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsUserEventsResource(commons.ApiRequester client)
      : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// This uses a GET request to due to browser restriction of POST-ing to a 3rd
  /// party domain. This method is used only by the Retail API JavaScript pixel
  /// and Google Tag Manager. Users should not call this method directly.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [ets] - The event timestamp in milliseconds. This prevents browser caching
  /// of otherwise identical get requests. The name is abbreviated to reduce the
  /// payload bytes.
  ///
  /// [uri] - The URL including cgi-parameters but excluding the hash fragment
  /// with a length limit of 5,000 characters. This is often more useful than
  /// the referer URL, because many browsers only send the domain for 3rd party
  /// requests.
  ///
  /// [userEvent] - Required. URL encoded UserEvent proto with a length limit of
  /// 2,000,000 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> collect(
    core.String parent, {
    core.String? ets,
    core.String? uri,
    core.String? userEvent,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (ets != null) 'ets': [ets],
      if (uri != null) 'uri': [uri],
      if (userEvent != null) 'userEvent': [userEvent],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleApiHttpBody.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Bulk import of User events.
  ///
  /// Request processing might be synchronous. Events that already exist are
  /// skipped. Use this method for backfilling historical user events.
  /// Operation.response is of type ImportResponse. Note that it is possible for
  /// a subset of the items to be successfully inserted. Operation.metadata is
  /// of type ImportMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// `projects/1234/locations/global/catalogs/default_catalog`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleCloudRetailV2ImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes permanently all user events specified by the filter provided.
  ///
  /// Depending on the number of events specified by the filter, this operation
  /// could take hours or days to complete. To test a filter, use the list
  /// command first.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the catalog under which the
  /// events are created. The format is
  /// `projects/${projectId}/locations/global/catalogs/${catalogId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> purge(
    GoogleCloudRetailV2PurgeUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/userEvents:purge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a user event rejoin operation with latest product catalog.
  ///
  /// Events will not be annotated with detailed product information if product
  /// is missing from the catalog at the time the user event is ingested, and
  /// these events are stored as unjoined events with a limited usage on
  /// training and serving. This method can be used to start a join operation on
  /// specified events with latest version of product catalog. It can also be
  /// used to correct events joined with the wrong product catalog. A rejoin
  /// operation can take hours or days to complete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> rejoin(
    GoogleCloudRetailV2RejoinUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/userEvents:rejoin';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Writes a single user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRetailV2UserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRetailV2UserEvent> write(
    GoogleCloudRetailV2UserEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRetailV2UserEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef GoogleApiHttpBody = $HttpBody;

/// Request message for ProductService.AddFulfillmentPlaces method.
class GoogleCloudRetailV2AddFulfillmentPlacesRequest {
  /// The time when the fulfillment updates are issued, used to prevent
  /// out-of-order updates on fulfillment information.
  ///
  /// If not provided, the internal system time will be used.
  core.String? addTime;

  /// If set to true, and the Product is not found, the fulfillment information
  /// will still be processed and retained for at most 1 day and processed once
  /// the Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// The IDs for this type, such as the store IDs for "pickup-in-store" or the
  /// region IDs for "same-day-delivery" to be added for this type.
  ///
  /// Duplicate IDs will be automatically ignored. At least 1 value is required,
  /// and a maximum of 2000 values are allowed. Each value must be a string with
  /// a length limit of 10 characters, matching the pattern `[a-zA-Z0-9_-]+`,
  /// such as "store1" or "REGION-2". Otherwise, an INVALID_ARGUMENT error is
  /// returned. If the total number of place IDs exceeds 2000 for this type
  /// after adding, then the update will be rejected.
  ///
  /// Required.
  core.List<core.String>? placeIds;

  /// The fulfillment type, including commonly used types (such as pickup in
  /// store and same day delivery), and custom types.
  ///
  /// Supported values: * "pickup-in-store" * "ship-to-store" *
  /// "same-day-delivery" * "next-day-delivery" * "custom-type-1" *
  /// "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If
  /// this field is set to an invalid value other than these, an
  /// INVALID_ARGUMENT error is returned. This field directly corresponds to
  /// Product.fulfillment_info.type.
  ///
  /// Required.
  core.String? type;

  GoogleCloudRetailV2AddFulfillmentPlacesRequest({
    this.addTime,
    this.allowMissing,
    this.placeIds,
    this.type,
  });

  GoogleCloudRetailV2AddFulfillmentPlacesRequest.fromJson(core.Map _json)
      : this(
          addTime: _json.containsKey('addTime')
              ? _json['addTime'] as core.String
              : null,
          allowMissing: _json.containsKey('allowMissing')
              ? _json['allowMissing'] as core.bool
              : null,
          placeIds: _json.containsKey('placeIds')
              ? (_json['placeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addTime != null) 'addTime': addTime!,
        if (allowMissing != null) 'allowMissing': allowMissing!,
        if (placeIds != null) 'placeIds': placeIds!,
        if (type != null) 'type': type!,
      };
}

/// Request message for ProductService.AddLocalInventories method.
class GoogleCloudRetailV2AddLocalInventoriesRequest {
  /// Indicates which inventory fields in the provided list of LocalInventory to
  /// update.
  ///
  /// The field is updated to the provided value. If a field is set while the
  /// place does not have a previous local inventory, the local inventory at
  /// that store is created. If a field is set while the value of that field is
  /// not provided, the original field value, if it exists, is deleted. If the
  /// mask is not set or set with empty paths, all inventory fields will be
  /// updated. If an unsupported or unknown field is provided, an
  /// INVALID_ARGUMENT error is returned and the entire update will be ignored.
  core.String? addMask;

  /// The time when the inventory updates are issued.
  ///
  /// Used to prevent out-of-order updates on local inventory fields. If not
  /// provided, the internal system time will be used.
  core.String? addTime;

  /// If set to true, and the Product is not found, the local inventory will
  /// still be processed and retained for at most 1 day and processed once the
  /// Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// A list of inventory information at difference places.
  ///
  /// Each place is identified by its place ID. At most 3000 inventories are
  /// allowed per request.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2LocalInventory>? localInventories;

  GoogleCloudRetailV2AddLocalInventoriesRequest({
    this.addMask,
    this.addTime,
    this.allowMissing,
    this.localInventories,
  });

  GoogleCloudRetailV2AddLocalInventoriesRequest.fromJson(core.Map _json)
      : this(
          addMask: _json.containsKey('addMask')
              ? _json['addMask'] as core.String
              : null,
          addTime: _json.containsKey('addTime')
              ? _json['addTime'] as core.String
              : null,
          allowMissing: _json.containsKey('allowMissing')
              ? _json['allowMissing'] as core.bool
              : null,
          localInventories: _json.containsKey('localInventories')
              ? (_json['localInventories'] as core.List)
                  .map((value) => GoogleCloudRetailV2LocalInventory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addMask != null) 'addMask': addMask!,
        if (addTime != null) 'addTime': addTime!,
        if (allowMissing != null) 'allowMissing': allowMissing!,
        if (localInventories != null) 'localInventories': localInventories!,
      };
}

/// An intended audience of the Product for whom it's sold.
class GoogleCloudRetailV2Audience {
  /// The age groups of the audience.
  ///
  /// Strongly encouraged to use the standard values: "newborn" (up to 3 months
  /// old), "infant" (3–12 months old), "toddler" (1–5 years old), "kids" (5–13
  /// years old), "adult" (typically teens or older). At most 5 values are
  /// allowed. Each value must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google
  /// Merchant Center property
  /// [age_group](https://support.google.com/merchants/answer/6324463).
  /// Schema.org property
  /// [Product.audience.suggestedMinAge](https://schema.org/suggestedMinAge) and
  /// [Product.audience.suggestedMaxAge](https://schema.org/suggestedMaxAge).
  core.List<core.String>? ageGroups;

  /// The genders of the audience.
  ///
  /// Strongly encouraged to use the standard values: "male", "female",
  /// "unisex". At most 5 values are allowed. Each value must be a UTF-8 encoded
  /// string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Google Merchant Center property
  /// [gender](https://support.google.com/merchants/answer/6324479). Schema.org
  /// property
  /// [Product.audience.suggestedGender](https://schema.org/suggestedGender).
  core.List<core.String>? genders;

  GoogleCloudRetailV2Audience({
    this.ageGroups,
    this.genders,
  });

  GoogleCloudRetailV2Audience.fromJson(core.Map _json)
      : this(
          ageGroups: _json.containsKey('ageGroups')
              ? (_json['ageGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          genders: _json.containsKey('genders')
              ? (_json['genders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageGroups != null) 'ageGroups': ageGroups!,
        if (genders != null) 'genders': genders!,
      };
}

/// BigQuery source import data from.
class GoogleCloudRetailV2BigQuerySource {
  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for product imports: * `product` (default): One JSON
  /// Product per line. Each product must have a valid Product.id. *
  /// `product_merchant_center`: See
  /// [Importing catalog data from Merchant Center](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog#mc).
  /// Supported values for user events imports: * `user_event` (default): One
  /// JSON UserEvent per line. * `user_event_ga360`: The schema is available
  /// here: https://support.google.com/analytics/answer/3437719. *
  /// `user_event_ga4`: This feature is in private preview. Please contact the
  /// support team for importing Google Analytics 4 events. The schema is
  /// available here: https://support.google.com/analytics/answer/7029846.
  /// Supported values for auto-completion imports: * `suggestions` (default):
  /// One JSON completion suggestion per line. * `denylist`: One JSON deny
  /// suggestion per line. * `allowlist`: One JSON allow suggestion per line.
  core.String? dataSchema;

  /// The BigQuery data set to copy the data from with a length limit of 1,024
  /// characters.
  ///
  /// Required.
  core.String? datasetId;

  /// Intermediate Cloud Storage directory used for the import with a length
  /// limit of 2,000 characters.
  ///
  /// Can be specified if one wants to have the BigQuery export to a specific
  /// Cloud Storage directory.
  core.String? gcsStagingDir;

  /// BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format.
  ///
  /// Only supported when ImportProductsRequest.reconciliation_mode is set to
  /// `FULL`.
  GoogleTypeDate? partitionDate;

  /// The project ID (can be project # or ID) that the BigQuery source is in
  /// with a length limit of 128 characters.
  ///
  /// If not specified, inherits the project ID from the parent request.
  core.String? projectId;

  /// The BigQuery table to copy the data from with a length limit of 1,024
  /// characters.
  ///
  /// Required.
  core.String? tableId;

  GoogleCloudRetailV2BigQuerySource({
    this.dataSchema,
    this.datasetId,
    this.gcsStagingDir,
    this.partitionDate,
    this.projectId,
    this.tableId,
  });

  GoogleCloudRetailV2BigQuerySource.fromJson(core.Map _json)
      : this(
          dataSchema: _json.containsKey('dataSchema')
              ? _json['dataSchema'] as core.String
              : null,
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          gcsStagingDir: _json.containsKey('gcsStagingDir')
              ? _json['gcsStagingDir'] as core.String
              : null,
          partitionDate: _json.containsKey('partitionDate')
              ? GoogleTypeDate.fromJson(
                  _json['partitionDate'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSchema != null) 'dataSchema': dataSchema!,
        if (datasetId != null) 'datasetId': datasetId!,
        if (gcsStagingDir != null) 'gcsStagingDir': gcsStagingDir!,
        if (partitionDate != null) 'partitionDate': partitionDate!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// The catalog configuration.
class GoogleCloudRetailV2Catalog {
  /// The catalog display name.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required. Immutable.
  core.String? displayName;

  /// The fully qualified resource name of the catalog.
  ///
  /// Required. Immutable.
  core.String? name;

  /// The product level configuration.
  ///
  /// Required.
  GoogleCloudRetailV2ProductLevelConfig? productLevelConfig;

  GoogleCloudRetailV2Catalog({
    this.displayName,
    this.name,
    this.productLevelConfig,
  });

  GoogleCloudRetailV2Catalog.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          productLevelConfig: _json.containsKey('productLevelConfig')
              ? GoogleCloudRetailV2ProductLevelConfig.fromJson(
                  _json['productLevelConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (productLevelConfig != null)
          'productLevelConfig': productLevelConfig!,
      };
}

/// The color information of a Product.
class GoogleCloudRetailV2ColorInfo {
  /// The standard color families.
  ///
  /// Strongly recommended to use the following standard color groups: "Red",
  /// "Pink", "Orange", "Yellow", "Purple", "Green", "Cyan", "Blue", "Brown",
  /// "White", "Gray", "Black" and "Mixed". Normally it is expected to have only
  /// 1 color family. May consider using single "Mixed" instead of multiple
  /// values. A maximum of 5 values are allowed. Each value must be a UTF-8
  /// encoded string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Google Merchant Center property
  /// [color](https://support.google.com/merchants/answer/6324487). Schema.org
  /// property [Product.color](https://schema.org/color).
  core.List<core.String>? colorFamilies;

  /// The color display names, which may be different from standard color family
  /// names, such as the color aliases used in the website frontend.
  ///
  /// Normally it is expected to have only 1 color. May consider using single
  /// "Mixed" instead of multiple values. A maximum of 25 colors are allowed.
  /// Each value must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned. Google
  /// Merchant Center property
  /// [color](https://support.google.com/merchants/answer/6324487). Schema.org
  /// property [Product.color](https://schema.org/color).
  core.List<core.String>? colors;

  GoogleCloudRetailV2ColorInfo({
    this.colorFamilies,
    this.colors,
  });

  GoogleCloudRetailV2ColorInfo.fromJson(core.Map _json)
      : this(
          colorFamilies: _json.containsKey('colorFamilies')
              ? (_json['colorFamilies'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          colors: _json.containsKey('colors')
              ? (_json['colors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colorFamilies != null) 'colorFamilies': colorFamilies!,
        if (colors != null) 'colors': colors!,
      };
}

/// Response of the auto-complete query.
class GoogleCloudRetailV2CompleteQueryResponse {
  /// A unique complete token.
  ///
  /// This should be included in the UserEvent.completion_detail for search
  /// events resulting from this completion, which enables accurate attribution
  /// of complete model performance.
  core.String? attributionToken;

  /// Results of the matching suggestions.
  ///
  /// The result list is ordered and the first result is top suggestion.
  core.List<GoogleCloudRetailV2CompleteQueryResponseCompletionResult>?
      completionResults;

  /// Matched recent searches of this user.
  ///
  /// The maximum number of recent searches is 10. This field is a restricted
  /// feature. Contact Retail Search support team if you are interested in
  /// enabling it. This feature is only available when
  /// CompleteQueryRequest.visitor_id field is set and UserEvent is imported.
  /// The recent searches satisfy the follow rules: * They are ordered from
  /// latest to oldest. * They are matched with CompleteQueryRequest.query case
  /// insensitively. * They are transformed to lower cases. * They are UTF-8
  /// safe. Recent searches are deduplicated. More recent searches will be
  /// reserved when duplication happens.
  core.List<GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult>?
      recentSearchResults;

  GoogleCloudRetailV2CompleteQueryResponse({
    this.attributionToken,
    this.completionResults,
    this.recentSearchResults,
  });

  GoogleCloudRetailV2CompleteQueryResponse.fromJson(core.Map _json)
      : this(
          attributionToken: _json.containsKey('attributionToken')
              ? _json['attributionToken'] as core.String
              : null,
          completionResults: _json.containsKey('completionResults')
              ? (_json['completionResults'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2CompleteQueryResponseCompletionResult
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          recentSearchResults: _json.containsKey('recentSearchResults')
              ? (_json['recentSearchResults'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributionToken != null) 'attributionToken': attributionToken!,
        if (completionResults != null) 'completionResults': completionResults!,
        if (recentSearchResults != null)
          'recentSearchResults': recentSearchResults!,
      };
}

/// Resource that represents completion results.
class GoogleCloudRetailV2CompleteQueryResponseCompletionResult {
  /// Custom attributes for the suggestion term.
  ///
  /// * For "user-data", the attributes are additional custom attributes
  /// ingested through BigQuery. * For "cloud-retail", the attributes are
  /// product attributes generated by Cloud Retail. This is an experimental
  /// feature. Contact Retail Search support team if you are interested in
  /// enabling it.
  core.Map<core.String, GoogleCloudRetailV2CustomAttribute>? attributes;

  /// The suggestion for the query.
  core.String? suggestion;

  GoogleCloudRetailV2CompleteQueryResponseCompletionResult({
    this.attributes,
    this.suggestion,
  });

  GoogleCloudRetailV2CompleteQueryResponseCompletionResult.fromJson(
      core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRetailV2CustomAttribute.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          suggestion: _json.containsKey('suggestion')
              ? _json['suggestion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (suggestion != null) 'suggestion': suggestion!,
      };
}

/// Recent search of this user.
class GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult {
  /// The recent search query.
  core.String? recentSearch;

  GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult({
    this.recentSearch,
  });

  GoogleCloudRetailV2CompleteQueryResponseRecentSearchResult.fromJson(
      core.Map _json)
      : this(
          recentSearch: _json.containsKey('recentSearch')
              ? _json['recentSearch'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recentSearch != null) 'recentSearch': recentSearch!,
      };
}

/// The input config source for completion data.
class GoogleCloudRetailV2CompletionDataInputConfig {
  /// BigQuery input source.
  ///
  /// Add the IAM permission "BigQuery Data Viewer" for
  /// cloud-retail-customer-data-access@system.gserviceaccount.com before using
  /// this feature otherwise an error is thrown.
  ///
  /// Required.
  GoogleCloudRetailV2BigQuerySource? bigQuerySource;

  GoogleCloudRetailV2CompletionDataInputConfig({
    this.bigQuerySource,
  });

  GoogleCloudRetailV2CompletionDataInputConfig.fromJson(core.Map _json)
      : this(
          bigQuerySource: _json.containsKey('bigQuerySource')
              ? GoogleCloudRetailV2BigQuerySource.fromJson(
                  _json['bigQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
      };
}

/// Detailed completion information including completion attribution token and
/// clicked completion info.
class GoogleCloudRetailV2CompletionDetail {
  /// Completion attribution token in CompleteQueryResponse.attribution_token.
  core.String? completionAttributionToken;

  /// End user selected CompleteQueryResponse.CompletionResult.suggestion
  /// position, starting from 0.
  core.int? selectedPosition;

  /// End user selected CompleteQueryResponse.CompletionResult.suggestion.
  core.String? selectedSuggestion;

  GoogleCloudRetailV2CompletionDetail({
    this.completionAttributionToken,
    this.selectedPosition,
    this.selectedSuggestion,
  });

  GoogleCloudRetailV2CompletionDetail.fromJson(core.Map _json)
      : this(
          completionAttributionToken:
              _json.containsKey('completionAttributionToken')
                  ? _json['completionAttributionToken'] as core.String
                  : null,
          selectedPosition: _json.containsKey('selectedPosition')
              ? _json['selectedPosition'] as core.int
              : null,
          selectedSuggestion: _json.containsKey('selectedSuggestion')
              ? _json['selectedSuggestion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionAttributionToken != null)
          'completionAttributionToken': completionAttributionToken!,
        if (selectedPosition != null) 'selectedPosition': selectedPosition!,
        if (selectedSuggestion != null)
          'selectedSuggestion': selectedSuggestion!,
      };
}

/// A custom attribute that is not explicitly modeled in Product.
class GoogleCloudRetailV2CustomAttribute {
  /// This field is normally ignored unless
  /// AttributesConfig.attribute_config_level of the Catalog is set to the
  /// deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode.
  ///
  /// For information about product-level attribute configuration, see
  /// [Configuration modes](https://cloud.google.com/retail/docs/attribute-config#config-modes).
  /// If true, custom attribute values are indexed, so that they can be
  /// filtered, faceted or boosted in SearchService.Search. This field is
  /// ignored in a UserEvent. See SearchRequest.filter,
  /// SearchRequest.facet_specs and SearchRequest.boost_spec for more details.
  core.bool? indexable;

  /// The numerical values of this custom attribute.
  ///
  /// For example, `[2.3, 15.4]` when the key is "lengths_cm". Exactly one of
  /// text or numbers should be set. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  core.List<core.double>? numbers;

  /// This field is normally ignored unless
  /// AttributesConfig.attribute_config_level of the Catalog is set to the
  /// deprecated 'PRODUCT_LEVEL_ATTRIBUTE_CONFIG' mode.
  ///
  /// For information about product-level attribute configuration, see
  /// [Configuration modes](https://cloud.google.com/retail/docs/attribute-config#config-modes).
  /// If true, custom attribute values are searchable by text queries in
  /// SearchService.Search. This field is ignored in a UserEvent. Only set if
  /// type text is set. Otherwise, a INVALID_ARGUMENT error is returned.
  core.bool? searchable;

  /// The textual values of this custom attribute.
  ///
  /// For example, `["yellow", "green"]` when the key is "color". Empty string
  /// is not allowed. Otherwise, an INVALID_ARGUMENT error is returned. Exactly
  /// one of text or numbers should be set. Otherwise, an INVALID_ARGUMENT error
  /// is returned.
  core.List<core.String>? text;

  GoogleCloudRetailV2CustomAttribute({
    this.indexable,
    this.numbers,
    this.searchable,
    this.text,
  });

  GoogleCloudRetailV2CustomAttribute.fromJson(core.Map _json)
      : this(
          indexable: _json.containsKey('indexable')
              ? _json['indexable'] as core.bool
              : null,
          numbers: _json.containsKey('numbers')
              ? (_json['numbers'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
          searchable: _json.containsKey('searchable')
              ? _json['searchable'] as core.bool
              : null,
          text: _json.containsKey('text')
              ? (_json['text'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexable != null) 'indexable': indexable!,
        if (numbers != null) 'numbers': numbers!,
        if (searchable != null) 'searchable': searchable!,
        if (text != null) 'text': text!,
      };
}

/// Fulfillment information, such as the store IDs for in-store pickup or region
/// IDs for different shipping methods.
class GoogleCloudRetailV2FulfillmentInfo {
  /// The IDs for this type, such as the store IDs for
  /// FulfillmentInfo.type.pickup-in-store or the region IDs for
  /// FulfillmentInfo.type.same-day-delivery.
  ///
  /// A maximum of 3000 values are allowed. Each value must be a string with a
  /// length limit of 30 characters, matching the pattern `[a-zA-Z0-9_-]+`, such
  /// as "store1" or "REGION-2". Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  core.List<core.String>? placeIds;

  /// The fulfillment type, including commonly used types (such as pickup in
  /// store and same day delivery), and custom types.
  ///
  /// Customers have to map custom types to their display names before rendering
  /// UI. Supported values: * "pickup-in-store" * "ship-to-store" *
  /// "same-day-delivery" * "next-day-delivery" * "custom-type-1" *
  /// "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If
  /// this field is set to an invalid value other than these, an
  /// INVALID_ARGUMENT error is returned.
  core.String? type;

  GoogleCloudRetailV2FulfillmentInfo({
    this.placeIds,
    this.type,
  });

  GoogleCloudRetailV2FulfillmentInfo.fromJson(core.Map _json)
      : this(
          placeIds: _json.containsKey('placeIds')
              ? (_json['placeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeIds != null) 'placeIds': placeIds!,
        if (type != null) 'type': type!,
      };
}

/// Google Cloud Storage location for input content.
///
/// format.
class GoogleCloudRetailV2GcsSource {
  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for product imports: * `product` (default): One JSON
  /// Product per line. Each product must have a valid Product.id. *
  /// `product_merchant_center`: See
  /// [Importing catalog data from Merchant Center](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog#mc).
  /// Supported values for user events imports: * `user_event` (default): One
  /// JSON UserEvent per line. * `user_event_ga360`: Using
  /// https://support.google.com/analytics/answer/3437719. Supported values for
  /// control imports: * 'control' (default): One JSON Control per line.
  /// Supported values for catalog attribute imports: * 'catalog_attribute'
  /// (default): One CSV CatalogAttribute per line.
  core.String? dataSchema;

  /// Google Cloud Storage URIs to input files.
  ///
  /// URI can be up to 2000 characters long. URIs can match the full object path
  /// (for example, `gs://bucket/directory/object.json`) or a pattern matching
  /// one or more files, such as `gs://bucket/directory / * .json`. A request
  /// can contain at most 100 files, and each file can be up to 2 GB. See
  /// [Importing product information](https://cloud.google.com/retail/recommendations-ai/docs/upload-catalog)
  /// for the expected file format and setup instructions.
  ///
  /// Required.
  core.List<core.String>? inputUris;

  GoogleCloudRetailV2GcsSource({
    this.dataSchema,
    this.inputUris,
  });

  GoogleCloudRetailV2GcsSource.fromJson(core.Map _json)
      : this(
          dataSchema: _json.containsKey('dataSchema')
              ? _json['dataSchema'] as core.String
              : null,
          inputUris: _json.containsKey('inputUris')
              ? (_json['inputUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSchema != null) 'dataSchema': dataSchema!,
        if (inputUris != null) 'inputUris': inputUris!,
      };
}

/// Response message of CatalogService.GetDefaultBranch.
class GoogleCloudRetailV2GetDefaultBranchResponse {
  /// Full resource name of the branch id currently set as default branch.
  core.String? branch;

  /// This corresponds to SetDefaultBranchRequest.note field, when this branch
  /// was set as default.
  core.String? note;

  /// The time when this branch is set to default.
  core.String? setTime;

  GoogleCloudRetailV2GetDefaultBranchResponse({
    this.branch,
    this.note,
    this.setTime,
  });

  GoogleCloudRetailV2GetDefaultBranchResponse.fromJson(core.Map _json)
      : this(
          branch: _json.containsKey('branch')
              ? _json['branch'] as core.String
              : null,
          note: _json.containsKey('note') ? _json['note'] as core.String : null,
          setTime: _json.containsKey('setTime')
              ? _json['setTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branch != null) 'branch': branch!,
        if (note != null) 'note': note!,
        if (setTime != null) 'setTime': setTime!,
      };
}

/// Product image.
///
/// Recommendations AI and Retail Search do not use product images to improve
/// prediction and search results. However, product images can be returned in
/// results, and are shown in prediction or search previews in the console.
class GoogleCloudRetailV2Image {
  /// Height of the image in number of pixels.
  ///
  /// This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  core.int? height;

  /// URI of the image.
  ///
  /// This field must be a valid UTF-8 encoded URI with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned. Google
  /// Merchant Center property
  /// [image_link](https://support.google.com/merchants/answer/6324350).
  /// Schema.org property [Product.image](https://schema.org/image).
  ///
  /// Required.
  core.String? uri;

  /// Width of the image in number of pixels.
  ///
  /// This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  core.int? width;

  GoogleCloudRetailV2Image({
    this.height,
    this.uri,
    this.width,
  });

  GoogleCloudRetailV2Image.fromJson(core.Map _json)
      : this(
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (uri != null) 'uri': uri!,
        if (width != null) 'width': width!,
      };
}

/// Request message for ImportCompletionData methods.
class GoogleCloudRetailV2ImportCompletionDataRequest {
  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2CompletionDataInputConfig? inputConfig;

  /// Pub/Sub topic for receiving notification.
  ///
  /// If this field is set, when the import is finished, a notification will be
  /// sent to specified Pub/Sub topic. The message data will be JSON string of a
  /// Operation. Format of the Pub/Sub topic is
  /// `projects/{project}/topics/{topic}`.
  core.String? notificationPubsubTopic;

  GoogleCloudRetailV2ImportCompletionDataRequest({
    this.inputConfig,
    this.notificationPubsubTopic,
  });

  GoogleCloudRetailV2ImportCompletionDataRequest.fromJson(core.Map _json)
      : this(
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudRetailV2CompletionDataInputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          notificationPubsubTopic: _json.containsKey('notificationPubsubTopic')
              ? _json['notificationPubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (notificationPubsubTopic != null)
          'notificationPubsubTopic': notificationPubsubTopic!,
      };
}

/// Configuration of destination for Import related errors.
class GoogleCloudRetailV2ImportErrorsConfig {
  /// Google Cloud Storage prefix for import errors.
  ///
  /// This must be an empty, existing Cloud Storage directory. Import errors
  /// will be written to sharded files in this directory, one per line, as a
  /// JSON-encoded `google.rpc.Status` message.
  core.String? gcsPrefix;

  GoogleCloudRetailV2ImportErrorsConfig({
    this.gcsPrefix,
  });

  GoogleCloudRetailV2ImportErrorsConfig.fromJson(core.Map _json)
      : this(
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? _json['gcsPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Request message for Import methods.
class GoogleCloudRetailV2ImportProductsRequest {
  /// The desired location of errors incurred during the Import.
  GoogleCloudRetailV2ImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2ProductInputConfig? inputConfig;

  /// Full Pub/Sub topic name for receiving notification.
  ///
  /// If this field is set, when the import is finished, a notification will be
  /// sent to specified Pub/Sub topic. The message data will be JSON string of a
  /// Operation. Format of the Pub/Sub topic is
  /// `projects/{project}/topics/{topic}`. It has to be within the same project
  /// as ImportProductsRequest.parent. Make sure that both
  /// `cloud-retail-customer-data-access@system.gserviceaccount.com` and
  /// `service-@gcp-sa-retail.iam.gserviceaccount.com` have the
  /// `pubsub.topics.publish` IAM permission on the topic. Only supported when
  /// ImportProductsRequest.reconciliation_mode is set to `FULL`.
  core.String? notificationPubsubTopic;

  /// The mode of reconciliation between existing products and the products to
  /// be imported.
  ///
  /// Defaults to ReconciliationMode.INCREMENTAL.
  /// Possible string values are:
  /// - "RECONCILIATION_MODE_UNSPECIFIED" : Defaults to INCREMENTAL.
  /// - "INCREMENTAL" : Inserts new products or updates existing products.
  /// - "FULL" : Calculates diff and replaces the entire product dataset.
  /// Existing products may be deleted if they are not present in the source
  /// location. Can only be set while using BigQuerySource. And the BigQuery
  /// dataset must be created in the data location "us (multiple regions in
  /// United States)", otherwise a PERMISSION_DENIED error is thrown. Add the
  /// IAM permission "BigQuery Data Viewer" for
  /// cloud-retail-customer-data-access@system.gserviceaccount.com before using
  /// this feature otherwise an error is thrown.
  core.String? reconciliationMode;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? requestId;

  /// Indicates which fields in the provided imported 'products' to update.
  ///
  /// If not set, will by default update all fields.
  core.String? updateMask;

  GoogleCloudRetailV2ImportProductsRequest({
    this.errorsConfig,
    this.inputConfig,
    this.notificationPubsubTopic,
    this.reconciliationMode,
    this.requestId,
    this.updateMask,
  });

  GoogleCloudRetailV2ImportProductsRequest.fromJson(core.Map _json)
      : this(
          errorsConfig: _json.containsKey('errorsConfig')
              ? GoogleCloudRetailV2ImportErrorsConfig.fromJson(
                  _json['errorsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudRetailV2ProductInputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          notificationPubsubTopic: _json.containsKey('notificationPubsubTopic')
              ? _json['notificationPubsubTopic'] as core.String
              : null,
          reconciliationMode: _json.containsKey('reconciliationMode')
              ? _json['reconciliationMode'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorsConfig != null) 'errorsConfig': errorsConfig!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (notificationPubsubTopic != null)
          'notificationPubsubTopic': notificationPubsubTopic!,
        if (reconciliationMode != null)
          'reconciliationMode': reconciliationMode!,
        if (requestId != null) 'requestId': requestId!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for the ImportUserEvents request.
class GoogleCloudRetailV2ImportUserEventsRequest {
  /// The desired location of errors incurred during the Import.
  ///
  /// Cannot be set for inline user event imports.
  GoogleCloudRetailV2ImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRetailV2UserEventInputConfig? inputConfig;

  GoogleCloudRetailV2ImportUserEventsRequest({
    this.errorsConfig,
    this.inputConfig,
  });

  GoogleCloudRetailV2ImportUserEventsRequest.fromJson(core.Map _json)
      : this(
          errorsConfig: _json.containsKey('errorsConfig')
              ? GoogleCloudRetailV2ImportErrorsConfig.fromJson(
                  _json['errorsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudRetailV2UserEventInputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorsConfig != null) 'errorsConfig': errorsConfig!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
      };
}

/// A floating point interval.
class GoogleCloudRetailV2Interval {
  /// Exclusive upper bound.
  core.double? exclusiveMaximum;

  /// Exclusive lower bound.
  core.double? exclusiveMinimum;

  /// Inclusive upper bound.
  core.double? maximum;

  /// Inclusive lower bound.
  core.double? minimum;

  GoogleCloudRetailV2Interval({
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.maximum,
    this.minimum,
  });

  GoogleCloudRetailV2Interval.fromJson(core.Map _json)
      : this(
          exclusiveMaximum: _json.containsKey('exclusiveMaximum')
              ? (_json['exclusiveMaximum'] as core.num).toDouble()
              : null,
          exclusiveMinimum: _json.containsKey('exclusiveMinimum')
              ? (_json['exclusiveMinimum'] as core.num).toDouble()
              : null,
          maximum: _json.containsKey('maximum')
              ? (_json['maximum'] as core.num).toDouble()
              : null,
          minimum: _json.containsKey('minimum')
              ? (_json['minimum'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclusiveMaximum != null) 'exclusiveMaximum': exclusiveMaximum!,
        if (exclusiveMinimum != null) 'exclusiveMinimum': exclusiveMinimum!,
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
      };
}

/// Response for CatalogService.ListCatalogs method.
class GoogleCloudRetailV2ListCatalogsResponse {
  /// All the customer's Catalogs.
  core.List<GoogleCloudRetailV2Catalog>? catalogs;

  /// A token that can be sent as ListCatalogsRequest.page_token to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudRetailV2ListCatalogsResponse({
    this.catalogs,
    this.nextPageToken,
  });

  GoogleCloudRetailV2ListCatalogsResponse.fromJson(core.Map _json)
      : this(
          catalogs: _json.containsKey('catalogs')
              ? (_json['catalogs'] as core.List)
                  .map((value) => GoogleCloudRetailV2Catalog.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catalogs != null) 'catalogs': catalogs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ProductService.ListProducts method.
class GoogleCloudRetailV2ListProductsResponse {
  /// A token that can be sent as ListProductsRequest.page_token to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The Products.
  core.List<GoogleCloudRetailV2Product>? products;

  GoogleCloudRetailV2ListProductsResponse({
    this.nextPageToken,
    this.products,
  });

  GoogleCloudRetailV2ListProductsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map((value) => GoogleCloudRetailV2Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

/// The inventory information at a place (e.g. a store) identified by a place
/// ID.
class GoogleCloudRetailV2LocalInventory {
  /// Additional local inventory attributes, for example, store name, promotion
  /// tags, etc.
  ///
  /// This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
  /// error is returned: * At most 30 attributes are allowed. * The key must be
  /// a UTF-8 encoded string with a length limit of 32 characters. * The key
  /// must match the pattern: `a-zA-Z0-9*`. For example, key0LikeThis or
  /// KEY_1_LIKE_THIS. * The attribute values must be of the same type (text or
  /// number). * Only 1 value is allowed for each attribute. * For text values,
  /// the length limit is 256 UTF-8 characters. * The attribute does not support
  /// search. The `searchable` field should be unset or set to false. * The max
  /// summed total bytes of custom attribute keys and values per product is
  /// 5MiB.
  core.Map<core.String, GoogleCloudRetailV2CustomAttribute>? attributes;

  /// Input only.
  ///
  /// Supported fulfillment types. Valid fulfillment type values include
  /// commonly used types (such as pickup in store and same day delivery), and
  /// custom types. Customers have to map custom types to their display names
  /// before rendering UI. Supported values: * "pickup-in-store" *
  /// "ship-to-store" * "same-day-delivery" * "next-day-delivery" *
  /// "custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" *
  /// "custom-type-5" If this field is set to an invalid value other than these,
  /// an INVALID_ARGUMENT error is returned. All the elements must be distinct.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  core.List<core.String>? fulfillmentTypes;

  /// The place ID for the current set of inventory information.
  core.String? placeId;

  /// Product price and cost information.
  ///
  /// Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371).
  GoogleCloudRetailV2PriceInfo? priceInfo;

  GoogleCloudRetailV2LocalInventory({
    this.attributes,
    this.fulfillmentTypes,
    this.placeId,
    this.priceInfo,
  });

  GoogleCloudRetailV2LocalInventory.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRetailV2CustomAttribute.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          fulfillmentTypes: _json.containsKey('fulfillmentTypes')
              ? (_json['fulfillmentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
          priceInfo: _json.containsKey('priceInfo')
              ? GoogleCloudRetailV2PriceInfo.fromJson(
                  _json['priceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (fulfillmentTypes != null) 'fulfillmentTypes': fulfillmentTypes!,
        if (placeId != null) 'placeId': placeId!,
        if (priceInfo != null) 'priceInfo': priceInfo!,
      };
}

/// Request message for Predict method.
class GoogleCloudRetailV2PredictRequest {
  /// Filter for restricting prediction results with a length limit of 5,000
  /// characters.
  ///
  /// Accepts values for tags and the `filterOutOfStockItems` flag. * Tag
  /// expressions. Restricts predictions to products that match all of the
  /// specified tags. Boolean operators `OR` and `NOT` are supported if the
  /// expression is enclosed in parentheses, and must be separated from the tag
  /// values by a space. `-"tagA"` is also supported and is equivalent to `NOT
  /// "tagA"`. Tag values must be double quoted UTF-8 encoded strings with a
  /// size limit of 1,000 characters. Note: "Recently viewed" models don't
  /// support tag filtering at the moment. * filterOutOfStockItems. Restricts
  /// predictions to products that do not have a stockState value of
  /// OUT_OF_STOCK. Examples: * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT
  /// "promotional") * filterOutOfStockItems tag=(-"promotional") *
  /// filterOutOfStockItems If your filter blocks all prediction results, the
  /// API will return generic (unfiltered) popular products. If you only want
  /// results strictly matching the filters, set `strictFiltering` to True in
  /// `PredictRequest.params` to receive empty results instead. Note that the
  /// API will never return items with storageStatus of "EXPIRED" or "DELETED"
  /// regardless of filter choices.
  core.String? filter;

  /// The labels applied to a resource must meet the following requirements: *
  /// Each resource can have multiple labels, up to a maximum of 64.
  ///
  /// * Each label must be a key-value pair. * Keys have a minimum length of 1
  /// character and a maximum length of 63 characters and cannot be empty.
  /// Values can be empty and have a maximum length of 63 characters. * Keys and
  /// values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes. All characters must use UTF-8 encoding, and
  /// international characters are allowed. * The key portion of a label must be
  /// unique. However, you can use the same key with multiple resources. * Keys
  /// must start with a lowercase letter or international character. See
  /// [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// for more details.
  core.Map<core.String, core.String>? labels;

  /// Maximum number of results to return per page.
  ///
  /// Set this property to the number of prediction results needed. If zero, the
  /// service will choose a reasonable default. The maximum allowed value is
  /// 100. Values above 100 will be coerced to 100.
  core.int? pageSize;

  /// The previous PredictResponse.next_page_token.
  core.String? pageToken;

  /// Additional domain specific parameters for the predictions.
  ///
  /// Allowed values: * `returnProduct`: Boolean. If set to true, the associated
  /// product object will be returned in the `results.metadata` field in the
  /// prediction response. * `returnScore`: Boolean. If set to true, the
  /// prediction 'score' corresponding to each returned product will be set in
  /// the `results.metadata` field in the prediction response. The given 'score'
  /// indicates the probability of an product being clicked/purchased given the
  /// user's context and history. * `strictFiltering`: Boolean. True by default.
  /// If set to false, the service will return generic (unfiltered) popular
  /// products instead of empty if your filter blocks all prediction results. *
  /// `priceRerankLevel`: String. Default empty. If set to be non-empty, then it
  /// needs to be one of {'no-price-reranking', 'low-price-reranking',
  /// 'medium-price-reranking', 'high-price-reranking'}. This gives
  /// request-level control and adjusts prediction results based on product
  /// price. * `diversityLevel`: String. Default empty. If set to be non-empty,
  /// then it needs to be one of {'no-diversity', 'low-diversity',
  /// 'medium-diversity', 'high-diversity', 'auto-diversity'}. This gives
  /// request-level control and adjusts prediction results based on product
  /// category.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Context about the user, what they are looking at and what action they took
  /// to trigger the predict request.
  ///
  /// Note that this user event detail won't be ingested to userEvent logs.
  /// Thus, a separate userEvent write request is required for event logging.
  /// Don't set UserEvent.visitor_id or UserInfo.user_id to the same fixed ID
  /// for different users. If you are trying to receive non-personalized
  /// recommendations (not recommended; this can negatively impact model
  /// performance), instead set UserEvent.visitor_id to a random unique ID and
  /// leave UserInfo.user_id unset.
  ///
  /// Required.
  GoogleCloudRetailV2UserEvent? userEvent;

  /// Use validate only mode for this prediction query.
  ///
  /// If set to true, a dummy model will be used that returns arbitrary
  /// products. Note that the validate only mode should only be used for testing
  /// the API, or if the model is not ready.
  core.bool? validateOnly;

  GoogleCloudRetailV2PredictRequest({
    this.filter,
    this.labels,
    this.pageSize,
    this.pageToken,
    this.params,
    this.userEvent,
    this.validateOnly,
  });

  GoogleCloudRetailV2PredictRequest.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          userEvent: _json.containsKey('userEvent')
              ? GoogleCloudRetailV2UserEvent.fromJson(
                  _json['userEvent'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (labels != null) 'labels': labels!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (params != null) 'params': params!,
        if (userEvent != null) 'userEvent': userEvent!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response message for predict method.
class GoogleCloudRetailV2PredictResponse {
  /// A unique attribution token.
  ///
  /// This should be included in the UserEvent logs resulting from this
  /// recommendation, which enables accurate attribution of recommendation model
  /// performance.
  core.String? attributionToken;

  /// IDs of products in the request that were missing from the inventory.
  core.List<core.String>? missingIds;

  /// A list of recommended products.
  ///
  /// The order represents the ranking (from the most relevant product to the
  /// least).
  core.List<GoogleCloudRetailV2PredictResponsePredictionResult>? results;

  /// True if the validateOnly property was set in the request.
  core.bool? validateOnly;

  GoogleCloudRetailV2PredictResponse({
    this.attributionToken,
    this.missingIds,
    this.results,
    this.validateOnly,
  });

  GoogleCloudRetailV2PredictResponse.fromJson(core.Map _json)
      : this(
          attributionToken: _json.containsKey('attributionToken')
              ? _json['attributionToken'] as core.String
              : null,
          missingIds: _json.containsKey('missingIds')
              ? (_json['missingIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2PredictResponsePredictionResult
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributionToken != null) 'attributionToken': attributionToken!,
        if (missingIds != null) 'missingIds': missingIds!,
        if (results != null) 'results': results!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// PredictionResult represents the recommendation prediction results.
class GoogleCloudRetailV2PredictResponsePredictionResult {
  /// ID of the recommended product
  core.String? id;

  /// Additional product metadata / annotations.
  ///
  /// Possible values: * `product`: JSON representation of the product. Is set
  /// if `returnProduct` is set to true in `PredictRequest.params`. * `score`:
  /// Prediction score in double value. Is set if `returnScore` is set to true
  /// in `PredictRequest.params`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  GoogleCloudRetailV2PredictResponsePredictionResult({
    this.id,
    this.metadata,
  });

  GoogleCloudRetailV2PredictResponsePredictionResult.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// The price information of a Product.
class GoogleCloudRetailV2PriceInfo {
  /// The costs associated with the sale of a particular product.
  ///
  /// Used for gross profit reporting. * Profit = price - cost Google Merchant
  /// Center property
  /// [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  core.double? cost;

  /// The 3-letter currency code defined in
  /// [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html).
  ///
  /// If this field is an unrecognizable currency code, an INVALID_ARGUMENT
  /// error is returned. The Product.Type.VARIANT Products with the same
  /// Product.primary_product_id must share the same currency_code. Otherwise, a
  /// FAILED_PRECONDITION error is returned.
  core.String? currencyCode;

  /// Price of the product without any discount.
  ///
  /// If zero, by default set to be the price. If set, original_price should be
  /// greater than or equal to price, otherwise an INVALID_ARGUMENT error is
  /// thrown.
  core.double? originalPrice;

  /// Price of the product.
  ///
  /// Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371). Schema.org
  /// property [Offer.price](https://schema.org/price).
  core.double? price;

  /// The timestamp when the price starts to be effective.
  ///
  /// This can be set as a future timestamp, and the price is only used for
  /// search after price_effective_time. If so, the original_price must be set
  /// and original_price is used before price_effective_time. Do not set if
  /// price is always effective because it will cause additional latency during
  /// search.
  core.String? priceEffectiveTime;

  /// The timestamp when the price stops to be effective.
  ///
  /// The price is used for search before price_expire_time. If this field is
  /// set, the original_price must be set and original_price is used after
  /// price_expire_time. Do not set if price is always effective because it will
  /// cause additional latency during search.
  core.String? priceExpireTime;

  /// The price range of all the child Product.Type.VARIANT Products grouped
  /// together on the Product.Type.PRIMARY Product.
  ///
  /// Only populated for Product.Type.PRIMARY Products. Note: This field is
  /// OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API
  /// requests.
  ///
  /// Output only.
  GoogleCloudRetailV2PriceInfoPriceRange? priceRange;

  GoogleCloudRetailV2PriceInfo({
    this.cost,
    this.currencyCode,
    this.originalPrice,
    this.price,
    this.priceEffectiveTime,
    this.priceExpireTime,
    this.priceRange,
  });

  GoogleCloudRetailV2PriceInfo.fromJson(core.Map _json)
      : this(
          cost: _json.containsKey('cost')
              ? (_json['cost'] as core.num).toDouble()
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          originalPrice: _json.containsKey('originalPrice')
              ? (_json['originalPrice'] as core.num).toDouble()
              : null,
          price: _json.containsKey('price')
              ? (_json['price'] as core.num).toDouble()
              : null,
          priceEffectiveTime: _json.containsKey('priceEffectiveTime')
              ? _json['priceEffectiveTime'] as core.String
              : null,
          priceExpireTime: _json.containsKey('priceExpireTime')
              ? _json['priceExpireTime'] as core.String
              : null,
          priceRange: _json.containsKey('priceRange')
              ? GoogleCloudRetailV2PriceInfoPriceRange.fromJson(
                  _json['priceRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cost != null) 'cost': cost!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (originalPrice != null) 'originalPrice': originalPrice!,
        if (price != null) 'price': price!,
        if (priceEffectiveTime != null)
          'priceEffectiveTime': priceEffectiveTime!,
        if (priceExpireTime != null) 'priceExpireTime': priceExpireTime!,
        if (priceRange != null) 'priceRange': priceRange!,
      };
}

/// The price range of all variant Product having the same
/// Product.primary_product_id.
class GoogleCloudRetailV2PriceInfoPriceRange {
  /// The inclusive Product.pricing_info.original_price internal of all variant
  /// Product having the same Product.primary_product_id.
  GoogleCloudRetailV2Interval? originalPrice;

  /// The inclusive Product.pricing_info.price interval of all variant Product
  /// having the same Product.primary_product_id.
  GoogleCloudRetailV2Interval? price;

  GoogleCloudRetailV2PriceInfoPriceRange({
    this.originalPrice,
    this.price,
  });

  GoogleCloudRetailV2PriceInfoPriceRange.fromJson(core.Map _json)
      : this(
          originalPrice: _json.containsKey('originalPrice')
              ? GoogleCloudRetailV2Interval.fromJson(
                  _json['originalPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          price: _json.containsKey('price')
              ? GoogleCloudRetailV2Interval.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (originalPrice != null) 'originalPrice': originalPrice!,
        if (price != null) 'price': price!,
      };
}

/// Product captures all metadata information of items to be recommended or
/// searched.
class GoogleCloudRetailV2Product {
  /// Highly encouraged.
  ///
  /// Extra product attributes to be included. For example, for products, this
  /// could include the store name, vendor, style, color, etc. These are very
  /// strong signals for recommendation model, thus we highly recommend
  /// providing the attributes here. Features that can take on one of a limited
  /// number of possible values. Two types of features can be set are: Textual
  /// features. some examples would be the brand/maker of a product, or country
  /// of a customer. Numerical features. Some examples would be the
  /// height/weight of a product, or age of a customer. For example: `{
  /// "vendor": {"text": ["vendor123", "vendor456"]}, "lengths_cm":
  /// {"numbers":[2.3, 15.4]}, "heights_cm": {"numbers":[8.1, 6.4]} }`. This
  /// field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
  /// error is returned: * Max entries count: 200. * The key must be a UTF-8
  /// encoded string with a length limit of 128 characters. * For indexable
  /// attribute, the key must match the pattern: `a-zA-Z0-9*`. For example,
  /// `key0LikeThis` or `KEY_1_LIKE_THIS`. * For text attributes, at most 400
  /// values are allowed. Empty values are not allowed. Each value must be a
  /// non-empty UTF-8 encoded string with a length limit of 256 characters. *
  /// For number attributes, at most 400 values are allowed.
  core.Map<core.String, GoogleCloudRetailV2CustomAttribute>? attributes;

  /// The target group associated with a given audience (e.g. male, veterans,
  /// car owners, musicians, etc.) of the product.
  GoogleCloudRetailV2Audience? audience;

  /// The online availability of the Product.
  ///
  /// Default to Availability.IN_STOCK. Corresponding properties: Google
  /// Merchant Center property
  /// [availability](https://support.google.com/merchants/answer/6324448).
  /// Schema.org property [Offer.availability](https://schema.org/availability).
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Default product availability. Default to
  /// Availability.IN_STOCK if unset.
  /// - "IN_STOCK" : Product in stock.
  /// - "OUT_OF_STOCK" : Product out of stock.
  /// - "PREORDER" : Product that is in pre-order state.
  /// - "BACKORDER" : Product that is back-ordered (i.e. temporarily out of
  /// stock).
  core.String? availability;

  /// The available quantity of the item.
  core.int? availableQuantity;

  /// The timestamp when this Product becomes available for
  /// SearchService.Search.
  core.String? availableTime;

  /// The brands of the product.
  ///
  /// A maximum of 30 brands are allowed. Each brand must be a UTF-8 encoded
  /// string with a length limit of 1,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property
  /// [brand](https://support.google.com/merchants/answer/6324351). Schema.org
  /// property [Product.brand](https://schema.org/brand).
  core.List<core.String>? brands;

  /// Product categories.
  ///
  /// This field is repeated for supporting one product belonging to several
  /// parallel categories. Strongly recommended using the full path for better
  /// search / recommendation quality. To represent full path of category, use
  /// '\>' sign to separate different hierarchies. If '\>' is part of the
  /// category name, please replace it with other character(s). For example, if
  /// a shoes product belongs to both \["Shoes & Accessories" -\> "Shoes"\] and
  /// \["Sports & Fitness" -\> "Athletic Clothing" -\> "Shoes"\], it could be
  /// represented as: "categories": \[ "Shoes & Accessories \> Shoes", "Sports &
  /// Fitness \> Athletic Clothing \> Shoes" \] Must be set for Type.PRIMARY
  /// Product otherwise an INVALID_ARGUMENT error is returned. At most 250
  /// values are allowed per Product. Empty values are not allowed. Each value
  /// must be a UTF-8 encoded string with a length limit of 5,000 characters.
  /// Otherwise, an INVALID_ARGUMENT error is returned. Corresponding
  /// properties: Google Merchant Center property google_product_category.
  /// Schema.org property [Product.category](https://schema.org/category).
  /// \[mc_google_product_category\]:
  /// https://support.google.com/merchants/answer/6324436
  core.List<core.String>? categories;

  /// The id of the collection members when type is Type.COLLECTION.
  ///
  /// Non-existent product ids are allowed. The type of the members must be
  /// either Type.PRIMARY or Type.VARIANT otherwise and INVALID_ARGUMENT error
  /// is thrown. Should not set it for other types. A maximum of 1000 values are
  /// allowed. Otherwise, an INVALID_ARGUMENT error is return.
  core.List<core.String>? collectionMemberIds;

  /// The color of the product.
  ///
  /// Corresponding properties: Google Merchant Center property
  /// [color](https://support.google.com/merchants/answer/6324487). Schema.org
  /// property [Product.color](https://schema.org/color).
  GoogleCloudRetailV2ColorInfo? colorInfo;

  /// The condition of the product.
  ///
  /// Strongly encouraged to use the standard values: "new", "refurbished",
  /// "used". A maximum of 1 value is allowed per Product. Each value must be a
  /// UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property
  /// [condition](https://support.google.com/merchants/answer/6324469).
  /// Schema.org property
  /// [Offer.itemCondition](https://schema.org/itemCondition).
  core.List<core.String>? conditions;

  /// Product description.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [description](https://support.google.com/merchants/answer/6324468).
  /// Schema.org property [Product.description](https://schema.org/description).
  core.String? description;

  /// The timestamp when this product becomes unavailable for
  /// SearchService.Search.
  ///
  /// If it is set, the Product is not available for SearchService.Search after
  /// expire_time. However, the product can still be retrieved by
  /// ProductService.GetProduct and ProductService.ListProducts. expire_time
  /// must be later than available_time and publish_time, otherwise an
  /// INVALID_ARGUMENT error is thrown. Corresponding properties: Google
  /// Merchant Center property
  /// [expiration_date](https://support.google.com/merchants/answer/6324499).
  core.String? expireTime;

  /// Fulfillment information, such as the store IDs for in-store pickup or
  /// region IDs for different shipping methods.
  ///
  /// All the elements must have distinct FulfillmentInfo.type. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.List<GoogleCloudRetailV2FulfillmentInfo>? fulfillmentInfo;

  /// The Global Trade Item Number (GTIN) of the product.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned. This field
  /// must be a Unigram. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [gtin](https://support.google.com/merchants/answer/6324461). Schema.org
  /// property [Product.isbn](https://schema.org/isbn),
  /// [Product.gtin8](https://schema.org/gtin8),
  /// [Product.gtin12](https://schema.org/gtin12),
  /// [Product.gtin13](https://schema.org/gtin13), or
  /// [Product.gtin14](https://schema.org/gtin14). If the value is not a valid
  /// GTIN, an INVALID_ARGUMENT error is returned.
  core.String? gtin;

  /// Product identifier, which is the final component of name.
  ///
  /// For example, this field is "id_1", if name is `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/id_1`.
  /// This field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [id](https://support.google.com/merchants/answer/6324405). Schema.org
  /// property [Product.sku](https://schema.org/sku).
  ///
  /// Immutable.
  core.String? id;

  /// Product images for the product.
  ///
  /// We highly recommend putting the main image first. A maximum of 300 images
  /// are allowed. Corresponding properties: Google Merchant Center property
  /// [image_link](https://support.google.com/merchants/answer/6324350).
  /// Schema.org property [Product.image](https://schema.org/image).
  core.List<GoogleCloudRetailV2Image>? images;

  /// Language of the title/description and other string attributes.
  ///
  /// Use language tags defined by
  /// [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). For product
  /// prediction, this field is ignored and the model automatically detects the
  /// text language. The Product can include text in different languages, but
  /// duplicating Products to provide text in multiple languages can result in
  /// degraded model performance. For product search this field is in use. It
  /// defaults to "en-US" if unset.
  core.String? languageCode;

  /// The material of the product.
  ///
  /// For example, "leather", "wooden". A maximum of 20 values are allowed. Each
  /// value must be a UTF-8 encoded string with a length limit of 200
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [material](https://support.google.com/merchants/answer/6324410).
  /// Schema.org property [Product.material](https://schema.org/material).
  core.List<core.String>? materials;

  /// Full resource name of the product, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  ///
  /// Immutable.
  core.String? name;

  /// The pattern or graphic print of the product.
  ///
  /// For example, "striped", "polka dot", "paisley". A maximum of 20 values are
  /// allowed per Product. Each value must be a UTF-8 encoded string with a
  /// length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
  /// returned. Corresponding properties: Google Merchant Center property
  /// [pattern](https://support.google.com/merchants/answer/6324483). Schema.org
  /// property [Product.pattern](https://schema.org/pattern).
  core.List<core.String>? patterns;

  /// Product price and cost information.
  ///
  /// Corresponding properties: Google Merchant Center property
  /// [price](https://support.google.com/merchants/answer/6324371).
  GoogleCloudRetailV2PriceInfo? priceInfo;

  /// Variant group identifier.
  ///
  /// Must be an id, with the same parent branch with this product. Otherwise,
  /// an error is thrown. For Type.PRIMARY Products, this field can only be
  /// empty or set to the same value as id. For VARIANT Products, this field
  /// cannot be empty. A maximum of 2,000 products are allowed to share the same
  /// Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [item_group_id](https://support.google.com/merchants/answer/6324507).
  /// Schema.org property
  /// [Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
  core.String? primaryProductId;

  /// The promotions applied to the product.
  ///
  /// A maximum of 10 values are allowed per Product. Only
  /// Promotion.promotion_id will be used, other fields will be ignored if set.
  core.List<GoogleCloudRetailV2Promotion>? promotions;

  /// The timestamp when the product is published by the retailer for the first
  /// time, which indicates the freshness of the products.
  ///
  /// Note that this field is different from available_time, given it purely
  /// describes product freshness regardless of when it is available on search
  /// and recommendation.
  core.String? publishTime;

  /// The rating of this product.
  GoogleCloudRetailV2Rating? rating;

  /// Indicates which fields in the Products are returned in SearchResponse.
  ///
  /// Supported fields for all types: * audience * availability * brands *
  /// color_info * conditions * gtin * materials * name * patterns * price_info
  /// * rating * sizes * title * uri Supported fields only for Type.PRIMARY and
  /// Type.COLLECTION: * categories * description * images Supported fields only
  /// for Type.VARIANT: * Only the first image in images To mark attributes as
  /// retrievable, include paths of the form "attributes.key" where "key" is the
  /// key of a custom attribute, as specified in attributes. For Type.PRIMARY
  /// and Type.COLLECTION, the following fields are always returned in
  /// SearchResponse by default: * name For Type.VARIANT, the following fields
  /// are always returned in by default: * name * color_info The maximum number
  /// of paths is 30. Otherwise, an INVALID_ARGUMENT error is returned. Note:
  /// Returning more fields in SearchResponse can increase response payload size
  /// and serving latency.
  core.String? retrievableFields;

  /// The size of the product.
  ///
  /// To represent different size systems or size types, consider using this
  /// format: \[\[\[size_system:\]size_type:\]size_value\]. For example, in
  /// "US:MENS:M", "US" represents size system; "MENS" represents size type; "M"
  /// represents size value. In "GIRLS:27", size system is empty; "GIRLS"
  /// represents size type; "27" represents size value. In "32 inches", both
  /// size system and size type are empty, while size value is "32 inches". A
  /// maximum of 20 values are allowed per Product. Each value must be a UTF-8
  /// encoded string with a length limit of 128 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. Corresponding properties: Google
  /// Merchant Center property
  /// [size](https://support.google.com/merchants/answer/6324492),
  /// [size_type](https://support.google.com/merchants/answer/6324497), and
  /// [size_system](https://support.google.com/merchants/answer/6324502).
  /// Schema.org property [Product.size](https://schema.org/size).
  core.List<core.String>? sizes;

  /// Custom tags associated with the product.
  ///
  /// At most 250 values are allowed per Product. This value must be a UTF-8
  /// encoded string with a length limit of 1,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. This tag can be used for filtering
  /// recommendation results by passing the tag as part of the
  /// PredictRequest.filter. Corresponding properties: Google Merchant Center
  /// property
  /// \[custom_label_0–4\](https://support.google.com/merchants/answer/6324473).
  core.List<core.String>? tags;

  /// Product title.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 1,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [title](https://support.google.com/merchants/answer/6324415). Schema.org
  /// property [Product.name](https://schema.org/name).
  ///
  /// Required.
  core.String? title;

  /// Input only.
  ///
  /// The TTL (time to live) of the product. If it is set, it must be a
  /// non-negative value, and expire_time is set as current timestamp plus ttl.
  /// The derived expire_time is returned in the output and ttl is left blank
  /// when retrieving the Product. If it is set, the product is not available
  /// for SearchService.Search after current timestamp plus ttl. However, the
  /// product can still be retrieved by ProductService.GetProduct and
  /// ProductService.ListProducts.
  core.String? ttl;

  /// The type of the product.
  ///
  /// Default to Catalog.product_level_config.ingestion_product_type if unset.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. Default to
  /// Catalog.product_level_config.ingestion_product_type if unset.
  /// - "PRIMARY" : The primary type. As the primary unit for predicting,
  /// indexing and search serving, a Type.PRIMARY Product is grouped with
  /// multiple Type.VARIANT Products.
  /// - "VARIANT" : The variant type. Type.VARIANT Products usually share some
  /// common attributes on the same Type.PRIMARY Products, but they have variant
  /// attributes like different colors, sizes and prices, etc.
  /// - "COLLECTION" : The collection type. Collection products are bundled
  /// Type.PRIMARY Products or Type.VARIANT Products that are sold together,
  /// such as a jewelry set with necklaces, earrings and rings, etc.
  core.String? type;

  /// Canonical URL directly linking to the product detail page.
  ///
  /// It is strongly recommended to provide a valid uri for the product,
  /// otherwise the service performance could be significantly degraded. This
  /// field must be a UTF-8 encoded string with a length limit of 5,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// Corresponding properties: Google Merchant Center property
  /// [link](https://support.google.com/merchants/answer/6324416). Schema.org
  /// property [Offer.url](https://schema.org/url).
  core.String? uri;

  /// Product variants grouped together on primary product which share similar
  /// product attributes.
  ///
  /// It's automatically grouped by primary_product_id for all the product
  /// variants. Only populated for Type.PRIMARY Products. Note: This field is
  /// OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API
  /// requests.
  ///
  /// Output only.
  core.List<GoogleCloudRetailV2Product>? variants;

  GoogleCloudRetailV2Product({
    this.attributes,
    this.audience,
    this.availability,
    this.availableQuantity,
    this.availableTime,
    this.brands,
    this.categories,
    this.collectionMemberIds,
    this.colorInfo,
    this.conditions,
    this.description,
    this.expireTime,
    this.fulfillmentInfo,
    this.gtin,
    this.id,
    this.images,
    this.languageCode,
    this.materials,
    this.name,
    this.patterns,
    this.priceInfo,
    this.primaryProductId,
    this.promotions,
    this.publishTime,
    this.rating,
    this.retrievableFields,
    this.sizes,
    this.tags,
    this.title,
    this.ttl,
    this.type,
    this.uri,
    this.variants,
  });

  GoogleCloudRetailV2Product.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRetailV2CustomAttribute.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          audience: _json.containsKey('audience')
              ? GoogleCloudRetailV2Audience.fromJson(
                  _json['audience'] as core.Map<core.String, core.dynamic>)
              : null,
          availability: _json.containsKey('availability')
              ? _json['availability'] as core.String
              : null,
          availableQuantity: _json.containsKey('availableQuantity')
              ? _json['availableQuantity'] as core.int
              : null,
          availableTime: _json.containsKey('availableTime')
              ? _json['availableTime'] as core.String
              : null,
          brands: _json.containsKey('brands')
              ? (_json['brands'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          collectionMemberIds: _json.containsKey('collectionMemberIds')
              ? (_json['collectionMemberIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          colorInfo: _json.containsKey('colorInfo')
              ? GoogleCloudRetailV2ColorInfo.fromJson(
                  _json['colorInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          fulfillmentInfo: _json.containsKey('fulfillmentInfo')
              ? (_json['fulfillmentInfo'] as core.List)
                  .map((value) => GoogleCloudRetailV2FulfillmentInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          gtin: _json.containsKey('gtin') ? _json['gtin'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => GoogleCloudRetailV2Image.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          patterns: _json.containsKey('patterns')
              ? (_json['patterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          priceInfo: _json.containsKey('priceInfo')
              ? GoogleCloudRetailV2PriceInfo.fromJson(
                  _json['priceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          primaryProductId: _json.containsKey('primaryProductId')
              ? _json['primaryProductId'] as core.String
              : null,
          promotions: _json.containsKey('promotions')
              ? (_json['promotions'] as core.List)
                  .map((value) => GoogleCloudRetailV2Promotion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publishTime: _json.containsKey('publishTime')
              ? _json['publishTime'] as core.String
              : null,
          rating: _json.containsKey('rating')
              ? GoogleCloudRetailV2Rating.fromJson(
                  _json['rating'] as core.Map<core.String, core.dynamic>)
              : null,
          retrievableFields: _json.containsKey('retrievableFields')
              ? _json['retrievableFields'] as core.String
              : null,
          sizes: _json.containsKey('sizes')
              ? (_json['sizes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
          variants: _json.containsKey('variants')
              ? (_json['variants'] as core.List)
                  .map((value) => GoogleCloudRetailV2Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (audience != null) 'audience': audience!,
        if (availability != null) 'availability': availability!,
        if (availableQuantity != null) 'availableQuantity': availableQuantity!,
        if (availableTime != null) 'availableTime': availableTime!,
        if (brands != null) 'brands': brands!,
        if (categories != null) 'categories': categories!,
        if (collectionMemberIds != null)
          'collectionMemberIds': collectionMemberIds!,
        if (colorInfo != null) 'colorInfo': colorInfo!,
        if (conditions != null) 'conditions': conditions!,
        if (description != null) 'description': description!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (fulfillmentInfo != null) 'fulfillmentInfo': fulfillmentInfo!,
        if (gtin != null) 'gtin': gtin!,
        if (id != null) 'id': id!,
        if (images != null) 'images': images!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (materials != null) 'materials': materials!,
        if (name != null) 'name': name!,
        if (patterns != null) 'patterns': patterns!,
        if (priceInfo != null) 'priceInfo': priceInfo!,
        if (primaryProductId != null) 'primaryProductId': primaryProductId!,
        if (promotions != null) 'promotions': promotions!,
        if (publishTime != null) 'publishTime': publishTime!,
        if (rating != null) 'rating': rating!,
        if (retrievableFields != null) 'retrievableFields': retrievableFields!,
        if (sizes != null) 'sizes': sizes!,
        if (tags != null) 'tags': tags!,
        if (title != null) 'title': title!,
        if (ttl != null) 'ttl': ttl!,
        if (type != null) 'type': type!,
        if (uri != null) 'uri': uri!,
        if (variants != null) 'variants': variants!,
      };
}

/// Detailed product information associated with a user event.
class GoogleCloudRetailV2ProductDetail {
  /// Product information.
  ///
  /// Required field(s): * Product.id Optional override field(s): *
  /// Product.price_info If any supported optional fields are provided, we will
  /// treat them as a full override when looking up product information from the
  /// catalog. Thus, it is important to ensure that the overriding fields are
  /// accurate and complete. All other product fields are ignored and instead
  /// populated via catalog lookup after event ingestion.
  ///
  /// Required.
  GoogleCloudRetailV2Product? product;

  /// Quantity of the product associated with the user event.
  ///
  /// For example, this field will be 2 if two products are added to the
  /// shopping cart for `purchase-complete` event. Required for `add-to-cart`
  /// and `purchase-complete` event types.
  core.int? quantity;

  GoogleCloudRetailV2ProductDetail({
    this.product,
    this.quantity,
  });

  GoogleCloudRetailV2ProductDetail.fromJson(core.Map _json)
      : this(
          product: _json.containsKey('product')
              ? GoogleCloudRetailV2Product.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (product != null) 'product': product!,
        if (quantity != null) 'quantity': quantity!,
      };
}

/// The inline source for the input config for ImportProducts method.
class GoogleCloudRetailV2ProductInlineSource {
  /// A list of products to update/create.
  ///
  /// Each product must have a valid Product.id. Recommended max of 100 items.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2Product>? products;

  GoogleCloudRetailV2ProductInlineSource({
    this.products,
  });

  GoogleCloudRetailV2ProductInlineSource.fromJson(core.Map _json)
      : this(
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map((value) => GoogleCloudRetailV2Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (products != null) 'products': products!,
      };
}

/// The input config source for products.
class GoogleCloudRetailV2ProductInputConfig {
  /// BigQuery input source.
  GoogleCloudRetailV2BigQuerySource? bigQuerySource;

  /// Google Cloud Storage location for the input content.
  GoogleCloudRetailV2GcsSource? gcsSource;

  /// The Inline source for the input content for products.
  GoogleCloudRetailV2ProductInlineSource? productInlineSource;

  GoogleCloudRetailV2ProductInputConfig({
    this.bigQuerySource,
    this.gcsSource,
    this.productInlineSource,
  });

  GoogleCloudRetailV2ProductInputConfig.fromJson(core.Map _json)
      : this(
          bigQuerySource: _json.containsKey('bigQuerySource')
              ? GoogleCloudRetailV2BigQuerySource.fromJson(
                  _json['bigQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudRetailV2GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          productInlineSource: _json.containsKey('productInlineSource')
              ? GoogleCloudRetailV2ProductInlineSource.fromJson(
                  _json['productInlineSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (productInlineSource != null)
          'productInlineSource': productInlineSource!,
      };
}

/// Configures what level the product should be uploaded with regards to how
/// users will be send events and how predictions will be made.
class GoogleCloudRetailV2ProductLevelConfig {
  /// The type of Products allowed to be ingested into the catalog.
  ///
  /// Acceptable values are: * `primary` (default): You can ingest Products of
  /// all types. When ingesting a Product, its type will default to
  /// Product.Type.PRIMARY if unset. * `variant` (incompatible with Retail
  /// Search): You can only ingest Product.Type.VARIANT Products. This means
  /// Product.primary_product_id cannot be empty. If this field is set to an
  /// invalid value other than these, an INVALID_ARGUMENT error is returned. If
  /// this field is `variant` and merchant_center_product_id_field is
  /// `itemGroupId`, an INVALID_ARGUMENT error is returned. See
  /// [Product levels](https://cloud.google.com/retail/docs/catalog#product-levels)
  /// for more details.
  core.String? ingestionProductType;

  /// Which field of \[Merchant Center
  /// Product\](/bigquery-transfer/docs/merchant-center-products-schema) should
  /// be imported as Product.id.
  ///
  /// Acceptable values are: * `offerId` (default): Import `offerId` as the
  /// product ID. * `itemGroupId`: Import `itemGroupId` as the product ID.
  /// Notice that Retail API will choose one item from the ones with the same
  /// `itemGroupId`, and use it to represent the item group. If this field is
  /// set to an invalid value other than these, an INVALID_ARGUMENT error is
  /// returned. If this field is `itemGroupId` and ingestion_product_type is
  /// `variant`, an INVALID_ARGUMENT error is returned. See
  /// [Product levels](https://cloud.google.com/retail/docs/catalog#product-levels)
  /// for more details.
  core.String? merchantCenterProductIdField;

  GoogleCloudRetailV2ProductLevelConfig({
    this.ingestionProductType,
    this.merchantCenterProductIdField,
  });

  GoogleCloudRetailV2ProductLevelConfig.fromJson(core.Map _json)
      : this(
          ingestionProductType: _json.containsKey('ingestionProductType')
              ? _json['ingestionProductType'] as core.String
              : null,
          merchantCenterProductIdField:
              _json.containsKey('merchantCenterProductIdField')
                  ? _json['merchantCenterProductIdField'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingestionProductType != null)
          'ingestionProductType': ingestionProductType!,
        if (merchantCenterProductIdField != null)
          'merchantCenterProductIdField': merchantCenterProductIdField!,
      };
}

/// Promotion information.
class GoogleCloudRetailV2Promotion {
  /// ID of the promotion.
  ///
  /// For example, "free gift". The value must be a UTF-8 encoded string with a
  /// length limit of 128 characters, and match the pattern: `a-zA-Z*`. For
  /// example, id0LikeThis or ID_1_LIKE_THIS. Otherwise, an INVALID_ARGUMENT
  /// error is returned. Google Merchant Center property
  /// [promotion](https://support.google.com/merchants/answer/7050148).
  core.String? promotionId;

  GoogleCloudRetailV2Promotion({
    this.promotionId,
  });

  GoogleCloudRetailV2Promotion.fromJson(core.Map _json)
      : this(
          promotionId: _json.containsKey('promotionId')
              ? _json['promotionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (promotionId != null) 'promotionId': promotionId!,
      };
}

/// A transaction represents the entire purchase transaction.
class GoogleCloudRetailV2PurchaseTransaction {
  /// All the costs associated with the products.
  ///
  /// These can be manufacturing costs, shipping expenses not borne by the end
  /// user, or any other costs, such that: * Profit = revenue - tax - cost
  core.double? cost;

  /// Currency code.
  ///
  /// Use three-character ISO-4217 code.
  ///
  /// Required.
  core.String? currencyCode;

  /// The transaction ID with a length limit of 128 characters.
  core.String? id;

  /// Total non-zero revenue or grand total associated with the transaction.
  ///
  /// This value include shipping, tax, or other adjustments to total revenue
  /// that you want to include as part of your revenue calculations.
  ///
  /// Required.
  core.double? revenue;

  /// All the taxes associated with the transaction.
  core.double? tax;

  GoogleCloudRetailV2PurchaseTransaction({
    this.cost,
    this.currencyCode,
    this.id,
    this.revenue,
    this.tax,
  });

  GoogleCloudRetailV2PurchaseTransaction.fromJson(core.Map _json)
      : this(
          cost: _json.containsKey('cost')
              ? (_json['cost'] as core.num).toDouble()
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          revenue: _json.containsKey('revenue')
              ? (_json['revenue'] as core.num).toDouble()
              : null,
          tax: _json.containsKey('tax')
              ? (_json['tax'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cost != null) 'cost': cost!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (id != null) 'id': id!,
        if (revenue != null) 'revenue': revenue!,
        if (tax != null) 'tax': tax!,
      };
}

/// Request message for PurgeUserEvents method.
class GoogleCloudRetailV2PurgeUserEventsRequest {
  /// The filter string to specify the events to be deleted with a length limit
  /// of 5,000 characters.
  ///
  /// Empty string filter is not allowed. The eligible fields for filtering are:
  /// * `eventType`: Double quoted UserEvent.event_type string. * `eventTime`:
  /// in ISO 8601 "zulu" format. * `visitorId`: Double quoted string. Specifying
  /// this will delete all events associated with a visitor. * `userId`: Double
  /// quoted string. Specifying this will delete all events associated with a
  /// user. Examples: * Deleting all events in a time range: `eventTime >
  /// "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z"` *
  /// Deleting specific eventType in time range: `eventTime >
  /// "2012-04-23T18:25:43.511Z" eventType = "detail-page-view"` * Deleting all
  /// events for a specific visitor: `visitorId = "visitor1024"` The filtering
  /// fields are assumed to have an implicit AND.
  ///
  /// Required.
  core.String? filter;

  /// Actually perform the purge.
  ///
  /// If `force` is set to false, the method will return the expected purge
  /// count without deleting any user events.
  core.bool? force;

  GoogleCloudRetailV2PurgeUserEventsRequest({
    this.filter,
    this.force,
  });

  GoogleCloudRetailV2PurgeUserEventsRequest.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          force:
              _json.containsKey('force') ? _json['force'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (force != null) 'force': force!,
      };
}

/// The rating of a Product.
class GoogleCloudRetailV2Rating {
  /// The average rating of the Product.
  ///
  /// The rating is scaled at 1-5. Otherwise, an INVALID_ARGUMENT error is
  /// returned.
  core.double? averageRating;

  /// The total number of ratings.
  ///
  /// This value is independent of the value of rating_histogram. This value
  /// must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  core.int? ratingCount;

  /// List of rating counts per rating value (index = rating - 1).
  ///
  /// The list is empty if there is no rating. If the list is non-empty, its
  /// size is always 5. Otherwise, an INVALID_ARGUMENT error is returned. For
  /// example, \[41, 14, 13, 47, 303\]. It means that the Product got 41 ratings
  /// with 1 star, 14 ratings with 2 star, and so on.
  core.List<core.int>? ratingHistogram;

  GoogleCloudRetailV2Rating({
    this.averageRating,
    this.ratingCount,
    this.ratingHistogram,
  });

  GoogleCloudRetailV2Rating.fromJson(core.Map _json)
      : this(
          averageRating: _json.containsKey('averageRating')
              ? (_json['averageRating'] as core.num).toDouble()
              : null,
          ratingCount: _json.containsKey('ratingCount')
              ? _json['ratingCount'] as core.int
              : null,
          ratingHistogram: _json.containsKey('ratingHistogram')
              ? (_json['ratingHistogram'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageRating != null) 'averageRating': averageRating!,
        if (ratingCount != null) 'ratingCount': ratingCount!,
        if (ratingHistogram != null) 'ratingHistogram': ratingHistogram!,
      };
}

/// Request message for RejoinUserEvents method.
class GoogleCloudRetailV2RejoinUserEventsRequest {
  /// The type of the user event rejoin to define the scope and range of the
  /// user events to be rejoined with the latest product catalog.
  ///
  /// Defaults to USER_EVENT_REJOIN_SCOPE_UNSPECIFIED if this field is not set,
  /// or set to an invalid integer value.
  /// Possible string values are:
  /// - "USER_EVENT_REJOIN_SCOPE_UNSPECIFIED" : Rejoin all events with the
  /// latest product catalog, including both joined events and unjoined events.
  /// - "JOINED_EVENTS" : Only rejoin joined events with the latest product
  /// catalog.
  /// - "UNJOINED_EVENTS" : Only rejoin unjoined events with the latest product
  /// catalog.
  core.String? userEventRejoinScope;

  GoogleCloudRetailV2RejoinUserEventsRequest({
    this.userEventRejoinScope,
  });

  GoogleCloudRetailV2RejoinUserEventsRequest.fromJson(core.Map _json)
      : this(
          userEventRejoinScope: _json.containsKey('userEventRejoinScope')
              ? _json['userEventRejoinScope'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userEventRejoinScope != null)
          'userEventRejoinScope': userEventRejoinScope!,
      };
}

/// Request message for RemoveFulfillmentPlaces method.
class GoogleCloudRetailV2RemoveFulfillmentPlacesRequest {
  /// If set to true, and the Product is not found, the fulfillment information
  /// will still be processed and retained for at most 1 day and processed once
  /// the Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// The IDs for this type, such as the store IDs for "pickup-in-store" or the
  /// region IDs for "same-day-delivery", to be removed for this type.
  ///
  /// At least 1 value is required, and a maximum of 2000 values are allowed.
  /// Each value must be a string with a length limit of 10 characters, matching
  /// the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise,
  /// an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.List<core.String>? placeIds;

  /// The time when the fulfillment updates are issued, used to prevent
  /// out-of-order updates on fulfillment information.
  ///
  /// If not provided, the internal system time will be used.
  core.String? removeTime;

  /// The fulfillment type, including commonly used types (such as pickup in
  /// store and same day delivery), and custom types.
  ///
  /// Supported values: * "pickup-in-store" * "ship-to-store" *
  /// "same-day-delivery" * "next-day-delivery" * "custom-type-1" *
  /// "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If
  /// this field is set to an invalid value other than these, an
  /// INVALID_ARGUMENT error is returned. This field directly corresponds to
  /// Product.fulfillment_info.type.
  ///
  /// Required.
  core.String? type;

  GoogleCloudRetailV2RemoveFulfillmentPlacesRequest({
    this.allowMissing,
    this.placeIds,
    this.removeTime,
    this.type,
  });

  GoogleCloudRetailV2RemoveFulfillmentPlacesRequest.fromJson(core.Map _json)
      : this(
          allowMissing: _json.containsKey('allowMissing')
              ? _json['allowMissing'] as core.bool
              : null,
          placeIds: _json.containsKey('placeIds')
              ? (_json['placeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeTime: _json.containsKey('removeTime')
              ? _json['removeTime'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMissing != null) 'allowMissing': allowMissing!,
        if (placeIds != null) 'placeIds': placeIds!,
        if (removeTime != null) 'removeTime': removeTime!,
        if (type != null) 'type': type!,
      };
}

/// Request message for RemoveLocalInventories method.
class GoogleCloudRetailV2RemoveLocalInventoriesRequest {
  /// If set to true, and the Product is not found, the local inventory removal
  /// request will still be processed and retained for at most 1 day and
  /// processed once the Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// A list of place IDs to have their inventory deleted.
  ///
  /// At most 3000 place IDs are allowed per request.
  ///
  /// Required.
  core.List<core.String>? placeIds;

  /// The time when the inventory deletions are issued.
  ///
  /// Used to prevent out-of-order updates and deletions on local inventory
  /// fields. If not provided, the internal system time will be used.
  core.String? removeTime;

  GoogleCloudRetailV2RemoveLocalInventoriesRequest({
    this.allowMissing,
    this.placeIds,
    this.removeTime,
  });

  GoogleCloudRetailV2RemoveLocalInventoriesRequest.fromJson(core.Map _json)
      : this(
          allowMissing: _json.containsKey('allowMissing')
              ? _json['allowMissing'] as core.bool
              : null,
          placeIds: _json.containsKey('placeIds')
              ? (_json['placeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeTime: _json.containsKey('removeTime')
              ? _json['removeTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMissing != null) 'allowMissing': allowMissing!,
        if (placeIds != null) 'placeIds': placeIds!,
        if (removeTime != null) 'removeTime': removeTime!,
      };
}

/// Request message for SearchService.Search method.
class GoogleCloudRetailV2SearchRequest {
  /// Boost specification to boost certain products.
  ///
  /// See more details at this
  /// [user guide](https://cloud.google.com/retail/docs/boosting). Notice that
  /// if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are
  /// set, the boost conditions from both places are evaluated. If a search
  /// request matches multiple boost conditions, the final boost score is equal
  /// to the sum of the boost scores from all matched boost conditions.
  GoogleCloudRetailV2SearchRequestBoostSpec? boostSpec;

  /// The branch resource name, such as `projects / *
  /// /locations/global/catalogs/default_catalog/branches/0`.
  ///
  /// Use "default_branch" as the branch ID or leave this field empty, to search
  /// products under the default branch.
  core.String? branch;

  /// The default filter that is applied when a user performs a search without
  /// checking any filters on the search page.
  ///
  /// The filter applied to every search request when quality improvement such
  /// as query expansion is needed. For example, if a query does not have enough
  /// results, an expanded query with SearchRequest.canonical_filter will be
  /// returned as a supplement of the original query. This field is strongly
  /// recommended to achieve high search quality. See SearchRequest.filter for
  /// more details about filter syntax.
  core.String? canonicalFilter;

  /// Refer to https://cloud.google.com/retail/docs/configs#dynamic to enable
  /// dynamic facets.
  ///
  /// Do not set this field. The specification for dynamically generated facets.
  /// Notice that only textual facets can be dynamically generated.
  ///
  /// Deprecated.
  GoogleCloudRetailV2SearchRequestDynamicFacetSpec? dynamicFacetSpec;

  /// Facet specifications for faceted search.
  ///
  /// If empty, no facets are returned. A maximum of 100 values are allowed.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  core.List<GoogleCloudRetailV2SearchRequestFacetSpec>? facetSpecs;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the products being filtered.
  ///
  /// Filter expression is case-sensitive. See more details at this
  /// [user guide](https://cloud.google.com/retail/docs/filter-and-order#filter).
  /// If this field is unrecognizable, an INVALID_ARGUMENT is returned.
  core.String? filter;

  /// The labels applied to a resource must meet the following requirements: *
  /// Each resource can have multiple labels, up to a maximum of 64.
  ///
  /// * Each label must be a key-value pair. * Keys have a minimum length of 1
  /// character and a maximum length of 63 characters and cannot be empty.
  /// Values can be empty and have a maximum length of 63 characters. * Keys and
  /// values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes. All characters must use UTF-8 encoding, and
  /// international characters are allowed. * The key portion of a label must be
  /// unique. However, you can use the same key with multiple resources. * Keys
  /// must start with a lowercase letter or international character. See
  /// [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
  /// for more details.
  core.Map<core.String, core.String>? labels;

  /// A 0-indexed integer that specifies the current offset (that is, starting
  /// result location, amongst the Products deemed by the API as relevant) in
  /// search results.
  ///
  /// This field is only considered if page_token is unset. If this field is
  /// negative, an INVALID_ARGUMENT is returned.
  core.int? offset;

  /// The order in which products are returned.
  ///
  /// Products can be ordered by a field in an Product object. Leave it unset if
  /// ordered by relevance. OrderBy expression is case-sensitive. See more
  /// details at this
  /// [user guide](https://cloud.google.com/retail/docs/filter-and-order#order).
  /// If this field is unrecognizable, an INVALID_ARGUMENT is returned.
  core.String? orderBy;

  /// The categories associated with a category page.
  ///
  /// Required for category navigation queries to achieve good search quality.
  /// The format should be the same as UserEvent.page_categories; To represent
  /// full path of category, use '\>' sign to separate different hierarchies. If
  /// '\>' is part of the category name, please replace it with other
  /// character(s). Category pages include special pages such as sales or
  /// promotions. For instance, a special sale page may have the category
  /// hierarchy: "pageCategories" : \["Sales \> 2017 Black Friday Deals"\].
  core.List<core.String>? pageCategories;

  /// Maximum number of Products to return.
  ///
  /// If unspecified, defaults to a reasonable value. The maximum allowed value
  /// is 120. Values above 120 will be coerced to 120. If this field is
  /// negative, an INVALID_ARGUMENT is returned.
  core.int? pageSize;

  /// A page token SearchResponse.next_page_token, received from a previous
  /// SearchService.Search call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to SearchService.Search must match the call that
  /// provided the page token. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? pageToken;

  /// The specification for personalization.
  GoogleCloudRetailV2SearchRequestPersonalizationSpec? personalizationSpec;

  /// Raw search query.
  ///
  /// If this field is empty, the request is considered a category browsing
  /// request and returned results are based on filter and page_categories.
  core.String? query;

  /// The query expansion specification that specifies the conditions under
  /// which query expansion will occur.
  ///
  /// See more details at this
  /// [user guide](https://cloud.google.com/retail/docs/result-size#query_expansion).
  GoogleCloudRetailV2SearchRequestQueryExpansionSpec? queryExpansionSpec;

  /// The search mode of the search request.
  ///
  /// If not specified, a single search request triggers both product search and
  /// faceted search.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : Default value. In this case both product
  /// search and faceted search will be performed. Both
  /// \[SearchResponse.SearchResult\] and \[SearchResponse.Facet\] will be
  /// returned.
  /// - "PRODUCT_SEARCH_ONLY" : Only product search will be performed. The
  /// faceted search will be disabled. Only \[SearchResponse.SearchResult\] will
  /// be returned. \[SearchResponse.Facet\] will not be returned, even if
  /// SearchRequest.facet_specs or SearchRequest.dynamic_facet_spec is set.
  /// - "FACETED_SEARCH_ONLY" : Only faceted search will be performed. The
  /// product search will be disabled. When in this mode, one or both of
  /// SearchRequest.facet_specs and SearchRequest.dynamic_facet_spec should be
  /// set. Otherwise, an INVALID_ARGUMENT error is returned. Only
  /// \[SearchResponse.Facet\] will be returned. \[SearchResponse.SearchResult\]
  /// will not be returned.
  core.String? searchMode;

  /// The spell correction specification that specifies the mode under which
  /// spell correction will take effect.
  GoogleCloudRetailV2SearchRequestSpellCorrectionSpec? spellCorrectionSpec;

  /// User information.
  GoogleCloudRetailV2UserInfo? userInfo;

  /// The keys to fetch and rollup the matching variant Products attributes,
  /// FulfillmentInfo or LocalInventorys attributes.
  ///
  /// The attributes from all the matching variant Products or LocalInventorys
  /// are merged and de-duplicated. Notice that rollup attributes will lead to
  /// extra query latency. Maximum number of keys is 30. For FulfillmentInfo, a
  /// fulfillment type and a fulfillment ID must be provided in the format of
  /// "fulfillmentType.fulfillmentId". E.g., in "pickupInStore.store123",
  /// "pickupInStore" is fulfillment type and "store123" is the store ID.
  /// Supported keys are: * colorFamilies * price * originalPrice * discount *
  /// variantId * inventory(place_id,price) * inventory(place_id,original_price)
  /// * inventory(place_id,attributes.key), where key is any key in the
  /// Product.local_inventories.attributes map. * attributes.key, where key is
  /// any key in the Product.attributes map. * pickupInStore.id, where id is any
  /// FulfillmentInfo.place_ids for FulfillmentInfo.type "pickup-in-store". *
  /// shipToStore.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "ship-to-store". * sameDayDelivery.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type
  /// "same-day-delivery". * nextDayDelivery.id, where id is any
  /// FulfillmentInfo.place_ids for FulfillmentInfo.type "next-day-delivery". *
  /// customFulfillment1.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-1". * customFulfillment2.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-2". *
  /// customFulfillment3.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-3". * customFulfillment4.id, where id is
  /// any FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-4". *
  /// customFulfillment5.id, where id is any FulfillmentInfo.place_ids for
  /// FulfillmentInfo.type "custom-type-5". If this field is set to an invalid
  /// value other than these, an INVALID_ARGUMENT error is returned.
  core.List<core.String>? variantRollupKeys;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// This should be the same identifier as UserEvent.visitor_id. The field must
  /// be a UTF-8 encoded string with a length limit of 128 characters.
  /// Otherwise, an INVALID_ARGUMENT error is returned.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRetailV2SearchRequest({
    this.boostSpec,
    this.branch,
    this.canonicalFilter,
    this.dynamicFacetSpec,
    this.facetSpecs,
    this.filter,
    this.labels,
    this.offset,
    this.orderBy,
    this.pageCategories,
    this.pageSize,
    this.pageToken,
    this.personalizationSpec,
    this.query,
    this.queryExpansionSpec,
    this.searchMode,
    this.spellCorrectionSpec,
    this.userInfo,
    this.variantRollupKeys,
    this.visitorId,
  });

  GoogleCloudRetailV2SearchRequest.fromJson(core.Map _json)
      : this(
          boostSpec: _json.containsKey('boostSpec')
              ? GoogleCloudRetailV2SearchRequestBoostSpec.fromJson(
                  _json['boostSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          branch: _json.containsKey('branch')
              ? _json['branch'] as core.String
              : null,
          canonicalFilter: _json.containsKey('canonicalFilter')
              ? _json['canonicalFilter'] as core.String
              : null,
          dynamicFacetSpec: _json.containsKey('dynamicFacetSpec')
              ? GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromJson(
                  _json['dynamicFacetSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          facetSpecs: _json.containsKey('facetSpecs')
              ? (_json['facetSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchRequestFacetSpec.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          offset:
              _json.containsKey('offset') ? _json['offset'] as core.int : null,
          orderBy: _json.containsKey('orderBy')
              ? _json['orderBy'] as core.String
              : null,
          pageCategories: _json.containsKey('pageCategories')
              ? (_json['pageCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          personalizationSpec: _json.containsKey('personalizationSpec')
              ? GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromJson(
                  _json['personalizationSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          queryExpansionSpec: _json.containsKey('queryExpansionSpec')
              ? GoogleCloudRetailV2SearchRequestQueryExpansionSpec.fromJson(
                  _json['queryExpansionSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          searchMode: _json.containsKey('searchMode')
              ? _json['searchMode'] as core.String
              : null,
          spellCorrectionSpec: _json.containsKey('spellCorrectionSpec')
              ? GoogleCloudRetailV2SearchRequestSpellCorrectionSpec.fromJson(
                  _json['spellCorrectionSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          userInfo: _json.containsKey('userInfo')
              ? GoogleCloudRetailV2UserInfo.fromJson(
                  _json['userInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          variantRollupKeys: _json.containsKey('variantRollupKeys')
              ? (_json['variantRollupKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boostSpec != null) 'boostSpec': boostSpec!,
        if (branch != null) 'branch': branch!,
        if (canonicalFilter != null) 'canonicalFilter': canonicalFilter!,
        if (dynamicFacetSpec != null) 'dynamicFacetSpec': dynamicFacetSpec!,
        if (facetSpecs != null) 'facetSpecs': facetSpecs!,
        if (filter != null) 'filter': filter!,
        if (labels != null) 'labels': labels!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageCategories != null) 'pageCategories': pageCategories!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (personalizationSpec != null)
          'personalizationSpec': personalizationSpec!,
        if (query != null) 'query': query!,
        if (queryExpansionSpec != null)
          'queryExpansionSpec': queryExpansionSpec!,
        if (searchMode != null) 'searchMode': searchMode!,
        if (spellCorrectionSpec != null)
          'spellCorrectionSpec': spellCorrectionSpec!,
        if (userInfo != null) 'userInfo': userInfo!,
        if (variantRollupKeys != null) 'variantRollupKeys': variantRollupKeys!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// Boost specification to boost certain items.
class GoogleCloudRetailV2SearchRequestBoostSpec {
  /// Condition boost specifications.
  ///
  /// If a product matches multiple conditions in the specifictions, boost
  /// scores from these specifications are all applied and combined in a
  /// non-linear way. Maximum number of specifications is 20.
  core.List<GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>?
      conditionBoostSpecs;

  /// Whether to skip boostspec validation.
  ///
  /// If this field is set to true, invalid BoostSpec.condition_boost_specs will
  /// be ignored and valid BoostSpec.condition_boost_specs will still be
  /// applied.
  core.bool? skipBoostSpecValidation;

  GoogleCloudRetailV2SearchRequestBoostSpec({
    this.conditionBoostSpecs,
    this.skipBoostSpecValidation,
  });

  GoogleCloudRetailV2SearchRequestBoostSpec.fromJson(core.Map _json)
      : this(
          conditionBoostSpecs: _json.containsKey('conditionBoostSpecs')
              ? (_json['conditionBoostSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skipBoostSpecValidation: _json.containsKey('skipBoostSpecValidation')
              ? _json['skipBoostSpecValidation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditionBoostSpecs != null)
          'conditionBoostSpecs': conditionBoostSpecs!,
        if (skipBoostSpecValidation != null)
          'skipBoostSpecValidation': skipBoostSpecValidation!,
      };
}

/// Boost applies to products which match a condition.
class GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec {
  /// Strength of the condition boost, which should be in \[-1, 1\].
  ///
  /// Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the
  /// item a big promotion. However, it does not necessarily mean that the
  /// boosted item will be the top result at all times, nor that other items
  /// will be excluded. Results could still be shown even when none of them
  /// matches the condition. And results that are significantly more relevant to
  /// the search query can still trump your heavily favored but irrelevant
  /// items. Setting to -1.0 gives the item a big demotion. However, results
  /// that are deeply relevant might still be shown. The item will have an
  /// upstream battle to get a fairly high ranking, but it is not blocked out
  /// completely. Setting to 0.0 means no boost applied. The boosting condition
  /// is ignored.
  core.double? boost;

  /// An expression which specifies a boost condition.
  ///
  /// The syntax and supported fields are the same as a filter expression. See
  /// SearchRequest.filter for detail syntax and limitations. Examples: * To
  /// boost products with product ID "product_1" or "product_2", and color "Red"
  /// or "Blue": * (id: ANY("product_1", "product_2")) AND (colorFamilies:
  /// ANY("Red","Blue"))
  core.String? condition;

  GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec({
    this.boost,
    this.condition,
  });

  GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec.fromJson(
      core.Map _json)
      : this(
          boost: _json.containsKey('boost')
              ? (_json['boost'] as core.num).toDouble()
              : null,
          condition: _json.containsKey('condition')
              ? _json['condition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boost != null) 'boost': boost!,
        if (condition != null) 'condition': condition!,
      };
}

/// The specifications of dynamically generated facets.
class GoogleCloudRetailV2SearchRequestDynamicFacetSpec {
  /// Mode of the DynamicFacet feature.
  ///
  /// Defaults to Mode.DISABLED if it's unset.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value.
  /// - "DISABLED" : Disable Dynamic Facet.
  /// - "ENABLED" : Automatic mode built by Google Retail Search.
  core.String? mode;

  GoogleCloudRetailV2SearchRequestDynamicFacetSpec({
    this.mode,
  });

  GoogleCloudRetailV2SearchRequestDynamicFacetSpec.fromJson(core.Map _json)
      : this(
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// A facet specification to perform faceted search.
class GoogleCloudRetailV2SearchRequestFacetSpec {
  /// Enables dynamic position for this facet.
  ///
  /// If set to true, the position of this facet among all facets in the
  /// response is determined by Google Retail Search. It will be ordered
  /// together with dynamic facets if dynamic facets is enabled. If set to
  /// false, the position of this facet in the response will be the same as in
  /// the request, and it will be ranked before the facets with dynamic position
  /// enable and all dynamic facets. For example, you may always want to have
  /// rating facet returned in the response, but it's not necessarily to always
  /// display the rating facet at the top. In that case, you can set
  /// enable_dynamic_position to true so that the position of rating facet in
  /// response will be determined by Google Retail Search. Another example,
  /// assuming you have the following facets in the request: * "rating",
  /// enable_dynamic_position = true * "price", enable_dynamic_position = false
  /// * "brands", enable_dynamic_position = false And also you have a dynamic
  /// facets enable, which will generate a facet 'gender'. Then the final order
  /// of the facets in the response can be ("price", "brands", "rating",
  /// "gender") or ("price", "brands", "gender", "rating") depends on how Google
  /// Retail Search orders "gender" and "rating" facets. However, notice that
  /// "price" and "brands" will always be ranked at 1st and 2nd position since
  /// their enable_dynamic_position are false.
  core.bool? enableDynamicPosition;

  /// List of keys to exclude when faceting.
  ///
  /// By default, FacetKey.key is not excluded from the filter unless it is
  /// listed in this field. Listing a facet key in this field allows its values
  /// to appear as facet results, even when they are filtered out of search
  /// results. Using this field does not affect what search results are
  /// returned. For example, suppose there are 100 products with the color facet
  /// "Red" and 200 products with the color facet "Blue". A query containing the
  /// filter "colorFamilies:ANY("Red")" and having "colorFamilies" as
  /// FacetKey.key would by default return only "Red" products in the search
  /// results, and also return "Red" with count 100 as the only color facet.
  /// Although there are also blue products available, "Blue" would not be shown
  /// as an available facet value. If "colorFamilies" is listed in
  /// "excludedFilterKeys", then the query returns the facet values "Red" with
  /// count 100 and "Blue" with count 200, because the "colorFamilies" key is
  /// now excluded from the filter. Because this field doesn't affect search
  /// results, the search results are still correctly filtered to return only
  /// "Red" products. A maximum of 100 values are allowed. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.List<core.String>? excludedFilterKeys;

  /// The facet key specification.
  ///
  /// Required.
  GoogleCloudRetailV2SearchRequestFacetSpecFacetKey? facetKey;

  /// Maximum of facet values that should be returned for this facet.
  ///
  /// If unspecified, defaults to 20. The maximum allowed value is 300. Values
  /// above 300 will be coerced to 300. If this field is negative, an
  /// INVALID_ARGUMENT is returned.
  core.int? limit;

  GoogleCloudRetailV2SearchRequestFacetSpec({
    this.enableDynamicPosition,
    this.excludedFilterKeys,
    this.facetKey,
    this.limit,
  });

  GoogleCloudRetailV2SearchRequestFacetSpec.fromJson(core.Map _json)
      : this(
          enableDynamicPosition: _json.containsKey('enableDynamicPosition')
              ? _json['enableDynamicPosition'] as core.bool
              : null,
          excludedFilterKeys: _json.containsKey('excludedFilterKeys')
              ? (_json['excludedFilterKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          facetKey: _json.containsKey('facetKey')
              ? GoogleCloudRetailV2SearchRequestFacetSpecFacetKey.fromJson(
                  _json['facetKey'] as core.Map<core.String, core.dynamic>)
              : null,
          limit: _json.containsKey('limit') ? _json['limit'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableDynamicPosition != null)
          'enableDynamicPosition': enableDynamicPosition!,
        if (excludedFilterKeys != null)
          'excludedFilterKeys': excludedFilterKeys!,
        if (facetKey != null) 'facetKey': facetKey!,
        if (limit != null) 'limit': limit!,
      };
}

/// Specifies how a facet is computed.
class GoogleCloudRetailV2SearchRequestFacetSpecFacetKey {
  /// Only get facet values that contains the given strings.
  ///
  /// For example, suppose "categories" has three values "Women \> Shoe", "Women
  /// \> Dress" and "Men \> Shoe". If set "contains" to "Shoe", the "categories"
  /// facet will give only "Women \> Shoe" and "Men \> Shoe". Only supported on
  /// textual fields. Maximum is 10.
  core.List<core.String>? contains;

  /// Set only if values should be bucketized into intervals.
  ///
  /// Must be set for facets with numerical values. Must not be set for facet
  /// with text values. Maximum number of intervals is 30.
  core.List<GoogleCloudRetailV2Interval>? intervals;

  /// Supported textual and numerical facet keys in Product object, over which
  /// the facet values are computed.
  ///
  /// Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not
  /// specified: * textual_field = * "brands" * "categories" * "genders" *
  /// "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" *
  /// "materials" * "patterns" * "conditions" * "attributes.key" *
  /// "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" *
  /// "customFulfillment1" * "customFulfillment2" * "customFulfillment3" *
  /// "customFulfillment4" * "customFulfillment5" *
  /// "inventory(place_id,attributes.key)" * numerical_field = * "price" *
  /// "discount" * "rating" * "ratingCount" * "attributes.key" *
  /// "inventory(place_id,price)" * "inventory(place_id,original_price)" *
  /// "inventory(place_id,attributes.key)"
  ///
  /// Required.
  core.String? key;

  /// The order in which Facet.values are returned.
  ///
  /// Allowed values are: * "count desc", which means order by
  /// Facet.FacetValue.count descending. * "value desc", which means order by
  /// Facet.FacetValue.value descending. Only applies to textual facets. If not
  /// set, textual values are sorted in
  /// [natural order](https://en.wikipedia.org/wiki/Natural_sort_order);
  /// numerical intervals are sorted in the order given by
  /// FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the
  /// order given by FacetSpec.FacetKey.restricted_values.
  core.String? orderBy;

  /// Only get facet values that start with the given string prefix.
  ///
  /// For example, suppose "categories" has three values "Women \> Shoe", "Women
  /// \> Dress" and "Men \> Shoe". If set "prefixes" to "Women", the
  /// "categories" facet will give only "Women \> Shoe" and "Women \> Dress".
  /// Only supported on textual fields. Maximum is 10.
  core.List<core.String>? prefixes;

  /// The query that is used to compute facet for the given facet key.
  ///
  /// When provided, it will override the default behavior of facet computation.
  /// The query syntax is the same as a filter expression. See
  /// SearchRequest.filter for detail syntax and limitations. Notice that there
  /// is no limitation on FacetKey.key when query is specified. In the response,
  /// FacetValue.value will be always "1" and FacetValue.count will be the
  /// number of results that matches the query. For example, you can set a
  /// customized facet for "shipToStore", where FacetKey.key is
  /// "customizedShipToStore", and FacetKey.query is "availability:
  /// ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet will
  /// count the products that are both in stock and ship to store "123".
  core.String? query;

  /// Only get facet for the given restricted values.
  ///
  /// For example, when using "pickupInStore" as key and set restricted values
  /// to \["store123", "store456"\], only facets for "store123" and "store456"
  /// are returned. Only supported on textual fields and fulfillments. Maximum
  /// is 20. Must be set for the fulfillment facet keys: * pickupInStore *
  /// shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 *
  /// customFulfillment2 * customFulfillment3 * customFulfillment4 *
  /// customFulfillment5
  core.List<core.String>? restrictedValues;

  GoogleCloudRetailV2SearchRequestFacetSpecFacetKey({
    this.contains,
    this.intervals,
    this.key,
    this.orderBy,
    this.prefixes,
    this.query,
    this.restrictedValues,
  });

  GoogleCloudRetailV2SearchRequestFacetSpecFacetKey.fromJson(core.Map _json)
      : this(
          contains: _json.containsKey('contains')
              ? (_json['contains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          intervals: _json.containsKey('intervals')
              ? (_json['intervals'] as core.List)
                  .map((value) => GoogleCloudRetailV2Interval.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          orderBy: _json.containsKey('orderBy')
              ? _json['orderBy'] as core.String
              : null,
          prefixes: _json.containsKey('prefixes')
              ? (_json['prefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          restrictedValues: _json.containsKey('restrictedValues')
              ? (_json['restrictedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contains != null) 'contains': contains!,
        if (intervals != null) 'intervals': intervals!,
        if (key != null) 'key': key!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (prefixes != null) 'prefixes': prefixes!,
        if (query != null) 'query': query!,
        if (restrictedValues != null) 'restrictedValues': restrictedValues!,
      };
}

/// The specification for personalization.
class GoogleCloudRetailV2SearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value. Defaults to Mode.AUTO.
  /// - "AUTO" : Let CRS decide whether to use personalization.
  /// - "DISABLED" : Disable personalization.
  core.String? mode;

  GoogleCloudRetailV2SearchRequestPersonalizationSpec({
    this.mode,
  });

  GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromJson(core.Map _json)
      : this(
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// Specification to determine under which conditions query expansion should
/// occur.
class GoogleCloudRetailV2SearchRequestQueryExpansionSpec {
  /// The condition under which query expansion should occur.
  ///
  /// Default to Condition.DISABLED.
  /// Possible string values are:
  /// - "CONDITION_UNSPECIFIED" : Unspecified query expansion condition. This
  /// defaults to Condition.DISABLED.
  /// - "DISABLED" : Disabled query expansion. Only the exact search query is
  /// used, even if SearchResponse.total_size is zero.
  /// - "AUTO" : Automatic query expansion built by Google Retail Search.
  core.String? condition;

  /// Whether to pin unexpanded results.
  ///
  /// If this field is set to true, unexpanded products are always at the top of
  /// the search results, followed by the expanded results.
  core.bool? pinUnexpandedResults;

  GoogleCloudRetailV2SearchRequestQueryExpansionSpec({
    this.condition,
    this.pinUnexpandedResults,
  });

  GoogleCloudRetailV2SearchRequestQueryExpansionSpec.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? _json['condition'] as core.String
              : null,
          pinUnexpandedResults: _json.containsKey('pinUnexpandedResults')
              ? _json['pinUnexpandedResults'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (pinUnexpandedResults != null)
          'pinUnexpandedResults': pinUnexpandedResults!,
      };
}

/// The specification for query spell correction.
class GoogleCloudRetailV2SearchRequestSpellCorrectionSpec {
  /// The mode under which spell correction should take effect to replace the
  /// original search query.
  ///
  /// Default to Mode.AUTO.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified spell correction mode. This defaults to
  /// Mode.AUTO.
  /// - "SUGGESTION_ONLY" : Google Retail Search will try to find a spell
  /// suggestion if there is any and put in the SearchResponse.corrected_query.
  /// The spell suggestion will not be used as the search query.
  /// - "AUTO" : Automatic spell correction built by Google Retail Search.
  /// Search will be based on the corrected query if found.
  core.String? mode;

  GoogleCloudRetailV2SearchRequestSpellCorrectionSpec({
    this.mode,
  });

  GoogleCloudRetailV2SearchRequestSpellCorrectionSpec.fromJson(core.Map _json)
      : this(
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// Response message for SearchService.Search method.
class GoogleCloudRetailV2SearchResponse {
  /// The fully qualified resource name of applied
  /// [controls](https://cloud.google.com/retail/docs/serving-control-rules).
  core.List<core.String>? appliedControls;

  /// A unique search token.
  ///
  /// This should be included in the UserEvent logs resulting from this search,
  /// which enables accurate attribution of search model performance.
  core.String? attributionToken;

  /// Contains the spell corrected query, if found.
  ///
  /// If the spell correction type is AUTOMATIC, then the search results are
  /// based on corrected_query. Otherwise the original query will be used for
  /// search.
  core.String? correctedQuery;

  /// Results of facets requested by user.
  core.List<GoogleCloudRetailV2SearchResponseFacet>? facets;

  /// The invalid SearchRequest.BoostSpec.condition_boost_specs that are not
  /// applied during serving.
  core.List<GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec>?
      invalidConditionBoostSpecs;

  /// A token that can be sent as SearchRequest.page_token to retrieve the next
  /// page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Query expansion information for the returned results.
  GoogleCloudRetailV2SearchResponseQueryExpansionInfo? queryExpansionInfo;

  /// The URI of a customer-defined redirect page.
  ///
  /// If redirect action is triggered, no search is performed, and only
  /// redirect_uri and attribution_token are set in the response.
  core.String? redirectUri;

  /// A list of matched items.
  ///
  /// The order represents the ranking.
  core.List<GoogleCloudRetailV2SearchResponseSearchResult>? results;

  /// The estimated total count of matched items irrespective of pagination.
  ///
  /// The count of results returned by pagination may be less than the
  /// total_size that matches.
  core.int? totalSize;

  GoogleCloudRetailV2SearchResponse({
    this.appliedControls,
    this.attributionToken,
    this.correctedQuery,
    this.facets,
    this.invalidConditionBoostSpecs,
    this.nextPageToken,
    this.queryExpansionInfo,
    this.redirectUri,
    this.results,
    this.totalSize,
  });

  GoogleCloudRetailV2SearchResponse.fromJson(core.Map _json)
      : this(
          appliedControls: _json.containsKey('appliedControls')
              ? (_json['appliedControls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          attributionToken: _json.containsKey('attributionToken')
              ? _json['attributionToken'] as core.String
              : null,
          correctedQuery: _json.containsKey('correctedQuery')
              ? _json['correctedQuery'] as core.String
              : null,
          facets: _json.containsKey('facets')
              ? (_json['facets'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchResponseFacet.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          invalidConditionBoostSpecs: _json
                  .containsKey('invalidConditionBoostSpecs')
              ? (_json['invalidConditionBoostSpecs'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchRequestBoostSpecConditionBoostSpec
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          queryExpansionInfo: _json.containsKey('queryExpansionInfo')
              ? GoogleCloudRetailV2SearchResponseQueryExpansionInfo.fromJson(
                  _json['queryExpansionInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          redirectUri: _json.containsKey('redirectUri')
              ? _json['redirectUri'] as core.String
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchResponseSearchResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliedControls != null) 'appliedControls': appliedControls!,
        if (attributionToken != null) 'attributionToken': attributionToken!,
        if (correctedQuery != null) 'correctedQuery': correctedQuery!,
        if (facets != null) 'facets': facets!,
        if (invalidConditionBoostSpecs != null)
          'invalidConditionBoostSpecs': invalidConditionBoostSpecs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (queryExpansionInfo != null)
          'queryExpansionInfo': queryExpansionInfo!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
        if (results != null) 'results': results!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A facet result.
class GoogleCloudRetailV2SearchResponseFacet {
  /// Whether the facet is dynamically generated.
  core.bool? dynamicFacet;

  /// The key for this facet.
  ///
  /// E.g., "colorFamilies" or "price" or "attributes.attr1".
  core.String? key;

  /// The facet values for this field.
  core.List<GoogleCloudRetailV2SearchResponseFacetFacetValue>? values;

  GoogleCloudRetailV2SearchResponseFacet({
    this.dynamicFacet,
    this.key,
    this.values,
  });

  GoogleCloudRetailV2SearchResponseFacet.fromJson(core.Map _json)
      : this(
          dynamicFacet: _json.containsKey('dynamicFacet')
              ? _json['dynamicFacet'] as core.bool
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) =>
                      GoogleCloudRetailV2SearchResponseFacetFacetValue.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicFacet != null) 'dynamicFacet': dynamicFacet!,
        if (key != null) 'key': key!,
        if (values != null) 'values': values!,
      };
}

/// A facet value which contains value names and their count.
class GoogleCloudRetailV2SearchResponseFacetFacetValue {
  /// Number of items that have this facet value.
  core.String? count;

  /// Interval value for a facet, such as \[10, 20) for facet "price".
  GoogleCloudRetailV2Interval? interval;

  /// Text value of a facet, such as "Black" for facet "colorFamilies".
  core.String? value;

  GoogleCloudRetailV2SearchResponseFacetFacetValue({
    this.count,
    this.interval,
    this.value,
  });

  GoogleCloudRetailV2SearchResponseFacetFacetValue.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          interval: _json.containsKey('interval')
              ? GoogleCloudRetailV2Interval.fromJson(
                  _json['interval'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (interval != null) 'interval': interval!,
        if (value != null) 'value': value!,
      };
}

/// Information describing query expansion including whether expansion has
/// occurred.
class GoogleCloudRetailV2SearchResponseQueryExpansionInfo {
  /// Bool describing whether query expansion has occurred.
  core.bool? expandedQuery;

  /// Number of pinned results.
  ///
  /// This field will only be set when expansion happens and
  /// SearchRequest.QueryExpansionSpec.pin_unexpanded_results is set to true.
  core.String? pinnedResultCount;

  GoogleCloudRetailV2SearchResponseQueryExpansionInfo({
    this.expandedQuery,
    this.pinnedResultCount,
  });

  GoogleCloudRetailV2SearchResponseQueryExpansionInfo.fromJson(core.Map _json)
      : this(
          expandedQuery: _json.containsKey('expandedQuery')
              ? _json['expandedQuery'] as core.bool
              : null,
          pinnedResultCount: _json.containsKey('pinnedResultCount')
              ? _json['pinnedResultCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expandedQuery != null) 'expandedQuery': expandedQuery!,
        if (pinnedResultCount != null) 'pinnedResultCount': pinnedResultCount!,
      };
}

/// Represents the search results.
class GoogleCloudRetailV2SearchResponseSearchResult {
  /// Product.id of the searched Product.
  core.String? id;

  /// The count of matched variant Products.
  core.int? matchingVariantCount;

  /// If a variant Product matches the search query, this map indicates which
  /// Product fields are matched.
  ///
  /// The key is the Product.name, the value is a field mask of the matched
  /// Product fields. If matched attributes cannot be determined, this map will
  /// be empty. For example, a key "sku1" with field mask "products.color_info"
  /// indicates there is a match between "sku1" ColorInfo and the query.
  core.Map<core.String, core.String>? matchingVariantFields;

  /// The product data snippet in the search response.
  ///
  /// Only Product.name is guaranteed to be populated. Product.variants contains
  /// the product variants that match the search query. If there are multiple
  /// product variants matching the query, top 5 most relevant product variants
  /// are returned and ordered by relevancy. If relevancy can be deternmined,
  /// use matching_variant_fields to look up matched product variants fields. If
  /// relevancy cannot be determined, e.g. when searching "shoe" all products in
  /// a shoe product can be a match, 5 product variants are returned but order
  /// is meaningless.
  GoogleCloudRetailV2Product? product;

  /// The rollup matching variant Product attributes.
  ///
  /// The key is one of the SearchRequest.variant_rollup_keys. The values are
  /// the merged and de-duplicated Product attributes. Notice that the rollup
  /// values are respect filter. For example, when filtering by
  /// "colorFamilies:ANY(\"red\")" and rollup "colorFamilies", only "red" is
  /// returned. For textual and numerical attributes, the rollup values is a
  /// list of string or double values with type google.protobuf.ListValue. For
  /// example, if there are two variants with colors "red" and "blue", the
  /// rollup values are { key: "colorFamilies" value { list_value { values {
  /// string_value: "red" } values { string_value: "blue" } } } } For
  /// FulfillmentInfo, the rollup values is a double value with type
  /// google.protobuf.Value. For example, `{key: "pickupInStore.store1" value {
  /// number_value: 10 }}` means a there are 10 variants in this product are
  /// available in the store "store1".
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variantRollupValues;

  GoogleCloudRetailV2SearchResponseSearchResult({
    this.id,
    this.matchingVariantCount,
    this.matchingVariantFields,
    this.product,
    this.variantRollupValues,
  });

  GoogleCloudRetailV2SearchResponseSearchResult.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          matchingVariantCount: _json.containsKey('matchingVariantCount')
              ? _json['matchingVariantCount'] as core.int
              : null,
          matchingVariantFields: _json.containsKey('matchingVariantFields')
              ? (_json['matchingVariantFields']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          product: _json.containsKey('product')
              ? GoogleCloudRetailV2Product.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
              : null,
          variantRollupValues: _json.containsKey('variantRollupValues')
              ? _json['variantRollupValues']
                  as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (matchingVariantCount != null)
          'matchingVariantCount': matchingVariantCount!,
        if (matchingVariantFields != null)
          'matchingVariantFields': matchingVariantFields!,
        if (product != null) 'product': product!,
        if (variantRollupValues != null)
          'variantRollupValues': variantRollupValues!,
      };
}

/// Request message to set a specified branch as new default_branch.
class GoogleCloudRetailV2SetDefaultBranchRequest {
  /// The final component of the resource name of a branch.
  ///
  /// This field must be one of "0", "1" or "2". Otherwise, an INVALID_ARGUMENT
  /// error is returned. If there are no sufficient active products in the
  /// targeted branch and force is not set, a FAILED_PRECONDITION error is
  /// returned.
  core.String? branchId;

  /// If set to true, it permits switching to a branch with branch_id even if it
  /// has no sufficient active products.
  core.bool? force;

  /// Some note on this request, this can be retrieved by
  /// CatalogService.GetDefaultBranch before next valid default branch set
  /// occurs.
  ///
  /// This field must be a UTF-8 encoded string with a length limit of 1,000
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? note;

  GoogleCloudRetailV2SetDefaultBranchRequest({
    this.branchId,
    this.force,
    this.note,
  });

  GoogleCloudRetailV2SetDefaultBranchRequest.fromJson(core.Map _json)
      : this(
          branchId: _json.containsKey('branchId')
              ? _json['branchId'] as core.String
              : null,
          force:
              _json.containsKey('force') ? _json['force'] as core.bool : null,
          note: _json.containsKey('note') ? _json['note'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branchId != null) 'branchId': branchId!,
        if (force != null) 'force': force!,
        if (note != null) 'note': note!,
      };
}

/// Request message for SetInventory method.
class GoogleCloudRetailV2SetInventoryRequest {
  /// If set to true, and the Product with name Product.name is not found, the
  /// inventory update will still be processed and retained for at most 1 day
  /// until the Product is created.
  ///
  /// If set to false, a NOT_FOUND error is returned if the Product is not
  /// found.
  core.bool? allowMissing;

  /// The inventory information to update.
  ///
  /// The allowable fields to update are: * Product.price_info *
  /// Product.availability * Product.available_quantity *
  /// Product.fulfillment_info The updated inventory fields must be specified in
  /// SetInventoryRequest.set_mask. If SetInventoryRequest.inventory.name is
  /// empty or invalid, an INVALID_ARGUMENT error is returned. If the caller
  /// does not have permission to update the Product named in Product.name,
  /// regardless of whether or not it exists, a PERMISSION_DENIED error is
  /// returned. If the Product to update does not have existing inventory
  /// information, the provided inventory information will be inserted. If the
  /// Product to update has existing inventory information, the provided
  /// inventory information will be merged while respecting the last update time
  /// for each inventory field, using the provided or default value for
  /// SetInventoryRequest.set_time. The caller can replace place IDs for a
  /// subset of fulfillment types in the following ways: * Adds
  /// "fulfillment_info" in SetInventoryRequest.set_mask * Specifies only the
  /// desired fulfillment types and corresponding place IDs to update in
  /// SetInventoryRequest.inventory.fulfillment_info The caller can clear all
  /// place IDs from a subset of fulfillment types in the following ways: * Adds
  /// "fulfillment_info" in SetInventoryRequest.set_mask * Specifies only the
  /// desired fulfillment types to clear in
  /// SetInventoryRequest.inventory.fulfillment_info * Checks that only the
  /// desired fulfillment info types have empty
  /// SetInventoryRequest.inventory.fulfillment_info.place_ids The last update
  /// time is recorded for the following inventory fields: * Product.price_info
  /// * Product.availability * Product.available_quantity *
  /// Product.fulfillment_info If a full overwrite of inventory information
  /// while ignoring timestamps is needed, UpdateProduct should be invoked
  /// instead.
  ///
  /// Required.
  GoogleCloudRetailV2Product? inventory;

  /// Indicates which inventory fields in the provided Product to update.
  ///
  /// At least one field must be provided. If an unsupported or unknown field is
  /// provided, an INVALID_ARGUMENT error is returned and the entire update will
  /// be ignored.
  core.String? setMask;

  /// The time when the request is issued, used to prevent out-of-order updates
  /// on inventory fields with the last update time recorded.
  ///
  /// If not provided, the internal system time will be used.
  core.String? setTime;

  GoogleCloudRetailV2SetInventoryRequest({
    this.allowMissing,
    this.inventory,
    this.setMask,
    this.setTime,
  });

  GoogleCloudRetailV2SetInventoryRequest.fromJson(core.Map _json)
      : this(
          allowMissing: _json.containsKey('allowMissing')
              ? _json['allowMissing'] as core.bool
              : null,
          inventory: _json.containsKey('inventory')
              ? GoogleCloudRetailV2Product.fromJson(
                  _json['inventory'] as core.Map<core.String, core.dynamic>)
              : null,
          setMask: _json.containsKey('setMask')
              ? _json['setMask'] as core.String
              : null,
          setTime: _json.containsKey('setTime')
              ? _json['setTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMissing != null) 'allowMissing': allowMissing!,
        if (inventory != null) 'inventory': inventory!,
        if (setMask != null) 'setMask': setMask!,
        if (setTime != null) 'setTime': setTime!,
      };
}

/// UserEvent captures all metadata information Retail API needs to know about
/// how end users interact with customers' website.
class GoogleCloudRetailV2UserEvent {
  /// Extra user event features to include in the recommendation model.
  ///
  /// If you provide custom attributes for ingested user events, also include
  /// them in the user events that you associate with prediction requests.
  /// Custom attribute formatting must be consistent between imported events and
  /// events provided with prediction requests. This lets the Retail API use
  /// those custom attributes when training models and serving predictions,
  /// which helps improve recommendation quality. This field needs to pass all
  /// below criteria, otherwise an INVALID_ARGUMENT error is returned: * The key
  /// must be a UTF-8 encoded string with a length limit of 5,000 characters. *
  /// For text attributes, at most 400 values are allowed. Empty values are not
  /// allowed. Each value must be a UTF-8 encoded string with a length limit of
  /// 256 characters. * For number attributes, at most 400 values are allowed.
  /// For product recommendations, an example of extra user information is
  /// traffic_channel, which is how a user arrives at the site. Users can arrive
  /// at the site by coming to the site directly, coming through Google search,
  /// or in other ways.
  core.Map<core.String, GoogleCloudRetailV2CustomAttribute>? attributes;

  /// Highly recommended for user events that are the result of
  /// PredictionService.Predict.
  ///
  /// This field enables accurate attribution of recommendation model
  /// performance. The value must be a valid PredictResponse.attribution_token
  /// for user events that are the result of PredictionService.Predict. The
  /// value must be a valid SearchResponse.attribution_token for user events
  /// that are the result of SearchService.Search. This token enables us to
  /// accurately attribute page view or purchase back to the event and the
  /// particular predict response containing this clicked/purchased product. If
  /// user clicks on product K in the recommendation results, pass
  /// PredictResponse.attribution_token as a URL parameter to product K's page.
  /// When recording events on product K's page, log the
  /// PredictResponse.attribution_token to this field.
  core.String? attributionToken;

  /// The ID or name of the associated shopping cart.
  ///
  /// This ID is used to associate multiple items added or present in the cart
  /// before purchase. This can only be set for `add-to-cart`,
  /// `purchase-complete`, or `shopping-cart-page-view` events.
  core.String? cartId;

  /// The main auto-completion details related to the event.
  ///
  /// This field should be set for `search` event when autocomplete function is
  /// enabled and the user clicks a suggestion for search.
  GoogleCloudRetailV2CompletionDetail? completionDetail;

  /// Only required for UserEventService.ImportUserEvents method.
  ///
  /// Timestamp of when the user event happened.
  core.String? eventTime;

  /// User event type.
  ///
  /// Allowed values are: * `add-to-cart`: Products being added to cart. *
  /// `category-page-view`: Special pages such as sale or promotion pages
  /// viewed. * `detail-page-view`: Products detail page viewed. *
  /// `home-page-view`: Homepage viewed. * `promotion-offered`: Promotion is
  /// offered to a user. * `promotion-not-offered`: Promotion is not offered to
  /// a user. * `purchase-complete`: User finishing a purchase. * `search`:
  /// Product search. * `shopping-cart-page-view`: User viewing a shopping cart.
  ///
  /// Required.
  core.String? eventType;

  /// A list of identifiers for the independent experiment groups this user
  /// event belongs to.
  ///
  /// This is used to distinguish between user events associated with different
  /// experiment setups (e.g. using Retail API, using different recommendation
  /// models).
  core.List<core.String>? experimentIds;

  /// The filter syntax consists of an expression language for constructing a
  /// predicate from one or more fields of the products being filtered.
  ///
  /// See SearchRequest.filter for definition and syntax. The value must be a
  /// UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
  /// an INVALID_ARGUMENT error is returned.
  core.String? filter;

  /// An integer that specifies the current offset for pagination (the 0-indexed
  /// starting location, amongst the products deemed by the API as relevant).
  ///
  /// See SearchRequest.offset for definition. If this field is negative, an
  /// INVALID_ARGUMENT is returned. This can only be set for `search` events.
  /// Other event types should not set this field. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.int? offset;

  /// The order in which products are returned.
  ///
  /// See SearchRequest.order_by for definition and syntax. The value must be a
  /// UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
  /// an INVALID_ARGUMENT error is returned. This can only be set for `search`
  /// events. Other event types should not set this field. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  core.String? orderBy;

  /// The categories associated with a category page.
  ///
  /// To represent full path of category, use '\>' sign to separate different
  /// hierarchies. If '\>' is part of the category name, please replace it with
  /// other character(s). Category pages include special pages such as sales or
  /// promotions. For instance, a special sale page may have the category
  /// hierarchy: "pageCategories" : \["Sales \> 2017 Black Friday Deals"\].
  /// Required for `category-page-view` events. At least one of search_query or
  /// page_categories is required for `search` events. Other event types should
  /// not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  core.List<core.String>? pageCategories;

  /// A unique ID of a web page view.
  ///
  /// This should be kept the same for all user events triggered from the same
  /// pageview. For example, an item detail page view could trigger multiple
  /// events as the user is browsing the page. The `pageViewId` property should
  /// be kept the same for all these events so that they can be grouped together
  /// properly. When using the client side event reporting with JavaScript pixel
  /// and Google Tag Manager, this value is filled in automatically.
  core.String? pageViewId;

  /// The main product details related to the event.
  ///
  /// This field is optional except for the following event types: *
  /// `add-to-cart` * `detail-page-view` * `purchase-complete` In a `search`
  /// event, this field represents the products returned to the end user on the
  /// current page (the end user may have not finished browsing the whole page
  /// yet). When a new page is returned to the end user, after
  /// pagination/filtering/ordering even for the same query, a new `search`
  /// event with different product_details is desired. The end user may have not
  /// finished browsing the whole page yet.
  core.List<GoogleCloudRetailV2ProductDetail>? productDetails;

  /// A transaction represents the entire purchase transaction.
  ///
  /// Required for `purchase-complete` events. Other event types should not set
  /// this field. Otherwise, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2PurchaseTransaction? purchaseTransaction;

  /// The referrer URL of the current page.
  ///
  /// When using the client side event reporting with JavaScript pixel and
  /// Google Tag Manager, this value is filled in automatically.
  core.String? referrerUri;

  /// The user's search query.
  ///
  /// See SearchRequest.query for definition. The value must be a UTF-8 encoded
  /// string with a length limit of 5,000 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned. At least one of search_query or
  /// page_categories is required for `search` events. Other event types should
  /// not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? searchQuery;

  /// A unique identifier for tracking a visitor session with a length limit of
  /// 128 bytes.
  ///
  /// A session is an aggregation of an end user behavior in a time span. A
  /// general guideline to populate the sesion_id: 1. If user has no activity
  /// for 30 min, a new session_id should be assigned. 2. The session_id should
  /// be unique across users, suggest use uuid or add visitor_id as prefix.
  core.String? sessionId;

  /// Complete URL (window.location.href) of the user's current page.
  ///
  /// When using the client side event reporting with JavaScript pixel and
  /// Google Tag Manager, this value is filled in automatically. Maximum length
  /// 5,000 characters.
  core.String? uri;

  /// User information.
  GoogleCloudRetailV2UserInfo? userInfo;

  /// A unique identifier for tracking visitors.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor log in/out of the website.
  /// Don't set the field to the same fixed ID for different users. This mixes
  /// the event history of those users together, which results in degraded model
  /// quality. The field must be a UTF-8 encoded string with a length limit of
  /// 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. The
  /// field should not contain PII or user-data. We recommend to use Google
  /// Analytics
  /// [Client ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId)
  /// for this field.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRetailV2UserEvent({
    this.attributes,
    this.attributionToken,
    this.cartId,
    this.completionDetail,
    this.eventTime,
    this.eventType,
    this.experimentIds,
    this.filter,
    this.offset,
    this.orderBy,
    this.pageCategories,
    this.pageViewId,
    this.productDetails,
    this.purchaseTransaction,
    this.referrerUri,
    this.searchQuery,
    this.sessionId,
    this.uri,
    this.userInfo,
    this.visitorId,
  });

  GoogleCloudRetailV2UserEvent.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRetailV2CustomAttribute.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          attributionToken: _json.containsKey('attributionToken')
              ? _json['attributionToken'] as core.String
              : null,
          cartId: _json.containsKey('cartId')
              ? _json['cartId'] as core.String
              : null,
          completionDetail: _json.containsKey('completionDetail')
              ? GoogleCloudRetailV2CompletionDetail.fromJson(
                  _json['completionDetail']
                      as core.Map<core.String, core.dynamic>)
              : null,
          eventTime: _json.containsKey('eventTime')
              ? _json['eventTime'] as core.String
              : null,
          eventType: _json.containsKey('eventType')
              ? _json['eventType'] as core.String
              : null,
          experimentIds: _json.containsKey('experimentIds')
              ? (_json['experimentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          offset:
              _json.containsKey('offset') ? _json['offset'] as core.int : null,
          orderBy: _json.containsKey('orderBy')
              ? _json['orderBy'] as core.String
              : null,
          pageCategories: _json.containsKey('pageCategories')
              ? (_json['pageCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pageViewId: _json.containsKey('pageViewId')
              ? _json['pageViewId'] as core.String
              : null,
          productDetails: _json.containsKey('productDetails')
              ? (_json['productDetails'] as core.List)
                  .map((value) => GoogleCloudRetailV2ProductDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseTransaction: _json.containsKey('purchaseTransaction')
              ? GoogleCloudRetailV2PurchaseTransaction.fromJson(
                  _json['purchaseTransaction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          referrerUri: _json.containsKey('referrerUri')
              ? _json['referrerUri'] as core.String
              : null,
          searchQuery: _json.containsKey('searchQuery')
              ? _json['searchQuery'] as core.String
              : null,
          sessionId: _json.containsKey('sessionId')
              ? _json['sessionId'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
          userInfo: _json.containsKey('userInfo')
              ? GoogleCloudRetailV2UserInfo.fromJson(
                  _json['userInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (attributionToken != null) 'attributionToken': attributionToken!,
        if (cartId != null) 'cartId': cartId!,
        if (completionDetail != null) 'completionDetail': completionDetail!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (eventType != null) 'eventType': eventType!,
        if (experimentIds != null) 'experimentIds': experimentIds!,
        if (filter != null) 'filter': filter!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageCategories != null) 'pageCategories': pageCategories!,
        if (pageViewId != null) 'pageViewId': pageViewId!,
        if (productDetails != null) 'productDetails': productDetails!,
        if (purchaseTransaction != null)
          'purchaseTransaction': purchaseTransaction!,
        if (referrerUri != null) 'referrerUri': referrerUri!,
        if (searchQuery != null) 'searchQuery': searchQuery!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (uri != null) 'uri': uri!,
        if (userInfo != null) 'userInfo': userInfo!,
        if (visitorId != null) 'visitorId': visitorId!,
      };
}

/// The inline source for the input config for ImportUserEvents method.
class GoogleCloudRetailV2UserEventInlineSource {
  /// A list of user events to import.
  ///
  /// Recommended max of 10k items.
  ///
  /// Required.
  core.List<GoogleCloudRetailV2UserEvent>? userEvents;

  GoogleCloudRetailV2UserEventInlineSource({
    this.userEvents,
  });

  GoogleCloudRetailV2UserEventInlineSource.fromJson(core.Map _json)
      : this(
          userEvents: _json.containsKey('userEvents')
              ? (_json['userEvents'] as core.List)
                  .map((value) => GoogleCloudRetailV2UserEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userEvents != null) 'userEvents': userEvents!,
      };
}

/// The input config source for user events.
class GoogleCloudRetailV2UserEventInputConfig {
  /// BigQuery input source.
  ///
  /// Required.
  GoogleCloudRetailV2BigQuerySource? bigQuerySource;

  /// Google Cloud Storage location for the input content.
  ///
  /// Required.
  GoogleCloudRetailV2GcsSource? gcsSource;

  /// The Inline source for the input content for UserEvents.
  ///
  /// Required.
  GoogleCloudRetailV2UserEventInlineSource? userEventInlineSource;

  GoogleCloudRetailV2UserEventInputConfig({
    this.bigQuerySource,
    this.gcsSource,
    this.userEventInlineSource,
  });

  GoogleCloudRetailV2UserEventInputConfig.fromJson(core.Map _json)
      : this(
          bigQuerySource: _json.containsKey('bigQuerySource')
              ? GoogleCloudRetailV2BigQuerySource.fromJson(
                  _json['bigQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudRetailV2GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          userEventInlineSource: _json.containsKey('userEventInlineSource')
              ? GoogleCloudRetailV2UserEventInlineSource.fromJson(
                  _json['userEventInlineSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (userEventInlineSource != null)
          'userEventInlineSource': userEventInlineSource!,
      };
}

/// Information of an end user.
class GoogleCloudRetailV2UserInfo {
  /// True if the request is made directly from the end user, in which case the
  /// ip_address and user_agent can be populated from the HTTP request.
  ///
  /// This flag should be set only if the API request is made directly from the
  /// end user such as a mobile app (and not if a gateway or a server is
  /// processing and pushing the user events). This should not be set when using
  /// the JavaScript tag in UserEventService.CollectUserEvent.
  core.bool? directUserRequest;

  /// The end user's IP address.
  ///
  /// This field is used to extract location information for personalization.
  /// This field must be either an IPv4 address (e.g. "104.133.9.80") or an IPv6
  /// address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334"). Otherwise, an
  /// INVALID_ARGUMENT error is returned. This should not be set when: * setting
  /// SearchRequest.user_info. * using the JavaScript tag in
  /// UserEventService.CollectUserEvent or if direct_user_request is set.
  core.String? ipAddress;

  /// User agent as included in the HTTP header.
  ///
  /// Required for getting SearchResponse.sponsored_results. The field must be a
  /// UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
  /// an INVALID_ARGUMENT error is returned. This should not be set when using
  /// the client side event reporting with GTM or JavaScript tag in
  /// UserEventService.CollectUserEvent or if direct_user_request is set.
  core.String? userAgent;

  /// Highly recommended for logged-in users.
  ///
  /// Unique identifier for logged-in user, such as a user name. Don't set for
  /// anonymous users. Always use a hashed value for this ID. Don't set the
  /// field to the same fixed ID for different users. This mixes the event
  /// history of those users together, which results in degraded model quality.
  /// The field must be a UTF-8 encoded string with a length limit of 128
  /// characters. Otherwise, an INVALID_ARGUMENT error is returned.
  core.String? userId;

  GoogleCloudRetailV2UserInfo({
    this.directUserRequest,
    this.ipAddress,
    this.userAgent,
    this.userId,
  });

  GoogleCloudRetailV2UserInfo.fromJson(core.Map _json)
      : this(
          directUserRequest: _json.containsKey('directUserRequest')
              ? _json['directUserRequest'] as core.bool
              : null,
          ipAddress: _json.containsKey('ipAddress')
              ? _json['ipAddress'] as core.String
              : null,
          userAgent: _json.containsKey('userAgent')
              ? _json['userAgent'] as core.String
              : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directUserRequest != null) 'directUserRequest': directUserRequest!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userId != null) 'userId': userId!,
      };
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef GoogleTypeDate = $Date;
