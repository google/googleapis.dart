// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
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

  AnalyticsHubApi(http.Client client,
      {core.String rootUrl = 'https://analyticshub.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  /// containing DataExchanges. e.g. `organizations/myorg/locations/US`.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `projects/myproject/locations/US`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dataExchangeId] - Required. The ID of the data exchange. Must contain
  /// only Unicode letters, numbers (0-9), underscores (_). Should not use
  /// characters that require URL-escaping, or characters outside of ASCII,
  /// spaces. Max length: 100 bytes.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing data exchange.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full name of the data exchange resource that you
  /// want to delete. For example,
  /// `projects/myproject/locations/US/dataExchanges/123`.
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
  async.Future<Empty> delete(
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a data exchange.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the data exchange. e.g.
  /// `projects/myproject/locations/US/dataExchanges/123`.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `projects/myproject/locations/US`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all subscriptions on a given Data Exchange or Listing.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. Resource name of the requested target. This
  /// resource may be either a Listing or a DataExchange. e.g.
  /// projects/123/locations/US/dataExchanges/456 OR e.g.
  /// projects/123/locations/US/dataExchanges/456/listings/789
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing data exchange.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the data exchange. e.g.
  /// `projects/myproject/locations/US/dataExchanges/123`.
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
        response_ as core.Map<core.String, core.dynamic>);
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

  /// Creates a Subscription to a Data Exchange.
  ///
  /// This is a long-running operation as it will create one or more linked
  /// datasets.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Data Exchange. e.g.
  /// `projects/publisherproject/locations/US/dataExchanges/123`
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `projects/myproject/locations/US/dataExchanges/123`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+$`.
  ///
  /// [listingId] - Required. The ID of the listing to create. Must contain only
  /// Unicode letters, numbers (0-9), underscores (_). Should not use characters
  /// that require URL-escaping, or characters outside of ASCII, spaces. Max
  /// length: 100 bytes.
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
  /// `projects/myproject/locations/US/dataExchanges/123/listings/456`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dataExchanges/\[^/\]+/listings/\[^/\]+$`.
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a listing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the listing. e.g.
  /// `projects/myproject/locations/US/dataExchanges/123/listings/456`.
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
  async.Future<Listing> get(
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
  /// `projects/myproject/locations/US/dataExchanges/123`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all subscriptions on a given Data Exchange or Listing.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. Resource name of the requested target. This
  /// resource may be either a Listing or a DataExchange. e.g.
  /// projects/123/locations/US/dataExchanges/456 OR e.g.
  /// projects/123/locations/US/dataExchanges/456/listings/789
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the listing. e.g.
  /// `projects/myproject/locations/US/dataExchanges/123/listings/456`
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
  /// to. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`.
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
        response_ as core.Map<core.String, core.dynamic>);
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/123/locations/US/subscriptions/456
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
  /// projects/123/locations/US/subscriptions/456
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// projects/myproject/locations/US
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression may be used to filter by Data Exchange or
  /// Listing.
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `projects/subscriberproject/locations/US/subscriptions/123`
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
  /// projects/123/locations/US/subscriptions/456
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
        response_ as core.Map<core.String, core.dynamic>);
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

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
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
typedef AuditLogConfig = $AuditLogConfig;

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
  core.String? dataset;

  /// Resources in this dataset that are selectively shared.
  ///
  /// If this field is empty, then the entire dataset (all resources) are
  /// shared. This field is only valid for data clean room exchanges.
  ///
  /// Optional.
  core.List<SelectedResource>? selectedResources;

  BigQueryDatasetSource({
    this.dataset,
    this.selectedResources,
  });

  BigQueryDatasetSource.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? json_['dataset'] as core.String
              : null,
          selectedResources: json_.containsKey('selectedResources')
              ? (json_['selectedResources'] as core.List)
                  .map((value) => SelectedResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
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

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
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
    icon =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of listings contained in the data exchange.
  ///
  /// Output only.
  core.int? listingCount;

  /// The resource name of the data exchange.
  ///
  /// e.g. `projects/myproject/locations/US/dataExchanges/123`.
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
    this.displayName,
    this.documentation,
    this.icon,
    this.listingCount,
    this.name,
    this.primaryContact,
    this.sharingEnvironmentConfig,
  });

  DataExchange.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentation: json_.containsKey('documentation')
              ? json_['documentation'] as core.String
              : null,
          icon: json_.containsKey('icon') ? json_['icon'] as core.String : null,
          listingCount: json_.containsKey('listingCount')
              ? json_['listingCount'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryContact: json_.containsKey('primaryContact')
              ? json_['primaryContact'] as core.String
              : null,
          sharingEnvironmentConfig:
              json_.containsKey('sharingEnvironmentConfig')
                  ? SharingEnvironmentConfig.fromJson(
                      json_['sharingEnvironmentConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (documentation != null) 'documentation': documentation!,
        if (icon != null) 'icon': icon!,
        if (listingCount != null) 'listingCount': listingCount!,
        if (name != null) 'name': name!,
        if (primaryContact != null) 'primaryContact': primaryContact!,
        if (sharingEnvironmentConfig != null)
          'sharingEnvironmentConfig': sharingEnvironmentConfig!,
      };
}

/// Contains details of the data provider.
class DataProvider {
  /// Name of the data provider.
  ///
  /// Optional.
  core.String? name;

  /// Email or URL of the data provider.
  ///
  /// Max Length: 1000 bytes.
  ///
  /// Optional.
  core.String? primaryContact;

  DataProvider({
    this.name,
    this.primaryContact,
  });

  DataProvider.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryContact: json_.containsKey('primaryContact')
              ? json_['primaryContact'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (primaryContact != null) 'primaryContact': primaryContact!,
      };
}

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
              json_.containsKey('singleLinkedDatasetPerCleanroom')
                  ? json_['singleLinkedDatasetPerCleanroom'] as core.bool
                  : null,
          singleSelectedResourceSharingRestriction: json_
                  .containsKey('singleSelectedResourceSharingRestriction')
              ? json_['singleSelectedResourceSharingRestriction'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (singleLinkedDatasetPerCleanroom != null)
          'singleLinkedDatasetPerCleanroom': singleLinkedDatasetPerCleanroom!,
        if (singleSelectedResourceSharingRestriction != null)
          'singleSelectedResourceSharingRestriction':
              singleSelectedResourceSharingRestriction!,
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
          datasetReference: json_.containsKey('datasetReference')
              ? DestinationDatasetReference.fromJson(json_['datasetReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          friendlyName: json_.containsKey('friendlyName')
              ? json_['friendlyName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetReference != null) 'datasetReference': datasetReference!,
        if (description != null) 'description': description!,
        if (friendlyName != null) 'friendlyName': friendlyName!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
      };
}

/// Contains the reference that identifies a destination bigquery dataset.
class DestinationDatasetReference {
  /// A unique ID for this dataset, without the project name.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
  /// (_). The maximum length is 1,024 characters.
  ///
  /// Required.
  core.String? datasetId;

  /// The ID of the project containing this dataset.
  ///
  /// Required.
  core.String? projectId;

  DestinationDatasetReference({
    this.datasetId,
    this.projectId,
  });

  DestinationDatasetReference.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Reference to a linked resource tracked by this Subscription.
class LinkedResource {
  /// Name of the linked dataset, e.g.
  /// projects/subscriberproject/datasets/linked_dataset
  ///
  /// Output only.
  core.String? linkedDataset;

  LinkedResource({
    this.linkedDataset,
  });

  LinkedResource.fromJson(core.Map json_)
      : this(
          linkedDataset: json_.containsKey('linkedDataset')
              ? json_['linkedDataset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkedDataset != null) 'linkedDataset': linkedDataset!,
      };
}

/// Message for response to the list of data exchanges.
class ListDataExchangesResponse {
  /// The list of data exchanges.
  core.List<DataExchange>? dataExchanges;

  /// A token to request the next page of results.
  core.String? nextPageToken;

  ListDataExchangesResponse({
    this.dataExchanges,
    this.nextPageToken,
  });

  ListDataExchangesResponse.fromJson(core.Map json_)
      : this(
          dataExchanges: json_.containsKey('dataExchanges')
              ? (json_['dataExchanges'] as core.List)
                  .map((value) => DataExchange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListListingsResponse({
    this.listings,
    this.nextPageToken,
  });

  ListListingsResponse.fromJson(core.Map json_)
      : this(
          listings: json_.containsKey('listings')
              ? (json_['listings'] as core.List)
                  .map((value) => Listing.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

  ListOrgDataExchangesResponse({
    this.dataExchanges,
    this.nextPageToken,
  });

  ListOrgDataExchangesResponse.fromJson(core.Map json_)
      : this(
          dataExchanges: json_.containsKey('dataExchanges')
              ? (json_['dataExchanges'] as core.List)
                  .map((value) => DataExchange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sharedResourceSubscriptions:
              json_.containsKey('sharedResourceSubscriptions')
                  ? (json_['sharedResourceSubscriptions'] as core.List)
                      .map((value) => Subscription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
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

  ListSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => Subscription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// Shared dataset i.e. BigQuery dataset source.
  ///
  /// Required.
  BigQueryDatasetSource? bigqueryDataset;

  /// Categories of the listing.
  ///
  /// Up to two categories are allowed.
  ///
  /// Optional.
  core.List<core.String>? categories;

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
    icon =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resource name of the listing.
  ///
  /// e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
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

  /// Email or URL of the request access of the listing.
  ///
  /// Subscribers can use this reference to request access. Max Length: 1000
  /// bytes.
  ///
  /// Optional.
  core.String? requestAccess;

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
    this.bigqueryDataset,
    this.categories,
    this.dataProvider,
    this.description,
    this.displayName,
    this.documentation,
    this.icon,
    this.name,
    this.primaryContact,
    this.publisher,
    this.requestAccess,
    this.restrictedExportConfig,
    this.state,
  });

  Listing.fromJson(core.Map json_)
      : this(
          bigqueryDataset: json_.containsKey('bigqueryDataset')
              ? BigQueryDatasetSource.fromJson(json_['bigqueryDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dataProvider: json_.containsKey('dataProvider')
              ? DataProvider.fromJson(
                  json_['dataProvider'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentation: json_.containsKey('documentation')
              ? json_['documentation'] as core.String
              : null,
          icon: json_.containsKey('icon') ? json_['icon'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryContact: json_.containsKey('primaryContact')
              ? json_['primaryContact'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? Publisher.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          requestAccess: json_.containsKey('requestAccess')
              ? json_['requestAccess'] as core.String
              : null,
          restrictedExportConfig: json_.containsKey('restrictedExportConfig')
              ? RestrictedExportConfig.fromJson(json_['restrictedExportConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDataset != null) 'bigqueryDataset': bigqueryDataset!,
        if (categories != null) 'categories': categories!,
        if (dataProvider != null) 'dataProvider': dataProvider!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (documentation != null) 'documentation': documentation!,
        if (icon != null) 'icon': icon!,
        if (name != null) 'name': name!,
        if (primaryContact != null) 'primaryContact': primaryContact!,
        if (publisher != null) 'publisher': publisher!,
        if (requestAccess != null) 'requestAccess': requestAccess!,
        if (restrictedExportConfig != null)
          'restrictedExportConfig': restrictedExportConfig!,
        if (state != null) 'state': state!,
      };
}

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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Contains details of the listing publisher.
class Publisher {
  /// Name of the listing publisher.
  ///
  /// Optional.
  core.String? name;

  /// Email or URL of the listing publisher.
  ///
  /// Max Length: 1000 bytes.
  ///
  /// Optional.
  core.String? primaryContact;

  Publisher({
    this.name,
    this.primaryContact,
  });

  Publisher.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryContact: json_.containsKey('primaryContact')
              ? json_['primaryContact'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (primaryContact != null) 'primaryContact': primaryContact!,
      };
}

/// Message for refreshing a subscription.
typedef RefreshSubscriptionRequest = $Empty;

/// Restricted export config, used to configure restricted export on linked
/// dataset.
class RestrictedExportConfig {
  /// If true, enable restricted export.
  ///
  /// Optional.
  core.bool? enabled;

  /// If true, restrict direct table access(read api/tabledata.list) on linked
  /// table.
  ///
  /// Output only.
  core.bool? restrictDirectTableAccess;

  /// If true, restrict export of query result derived from restricted linked
  /// dataset table.
  ///
  /// Optional.
  core.bool? restrictQueryResult;

  RestrictedExportConfig({
    this.enabled,
    this.restrictDirectTableAccess,
    this.restrictQueryResult,
  });

  RestrictedExportConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          restrictDirectTableAccess:
              json_.containsKey('restrictDirectTableAccess')
                  ? json_['restrictDirectTableAccess'] as core.bool
                  : null,
          restrictQueryResult: json_.containsKey('restrictQueryResult')
              ? json_['restrictQueryResult'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (restrictDirectTableAccess != null)
          'restrictDirectTableAccess': restrictDirectTableAccess!,
        if (restrictQueryResult != null)
          'restrictQueryResult': restrictQueryResult!,
      };
}

/// Message for revoking a subscription.
typedef RevokeSubscriptionRequest = $Empty;

/// Message for response when you revoke a subscription.
typedef RevokeSubscriptionResponse = $Empty;

/// Resource in this dataset that are selectively shared.
class SelectedResource {
  /// Format: For table:
  /// `projects/{projectId}/datasets/{datasetId}/tables/{tableId}`
  /// Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  ///
  /// Optional.
  core.String? table;

  SelectedResource({
    this.table,
  });

  SelectedResource.fromJson(core.Map json_)
      : this(
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
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
          dcrExchangeConfig: json_.containsKey('dcrExchangeConfig')
              ? DcrExchangeConfig.fromJson(json_['dcrExchangeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultExchangeConfig: json_.containsKey('defaultExchangeConfig')
              ? DefaultExchangeConfig.fromJson(json_['defaultExchangeConfig']
                  as core.Map<core.String, core.dynamic>)
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
typedef Status = $Status;

/// Message for subscribing to a Data Exchange.
class SubscribeDataExchangeRequest {
  /// The parent resource path of the Subscription.
  ///
  /// e.g. `projects/subscriberproject/locations/US`
  ///
  /// Required.
  core.String? destination;

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
    this.subscriberContact,
    this.subscription,
  });

  SubscribeDataExchangeRequest.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          subscriberContact: json_.containsKey('subscriberContact')
              ? json_['subscriberContact'] as core.String
              : null,
          subscription: json_.containsKey('subscription')
              ? json_['subscription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (subscriberContact != null) 'subscriberContact': subscriberContact!,
        if (subscription != null) 'subscription': subscription!,
      };
}

/// Message for subscribing to a listing.
class SubscribeListingRequest {
  /// BigQuery destination dataset to create for the subscriber.
  DestinationDataset? destinationDataset;

  SubscribeListingRequest({
    this.destinationDataset,
  });

  SubscribeListingRequest.fromJson(core.Map json_)
      : this(
          destinationDataset: json_.containsKey('destinationDataset')
              ? DestinationDataset.fromJson(json_['destinationDataset']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationDataset != null)
          'destinationDataset': destinationDataset!,
      };
}

/// Message for response when you subscribe to a listing.
class SubscribeListingResponse {
  /// Subscription object created from this subscribe action.
  Subscription? subscription;

  SubscribeListingResponse({
    this.subscription,
  });

  SubscribeListingResponse.fromJson(core.Map json_)
      : this(
          subscription: json_.containsKey('subscription')
              ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>)
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
  /// Timestamp when the subscription was created.
  ///
  /// Output only.
  core.String? creationTime;

  /// Resource name of the source Data Exchange.
  ///
  /// e.g. projects/123/locations/US/dataExchanges/456
  ///
  /// Output only.
  core.String? dataExchange;

  /// Timestamp when the subscription was last modified.
  ///
  /// Output only.
  core.String? lastModifyTime;

  /// Map of listing resource names to associated linked resource, e.g.
  /// projects/123/locations/US/dataExchanges/456/listings/789 -\>
  /// projects/123/datasets/my_dataset For listing-level subscriptions, this is
  /// a map of size 1.
  ///
  /// Only contains values if state == STATE_ACTIVE.
  ///
  /// Output only.
  core.Map<core.String, LinkedResource>? linkedDatasetMap;

  /// Resource name of the source Listing.
  ///
  /// e.g. projects/123/locations/US/dataExchanges/456/listings/789
  ///
  /// Output only.
  core.String? listing;

  /// The resource name of the subscription.
  ///
  /// e.g. `projects/myproject/locations/US/subscriptions/123`.
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
    this.creationTime,
    this.dataExchange,
    this.lastModifyTime,
    this.linkedDatasetMap,
    this.listing,
    this.name,
    this.organizationDisplayName,
    this.organizationId,
    this.state,
    this.subscriberContact,
  });

  Subscription.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          dataExchange: json_.containsKey('dataExchange')
              ? json_['dataExchange'] as core.String
              : null,
          lastModifyTime: json_.containsKey('lastModifyTime')
              ? json_['lastModifyTime'] as core.String
              : null,
          linkedDatasetMap: json_.containsKey('linkedDatasetMap')
              ? (json_['linkedDatasetMap']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    LinkedResource.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          listing: json_.containsKey('listing')
              ? json_['listing'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          organizationDisplayName: json_.containsKey('organizationDisplayName')
              ? json_['organizationDisplayName'] as core.String
              : null,
          organizationId: json_.containsKey('organizationId')
              ? json_['organizationId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subscriberContact: json_.containsKey('subscriberContact')
              ? json_['subscriberContact'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (dataExchange != null) 'dataExchange': dataExchange!,
        if (lastModifyTime != null) 'lastModifyTime': lastModifyTime!,
        if (linkedDatasetMap != null) 'linkedDatasetMap': linkedDatasetMap!,
        if (listing != null) 'listing': listing!,
        if (name != null) 'name': name!,
        if (organizationDisplayName != null)
          'organizationDisplayName': organizationDisplayName!,
        if (organizationId != null) 'organizationId': organizationId!,
        if (state != null) 'state': state!,
        if (subscriberContact != null) 'subscriberContact': subscriberContact!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
