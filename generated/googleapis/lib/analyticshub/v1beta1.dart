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

/// Analytics Hub API - v1beta1
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
        'v1beta1/' + core.Uri.encodeFull('$organization') + '/dataExchanges';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/dataExchanges';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/dataExchanges';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataExchangesResponse.fromJson(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/listings';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/listings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListListingsResponse.fromJson(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

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

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':subscribe';

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
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

  BigQueryDatasetSource({this.dataset});

  BigQueryDatasetSource.fromJson(core.Map json_)
    : this(dataset: json_['dataset'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataset != null) 'dataset': dataset!,
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
    icon = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Number of listings contained in the data exchange.
  ///
  /// Output only.
  core.int? listingCount;

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

  DataExchange({
    this.description,
    this.displayName,
    this.documentation,
    this.icon,
    this.listingCount,
    this.name,
    this.primaryContact,
  });

  DataExchange.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        icon: json_['icon'] as core.String?,
        listingCount: json_['listingCount'] as core.int?,
        name: json_['name'] as core.String?,
        primaryContact: json_['primaryContact'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (icon != null) 'icon': icon!,
    if (listingCount != null) 'listingCount': listingCount!,
    if (name != null) 'name': name!,
    if (primaryContact != null) 'primaryContact': primaryContact!,
  };
}

/// Contains details of the data provider.
typedef DataProvider = $DataProvider;

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

/// Defines the destination bigquery dataset.
class GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset {
  /// A reference that identifies the destination dataset.
  ///
  /// Required.
  GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference?
  datasetReference;

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

  GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset({
    this.datasetReference,
    this.description,
    this.friendlyName,
    this.labels,
    this.location,
  });

  GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset.fromJson(
    core.Map json_,
  ) : this(
        datasetReference:
            json_.containsKey('datasetReference')
                ? GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference.fromJson(
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

typedef GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference =
    $DestinationDatasetReference;

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
  ///
  /// Required.
  BigQueryDatasetSource? bigqueryDataset;

  /// Categories of the listing.
  ///
  /// Up to five categories are allowed.
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
    icon = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

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
  /// This is a required field for data clean room exchanges.
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
        dataProvider:
            json_.containsKey('dataProvider')
                ? DataProvider.fromJson(
                  json_['dataProvider'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        icon: json_['icon'] as core.String?,
        name: json_['name'] as core.String?,
        primaryContact: json_['primaryContact'] as core.String?,
        publisher:
            json_.containsKey('publisher')
                ? Publisher.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestAccess: json_['requestAccess'] as core.String?,
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

/// Contains details of the listing publisher.
typedef Publisher = $Publisher01;

/// Restricted export config, used to configure restricted export on linked
/// dataset.
typedef RestrictedExportConfig = $RestrictedExportConfig;

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

/// Message for subscribing to a listing.
class SubscribeListingRequest {
  /// BigQuery destination dataset to create for the subscriber.
  GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset? destinationDataset;

  SubscribeListingRequest({this.destinationDataset});

  SubscribeListingRequest.fromJson(core.Map json_)
    : this(
        destinationDataset:
            json_.containsKey('destinationDataset')
                ? GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset.fromJson(
                  json_['destinationDataset']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationDataset != null) 'destinationDataset': destinationDataset!,
  };
}

/// Message for response when you subscribe to a listing.
typedef SubscribeListingResponse = $Empty;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
