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

/// Recommendations AI (Beta) - v1beta1
///
/// Note that we now highly recommend new customers to use Retail API, which
/// incorporates the GA version of the Recommendations AI funtionalities. To
/// enable Retail API, please visit
/// https://console.cloud.google.com/apis/library/retail.googleapis.com. The
/// Recommendations AI service enables customers to build end-to-end
/// personalized recommendation systems without requiring a high level of
/// expertise in machine learning, recommendation system, or Google Cloud.
///
/// For more information, see <https://cloud.google.com/recommendations-ai/docs>
///
/// Create an instance of [RecommendationsAIApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCatalogsResource]
///       - [ProjectsLocationsCatalogsCatalogItemsResource]
///       - [ProjectsLocationsCatalogsEventStoresResource]
///         - [ProjectsLocationsCatalogsEventStoresOperationsResource]
///         - [ProjectsLocationsCatalogsEventStoresPlacementsResource]
/// -
/// [ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource]
///         - [ProjectsLocationsCatalogsEventStoresUserEventsResource]
///       - [ProjectsLocationsCatalogsOperationsResource]
library recommendationengine.v1beta1;

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

/// Note that we now highly recommend new customers to use Retail API, which
/// incorporates the GA version of the Recommendations AI funtionalities.
///
/// To enable Retail API, please visit
/// https://console.cloud.google.com/apis/library/retail.googleapis.com. The
/// Recommendations AI service enables customers to build end-to-end
/// personalized recommendation systems without requiring a high level of
/// expertise in machine learning, recommendation system, or Google Cloud.
class RecommendationsAIApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  RecommendationsAIApi(http.Client client,
      {core.String rootUrl = 'https://recommendationengine.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsResource get catalogs =>
      ProjectsLocationsCatalogsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsCatalogItemsResource get catalogItems =>
      ProjectsLocationsCatalogsCatalogItemsResource(_requester);
  ProjectsLocationsCatalogsEventStoresResource get eventStores =>
      ProjectsLocationsCatalogsEventStoresResource(_requester);
  ProjectsLocationsCatalogsOperationsResource get operations =>
      ProjectsLocationsCatalogsOperationsResource(_requester);

  ProjectsLocationsCatalogsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all the catalog configurations associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account resource name with an associated
  /// location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of results to return. If
  /// unspecified, defaults to 50. Max allowed value is 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListCatalogs` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecommendationengineV1beta1ListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1ListCatalogsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1ListCatalogsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the catalog configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the catalog.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided 'catalog'
  /// to update. If not set, will only update the catalog_item_level_config
  /// field. Currently only fields that can be updated are
  /// catalog_item_level_config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1Catalog> patch(
    GoogleCloudRecommendationengineV1beta1Catalog request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsCatalogItemsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsCatalogItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a catalog item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1CatalogItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1CatalogItem> create(
    GoogleCloudRecommendationengineV1beta1CatalogItem request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/catalogItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a catalog item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of catalog item, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/catalogItems/some_catalog_item_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/catalogItems/.*$`.
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a specific catalog item.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of catalog item, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/catalogitems/some_catalog_item_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/catalogItems/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1CatalogItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1CatalogItem> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Bulk import of multiple catalog items.
  ///
  /// Request processing may be synchronous. No partial updating supported.
  /// Non-existing items will be created. Operation.response is of type
  /// ImportResponse. Note that it is possible for a subset of the items to be
  /// successfully updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// `projects/1234/locations/global/catalogs/default_catalog` If no updateMask
  /// is specified, requires catalogItems.create permission. If updateMask is
  /// specified, requires catalogItems.update permission.
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
    GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/catalogItems:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of catalog items.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent catalog resource name, such as `projects /
  /// * /locations/global/catalogs/default_catalog`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to apply on the list results.
  ///
  /// [pageSize] - Optional. Maximum number of results to return per page. If
  /// zero, the service will choose a reasonable default.
  ///
  /// [pageToken] - Optional. The previous
  /// ListCatalogItemsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse>
      list(
    core.String parent, {
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/catalogItems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a catalog item.
  ///
  /// Partial updating is supported. Non-existing items will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of catalog item, such as `projects /
  /// *
  /// /locations/global/catalogs/default_catalog/catalogItems/some_catalog_item_id`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/catalogItems/.*$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided 'item' to
  /// update. If not set, will by default update all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1CatalogItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1CatalogItem> patch(
    GoogleCloudRecommendationengineV1beta1CatalogItem request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsEventStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsEventStoresOperationsResource get operations =>
      ProjectsLocationsCatalogsEventStoresOperationsResource(_requester);
  ProjectsLocationsCatalogsEventStoresPlacementsResource get placements =>
      ProjectsLocationsCatalogsEventStoresPlacementsResource(_requester);
  ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource
      get predictionApiKeyRegistrations =>
          ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource(
              _requester);
  ProjectsLocationsCatalogsEventStoresUserEventsResource get userEvents =>
      ProjectsLocationsCatalogsEventStoresUserEventsResource(_requester);

  ProjectsLocationsCatalogsEventStoresResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsCatalogsEventStoresOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsEventStoresOperationsResource(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+/operations/\[^/\]+$`.
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsEventStoresPlacementsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsEventStoresPlacementsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Makes a recommendation prediction.
  ///
  /// If using API Key based authentication, the API Key must be registered
  /// using the PredictionApiKeyRegistry service.
  /// [Learn more](https://cloud.google.com/recommendations-ai/docs/setting-up#register-key).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full resource name of the format: `{name=projects / *
  /// /locations/global/catalogs/default_catalog/eventStores/default_event_store/placements
  /// / * }` The id of the recommendation engine placement. This id is used to
  /// identify the set of models that will be used to make the prediction. We
  /// currently support three placements with the following IDs by default: *
  /// `shopping_cart`: Predicts items frequently bought together with one or
  /// more catalog items in the same shopping session. Commonly displayed after
  /// `add-to-cart` events, on product detail pages, or on the shopping cart
  /// page. * `home_page`: Predicts the next product that a user will most
  /// likely engage with or purchase based on the shopping or viewing history of
  /// the specified `userId` or `visitorId`. For example - Recommendations for
  /// you. * `product_detail`: Predicts the next product that a user will most
  /// likely engage with or purchase. The prediction is based on the shopping or
  /// viewing history of the specified `userId` or `visitorId` and its relevance
  /// to a specified `CatalogItem`. Typically used on product detail pages. For
  /// example - More items like this. * `recently_viewed_default`: Returns up to
  /// 75 items recently viewed by the specified `userId` or `visitorId`, most
  /// recent ones first. Returns nothing if neither of them has viewed any items
  /// yet. For example - Recently viewed. The full list of available placements
  /// can be seen at
  /// https://console.cloud.google.com/recommendation/datafeeds/default_catalog/dashboard
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+/placements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1PredictResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1PredictResponse> predict(
    GoogleCloudRecommendationengineV1beta1PredictRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':predict';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1PredictResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsEventStoresPredictionApiKeyRegistrationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Register an API key for use with predict method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path. `projects / *
  /// /locations/global/catalogs/default_catalog/eventStores/default_event_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>
      create(
    GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest
        request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/predictionApiKeyRegistrations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Unregister an apiKey from using for predict method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The API key to unregister including full resource path.
  /// `projects / *
  /// /locations/global/catalogs/default_catalog/eventStores/default_event_store/predictionApiKeyRegistrations/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+/predictionApiKeyRegistrations/\[^/\]+$`.
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the registered apiKeys for use with predict method.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent placement resource name such as
  /// `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of results to return per page. If
  /// unset, the service will choose a reasonable default.
  ///
  /// [pageToken] - Optional. The previous
  /// `ListPredictionApiKeyRegistration.nextPageToken`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse>
      list(
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

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/predictionApiKeyRegistrations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsEventStoresUserEventsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsEventStoresUserEventsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Writes a single user event from the browser.
  ///
  /// This uses a GET request to due to browser restriction of POST-ing to a 3rd
  /// party domain. This method is used only by the Recommendations AI
  /// JavaScript pixel. Users should not call this method directly.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent eventStore name, such as
  /// `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
  ///
  /// [ets] - Optional. The event timestamp in milliseconds. This prevents
  /// browser caching of otherwise identical get requests. The name is
  /// abbreviated to reduce the payload bytes.
  ///
  /// [uri] - Optional. The url including cgi-parameters but excluding the hash
  /// fragment. The URL must be truncated to 1.5K bytes to conservatively be
  /// under the 2K bytes. This is often more useful than the referer url,
  /// because many browsers only send the domain for 3rd party requests.
  ///
  /// [userEvent] - Required. URL encoded UserEvent proto.
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

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents:collect';

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
  /// `projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
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
    GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of user events within a time range, with potential filtering.
  ///
  /// The method does not list unjoined user events. Unjoined user event
  /// definition: when a user event is ingested from Recommendations AI User
  /// Event APIs, the catalog item included in the user event is connected with
  /// the current catalog. If a catalog item of the ingested event is not in the
  /// current catalog, it could lead to degraded model quality. This is called
  /// an unjoined event.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent eventStore resource name, such as
  /// `projects / * /locations / *
  /// /catalogs/default_catalog/eventStores/default_event_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering expression to specify restrictions over
  /// returned events. This is a sequence of terms, where each term applies some
  /// kind of a restriction to the returned user events. Use this expression to
  /// restrict results to a specific time range, or filter events by eventType.
  /// eg: eventTime \> "2012-04-23T18:25:43.511Z" eventsMissingCatalogItems
  /// eventTime\<"2012-04-23T18:25:43.511Z" eventType=search We expect only 3
  /// types of fields: * eventTime: this can be specified a maximum of 2 times,
  /// once with a less than operator and once with a greater than operator. The
  /// eventTime restrict should result in one contiguous valid eventTime range.
  /// * eventType: only 1 eventType restriction can be specified. *
  /// eventsMissingCatalogItems: specififying this will restrict results to
  /// events for which catalog items were not found in the catalog. The default
  /// behavior is to return only those events for which catalog items were
  /// found. Some examples of valid filters expressions: * Example 1: eventTime
  /// \> "2012-04-23T18:25:43.511Z" eventTime \< "2012-04-23T18:30:43.511Z" *
  /// Example 2: eventTime \> "2012-04-23T18:25:43.511Z" eventType =
  /// detail-page-view * Example 3: eventsMissingCatalogItems eventType = search
  /// eventTime \< "2018-04-23T18:30:43.511Z" * Example 4: eventTime \>
  /// "2012-04-23T18:25:43.511Z" * Example 5: eventType = search * Example 6:
  /// eventsMissingCatalogItems
  ///
  /// [pageSize] - Optional. Maximum number of results to return per page. If
  /// zero, the service will choose a reasonable default.
  ///
  /// [pageToken] - Optional. The previous
  /// ListUserEventsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudRecommendationengineV1beta1ListUserEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1ListUserEventsResponse>
      list(
    core.String parent, {
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1ListUserEventsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [parent] - Required. The resource name of the event_store under which the
  /// events are created. The format is
  /// `projects/${projectId}/locations/global/catalogs/${catalogId}/eventStores/${eventStoreId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
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
    GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents:purge';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Triggers a user event rejoin operation with latest catalog data.
  ///
  /// Events will not be annotated with detailed catalog information if catalog
  /// item is missing at the time the user event is ingested, and these events
  /// are stored as unjoined events with a limited usage on training and
  /// serving. This API can be used to trigger a 'join' operation on specified
  /// events with latest version of catalog items. It can also be used to
  /// correct events joined with wrong catalog items.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full resource name of user event, such as `projects /
  /// * /locations / *
  /// /catalogs/default_catalog/eventStores/default_event_store`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
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
    GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents:rejoin';

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
  /// [parent] - Required. The parent eventStore resource name, such as
  /// "projects/1234/locations/global/catalogs/default_catalog/eventStores/default_event_store".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/eventStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudRecommendationengineV1beta1UserEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudRecommendationengineV1beta1UserEvent> write(
    GoogleCloudRecommendationengineV1beta1UserEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/userEvents:write';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

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
class GoogleApiHttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String? contentType;

  /// The HTTP request/response body as raw binary.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Application specific response metadata.
  ///
  /// Must be set in the first response for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? extensions;

  GoogleApiHttpBody({
    this.contentType,
    this.data,
    this.extensions,
  });

  GoogleApiHttpBody.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          extensions: _json.containsKey('extensions')
              ? (_json['extensions'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (data != null) 'data': data!,
        if (extensions != null) 'extensions': extensions!,
      };
}

/// BigQuery source import data from.
class GoogleCloudRecommendationengineV1beta1BigQuerySource {
  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for catalog imports: 1: "catalog_recommendations_ai"
  /// using https://cloud.google.com/recommendations-ai/docs/upload-catalog#json
  /// (Default for catalogItems.import) 2: "catalog_merchant_center" using
  /// https://cloud.google.com/recommendations-ai/docs/upload-catalog#mc
  /// Supported values for user event imports: 1:
  /// "user_events_recommendations_ai" using
  /// https://cloud.google.com/recommendations-ai/docs/manage-user-events#import
  /// (Default for userEvents.import) 2. "user_events_ga360" using
  /// https://support.google.com/analytics/answer/3437719?hl=en
  ///
  /// Optional.
  core.String? dataSchema;

  /// The BigQuery data set to copy the data from.
  ///
  /// Required.
  core.String? datasetId;

  /// Intermediate Cloud Storage directory used for the import.
  ///
  /// Can be specified if one wants to have the BigQuery export to a specific
  /// Cloud Storage directory.
  ///
  /// Optional.
  core.String? gcsStagingDir;

  /// The project id (can be project # or id) that the BigQuery source is in.
  ///
  /// If not specified, inherits the project id from the parent request.
  ///
  /// Optional.
  core.String? projectId;

  /// The BigQuery table to copy the data from.
  ///
  /// Required.
  core.String? tableId;

  GoogleCloudRecommendationengineV1beta1BigQuerySource({
    this.dataSchema,
    this.datasetId,
    this.gcsStagingDir,
    this.projectId,
    this.tableId,
  });

  GoogleCloudRecommendationengineV1beta1BigQuerySource.fromJson(core.Map _json)
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
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// The catalog configuration.
///
/// Next ID: 5.
class GoogleCloudRecommendationengineV1beta1Catalog {
  /// The catalog item level configuration.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig?
      catalogItemLevelConfig;

  /// The ID of the default event store.
  ///
  /// Required.
  core.String? defaultEventStoreId;

  /// The catalog display name.
  ///
  /// Required.
  core.String? displayName;

  /// The fully qualified resource name of the catalog.
  core.String? name;

  GoogleCloudRecommendationengineV1beta1Catalog({
    this.catalogItemLevelConfig,
    this.defaultEventStoreId,
    this.displayName,
    this.name,
  });

  GoogleCloudRecommendationengineV1beta1Catalog.fromJson(core.Map _json)
      : this(
          catalogItemLevelConfig: _json.containsKey('catalogItemLevelConfig')
              ? GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig
                  .fromJson(_json['catalogItemLevelConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          defaultEventStoreId: _json.containsKey('defaultEventStoreId')
              ? _json['defaultEventStoreId'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catalogItemLevelConfig != null)
          'catalogItemLevelConfig': catalogItemLevelConfig!,
        if (defaultEventStoreId != null)
          'defaultEventStoreId': defaultEventStoreId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// The inline source for the input config for ImportCatalogItems method.
class GoogleCloudRecommendationengineV1beta1CatalogInlineSource {
  /// A list of catalog items to update/create.
  ///
  /// Recommended max of 10k items.
  ///
  /// Optional.
  core.List<GoogleCloudRecommendationengineV1beta1CatalogItem>? catalogItems;

  GoogleCloudRecommendationengineV1beta1CatalogInlineSource({
    this.catalogItems,
  });

  GoogleCloudRecommendationengineV1beta1CatalogInlineSource.fromJson(
      core.Map _json)
      : this(
          catalogItems: _json.containsKey('catalogItems')
              ? (_json['catalogItems'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1CatalogItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catalogItems != null) 'catalogItems': catalogItems!,
      };
}

/// CatalogItem captures all metadata information of items to be recommended.
class GoogleCloudRecommendationengineV1beta1CatalogItem {
  /// Catalog item categories.
  ///
  /// This field is repeated for supporting one catalog item belonging to
  /// several parallel category hierarchies. For example, if a shoes product
  /// belongs to both \["Shoes & Accessories" -\> "Shoes"\] and \["Sports &
  /// Fitness" -\> "Athletic Clothing" -\> "Shoes"\], it could be represented
  /// as: "categoryHierarchies": \[ { "categories": \["Shoes & Accessories",
  /// "Shoes"\]}, { "categories": \["Sports & Fitness", "Athletic Clothing",
  /// "Shoes"\] } \]
  ///
  /// Required.
  core.List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>?
      categoryHierarchies;

  /// Catalog item description.
  ///
  /// UTF-8 encoded string with a length limit of 5 KiB.
  ///
  /// Optional.
  core.String? description;

  /// Catalog item identifier.
  ///
  /// UTF-8 encoded string with a length limit of 128 bytes. This id must be
  /// unique among all catalog items within the same catalog. It should also be
  /// used when logging user events in order for the user events to be joined
  /// with the Catalog.
  ///
  /// Required.
  core.String? id;

  /// Highly encouraged.
  ///
  /// Extra catalog item attributes to be included in the recommendation model.
  /// For example, for retail products, this could include the store name,
  /// vendor, style, color, etc. These are very strong signals for
  /// recommendation model, thus we highly recommend providing the item
  /// attributes here.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1FeatureMap? itemAttributes;

  /// Variant group identifier for prediction results.
  ///
  /// UTF-8 encoded string with a length limit of 128 bytes. This field must be
  /// enabled before it can be used. \[Learn
  /// more\](/recommendations-ai/docs/catalog#item-group-id).
  ///
  /// Optional.
  core.String? itemGroupId;

  /// The model automatically detects the text language.
  ///
  /// Your catalog can include text in different languages, but duplicating
  /// catalog items to provide text in multiple languages can result in degraded
  /// model performance.
  ///
  /// Optional. Deprecated.
  core.String? languageCode;

  /// Metadata specific to retail products.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItem? productMetadata;

  /// Filtering tags associated with the catalog item.
  ///
  /// Each tag should be a UTF-8 encoded string with a length limit of 1 KiB.
  /// This tag can be used for filtering recommendation results by passing the
  /// tag as part of the predict request filter.
  ///
  /// Optional.
  core.List<core.String>? tags;

  /// Catalog item title.
  ///
  /// UTF-8 encoded string with a length limit of 1 KiB.
  ///
  /// Required.
  core.String? title;

  GoogleCloudRecommendationengineV1beta1CatalogItem({
    this.categoryHierarchies,
    this.description,
    this.id,
    this.itemAttributes,
    this.itemGroupId,
    this.languageCode,
    this.productMetadata,
    this.tags,
    this.title,
  });

  GoogleCloudRecommendationengineV1beta1CatalogItem.fromJson(core.Map _json)
      : this(
          categoryHierarchies: _json.containsKey('categoryHierarchies')
              ? (_json['categoryHierarchies'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemAttributes: _json.containsKey('itemAttributes')
              ? GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(
                  _json['itemAttributes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          itemGroupId: _json.containsKey('itemGroupId')
              ? _json['itemGroupId'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          productMetadata: _json.containsKey('productMetadata')
              ? GoogleCloudRecommendationengineV1beta1ProductCatalogItem
                  .fromJson(_json['productMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryHierarchies != null)
          'categoryHierarchies': categoryHierarchies!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (itemAttributes != null) 'itemAttributes': itemAttributes!,
        if (itemGroupId != null) 'itemGroupId': itemGroupId!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (productMetadata != null) 'productMetadata': productMetadata!,
        if (tags != null) 'tags': tags!,
        if (title != null) 'title': title!,
      };
}

/// Category represents catalog item category hierarchy.
class GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy {
  /// Catalog item categories.
  ///
  /// Each category should be a UTF-8 encoded string with a length limit of 2
  /// KiB. Note that the order in the list denotes the specificity (from least
  /// to most specific).
  ///
  /// Required.
  core.List<core.String>? categories;

  GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy({
    this.categories,
  });

  GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy.fromJson(
      core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
      };
}

/// Configures the catalog level that users send events to, and the level at
/// which predictions are made.
class GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig {
  /// Level of the catalog at which events are uploaded.
  ///
  /// See
  /// https://cloud.google.com/recommendations-ai/docs/catalog#catalog-levels
  /// for more details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CATALOG_ITEM_LEVEL_UNSPECIFIED" : Unknown value - should never be used.
  /// - "VARIANT" : Catalog items are at variant level.
  /// - "MASTER" : Catalog items are at master level.
  core.String? eventItemLevel;

  /// Level of the catalog at which predictions are made.
  ///
  /// See
  /// https://cloud.google.com/recommendations-ai/docs/catalog#catalog-levels
  /// for more details.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CATALOG_ITEM_LEVEL_UNSPECIFIED" : Unknown value - should never be used.
  /// - "VARIANT" : Catalog items are at variant level.
  /// - "MASTER" : Catalog items are at master level.
  core.String? predictItemLevel;

  GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig({
    this.eventItemLevel,
    this.predictItemLevel,
  });

  GoogleCloudRecommendationengineV1beta1CatalogItemLevelConfig.fromJson(
      core.Map _json)
      : this(
          eventItemLevel: _json.containsKey('eventItemLevel')
              ? _json['eventItemLevel'] as core.String
              : null,
          predictItemLevel: _json.containsKey('predictItemLevel')
              ? _json['predictItemLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventItemLevel != null) 'eventItemLevel': eventItemLevel!,
        if (predictItemLevel != null) 'predictItemLevel': predictItemLevel!,
      };
}

/// Request message for the `CreatePredictionApiKeyRegistration` method.
class GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest {
  /// The prediction API key registration.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration?
      predictionApiKeyRegistration;

  GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest({
    this.predictionApiKeyRegistration,
  });

  GoogleCloudRecommendationengineV1beta1CreatePredictionApiKeyRegistrationRequest.fromJson(
      core.Map _json)
      : this(
          predictionApiKeyRegistration: _json
                  .containsKey('predictionApiKeyRegistration')
              ? GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
                  .fromJson(_json['predictionApiKeyRegistration']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (predictionApiKeyRegistration != null)
          'predictionApiKeyRegistration': predictionApiKeyRegistration!,
      };
}

/// User event details shared by all recommendation types.
class GoogleCloudRecommendationengineV1beta1EventDetail {
  /// Extra user event features to include in the recommendation model.
  ///
  /// For product recommendation, an example of extra user information is
  /// traffic_channel, i.e. how user arrives at the site. Users can arrive at
  /// the site by coming to the site directly, or coming through Google search,
  /// and etc.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1FeatureMap? eventAttributes;

  /// A list of identifiers for the independent experiment groups this user
  /// event belongs to.
  ///
  /// This is used to distinguish between user events associated with different
  /// experiment setups (e.g. using Recommendation Engine system, using
  /// different recommendation models).
  ///
  /// Optional.
  core.List<core.String>? experimentIds;

  /// A unique id of a web page view.
  ///
  /// This should be kept the same for all user events triggered from the same
  /// pageview. For example, an item detail page view could trigger multiple
  /// events as the user is browsing the page. The `pageViewId` property should
  /// be kept the same for all these events so that they can be grouped together
  /// properly. This `pageViewId` will be automatically generated if using the
  /// JavaScript pixel.
  ///
  /// Optional.
  core.String? pageViewId;

  /// Recommendation token included in the recommendation prediction response.
  ///
  /// This field enables accurate attribution of recommendation model
  /// performance. This token enables us to accurately attribute page view or
  /// purchase back to the event and the particular predict response containing
  /// this clicked/purchased item. If user clicks on product K in the
  /// recommendation results, pass the `PredictResponse.recommendationToken`
  /// property as a url parameter to product K's page. When recording events on
  /// product K's page, log the PredictResponse.recommendation_token to this
  /// field. Optional, but highly encouraged for user events that are the result
  /// of a recommendation prediction query.
  ///
  /// Optional.
  core.String? recommendationToken;

  /// The referrer url of the current page.
  ///
  /// When using the JavaScript pixel, this value is filled in automatically.
  ///
  /// Optional.
  core.String? referrerUri;

  /// Complete url (window.location.href) of the user's current page.
  ///
  /// When using the JavaScript pixel, this value is filled in automatically.
  /// Maximum length 5KB.
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudRecommendationengineV1beta1EventDetail({
    this.eventAttributes,
    this.experimentIds,
    this.pageViewId,
    this.recommendationToken,
    this.referrerUri,
    this.uri,
  });

  GoogleCloudRecommendationengineV1beta1EventDetail.fromJson(core.Map _json)
      : this(
          eventAttributes: _json.containsKey('eventAttributes')
              ? GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(
                  _json['eventAttributes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          experimentIds: _json.containsKey('experimentIds')
              ? (_json['experimentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pageViewId: _json.containsKey('pageViewId')
              ? _json['pageViewId'] as core.String
              : null,
          recommendationToken: _json.containsKey('recommendationToken')
              ? _json['recommendationToken'] as core.String
              : null,
          referrerUri: _json.containsKey('referrerUri')
              ? _json['referrerUri'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventAttributes != null) 'eventAttributes': eventAttributes!,
        if (experimentIds != null) 'experimentIds': experimentIds!,
        if (pageViewId != null) 'pageViewId': pageViewId!,
        if (recommendationToken != null)
          'recommendationToken': recommendationToken!,
        if (referrerUri != null) 'referrerUri': referrerUri!,
        if (uri != null) 'uri': uri!,
      };
}

/// FeatureMap represents extra features that customers want to include in the
/// recommendation model for catalogs/user events as categorical/numerical
/// features.
class GoogleCloudRecommendationengineV1beta1FeatureMap {
  /// Categorical features that can take on one of a limited number of possible
  /// values.
  ///
  /// Some examples would be the brand/maker of a product, or country of a
  /// customer. Feature names and values must be UTF-8 encoded strings. For
  /// example: `{ "colors": {"value": ["yellow", "green"]}, "sizes":
  /// {"value":["S", "M"]}`
  core.Map<core.String,
          GoogleCloudRecommendationengineV1beta1FeatureMapStringList>?
      categoricalFeatures;

  /// Numerical features.
  ///
  /// Some examples would be the height/weight of a product, or age of a
  /// customer. Feature names must be UTF-8 encoded strings. For example: `{
  /// "lengths_cm": {"value":[2.3, 15.4]}, "heights_cm": {"value":[8.1, 6.4]} }`
  core.Map<core.String,
          GoogleCloudRecommendationengineV1beta1FeatureMapFloatList>?
      numericalFeatures;

  GoogleCloudRecommendationengineV1beta1FeatureMap({
    this.categoricalFeatures,
    this.numericalFeatures,
  });

  GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(core.Map _json)
      : this(
          categoricalFeatures: _json.containsKey('categoricalFeatures')
              ? (_json['categoricalFeatures']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRecommendationengineV1beta1FeatureMapStringList
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          numericalFeatures: _json.containsKey('numericalFeatures')
              ? (_json['numericalFeatures']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudRecommendationengineV1beta1FeatureMapFloatList
                        .fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoricalFeatures != null)
          'categoricalFeatures': categoricalFeatures!,
        if (numericalFeatures != null) 'numericalFeatures': numericalFeatures!,
      };
}

/// A list of float features.
class GoogleCloudRecommendationengineV1beta1FeatureMapFloatList {
  /// Float feature value.
  core.List<core.double>? value;

  GoogleCloudRecommendationengineV1beta1FeatureMapFloatList({
    this.value,
  });

  GoogleCloudRecommendationengineV1beta1FeatureMapFloatList.fromJson(
      core.Map _json)
      : this(
          value: _json.containsKey('value')
              ? (_json['value'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// A list of string features.
class GoogleCloudRecommendationengineV1beta1FeatureMapStringList {
  /// String feature value with a length limit of 128 bytes.
  core.List<core.String>? value;

  GoogleCloudRecommendationengineV1beta1FeatureMapStringList({
    this.value,
  });

  GoogleCloudRecommendationengineV1beta1FeatureMapStringList.fromJson(
      core.Map _json)
      : this(
          value: _json.containsKey('value')
              ? (_json['value'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Google Cloud Storage location for input content.
///
/// format.
class GoogleCloudRecommendationengineV1beta1GcsSource {
  /// Google Cloud Storage URIs to input files.
  ///
  /// URI can be up to 2000 characters long. URIs can match the full object path
  /// (for example, `gs://bucket/directory/object.json`) or a pattern matching
  /// one or more files, such as `gs://bucket/directory / * .json`. A request
  /// can contain at most 100 files, and each file can be up to 2 GB. See
  /// \[Importing catalog information\](/recommendations-ai/docs/upload-catalog)
  /// for the expected file format and setup instructions.
  ///
  /// Required.
  core.List<core.String>? inputUris;

  /// The schema to use when parsing the data from the source.
  ///
  /// Supported values for catalog imports: 1: "catalog_recommendations_ai"
  /// using https://cloud.google.com/recommendations-ai/docs/upload-catalog#json
  /// (Default for catalogItems.import) 2: "catalog_merchant_center" using
  /// https://cloud.google.com/recommendations-ai/docs/upload-catalog#mc
  /// Supported values for user events imports: 1:
  /// "user_events_recommendations_ai" using
  /// https://cloud.google.com/recommendations-ai/docs/manage-user-events#import
  /// (Default for userEvents.import) 2. "user_events_ga360" using
  /// https://support.google.com/analytics/answer/3437719?hl=en
  ///
  /// Optional.
  core.String? jsonSchema;

  GoogleCloudRecommendationengineV1beta1GcsSource({
    this.inputUris,
    this.jsonSchema,
  });

  GoogleCloudRecommendationengineV1beta1GcsSource.fromJson(core.Map _json)
      : this(
          inputUris: _json.containsKey('inputUris')
              ? (_json['inputUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jsonSchema: _json.containsKey('jsonSchema')
              ? _json['jsonSchema'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputUris != null) 'inputUris': inputUris!,
        if (jsonSchema != null) 'jsonSchema': jsonSchema!,
      };
}

/// Catalog item thumbnail/detail image.
class GoogleCloudRecommendationengineV1beta1Image {
  /// Height of the image in number of pixels.
  ///
  /// Optional.
  core.int? height;

  /// URL of the image with a length limit of 5 KiB.
  ///
  /// Required.
  core.String? uri;

  /// Width of the image in number of pixels.
  ///
  /// Optional.
  core.int? width;

  GoogleCloudRecommendationengineV1beta1Image({
    this.height,
    this.uri,
    this.width,
  });

  GoogleCloudRecommendationengineV1beta1Image.fromJson(core.Map _json)
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

/// Request message for Import methods.
class GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest {
  /// The desired location of errors incurred during the Import.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1InputConfig? inputConfig;

  /// Unique identifier provided by client, within the ancestor dataset scope.
  ///
  /// Ensures idempotency and used for request deduplication. Server-generated
  /// if unspecified. Up to 128 characters long. This is returned as
  /// google.longrunning.Operation.name in the response.
  ///
  /// Optional.
  core.String? requestId;

  /// Indicates which fields in the provided imported 'items' to update.
  ///
  /// If not set, will by default update all fields.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest({
    this.errorsConfig,
    this.inputConfig,
    this.requestId,
    this.updateMask,
  });

  GoogleCloudRecommendationengineV1beta1ImportCatalogItemsRequest.fromJson(
      core.Map _json)
      : this(
          errorsConfig: _json.containsKey('errorsConfig')
              ? GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
                  .fromJson(_json['errorsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudRecommendationengineV1beta1InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
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
        if (requestId != null) 'requestId': requestId!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Configuration of destination for Import related errors.
class GoogleCloudRecommendationengineV1beta1ImportErrorsConfig {
  /// Google Cloud Storage path for import errors.
  ///
  /// This must be an empty, existing Cloud Storage bucket. Import errors will
  /// be written to a file in this bucket, one per line, as a JSON-encoded
  /// `google.rpc.Status` message.
  core.String? gcsPrefix;

  GoogleCloudRecommendationengineV1beta1ImportErrorsConfig({
    this.gcsPrefix,
  });

  GoogleCloudRecommendationengineV1beta1ImportErrorsConfig.fromJson(
      core.Map _json)
      : this(
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? _json['gcsPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Request message for the ImportUserEvents request.
class GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest {
  /// The desired location of errors incurred during the Import.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ImportErrorsConfig? errorsConfig;

  /// The desired input location of the data.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1InputConfig? inputConfig;

  /// Unique identifier provided by client, within the ancestor dataset scope.
  ///
  /// Ensures idempotency for expensive long running operations.
  /// Server-generated if unspecified. Up to 128 characters long. This is
  /// returned as google.longrunning.Operation.name in the response. Note that
  /// this field must not be set if the desired input config is
  /// catalog_inline_source.
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest({
    this.errorsConfig,
    this.inputConfig,
    this.requestId,
  });

  GoogleCloudRecommendationengineV1beta1ImportUserEventsRequest.fromJson(
      core.Map _json)
      : this(
          errorsConfig: _json.containsKey('errorsConfig')
              ? GoogleCloudRecommendationengineV1beta1ImportErrorsConfig
                  .fromJson(_json['errorsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudRecommendationengineV1beta1InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorsConfig != null) 'errorsConfig': errorsConfig!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// The input config source.
class GoogleCloudRecommendationengineV1beta1InputConfig {
  /// BigQuery input source.
  GoogleCloudRecommendationengineV1beta1BigQuerySource? bigQuerySource;

  /// The Inline source for the input content for Catalog items.
  GoogleCloudRecommendationengineV1beta1CatalogInlineSource?
      catalogInlineSource;

  /// Google Cloud Storage location for the input content.
  GoogleCloudRecommendationengineV1beta1GcsSource? gcsSource;

  /// The Inline source for the input content for UserEvents.
  GoogleCloudRecommendationengineV1beta1UserEventInlineSource?
      userEventInlineSource;

  GoogleCloudRecommendationengineV1beta1InputConfig({
    this.bigQuerySource,
    this.catalogInlineSource,
    this.gcsSource,
    this.userEventInlineSource,
  });

  GoogleCloudRecommendationengineV1beta1InputConfig.fromJson(core.Map _json)
      : this(
          bigQuerySource: _json.containsKey('bigQuerySource')
              ? GoogleCloudRecommendationengineV1beta1BigQuerySource.fromJson(
                  _json['bigQuerySource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          catalogInlineSource: _json.containsKey('catalogInlineSource')
              ? GoogleCloudRecommendationengineV1beta1CatalogInlineSource
                  .fromJson(_json['catalogInlineSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudRecommendationengineV1beta1GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          userEventInlineSource: _json.containsKey('userEventInlineSource')
              ? GoogleCloudRecommendationengineV1beta1UserEventInlineSource
                  .fromJson(_json['userEventInlineSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQuerySource != null) 'bigQuerySource': bigQuerySource!,
        if (catalogInlineSource != null)
          'catalogInlineSource': catalogInlineSource!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (userEventInlineSource != null)
          'userEventInlineSource': userEventInlineSource!,
      };
}

/// Response message for ListCatalogItems method.
class GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse {
  /// The catalog items.
  core.List<GoogleCloudRecommendationengineV1beta1CatalogItem>? catalogItems;

  /// If empty, the list is complete.
  ///
  /// If nonempty, the token to pass to the next request's
  /// ListCatalogItemRequest.page_token.
  core.String? nextPageToken;

  GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse({
    this.catalogItems,
    this.nextPageToken,
  });

  GoogleCloudRecommendationengineV1beta1ListCatalogItemsResponse.fromJson(
      core.Map _json)
      : this(
          catalogItems: _json.containsKey('catalogItems')
              ? (_json['catalogItems'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1CatalogItem
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catalogItems != null) 'catalogItems': catalogItems!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListCatalogs method.
class GoogleCloudRecommendationengineV1beta1ListCatalogsResponse {
  /// All the customer's catalogs.
  ///
  /// Output only.
  core.List<GoogleCloudRecommendationengineV1beta1Catalog>? catalogs;

  /// Pagination token, if not returned indicates the last page.
  core.String? nextPageToken;

  GoogleCloudRecommendationengineV1beta1ListCatalogsResponse({
    this.catalogs,
    this.nextPageToken,
  });

  GoogleCloudRecommendationengineV1beta1ListCatalogsResponse.fromJson(
      core.Map _json)
      : this(
          catalogs: _json.containsKey('catalogs')
              ? (_json['catalogs'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1Catalog.fromJson(
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

/// Response message for the `ListPredictionApiKeyRegistrations`.
class GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse {
  /// If empty, the list is complete.
  ///
  /// If nonempty, pass the token to the next request's
  /// `ListPredictionApiKeysRegistrationsRequest.pageToken`.
  core.String? nextPageToken;

  /// The list of registered API keys.
  core.List<GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration>?
      predictionApiKeyRegistrations;

  GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse({
    this.nextPageToken,
    this.predictionApiKeyRegistrations,
  });

  GoogleCloudRecommendationengineV1beta1ListPredictionApiKeyRegistrationsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          predictionApiKeyRegistrations: _json
                  .containsKey('predictionApiKeyRegistrations')
              ? (_json['predictionApiKeyRegistrations'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (predictionApiKeyRegistrations != null)
          'predictionApiKeyRegistrations': predictionApiKeyRegistrations!,
      };
}

/// Response message for ListUserEvents method.
class GoogleCloudRecommendationengineV1beta1ListUserEventsResponse {
  /// If empty, the list is complete.
  ///
  /// If nonempty, the token to pass to the next request's
  /// ListUserEvents.page_token.
  core.String? nextPageToken;

  /// The user events.
  core.List<GoogleCloudRecommendationengineV1beta1UserEvent>? userEvents;

  GoogleCloudRecommendationengineV1beta1ListUserEventsResponse({
    this.nextPageToken,
    this.userEvents,
  });

  GoogleCloudRecommendationengineV1beta1ListUserEventsResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          userEvents: _json.containsKey('userEvents')
              ? (_json['userEvents'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userEvents != null) 'userEvents': userEvents!,
      };
}

/// Request message for Predict method.
class GoogleCloudRecommendationengineV1beta1PredictRequest {
  /// Use dryRun mode for this prediction query.
  ///
  /// If set to true, a fake model will be used that returns arbitrary catalog
  /// items. Note that the dryRun mode should only be used for testing the API,
  /// or if the model is not ready.
  ///
  /// Optional.
  core.bool? dryRun;

  /// Filter for restricting prediction results.
  ///
  /// Accepts values for tags and the `filterOutOfStockItems` flag. * Tag
  /// expressions. Restricts predictions to items that match all of the
  /// specified tags. Boolean operators `OR` and `NOT` are supported if the
  /// expression is enclosed in parentheses, and must be separated from the tag
  /// values by a space. `-"tagA"` is also supported and is equivalent to `NOT
  /// "tagA"`. Tag values must be double quoted UTF-8 encoded strings with a
  /// size limit of 1 KiB. * filterOutOfStockItems. Restricts predictions to
  /// items that do not have a stockState value of OUT_OF_STOCK. Examples: *
  /// tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional") *
  /// filterOutOfStockItems tag=(-"promotional") * filterOutOfStockItems If your
  /// filter blocks all prediction results, nothing will be returned. If you
  /// want generic (unfiltered) popular items to be returned instead, set
  /// `strictFiltering` to false in `PredictRequest.params`.
  ///
  /// Optional.
  core.String? filter;

  /// The labels for the predict request.
  ///
  /// * Label keys can contain lowercase letters, digits and hyphens, must start
  /// with a letter, and must end with a letter or digit. * Non-zero label
  /// values can contain lowercase letters, digits and hyphens, must start with
  /// a letter, and must end with a letter or digit. * No more than 64 labels
  /// can be associated with a given request. See https://goo.gl/xmQnxf for more
  /// information on and examples of labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Maximum number of results to return per page.
  ///
  /// Set this property to the number of prediction results required. If zero,
  /// the service will choose a reasonable default.
  ///
  /// Optional.
  core.int? pageSize;

  /// The previous PredictResponse.next_page_token.
  ///
  /// Optional.
  core.String? pageToken;

  /// Additional domain specific parameters for the predictions.
  ///
  /// Allowed values: * `returnCatalogItem`: Boolean. If set to true, the
  /// associated catalogItem object will be returned in the
  /// `PredictResponse.PredictionResult.itemMetadata` object in the method
  /// response. * `returnItemScore`: Boolean. If set to true, the prediction
  /// 'score' corresponding to each returned item will be set in the `metadata`
  /// field in the prediction response. The given 'score' indicates the
  /// probability of an item being clicked/purchased given the user's context
  /// and history. * `strictFiltering`: Boolean. True by default. If set to
  /// false, the service will return generic (unfiltered) popular items instead
  /// of empty if your filter blocks all prediction results. *
  /// `priceRerankLevel`: String. Default empty. If set to be non-empty, then it
  /// needs to be one of {'no-price-reranking', 'low-price-reranking',
  /// 'medium-price-reranking', 'high-price-reranking'}. This gives request
  /// level control and adjust prediction results based on product price. *
  /// `diversityLevel`: String. Default empty. If set to be non-empty, then it
  /// needs to be one of {'no-diversity', 'low-diversity', 'medium-diversity',
  /// 'high-diversity', 'auto-diversity'}. This gives request level control and
  /// adjust prediction results based on product category.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Context about the user, what they are looking at and what action they took
  /// to trigger the predict request.
  ///
  /// Note that this user event detail won't be ingested to userEvent logs.
  /// Thus, a separate userEvent write request is required for event logging.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1UserEvent? userEvent;

  GoogleCloudRecommendationengineV1beta1PredictRequest({
    this.dryRun,
    this.filter,
    this.labels,
    this.pageSize,
    this.pageToken,
    this.params,
    this.userEvent,
  });

  GoogleCloudRecommendationengineV1beta1PredictRequest.fromJson(core.Map _json)
      : this(
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
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
              ? GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
                  _json['userEvent'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dryRun != null) 'dryRun': dryRun!,
        if (filter != null) 'filter': filter!,
        if (labels != null) 'labels': labels!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (params != null) 'params': params!,
        if (userEvent != null) 'userEvent': userEvent!,
      };
}

/// Response message for predict method.
class GoogleCloudRecommendationengineV1beta1PredictResponse {
  /// True if the dryRun property was set in the request.
  core.bool? dryRun;

  /// IDs of items in the request that were missing from the catalog.
  core.List<core.String>? itemsMissingInCatalog;

  /// Additional domain specific prediction response metadata.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// If empty, the list is complete.
  ///
  /// If nonempty, the token to pass to the next request's
  /// PredictRequest.page_token.
  core.String? nextPageToken;

  /// A unique recommendation token.
  ///
  /// This should be included in the user event logs resulting from this
  /// recommendation, which enables accurate attribution of recommendation model
  /// performance.
  core.String? recommendationToken;

  /// A list of recommended items.
  ///
  /// The order represents the ranking (from the most relevant item to the
  /// least).
  core.List<
          GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult>?
      results;

  GoogleCloudRecommendationengineV1beta1PredictResponse({
    this.dryRun,
    this.itemsMissingInCatalog,
    this.metadata,
    this.nextPageToken,
    this.recommendationToken,
    this.results,
  });

  GoogleCloudRecommendationengineV1beta1PredictResponse.fromJson(core.Map _json)
      : this(
          dryRun:
              _json.containsKey('dryRun') ? _json['dryRun'] as core.bool : null,
          itemsMissingInCatalog: _json.containsKey('itemsMissingInCatalog')
              ? (_json['itemsMissingInCatalog'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          recommendationToken: _json.containsKey('recommendationToken')
              ? _json['recommendationToken'] as core.String
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dryRun != null) 'dryRun': dryRun!,
        if (itemsMissingInCatalog != null)
          'itemsMissingInCatalog': itemsMissingInCatalog!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (recommendationToken != null)
          'recommendationToken': recommendationToken!,
        if (results != null) 'results': results!,
      };
}

/// PredictionResult represents the recommendation prediction results.
class GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult {
  /// ID of the recommended catalog item
  core.String? id;

  /// Additional item metadata / annotations.
  ///
  /// Possible values: * `catalogItem`: JSON representation of the catalogItem.
  /// Will be set if `returnCatalogItem` is set to true in
  /// `PredictRequest.params`. * `score`: Prediction score in double value. Will
  /// be set if `returnItemScore` is set to true in `PredictRequest.params`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? itemMetadata;

  GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult({
    this.id,
    this.itemMetadata,
  });

  GoogleCloudRecommendationengineV1beta1PredictResponsePredictionResult.fromJson(
      core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemMetadata: _json.containsKey('itemMetadata')
              ? _json['itemMetadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (itemMetadata != null) 'itemMetadata': itemMetadata!,
      };
}

/// Registered Api Key.
class GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration {
  /// The API key.
  core.String? apiKey;

  GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration({
    this.apiKey,
  });

  GoogleCloudRecommendationengineV1beta1PredictionApiKeyRegistration.fromJson(
      core.Map _json)
      : this(
          apiKey: _json.containsKey('apiKey')
              ? _json['apiKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
      };
}

/// ProductCatalogItem captures item metadata specific to retail products.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItem {
  /// The available quantity of the item.
  ///
  /// Optional.
  core.String? availableQuantity;

  /// Canonical URL directly linking to the item detail page with a length limit
  /// of 5 KiB..
  ///
  /// Optional.
  core.String? canonicalProductUri;

  /// A map to pass the costs associated with the product.
  ///
  /// For example: {"manufacturing": 45.5} The profit of selling this item is
  /// computed like so: * If 'exactPrice' is provided, profit = displayPrice -
  /// sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  ///
  /// Optional.
  core.Map<core.String, core.double>? costs;

  /// Only required if the price is set.
  ///
  /// Currency code for price/costs. Use three-character ISO-4217 code.
  ///
  /// Optional.
  core.String? currencyCode;

  /// The exact product price.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice?
      exactPrice;

  /// Product images for the catalog item.
  ///
  /// Optional.
  core.List<GoogleCloudRecommendationengineV1beta1Image>? images;

  /// The product price range.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange?
      priceRange;

  /// Online stock state of the catalog item.
  ///
  /// Default is `IN_STOCK`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STOCK_STATE_UNSPECIFIED" : Default item stock status. Should never be
  /// used.
  /// - "IN_STOCK" : Item in stock.
  /// - "OUT_OF_STOCK" : Item out of stock.
  /// - "PREORDER" : Item that is in pre-order state.
  /// - "BACKORDER" : Item that is back-ordered (i.e. temporarily out of stock).
  core.String? stockState;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItem({
    this.availableQuantity,
    this.canonicalProductUri,
    this.costs,
    this.currencyCode,
    this.exactPrice,
    this.images,
    this.priceRange,
    this.stockState,
  });

  GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromJson(
      core.Map _json)
      : this(
          availableQuantity: _json.containsKey('availableQuantity')
              ? _json['availableQuantity'] as core.String
              : null,
          canonicalProductUri: _json.containsKey('canonicalProductUri')
              ? _json['canonicalProductUri'] as core.String
              : null,
          costs: _json.containsKey('costs')
              ? (_json['costs'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          exactPrice: _json.containsKey('exactPrice')
              ? GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice
                  .fromJson(_json['exactPrice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1Image.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          priceRange: _json.containsKey('priceRange')
              ? GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange
                  .fromJson(_json['priceRange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stockState: _json.containsKey('stockState')
              ? _json['stockState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableQuantity != null) 'availableQuantity': availableQuantity!,
        if (canonicalProductUri != null)
          'canonicalProductUri': canonicalProductUri!,
        if (costs != null) 'costs': costs!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (exactPrice != null) 'exactPrice': exactPrice!,
        if (images != null) 'images': images!,
        if (priceRange != null) 'priceRange': priceRange!,
        if (stockState != null) 'stockState': stockState!,
      };
}

/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice {
  /// Display price of the product.
  ///
  /// Optional.
  core.double? displayPrice;

  /// Price of the product without any discount.
  ///
  /// If zero, by default set to be the 'displayPrice'.
  ///
  /// Optional.
  core.double? originalPrice;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice({
    this.displayPrice,
    this.originalPrice,
  });

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice.fromJson(
      core.Map _json)
      : this(
          displayPrice: _json.containsKey('displayPrice')
              ? (_json['displayPrice'] as core.num).toDouble()
              : null,
          originalPrice: _json.containsKey('originalPrice')
              ? (_json['originalPrice'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayPrice != null) 'displayPrice': displayPrice!,
        if (originalPrice != null) 'originalPrice': originalPrice!,
      };
}

/// Product price range when there are a range of prices for different
/// variations of the same product.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange {
  /// The maximum product price.
  ///
  /// Required.
  core.double? max;

  /// The minimum product price.
  ///
  /// Required.
  core.double? min;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange({
    this.max,
    this.min,
  });

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange.fromJson(
      core.Map _json)
      : this(
          max: _json.containsKey('max')
              ? (_json['max'] as core.num).toDouble()
              : null,
          min: _json.containsKey('min')
              ? (_json['min'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
      };
}

/// Detailed product information associated with a user event.
class GoogleCloudRecommendationengineV1beta1ProductDetail {
  /// Quantity of the products in stock when a user event happens.
  ///
  /// Optional. If provided, this overrides the available quantity in Catalog
  /// for this event. and can only be set if `stock_status` is set to
  /// `IN_STOCK`. Note that if an item is out of stock, you must set the
  /// `stock_state` field to be `OUT_OF_STOCK`. Leaving this field unspecified /
  /// as zero is not sufficient to mark the item out of stock.
  ///
  /// Optional.
  core.int? availableQuantity;

  /// Currency code for price/costs.
  ///
  /// Use three-character ISO-4217 code. Required only if originalPrice or
  /// displayPrice is set.
  ///
  /// Optional.
  core.String? currencyCode;

  /// Display price of the product (e.g. discounted price).
  ///
  /// If provided, this will override the display price in Catalog for this
  /// product.
  ///
  /// Optional.
  core.double? displayPrice;

  /// Catalog item ID.
  ///
  /// UTF-8 encoded string with a length limit of 128 characters.
  ///
  /// Required.
  core.String? id;

  /// Extra features associated with a product in the user event.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1FeatureMap? itemAttributes;

  /// Original price of the product.
  ///
  /// If provided, this will override the original price in Catalog for this
  /// product.
  ///
  /// Optional.
  core.double? originalPrice;

  /// Quantity of the product associated with the user event.
  ///
  /// For example, this field will be 2 if two products are added to the
  /// shopping cart for `add-to-cart` event. Required for `add-to-cart`,
  /// `add-to-list`, `remove-from-cart`, `checkout-start`, `purchase-complete`,
  /// `refund` event types.
  ///
  /// Optional.
  core.int? quantity;

  /// Item stock state.
  ///
  /// If provided, this overrides the stock state in Catalog for items in this
  /// event.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STOCK_STATE_UNSPECIFIED" : Default item stock status. Should never be
  /// used.
  /// - "IN_STOCK" : Item in stock.
  /// - "OUT_OF_STOCK" : Item out of stock.
  /// - "PREORDER" : Item that is in pre-order state.
  /// - "BACKORDER" : Item that is back-ordered (i.e. temporarily out of stock).
  core.String? stockState;

  GoogleCloudRecommendationengineV1beta1ProductDetail({
    this.availableQuantity,
    this.currencyCode,
    this.displayPrice,
    this.id,
    this.itemAttributes,
    this.originalPrice,
    this.quantity,
    this.stockState,
  });

  GoogleCloudRecommendationengineV1beta1ProductDetail.fromJson(core.Map _json)
      : this(
          availableQuantity: _json.containsKey('availableQuantity')
              ? _json['availableQuantity'] as core.int
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          displayPrice: _json.containsKey('displayPrice')
              ? (_json['displayPrice'] as core.num).toDouble()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemAttributes: _json.containsKey('itemAttributes')
              ? GoogleCloudRecommendationengineV1beta1FeatureMap.fromJson(
                  _json['itemAttributes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          originalPrice: _json.containsKey('originalPrice')
              ? (_json['originalPrice'] as core.num).toDouble()
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          stockState: _json.containsKey('stockState')
              ? _json['stockState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableQuantity != null) 'availableQuantity': availableQuantity!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (displayPrice != null) 'displayPrice': displayPrice!,
        if (id != null) 'id': id!,
        if (itemAttributes != null) 'itemAttributes': itemAttributes!,
        if (originalPrice != null) 'originalPrice': originalPrice!,
        if (quantity != null) 'quantity': quantity!,
        if (stockState != null) 'stockState': stockState!,
      };
}

/// ProductEventDetail captures user event information specific to retail
/// products.
class GoogleCloudRecommendationengineV1beta1ProductEventDetail {
  /// The id or name of the associated shopping cart.
  ///
  /// This id is used to associate multiple items added or present in the cart
  /// before purchase. This can only be set for `add-to-cart`,
  /// `remove-from-cart`, `checkout-start`, `purchase-complete`, or
  /// `shopping-cart-page-view` events.
  ///
  /// Optional.
  core.String? cartId;

  /// Required for `add-to-list` and `remove-from-list` events.
  ///
  /// The id or name of the list that the item is being added to or removed
  /// from. Other event types should not set this field.
  core.String? listId;

  /// Required for `category-page-view` events.
  ///
  /// At least one of search_query or page_categories is required for `search`
  /// events. Other event types should not set this field. The categories
  /// associated with a category page. Category pages include special pages such
  /// as sales or promotions. For instance, a special sale page may have the
  /// category hierarchy: categories : \["Sales", "2017 Black Friday Deals"\].
  core.List<GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy>?
      pageCategories;

  /// The main product details related to the event.
  ///
  /// This field is required for the following event types: * `add-to-cart` *
  /// `add-to-list` * `checkout-start` * `detail-page-view` *
  /// `purchase-complete` * `refund` * `remove-from-cart` * `remove-from-list`
  /// This field is optional for the following event types: * `page-visit` *
  /// `shopping-cart-page-view` - note that 'product_details' should be set for
  /// this unless the shopping cart is empty. * `search` (highly encouraged) In
  /// a `search` event, this field represents the products returned to the end
  /// user on the current page (the end user may have not finished broswing the
  /// whole page yet). When a new page is returned to the end user, after
  /// pagination/filtering/ordering even for the same query, a new SEARCH event
  /// with different product_details is desired. The end user may have not
  /// finished broswing the whole page yet. This field is not allowed for the
  /// following event types: * `category-page-view` * `home-page-view`
  core.List<GoogleCloudRecommendationengineV1beta1ProductDetail>?
      productDetails;

  /// A transaction represents the entire purchase transaction.
  ///
  /// Required for `purchase-complete` events. Optional for `checkout-start`
  /// events. Other event types should not set this field.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1PurchaseTransaction?
      purchaseTransaction;

  /// At least one of search_query or page_categories is required for `search`
  /// events.
  ///
  /// Other event types should not set this field. The user's search query as
  /// UTF-8 encoded text with a length limit of 5 KiB.
  core.String? searchQuery;

  GoogleCloudRecommendationengineV1beta1ProductEventDetail({
    this.cartId,
    this.listId,
    this.pageCategories,
    this.productDetails,
    this.purchaseTransaction,
    this.searchQuery,
  });

  GoogleCloudRecommendationengineV1beta1ProductEventDetail.fromJson(
      core.Map _json)
      : this(
          cartId: _json.containsKey('cartId')
              ? _json['cartId'] as core.String
              : null,
          listId: _json.containsKey('listId')
              ? _json['listId'] as core.String
              : null,
          pageCategories: _json.containsKey('pageCategories')
              ? (_json['pageCategories'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1CatalogItemCategoryHierarchy
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          productDetails: _json.containsKey('productDetails')
              ? (_json['productDetails'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1ProductDetail
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseTransaction: _json.containsKey('purchaseTransaction')
              ? GoogleCloudRecommendationengineV1beta1PurchaseTransaction
                  .fromJson(_json['purchaseTransaction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          searchQuery: _json.containsKey('searchQuery')
              ? _json['searchQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cartId != null) 'cartId': cartId!,
        if (listId != null) 'listId': listId!,
        if (pageCategories != null) 'pageCategories': pageCategories!,
        if (productDetails != null) 'productDetails': productDetails!,
        if (purchaseTransaction != null)
          'purchaseTransaction': purchaseTransaction!,
        if (searchQuery != null) 'searchQuery': searchQuery!,
      };
}

/// A transaction represents the entire purchase transaction.
class GoogleCloudRecommendationengineV1beta1PurchaseTransaction {
  /// All the costs associated with the product.
  ///
  /// These can be manufacturing costs, shipping expenses not borne by the end
  /// user, or any other costs. Total product cost such that profit = revenue -
  /// (sum(taxes) + sum(costs)) If product_cost is not set, then profit =
  /// revenue - tax - shipping - sum(CatalogItem.costs). If CatalogItem.cost is
  /// not specified for one of the items, CatalogItem.cost based profit *cannot*
  /// be calculated for this Transaction.
  ///
  /// Optional.
  core.Map<core.String, core.double>? costs;

  /// Currency code.
  ///
  /// Use three-character ISO-4217 code. This field is not required if the event
  /// type is `refund`.
  ///
  /// Required.
  core.String? currencyCode;

  /// The transaction ID with a length limit of 128 bytes.
  ///
  /// Optional.
  core.String? id;

  /// Total revenue or grand total associated with the transaction.
  ///
  /// This value include shipping, tax, or other adjustments to total revenue
  /// that you want to include as part of your revenue calculations. This field
  /// is not required if the event type is `refund`.
  ///
  /// Required.
  core.double? revenue;

  /// All the taxes associated with the transaction.
  ///
  /// Optional.
  core.Map<core.String, core.double>? taxes;

  GoogleCloudRecommendationengineV1beta1PurchaseTransaction({
    this.costs,
    this.currencyCode,
    this.id,
    this.revenue,
    this.taxes,
  });

  GoogleCloudRecommendationengineV1beta1PurchaseTransaction.fromJson(
      core.Map _json)
      : this(
          costs: _json.containsKey('costs')
              ? (_json['costs'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          revenue: _json.containsKey('revenue')
              ? (_json['revenue'] as core.num).toDouble()
              : null,
          taxes: _json.containsKey('taxes')
              ? (_json['taxes'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (costs != null) 'costs': costs!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (id != null) 'id': id!,
        if (revenue != null) 'revenue': revenue!,
        if (taxes != null) 'taxes': taxes!,
      };
}

/// Request message for PurgeUserEvents method.
class GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest {
  /// The filter string to specify the events to be deleted.
  ///
  /// Empty string filter is not allowed. The eligible fields for filtering are:
  /// * `eventType`: UserEvent.eventType field of type string. * `eventTime`: in
  /// ISO 8601 "zulu" format. * `visitorId`: field of type string. Specifying
  /// this will delete all events associated with a visitor. * `userId`: field
  /// of type string. Specifying this will delete all events associated with a
  /// user. Examples: * Deleting all events in a time range: `eventTime >
  /// "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z"` *
  /// Deleting specific eventType in time range: `eventTime >
  /// "2012-04-23T18:25:43.511Z" eventType = "detail-page-view"` * Deleting all
  /// events for a specific visitor: `visitorId = "visitor1024"` The filtering
  /// fields are assumed to have an implicit AND.
  ///
  /// Required.
  core.String? filter;

  /// The default value is false.
  ///
  /// Override this flag to true to actually perform the purge. If the field is
  /// not set to true, a sampling of events to be deleted will be returned.
  ///
  /// Optional.
  core.bool? force;

  GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest({
    this.filter,
    this.force,
  });

  GoogleCloudRecommendationengineV1beta1PurgeUserEventsRequest.fromJson(
      core.Map _json)
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

/// Request message for CatalogRejoin method.
class GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest {
  /// The type of the catalog rejoin to define the scope and range of the user
  /// events to be rejoined with catalog items.
  ///
  /// Required.
  /// Possible string values are:
  /// - "USER_EVENT_REJOIN_SCOPE_UNSPECIFIED" : Rejoin catalogs with all events
  /// including both joined events and unjoined events.
  /// - "JOINED_EVENTS" : Only rejoin catalogs with joined events.
  /// - "UNJOINED_EVENTS" : Only rejoin catalogs with unjoined events.
  core.String? userEventRejoinScope;

  GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest({
    this.userEventRejoinScope,
  });

  GoogleCloudRecommendationengineV1beta1RejoinUserEventsRequest.fromJson(
      core.Map _json)
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

/// UserEvent captures all metadata information recommendation engine needs to
/// know about how end users interact with customers' website.
class GoogleCloudRecommendationengineV1beta1UserEvent {
  /// User event detailed information common across different recommendation
  /// types.
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1EventDetail? eventDetail;

  /// This field should *not* be set when using JavaScript pixel or the
  /// Recommendations AI Tag.
  ///
  /// Defaults to `EVENT_SOURCE_UNSPECIFIED`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENT_SOURCE_UNSPECIFIED" : Unspecified event source.
  /// - "AUTOML" : The event is ingested via a javascript pixel or
  /// Recommendations AI Tag through automl datalayer or JS Macros.
  /// - "ECOMMERCE" : The event is ingested via Recommendations AI Tag through
  /// Enhanced Ecommerce datalayer.
  /// - "BATCH_UPLOAD" : The event is ingested via Import user events API.
  core.String? eventSource;

  /// Only required for ImportUserEvents method.
  ///
  /// Timestamp of user event created.
  ///
  /// Optional.
  core.String? eventTime;

  /// User event type.
  ///
  /// Allowed values are: * `add-to-cart` Products being added to cart. *
  /// `add-to-list` Items being added to a list (shopping list, favorites etc).
  /// * `category-page-view` Special pages such as sale or promotion pages
  /// viewed. * `checkout-start` User starting a checkout process. *
  /// `detail-page-view` Products detail page viewed. * `home-page-view`
  /// Homepage viewed. * `page-visit` Generic page visits not included in the
  /// event types above. * `purchase-complete` User finishing a purchase. *
  /// `refund` Purchased items being refunded or returned. * `remove-from-cart`
  /// Products being removed from cart. * `remove-from-list` Items being removed
  /// from a list. * `search` Product search. * `shopping-cart-page-view` User
  /// viewing a shopping cart. * `impression` List of items displayed. Used by
  /// Google Tag Manager.
  ///
  /// Required.
  core.String? eventType;

  /// Retail product specific user event metadata.
  ///
  /// This field is required for the following event types: * `add-to-cart` *
  /// `add-to-list` * `category-page-view` * `checkout-start` *
  /// `detail-page-view` * `purchase-complete` * `refund` * `remove-from-cart` *
  /// `remove-from-list` * `search` This field is optional for the following
  /// event types: * `page-visit` * `shopping-cart-page-view` - note that
  /// 'product_event_detail' should be set for this unless the shopping cart is
  /// empty. This field is not allowed for the following event types: *
  /// `home-page-view`
  ///
  /// Optional.
  GoogleCloudRecommendationengineV1beta1ProductEventDetail? productEventDetail;

  /// User information.
  ///
  /// Required.
  GoogleCloudRecommendationengineV1beta1UserInfo? userInfo;

  GoogleCloudRecommendationengineV1beta1UserEvent({
    this.eventDetail,
    this.eventSource,
    this.eventTime,
    this.eventType,
    this.productEventDetail,
    this.userInfo,
  });

  GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(core.Map _json)
      : this(
          eventDetail: _json.containsKey('eventDetail')
              ? GoogleCloudRecommendationengineV1beta1EventDetail.fromJson(
                  _json['eventDetail'] as core.Map<core.String, core.dynamic>)
              : null,
          eventSource: _json.containsKey('eventSource')
              ? _json['eventSource'] as core.String
              : null,
          eventTime: _json.containsKey('eventTime')
              ? _json['eventTime'] as core.String
              : null,
          eventType: _json.containsKey('eventType')
              ? _json['eventType'] as core.String
              : null,
          productEventDetail: _json.containsKey('productEventDetail')
              ? GoogleCloudRecommendationengineV1beta1ProductEventDetail
                  .fromJson(_json['productEventDetail']
                      as core.Map<core.String, core.dynamic>)
              : null,
          userInfo: _json.containsKey('userInfo')
              ? GoogleCloudRecommendationengineV1beta1UserInfo.fromJson(
                  _json['userInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventDetail != null) 'eventDetail': eventDetail!,
        if (eventSource != null) 'eventSource': eventSource!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (eventType != null) 'eventType': eventType!,
        if (productEventDetail != null)
          'productEventDetail': productEventDetail!,
        if (userInfo != null) 'userInfo': userInfo!,
      };
}

/// The inline source for the input config for ImportUserEvents method.
class GoogleCloudRecommendationengineV1beta1UserEventInlineSource {
  /// A list of user events to import.
  ///
  /// Recommended max of 10k items.
  ///
  /// Optional.
  core.List<GoogleCloudRecommendationengineV1beta1UserEvent>? userEvents;

  GoogleCloudRecommendationengineV1beta1UserEventInlineSource({
    this.userEvents,
  });

  GoogleCloudRecommendationengineV1beta1UserEventInlineSource.fromJson(
      core.Map _json)
      : this(
          userEvents: _json.containsKey('userEvents')
              ? (_json['userEvents'] as core.List)
                  .map((value) =>
                      GoogleCloudRecommendationengineV1beta1UserEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userEvents != null) 'userEvents': userEvents!,
      };
}

/// Information of end users.
class GoogleCloudRecommendationengineV1beta1UserInfo {
  /// Indicates if the request is made directly from the end user in which case
  /// the user_agent and ip_address fields can be populated from the HTTP
  /// request.
  ///
  /// This should *not* be set when using the javascript pixel. This flag should
  /// be set only if the API request is made directly from the end user such as
  /// a mobile app (and not if a gateway or a server is processing and pushing
  /// the user events).
  ///
  /// Optional.
  core.bool? directUserRequest;

  /// IP address of the user.
  ///
  /// This could be either IPv4 (e.g. 104.133.9.80) or IPv6 (e.g.
  /// 2001:0db8:85a3:0000:0000:8a2e:0370:7334). This should *not* be set when
  /// using the javascript pixel or if `direct_user_request` is set. Used to
  /// extract location information for personalization.
  ///
  /// Optional.
  core.String? ipAddress;

  /// User agent as included in the HTTP header.
  ///
  /// UTF-8 encoded string with a length limit of 1 KiB. This should *not* be
  /// set when using the JavaScript pixel or if `directUserRequest` is set.
  ///
  /// Optional.
  core.String? userAgent;

  /// Unique identifier for logged-in user with a length limit of 128 bytes.
  ///
  /// Required only for logged-in users.
  ///
  /// Optional.
  core.String? userId;

  /// A unique identifier for tracking visitors with a length limit of 128
  /// bytes.
  ///
  /// For example, this could be implemented with an HTTP cookie, which should
  /// be able to uniquely identify a visitor on a single device. This unique
  /// identifier should not change if the visitor logs in or out of the website.
  /// Maximum length 128 bytes. Cannot be empty.
  ///
  /// Required.
  core.String? visitorId;

  GoogleCloudRecommendationengineV1beta1UserInfo({
    this.directUserRequest,
    this.ipAddress,
    this.userAgent,
    this.userId,
    this.visitorId,
  });

  GoogleCloudRecommendationengineV1beta1UserInfo.fromJson(core.Map _json)
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
          visitorId: _json.containsKey('visitorId')
              ? _json['visitorId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directUserRequest != null) 'directUserRequest': directUserRequest!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userId != null) 'userId': userId!,
        if (visitorId != null) 'visitorId': visitorId!,
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
