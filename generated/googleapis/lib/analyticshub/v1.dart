// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Analytics Hub API - v1
///
/// Exchange data and analytics assets securely and efficiently.
///
/// For more information, see
/// <https://cloud.google.com/bigquery/docs/analytics-hub-introduction>
///
/// Create an instance of [AnalyticsHubApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsDataExchangesResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDataExchangesResource]
///       - [ProjectsLocationsDataExchangesListingsResource]
///     - [ProjectsLocationsSubscriptionsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Exchange data and analytics assets securely and efficiently.
class AnalyticsHubApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  AnalyticsHubApi(
    http.Client client, {
    core.String rootUrl = 'https://analyticshub.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDataExchangesResource get dataExchanges =>
      OrganizationsLocationsDataExchangesResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsDataExchangesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDataExchangesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists all data exchanges from projects in a given organization and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [organization] - Required. The organization resource path of the projects
  /// containing DataExchanges. e.g. `organizations/myorg/locations/us`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page. Leverage the page tokens to iterate through the entire collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgDataExchangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgDataExchangesResponse> list(
    core.String organization, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$organization') + '/dataExchanges';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOrgDataExchangesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataExchangesResource get dataExchanges =>
      ProjectsLocationsDataExchangesResource(_requester);
  ProjectsLocationsSubscriptionsResource get subscriptions =>
      ProjectsLocationsSubscriptionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsDataExchangesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataExchangesListingsResource get listings =>
      ProjectsLocationsDataExchangesListingsResource(_requester);

  ProjectsLocationsDataExchangesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new data exchange.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path of the data exchange. e.g.
  /// `projects/myproject/locations/us`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dataExchangeId] - Required. The ID of the data exchange. Must contain
  /// only Unicode letters, numbers (0-9), underscores (_). Max length: 100
  /// bytes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataExchange].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataExchange> create(
    DataExchange request,
    core.String parent, {
    core.String? dataExchangeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dataExchangeId != null) 'dataExchangeId': [dataExchangeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataExchanges';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataExchange.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an existing data exchange.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the data exchange resource that you
  /// want to delete. For example,
  /// `projects/myproject/locations/us/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a data exchange.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the data exchange. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataExchange].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataExchange> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataExchange.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all data exchanges in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path of the data exchanges. e.g.
  /// `projects/myproject/locations/us`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page. Leverage the page tokens to iterate through the entire collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataExchangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataExchangesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataExchanges';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataExchangesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all subscriptions on a given Data Exchange or Listing.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. Resource name of the requested target. This
  /// resource may be either a Listing or a DataExchange. e.g.
  /// projects/123/locations/us/dataExchanges/456 OR e.g.
  /// projects/123/locations/us/dataExchanges/456/listings/789
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [includeDeletedSubscriptions] - If selected, includes deleted
  /// subscriptions in the response (up to 63 days after deletion).
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page.
  ///
  /// [pageToken] - Page token, returned by a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSharedResourceSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSharedResourceSubscriptionsResponse> listSubscriptions(
    core.String resource, {
    core.bool? includeDeletedSubscriptions,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeletedSubscriptions != null)
        'includeDeletedSubscriptions': ['${includeDeletedSubscriptions}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':listSubscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSharedResourceSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing data exchange.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the data exchange. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask specifies the fields to update in the
  /// data exchange resource. The fields specified in the `updateMask` are
  /// relative to the resource and are not a full request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataExchange].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataExchange> patch(
    DataExchange request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return DataExchange.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Subscription to a Data Clean Room.
  ///
  /// This is a long-running operation as it will create one or more linked
  /// datasets. Throws a Bad Request error if the Data Exchange does not contain
  /// any listings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Data Exchange. e.g.
  /// `projects/publisherproject/locations/us/dataExchanges/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
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
  async.Future<Operation> subscribe(
    SubscribeDataExchangeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':subscribe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDataExchangesListingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDataExchangesListingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path of the listing. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [listingId] - Required. The ID of the listing to create. Must contain only
  /// Unicode letters, numbers (0-9), underscores (_). Max length: 100 bytes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> create(
    Listing request,
    core.String parent, {
    core.String? listingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (listingId != null) 'listingId': [listingId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/listings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a listing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the listing to delete. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123/listings/456`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [deleteCommercial] - Optional. If the listing is commercial then this
  /// field must be set to true, otherwise a failure is thrown. This acts as a
  /// safety guard to avoid deleting commercial listings accidentally.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool? deleteCommercial,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleteCommercial != null) 'deleteCommercial': ['${deleteCommercial}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a listing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the listing. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123/listings/456`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all listings in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path of the listing. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page. Leverage the page tokens to iterate through the entire collection.
  ///
  /// [pageToken] - Page token, returned by a previous call, to request the next
  /// page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListListingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListListingsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/listings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListListingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all subscriptions on a given Data Exchange or Listing.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. Resource name of the requested target. This
  /// resource may be either a Listing or a DataExchange. e.g.
  /// projects/123/locations/us/dataExchanges/456 OR e.g.
  /// projects/123/locations/us/dataExchanges/456/listings/789
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [includeDeletedSubscriptions] - If selected, includes deleted
  /// subscriptions in the response (up to 63 days after deletion).
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page.
  ///
  /// [pageToken] - Page token, returned by a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSharedResourceSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSharedResourceSubscriptionsResponse> listSubscriptions(
    core.String resource, {
    core.bool? includeDeletedSubscriptions,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeletedSubscriptions != null)
        'includeDeletedSubscriptions': ['${includeDeletedSubscriptions}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':listSubscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSharedResourceSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the listing. e.g.
  /// `projects/myproject/locations/us/dataExchanges/123/listings/456`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask specifies the fields to update in the
  /// listing resource. The fields specified in the `updateMask` are relative to
  /// the resource and are not a full request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> patch(
    Listing request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Subscribes to a listing.
  ///
  /// Currently, with Analytics Hub, you can create listings that reference only
  /// BigQuery datasets. Upon subscription to a listing for a BigQuery dataset,
  /// Analytics Hub creates a linked dataset in the subscriber's project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the listing that you want to subscribe
  /// to. e.g. `projects/myproject/locations/us/dataExchanges/123/listings/456`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscribeListingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscribeListingResponse> subscribe(
    SubscribeListingRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':subscribe';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscribeListingResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the permissions that a caller has.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSubscriptionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a subscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription to delete. e.g.
  /// projects/123/locations/us/subscriptions/456
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a Subscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription. e.g.
  /// projects/123/locations/us/subscriptions/456
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all subscriptions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource path of the subscription. e.g.
  /// projects/myproject/locations/us
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request.
  /// Eligible fields for filtering are: + `listing` + `data_exchange`
  /// Alternatively, a literal wrapped in double quotes may be provided. This
  /// will be checked for an exact match against both fields above. In all
  /// cases, the full Data Exchange or Listing resource name must be provided.
  /// Some example of using filters: +
  /// data_exchange="projects/myproject/locations/us/dataExchanges/123" +
  /// listing="projects/123/locations/us/dataExchanges/456/listings/789" +
  /// "projects/myproject/locations/us/dataExchanges/123"
  ///
  /// [pageSize] - The maximum number of results to return in a single response
  /// page.
  ///
  /// [pageToken] - Page token, returned by a previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Refreshes a Subscription to a Data Exchange.
  ///
  /// A Data Exchange can become stale when a publisher adds or removes data.
  /// This is a long-running operation as it may create many linked datasets.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Subscription to refresh. e.g.
  /// `projects/subscriberproject/locations/us/subscriptions/123`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Operation> refresh(
    RefreshSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':refresh';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revokes a given subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the subscription to revoke. e.g.
  /// projects/123/locations/us/subscriptions/456
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevokeSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevokeSubscriptionResponse> revoke(
    RevokeSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RevokeSubscriptionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
    if (service != null) 'service': service!,
  };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig00;

/// Configuration for writing message data in Avro format.
///
/// Message payloads and metadata will be written to files as an Avro binary.
typedef AvroConfig = $AvroConfig;

/// Configuration for a BigQuery subscription.
class BigQueryConfig {
  /// When true and use_topic_schema is true, any fields that are a part of the
  /// topic schema that are not part of the BigQuery table schema are dropped
  /// when writing to BigQuery.
  ///
  /// Otherwise, the schemas must be kept in sync and any messages with extra
  /// fields are not written and remain in the subscription's backlog.
  ///
  /// Optional.
  core.bool? dropUnknownFields;

  /// The service account to use to write to BigQuery.
  ///
  /// The subscription creator or updater that specifies this field must have
  /// `iam.serviceAccounts.actAs` permission on the service account. If not
  /// specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// The name of the table to which to write data, of the form
  /// {projectId}.{datasetId}.{tableId}
  ///
  /// Optional.
  core.String? table;

  /// When true, use the BigQuery table's schema as the columns to write to in
  /// BigQuery.
  ///
  /// `use_table_schema` and `use_topic_schema` cannot be enabled at the same
  /// time.
  ///
  /// Optional.
  core.bool? useTableSchema;

  /// When true, use the topic's schema as the columns to write to in BigQuery,
  /// if it exists.
  ///
  /// `use_topic_schema` and `use_table_schema` cannot be enabled at the same
  /// time.
  ///
  /// Optional.
  core.bool? useTopicSchema;

  /// When true, write the subscription name, message_id, publish_time,
  /// attributes, and ordering_key to additional columns in the table.
  ///
  /// The subscription name, message_id, and publish_time fields are put in
  /// their own columns while all other message properties (other than data) are
  /// written to a JSON object in the attributes column.
  ///
  /// Optional.
  core.bool? writeMetadata;

  BigQueryConfig({
    this.dropUnknownFields,
    this.serviceAccountEmail,
    this.table,
    this.useTableSchema,
    this.useTopicSchema,
    this.writeMetadata,
  });

  BigQueryConfig.fromJson(core.Map json_)
    : this(
        dropUnknownFields: json_['dropUnknownFields'] as core.bool?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
        table: json_['table'] as core.String?,
        useTableSchema: json_['useTableSchema'] as core.bool?,
        useTopicSchema: json_['useTopicSchema'] as core.bool?,
        writeMetadata: json_['writeMetadata'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dropUnknownFields != null) 'dropUnknownFields': dropUnknownFields!,
    if (serviceAccountEmail != null)
      'serviceAccountEmail': serviceAccountEmail!,
    if (table != null) 'table': table!,
    if (useTableSchema != null) 'useTableSchema': useTableSchema!,
    if (useTopicSchema != null) 'useTopicSchema': useTopicSchema!,
    if (writeMetadata != null) 'writeMetadata': writeMetadata!,
  };
}

/// A reference to a shared dataset.
///
/// It is an existing BigQuery dataset with a collection of objects such as
/// tables and views that you want to share with subscribers. When subscriber's
/// subscribe to a listing, Analytics Hub creates a linked dataset in the
/// subscriber's project. A Linked dataset is an opaque, read-only BigQuery
/// dataset that serves as a _symbolic link_ to a shared dataset.
class BigQueryDatasetSource {
  /// Resource name of the dataset source for this listing.
  ///
  /// e.g. `projects/myproject/datasets/123`
  ///
  /// Optional.
  core.String? dataset;

  /// If set, restricted export policy will be propagated and enforced on the
  /// linked dataset.
  ///
  /// Optional.
  RestrictedExportPolicy? restrictedExportPolicy;

  /// Resource in this dataset that is selectively shared.
  ///
  /// This field is required for data clean room exchanges.
  ///
  /// Optional.
  core.List<SelectedResource>? selectedResources;

  BigQueryDatasetSource({
    this.dataset,
    this.restrictedExportPolicy,
    this.selectedResources,
  });

  BigQueryDatasetSource.fromJson(core.Map json_)
    : this(
        dataset: json_['dataset'] as core.String?,
        restrictedExportPolicy:
            json_.containsKey('restrictedExportPolicy')
                ? RestrictedExportPolicy.fromJson(
                  json_['restrictedExportPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectedResources:
            (json_['selectedResources'] as core.List?)
                ?.map(
                  (value) => SelectedResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataset != null) 'dataset': dataset!,
    if (restrictedExportPolicy != null)
      'restrictedExportPolicy': restrictedExportPolicy!,
    if (selectedResources != null) 'selectedResources': selectedResources!,
  };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
  };
}

/// Configuration for a Cloud Storage subscription.
class CloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  ///
  /// Optional.
  AvroConfig? avroConfig;

  /// User-provided name for the Cloud Storage bucket.
  ///
  /// The bucket must be created by the user. The bucket name must be without
  /// any prefix like "gs://". See the
  /// [bucket naming requirements](https://cloud.google.com/storage/docs/buckets#naming).
  ///
  /// Required.
  core.String? bucket;

  /// User-provided format string specifying how to represent datetimes in Cloud
  /// Storage filenames.
  ///
  /// See the
  /// [datetime format guidance](https://cloud.google.com/pubsub/docs/create-cloudstorage-subscription#file_names).
  ///
  /// Optional.
  core.String? filenameDatetimeFormat;

  /// User-provided prefix for Cloud Storage filename.
  ///
  /// See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  ///
  /// Optional.
  core.String? filenamePrefix;

  /// User-provided suffix for Cloud Storage filename.
  ///
  /// See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  /// Must not end in "/".
  ///
  /// Optional.
  core.String? filenameSuffix;

  /// The maximum bytes that can be written to a Cloud Storage file before a new
  /// file is created.
  ///
  /// Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where
  /// messages are larger than the limit.
  ///
  /// Optional.
  core.String? maxBytes;

  /// File batching settings.
  ///
  /// If no max_duration setting is specified, a max_duration of 5 minutes will
  /// be set by default. max_duration is required regardless of whether other
  /// file batching settings are specified. The maximum duration that can elapse
  /// before a new Cloud Storage file is created. Min 1 minute, max 10 minutes,
  /// default 5 minutes. May not exceed the subscription's acknowledgement
  /// deadline.
  ///
  /// Optional.
  core.String? maxDuration;

  /// The maximum number of messages that can be written to a Cloud Storage file
  /// before a new file is created.
  ///
  /// Min 1000 messages.
  ///
  /// Optional.
  core.String? maxMessages;

  /// The service account to use to write to Cloud Storage.
  ///
  /// The subscription creator or updater that specifies this field must have
  /// `iam.serviceAccounts.actAs` permission on the service account. If not
  /// specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// If set, message data will be written to Cloud Storage in text format.
  ///
  /// Optional.
  TextConfig? textConfig;

  CloudStorageConfig({
    this.avroConfig,
    this.bucket,
    this.filenameDatetimeFormat,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.maxMessages,
    this.serviceAccountEmail,
    this.textConfig,
  });

  CloudStorageConfig.fromJson(core.Map json_)
    : this(
        avroConfig:
            json_.containsKey('avroConfig')
                ? AvroConfig.fromJson(
                  json_['avroConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bucket: json_['bucket'] as core.String?,
        filenameDatetimeFormat: json_['filenameDatetimeFormat'] as core.String?,
        filenamePrefix: json_['filenamePrefix'] as core.String?,
        filenameSuffix: json_['filenameSuffix'] as core.String?,
        maxBytes: json_['maxBytes'] as core.String?,
        maxDuration: json_['maxDuration'] as core.String?,
        maxMessages: json_['maxMessages'] as core.String?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
        textConfig:
            json_.containsKey('textConfig')
                ? TextConfig.fromJson(
                  json_['textConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (avroConfig != null) 'avroConfig': avroConfig!,
    if (bucket != null) 'bucket': bucket!,
    if (filenameDatetimeFormat != null)
      'filenameDatetimeFormat': filenameDatetimeFormat!,
    if (filenamePrefix != null) 'filenamePrefix': filenamePrefix!,
    if (filenameSuffix != null) 'filenameSuffix': filenameSuffix!,
    if (maxBytes != null) 'maxBytes': maxBytes!,
    if (maxDuration != null) 'maxDuration': maxDuration!,
    if (maxMessages != null) 'maxMessages': maxMessages!,
    if (serviceAccountEmail != null)
      'serviceAccountEmail': serviceAccountEmail!,
    if (textConfig != null) 'textConfig': textConfig!,
  };
}

/// A data exchange is a container that lets you share data.
///
/// Along with the descriptive information about the data exchange, it contains
/// listings that reference shared datasets.
class DataExchange {
  /// Description of the data exchange.
  ///
  /// The description must not contain Unicode non-characters as well as C0 and
  /// C1 control codes except tabs (HT), new lines (LF), carriage returns (CR),
  /// and page breaks (FF). Default value is an empty string. Max length: 2000
  /// bytes.
  ///
  /// Optional.
  core.String? description;

  /// Type of discovery on the discovery page for all the listings under this
  /// exchange.
  ///
  /// Updating this field also updates (overwrites) the discovery_type field for
  /// all the listings under this exchange.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISCOVERY_TYPE_UNSPECIFIED" : Unspecified. Defaults to
  /// DISCOVERY_TYPE_PRIVATE.
  /// - "DISCOVERY_TYPE_PRIVATE" : The Data exchange/listing can be discovered
  /// in the 'Private' results list.
  /// - "DISCOVERY_TYPE_PUBLIC" : The Data exchange/listing can be discovered in
  /// the 'Public' results list.
  core.String? discoveryType;

  /// Human-readable display name of the data exchange.
  ///
  /// The display name must contain only Unicode letters, numbers (0-9),
  /// underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start
  /// or end with spaces. Default value is an empty string. Max length: 63
  /// bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Documentation describing the data exchange.
  ///
  /// Optional.
  core.String? documentation;

  /// Base64 encoded image representing the data exchange.
  ///
  /// Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the
  /// API only performs validation on size of the encoded data. Note: For byte
  /// fields, the content of the fields are base64-encoded (which increases the
  /// size of the data by 33-36%) when using JSON on the wire.
  ///
  /// Optional.
  core.String? icon;
  core.List<core.int> get iconAsBytes => convert.base64.decode(icon!);

  set iconAsBytes(core.List<core.int> bytes_) {
    icon = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Number of listings contained in the data exchange.
  ///
  /// Output only.
  core.int? listingCount;

  /// By default, false.
  ///
  /// If true, the DataExchange has an email sharing mandate enabled.
  ///
  /// Optional.
  core.bool? logLinkedDatasetQueryUserEmail;

  /// The resource name of the data exchange.
  ///
  /// e.g. `projects/myproject/locations/us/dataExchanges/123`.
  ///
  /// Output only.
  core.String? name;

  /// Email or URL of the primary point of contact of the data exchange.
  ///
  /// Max Length: 1000 bytes.
  ///
  /// Optional.
  core.String? primaryContact;

  /// Configurable data sharing environment option for a data exchange.
  ///
  /// Optional.
  SharingEnvironmentConfig? sharingEnvironmentConfig;

  DataExchange({
    this.description,
    this.discoveryType,
    this.displayName,
    this.documentation,
    this.icon,
    this.listingCount,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.primaryContact,
    this.sharingEnvironmentConfig,
  });

  DataExchange.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        discoveryType: json_['discoveryType'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        icon: json_['icon'] as core.String?,
        listingCount: json_['listingCount'] as core.int?,
        logLinkedDatasetQueryUserEmail:
            json_['logLinkedDatasetQueryUserEmail'] as core.bool?,
        name: json_['name'] as core.String?,
        primaryContact: json_['primaryContact'] as core.String?,
        sharingEnvironmentConfig:
            json_.containsKey('sharingEnvironmentConfig')
                ? SharingEnvironmentConfig.fromJson(
                  json_['sharingEnvironmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (discoveryType != null) 'discoveryType': discoveryType!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (icon != null) 'icon': icon!,
    if (listingCount != null) 'listingCount': listingCount!,
    if (logLinkedDatasetQueryUserEmail != null)
      'logLinkedDatasetQueryUserEmail': logLinkedDatasetQueryUserEmail!,
    if (name != null) 'name': name!,
    if (primaryContact != null) 'primaryContact': primaryContact!,
    if (sharingEnvironmentConfig != null)
      'sharingEnvironmentConfig': sharingEnvironmentConfig!,
  };
}

/// Contains details of the data provider.
typedef DataProvider = $DataProvider;

/// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
class DcrExchangeConfig {
  /// If True, when subscribing to this DCR, it will create only one linked
  /// dataset containing all resources shared within the cleanroom.
  ///
  /// If False, when subscribing to this DCR, it will create 1 linked dataset
  /// per listing. This is not configurable, and by default, all new DCRs will
  /// have the restriction set to True.
  ///
  /// Output only.
  core.bool? singleLinkedDatasetPerCleanroom;

  /// If True, this DCR restricts the contributors to sharing only a single
  /// resource in a Listing.
  ///
  /// And no two resources should have the same IDs. So if a contributor adds a
  /// view with a conflicting name, the CreateListing API will reject the
  /// request. if False, the data contributor can publish an entire dataset (as
  /// before). This is not configurable, and by default, all new DCRs will have
  /// the restriction set to True.
  ///
  /// Output only.
  core.bool? singleSelectedResourceSharingRestriction;

  DcrExchangeConfig({
    this.singleLinkedDatasetPerCleanroom,
    this.singleSelectedResourceSharingRestriction,
  });

  DcrExchangeConfig.fromJson(core.Map json_)
    : this(
        singleLinkedDatasetPerCleanroom:
            json_['singleLinkedDatasetPerCleanroom'] as core.bool?,
        singleSelectedResourceSharingRestriction:
            json_['singleSelectedResourceSharingRestriction'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (singleLinkedDatasetPerCleanroom != null)
      'singleLinkedDatasetPerCleanroom': singleLinkedDatasetPerCleanroom!,
    if (singleSelectedResourceSharingRestriction != null)
      'singleSelectedResourceSharingRestriction':
          singleSelectedResourceSharingRestriction!,
  };
}

/// Dead lettering is done on a best effort basis.
///
/// The same message might be dead lettered multiple times. If validation on any
/// of the fields fails at subscription creation/updation, the create/update
/// subscription request will fail.
class DeadLetterPolicy {
  /// The name of the topic to which dead letter messages should be published.
  ///
  /// Format is `projects/{project}/topics/{topic}`.The Pub/Sub service account
  /// associated with the enclosing subscription's parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Publish() to this topic. The operation will fail if the
  /// topic does not exist. Users should ensure that there is a subscription
  /// attached to this topic since messages published to a topic with no
  /// subscriptions are lost.
  ///
  /// Optional.
  core.String? deadLetterTopic;

  /// The maximum number of delivery attempts for any message.
  ///
  /// The value must be between 5 and 100. The number of delivery attempts is
  /// defined as 1 + (the sum of number of NACKs and number of times the
  /// acknowledgement deadline has been exceeded for the message). A NACK is any
  /// call to ModifyAckDeadline with a 0 deadline. Note that client libraries
  /// may automatically extend ack_deadlines. This field will be honored on a
  /// best effort basis. If this parameter is 0, a default value of 5 is used.
  ///
  /// Optional.
  core.int? maxDeliveryAttempts;

  DeadLetterPolicy({this.deadLetterTopic, this.maxDeliveryAttempts});

  DeadLetterPolicy.fromJson(core.Map json_)
    : this(
        deadLetterTopic: json_['deadLetterTopic'] as core.String?,
        maxDeliveryAttempts: json_['maxDeliveryAttempts'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deadLetterTopic != null) 'deadLetterTopic': deadLetterTopic!,
    if (maxDeliveryAttempts != null)
      'maxDeliveryAttempts': maxDeliveryAttempts!,
  };
}

/// Default Analytics Hub data exchange, used for secured data sharing.
typedef DefaultExchangeConfig = $Empty;

/// Defines the destination bigquery dataset.
class DestinationDataset {
  /// A reference that identifies the destination dataset.
  ///
  /// Required.
  DestinationDatasetReference? datasetReference;

  /// A user-friendly description of the dataset.
  ///
  /// Optional.
  core.String? description;

  /// A descriptive name for the dataset.
  ///
  /// Optional.
  core.String? friendlyName;

  /// The labels associated with this dataset.
  ///
  /// You can use these to organize and group your datasets. You can set this
  /// property when inserting or updating a dataset. See
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels
  /// for more information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The geographic location where the dataset should reside.
  ///
  /// See https://cloud.google.com/bigquery/docs/locations for supported
  /// locations.
  ///
  /// Required.
  core.String? location;

  DestinationDataset({
    this.datasetReference,
    this.description,
    this.friendlyName,
    this.labels,
    this.location,
  });

  DestinationDataset.fromJson(core.Map json_)
    : this(
        datasetReference:
            json_.containsKey('datasetReference')
                ? DestinationDatasetReference.fromJson(
                  json_['datasetReference']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        friendlyName: json_['friendlyName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (datasetReference != null) 'datasetReference': datasetReference!,
    if (description != null) 'description': description!,
    if (friendlyName != null) 'friendlyName': friendlyName!,
    if (labels != null) 'labels': labels!,
    if (location != null) 'location': location!,
  };
}

typedef DestinationDatasetReference = $DestinationDatasetReference;

/// Defines the destination Pub/Sub subscription.
class DestinationPubSubSubscription {
  /// Destination Pub/Sub subscription resource.
  ///
  /// Required.
  GooglePubsubV1Subscription? pubsubSubscription;

  DestinationPubSubSubscription({this.pubsubSubscription});

  DestinationPubSubSubscription.fromJson(core.Map json_)
    : this(
        pubsubSubscription:
            json_.containsKey('pubsubSubscription')
                ? GooglePubsubV1Subscription.fromJson(
                  json_['pubsubSubscription']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pubsubSubscription != null) 'pubsubSubscription': pubsubSubscription!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A policy that specifies the conditions for resource expiration (i.e.,
/// automatic resource deletion).
typedef ExpirationPolicy = $ExpirationPolicy;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({this.options});

  GetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        options:
            json_.containsKey('options')
                ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions00;

/// Commercial info contains the information about the commercial data products
/// associated with the listing.
class GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo {
  /// Details of the Marketplace Data Product associated with the Listing.
  ///
  /// Output only.
  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo?
  cloudMarketplace;

  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo({
    this.cloudMarketplace,
  });

  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo.fromJson(
    core.Map json_,
  ) : this(
        cloudMarketplace:
            json_.containsKey('cloudMarketplace')
                ? GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo.fromJson(
                  json_['cloudMarketplace']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudMarketplace != null) 'cloudMarketplace': cloudMarketplace!,
  };
}

/// Specifies the details of the Marketplace Data Product associated with the
/// Listing.
class GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo {
  /// Commercial state of the Marketplace Data Product.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMMERCIAL_STATE_UNSPECIFIED" : Commercialization is incomplete and
  /// cannot be used.
  /// - "ONBOARDING" : Commercialization has been initialized.
  /// - "ACTIVE" : Commercialization is complete and available for use.
  core.String? commercialState;

  /// Resource name of the commercial service associated with the Marketplace
  /// Data Product.
  ///
  /// e.g. example.com
  ///
  /// Output only.
  core.String? service;

  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo({
    this.commercialState,
    this.service,
  });

  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfoGoogleCloudMarketplaceInfo.fromJson(
    core.Map json_,
  ) : this(
        commercialState: json_['commercialState'] as core.String?,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commercialState != null) 'commercialState': commercialState!,
    if (service != null) 'service': service!,
  };
}

/// Commercial info metadata for this subscription.
class GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo {
  /// This is set when the subscription is commercialised via Cloud Marketplace.
  ///
  /// Output only.
  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo?
  cloudMarketplace;

  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo({
    this.cloudMarketplace,
  });

  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo.fromJson(
    core.Map json_,
  ) : this(
        cloudMarketplace:
            json_.containsKey('cloudMarketplace')
                ? GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo.fromJson(
                  json_['cloudMarketplace']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudMarketplace != null) 'cloudMarketplace': cloudMarketplace!,
  };
}

/// Cloud Marketplace commercial metadata for this subscription.
class GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo {
  /// Resource name of the Marketplace Order.
  core.String? order;

  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo({
    this.order,
  });

  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfoGoogleCloudMarketplaceInfo.fromJson(
    core.Map json_,
  ) : this(order: json_['order'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (order != null) 'order': order!,
  };
}

/// Defines the destination Pub/Sub subscription.
///
/// If none of `push_config`, `bigquery_config`, `cloud_storage_config`,
/// `pubsub_export_config`, or `pubsublite_export_config` is set, then the
/// subscriber will pull and ack messages using API methods. At most one of
/// these fields may be set.
class GooglePubsubV1Subscription {
  /// The approximate amount of time (on a best-effort basis) Pub/Sub waits for
  /// the subscriber to acknowledge receipt before resending the message.
  ///
  /// In the interval after the message is delivered and before it is
  /// acknowledged, it is considered to be _outstanding_. During that time
  /// period, the message will not be redelivered (on a best-effort basis). For
  /// pull subscriptions, this value is used as the initial value for the ack
  /// deadline. To override this value for a given message, call
  /// `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming
  /// pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if
  /// using streaming pull. The minimum custom deadline you can specify is 10
  /// seconds. The maximum custom deadline you can specify is 600 seconds (10
  /// minutes). If this parameter is 0, a default value of 10 seconds is used.
  /// For push delivery, this value is also used to set the request timeout for
  /// the call to the push endpoint. If the subscriber never acknowledges the
  /// message, the Pub/Sub system will eventually redeliver the message.
  ///
  /// Optional.
  core.int? ackDeadlineSeconds;

  /// If delivery to BigQuery is used with this subscription, this field is used
  /// to configure it.
  ///
  /// Optional.
  BigQueryConfig? bigqueryConfig;

  /// If delivery to Google Cloud Storage is used with this subscription, this
  /// field is used to configure it.
  ///
  /// Optional.
  CloudStorageConfig? cloudStorageConfig;

  /// A policy that specifies the conditions for dead lettering messages in this
  /// subscription.
  ///
  /// If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub
  /// service account associated with this subscriptions's parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  ///
  /// Optional.
  DeadLetterPolicy? deadLetterPolicy;

  /// Indicates whether the subscription is detached from its topic.
  ///
  /// Detached subscriptions don't receive messages from their topic and don't
  /// retain any backlog. `Pull` and `StreamingPull` requests will return
  /// FAILED_PRECONDITION. If the subscription is a push subscription, pushes to
  /// the endpoint will not be made.
  ///
  /// Optional.
  core.bool? detached;

  /// If true, Pub/Sub provides the following guarantees for the delivery of a
  /// message with a given value of `message_id` on this subscription: * The
  /// message sent to a subscriber is guaranteed not to be resent before the
  /// message's acknowledgement deadline expires.
  ///
  /// * An acknowledged message will not be resent to a subscriber. Note that
  /// subscribers may still receive multiple copies of a message when
  /// `enable_exactly_once_delivery` is true if the message was published
  /// multiple times by a publisher client. These copies are considered distinct
  /// by Pub/Sub and have distinct `message_id` values.
  ///
  /// Optional.
  core.bool? enableExactlyOnceDelivery;

  /// If true, messages published with the same `ordering_key` in
  /// `PubsubMessage` will be delivered to the subscribers in the order in which
  /// they are received by the Pub/Sub system.
  ///
  /// Otherwise, they may be delivered in any order.
  ///
  /// Optional.
  core.bool? enableMessageOrdering;

  /// A policy that specifies the conditions for this subscription's expiration.
  ///
  /// A subscription is considered active as long as any connected subscriber is
  /// successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If `expiration_policy` is not set, a
  /// *default policy* with `ttl` of 31 days will be used. The minimum allowed
  /// value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set,
  /// but `expiration_policy.ttl` is not set, the subscription never expires.
  ///
  /// Optional.
  ExpirationPolicy? expirationPolicy;

  /// An expression written in the Pub/Sub
  /// [filter language](https://cloud.google.com/pubsub/docs/filtering).
  ///
  /// If non-empty, then only `PubsubMessage`s whose `attributes` field matches
  /// the filter are delivered on this subscription. If empty, then no messages
  /// are filtered out.
  ///
  /// Optional.
  core.String? filter;

  /// See
  /// [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// How long to retain unacknowledged messages in the subscription's backlog,
  /// from the moment a message is published.
  ///
  /// If `retain_acked_messages` is true, then this also configures the
  /// retention of acknowledged messages, and thus configures how far back in
  /// time a `Seek` can be done. Defaults to 7 days. Cannot be more than 31 days
  /// or less than 10 minutes.
  ///
  /// Optional.
  core.String? messageRetentionDuration;

  /// Transforms to be applied to messages before they are delivered to
  /// subscribers.
  ///
  /// Transforms are applied in the order specified.
  ///
  /// Optional.
  core.List<MessageTransform>? messageTransforms;

  /// Name of the subscription.
  ///
  /// Format is `projects/{project}/subscriptions/{sub}`.
  ///
  /// Required.
  core.String? name;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it.
  ///
  /// Optional.
  PushConfig? pushConfig;

  /// Indicates whether to retain acknowledged messages.
  ///
  /// If true, then messages are not expunged from the subscription's backlog,
  /// even if they are acknowledged, until they fall out of the
  /// `message_retention_duration` window. This must be true if you would like
  /// to \[`Seek` to a
  /// timestamp\](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time)
  /// in the past to replay previously-acknowledged messages.
  ///
  /// Optional.
  core.bool? retainAckedMessages;

  /// A policy that specifies how Pub/Sub retries message delivery for this
  /// subscription.
  ///
  /// If not set, the default retry policy is applied. This generally implies
  /// that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline
  /// exceeded events for a given message.
  ///
  /// Optional.
  RetryPolicy? retryPolicy;

  GooglePubsubV1Subscription({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.detached,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.messageTransforms,
    this.name,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
  });

  GooglePubsubV1Subscription.fromJson(core.Map json_)
    : this(
        ackDeadlineSeconds: json_['ackDeadlineSeconds'] as core.int?,
        bigqueryConfig:
            json_.containsKey('bigqueryConfig')
                ? BigQueryConfig.fromJson(
                  json_['bigqueryConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudStorageConfig:
            json_.containsKey('cloudStorageConfig')
                ? CloudStorageConfig.fromJson(
                  json_['cloudStorageConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deadLetterPolicy:
            json_.containsKey('deadLetterPolicy')
                ? DeadLetterPolicy.fromJson(
                  json_['deadLetterPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        detached: json_['detached'] as core.bool?,
        enableExactlyOnceDelivery:
            json_['enableExactlyOnceDelivery'] as core.bool?,
        enableMessageOrdering: json_['enableMessageOrdering'] as core.bool?,
        expirationPolicy:
            json_.containsKey('expirationPolicy')
                ? ExpirationPolicy.fromJson(
                  json_['expirationPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        messageRetentionDuration:
            json_['messageRetentionDuration'] as core.String?,
        messageTransforms:
            (json_['messageTransforms'] as core.List?)
                ?.map(
                  (value) => MessageTransform.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        pushConfig:
            json_.containsKey('pushConfig')
                ? PushConfig.fromJson(
                  json_['pushConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retainAckedMessages: json_['retainAckedMessages'] as core.bool?,
        retryPolicy:
            json_.containsKey('retryPolicy')
                ? RetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ackDeadlineSeconds != null) 'ackDeadlineSeconds': ackDeadlineSeconds!,
    if (bigqueryConfig != null) 'bigqueryConfig': bigqueryConfig!,
    if (cloudStorageConfig != null) 'cloudStorageConfig': cloudStorageConfig!,
    if (deadLetterPolicy != null) 'deadLetterPolicy': deadLetterPolicy!,
    if (detached != null) 'detached': detached!,
    if (enableExactlyOnceDelivery != null)
      'enableExactlyOnceDelivery': enableExactlyOnceDelivery!,
    if (enableMessageOrdering != null)
      'enableMessageOrdering': enableMessageOrdering!,
    if (expirationPolicy != null) 'expirationPolicy': expirationPolicy!,
    if (filter != null) 'filter': filter!,
    if (labels != null) 'labels': labels!,
    if (messageRetentionDuration != null)
      'messageRetentionDuration': messageRetentionDuration!,
    if (messageTransforms != null) 'messageTransforms': messageTransforms!,
    if (name != null) 'name': name!,
    if (pushConfig != null) 'pushConfig': pushConfig!,
    if (retainAckedMessages != null)
      'retainAckedMessages': retainAckedMessages!,
    if (retryPolicy != null) 'retryPolicy': retryPolicy!,
  };
}

/// User-defined JavaScript function that can transform or filter a Pub/Sub
/// message.
class JavaScriptUDF {
  /// JavaScript code that contains a function `function_name` with the below
  /// signature: ``` / * * * Transforms a Pub/Sub message.
  ///
  /// * @return {(Object)>|null)} - To * filter a message, return `null`. To
  /// transform a message return a map * with the following keys: * - (required)
  /// 'data' : {string} * - (optional) 'attributes' : {Object} * Returning empty
  /// `attributes` will remove all attributes from the * message. * * @param
  /// {(Object)>} Pub/Sub * message. Keys: * - (required) 'data' : {string} * -
  /// (required) 'attributes' : {Object} * * @param {Object} metadata - Pub/Sub
  /// message metadata. * Keys: * - (required) 'message_id' : {string} * -
  /// (optional) 'publish_time': {string} YYYY-MM-DDTHH:MM:SSZ format * -
  /// (optional) 'ordering_key': {string} * / function (message, metadata) { }
  /// ```
  ///
  /// Required.
  core.String? code;

  /// Name of the JavasScript function that should applied to Pub/Sub messages.
  ///
  /// Required.
  core.String? functionName;

  JavaScriptUDF({this.code, this.functionName});

  JavaScriptUDF.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        functionName: json_['functionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (functionName != null) 'functionName': functionName!,
  };
}

/// Reference to a linked resource tracked by this Subscription.
class LinkedResource {
  /// Name of the linked dataset, e.g.
  /// projects/subscriberproject/datasets/linked_dataset
  ///
  /// Output only.
  core.String? linkedDataset;

  /// Name of the Pub/Sub subscription, e.g.
  /// projects/subscriberproject/subscriptions/subscriptions/sub_id
  ///
  /// Output only.
  core.String? linkedPubsubSubscription;

  /// Listing for which linked resource is created.
  ///
  /// Output only.
  core.String? listing;

  LinkedResource({
    this.linkedDataset,
    this.linkedPubsubSubscription,
    this.listing,
  });

  LinkedResource.fromJson(core.Map json_)
    : this(
        linkedDataset: json_['linkedDataset'] as core.String?,
        linkedPubsubSubscription:
            json_['linkedPubsubSubscription'] as core.String?,
        listing: json_['listing'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (linkedDataset != null) 'linkedDataset': linkedDataset!,
    if (linkedPubsubSubscription != null)
      'linkedPubsubSubscription': linkedPubsubSubscription!,
    if (listing != null) 'listing': listing!,
  };
}

/// Message for response to the list of data exchanges.
class ListDataExchangesResponse {
  /// The list of data exchanges.
  core.List<DataExchange>? dataExchanges;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  ListDataExchangesResponse({this.dataExchanges, this.nextPageToken});

  ListDataExchangesResponse.fromJson(core.Map json_)
    : this(
        dataExchanges:
            (json_['dataExchanges'] as core.List?)
                ?.map(
                  (value) => DataExchange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataExchanges != null) 'dataExchanges': dataExchanges!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to the list of Listings.
class ListListingsResponse {
  /// The list of Listing.
  core.List<Listing>? listings;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  ListListingsResponse({this.listings, this.nextPageToken});

  ListListingsResponse.fromJson(core.Map json_)
    : this(
        listings:
            (json_['listings'] as core.List?)
                ?.map(
                  (value) => Listing.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listings != null) 'listings': listings!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing data exchanges in an organization and
/// location.
class ListOrgDataExchangesResponse {
  /// The list of data exchanges.
  core.List<DataExchange>? dataExchanges;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  ListOrgDataExchangesResponse({this.dataExchanges, this.nextPageToken});

  ListOrgDataExchangesResponse.fromJson(core.Map json_)
    : this(
        dataExchanges:
            (json_['dataExchanges'] as core.List?)
                ?.map(
                  (value) => DataExchange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataExchanges != null) 'dataExchanges': dataExchanges!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to the listing of shared resource subscriptions.
class ListSharedResourceSubscriptionsResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// The list of subscriptions.
  core.List<Subscription>? sharedResourceSubscriptions;

  ListSharedResourceSubscriptionsResponse({
    this.nextPageToken,
    this.sharedResourceSubscriptions,
  });

  ListSharedResourceSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sharedResourceSubscriptions:
            (json_['sharedResourceSubscriptions'] as core.List?)
                ?.map(
                  (value) => Subscription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sharedResourceSubscriptions != null)
      'sharedResourceSubscriptions': sharedResourceSubscriptions!,
  };
}

/// Message for response to the listing of subscriptions.
class ListSubscriptionsResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// The list of subscriptions.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({this.nextPageToken, this.subscriptions});

  ListSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscriptions:
            (json_['subscriptions'] as core.List?)
                ?.map(
                  (value) => Subscription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (subscriptions != null) 'subscriptions': subscriptions!,
  };
}

/// A listing is what gets published into a data exchange that a subscriber can
/// subscribe to.
///
/// It contains a reference to the data source along with descriptive
/// information that will help subscribers find and subscribe the data.
class Listing {
  /// If true, the listing is only available to get the resource metadata.
  ///
  /// Listing is non subscribable.
  ///
  /// Optional.
  core.bool? allowOnlyMetadataSharing;

  /// Shared dataset i.e. BigQuery dataset source.
  BigQueryDatasetSource? bigqueryDataset;

  /// Categories of the listing.
  ///
  /// Up to five categories are allowed.
  ///
  /// Optional.
  core.List<core.String>? categories;

  /// Commercial info contains the information about the commercial data
  /// products associated with the listing.
  ///
  /// Output only.
  GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo? commercialInfo;

  /// Details of the data provider who owns the source data.
  ///
  /// Optional.
  DataProvider? dataProvider;

  /// Short description of the listing.
  ///
  /// The description must not contain Unicode non-characters and C0 and C1
  /// control codes except tabs (HT), new lines (LF), carriage returns (CR), and
  /// page breaks (FF). Default value is an empty string. Max length: 2000
  /// bytes.
  ///
  /// Optional.
  core.String? description;

  /// Type of discovery of the listing on the discovery page.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISCOVERY_TYPE_UNSPECIFIED" : Unspecified. Defaults to
  /// DISCOVERY_TYPE_PRIVATE.
  /// - "DISCOVERY_TYPE_PRIVATE" : The Data exchange/listing can be discovered
  /// in the 'Private' results list.
  /// - "DISCOVERY_TYPE_PUBLIC" : The Data exchange/listing can be discovered in
  /// the 'Public' results list.
  core.String? discoveryType;

  /// Human-readable display name of the listing.
  ///
  /// The display name must contain only Unicode letters, numbers (0-9),
  /// underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or
  /// end with spaces. Default value is an empty string. Max length: 63 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Documentation describing the listing.
  ///
  /// Optional.
  core.String? documentation;

  /// Base64 encoded image representing the listing.
  ///
  /// Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the
  /// API only performs validation on size of the encoded data. Note: For byte
  /// fields, the contents of the field are base64-encoded (which increases the
  /// size of the data by 33-36%) when using JSON on the wire.
  ///
  /// Optional.
  core.String? icon;
  core.List<core.int> get iconAsBytes => convert.base64.decode(icon!);

  set iconAsBytes(core.List<core.int> bytes_) {
    icon = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// By default, false.
  ///
  /// If true, the Listing has an email sharing mandate enabled.
  ///
  /// Optional.
  core.bool? logLinkedDatasetQueryUserEmail;

  /// The resource name of the listing.
  ///
  /// e.g. `projects/myproject/locations/us/dataExchanges/123/listings/456`
  ///
  /// Output only.
  core.String? name;

  /// Email or URL of the primary point of contact of the listing.
  ///
  /// Max Length: 1000 bytes.
  ///
  /// Optional.
  core.String? primaryContact;

  /// Details of the publisher who owns the listing and who can share the source
  /// data.
  ///
  /// Optional.
  Publisher? publisher;

  /// Pub/Sub topic source.
  PubSubTopicSource? pubsubTopic;

  /// Email or URL of the request access of the listing.
  ///
  /// Subscribers can use this reference to request access. Max Length: 1000
  /// bytes.
  ///
  /// Optional.
  core.String? requestAccess;

  /// Listing shared asset type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SHARED_RESOURCE_TYPE_UNSPECIFIED" : Not specified.
  /// - "BIGQUERY_DATASET" : BigQuery Dataset Asset.
  /// - "PUBSUB_TOPIC" : Pub/Sub Topic Asset.
  core.String? resourceType;

  /// If set, restricted export configuration will be propagated and enforced on
  /// the linked dataset.
  ///
  /// Optional.
  RestrictedExportConfig? restrictedExportConfig;

  /// Current state of the listing.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : Subscribable state. Users with
  /// dataexchange.listings.subscribe permission can subscribe to this listing.
  core.String? state;

  Listing({
    this.allowOnlyMetadataSharing,
    this.bigqueryDataset,
    this.categories,
    this.commercialInfo,
    this.dataProvider,
    this.description,
    this.discoveryType,
    this.displayName,
    this.documentation,
    this.icon,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.primaryContact,
    this.publisher,
    this.pubsubTopic,
    this.requestAccess,
    this.resourceType,
    this.restrictedExportConfig,
    this.state,
  });

  Listing.fromJson(core.Map json_)
    : this(
        allowOnlyMetadataSharing:
            json_['allowOnlyMetadataSharing'] as core.bool?,
        bigqueryDataset:
            json_.containsKey('bigqueryDataset')
                ? BigQueryDatasetSource.fromJson(
                  json_['bigqueryDataset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        commercialInfo:
            json_.containsKey('commercialInfo')
                ? GoogleCloudBigqueryAnalyticshubV1ListingCommercialInfo.fromJson(
                  json_['commercialInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataProvider:
            json_.containsKey('dataProvider')
                ? DataProvider.fromJson(
                  json_['dataProvider'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        discoveryType: json_['discoveryType'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        icon: json_['icon'] as core.String?,
        logLinkedDatasetQueryUserEmail:
            json_['logLinkedDatasetQueryUserEmail'] as core.bool?,
        name: json_['name'] as core.String?,
        primaryContact: json_['primaryContact'] as core.String?,
        publisher:
            json_.containsKey('publisher')
                ? Publisher.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pubsubTopic:
            json_.containsKey('pubsubTopic')
                ? PubSubTopicSource.fromJson(
                  json_['pubsubTopic'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestAccess: json_['requestAccess'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        restrictedExportConfig:
            json_.containsKey('restrictedExportConfig')
                ? RestrictedExportConfig.fromJson(
                  json_['restrictedExportConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowOnlyMetadataSharing != null)
      'allowOnlyMetadataSharing': allowOnlyMetadataSharing!,
    if (bigqueryDataset != null) 'bigqueryDataset': bigqueryDataset!,
    if (categories != null) 'categories': categories!,
    if (commercialInfo != null) 'commercialInfo': commercialInfo!,
    if (dataProvider != null) 'dataProvider': dataProvider!,
    if (description != null) 'description': description!,
    if (discoveryType != null) 'discoveryType': discoveryType!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (icon != null) 'icon': icon!,
    if (logLinkedDatasetQueryUserEmail != null)
      'logLinkedDatasetQueryUserEmail': logLinkedDatasetQueryUserEmail!,
    if (name != null) 'name': name!,
    if (primaryContact != null) 'primaryContact': primaryContact!,
    if (publisher != null) 'publisher': publisher!,
    if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
    if (requestAccess != null) 'requestAccess': requestAccess!,
    if (resourceType != null) 'resourceType': resourceType!,
    if (restrictedExportConfig != null)
      'restrictedExportConfig': restrictedExportConfig!,
    if (state != null) 'state': state!,
  };
}

/// All supported message transforms types.
class MessageTransform {
  /// If true, the transform is disabled and will not be applied to messages.
  ///
  /// Defaults to `false`.
  ///
  /// Optional.
  core.bool? disabled;

  /// This field is deprecated, use the `disabled` field to disable transforms.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? enabled;

  /// JavaScript User Defined Function.
  ///
  /// If multiple JavaScriptUDF's are specified on a resource, each must have a
  /// unique `function_name`.
  ///
  /// Optional.
  JavaScriptUDF? javascriptUdf;

  MessageTransform({this.disabled, this.enabled, this.javascriptUdf});

  MessageTransform.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        enabled: json_['enabled'] as core.bool?,
        javascriptUdf:
            json_.containsKey('javascriptUdf')
                ? JavaScriptUDF.fromJson(
                  json_['javascriptUdf'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabled != null) 'disabled': disabled!,
    if (enabled != null) 'enabled': enabled!,
    if (javascriptUdf != null) 'javascriptUdf': javascriptUdf!,
  };
}

/// Sets the `data` field as the HTTP body for delivery.
typedef NoWrapper = $NoWrapper;

/// Contains information needed for generating an
/// [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
typedef OidcToken = $OidcToken01;

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

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

  /// The normal, successful response of the operation.
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
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

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (auditConfigs != null) 'auditConfigs': auditConfigs!,
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Pub/Sub topic source.
class PubSubTopicSource {
  /// Region hint on where the data might be published.
  ///
  /// Data affinity regions are modifiable. See
  /// https://cloud.google.com/about/locations for full listing of possible
  /// Cloud regions.
  ///
  /// Optional.
  core.List<core.String>? dataAffinityRegions;

  /// Resource name of the Pub/Sub topic source for this listing.
  ///
  /// e.g. projects/myproject/topics/topicId
  ///
  /// Required.
  core.String? topic;

  PubSubTopicSource({this.dataAffinityRegions, this.topic});

  PubSubTopicSource.fromJson(core.Map json_)
    : this(
        dataAffinityRegions:
            (json_['dataAffinityRegions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataAffinityRegions != null)
      'dataAffinityRegions': dataAffinityRegions!,
    if (topic != null) 'topic': topic!,
  };
}

/// Contains details of the listing publisher.
typedef Publisher = $Publisher01;

/// The payload to the push endpoint is in the form of the JSON representation
/// of a PubsubMessage
/// (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
typedef PubsubWrapper = $Empty;

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// Endpoint configuration attributes that can be used to control different
  /// aspects of the message delivery.
  ///
  /// The only currently supported attribute is `x-goog-version`, which you can
  /// use to change the format of the pushed message. This attribute indicates
  /// the version of the data expected by the endpoint. This controls the shape
  /// of the pushed message (i.e., its fields and metadata). If not present
  /// during the `CreateSubscription` call, it will default to the version of
  /// the Pub/Sub API used to make such call. If not present in a
  /// `ModifyPushConfig` call, its value will not be changed. `GetSubscription`
  /// calls will always return a valid version, even if the subscription was
  /// created without this attribute. The only supported values for the
  /// `x-goog-version` attribute are: * `v1beta1`: uses the push format defined
  /// in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format
  /// defined in the v1 Pub/Sub API. For example: `attributes {
  /// "x-goog-version": "v1" }`
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributes;

  /// When set, the payload to the push endpoint is not wrapped.
  ///
  /// Optional.
  NoWrapper? noWrapper;

  /// If specified, Pub/Sub will generate and attach an OIDC JWT token as an
  /// `Authorization` header in the HTTP request for every pushed message.
  ///
  /// Optional.
  OidcToken? oidcToken;

  /// When set, the payload to the push endpoint is in the form of the JSON
  /// representation of a PubsubMessage
  /// (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  ///
  /// Optional.
  PubsubWrapper? pubsubWrapper;

  /// A URL locating the endpoint to which messages should be pushed.
  ///
  /// For example, a Webhook endpoint might use `https://example.com/push`.
  ///
  /// Optional.
  core.String? pushEndpoint;

  PushConfig({
    this.attributes,
    this.noWrapper,
    this.oidcToken,
    this.pubsubWrapper,
    this.pushEndpoint,
  });

  PushConfig.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        noWrapper:
            json_.containsKey('noWrapper')
                ? NoWrapper.fromJson(
                  json_['noWrapper'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        oidcToken:
            json_.containsKey('oidcToken')
                ? OidcToken.fromJson(
                  json_['oidcToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pubsubWrapper:
            json_.containsKey('pubsubWrapper')
                ? PubsubWrapper.fromJson(
                  json_['pubsubWrapper'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pushEndpoint: json_['pushEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (noWrapper != null) 'noWrapper': noWrapper!,
    if (oidcToken != null) 'oidcToken': oidcToken!,
    if (pubsubWrapper != null) 'pubsubWrapper': pubsubWrapper!,
    if (pushEndpoint != null) 'pushEndpoint': pushEndpoint!,
  };
}

/// Message for refreshing a subscription.
typedef RefreshSubscriptionRequest = $Empty;

/// Restricted export config, used to configure restricted export on linked
/// dataset.
typedef RestrictedExportConfig = $RestrictedExportConfig;

/// Restricted export policy used to configure restricted export on linked
/// dataset.
class RestrictedExportPolicy {
  /// If true, enable restricted export.
  ///
  /// Optional.
  core.bool? enabled;

  /// If true, restrict direct table access (read api/tabledata.list) on linked
  /// table.
  ///
  /// Optional.
  core.bool? restrictDirectTableAccess;

  /// If true, restrict export of query result derived from restricted linked
  /// dataset table.
  ///
  /// Optional.
  core.bool? restrictQueryResult;

  RestrictedExportPolicy({
    this.enabled,
    this.restrictDirectTableAccess,
    this.restrictQueryResult,
  });

  RestrictedExportPolicy.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        restrictDirectTableAccess:
            json_['restrictDirectTableAccess'] as core.bool?,
        restrictQueryResult: json_['restrictQueryResult'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabled != null) 'enabled': enabled!,
    if (restrictDirectTableAccess != null)
      'restrictDirectTableAccess': restrictDirectTableAccess!,
    if (restrictQueryResult != null)
      'restrictQueryResult': restrictQueryResult!,
  };
}

/// A policy that specifies how Pub/Sub retries message delivery.
///
/// Retry delay will be exponential based on provided minimum and maximum
/// backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy
/// will be triggered on NACKs or acknowledgement deadline exceeded events for a
/// given message. Retry Policy is implemented on a best effort basis. At times,
/// the delay between consecutive deliveries may not match the configuration.
/// That is, delay can be more or less than configured backoff.
typedef RetryPolicy = $RetryPolicy;

/// Message for revoking a subscription.
class RevokeSubscriptionRequest {
  /// If the subscription is commercial then this field must be set to true,
  /// otherwise a failure is thrown.
  ///
  /// This acts as a safety guard to avoid revoking commercial subscriptions
  /// accidentally.
  ///
  /// Optional.
  core.bool? revokeCommercial;

  RevokeSubscriptionRequest({this.revokeCommercial});

  RevokeSubscriptionRequest.fromJson(core.Map json_)
    : this(revokeCommercial: json_['revokeCommercial'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (revokeCommercial != null) 'revokeCommercial': revokeCommercial!,
  };
}

/// Message for response when you revoke a subscription.
///
/// Empty for now.
typedef RevokeSubscriptionResponse = $Empty;

/// Resource in this dataset that is selectively shared.
class SelectedResource {
  /// Format: For routine:
  /// `projects/{projectId}/datasets/{datasetId}/routines/{routineId}`
  /// Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  ///
  /// Optional.
  core.String? routine;

  /// Format: For table:
  /// `projects/{projectId}/datasets/{datasetId}/tables/{tableId}`
  /// Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  ///
  /// Optional.
  core.String? table;

  SelectedResource({this.routine, this.table});

  SelectedResource.fromJson(core.Map json_)
    : this(
        routine: json_['routine'] as core.String?,
        table: json_['table'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (routine != null) 'routine': routine!,
    if (table != null) 'table': table!,
  };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Sharing environment is a behavior model for sharing data within a data
/// exchange.
///
/// This option is configurable for a data exchange.
class SharingEnvironmentConfig {
  /// Data Clean Room (DCR), used for privacy-safe and secured data sharing.
  DcrExchangeConfig? dcrExchangeConfig;

  /// Default Analytics Hub data exchange, used for secured data sharing.
  DefaultExchangeConfig? defaultExchangeConfig;

  SharingEnvironmentConfig({
    this.dcrExchangeConfig,
    this.defaultExchangeConfig,
  });

  SharingEnvironmentConfig.fromJson(core.Map json_)
    : this(
        dcrExchangeConfig:
            json_.containsKey('dcrExchangeConfig')
                ? DcrExchangeConfig.fromJson(
                  json_['dcrExchangeConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultExchangeConfig:
            json_.containsKey('defaultExchangeConfig')
                ? DefaultExchangeConfig.fromJson(
                  json_['defaultExchangeConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dcrExchangeConfig != null) 'dcrExchangeConfig': dcrExchangeConfig!,
    if (defaultExchangeConfig != null)
      'defaultExchangeConfig': defaultExchangeConfig!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Message for subscribing to a Data Exchange.
class SubscribeDataExchangeRequest {
  /// The parent resource path of the Subscription.
  ///
  /// e.g. `projects/subscriberproject/locations/us`
  ///
  /// Required.
  core.String? destination;

  /// BigQuery destination dataset to create for the subscriber.
  ///
  /// Optional.
  DestinationDataset? destinationDataset;

  /// Email of the subscriber.
  core.String? subscriberContact;

  /// Name of the subscription to create.
  ///
  /// e.g. `subscription1`
  ///
  /// Required.
  core.String? subscription;

  SubscribeDataExchangeRequest({
    this.destination,
    this.destinationDataset,
    this.subscriberContact,
    this.subscription,
  });

  SubscribeDataExchangeRequest.fromJson(core.Map json_)
    : this(
        destination: json_['destination'] as core.String?,
        destinationDataset:
            json_.containsKey('destinationDataset')
                ? DestinationDataset.fromJson(
                  json_['destinationDataset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriberContact: json_['subscriberContact'] as core.String?,
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
    if (destinationDataset != null) 'destinationDataset': destinationDataset!,
    if (subscriberContact != null) 'subscriberContact': subscriberContact!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Message for subscribing to a listing.
class SubscribeListingRequest {
  /// Input only.
  ///
  /// BigQuery destination dataset to create for the subscriber.
  DestinationDataset? destinationDataset;

  /// Input only.
  ///
  /// Destination Pub/Sub subscription to create for the subscriber.
  DestinationPubSubSubscription? destinationPubsubSubscription;

  SubscribeListingRequest({
    this.destinationDataset,
    this.destinationPubsubSubscription,
  });

  SubscribeListingRequest.fromJson(core.Map json_)
    : this(
        destinationDataset:
            json_.containsKey('destinationDataset')
                ? DestinationDataset.fromJson(
                  json_['destinationDataset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinationPubsubSubscription:
            json_.containsKey('destinationPubsubSubscription')
                ? DestinationPubSubSubscription.fromJson(
                  json_['destinationPubsubSubscription']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationDataset != null) 'destinationDataset': destinationDataset!,
    if (destinationPubsubSubscription != null)
      'destinationPubsubSubscription': destinationPubsubSubscription!,
  };
}

/// Message for response when you subscribe to a listing.
class SubscribeListingResponse {
  /// Subscription object created from this subscribe action.
  Subscription? subscription;

  SubscribeListingResponse({this.subscription});

  SubscribeListingResponse.fromJson(core.Map json_)
    : this(
        subscription:
            json_.containsKey('subscription')
                ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
  };
}

/// A subscription represents a subscribers' access to a particular set of
/// published data.
///
/// It contains references to associated listings, data exchanges, and linked
/// datasets.
class Subscription {
  /// This is set if this is a commercial subscription i.e. if this subscription
  /// was created from subscribing to a commercial listing.
  ///
  /// Output only.
  GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo? commercialInfo;

  /// Timestamp when the subscription was created.
  ///
  /// Output only.
  core.String? creationTime;

  /// Resource name of the source Data Exchange.
  ///
  /// e.g. projects/123/locations/us/dataExchanges/456
  ///
  /// Output only.
  core.String? dataExchange;

  /// BigQuery destination dataset to create for the subscriber.
  ///
  /// Optional.
  DestinationDataset? destinationDataset;

  /// Timestamp when the subscription was last modified.
  ///
  /// Output only.
  core.String? lastModifyTime;

  /// Map of listing resource names to associated linked resource, e.g.
  /// projects/123/locations/us/dataExchanges/456/listings/789 -\>
  /// projects/123/datasets/my_dataset For listing-level subscriptions, this is
  /// a map of size 1.
  ///
  /// Only contains values if state == STATE_ACTIVE.
  ///
  /// Output only.
  core.Map<core.String, LinkedResource>? linkedDatasetMap;

  /// Linked resources created in the subscription.
  ///
  /// Only contains values if state = STATE_ACTIVE.
  ///
  /// Output only.
  core.List<LinkedResource>? linkedResources;

  /// Resource name of the source Listing.
  ///
  /// e.g. projects/123/locations/us/dataExchanges/456/listings/789
  ///
  /// Output only.
  core.String? listing;

  /// By default, false.
  ///
  /// If true, the Subscriber agreed to the email sharing mandate that is
  /// enabled for DataExchange/Listing.
  ///
  /// Output only.
  core.bool? logLinkedDatasetQueryUserEmail;

  /// The resource name of the subscription.
  ///
  /// e.g. `projects/myproject/locations/us/subscriptions/123`.
  ///
  /// Output only.
  core.String? name;

  /// Display name of the project of this subscription.
  ///
  /// Output only.
  core.String? organizationDisplayName;

  /// Organization of the project this subscription belongs to.
  ///
  /// Output only.
  core.String? organizationId;

  /// Listing shared asset type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SHARED_RESOURCE_TYPE_UNSPECIFIED" : Not specified.
  /// - "BIGQUERY_DATASET" : BigQuery Dataset Asset.
  /// - "PUBSUB_TOPIC" : Pub/Sub Topic Asset.
  core.String? resourceType;

  /// Current state of the subscription.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "STATE_ACTIVE" : This subscription is active and the data is accessible.
  /// - "STATE_STALE" : The data referenced by this subscription is out of date
  /// and should be refreshed. This can happen when a data provider adds or
  /// removes datasets.
  /// - "STATE_INACTIVE" : This subscription has been cancelled or revoked and
  /// the data is no longer accessible.
  core.String? state;

  /// Email of the subscriber.
  ///
  /// Output only.
  core.String? subscriberContact;

  Subscription({
    this.commercialInfo,
    this.creationTime,
    this.dataExchange,
    this.destinationDataset,
    this.lastModifyTime,
    this.linkedDatasetMap,
    this.linkedResources,
    this.listing,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.organizationDisplayName,
    this.organizationId,
    this.resourceType,
    this.state,
    this.subscriberContact,
  });

  Subscription.fromJson(core.Map json_)
    : this(
        commercialInfo:
            json_.containsKey('commercialInfo')
                ? GoogleCloudBigqueryAnalyticshubV1SubscriptionCommercialInfo.fromJson(
                  json_['commercialInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        creationTime: json_['creationTime'] as core.String?,
        dataExchange: json_['dataExchange'] as core.String?,
        destinationDataset:
            json_.containsKey('destinationDataset')
                ? DestinationDataset.fromJson(
                  json_['destinationDataset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastModifyTime: json_['lastModifyTime'] as core.String?,
        linkedDatasetMap: (json_['linkedDatasetMap']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                LinkedResource.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        linkedResources:
            (json_['linkedResources'] as core.List?)
                ?.map(
                  (value) => LinkedResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        listing: json_['listing'] as core.String?,
        logLinkedDatasetQueryUserEmail:
            json_['logLinkedDatasetQueryUserEmail'] as core.bool?,
        name: json_['name'] as core.String?,
        organizationDisplayName:
            json_['organizationDisplayName'] as core.String?,
        organizationId: json_['organizationId'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        state: json_['state'] as core.String?,
        subscriberContact: json_['subscriberContact'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commercialInfo != null) 'commercialInfo': commercialInfo!,
    if (creationTime != null) 'creationTime': creationTime!,
    if (dataExchange != null) 'dataExchange': dataExchange!,
    if (destinationDataset != null) 'destinationDataset': destinationDataset!,
    if (lastModifyTime != null) 'lastModifyTime': lastModifyTime!,
    if (linkedDatasetMap != null) 'linkedDatasetMap': linkedDatasetMap!,
    if (linkedResources != null) 'linkedResources': linkedResources!,
    if (listing != null) 'listing': listing!,
    if (logLinkedDatasetQueryUserEmail != null)
      'logLinkedDatasetQueryUserEmail': logLinkedDatasetQueryUserEmail!,
    if (name != null) 'name': name!,
    if (organizationDisplayName != null)
      'organizationDisplayName': organizationDisplayName!,
    if (organizationId != null) 'organizationId': organizationId!,
    if (resourceType != null) 'resourceType': resourceType!,
    if (state != null) 'state': state!,
    if (subscriberContact != null) 'subscriberContact': subscriberContact!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Configuration for writing message data in text format.
///
/// Message payloads will be written to files as raw text, separated by a
/// newline.
typedef TextConfig = $Empty;
