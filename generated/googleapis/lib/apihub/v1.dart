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

/// API hub API - v1
///
/// For more information, see
/// <https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub>
///
/// Create an instance of [APIHubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsApiHubInstancesResource]
///     - [ProjectsLocationsApisResource]
///       - [ProjectsLocationsApisVersionsResource]
///         - [ProjectsLocationsApisVersionsDefinitionsResource]
///         - [ProjectsLocationsApisVersionsOperationsResource]
///         - [ProjectsLocationsApisVersionsSpecsResource]
///     - [ProjectsLocationsAttributesResource]
///     - [ProjectsLocationsCurationsResource]
///     - [ProjectsLocationsDependenciesResource]
///     - [ProjectsLocationsDeploymentsResource]
///     - [ProjectsLocationsDiscoveredApiObservationsResource]
/// -
/// [ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource]
///     - [ProjectsLocationsExternalApisResource]
///     - [ProjectsLocationsHostProjectRegistrationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPluginsResource]
///       - [ProjectsLocationsPluginsInstancesResource]
///       - [ProjectsLocationsPluginsStyleGuideResource]
///     - [ProjectsLocationsRuntimeProjectAttachmentsResource]
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

class APIHubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  APIHubApi(
    http.Client client, {
    core.String rootUrl = 'https://apihub.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApiHubInstancesResource get apiHubInstances =>
      ProjectsLocationsApiHubInstancesResource(_requester);
  ProjectsLocationsApisResource get apis =>
      ProjectsLocationsApisResource(_requester);
  ProjectsLocationsAttributesResource get attributes =>
      ProjectsLocationsAttributesResource(_requester);
  ProjectsLocationsCurationsResource get curations =>
      ProjectsLocationsCurationsResource(_requester);
  ProjectsLocationsDependenciesResource get dependencies =>
      ProjectsLocationsDependenciesResource(_requester);
  ProjectsLocationsDeploymentsResource get deployments =>
      ProjectsLocationsDeploymentsResource(_requester);
  ProjectsLocationsDiscoveredApiObservationsResource
  get discoveredApiObservations =>
      ProjectsLocationsDiscoveredApiObservationsResource(_requester);
  ProjectsLocationsExternalApisResource get externalApis =>
      ProjectsLocationsExternalApisResource(_requester);
  ProjectsLocationsHostProjectRegistrationsResource
  get hostProjectRegistrations =>
      ProjectsLocationsHostProjectRegistrationsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPluginsResource get plugins =>
      ProjectsLocationsPluginsResource(_requester);
  ProjectsLocationsRuntimeProjectAttachmentsResource
  get runtimeProjectAttachments =>
      ProjectsLocationsRuntimeProjectAttachmentsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Collect API data from a source and push it to Hub's collect layer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The regional location of the API hub instance and
  /// its resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> collectApiData(
    GoogleCloudApihubV1CollectApiDataRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':collectApiData';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
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
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Look up a runtime project attachment.
  ///
  /// This API can be called in the context of any project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Runtime project ID to look up runtime project
  /// attachment for. Lookup happens across all regions. Expected format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse>
  lookupRuntimeProjectAttachment(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$name') +
        ':lookupRuntimeProjectAttachment';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Search across API-Hub resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The resource name of the location which will be of
  /// the type `projects/{project_id}/locations/{location_id}`. This field is
  /// used to identify the instance of API-Hub in which resources should be
  /// searched.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1SearchResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1SearchResourcesResponse> searchResources(
    GoogleCloudApihubV1SearchResourcesRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':searchResources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1SearchResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApiHubInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApiHubInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Provisions instance resources for the API Hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the Api Hub instance
  /// resource. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [apiHubInstanceId] - Optional. Identifier to assign to the Api Hub
  /// instance. Must be unique within scope of the parent resource. If the field
  /// is not provided, system generated id will be used. This value should be
  /// 4-40 characters, and valid characters are `/a-z[0-9]-_/`.
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
    GoogleCloudApihubV1ApiHubInstance request,
    core.String parent, {
    core.String? apiHubInstanceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiHubInstanceId != null) 'apiHubInstanceId': [apiHubInstanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apiHubInstances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the API hub instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Api Hub instance to delete. Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apiHubInstances/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single API Hub instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Api Hub instance to retrieve. Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apiHubInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ApiHubInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ApiHubInstance> get(
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
    return GoogleCloudApihubV1ApiHubInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Looks up an Api Hub instance in a given GCP project.
  ///
  /// There will always be only one Api Hub instance for a GCP project across
  /// all locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. There will always be only one Api Hub instance for a
  /// GCP project across all locations. The parent resource for the Api Hub
  /// instance resource. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1LookupApiHubInstanceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1LookupApiHubInstanceResponse> lookup(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/apiHubInstances:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1LookupApiHubInstanceResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApisResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApisVersionsResource get versions =>
      ProjectsLocationsApisVersionsResource(_requester);

  ProjectsLocationsApisResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an API resource in the API hub.
  ///
  /// Once an API resource is created, versions can be added to it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the API resource. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [apiId] - Optional. The ID to use for the API resource, which will become
  /// the final component of the API's resource name. This field is optional. *
  /// If provided, the same will be used. The service will throw an error if the
  /// specified id is already used by another API resource in the API hub. * If
  /// not provided, a system generated id will be used. This value should be
  /// 4-500 characters, and valid characters are /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Api].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Api> create(
    GoogleCloudApihubV1Api request,
    core.String parent, {
    core.String? apiId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiId != null) 'apiId': [apiId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apis';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Api.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an API resource in the API hub.
  ///
  /// API can only be deleted if all underlying versions are deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the API resource to delete. Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any versions from this API will also
  /// be deleted. Otherwise, the request will only work if the API has no
  /// versions.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
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

  /// Get API resource details including the API versions contained in it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the API resource to retrieve. Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Api].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Api> get(
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
    return GoogleCloudApihubV1Api.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List API resources in the API hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of API
  /// resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of ApiResources.
  /// A filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string. The comparison operator
  /// must be one of: `<`, `>`, `:` or `=`. Filters are not case sensitive. The
  /// following fields in the `ApiResource` are eligible for filtering: *
  /// `owner.email` - The email of the team which owns the ApiResource. Allowed
  /// comparison operators: `=`. * `create_time` - The time at which the
  /// ApiResource was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. * `display_name` - The display name of
  /// the ApiResource. Allowed comparison operators: `=`. *
  /// `target_user.enum_values.values.id` - The allowed value id of the target
  /// users attribute associated with the ApiResource. Allowed comparison
  /// operator is `:`. * `target_user.enum_values.values.display_name` - The
  /// allowed value display name of the target users attribute associated with
  /// the ApiResource. Allowed comparison operator is `:`. *
  /// `team.enum_values.values.id` - The allowed value id of the team attribute
  /// associated with the ApiResource. Allowed comparison operator is `:`. *
  /// `team.enum_values.values.display_name` - The allowed value display name of
  /// the team attribute associated with the ApiResource. Allowed comparison
  /// operator is `:`. * `business_unit.enum_values.values.id` - The allowed
  /// value id of the business unit attribute associated with the ApiResource.
  /// Allowed comparison operator is `:`. *
  /// `business_unit.enum_values.values.display_name` - The allowed value
  /// display name of the business unit attribute associated with the
  /// ApiResource. Allowed comparison operator is `:`. *
  /// `maturity_level.enum_values.values.id` - The allowed value id of the
  /// maturity level attribute associated with the ApiResource. Allowed
  /// comparison operator is `:`. *
  /// `maturity_level.enum_values.values.display_name` - The allowed value
  /// display name of the maturity level attribute associated with the
  /// ApiResource. Allowed comparison operator is `:`. *
  /// `api_style.enum_values.values.id` - The allowed value id of the api style
  /// attribute associated with the ApiResource. Allowed comparison operator is
  /// `:`. * `api_style.enum_values.values.display_name` - The allowed value
  /// display name of the api style attribute associated with the ApiResource.
  /// Allowed comparison operator is `:`. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.id` - The allowed
  /// value id of the user defined enum attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-enum-id is
  /// a placeholder that can be replaced with any user defined enum attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.display_name` -
  /// The allowed value display name of the user defined enum attribute
  /// associated with the Resource. Allowed comparison operator is `:`. Here
  /// user-defined-attribute-enum-display-name is a placeholder that can be
  /// replaced with any user defined enum attribute enum name. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.string_values.values` - The allowed
  /// value of the user defined string attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-string is
  /// a placeholder that can be replaced with any user defined string attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.json_values.values` - The allowed
  /// value of the user defined JSON attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-json is a
  /// placeholder that can be replaced with any user defined JSON attribute
  /// name. A filter function is also supported in the filter string. The filter
  /// function is `id(name)`. The `id(name)` function returns the id of the
  /// resource name. For example, `id(name) = \"api-1\"` is equivalent to `name
  /// = \"projects/test-project-id/locations/test-location-id/apis/api-1\"`
  /// provided the parent is
  /// `projects/test-project-id/locations/test-location-id`. Expressions are
  /// combined with either `AND` logic operator or `OR` logical operator but not
  /// both of them together i.e. only one of the `AND` or `OR` operator can be
  /// used throughout the filter string and both the operators cannot be used
  /// together. No other logical operators are supported. At most three filter
  /// fields are allowed in the filter string and if provided more than that
  /// then `INVALID_ARGUMENT` error is returned by the API. Here are a few
  /// examples: * `owner.email = \"apihub@google.com\"` - - The owner team email
  /// is _apihub@google.com_. * `owner.email = \"apihub@google.com\" AND
  /// create_time < \"2021-08-15T14:50:00Z\" AND create_time >
  /// \"2021-08-10T12:00:00Z\"` - The owner team email is _apihub@google.com_
  /// and the api was created before _2021-08-15 14:50:00 UTC_ and after
  /// _2021-08-10 12:00:00 UTC_. * `owner.email = \"apihub@google.com\" OR
  /// team.enum_values.values.id: apihub-team-id` - The filter string specifies
  /// the APIs where the owner team email is _apihub@google.com_ or the id of
  /// the allowed value associated with the team attribute is _apihub-team-id_.
  /// * `owner.email = \"apihub@google.com\" OR
  /// team.enum_values.values.display_name: ApiHub Team` - The filter string
  /// specifies the APIs where the owner team email is _apihub@google.com_ or
  /// the display name of the allowed value associated with the team attribute
  /// is `ApiHub Team`. * `owner.email = \"apihub@google.com\" AND
  /// attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/17650f90-4a29-4971-b3c0-d5532da3764b.enum_values.values.id:
  /// test_enum_id AND
  /// attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/1765\0f90-4a29-5431-b3d0-d5532da3764c.string_values.values:
  /// test_string_value` - The filter string specifies the APIs where the owner
  /// team email is _apihub@google.com_ and the id of the allowed value
  /// associated with the user defined attribute of type enum is _test_enum_id_
  /// and the value of the user defined attribute of type string is _test_..
  ///
  /// [pageSize] - Optional. The maximum number of API resources to return. The
  /// service may return fewer than this value. If unspecified, at most 50 Apis
  /// will be returned. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListApis`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters (except page_size) provided to `ListApis` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListApisResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListApisResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/apis';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListApisResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update an API resource in the API hub.
  ///
  /// The following fields in the API can be updated: * display_name *
  /// description * owner * documentation * target_user * team * business_unit *
  /// maturity_level * api_style * attributes The update_mask should be used to
  /// specify the fields being updated. Updating the owner field requires
  /// complete owner message and updates both owner and email fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the API resource in the API Hub. Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Api].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Api> patch(
    GoogleCloudApihubV1Api request,
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
    return GoogleCloudApihubV1Api.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApisVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApisVersionsDefinitionsResource get definitions =>
      ProjectsLocationsApisVersionsDefinitionsResource(_requester);
  ProjectsLocationsApisVersionsOperationsResource get operations =>
      ProjectsLocationsApisVersionsOperationsResource(_requester);
  ProjectsLocationsApisVersionsSpecsResource get specs =>
      ProjectsLocationsApisVersionsSpecsResource(_requester);

  ProjectsLocationsApisVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an API version for an API resource in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for API version. Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+$`.
  ///
  /// [versionId] - Optional. The ID to use for the API version, which will
  /// become the final component of the version's resource name. This field is
  /// optional. * If provided, the same will be used. The service will throw an
  /// error if the specified id is already used by another version in the API
  /// resource. * If not provided, a system generated id will be used. This
  /// value should be 4-500 characters, overall resource name which will be of
  /// format
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`,
  /// its length is limited to 700 characters and valid characters are
  /// /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Version> create(
    GoogleCloudApihubV1Version request,
    core.String parent, {
    core.String? versionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionId != null) 'versionId': [versionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an API version.
  ///
  /// Version can only be deleted if all underlying specs, operations,
  /// definitions and linked deployments are deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to delete. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any specs from this version will also
  /// be deleted. Otherwise, the request will only work if the version has no
  /// specs.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
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

  /// Get details about the API version of an API resource.
  ///
  /// This will include information about the specs and operations present in
  /// the API version as well as the deployments linked to it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the API version to retrieve. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Version> get(
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
    return GoogleCloudApihubV1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List API versions of an API resource in the API hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of API versions
  /// i.e., the API resource Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of Versions. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string, a number, or a boolean.
  /// The comparison operator must be one of: `<`, `>` or `=`. Filters are not
  /// case sensitive. The following fields in the `Version` are eligible for
  /// filtering: * `display_name` - The display name of the Version. Allowed
  /// comparison operators: `=`. * `create_time` - The time at which the Version
  /// was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. * `lifecycle.enum_values.values.id` -
  /// The allowed value id of the lifecycle attribute associated with the
  /// Version. Allowed comparison operators: `:`. *
  /// `lifecycle.enum_values.values.display_name` - The allowed value display
  /// name of the lifecycle attribute associated with the Version. Allowed
  /// comparison operators: `:`. * `compliance.enum_values.values.id` - The
  /// allowed value id of the compliances attribute associated with the Version.
  /// Allowed comparison operators: `:`. *
  /// `compliance.enum_values.values.display_name` - The allowed value display
  /// name of the compliances attribute associated with the Version. Allowed
  /// comparison operators: `:`. * `accreditation.enum_values.values.id` - The
  /// allowed value id of the accreditations attribute associated with the
  /// Version. Allowed comparison operators: `:`. *
  /// `accreditation.enum_values.values.display_name` - The allowed value
  /// display name of the accreditations attribute associated with the Version.
  /// Allowed comparison operators: `:`. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.id` - The allowed
  /// value id of the user defined enum attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-enum-id is
  /// a placeholder that can be replaced with any user defined enum attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.display_name` -
  /// The allowed value display name of the user defined enum attribute
  /// associated with the Resource. Allowed comparison operator is `:`. Here
  /// user-defined-attribute-enum-display-name is a placeholder that can be
  /// replaced with any user defined enum attribute enum name. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.string_values.values` - The allowed
  /// value of the user defined string attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-string is
  /// a placeholder that can be replaced with any user defined string attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.json_values.values` - The allowed
  /// value of the user defined JSON attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-json is a
  /// placeholder that can be replaced with any user defined JSON attribute
  /// name. Expressions are combined with either `AND` logic operator or `OR`
  /// logical operator but not both of them together i.e. only one of the `AND`
  /// or `OR` operator can be used throughout the filter string and both the
  /// operators cannot be used together. No other logical operators are
  /// supported. At most three filter fields are allowed in the filter string
  /// and if provided more than that then `INVALID_ARGUMENT` error is returned
  /// by the API. Here are a few examples: * `lifecycle.enum_values.values.id:
  /// preview-id` - The filter string specifies that the id of the allowed value
  /// associated with the lifecycle attribute of the Version is _preview-id_. *
  /// `lifecycle.enum_values.values.display_name: \"Preview Display Name\"` -
  /// The filter string specifies that the display name of the allowed value
  /// associated with the lifecycle attribute of the Version is `Preview Display
  /// Name`. * `lifecycle.enum_values.values.id: preview-id AND create_time <
  /// \"2021-08-15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:00Z\"` - The
  /// id of the allowed value associated with the lifecycle attribute of the
  /// Version is _preview-id_ and it was created before _2021-08-15 14:50:00
  /// UTC_ and after _2021-08-10 12:00:00 UTC_. *
  /// `compliance.enum_values.values.id: gdpr-id OR
  /// compliance.enum_values.values.id: pci-dss-id` - The id of the allowed
  /// value associated with the compliance attribute is _gdpr-id_ or
  /// _pci-dss-id_. * `lifecycle.enum_values.values.id: preview-id AND
  /// attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/17650f90-4a29-4971-b3c0-d5532da3764b.string_values.values:
  /// test` - The filter string specifies that the id of the allowed value
  /// associated with the lifecycle attribute of the Version is _preview-id_ and
  /// the value of the user defined attribute of type string is _test_.
  ///
  /// [pageSize] - Optional. The maximum number of versions to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// versions will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListVersions` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters (except page_size) provided to
  /// `ListVersions` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update API version.
  ///
  /// The following fields in the version can be updated currently: *
  /// display_name * description * documentation * deployments * lifecycle *
  /// compliance * accreditation * attributes The update_mask should be used to
  /// specify the fields being updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the version. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Version> patch(
    GoogleCloudApihubV1Version request,
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
    return GoogleCloudApihubV1Version.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApisVersionsDefinitionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApisVersionsDefinitionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get details about a definition in an API version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the definition to retrieve. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/definitions/{definition}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/definitions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Definition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Definition> get(
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
    return GoogleCloudApihubV1Definition.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApisVersionsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApisVersionsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an apiOperation in an API version.
  ///
  /// An apiOperation can be created only if the version has no apiOperations
  /// which were created by parsing a spec.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the operation resource.
  /// Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [apiOperationId] - Optional. The ID to use for the operation resource,
  /// which will become the final component of the operation's resource name.
  /// This field is optional. * If provided, the same will be used. The service
  /// will throw an error if the specified id is already used by another
  /// operation resource in the API hub. * If not provided, a system generated
  /// id will be used. This value should be 4-500 characters, overall resource
  /// name which will be of format
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`,
  /// its length is limited to 700 characters, and valid characters are
  /// /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ApiOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ApiOperation> create(
    GoogleCloudApihubV1ApiOperation request,
    core.String parent, {
    core.String? apiOperationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (apiOperationId != null) 'apiOperationId': [apiOperationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/operations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ApiOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an operation in an API version and we can delete only the
  /// operations created via create API.
  ///
  /// If the operation was created by parsing the spec, then it can be deleted
  /// by editing or deleting the spec.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the operation resource to delete. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/operations/\[^/\]+$`.
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

  /// Get details about a particular operation in API version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the operation to retrieve. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ApiOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ApiOperation> get(
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
    return GoogleCloudApihubV1ApiOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List operations in an API version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of operations
  /// i.e., the API version. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of ApiOperations.
  /// A filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string or a boolean. The
  /// comparison operator must be one of: `<`, `>` or `=`. Filters are not case
  /// sensitive. The following fields in the `ApiOperation` are eligible for
  /// filtering: * `name` - The ApiOperation resource name. Allowed comparison
  /// operators: `=`. * `details.http_operation.path.path` - The http
  /// operation's complete path relative to server endpoint. Allowed comparison
  /// operators: `=`. * `details.http_operation.method` - The http operation
  /// method type. Allowed comparison operators: `=`. * `details.deprecated` -
  /// Indicates if the ApiOperation is deprecated. Allowed values are True /
  /// False indicating the deprycation status of the ApiOperation. Allowed
  /// comparison operators: `=`. * `create_time` - The time at which the
  /// ApiOperation was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.id` - The allowed
  /// value id of the user defined enum attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-enum-id is
  /// a placeholder that can be replaced with any user defined enum attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.display_name` -
  /// The allowed value display name of the user defined enum attribute
  /// associated with the Resource. Allowed comparison operator is `:`. Here
  /// user-defined-attribute-enum-display-name is a placeholder that can be
  /// replaced with any user defined enum attribute enum name. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.string_values.values` - The allowed
  /// value of the user defined string attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-string is
  /// a placeholder that can be replaced with any user defined string attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.json_values.values` - The allowed
  /// value of the user defined JSON attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-json is a
  /// placeholder that can be replaced with any user defined JSON attribute
  /// name. Expressions are combined with either `AND` logic operator or `OR`
  /// logical operator but not both of them together i.e. only one of the `AND`
  /// or `OR` operator can be used throughout the filter string and both the
  /// operators cannot be used together. No other logical operators are
  /// supported. At most three filter fields are allowed in the filter string
  /// and if provided more than that then `INVALID_ARGUMENT` error is returned
  /// by the API. Here are a few examples: * `details.deprecated = True` - The
  /// ApiOperation is deprecated. * `details.http_operation.method = GET AND
  /// create_time < \"2021-08-15T14:50:00Z\" AND create_time >
  /// \"2021-08-10T12:00:00Z\"` - The method of the http operation of the
  /// ApiOperation is _GET_ and the spec was created before _2021-08-15 14:50:00
  /// UTC_ and after _2021-08-10 12:00:00 UTC_. * `details.http_operation.method
  /// = GET OR details.http_operation.method = POST`. - The http operation of
  /// the method of ApiOperation is _GET_ or _POST_. * `details.deprecated =
  /// True AND attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/17650f90-4a29-4971-b3c0-d5532da3764b.string_values.values:
  /// test` - The filter string specifies that the ApiOperation is deprecated
  /// and the value of the user defined attribute of type string is _test_.
  ///
  /// [pageSize] - Optional. The maximum number of operations to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// operations will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListApiOperations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (except page_size) provided to
  /// `ListApiOperations` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListApiOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListApiOperationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListApiOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update an operation in an API version.
  ///
  /// The following fields in the ApiOperation resource can be updated: *
  /// details.description * details.documentation * details.http_operation.path
  /// * details.http_operation.method * details.deprecated * attributes The
  /// update_mask should be used to specify the fields being updated. An
  /// operation can be updated only if the operation was created via
  /// CreateApiOperation API. If the operation was created by parsing the spec,
  /// then it can be edited by updating the spec.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the operation. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ApiOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ApiOperation> patch(
    GoogleCloudApihubV1ApiOperation request,
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
    return GoogleCloudApihubV1ApiOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsApisVersionsSpecsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsApisVersionsSpecsResource(commons.ApiRequester client)
    : _requester = client;

  /// Add a spec to an API version in the API hub.
  ///
  /// Multiple specs can be added to an API version. Note, while adding a spec,
  /// at least one of `contents` or `source_uri` must be provided. If `contents`
  /// is provided, then `spec_type` must also be provided. On adding a spec with
  /// contents to the version, the operations present in it will be added to the
  /// version.Note that the file contents in the spec should be of the same type
  /// as defined in the
  /// `projects/{project}/locations/{location}/attributes/system-spec-type`
  /// attribute associated with spec resource. Note that specs of various types
  /// can be uploaded, however parsing of details is supported for OpenAPI spec
  /// currently. In order to access the information parsed from the spec, use
  /// the GetSpec method. In order to access the raw contents for a particular
  /// spec, use the GetSpecContents method. In order to access the operations
  /// parsed from the spec, use the ListAPIOperations method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for Spec. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [specId] - Optional. The ID to use for the spec, which will become the
  /// final component of the spec's resource name. This field is optional. * If
  /// provided, the same will be used. The service will throw an error if the
  /// specified id is already used by another spec in the API resource. * If not
  /// provided, a system generated id will be used. This value should be 4-500
  /// characters, overall resource name which will be of format
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`,
  /// its length is limited to 1000 characters and valid characters are
  /// /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Spec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Spec> create(
    GoogleCloudApihubV1Spec request,
    core.String parent, {
    core.String? specId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (specId != null) 'specId': [specId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/specs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Spec.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a spec.
  ///
  /// Deleting a spec will also delete the associated operations from the
  /// version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spec to delete. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/specs/\[^/\]+$`.
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

  /// Get details about the information parsed from a spec.
  ///
  /// Note that this method does not return the raw spec contents. Use
  /// GetSpecContents method to retrieve the same.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spec to retrieve. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/specs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Spec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Spec> get(
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
    return GoogleCloudApihubV1Spec.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get spec contents.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spec whose contents need to be
  /// retrieved. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/specs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1SpecContents].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1SpecContents> getContents(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':contents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1SpecContents.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lints the requested spec and updates the corresponding API Spec with the
  /// lint response.
  ///
  /// This lint response will be available in all subsequent Get and List Spec
  /// calls to Core service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spec to be linted. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/specs/\[^/\]+$`.
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
  async.Future<Empty> lint(
    GoogleCloudApihubV1LintSpecRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':lint';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List specs corresponding to a particular API resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of specs.
  /// Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of Specs. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string. The comparison operator
  /// must be one of: `<`, `>`, `:` or `=`. Filters are not case sensitive. The
  /// following fields in the `Spec` are eligible for filtering: *
  /// `display_name` - The display name of the Spec. Allowed comparison
  /// operators: `=`. * `create_time` - The time at which the Spec was created.
  /// The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. * `spec_type.enum_values.values.id` -
  /// The allowed value id of the spec_type attribute associated with the Spec.
  /// Allowed comparison operators: `:`. *
  /// `spec_type.enum_values.values.display_name` - The allowed value display
  /// name of the spec_type attribute associated with the Spec. Allowed
  /// comparison operators: `:`. * `lint_response.json_values.values` - The json
  /// value of the lint_response attribute associated with the Spec. Allowed
  /// comparison operators: `:`. * `mime_type` - The MIME type of the Spec.
  /// Allowed comparison operators: `=`. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.id` - The allowed
  /// value id of the user defined enum attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-enum-id is
  /// a placeholder that can be replaced with any user defined enum attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.display_name` -
  /// The allowed value display name of the user defined enum attribute
  /// associated with the Resource. Allowed comparison operator is `:`. Here
  /// user-defined-attribute-enum-display-name is a placeholder that can be
  /// replaced with any user defined enum attribute enum name. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.string_values.values` - The allowed
  /// value of the user defined string attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-string is
  /// a placeholder that can be replaced with any user defined string attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.json_values.values` - The allowed
  /// value of the user defined JSON attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-json is a
  /// placeholder that can be replaced with any user defined JSON attribute
  /// name. Expressions are combined with either `AND` logic operator or `OR`
  /// logical operator but not both of them together i.e. only one of the `AND`
  /// or `OR` operator can be used throughout the filter string and both the
  /// operators cannot be used together. No other logical operators are
  /// supported. At most three filter fields are allowed in the filter string
  /// and if provided more than that then `INVALID_ARGUMENT` error is returned
  /// by the API. Here are a few examples: * `spec_type.enum_values.values.id:
  /// rest-id` - The filter string specifies that the id of the allowed value
  /// associated with the spec_type attribute is _rest-id_. *
  /// `spec_type.enum_values.values.display_name: \"Rest Display Name\"` - The
  /// filter string specifies that the display name of the allowed value
  /// associated with the spec_type attribute is `Rest Display Name`. *
  /// `spec_type.enum_values.values.id: grpc-id AND create_time <
  /// \"2021-08-15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:00Z\"` - The
  /// id of the allowed value associated with the spec_type attribute is
  /// _grpc-id_ and the spec was created before _2021-08-15 14:50:00 UTC_ and
  /// after _2021-08-10 12:00:00 UTC_. * `spec_type.enum_values.values.id:
  /// rest-id OR spec_type.enum_values.values.id: grpc-id` - The id of the
  /// allowed value associated with the spec_type attribute is _rest-id_ or
  /// _grpc-id_. * `spec_type.enum_values.values.id: rest-id AND
  /// attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/17650f90-4a29-4971-b3c0-d5532da3764b.enum_values.values.id:
  /// test` - The filter string specifies that the id of the allowed value
  /// associated with the spec_type attribute is _rest-id_ and the id of the
  /// allowed value associated with the user defined attribute of type enum is
  /// _test_.
  ///
  /// [pageSize] - Optional. The maximum number of specs to return. The service
  /// may return fewer than this value. If unspecified, at most 50 specs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListSpecs`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSpecs` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListSpecsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListSpecsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/specs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListSpecsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update spec.
  ///
  /// The following fields in the spec can be updated: * display_name *
  /// source_uri * lint_response * attributes * contents * spec_type In case of
  /// an OAS spec, updating spec contents can lead to: 1. Creation, deletion and
  /// update of operations. 2. Creation, deletion and update of definitions. 3.
  /// Update of other info parsed out from the new spec. In case of contents or
  /// source_uri being present in update mask, spec_type must also be present.
  /// Also, spec_type can not be present in update mask if contents or
  /// source_uri is not present. The update_mask should be used to specify the
  /// fields being updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the spec. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/apis/\[^/\]+/versions/\[^/\]+/specs/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Spec].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Spec> patch(
    GoogleCloudApihubV1Spec request,
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
    return GoogleCloudApihubV1Spec.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAttributesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAttributesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a user defined attribute.
  ///
  /// Certain pre defined attributes are already created by the API hub. These
  /// attributes will have type as `SYSTEM_DEFINED` and can be listed via
  /// ListAttributes method. Allowed values for the same can be updated via
  /// UpdateAttribute method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for Attribute. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [attributeId] - Optional. The ID to use for the attribute, which will
  /// become the final component of the attribute's resource name. This field is
  /// optional. * If provided, the same will be used. The service will throw an
  /// error if the specified id is already used by another attribute resource in
  /// the API hub. * If not provided, a system generated id will be used. This
  /// value should be 4-500 characters, and valid characters are /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Attribute> create(
    GoogleCloudApihubV1Attribute request,
    core.String parent, {
    core.String? attributeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (attributeId != null) 'attributeId': [attributeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attributes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Attribute.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an attribute.
  ///
  /// Note: System defined attributes cannot be deleted. All associations of the
  /// attribute being deleted with any API hub resource will also get deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attribute to delete. Format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/attributes/\[^/\]+$`.
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

  /// Get details about the attribute.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attribute to retrieve. Format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/attributes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Attribute> get(
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
    return GoogleCloudApihubV1Attribute.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all attributes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for Attribute. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of Attributes. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string or a boolean. The
  /// comparison operator must be one of: `<`, `>` or `=`. Filters are not case
  /// sensitive. The following fields in the `Attribute` are eligible for
  /// filtering: * `display_name` - The display name of the Attribute. Allowed
  /// comparison operators: `=`. * `definition_type` - The definition type of
  /// the attribute. Allowed comparison operators: `=`. * `scope` - The scope of
  /// the attribute. Allowed comparison operators: `=`. * `data_type` - The type
  /// of the data of the attribute. Allowed comparison operators: `=`. *
  /// `mandatory` - Denotes whether the attribute is mandatory or not. Allowed
  /// comparison operators: `=`. * `create_time` - The time at which the
  /// Attribute was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. Expressions are combined with either
  /// `AND` logic operator or `OR` logical operator but not both of them
  /// together i.e. only one of the `AND` or `OR` operator can be used
  /// throughout the filter string and both the operators cannot be used
  /// together. No other logical operators are supported. At most three filter
  /// fields are allowed in the filter string and if provided more than that
  /// then `INVALID_ARGUMENT` error is returned by the API. Here are a few
  /// examples: * `display_name = production` - - The display name of the
  /// attribute is _production_. * `(display_name = production) AND (create_time
  /// < \"2021-08-15T14:50:00Z\") AND (create_time > \"2021-08-10T12:00:00Z\")`
  /// - The display name of the attribute is _production_ and the attribute was
  /// created before _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00
  /// UTC_. * `display_name = production OR scope = api` - The attribute where
  /// the display name is _production_ or the scope is _api_.
  ///
  /// [pageSize] - Optional. The maximum number of attribute resources to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 attributes will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAttributes` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListAttributes` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListAttributesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListAttributesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attributes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListAttributesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the attribute.
  ///
  /// The following fields in the Attribute resource can be updated: *
  /// display_name The display name can be updated for user defined attributes
  /// only. * description The description can be updated for user defined
  /// attributes only. * allowed_values To update the list of allowed values,
  /// clients need to use the fetched list of allowed values and add or remove
  /// values to or from the same list. The mutable allowed values can be updated
  /// for both user defined and System defined attributes. The immutable allowed
  /// values cannot be updated or deleted. The updated list of allowed values
  /// cannot be empty. If an allowed value that is already used by some
  /// resource's attribute is deleted, then the association between the resource
  /// and the attribute value will also be deleted. * cardinality The
  /// cardinality can be updated for user defined attributes only. Cardinality
  /// can only be increased during an update. The update_mask should be used to
  /// specify the fields being updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the attribute in the API Hub. Format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/attributes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Attribute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Attribute> patch(
    GoogleCloudApihubV1Attribute request,
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
    return GoogleCloudApihubV1Attribute.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCurationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCurationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a curation resource in the API hub.
  ///
  /// Once a curation resource is created, plugin instances can start using it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the curation resource.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [curationId] - Optional. The ID to use for the curation resource, which
  /// will become the final component of the curations's resource name. This
  /// field is optional. * If provided, the same will be used. The service will
  /// throw an error if the specified ID is already used by another curation
  /// resource in the API hub. * If not provided, a system generated ID will be
  /// used. This value should be 4-500 characters, and valid characters are
  /// /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Curation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Curation> create(
    GoogleCloudApihubV1Curation request,
    core.String parent, {
    core.String? curationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (curationId != null) 'curationId': [curationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/curations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Curation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a curation resource in the API hub.
  ///
  /// A curation can only be deleted if it's not being used by any plugin
  /// instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the curation resource to delete. Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/curations/\[^/\]+$`.
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

  /// Get curation resource details.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the curation resource to retrieve. Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/curations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Curation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Curation> get(
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
    return GoogleCloudApihubV1Curation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List curation resources in the API hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of curation
  /// resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of curation
  /// resources. A filter expression consists of a field name, a comparison
  /// operator, and a value for filtering. The value must be a string. The
  /// comparison operator must be one of: `<`, `>`, `:` or `=`. Filters are case
  /// insensitive. The following fields in the `curation resource` are eligible
  /// for filtering: * `create_time` - The time at which the curation was
  /// created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. * `display_name` - The display name of
  /// the curation. Allowed comparison operators: `=`. * `state` - The state of
  /// the curation. Allowed comparison operators: `=`. Expressions are combined
  /// with either `AND` logic operator or `OR` logical operator but not both of
  /// them together i.e. only one of the `AND` or `OR` operator can be used
  /// throughout the filter string and both the operators cannot be used
  /// together. No other logical operators are supported. At most three filter
  /// fields are allowed in the filter string and if provided more than that
  /// then `INVALID_ARGUMENT` error is returned by the API. Here are a few
  /// examples: * `create_time < \"2021-08-15T14:50:00Z\" AND create_time >
  /// \"2021-08-10T12:00:00Z\"` - The curation resource was created before
  /// _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00 UTC_.
  ///
  /// [pageSize] - Optional. The maximum number of curation resources to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// curations will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListCurations` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters (except page_size) provided to
  /// `ListCurations` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListCurationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListCurationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/curations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListCurationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a curation resource in the API hub.
  ///
  /// The following fields in the curation can be updated: * display_name *
  /// description The update_mask should be used to specify the fields being
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the curation. Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/curations/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Curation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Curation> patch(
    GoogleCloudApihubV1Curation request,
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
    return GoogleCloudApihubV1Curation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDependenciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDependenciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a dependency between two entities in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the dependency resource.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dependencyId] - Optional. The ID to use for the dependency resource,
  /// which will become the final component of the dependency's resource name.
  /// This field is optional. * If provided, the same will be used. The service
  /// will throw an error if duplicate id is provided by the client. * If not
  /// provided, a system generated id will be used. This value should be 4-500
  /// characters, and valid characters are `a-z[0-9]-_`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Dependency].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Dependency> create(
    GoogleCloudApihubV1Dependency request,
    core.String parent, {
    core.String? dependencyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dependencyId != null) 'dependencyId': [dependencyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dependencies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Dependency.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete the dependency resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the dependency resource to delete. Format:
  /// `projects/{project}/locations/{location}/dependencies/{dependency}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dependencies/\[^/\]+$`.
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

  /// Get details about a dependency resource in the API hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the dependency resource to retrieve.
  /// Format:
  /// `projects/{project}/locations/{location}/dependencies/{dependency}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dependencies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Dependency].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Dependency> get(
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
    return GoogleCloudApihubV1Dependency.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List dependencies based on the provided filter and pagination parameters.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of dependency
  /// resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of Dependencies.
  /// A filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string. Allowed comparison
  /// operator is `=`. Filters are not case sensitive. The following fields in
  /// the `Dependency` are eligible for filtering: *
  /// `consumer.operation_resource_name` - The operation resource name for the
  /// consumer entity involved in a dependency. Allowed comparison operators:
  /// `=`. * `consumer.external_api_resource_name` - The external api resource
  /// name for the consumer entity involved in a dependency. Allowed comparison
  /// operators: `=`. * `supplier.operation_resource_name` - The operation
  /// resource name for the supplier entity involved in a dependency. Allowed
  /// comparison operators: `=`. * `supplier.external_api_resource_name` - The
  /// external api resource name for the supplier entity involved in a
  /// dependency. Allowed comparison operators: `=`. Expressions are combined
  /// with either `AND` logic operator or `OR` logical operator but not both of
  /// them together i.e. only one of the `AND` or `OR` operator can be used
  /// throughout the filter string and both the operators cannot be used
  /// together. No other logical operators are supported. At most three filter
  /// fields are allowed in the filter string and if provided more than that
  /// then `INVALID_ARGUMENT` error is returned by the API. For example,
  /// `consumer.operation_resource_name =
  /// \"projects/p1/locations/global/apis/a1/versions/v1/operations/o1\" OR
  /// supplier.operation_resource_name =
  /// \"projects/p1/locations/global/apis/a1/versions/v1/operations/o1\"` - The
  /// dependencies with either consumer or supplier operation resource name as
  /// _projects/p1/locations/global/apis/a1/versions/v1/operations/o1_.
  ///
  /// [pageSize] - Optional. The maximum number of dependency resources to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 dependencies will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDependencies` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListDependencies` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListDependenciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListDependenciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dependencies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListDependenciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a dependency based on the update_mask provided in the request.
  ///
  /// The following fields in the dependency can be updated: * description
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the dependency in the API Hub. Format:
  /// `projects/{project}/locations/{location}/dependencies/{dependency}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dependencies/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Dependency].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Dependency> patch(
    GoogleCloudApihubV1Dependency request,
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
    return GoogleCloudApihubV1Dependency.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a deployment resource in the API hub.
  ///
  /// Once a deployment resource is created, it can be associated with API
  /// versions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the deployment resource.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [deploymentId] - Optional. The ID to use for the deployment resource,
  /// which will become the final component of the deployment's resource name.
  /// This field is optional. * If provided, the same will be used. The service
  /// will throw an error if the specified id is already used by another
  /// deployment resource in the API hub. * If not provided, a system generated
  /// id will be used. This value should be 4-500 characters, and valid
  /// characters are /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Deployment> create(
    GoogleCloudApihubV1Deployment request,
    core.String parent, {
    core.String? deploymentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deploymentId != null) 'deploymentId': [deploymentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a deployment resource in the API hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment resource to delete. Format:
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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

  /// Get details about a deployment and the API versions linked to it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment resource to retrieve.
  /// Format: `projects/{project}/locations/{location}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Deployment> get(
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
    return GoogleCloudApihubV1Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List deployment resources in the API hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of deployment
  /// resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of Deployments. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string. The comparison operator
  /// must be one of: `<`, `>` or `=`. Filters are not case sensitive. The
  /// following fields in the `Deployments` are eligible for filtering: *
  /// `display_name` - The display name of the Deployment. Allowed comparison
  /// operators: `=`. * `create_time` - The time at which the Deployment was
  /// created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. Allowed
  /// comparison operators: `>` and `<`. * `resource_uri` - A URI to the
  /// deployment resource. Allowed comparison operators: `=`. * `api_versions` -
  /// The API versions linked to this deployment. Allowed comparison operators:
  /// `:`. * `source_project` - The project/organization at source for the
  /// deployment. Allowed comparison operators: `=`. * `source_environment` -
  /// The environment at source for the deployment. Allowed comparison
  /// operators: `=`. * `deployment_type.enum_values.values.id` - The allowed
  /// value id of the deployment_type attribute associated with the Deployment.
  /// Allowed comparison operators: `:`. *
  /// `deployment_type.enum_values.values.display_name` - The allowed value
  /// display name of the deployment_type attribute associated with the
  /// Deployment. Allowed comparison operators: `:`. *
  /// `slo.string_values.values` -The allowed string value of the slo attribute
  /// associated with the deployment. Allowed comparison operators: `:`. *
  /// `environment.enum_values.values.id` - The allowed value id of the
  /// environment attribute associated with the deployment. Allowed comparison
  /// operators: `:`. * `environment.enum_values.values.display_name` - The
  /// allowed value display name of the environment attribute associated with
  /// the deployment. Allowed comparison operators: `:`. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.id` - The allowed
  /// value id of the user defined enum attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-enum-id is
  /// a placeholder that can be replaced with any user defined enum attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.enum_values.values.display_name` -
  /// The allowed value display name of the user defined enum attribute
  /// associated with the Resource. Allowed comparison operator is `:`. Here
  /// user-defined-attribute-enum-display-name is a placeholder that can be
  /// replaced with any user defined enum attribute enum name. *
  /// `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.string_values.values` - The allowed
  /// value of the user defined string attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-string is
  /// a placeholder that can be replaced with any user defined string attribute
  /// name. * `attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/user-defined-attribute-id.json_values.values` - The allowed
  /// value of the user defined JSON attribute associated with the Resource.
  /// Allowed comparison operator is `:`. Here user-defined-attribute-json is a
  /// placeholder that can be replaced with any user defined JSON attribute
  /// name. A filter function is also supported in the filter string. The filter
  /// function is `id(name)`. The `id(name)` function returns the id of the
  /// resource name. For example, `id(name) = \"deployment-1\"` is equivalent to
  /// `name =
  /// \"projects/test-project-id/locations/test-location-id/deployments/deployment-1\"`
  /// provided the parent is
  /// `projects/test-project-id/locations/test-location-id`. Expressions are
  /// combined with either `AND` logic operator or `OR` logical operator but not
  /// both of them together i.e. only one of the `AND` or `OR` operator can be
  /// used throughout the filter string and both the operators cannot be used
  /// together. No other logical operators are supported. At most three filter
  /// fields are allowed in the filter string and if provided more than that
  /// then `INVALID_ARGUMENT` error is returned by the API. Here are a few
  /// examples: * `environment.enum_values.values.id: staging-id` - The allowed
  /// value id of the environment attribute associated with the Deployment is
  /// _staging-id_. * `environment.enum_values.values.display_name: \"Staging
  /// Deployment\"` - The allowed value display name of the environment
  /// attribute associated with the Deployment is `Staging Deployment`. *
  /// `environment.enum_values.values.id: production-id AND create_time <
  /// \"2021-08-15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:00Z\"` - The
  /// allowed value id of the environment attribute associated with the
  /// Deployment is _production-id_ and Deployment was created before
  /// _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00 UTC_. *
  /// `environment.enum_values.values.id: production-id OR
  /// slo.string_values.values: \"99.99%\"` - The allowed value id of the
  /// environment attribute Deployment is _production-id_ or string value of the
  /// slo attribute is _99.99%_. * `environment.enum_values.values.id:
  /// staging-id AND
  /// attributes.projects/test-project-id/locations/test-location-id/
  /// attributes/17650f90-4a29-4971-b3c0-d5532da3764b.string_values.values:
  /// test` - The filter string specifies that the allowed value id of the
  /// environment attribute associated with the Deployment is _staging-id_ and
  /// the value of the user defined attribute of type string is _test_.
  ///
  /// [pageSize] - Optional. The maximum number of deployment resources to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 deployments will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDeployments` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters (except page_size) provided to
  /// `ListDeployments` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListDeploymentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a deployment resource in the API hub.
  ///
  /// The following fields in the deployment resource can be updated: *
  /// display_name * description * documentation * deployment_type *
  /// resource_uri * endpoints * slo * environment * attributes * source_project
  /// * source_environment * management_url * source_uri The update_mask should
  /// be used to specify the fields being updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the deployment. Format:
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Deployment> patch(
    GoogleCloudApihubV1Deployment request,
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
    return GoogleCloudApihubV1Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDiscoveredApiObservationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource
  get discoveredApiOperations =>
      ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource(
        _requester,
      );

  ProjectsLocationsDiscoveredApiObservationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a DiscoveredAPIObservation in a given project, location and
  /// ApiObservation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DiscoveredApiObservation to retrieve.
  /// Format:
  /// projects/{project}/locations/{location}/discoveredApiObservations/{discovered_api_observation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveredApiObservations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1DiscoveredApiObservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1DiscoveredApiObservation> get(
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
    return GoogleCloudApihubV1DiscoveredApiObservation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the DiscoveredAPIObservations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// ApiObservations. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of ApiObservations to return.
  /// The service may return fewer than this value. If unspecified, at most 10
  /// ApiObservations will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListApiObservations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListApiObservations`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudApihubV1ListDiscoveredApiObservationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListDiscoveredApiObservationsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/discoveredApiObservations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListDiscoveredApiObservationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets a DiscoveredAPIOperation in a given project, location, ApiObservation
  /// and ApiOperation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DiscoveredApiOperation to retrieve.
  /// Format:
  /// projects/{project}/locations/{location}/discoveredApiObservations/{discovered_api_observation}/discoveredApiOperations/{discovered_api_operation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveredApiObservations/\[^/\]+/discoveredApiOperations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1DiscoveredApiOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1DiscoveredApiOperation> get(
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
    return GoogleCloudApihubV1DiscoveredApiOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the DiscoveredAPIOperations in a given project, location and
  /// ApiObservation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// DiscoveredApiOperations. Format:
  /// projects/{project}/locations/{location}/discoveredApiObservations/{discovered_api_observation}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveredApiObservations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. DiscoveredApiOperations will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDiscoveredApiApiOperations` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListDiscoveredApiApiOperations` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListDiscoveredApiOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListDiscoveredApiOperationsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/discoveredApiOperations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListDiscoveredApiOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsExternalApisResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExternalApisResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an External API resource in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the External API resource.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [externalApiId] - Optional. The ID to use for the External API resource,
  /// which will become the final component of the External API's resource name.
  /// This field is optional. * If provided, the same will be used. The service
  /// will throw an error if the specified id is already used by another
  /// External API resource in the API hub. * If not provided, a system
  /// generated id will be used. This value should be 4-500 characters, and
  /// valid characters are /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ExternalApi].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ExternalApi> create(
    GoogleCloudApihubV1ExternalApi request,
    core.String parent, {
    core.String? externalApiId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (externalApiId != null) 'externalApiId': [externalApiId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/externalApis';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ExternalApi.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete an External API resource in the API hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the External API resource to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/externalApis/{externalApi}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/externalApis/\[^/\]+$`.
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

  /// Get details about an External API resource in the API hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the External API resource to retrieve.
  /// Format:
  /// `projects/{project}/locations/{location}/externalApis/{externalApi}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/externalApis/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ExternalApi].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ExternalApi> get(
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
    return GoogleCloudApihubV1ExternalApi.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List External API resources in the API hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of External
  /// API resources. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of External API resources to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 ExternalApis will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListExternalApis` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (except page_size) provided to
  /// `ListExternalApis` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListExternalApisResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListExternalApisResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/externalApis';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListExternalApisResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update an External API resource in the API hub.
  ///
  /// The following fields can be updated: * display_name * description *
  /// documentation * endpoints * paths The update_mask should be used to
  /// specify the fields being updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Format:
  /// `projects/{project}/locations/{location}/externalApi/{externalApi}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/externalApis/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ExternalApi].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ExternalApi> patch(
    GoogleCloudApihubV1ExternalApi request,
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
    return GoogleCloudApihubV1ExternalApi.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsHostProjectRegistrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsHostProjectRegistrationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a host project registration.
  ///
  /// A Google cloud project can be registered as a host project if it is not
  /// attached as a runtime project to another host project. A project can be
  /// registered as a host project only once. Subsequent register calls for the
  /// same project will fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the host project. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [hostProjectRegistrationId] - Required. The ID to use for the Host Project
  /// Registration, which will become the final component of the host project
  /// registration's resource name. The ID must be the same as the Google cloud
  /// project specified in the host_project_registration.gcp_project field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1HostProjectRegistration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1HostProjectRegistration> create(
    GoogleCloudApihubV1HostProjectRegistration request,
    core.String parent, {
    core.String? hostProjectRegistrationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hostProjectRegistrationId != null)
        'hostProjectRegistrationId': [hostProjectRegistrationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/hostProjectRegistrations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1HostProjectRegistration.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a host project registration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Host project registration resource name.
  /// projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/hostProjectRegistrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1HostProjectRegistration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1HostProjectRegistration> get(
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
    return GoogleCloudApihubV1HostProjectRegistration.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists host project registrations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of host
  /// projects. Format: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of
  /// HostProjectRegistrations. A filter expression consists of a field name, a
  /// comparison operator, and a value for filtering. The value must be a
  /// string. All standard operators as documented at https://google.aip.dev/160
  /// are supported. The following fields in the `HostProjectRegistration` are
  /// eligible for filtering: * `name` - The name of the
  /// HostProjectRegistration. * `create_time` - The time at which the
  /// HostProjectRegistration was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. * `gcp_project` -
  /// The Google cloud project associated with the HostProjectRegistration.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. The maximum number of host project registrations to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 host project registrations will be returned. The maximum value is
  /// 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListHostProjectRegistrations` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters (except page_size)
  /// provided to `ListHostProjectRegistrations` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudApihubV1ListHostProjectRegistrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListHostProjectRegistrationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/hostProjectRegistrations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListHostProjectRegistrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsPluginsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPluginsInstancesResource get instances =>
      ProjectsLocationsPluginsInstancesResource(_requester);
  ProjectsLocationsPluginsStyleGuideResource get styleGuide =>
      ProjectsLocationsPluginsStyleGuideResource(_requester);

  ProjectsLocationsPluginsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an API Hub plugin resource in the API hub.
  ///
  /// Once a plugin is created, it can be used to create plugin instances.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this plugin will be
  /// created. Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pluginId] - Optional. The ID to use for the Plugin resource, which will
  /// become the final component of the Plugin's resource name. This field is
  /// optional. * If provided, the same will be used. The service will throw an
  /// error if the specified id is already used by another Plugin resource in
  /// the API hub instance. * If not provided, a system generated id will be
  /// used. This value should be 4-63 characters, overall resource name which
  /// will be of format
  /// `projects/{project}/locations/{location}/plugins/{plugin}`, its length is
  /// limited to 1000 characters and valid characters are /a-z\[0-9\]-_/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Plugin].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Plugin> create(
    GoogleCloudApihubV1Plugin request,
    core.String parent, {
    core.String? pluginId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pluginId != null) 'pluginId': [pluginId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/plugins';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Plugin.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a Plugin in API hub.
  ///
  /// Note, only user owned plugins can be deleted via this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Plugin resource to delete. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disables a plugin.
  ///
  /// The `state` of the plugin after disabling is `DISABLED`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin to disable. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Plugin].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Plugin> disable(
    GoogleCloudApihubV1DisablePluginRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Plugin.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a plugin.
  ///
  /// The `state` of the plugin after enabling is `ENABLED`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin to enable. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Plugin].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Plugin> enable(
    GoogleCloudApihubV1EnablePluginRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1Plugin.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get an API Hub plugin.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin to retrieve. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1Plugin].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1Plugin> get(
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
    return GoogleCloudApihubV1Plugin.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the style guide being used for linting.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spec to retrieve. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/styleGuide`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/styleGuide$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1StyleGuide].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1StyleGuide> getStyleGuide(
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
    return GoogleCloudApihubV1StyleGuide.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the plugins in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this plugin will be
  /// created. Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of plugins. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string. The comparison operator
  /// must be one of: `<`, `>` or `=`. Filters are not case sensitive. The
  /// following fields in the `Plugins` are eligible for filtering: *
  /// `plugin_category` - The category of the Plugin. Allowed comparison
  /// operators: `=`. Expressions are combined with either `AND` logic operator
  /// or `OR` logical operator but not both of them together i.e. only one of
  /// the `AND` or `OR` operator can be used throughout the filter string and
  /// both the operators cannot be used together. No other logical operators are
  /// supported. At most three filter fields are allowed in the filter string
  /// and if provided more than that then `INVALID_ARGUMENT` error is returned
  /// by the API. Here are a few examples: * `plugin_category = ON_RAMP` - The
  /// plugin is of category on ramp.
  ///
  /// [pageSize] - Optional. The maximum number of hub plugins to return. The
  /// service may return fewer than this value. If unspecified, at most 50 hub
  /// plugins will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPlugins` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters (except page_size) provided to
  /// `ListPlugins` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListPluginsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListPluginsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/plugins';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListPluginsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the styleGuide to be used for liniting in by API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the style guide. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/styleGuide`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/styleGuide$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1StyleGuide].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1StyleGuide> updateStyleGuide(
    GoogleCloudApihubV1StyleGuide request,
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
    return GoogleCloudApihubV1StyleGuide.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsPluginsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPluginsInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Plugin instance in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the plugin instance resource. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
  ///
  /// [pluginInstanceId] - Optional. The ID to use for the plugin instance,
  /// which will become the final component of the plugin instance's resource
  /// name. This field is optional. * If provided, the same will be used. The
  /// service will throw an error if the specified id is already used by another
  /// plugin instance in the plugin resource. * If not provided, a system
  /// generated id will be used. This value should be 4-63 characters, and valid
  /// characters are /a-z\[0-9\]-_/.
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
    GoogleCloudApihubV1PluginInstance request,
    core.String parent, {
    core.String? pluginInstanceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pluginInstanceId != null) 'pluginInstanceId': [pluginInstanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a plugin instance in the API hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin instance to delete. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disables a plugin instance in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin instance to disable. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> disableAction(
    GoogleCloudApihubV1DisablePluginInstanceActionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disableAction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a plugin instance in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin instance to enable. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> enableAction(
    GoogleCloudApihubV1EnablePluginInstanceActionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enableAction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes a plugin instance in the API hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin instance to execute. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> executeAction(
    GoogleCloudApihubV1ExecutePluginInstanceActionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeAction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get an API Hub plugin instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the plugin instance to retrieve. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1PluginInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1PluginInstance> get(
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
    return GoogleCloudApihubV1PluginInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the plugins in a given project and location.
  ///
  /// `-` can be used as wildcard value for {plugin_id}
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this plugin will be
  /// created. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`. To list plugin
  /// instances for multiple plugins, use the - character instead of the plugin
  /// ID.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of plugin
  /// instances. A filter expression consists of a field name, a comparison
  /// operator, and a value for filtering. The value must be a string. The
  /// comparison operator must be one of: `<`, `>` or `=`. Filters are not case
  /// sensitive. The following fields in the `PluginInstances` are eligible for
  /// filtering: * `state` - The state of the Plugin Instance. Allowed
  /// comparison operators: `=`. A filter function is also supported in the
  /// filter string. The filter function is `id(name)`. The `id(name)` function
  /// returns the id of the resource name. For example, `id(name) =
  /// \"plugin-instance-1\"` is equivalent to `name =
  /// \"projects/test-project-id/locations/test-location-id/plugins/plugin-1/instances/plugin-instance-1\"`
  /// provided the parent is
  /// `projects/test-project-id/locations/test-location-id/plugins/plugin-1`.
  /// Expressions are combined with either `AND` logic operator or `OR` logical
  /// operator but not both of them together i.e. only one of the `AND` or `OR`
  /// operator can be used throughout the filter string and both the operators
  /// cannot be used together. No other logical operators are supported. At most
  /// three filter fields are allowed in the filter string and if provided more
  /// than that then `INVALID_ARGUMENT` error is returned by the API. Here are a
  /// few examples: * `state = ENABLED` - The plugin instance is in enabled
  /// state.
  ///
  /// [pageSize] - Optional. The maximum number of hub plugins to return. The
  /// service may return fewer than this value. If unspecified, at most 50 hub
  /// plugins will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPluginInstances` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListPluginInstances`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1ListPluginInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListPluginInstancesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListPluginInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a plugin instance in the API hub.
  ///
  /// The following fields in the plugin_instance can be updated currently: *
  /// display_name * schedule_cron_expression The update_mask should be used to
  /// specify the fields being updated. To update the auth_config and
  /// additional_config of the plugin instance, use the
  /// ApplyPluginInstanceConfig method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique name of the plugin instance resource.
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1PluginInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1PluginInstance> patch(
    GoogleCloudApihubV1PluginInstance request,
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
    return GoogleCloudApihubV1PluginInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsPluginsStyleGuideResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPluginsStyleGuideResource(commons.ApiRequester client)
    : _requester = client;

  /// Get the contents of the style guide.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the StyleGuide whose contents need to be
  /// retrieved. There is exactly one style guide resource per project per
  /// location. The expected format is
  /// `projects/{project}/locations/{location}/plugins/{plugin}/styleGuide`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/plugins/\[^/\]+/styleGuide$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1StyleGuideContents].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1StyleGuideContents> getContents(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':contents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1StyleGuideContents.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRuntimeProjectAttachmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRuntimeProjectAttachmentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Attaches a runtime project to the host project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource for the Runtime Project
  /// Attachment. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [runtimeProjectAttachmentId] - Required. The ID to use for the Runtime
  /// Project Attachment, which will become the final component of the Runtime
  /// Project Attachment's name. The ID must be the same as the project ID of
  /// the Google cloud project specified in the
  /// runtime_project_attachment.runtime_project field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1RuntimeProjectAttachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1RuntimeProjectAttachment> create(
    GoogleCloudApihubV1RuntimeProjectAttachment request,
    core.String parent, {
    core.String? runtimeProjectAttachmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (runtimeProjectAttachmentId != null)
        'runtimeProjectAttachmentId': [runtimeProjectAttachmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeProjectAttachments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a runtime project attachment in the API Hub.
  ///
  /// This call will detach the runtime project from the host project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Runtime Project Attachment to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimeProjectAttachments/\[^/\]+$`.
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

  /// Gets a runtime project attachment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the API resource to retrieve. Format:
  /// `projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimeProjectAttachments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudApihubV1RuntimeProjectAttachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1RuntimeProjectAttachment> get(
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
    return GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List runtime projects attached to the host project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of runtime
  /// project attachments. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of
  /// RuntimeProjectAttachments. A filter expression consists of a field name, a
  /// comparison operator, and a value for filtering. The value must be a
  /// string. All standard operators as documented at https://google.aip.dev/160
  /// are supported. The following fields in the `RuntimeProjectAttachment` are
  /// eligible for filtering: * `name` - The name of the
  /// RuntimeProjectAttachment. * `create_time` - The time at which the
  /// RuntimeProjectAttachment was created. The value should be in the
  /// (RFC3339)\[https://tools.ietf.org/html/rfc3339\] format. *
  /// `runtime_project` - The Google cloud project associated with the
  /// RuntimeProjectAttachment.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. The maximum number of runtime project attachments
  /// to return. The service may return fewer than this value. If unspecified,
  /// at most 50 runtime project attachments will be returned. The maximum value
  /// is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRuntimeProjectAttachments` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters (except page_size)
  /// provided to `ListRuntimeProjectAttachments` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeProjectAttachments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The API metadata.
class GoogleCloudApihubV1APIMetadata {
  /// The API resource to be pushed to Hub's collect layer.
  ///
  /// The ID of the API resource will be generated by Hub to ensure uniqueness
  /// across all APIs across systems.
  ///
  /// Required.
  GoogleCloudApihubV1Api? api;

  /// Timestamp indicating when the API was created at the source.
  ///
  /// Optional.
  core.String? originalCreateTime;

  /// The unique identifier of the API in the system where it was originally
  /// created.
  ///
  /// Optional.
  core.String? originalId;

  /// Timestamp indicating when the API was last updated at the source.
  ///
  /// Required.
  core.String? originalUpdateTime;

  /// The list of versions present in an API resource.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1VersionMetadata>? versions;

  GoogleCloudApihubV1APIMetadata({
    this.api,
    this.originalCreateTime,
    this.originalId,
    this.originalUpdateTime,
    this.versions,
  });

  GoogleCloudApihubV1APIMetadata.fromJson(core.Map json_)
    : this(
        api:
            json_.containsKey('api')
                ? GoogleCloudApihubV1Api.fromJson(
                  json_['api'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        originalCreateTime: json_['originalCreateTime'] as core.String?,
        originalId: json_['originalId'] as core.String?,
        originalUpdateTime: json_['originalUpdateTime'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1VersionMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (api != null) 'api': api!,
    if (originalCreateTime != null) 'originalCreateTime': originalCreateTime!,
    if (originalId != null) 'originalId': originalId!,
    if (originalUpdateTime != null) 'originalUpdateTime': originalUpdateTime!,
    if (versions != null) 'versions': versions!,
  };
}

/// The details for the action to execute.
class GoogleCloudApihubV1ActionExecutionDetail {
  /// The action id of the plugin to execute.
  ///
  /// Required.
  core.String? actionId;

  GoogleCloudApihubV1ActionExecutionDetail({this.actionId});

  GoogleCloudApihubV1ActionExecutionDetail.fromJson(core.Map json_)
    : this(actionId: json_['actionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
  };
}

/// The value that can be assigned to the attribute when the data type is enum.
class GoogleCloudApihubV1AllowedValue {
  /// The detailed description of the allowed value.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the allowed value.
  ///
  /// Required.
  core.String? displayName;

  /// The ID of the allowed value.
  ///
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another allowed value in the same
  /// attribute resource. * If not provided, a system generated id derived from
  /// the display name will be used. In this case, the service will handle
  /// conflict resolution by adding a system generated suffix in case of
  /// duplicates. This value should be 4-63 characters, and valid characters are
  /// /a-z-/.
  ///
  /// Required.
  core.String? id;

  /// When set to true, the allowed value cannot be updated or deleted by the
  /// user.
  ///
  /// It can only be true for System defined attributes.
  ///
  /// Optional.
  core.bool? immutable;

  GoogleCloudApihubV1AllowedValue({
    this.description,
    this.displayName,
    this.id,
    this.immutable,
  });

  GoogleCloudApihubV1AllowedValue.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        immutable: json_['immutable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (id != null) 'id': id!,
    if (immutable != null) 'immutable': immutable!,
  };
}

/// An API resource in the API Hub.
class GoogleCloudApihubV1Api {
  /// The api functional requirements associated with the API resource.
  ///
  /// Carinality is 1 for this attribute. This maps to the following system
  /// defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-api-functional-requirements`
  /// attribute. The value of the attribute should be a proper URI, and in case
  /// of Cloud Storage URI, it should point to a Cloud Storage object, not a
  /// directory.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? apiFunctionalRequirements;

  /// The api requirement doc associated with the API resource.
  ///
  /// Carinality is 1 for this attribute. This maps to the following system
  /// defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-api-requirements`
  /// attribute. The value of the attribute should be a proper URI, and in case
  /// of Cloud Storage URI, it should point to a Cloud Storage object, not a
  /// directory.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? apiRequirements;

  /// The style of the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-api-style`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? apiStyle;

  /// The api technical requirements associated with the API resource.
  ///
  /// Carinality is 1 for this attribute. This maps to the following system
  /// defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-api-technical-requirements`
  /// attribute. The value of the attribute should be a proper URI, and in case
  /// of Cloud Storage URI, it should point to a Cloud Storage object, not a
  /// directory.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? apiTechnicalRequirements;

  /// The list of user defined attributes associated with the API resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The business unit owning the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-business-unit`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? businessUnit;

  /// The time at which the API resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the API resource.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the API resource.
  ///
  /// Required.
  core.String? displayName;

  /// The documentation for the API resource.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// Fingerprint of the API resource.
  ///
  /// Optional.
  core.String? fingerprint;

  /// The maturity level of the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-maturity-level`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? maturityLevel;

  /// Identifier.
  ///
  /// The name of the API resource in the API Hub. Format:
  /// `projects/{project}/locations/{location}/apis/{api}`
  core.String? name;

  /// Owner details for the API resource.
  ///
  /// Optional.
  GoogleCloudApihubV1Owner? owner;

  /// The selected version for an API resource.
  ///
  /// This can be used when special handling is needed on client side for
  /// particular version of the API. Format is
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  ///
  /// Optional.
  core.String? selectedVersion;

  /// The list of sources and metadata from the sources of the API resource.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1SourceMetadata>? sourceMetadata;

  /// The target users for the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-target-user`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? targetUser;

  /// The team owning the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-team`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? team;

  /// The time at which the API resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The list of versions present in an API resource.
  ///
  /// Note: An API resource can be associated with more than 1 version. Format
  /// is `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  ///
  /// Output only.
  core.List<core.String>? versions;

  GoogleCloudApihubV1Api({
    this.apiFunctionalRequirements,
    this.apiRequirements,
    this.apiStyle,
    this.apiTechnicalRequirements,
    this.attributes,
    this.businessUnit,
    this.createTime,
    this.description,
    this.displayName,
    this.documentation,
    this.fingerprint,
    this.maturityLevel,
    this.name,
    this.owner,
    this.selectedVersion,
    this.sourceMetadata,
    this.targetUser,
    this.team,
    this.updateTime,
    this.versions,
  });

  GoogleCloudApihubV1Api.fromJson(core.Map json_)
    : this(
        apiFunctionalRequirements:
            json_.containsKey('apiFunctionalRequirements')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['apiFunctionalRequirements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiRequirements:
            json_.containsKey('apiRequirements')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['apiRequirements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiStyle:
            json_.containsKey('apiStyle')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['apiStyle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiTechnicalRequirements:
            json_.containsKey('apiTechnicalRequirements')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['apiTechnicalRequirements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        businessUnit:
            json_.containsKey('businessUnit')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['businessUnit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fingerprint: json_['fingerprint'] as core.String?,
        maturityLevel:
            json_.containsKey('maturityLevel')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['maturityLevel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        owner:
            json_.containsKey('owner')
                ? GoogleCloudApihubV1Owner.fromJson(
                  json_['owner'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectedVersion: json_['selectedVersion'] as core.String?,
        sourceMetadata:
            (json_['sourceMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        targetUser:
            json_.containsKey('targetUser')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['targetUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        team:
            json_.containsKey('team')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['team'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiFunctionalRequirements != null)
      'apiFunctionalRequirements': apiFunctionalRequirements!,
    if (apiRequirements != null) 'apiRequirements': apiRequirements!,
    if (apiStyle != null) 'apiStyle': apiStyle!,
    if (apiTechnicalRequirements != null)
      'apiTechnicalRequirements': apiTechnicalRequirements!,
    if (attributes != null) 'attributes': attributes!,
    if (businessUnit != null) 'businessUnit': businessUnit!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (fingerprint != null) 'fingerprint': fingerprint!,
    if (maturityLevel != null) 'maturityLevel': maturityLevel!,
    if (name != null) 'name': name!,
    if (owner != null) 'owner': owner!,
    if (selectedVersion != null) 'selectedVersion': selectedVersion!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (targetUser != null) 'targetUser': targetUser!,
    if (team != null) 'team': team!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (versions != null) 'versions': versions!,
  };
}

/// The API data to be collected.
class GoogleCloudApihubV1ApiData {
  /// The list of API metadata.
  ///
  /// Optional.
  GoogleCloudApihubV1ApiMetadataList? apiMetadataList;

  GoogleCloudApihubV1ApiData({this.apiMetadataList});

  GoogleCloudApihubV1ApiData.fromJson(core.Map json_)
    : this(
        apiMetadataList:
            json_.containsKey('apiMetadataList')
                ? GoogleCloudApihubV1ApiMetadataList.fromJson(
                  json_['apiMetadataList']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiMetadataList != null) 'apiMetadataList': apiMetadataList!,
  };
}

/// An ApiHubInstance represents the instance resources of the API Hub.
///
/// Currently, only one ApiHub instance is allowed for each project.
class GoogleCloudApihubV1ApiHubInstance {
  /// Config of the ApiHub instance.
  ///
  /// Required.
  GoogleCloudApihubV1Config? config;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the ApiHub instance.
  ///
  /// Optional.
  core.String? description;

  /// Instance labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  core.String? name;

  /// The current state of the ApiHub instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "INACTIVE" : The ApiHub instance has not been initialized or has been
  /// deleted.
  /// - "CREATING" : The ApiHub instance is being created.
  /// - "ACTIVE" : The ApiHub instance has been created and is ready for use.
  /// - "UPDATING" : The ApiHub instance is being updated.
  /// - "DELETING" : The ApiHub instance is being deleted.
  /// - "FAILED" : The ApiHub instance encountered an error during a state
  /// change.
  core.String? state;

  /// Extra information about ApiHub instance state.
  ///
  /// Currently the message would be populated when state is `FAILED`.
  ///
  /// Output only.
  core.String? stateMessage;

  /// Last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1ApiHubInstance({
    this.config,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudApihubV1ApiHubInstance.fromJson(core.Map json_)
    : this(
        config:
            json_.containsKey('config')
                ? GoogleCloudApihubV1Config.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        stateMessage: json_['stateMessage'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (config != null) 'config': config!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ApiHubResource is one of the resources such as Api, Operation, Deployment,
/// Definition, Spec and Version resources stored in API-Hub.
class GoogleCloudApihubV1ApiHubResource {
  /// This represents Api resource in search results.
  ///
  /// Only name, display_name, description and owner fields are populated in
  /// search results.
  GoogleCloudApihubV1Api? api;

  /// This represents Definition resource in search results.
  ///
  /// Only name field is populated in search results.
  GoogleCloudApihubV1Definition? definition;

  /// This represents Deployment resource in search results.
  ///
  /// Only name, display_name, description, deployment_type and api_versions
  /// fields are populated in search results.
  GoogleCloudApihubV1Deployment? deployment;

  /// This represents ApiOperation resource in search results.
  ///
  /// Only name, description, spec and details fields are populated in search
  /// results.
  GoogleCloudApihubV1ApiOperation? operation;

  /// This represents Spec resource in search results.
  ///
  /// Only name, display_name, description, spec_type and documentation fields
  /// are populated in search results.
  GoogleCloudApihubV1Spec? spec;

  /// This represents Version resource in search results.
  ///
  /// Only name, display_name, description, lifecycle, compliance and
  /// accreditation fields are populated in search results.
  GoogleCloudApihubV1Version? version;

  GoogleCloudApihubV1ApiHubResource({
    this.api,
    this.definition,
    this.deployment,
    this.operation,
    this.spec,
    this.version,
  });

  GoogleCloudApihubV1ApiHubResource.fromJson(core.Map json_)
    : this(
        api:
            json_.containsKey('api')
                ? GoogleCloudApihubV1Api.fromJson(
                  json_['api'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        definition:
            json_.containsKey('definition')
                ? GoogleCloudApihubV1Definition.fromJson(
                  json_['definition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deployment:
            json_.containsKey('deployment')
                ? GoogleCloudApihubV1Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        operation:
            json_.containsKey('operation')
                ? GoogleCloudApihubV1ApiOperation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spec:
            json_.containsKey('spec')
                ? GoogleCloudApihubV1Spec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version:
            json_.containsKey('version')
                ? GoogleCloudApihubV1Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (api != null) 'api': api!,
    if (definition != null) 'definition': definition!,
    if (deployment != null) 'deployment': deployment!,
    if (operation != null) 'operation': operation!,
    if (spec != null) 'spec': spec!,
    if (version != null) 'version': version!,
  };
}

/// Config for authentication with API key.
class GoogleCloudApihubV1ApiKeyConfig {
  /// The name of the SecretManager secret version resource storing the API key.
  ///
  /// Format: `projects/{project}/secrets/{secrete}/versions/{version}`. The
  /// `secretmanager.versions.access` permission should be granted to the
  /// service account accessing the secret.
  ///
  /// Required.
  GoogleCloudApihubV1Secret? apiKey;

  /// The location of the API key.
  ///
  /// The default value is QUERY.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HTTP_ELEMENT_LOCATION_UNSPECIFIED" : HTTP element location not
  /// specified.
  /// - "QUERY" : Element is in the HTTP request query.
  /// - "HEADER" : Element is in the HTTP request header.
  /// - "PATH" : Element is in the HTTP request path.
  /// - "BODY" : Element is in the HTTP request body.
  /// - "COOKIE" : Element is in the HTTP request cookie.
  core.String? httpElementLocation;

  /// The parameter name of the API key.
  ///
  /// E.g. If the API request is "https://example.com/act?api_key=", "api_key"
  /// would be the parameter name.
  ///
  /// Required.
  core.String? name;

  GoogleCloudApihubV1ApiKeyConfig({
    this.apiKey,
    this.httpElementLocation,
    this.name,
  });

  GoogleCloudApihubV1ApiKeyConfig.fromJson(core.Map json_)
    : this(
        apiKey:
            json_.containsKey('apiKey')
                ? GoogleCloudApihubV1Secret.fromJson(
                  json_['apiKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpElementLocation: json_['httpElementLocation'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiKey != null) 'apiKey': apiKey!,
    if (httpElementLocation != null)
      'httpElementLocation': httpElementLocation!,
    if (name != null) 'name': name!,
  };
}

/// The message to hold repeated API metadata.
class GoogleCloudApihubV1ApiMetadataList {
  /// The list of API metadata.
  ///
  /// Required.
  core.List<GoogleCloudApihubV1APIMetadata>? apiMetadata;

  GoogleCloudApihubV1ApiMetadataList({this.apiMetadata});

  GoogleCloudApihubV1ApiMetadataList.fromJson(core.Map json_)
    : this(
        apiMetadata:
            (json_['apiMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1APIMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiMetadata != null) 'apiMetadata': apiMetadata!,
  };
}

/// Represents an operation contained in an API version in the API Hub.
///
/// An operation is added/updated/deleted in an API version when a new spec is
/// added or an existing spec is updated/deleted in a version. Currently, an
/// operation will be created only corresponding to OpenAPI spec as parsing is
/// supported for OpenAPI spec. Alternatively operations can be managed via
/// create,update and delete APIs, creation of apiOperation can be possible only
/// for version with no parsed operations and update/delete can be possible only
/// for operations created via create API.
class GoogleCloudApihubV1ApiOperation {
  /// The list of user defined attributes associated with the API operation
  /// resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The time at which the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Operation details.
  ///
  /// Note: Even though this field is optional, it is required for
  /// CreateApiOperation API and we will fail the request if not provided.
  ///
  /// Optional.
  GoogleCloudApihubV1OperationDetails? details;

  /// Identifier.
  ///
  /// The name of the operation. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  core.String? name;

  /// The list of sources and metadata from the sources of the API operation.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1SourceMetadata>? sourceMetadata;

  /// The name of the spec will be of the format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  /// Note:The name of the spec will be empty if the operation is created via
  /// CreateApiOperation API.
  ///
  /// Output only.
  core.String? spec;

  /// The time at which the operation was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1ApiOperation({
    this.attributes,
    this.createTime,
    this.details,
    this.name,
    this.sourceMetadata,
    this.spec,
    this.updateTime,
  });

  GoogleCloudApihubV1ApiOperation.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        details:
            json_.containsKey('details')
                ? GoogleCloudApihubV1OperationDetails.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        sourceMetadata:
            (json_['sourceMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        spec: json_['spec'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (createTime != null) 'createTime': createTime!,
    if (details != null) 'details': details!,
    if (name != null) 'name': name!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (spec != null) 'spec': spec!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The details of the Application Integration endpoint to be triggered for
/// curation.
class GoogleCloudApihubV1ApplicationIntegrationEndpointDetails {
  /// The API trigger ID of the Application Integration workflow.
  ///
  /// Required.
  core.String? triggerId;

  /// The endpoint URI should be a valid REST URI for triggering an Application
  /// Integration.
  ///
  /// Format: `https://integrations.googleapis.com/v1/{name=projects / *
  /// /locations / * /integrations / * }:execute` or
  /// `https://{location}-integrations.googleapis.com/v1/{name=projects / *
  /// /locations / * /integrations / * }:execute`
  ///
  /// Required.
  core.String? uri;

  GoogleCloudApihubV1ApplicationIntegrationEndpointDetails({
    this.triggerId,
    this.uri,
  });

  GoogleCloudApihubV1ApplicationIntegrationEndpointDetails.fromJson(
    core.Map json_,
  ) : this(
        triggerId: json_['triggerId'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (triggerId != null) 'triggerId': triggerId!,
    if (uri != null) 'uri': uri!,
  };
}

/// An attribute in the API Hub.
///
/// An attribute is a name value pair which can be attached to different
/// resources in the API hub based on the scope of the attribute. Attributes can
/// either be pre-defined by the API Hub or created by users.
class GoogleCloudApihubV1Attribute {
  /// The list of allowed values when the attribute value is of type enum.
  ///
  /// This is required when the data_type of the attribute is ENUM. The maximum
  /// number of allowed values of an attribute will be 1000.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1AllowedValue>? allowedValues;

  /// The maximum number of values that the attribute can have when associated
  /// with an API Hub resource.
  ///
  /// Cardinality 1 would represent a single-valued attribute. It must not be
  /// less than 1 or greater than 20. If not specified, the cardinality would be
  /// set to 1 by default and represent a single-valued attribute.
  ///
  /// Optional.
  core.int? cardinality;

  /// The time at which the attribute was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The type of the data of the attribute.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Attribute data type unspecified.
  /// - "ENUM" : Attribute's value is of type enum.
  /// - "JSON" : Attribute's value is of type json.
  /// - "STRING" : Attribute's value is of type string.
  /// - "URI" : Attribute's value is of type uri.
  core.String? dataType;

  /// The definition type of the attribute.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEFINITION_TYPE_UNSPECIFIED" : Attribute definition type unspecified.
  /// - "SYSTEM_DEFINED" : The attribute is predefined by the API Hub. Note that
  /// only the list of allowed values can be updated in this case via
  /// UpdateAttribute method.
  /// - "USER_DEFINED" : The attribute is defined by the user.
  core.String? definitionType;

  /// The description of the attribute.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the attribute.
  ///
  /// Required.
  core.String? displayName;

  /// When mandatory is true, the attribute is mandatory for the resource
  /// specified in the scope.
  ///
  /// Only System defined attributes can be mandatory.
  ///
  /// Output only.
  core.bool? mandatory;

  /// Identifier.
  ///
  /// The name of the attribute in the API Hub. Format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`
  core.String? name;

  /// The scope of the attribute.
  ///
  /// It represents the resource in the API Hub to which the attribute can be
  /// linked.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : Scope Unspecified.
  /// - "API" : Attribute can be linked to an API.
  /// - "VERSION" : Attribute can be linked to an API version.
  /// - "SPEC" : Attribute can be linked to a Spec.
  /// - "API_OPERATION" : Attribute can be linked to an API Operation.
  /// - "DEPLOYMENT" : Attribute can be linked to a Deployment.
  /// - "DEPENDENCY" : Attribute can be linked to a Dependency.
  /// - "DEFINITION" : Attribute can be linked to a definition.
  /// - "EXTERNAL_API" : Attribute can be linked to a ExternalAPI.
  /// - "PLUGIN" : Attribute can be linked to a Plugin.
  core.String? scope;

  /// The time at which the attribute was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Attribute({
    this.allowedValues,
    this.cardinality,
    this.createTime,
    this.dataType,
    this.definitionType,
    this.description,
    this.displayName,
    this.mandatory,
    this.name,
    this.scope,
    this.updateTime,
  });

  GoogleCloudApihubV1Attribute.fromJson(core.Map json_)
    : this(
        allowedValues:
            (json_['allowedValues'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1AllowedValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        cardinality: json_['cardinality'] as core.int?,
        createTime: json_['createTime'] as core.String?,
        dataType: json_['dataType'] as core.String?,
        definitionType: json_['definitionType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        mandatory: json_['mandatory'] as core.bool?,
        name: json_['name'] as core.String?,
        scope: json_['scope'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedValues != null) 'allowedValues': allowedValues!,
    if (cardinality != null) 'cardinality': cardinality!,
    if (createTime != null) 'createTime': createTime!,
    if (dataType != null) 'dataType': dataType!,
    if (definitionType != null) 'definitionType': definitionType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (mandatory != null) 'mandatory': mandatory!,
    if (name != null) 'name': name!,
    if (scope != null) 'scope': scope!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The attribute values associated with resource.
class GoogleCloudApihubV1AttributeValues {
  /// The name of the attribute.
  ///
  /// Format: projects/{project}/locations/{location}/attributes/{attribute}
  ///
  /// Output only.
  core.String? attribute;

  /// The attribute values associated with a resource in case attribute data
  /// type is enum.
  GoogleCloudApihubV1EnumAttributeValues? enumValues;

  /// The attribute values associated with a resource in case attribute data
  /// type is JSON.
  GoogleCloudApihubV1StringAttributeValues? jsonValues;

  /// The attribute values associated with a resource in case attribute data
  /// type is string.
  GoogleCloudApihubV1StringAttributeValues? stringValues;

  /// The attribute values associated with a resource in case attribute data
  /// type is URL, URI or IP, like gs://bucket-name/object-name.
  GoogleCloudApihubV1StringAttributeValues? uriValues;

  GoogleCloudApihubV1AttributeValues({
    this.attribute,
    this.enumValues,
    this.jsonValues,
    this.stringValues,
    this.uriValues,
  });

  GoogleCloudApihubV1AttributeValues.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        enumValues:
            json_.containsKey('enumValues')
                ? GoogleCloudApihubV1EnumAttributeValues.fromJson(
                  json_['enumValues'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jsonValues:
            json_.containsKey('jsonValues')
                ? GoogleCloudApihubV1StringAttributeValues.fromJson(
                  json_['jsonValues'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValues:
            json_.containsKey('stringValues')
                ? GoogleCloudApihubV1StringAttributeValues.fromJson(
                  json_['stringValues'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uriValues:
            json_.containsKey('uriValues')
                ? GoogleCloudApihubV1StringAttributeValues.fromJson(
                  json_['uriValues'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (enumValues != null) 'enumValues': enumValues!,
    if (jsonValues != null) 'jsonValues': jsonValues!,
    if (stringValues != null) 'stringValues': stringValues!,
    if (uriValues != null) 'uriValues': uriValues!,
  };
}

/// AuthConfig represents the authentication information.
class GoogleCloudApihubV1AuthConfig {
  /// Api Key Config.
  GoogleCloudApihubV1ApiKeyConfig? apiKeyConfig;

  /// The authentication type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "NO_AUTH" : No authentication.
  /// - "GOOGLE_SERVICE_ACCOUNT" : Google service account authentication.
  /// - "USER_PASSWORD" : Username and password authentication.
  /// - "API_KEY" : API Key authentication.
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 client credentials grant
  /// authentication.
  core.String? authType;

  /// Google Service Account.
  GoogleCloudApihubV1GoogleServiceAccountConfig? googleServiceAccountConfig;

  /// Oauth2.0 Client Credentials.
  GoogleCloudApihubV1Oauth2ClientCredentialsConfig?
  oauth2ClientCredentialsConfig;

  /// User Password.
  GoogleCloudApihubV1UserPasswordConfig? userPasswordConfig;

  GoogleCloudApihubV1AuthConfig({
    this.apiKeyConfig,
    this.authType,
    this.googleServiceAccountConfig,
    this.oauth2ClientCredentialsConfig,
    this.userPasswordConfig,
  });

  GoogleCloudApihubV1AuthConfig.fromJson(core.Map json_)
    : this(
        apiKeyConfig:
            json_.containsKey('apiKeyConfig')
                ? GoogleCloudApihubV1ApiKeyConfig.fromJson(
                  json_['apiKeyConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authType: json_['authType'] as core.String?,
        googleServiceAccountConfig:
            json_.containsKey('googleServiceAccountConfig')
                ? GoogleCloudApihubV1GoogleServiceAccountConfig.fromJson(
                  json_['googleServiceAccountConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ClientCredentialsConfig:
            json_.containsKey('oauth2ClientCredentialsConfig')
                ? GoogleCloudApihubV1Oauth2ClientCredentialsConfig.fromJson(
                  json_['oauth2ClientCredentialsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPasswordConfig:
            json_.containsKey('userPasswordConfig')
                ? GoogleCloudApihubV1UserPasswordConfig.fromJson(
                  json_['userPasswordConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiKeyConfig != null) 'apiKeyConfig': apiKeyConfig!,
    if (authType != null) 'authType': authType!,
    if (googleServiceAccountConfig != null)
      'googleServiceAccountConfig': googleServiceAccountConfig!,
    if (oauth2ClientCredentialsConfig != null)
      'oauth2ClientCredentialsConfig': oauth2ClientCredentialsConfig!,
    if (userPasswordConfig != null) 'userPasswordConfig': userPasswordConfig!,
  };
}

/// AuthConfigTemplate represents the authentication template for a plugin.
class GoogleCloudApihubV1AuthConfigTemplate {
  /// The service account of the plugin hosting service.
  ///
  /// This service account should be granted the required permissions on the
  /// Auth Config parameters provided while creating the plugin instances
  /// corresponding to this plugin. For example, if the plugin instance auth
  /// config requires a secret manager secret, the service account should be
  /// granted the secretmanager.versions.access permission on the corresponding
  /// secret, if the plugin instance auth config contains a service account, the
  /// service account should be granted the iam.serviceAccounts.getAccessToken
  /// permission on the corresponding service account.
  ///
  /// Optional.
  GoogleCloudApihubV1GoogleServiceAccountConfig? serviceAccount;

  /// The list of authentication types supported by the plugin.
  ///
  /// Required.
  core.List<core.String>? supportedAuthTypes;

  GoogleCloudApihubV1AuthConfigTemplate({
    this.serviceAccount,
    this.supportedAuthTypes,
  });

  GoogleCloudApihubV1AuthConfigTemplate.fromJson(core.Map json_)
    : this(
        serviceAccount:
            json_.containsKey('serviceAccount')
                ? GoogleCloudApihubV1GoogleServiceAccountConfig.fromJson(
                  json_['serviceAccount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        supportedAuthTypes:
            (json_['supportedAuthTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (supportedAuthTypes != null) 'supportedAuthTypes': supportedAuthTypes!,
  };
}

/// The CollectApiData method's request.
class GoogleCloudApihubV1CollectApiDataRequest {
  /// The action ID to be used for collecting the API data.
  ///
  /// This should map to one of the action IDs specified in action configs in
  /// the plugin.
  ///
  /// Required.
  core.String? actionId;

  /// The API data to be collected.
  ///
  /// Required.
  GoogleCloudApihubV1ApiData? apiData;

  /// The type of collection.
  ///
  /// Applies to all entries in api_data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COLLECTION_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the collection type is omitted.
  /// - "COLLECTION_TYPE_UPSERT" : The collection type is upsert. This should be
  /// used when an API is created or updated at the source.
  /// - "COLLECTION_TYPE_DELETE" : The collection type is delete. This should be
  /// used when an API is deleted at the source.
  core.String? collectionType;

  /// The plugin instance collecting the API data.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`.
  ///
  /// Required.
  core.String? pluginInstance;

  GoogleCloudApihubV1CollectApiDataRequest({
    this.actionId,
    this.apiData,
    this.collectionType,
    this.pluginInstance,
  });

  GoogleCloudApihubV1CollectApiDataRequest.fromJson(core.Map json_)
    : this(
        actionId: json_['actionId'] as core.String?,
        apiData:
            json_.containsKey('apiData')
                ? GoogleCloudApihubV1ApiData.fromJson(
                  json_['apiData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        collectionType: json_['collectionType'] as core.String?,
        pluginInstance: json_['pluginInstance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
    if (apiData != null) 'apiData': apiData!,
    if (collectionType != null) 'collectionType': collectionType!,
    if (pluginInstance != null) 'pluginInstance': pluginInstance!,
  };
}

/// Available configurations to provision an ApiHub Instance.
class GoogleCloudApihubV1Config {
  /// The Customer Managed Encryption Key (CMEK) used for data encryption.
  ///
  /// The CMEK name should follow the format of
  /// `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`,
  /// where the location must match the instance location. If the CMEK is not
  /// provided, a GMEK will be created for the instance.
  ///
  /// Optional.
  core.String? cmekKeyName;

  /// If true, the search will be disabled for the instance.
  ///
  /// The default value is false.
  ///
  /// Optional.
  core.bool? disableSearch;

  /// Encryption type for the region.
  ///
  /// If the encryption type is CMEK, the cmek_key_name must be provided. If no
  /// encryption type is provided, GMEK will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : Encryption type unspecified.
  /// - "GMEK" : Default encryption using Google managed encryption key.
  /// - "CMEK" : Encryption using customer managed encryption key.
  core.String? encryptionType;

  /// The name of the Vertex AI location where the data store is stored.
  ///
  /// Optional.
  core.String? vertexLocation;

  GoogleCloudApihubV1Config({
    this.cmekKeyName,
    this.disableSearch,
    this.encryptionType,
    this.vertexLocation,
  });

  GoogleCloudApihubV1Config.fromJson(core.Map json_)
    : this(
        cmekKeyName: json_['cmekKeyName'] as core.String?,
        disableSearch: json_['disableSearch'] as core.bool?,
        encryptionType: json_['encryptionType'] as core.String?,
        vertexLocation: json_['vertexLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cmekKeyName != null) 'cmekKeyName': cmekKeyName!,
    if (disableSearch != null) 'disableSearch': disableSearch!,
    if (encryptionType != null) 'encryptionType': encryptionType!,
    if (vertexLocation != null) 'vertexLocation': vertexLocation!,
  };
}

/// ConfigTemplate represents the configuration template for a plugin.
class GoogleCloudApihubV1ConfigTemplate {
  /// The list of additional configuration variables for the plugin's
  /// configuration.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1ConfigVariableTemplate>?
  additionalConfigTemplate;

  /// The authentication template for the plugin.
  ///
  /// Optional.
  GoogleCloudApihubV1AuthConfigTemplate? authConfigTemplate;

  GoogleCloudApihubV1ConfigTemplate({
    this.additionalConfigTemplate,
    this.authConfigTemplate,
  });

  GoogleCloudApihubV1ConfigTemplate.fromJson(core.Map json_)
    : this(
        additionalConfigTemplate:
            (json_['additionalConfigTemplate'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authConfigTemplate:
            json_.containsKey('authConfigTemplate')
                ? GoogleCloudApihubV1AuthConfigTemplate.fromJson(
                  json_['authConfigTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalConfigTemplate != null)
      'additionalConfigTemplate': additionalConfigTemplate!,
    if (authConfigTemplate != null) 'authConfigTemplate': authConfigTemplate!,
  };
}

/// ConfigValueOption represents an option for a config variable of type enum or
/// multi select.
class GoogleCloudApihubV1ConfigValueOption {
  /// Description of the option.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the option.
  ///
  /// Required.
  core.String? displayName;

  /// Id of the option.
  ///
  /// Required.
  core.String? id;

  GoogleCloudApihubV1ConfigValueOption({
    this.description,
    this.displayName,
    this.id,
  });

  GoogleCloudApihubV1ConfigValueOption.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (id != null) 'id': id!,
  };
}

/// ConfigVariable represents a additional configuration variable present in a
/// PluginInstance Config or AuthConfig, based on a ConfigVariableTemplate.
class GoogleCloudApihubV1ConfigVariable {
  /// The config variable value in case of config variable of type boolean.
  ///
  /// Optional.
  core.bool? boolValue;

  /// The config variable value in case of config variable of type enum.
  ///
  /// Optional.
  GoogleCloudApihubV1ConfigValueOption? enumValue;

  /// The config variable value in case of config variable of type integer.
  ///
  /// Optional.
  core.String? intValue;

  /// Key will be the id to uniquely identify the config variable.
  ///
  /// Output only.
  core.String? key;

  /// The config variable value in case of config variable of type multi
  /// integer.
  ///
  /// Optional.
  GoogleCloudApihubV1MultiIntValues? multiIntValues;

  /// The config variable value in case of config variable of type multi select.
  ///
  /// Optional.
  GoogleCloudApihubV1MultiSelectValues? multiSelectValues;

  /// The config variable value in case of config variable of type multi string.
  ///
  /// Optional.
  GoogleCloudApihubV1MultiStringValues? multiStringValues;

  /// The config variable value in case of config variable of type secret.
  ///
  /// Optional.
  GoogleCloudApihubV1Secret? secretValue;

  /// The config variable value in case of config variable of type string.
  ///
  /// Optional.
  core.String? stringValue;

  GoogleCloudApihubV1ConfigVariable({
    this.boolValue,
    this.enumValue,
    this.intValue,
    this.key,
    this.multiIntValues,
    this.multiSelectValues,
    this.multiStringValues,
    this.secretValue,
    this.stringValue,
  });

  GoogleCloudApihubV1ConfigVariable.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        enumValue:
            json_.containsKey('enumValue')
                ? GoogleCloudApihubV1ConfigValueOption.fromJson(
                  json_['enumValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        key: json_['key'] as core.String?,
        multiIntValues:
            json_.containsKey('multiIntValues')
                ? GoogleCloudApihubV1MultiIntValues.fromJson(
                  json_['multiIntValues']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiSelectValues:
            json_.containsKey('multiSelectValues')
                ? GoogleCloudApihubV1MultiSelectValues.fromJson(
                  json_['multiSelectValues']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        multiStringValues:
            json_.containsKey('multiStringValues')
                ? GoogleCloudApihubV1MultiStringValues.fromJson(
                  json_['multiStringValues']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secretValue:
            json_.containsKey('secretValue')
                ? GoogleCloudApihubV1Secret.fromJson(
                  json_['secretValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (enumValue != null) 'enumValue': enumValue!,
    if (intValue != null) 'intValue': intValue!,
    if (key != null) 'key': key!,
    if (multiIntValues != null) 'multiIntValues': multiIntValues!,
    if (multiSelectValues != null) 'multiSelectValues': multiSelectValues!,
    if (multiStringValues != null) 'multiStringValues': multiStringValues!,
    if (secretValue != null) 'secretValue': secretValue!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// ConfigVariableTemplate represents a configuration variable template present
/// in a Plugin Config.
class GoogleCloudApihubV1ConfigVariableTemplate {
  /// Description.
  ///
  /// Optional.
  core.String? description;

  /// Enum options.
  ///
  /// To be populated if `ValueType` is `ENUM`.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1ConfigValueOption>? enumOptions;

  /// ID of the config variable.
  ///
  /// Must be unique within the configuration.
  ///
  /// Required.
  core.String? id;

  /// Multi select options.
  ///
  /// To be populated if `ValueType` is `MULTI_SELECT`.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1ConfigValueOption>? multiSelectOptions;

  /// Flag represents that this `ConfigVariable` must be provided for a
  /// PluginInstance.
  ///
  /// Optional.
  core.bool? required;

  /// Regular expression in RE2 syntax used for validating the `value` of a
  /// `ConfigVariable`.
  ///
  /// Optional.
  core.String? validationRegex;

  /// Type of the parameter: string, int, bool etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Value type is not specified.
  /// - "STRING" : Value type is string.
  /// - "INT" : Value type is integer.
  /// - "BOOL" : Value type is boolean.
  /// - "SECRET" : Value type is secret.
  /// - "ENUM" : Value type is enum.
  /// - "MULTI_SELECT" : Value type is multi select.
  /// - "MULTI_STRING" : Value type is multi string.
  /// - "MULTI_INT" : Value type is multi int.
  core.String? valueType;

  GoogleCloudApihubV1ConfigVariableTemplate({
    this.description,
    this.enumOptions,
    this.id,
    this.multiSelectOptions,
    this.required,
    this.validationRegex,
    this.valueType,
  });

  GoogleCloudApihubV1ConfigVariableTemplate.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        enumOptions:
            (json_['enumOptions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ConfigValueOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        id: json_['id'] as core.String?,
        multiSelectOptions:
            (json_['multiSelectOptions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ConfigValueOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        required: json_['required'] as core.bool?,
        validationRegex: json_['validationRegex'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (enumOptions != null) 'enumOptions': enumOptions!,
    if (id != null) 'id': id!,
    if (multiSelectOptions != null) 'multiSelectOptions': multiSelectOptions!,
    if (required != null) 'required': required!,
    if (validationRegex != null) 'validationRegex': validationRegex!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// A curation resource in the API Hub.
class GoogleCloudApihubV1Curation {
  /// The time at which the curation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the curation.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the curation.
  ///
  /// Required.
  core.String? displayName;

  /// The endpoint to be triggered for curation.
  ///
  /// Required.
  GoogleCloudApihubV1Endpoint? endpoint;

  /// The error code of the last execution of the curation.
  ///
  /// The error code is populated only when the last execution state is failed.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : Default unspecified error code.
  /// - "INTERNAL_ERROR" : The execution failed due to an internal error.
  /// - "UNAUTHORIZED" : The curation is not authorized to trigger the endpoint
  /// uri.
  core.String? lastExecutionErrorCode;

  /// Error message describing the failure, if any, during the last execution of
  /// the curation.
  ///
  /// Output only.
  core.String? lastExecutionErrorMessage;

  /// The last execution state of the curation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAST_EXECUTION_STATE_UNSPECIFIED" : Default unspecified state.
  /// - "SUCCEEDED" : The last curation execution was successful.
  /// - "FAILED" : The last curation execution failed.
  core.String? lastExecutionState;

  /// Identifier.
  ///
  /// The name of the curation. Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  core.String? name;

  /// The plugin instances and associated actions that are using the curation.
  ///
  /// Note: A particular curation could be used by multiple plugin instances or
  /// multiple actions in a plugin instance.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1PluginInstanceActionID>? pluginInstanceActions;

  /// The time at which the curation was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Curation({
    this.createTime,
    this.description,
    this.displayName,
    this.endpoint,
    this.lastExecutionErrorCode,
    this.lastExecutionErrorMessage,
    this.lastExecutionState,
    this.name,
    this.pluginInstanceActions,
    this.updateTime,
  });

  GoogleCloudApihubV1Curation.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        endpoint:
            json_.containsKey('endpoint')
                ? GoogleCloudApihubV1Endpoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastExecutionErrorCode: json_['lastExecutionErrorCode'] as core.String?,
        lastExecutionErrorMessage:
            json_['lastExecutionErrorMessage'] as core.String?,
        lastExecutionState: json_['lastExecutionState'] as core.String?,
        name: json_['name'] as core.String?,
        pluginInstanceActions:
            (json_['pluginInstanceActions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1PluginInstanceActionID.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (endpoint != null) 'endpoint': endpoint!,
    if (lastExecutionErrorCode != null)
      'lastExecutionErrorCode': lastExecutionErrorCode!,
    if (lastExecutionErrorMessage != null)
      'lastExecutionErrorMessage': lastExecutionErrorMessage!,
    if (lastExecutionState != null) 'lastExecutionState': lastExecutionState!,
    if (name != null) 'name': name!,
    if (pluginInstanceActions != null)
      'pluginInstanceActions': pluginInstanceActions!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The curation information for this plugin instance.
class GoogleCloudApihubV1CurationConfig {
  /// The curation type for this plugin instance.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CURATION_TYPE_UNSPECIFIED" : Default unspecified curation type.
  /// - "DEFAULT_CURATION_FOR_API_METADATA" : Default curation for API metadata
  /// will be used.
  /// - "CUSTOM_CURATION_FOR_API_METADATA" : Custom curation for API metadata
  /// will be used.
  core.String? curationType;

  /// Custom curation information for this plugin instance.
  ///
  /// Optional.
  GoogleCloudApihubV1CustomCuration? customCuration;

  GoogleCloudApihubV1CurationConfig({this.curationType, this.customCuration});

  GoogleCloudApihubV1CurationConfig.fromJson(core.Map json_)
    : this(
        curationType: json_['curationType'] as core.String?,
        customCuration:
            json_.containsKey('customCuration')
                ? GoogleCloudApihubV1CustomCuration.fromJson(
                  json_['customCuration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (curationType != null) 'curationType': curationType!,
    if (customCuration != null) 'customCuration': customCuration!,
  };
}

/// Custom curation information for this plugin instance.
class GoogleCloudApihubV1CustomCuration {
  /// The unique name of the curation resource.
  ///
  /// This will be the name of the curation resource in the format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  ///
  /// Required.
  core.String? curation;

  GoogleCloudApihubV1CustomCuration({this.curation});

  GoogleCloudApihubV1CustomCuration.fromJson(core.Map json_)
    : this(curation: json_['curation'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (curation != null) 'curation': curation!,
  };
}

/// Represents a definition for example schema, request, response definitions
/// contained in an API version.
///
/// A definition is added/updated/deleted in an API version when a new spec is
/// added or an existing spec is updated/deleted in a version. Currently,
/// definition will be created only corresponding to OpenAPI spec as parsing is
/// supported for OpenAPI spec. Also, within OpenAPI spec, only `schema` object
/// is supported.
class GoogleCloudApihubV1Definition {
  /// The list of user defined attributes associated with the definition
  /// resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The time at which the definition was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The name of the definition. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/definitions/{definition}`
  core.String? name;

  /// The value of a schema definition.
  ///
  /// Output only.
  GoogleCloudApihubV1Schema? schema;

  /// The name of the spec from where the definition was parsed.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  ///
  /// Output only.
  core.String? spec;

  /// The type of the definition.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Definition type unspecified.
  /// - "SCHEMA" : Definition type schema.
  core.String? type;

  /// The time at which the definition was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Definition({
    this.attributes,
    this.createTime,
    this.name,
    this.schema,
    this.spec,
    this.type,
    this.updateTime,
  });

  GoogleCloudApihubV1Definition.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        schema:
            json_.containsKey('schema')
                ? GoogleCloudApihubV1Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spec: json_['spec'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (schema != null) 'schema': schema!,
    if (spec != null) 'spec': spec!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A dependency resource defined in the API hub describes a dependency directed
/// from a consumer to a supplier entity.
///
/// A dependency can be defined between two Operations or between an Operation
/// and External API.
class GoogleCloudApihubV1Dependency {
  /// The list of user defined attributes associated with the dependency
  /// resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The entity acting as the consumer in the dependency.
  ///
  /// Required. Immutable.
  GoogleCloudApihubV1DependencyEntityReference? consumer;

  /// The time at which the dependency was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human readable description corresponding of the dependency.
  ///
  /// Optional.
  core.String? description;

  /// Discovery mode of the dependency.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DISCOVERY_MODE_UNSPECIFIED" : Default value. This value is unused.
  /// - "MANUAL" : Manual mode of discovery when the dependency is defined by
  /// the user.
  core.String? discoveryMode;

  /// Error details of a dependency if the system has detected it internally.
  ///
  /// Output only.
  GoogleCloudApihubV1DependencyErrorDetail? errorDetail;

  /// Identifier.
  ///
  /// The name of the dependency in the API Hub. Format:
  /// `projects/{project}/locations/{location}/dependencies/{dependency}`
  core.String? name;

  /// State of the dependency.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PROPOSED" : Dependency will be in a proposed state when it is newly
  /// identified by the API hub on its own.
  /// - "VALIDATED" : Dependency will be in a validated state when it is
  /// validated by the admin or manually created in the API hub.
  core.String? state;

  /// The entity acting as the supplier in the dependency.
  ///
  /// Required. Immutable.
  GoogleCloudApihubV1DependencyEntityReference? supplier;

  /// The time at which the dependency was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Dependency({
    this.attributes,
    this.consumer,
    this.createTime,
    this.description,
    this.discoveryMode,
    this.errorDetail,
    this.name,
    this.state,
    this.supplier,
    this.updateTime,
  });

  GoogleCloudApihubV1Dependency.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        consumer:
            json_.containsKey('consumer')
                ? GoogleCloudApihubV1DependencyEntityReference.fromJson(
                  json_['consumer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        discoveryMode: json_['discoveryMode'] as core.String?,
        errorDetail:
            json_.containsKey('errorDetail')
                ? GoogleCloudApihubV1DependencyErrorDetail.fromJson(
                  json_['errorDetail'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        supplier:
            json_.containsKey('supplier')
                ? GoogleCloudApihubV1DependencyEntityReference.fromJson(
                  json_['supplier'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (consumer != null) 'consumer': consumer!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (discoveryMode != null) 'discoveryMode': discoveryMode!,
    if (errorDetail != null) 'errorDetail': errorDetail!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (supplier != null) 'supplier': supplier!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Reference to an entity participating in a dependency.
class GoogleCloudApihubV1DependencyEntityReference {
  /// Display name of the entity.
  ///
  /// Output only.
  core.String? displayName;

  /// The resource name of an external API in the API Hub.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/externalApis/{external_api}`
  core.String? externalApiResourceName;

  /// The resource name of an operation in the API Hub.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  core.String? operationResourceName;

  GoogleCloudApihubV1DependencyEntityReference({
    this.displayName,
    this.externalApiResourceName,
    this.operationResourceName,
  });

  GoogleCloudApihubV1DependencyEntityReference.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        externalApiResourceName:
            json_['externalApiResourceName'] as core.String?,
        operationResourceName: json_['operationResourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (externalApiResourceName != null)
      'externalApiResourceName': externalApiResourceName!,
    if (operationResourceName != null)
      'operationResourceName': operationResourceName!,
  };
}

/// Details describing error condition of a dependency.
class GoogleCloudApihubV1DependencyErrorDetail {
  /// Error in the dependency.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ERROR_UNSPECIFIED" : Default value used for no error in the dependency.
  /// - "SUPPLIER_NOT_FOUND" : Supplier entity has been deleted.
  /// - "SUPPLIER_RECREATED" : Supplier entity has been recreated.
  core.String? error;

  /// Timestamp at which the error was found.
  ///
  /// Optional.
  core.String? errorTime;

  GoogleCloudApihubV1DependencyErrorDetail({this.error, this.errorTime});

  GoogleCloudApihubV1DependencyErrorDetail.fromJson(core.Map json_)
    : this(
        error: json_['error'] as core.String?,
        errorTime: json_['errorTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (errorTime != null) 'errorTime': errorTime!,
  };
}

/// Details of the deployment where APIs are hosted.
///
/// A deployment could represent an Apigee proxy, API gateway, other Google
/// Cloud services or non-Google Cloud services as well. A deployment entity is
/// a root level entity in the API hub and exists independent of any API.
class GoogleCloudApihubV1Deployment {
  /// The API versions linked to this deployment.
  ///
  /// Note: A particular deployment could be linked to multiple different API
  /// versions (of same or different APIs).
  ///
  /// Output only.
  core.List<core.String>? apiVersions;

  /// The list of user defined attributes associated with the deployment
  /// resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The time at which the deployment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The type of deployment.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-deployment-type`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Required.
  GoogleCloudApihubV1AttributeValues? deploymentType;

  /// The description of the deployment.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the deployment.
  ///
  /// Required.
  core.String? displayName;

  /// The documentation of the deployment.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// The endpoints at which this deployment resource is listening for API
  /// requests.
  ///
  /// This could be a list of complete URIs, hostnames or an IP addresses.
  ///
  /// Required.
  core.List<core.String>? endpoints;

  /// The environment mapping to this deployment.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-environment`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? environment;

  /// The uri where users can navigate to for the management of the deployment.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-management-url`
  /// The number of values for this attribute will be based on the cardinality
  /// of the attribute. The same can be retrieved via GetAttribute API. The
  /// value of the attribute should be a valid URL.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? managementUrl;

  /// Identifier.
  ///
  /// The name of the deployment. Format:
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  core.String? name;

  /// The resource URI identifies the deployment within its gateway.
  ///
  /// For Apigee gateways, its recommended to use the format:
  /// organizations/{org}/environments/{env}/apis/{api}. For ex: if a proxy with
  /// name `orders` is deployed in `staging` environment of `cymbal`
  /// organization, the resource URI would be:
  /// `organizations/cymbal/environments/staging/apis/orders`.
  ///
  /// Required.
  core.String? resourceUri;

  /// The SLO for this deployment.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-slo` attribute.
  /// The number of values for this attribute will be based on the cardinality
  /// of the attribute. The same can be retrieved via GetAttribute API. All
  /// values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? slo;

  /// The environment at source for the deployment.
  ///
  /// For example: prod, dev, staging, etc.
  ///
  /// Optional.
  core.String? sourceEnvironment;

  /// The list of sources and metadata from the sources of the deployment.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1SourceMetadata>? sourceMetadata;

  /// The project to which the deployment belongs.
  ///
  /// For GCP gateways, this will refer to the project identifier. For others
  /// like Edge/OPDK, this will refer to the org identifier.
  ///
  /// Optional.
  core.String? sourceProject;

  /// The uri where additional source specific information for this deployment
  /// can be found.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-source-uri` The
  /// number of values for this attribute will be based on the cardinality of
  /// the attribute. The same can be retrieved via GetAttribute API. The value
  /// of the attribute should be a valid URI, and in case of Cloud Storage URI,
  /// it should point to a Cloud Storage object, not a directory.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? sourceUri;

  /// The time at which the deployment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Deployment({
    this.apiVersions,
    this.attributes,
    this.createTime,
    this.deploymentType,
    this.description,
    this.displayName,
    this.documentation,
    this.endpoints,
    this.environment,
    this.managementUrl,
    this.name,
    this.resourceUri,
    this.slo,
    this.sourceEnvironment,
    this.sourceMetadata,
    this.sourceProject,
    this.sourceUri,
    this.updateTime,
  });

  GoogleCloudApihubV1Deployment.fromJson(core.Map json_)
    : this(
        apiVersions:
            (json_['apiVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        deploymentType:
            json_.containsKey('deploymentType')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['deploymentType']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        environment:
            json_.containsKey('environment')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        managementUrl:
            json_.containsKey('managementUrl')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['managementUrl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        resourceUri: json_['resourceUri'] as core.String?,
        slo:
            json_.containsKey('slo')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['slo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceEnvironment: json_['sourceEnvironment'] as core.String?,
        sourceMetadata:
            (json_['sourceMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sourceProject: json_['sourceProject'] as core.String?,
        sourceUri:
            json_.containsKey('sourceUri')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['sourceUri'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiVersions != null) 'apiVersions': apiVersions!,
    if (attributes != null) 'attributes': attributes!,
    if (createTime != null) 'createTime': createTime!,
    if (deploymentType != null) 'deploymentType': deploymentType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (environment != null) 'environment': environment!,
    if (managementUrl != null) 'managementUrl': managementUrl!,
    if (name != null) 'name': name!,
    if (resourceUri != null) 'resourceUri': resourceUri!,
    if (slo != null) 'slo': slo!,
    if (sourceEnvironment != null) 'sourceEnvironment': sourceEnvironment!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (sourceProject != null) 'sourceProject': sourceProject!,
    if (sourceUri != null) 'sourceUri': sourceUri!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The metadata associated with a deployment.
class GoogleCloudApihubV1DeploymentMetadata {
  /// The deployment resource to be pushed to Hub's collect layer.
  ///
  /// The ID of the deployment will be generated by Hub.
  ///
  /// Required.
  GoogleCloudApihubV1Deployment? deployment;

  /// Timestamp indicating when the deployment was created at the source.
  ///
  /// Optional.
  core.String? originalCreateTime;

  /// The unique identifier of the deployment in the system where it was
  /// originally created.
  ///
  /// Optional.
  core.String? originalId;

  /// Timestamp indicating when the deployment was last updated at the source.
  ///
  /// Required.
  core.String? originalUpdateTime;

  GoogleCloudApihubV1DeploymentMetadata({
    this.deployment,
    this.originalCreateTime,
    this.originalId,
    this.originalUpdateTime,
  });

  GoogleCloudApihubV1DeploymentMetadata.fromJson(core.Map json_)
    : this(
        deployment:
            json_.containsKey('deployment')
                ? GoogleCloudApihubV1Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        originalCreateTime: json_['originalCreateTime'] as core.String?,
        originalId: json_['originalId'] as core.String?,
        originalUpdateTime: json_['originalUpdateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deployment != null) 'deployment': deployment!,
    if (originalCreateTime != null) 'originalCreateTime': originalCreateTime!,
    if (originalId != null) 'originalId': originalId!,
    if (originalUpdateTime != null) 'originalUpdateTime': originalUpdateTime!,
  };
}

/// The DisablePluginInstanceAction method's request.
class GoogleCloudApihubV1DisablePluginInstanceActionRequest {
  /// The action id to disable.
  ///
  /// Required.
  core.String? actionId;

  GoogleCloudApihubV1DisablePluginInstanceActionRequest({this.actionId});

  GoogleCloudApihubV1DisablePluginInstanceActionRequest.fromJson(core.Map json_)
    : this(actionId: json_['actionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
  };
}

/// The DisablePlugin method's request.
typedef GoogleCloudApihubV1DisablePluginRequest = $Empty;

/// Respresents an API Observation observed in one of the sources.
class GoogleCloudApihubV1DiscoveredApiObservation {
  /// The number of observed API Operations.
  ///
  /// Optional.
  core.String? apiOperationCount;

  /// Create time stamp of the observation in API Hub.
  ///
  /// Output only.
  core.String? createTime;

  /// The hostname of requests processed for this Observation.
  ///
  /// Optional.
  core.String? hostname;

  /// The number of known API Operations.
  ///
  /// Output only.
  core.String? knownOperationsCount;

  /// Last event detected time stamp
  ///
  /// Optional.
  core.String? lastEventDetectedTime;

  /// Identifier.
  ///
  /// The name of the discovered API Observation. Format:
  /// `projects/{project}/locations/{location}/discoveredApiObservations/{discovered_api_observation}`
  core.String? name;

  /// For an observation pushed from a gcp resource, this would be the gcp
  /// project id.
  ///
  /// Optional.
  core.String? origin;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  ///
  /// This field can include port information. Examples: `"192.168.1.1"`,
  /// `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
  ///
  /// Optional.
  core.List<core.String>? serverIps;

  /// The location of the observation source.
  ///
  /// Optional.
  core.List<core.String>? sourceLocations;

  /// The metadata of the source from which the observation was collected.
  ///
  /// Output only.
  GoogleCloudApihubV1SourceMetadata? sourceMetadata;

  /// The type of the source from which the observation was collected.
  ///
  /// Optional.
  core.List<core.String>? sourceTypes;

  /// Style of ApiObservation
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STYLE_UNSPECIFIED" : Unknown style
  /// - "REST" : Style is Rest API
  /// - "GRPC" : Style is Grpc API
  /// - "GRAPHQL" : Style is GraphQL API
  core.String? style;

  /// The number of unknown API Operations.
  ///
  /// Output only.
  core.String? unknownOperationsCount;

  /// Update time stamp of the observation in API Hub.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1DiscoveredApiObservation({
    this.apiOperationCount,
    this.createTime,
    this.hostname,
    this.knownOperationsCount,
    this.lastEventDetectedTime,
    this.name,
    this.origin,
    this.serverIps,
    this.sourceLocations,
    this.sourceMetadata,
    this.sourceTypes,
    this.style,
    this.unknownOperationsCount,
    this.updateTime,
  });

  GoogleCloudApihubV1DiscoveredApiObservation.fromJson(core.Map json_)
    : this(
        apiOperationCount: json_['apiOperationCount'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        knownOperationsCount: json_['knownOperationsCount'] as core.String?,
        lastEventDetectedTime: json_['lastEventDetectedTime'] as core.String?,
        name: json_['name'] as core.String?,
        origin: json_['origin'] as core.String?,
        serverIps:
            (json_['serverIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sourceLocations:
            (json_['sourceLocations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sourceMetadata:
            json_.containsKey('sourceMetadata')
                ? GoogleCloudApihubV1SourceMetadata.fromJson(
                  json_['sourceMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceTypes:
            (json_['sourceTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        style: json_['style'] as core.String?,
        unknownOperationsCount: json_['unknownOperationsCount'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiOperationCount != null) 'apiOperationCount': apiOperationCount!,
    if (createTime != null) 'createTime': createTime!,
    if (hostname != null) 'hostname': hostname!,
    if (knownOperationsCount != null)
      'knownOperationsCount': knownOperationsCount!,
    if (lastEventDetectedTime != null)
      'lastEventDetectedTime': lastEventDetectedTime!,
    if (name != null) 'name': name!,
    if (origin != null) 'origin': origin!,
    if (serverIps != null) 'serverIps': serverIps!,
    if (sourceLocations != null) 'sourceLocations': sourceLocations!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (sourceTypes != null) 'sourceTypes': sourceTypes!,
    if (style != null) 'style': style!,
    if (unknownOperationsCount != null)
      'unknownOperationsCount': unknownOperationsCount!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// DiscoveredApiOperation represents an API Operation observed in one of the
/// sources.
class GoogleCloudApihubV1DiscoveredApiOperation {
  /// The classification of the discovered API operation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CLASSIFICATION_UNSPECIFIED" : Operation is not classified as known or
  /// unknown.
  /// - "KNOWN" : Operation has a matched catalog operation.
  /// - "UNKNOWN" : Operation does not have a matched catalog operation.
  core.String? classification;

  /// The number of occurrences of this API Operation.
  ///
  /// Optional.
  core.String? count;

  /// Create time stamp of the discovered API operation in API Hub.
  ///
  /// Output only.
  core.String? createTime;

  /// First seen time stamp
  ///
  /// Optional.
  core.String? firstSeenTime;

  /// An HTTP Operation.
  ///
  /// Optional.
  GoogleCloudApihubV1HttpOperationDetails? httpOperation;

  /// Last seen time stamp
  ///
  /// Optional.
  core.String? lastSeenTime;

  /// The list of matched results for the discovered API operation.
  ///
  /// This will be populated only if the classification is known. The current
  /// usecase is for a single match. Keeping it repeated to support multiple
  /// matches in future.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1MatchResult>? matchResults;

  /// Identifier.
  ///
  /// The name of the discovered API Operation. Format:
  /// `projects/{project}/locations/{location}/discoveredApiObservations/{discovered_api_observation}/discoveredApiOperations/{discovered_api_operation}`
  core.String? name;

  /// The metadata of the source from which the api operation was collected.
  ///
  /// Output only.
  GoogleCloudApihubV1SourceMetadata? sourceMetadata;

  /// Update time stamp of the discovered API operation in API Hub.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1DiscoveredApiOperation({
    this.classification,
    this.count,
    this.createTime,
    this.firstSeenTime,
    this.httpOperation,
    this.lastSeenTime,
    this.matchResults,
    this.name,
    this.sourceMetadata,
    this.updateTime,
  });

  GoogleCloudApihubV1DiscoveredApiOperation.fromJson(core.Map json_)
    : this(
        classification: json_['classification'] as core.String?,
        count: json_['count'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        firstSeenTime: json_['firstSeenTime'] as core.String?,
        httpOperation:
            json_.containsKey('httpOperation')
                ? GoogleCloudApihubV1HttpOperationDetails.fromJson(
                  json_['httpOperation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastSeenTime: json_['lastSeenTime'] as core.String?,
        matchResults:
            (json_['matchResults'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1MatchResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        sourceMetadata:
            json_.containsKey('sourceMetadata')
                ? GoogleCloudApihubV1SourceMetadata.fromJson(
                  json_['sourceMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classification != null) 'classification': classification!,
    if (count != null) 'count': count!,
    if (createTime != null) 'createTime': createTime!,
    if (firstSeenTime != null) 'firstSeenTime': firstSeenTime!,
    if (httpOperation != null) 'httpOperation': httpOperation!,
    if (lastSeenTime != null) 'lastSeenTime': lastSeenTime!,
    if (matchResults != null) 'matchResults': matchResults!,
    if (name != null) 'name': name!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Documentation details.
class GoogleCloudApihubV1Documentation {
  /// The uri of the externally hosted documentation.
  ///
  /// Optional.
  core.String? externalUri;

  GoogleCloudApihubV1Documentation({this.externalUri});

  GoogleCloudApihubV1Documentation.fromJson(core.Map json_)
    : this(externalUri: json_['externalUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalUri != null) 'externalUri': externalUri!,
  };
}

/// The EnablePluginInstanceAction method's request.
class GoogleCloudApihubV1EnablePluginInstanceActionRequest {
  /// The action id to enable.
  ///
  /// Required.
  core.String? actionId;

  GoogleCloudApihubV1EnablePluginInstanceActionRequest({this.actionId});

  GoogleCloudApihubV1EnablePluginInstanceActionRequest.fromJson(core.Map json_)
    : this(actionId: json_['actionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
  };
}

/// The EnablePlugin method's request.
typedef GoogleCloudApihubV1EnablePluginRequest = $Empty;

/// The endpoint to be triggered for curation.
///
/// The endpoint will be invoked with a request payload containing ApiMetadata.
/// Response should contain curated data in the form of ApiMetadata.
class GoogleCloudApihubV1Endpoint {
  /// The details of the Application Integration endpoint to be triggered for
  /// curation.
  ///
  /// Required.
  GoogleCloudApihubV1ApplicationIntegrationEndpointDetails?
  applicationIntegrationEndpointDetails;

  GoogleCloudApihubV1Endpoint({this.applicationIntegrationEndpointDetails});

  GoogleCloudApihubV1Endpoint.fromJson(core.Map json_)
    : this(
        applicationIntegrationEndpointDetails:
            json_.containsKey('applicationIntegrationEndpointDetails')
                ? GoogleCloudApihubV1ApplicationIntegrationEndpointDetails.fromJson(
                  json_['applicationIntegrationEndpointDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationIntegrationEndpointDetails != null)
      'applicationIntegrationEndpointDetails':
          applicationIntegrationEndpointDetails!,
  };
}

/// The attribute values of data type enum.
class GoogleCloudApihubV1EnumAttributeValues {
  /// The attribute values in case attribute data type is enum.
  ///
  /// Required.
  core.List<GoogleCloudApihubV1AllowedValue>? values;

  GoogleCloudApihubV1EnumAttributeValues({this.values});

  GoogleCloudApihubV1EnumAttributeValues.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1AllowedValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// The ExecutePluginInstanceAction method's request.
class GoogleCloudApihubV1ExecutePluginInstanceActionRequest {
  /// The execution details for the action to execute.
  ///
  /// Required.
  GoogleCloudApihubV1ActionExecutionDetail? actionExecutionDetail;

  GoogleCloudApihubV1ExecutePluginInstanceActionRequest({
    this.actionExecutionDetail,
  });

  GoogleCloudApihubV1ExecutePluginInstanceActionRequest.fromJson(core.Map json_)
    : this(
        actionExecutionDetail:
            json_.containsKey('actionExecutionDetail')
                ? GoogleCloudApihubV1ActionExecutionDetail.fromJson(
                  json_['actionExecutionDetail']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionExecutionDetail != null)
      'actionExecutionDetail': actionExecutionDetail!,
  };
}

/// The execution status for the plugin instance.
class GoogleCloudApihubV1ExecutionStatus {
  /// The current state of the execution.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CURRENT_EXECUTION_STATE_UNSPECIFIED" : Default unspecified execution
  /// state.
  /// - "RUNNING" : The plugin instance is executing.
  /// - "NOT_RUNNING" : The plugin instance is not running an execution.
  core.String? currentExecutionState;

  /// The last execution of the plugin instance.
  ///
  /// Output only.
  GoogleCloudApihubV1LastExecution? lastExecution;

  GoogleCloudApihubV1ExecutionStatus({
    this.currentExecutionState,
    this.lastExecution,
  });

  GoogleCloudApihubV1ExecutionStatus.fromJson(core.Map json_)
    : this(
        currentExecutionState: json_['currentExecutionState'] as core.String?,
        lastExecution:
            json_.containsKey('lastExecution')
                ? GoogleCloudApihubV1LastExecution.fromJson(
                  json_['lastExecution'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentExecutionState != null)
      'currentExecutionState': currentExecutionState!,
    if (lastExecution != null) 'lastExecution': lastExecution!,
  };
}

/// An external API represents an API being provided by external sources.
///
/// This can be used to model third-party APIs and can be used to define
/// dependencies.
class GoogleCloudApihubV1ExternalApi {
  /// The list of user defined attributes associated with the Version resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the external API.
  ///
  /// Max length is 2000 characters (Unicode Code Points).
  ///
  /// Optional.
  core.String? description;

  /// Display name of the external API.
  ///
  /// Max length is 63 characters (Unicode Code Points).
  ///
  /// Required.
  core.String? displayName;

  /// Documentation of the external API.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// List of endpoints on which this API is accessible.
  ///
  /// Optional.
  core.List<core.String>? endpoints;

  /// Identifier.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/externalApi/{externalApi}`.
  core.String? name;

  /// List of paths served by this API.
  ///
  /// Optional.
  core.List<core.String>? paths;

  /// Last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1ExternalApi({
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.documentation,
    this.endpoints,
    this.name,
    this.paths,
    this.updateTime,
  });

  GoogleCloudApihubV1ExternalApi.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        paths:
            (json_['paths'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (name != null) 'name': name!,
    if (paths != null) 'paths': paths!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Config for Google service account authentication.
class GoogleCloudApihubV1GoogleServiceAccountConfig {
  /// The service account to be used for authenticating request.
  ///
  /// The `iam.serviceAccounts.getAccessToken` permission should be granted on
  /// this service account to the impersonator service account.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudApihubV1GoogleServiceAccountConfig({this.serviceAccount});

  GoogleCloudApihubV1GoogleServiceAccountConfig.fromJson(core.Map json_)
    : this(serviceAccount: json_['serviceAccount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// An aggregation of HTTP header occurrences.
class GoogleCloudApihubV1Header {
  /// The number of occurrences of this Header across transactions.
  core.String? count;

  /// Data type of header
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type
  /// - "BOOL" : Boolean data type
  /// - "INTEGER" : Integer data type
  /// - "FLOAT" : Float data type
  /// - "STRING" : String data type
  /// - "UUID" : UUID data type
  core.String? dataType;

  /// Header name.
  core.String? name;

  GoogleCloudApihubV1Header({this.count, this.dataType, this.name});

  GoogleCloudApihubV1Header.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        dataType: json_['dataType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (dataType != null) 'dataType': dataType!,
    if (name != null) 'name': name!,
  };
}

/// Host project registration refers to the registration of a Google cloud
/// project with Api Hub as a host project.
///
/// This is the project where Api Hub is provisioned. It acts as the consumer
/// project for the Api Hub instance provisioned. Multiple runtime projects can
/// be attached to the host project and these attachments define the scope of
/// Api Hub.
class GoogleCloudApihubV1HostProjectRegistration {
  /// The time at which the host project registration was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Google cloud project name in the format: "projects/abc" or "projects/123".
  ///
  /// As input, project name with either project id or number are accepted. As
  /// output, this field will contain project number.
  ///
  /// Required. Immutable.
  core.String? gcpProject;

  /// Identifier.
  ///
  /// The name of the host project registration. Format:
  /// "projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration}".
  core.String? name;

  GoogleCloudApihubV1HostProjectRegistration({
    this.createTime,
    this.gcpProject,
    this.name,
  });

  GoogleCloudApihubV1HostProjectRegistration.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        gcpProject: json_['gcpProject'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (gcpProject != null) 'gcpProject': gcpProject!,
    if (name != null) 'name': name!,
  };
}

/// The information related to the service implemented by the plugin developer,
/// used to invoke the plugin's functionality.
class GoogleCloudApihubV1HostingService {
  /// The URI of the service implemented by the plugin developer, used to invoke
  /// the plugin's functionality.
  ///
  /// This information is only required for user defined plugins.
  ///
  /// Optional.
  core.String? serviceUri;

  GoogleCloudApihubV1HostingService({this.serviceUri});

  GoogleCloudApihubV1HostingService.fromJson(core.Map json_)
    : this(serviceUri: json_['serviceUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceUri != null) 'serviceUri': serviceUri!,
  };
}

/// The HTTP Operation.
class GoogleCloudApihubV1HttpOperation {
  /// Operation method Note: Even though this field is optional, it is required
  /// for CreateApiOperation API and we will fail the request if not provided.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Method unspecified.
  /// - "GET" : Get Operation type.
  /// - "PUT" : Put Operation type.
  /// - "POST" : Post Operation type.
  /// - "DELETE" : Delete Operation type.
  /// - "OPTIONS" : Options Operation type.
  /// - "HEAD" : Head Operation type.
  /// - "PATCH" : Patch Operation type.
  /// - "TRACE" : Trace Operation type.
  core.String? method;

  /// The path details for the Operation.
  ///
  /// Note: Even though this field is optional, it is required for
  /// CreateApiOperation API and we will fail the request if not provided.
  ///
  /// Optional.
  GoogleCloudApihubV1Path? path;

  GoogleCloudApihubV1HttpOperation({this.method, this.path});

  GoogleCloudApihubV1HttpOperation.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        path:
            json_.containsKey('path')
                ? GoogleCloudApihubV1Path.fromJson(
                  json_['path'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (method != null) 'method': method!,
    if (path != null) 'path': path!,
  };
}

/// An HTTP-based API Operation, sometimes called a "REST" Operation.
class GoogleCloudApihubV1HttpOperationDetails {
  /// An HTTP Operation.
  ///
  /// Required.
  GoogleCloudApihubV1HttpOperation? httpOperation;

  /// Path params of HttpOperation
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1PathParam>? pathParams;

  /// Query params of HttpOperation
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1QueryParam>? queryParams;

  /// Request metadata.
  ///
  /// Optional.
  GoogleCloudApihubV1HttpRequest? request;

  /// Response metadata.
  ///
  /// Optional.
  GoogleCloudApihubV1HttpResponse? response;

  GoogleCloudApihubV1HttpOperationDetails({
    this.httpOperation,
    this.pathParams,
    this.queryParams,
    this.request,
    this.response,
  });

  GoogleCloudApihubV1HttpOperationDetails.fromJson(core.Map json_)
    : this(
        httpOperation:
            json_.containsKey('httpOperation')
                ? GoogleCloudApihubV1HttpOperation.fromJson(
                  json_['httpOperation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pathParams:
            (json_['pathParams'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1PathParam.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        queryParams:
            (json_['queryParams'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1QueryParam.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        request:
            json_.containsKey('request')
                ? GoogleCloudApihubV1HttpRequest.fromJson(
                  json_['request'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        response:
            json_.containsKey('response')
                ? GoogleCloudApihubV1HttpResponse.fromJson(
                  json_['response'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (httpOperation != null) 'httpOperation': httpOperation!,
    if (pathParams != null) 'pathParams': pathParams!,
    if (queryParams != null) 'queryParams': queryParams!,
    if (request != null) 'request': request!,
    if (response != null) 'response': response!,
  };
}

/// An aggregation of HTTP requests.
class GoogleCloudApihubV1HttpRequest {
  /// Unordered map from header name to header metadata
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1Header>? headers;

  GoogleCloudApihubV1HttpRequest({this.headers});

  GoogleCloudApihubV1HttpRequest.fromJson(core.Map json_)
    : this(
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1Header.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
  };
}

/// An aggregation of HTTP responses.
class GoogleCloudApihubV1HttpResponse {
  /// Unordered map from header name to header metadata
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1Header>? headers;

  /// Map of status code to observed count
  ///
  /// Optional.
  core.Map<core.String, core.String>? responseCodes;

  GoogleCloudApihubV1HttpResponse({this.headers, this.responseCodes});

  GoogleCloudApihubV1HttpResponse.fromJson(core.Map json_)
    : this(
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1Header.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        responseCodes: (json_['responseCodes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
    if (responseCodes != null) 'responseCodes': responseCodes!,
  };
}

/// Issue contains the details of a single issue found by the linter.
class GoogleCloudApihubV1Issue {
  /// Rule code unique to each rule defined in linter.
  ///
  /// Required.
  core.String? code;

  /// Human-readable message describing the issue found by the linter.
  ///
  /// Required.
  core.String? message;

  /// An array of strings indicating the location in the analyzed document where
  /// the rule was triggered.
  ///
  /// Required.
  core.List<core.String>? path;

  /// Object describing where in the file the issue was found.
  ///
  /// Required.
  GoogleCloudApihubV1Range? range;

  /// Severity level of the rule violation.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity unspecified.
  /// - "SEVERITY_ERROR" : Severity error.
  /// - "SEVERITY_WARNING" : Severity warning.
  /// - "SEVERITY_INFO" : Severity info.
  /// - "SEVERITY_HINT" : Severity hint.
  core.String? severity;

  GoogleCloudApihubV1Issue({
    this.code,
    this.message,
    this.path,
    this.range,
    this.severity,
  });

  GoogleCloudApihubV1Issue.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        message: json_['message'] as core.String?,
        path:
            (json_['path'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        range:
            json_.containsKey('range')
                ? GoogleCloudApihubV1Range.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
    if (path != null) 'path': path!,
    if (range != null) 'range': range!,
    if (severity != null) 'severity': severity!,
  };
}

/// The result of the last execution of the plugin instance.
class GoogleCloudApihubV1LastExecution {
  /// The last execution end time of the plugin instance.
  ///
  /// Output only.
  core.String? endTime;

  /// Error message describing the failure, if any, during the last execution.
  ///
  /// Output only.
  core.String? errorMessage;

  /// The result of the last execution of the plugin instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : Default unspecified execution result.
  /// - "SUCCEEDED" : The plugin instance executed successfully.
  /// - "FAILED" : The plugin instance execution failed.
  core.String? result;

  /// The last execution start time of the plugin instance.
  ///
  /// Output only.
  core.String? startTime;

  GoogleCloudApihubV1LastExecution({
    this.endTime,
    this.errorMessage,
    this.result,
    this.startTime,
  });

  GoogleCloudApihubV1LastExecution.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        result: json_['result'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (result != null) 'result': result!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// LintResponse contains the response from the linter.
class GoogleCloudApihubV1LintResponse {
  /// Timestamp when the linting response was generated.
  ///
  /// Required.
  core.String? createTime;

  /// Array of issues found in the analyzed document.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1Issue>? issues;

  /// Name of the linter used.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINTER_UNSPECIFIED" : Linter type unspecified.
  /// - "SPECTRAL" : Linter type spectral.
  /// - "OTHER" : Linter type other.
  core.String? linter;

  /// Name of the linting application.
  ///
  /// Required.
  core.String? source;

  /// Lint state represents success or failure for linting.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINT_STATE_UNSPECIFIED" : Lint state unspecified.
  /// - "LINT_STATE_SUCCESS" : Linting was completed successfully.
  /// - "LINT_STATE_ERROR" : Linting encountered errors.
  core.String? state;

  /// Summary of all issue types and counts for each severity level.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1SummaryEntry>? summary;

  GoogleCloudApihubV1LintResponse({
    this.createTime,
    this.issues,
    this.linter,
    this.source,
    this.state,
    this.summary,
  });

  GoogleCloudApihubV1LintResponse.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Issue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        linter: json_['linter'] as core.String?,
        source: json_['source'] as core.String?,
        state: json_['state'] as core.String?,
        summary:
            (json_['summary'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SummaryEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (issues != null) 'issues': issues!,
    if (linter != null) 'linter': linter!,
    if (source != null) 'source': source!,
    if (state != null) 'state': state!,
    if (summary != null) 'summary': summary!,
  };
}

/// The LintSpec method's request.
typedef GoogleCloudApihubV1LintSpecRequest = $Empty;

/// The ListApiOperations method's response.
class GoogleCloudApihubV1ListApiOperationsResponse {
  /// The operations corresponding to an API version.
  core.List<GoogleCloudApihubV1ApiOperation>? apiOperations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListApiOperationsResponse({
    this.apiOperations,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListApiOperationsResponse.fromJson(core.Map json_)
    : this(
        apiOperations:
            (json_['apiOperations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ApiOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiOperations != null) 'apiOperations': apiOperations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListApis method's response.
class GoogleCloudApihubV1ListApisResponse {
  /// The API resources present in the API hub.
  core.List<GoogleCloudApihubV1Api>? apis;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListApisResponse({this.apis, this.nextPageToken});

  GoogleCloudApihubV1ListApisResponse.fromJson(core.Map json_)
    : this(
        apis:
            (json_['apis'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Api.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apis != null) 'apis': apis!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListAttributes method's response.
class GoogleCloudApihubV1ListAttributesResponse {
  /// The list of all attributes.
  core.List<GoogleCloudApihubV1Attribute>? attributes;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListAttributesResponse({
    this.attributes,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListAttributesResponse.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Attribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListCurations method's response.
class GoogleCloudApihubV1ListCurationsResponse {
  /// The curation resources present in the API hub.
  core.List<GoogleCloudApihubV1Curation>? curations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListCurationsResponse({
    this.curations,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListCurationsResponse.fromJson(core.Map json_)
    : this(
        curations:
            (json_['curations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Curation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (curations != null) 'curations': curations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListDependencies method's response.
class GoogleCloudApihubV1ListDependenciesResponse {
  /// The dependency resources present in the API hub.
  core.List<GoogleCloudApihubV1Dependency>? dependencies;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListDependenciesResponse({
    this.dependencies,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListDependenciesResponse.fromJson(core.Map json_)
    : this(
        dependencies:
            (json_['dependencies'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Dependency.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependencies != null) 'dependencies': dependencies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListDeployments method's response.
class GoogleCloudApihubV1ListDeploymentsResponse {
  /// The deployment resources present in the API hub.
  core.List<GoogleCloudApihubV1Deployment>? deployments;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListDeploymentsResponse.fromJson(core.Map json_)
    : this(
        deployments:
            (json_['deployments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Deployment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deployments != null) 'deployments': deployments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing DiscoveredApiObservations
class GoogleCloudApihubV1ListDiscoveredApiObservationsResponse {
  /// The DiscoveredApiObservation from the specified project and location.
  core.List<GoogleCloudApihubV1DiscoveredApiObservation>?
  discoveredApiObservations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListDiscoveredApiObservationsResponse({
    this.discoveredApiObservations,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListDiscoveredApiObservationsResponse.fromJson(
    core.Map json_,
  ) : this(
        discoveredApiObservations:
            (json_['discoveredApiObservations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudApihubV1DiscoveredApiObservation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discoveredApiObservations != null)
      'discoveredApiObservations': discoveredApiObservations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing DiscoveredApiOperations
class GoogleCloudApihubV1ListDiscoveredApiOperationsResponse {
  /// The DiscoveredApiOperations from the specified project, location and
  /// DiscoveredApiObservation.
  core.List<GoogleCloudApihubV1DiscoveredApiOperation>? discoveredApiOperations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListDiscoveredApiOperationsResponse({
    this.discoveredApiOperations,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListDiscoveredApiOperationsResponse.fromJson(
    core.Map json_,
  ) : this(
        discoveredApiOperations:
            (json_['discoveredApiOperations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1DiscoveredApiOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discoveredApiOperations != null)
      'discoveredApiOperations': discoveredApiOperations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListExternalApis method's response.
class GoogleCloudApihubV1ListExternalApisResponse {
  /// The External API resources present in the API hub.
  core.List<GoogleCloudApihubV1ExternalApi>? externalApis;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListExternalApisResponse({
    this.externalApis,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListExternalApisResponse.fromJson(core.Map json_)
    : this(
        externalApis:
            (json_['externalApis'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ExternalApi.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalApis != null) 'externalApis': externalApis!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListHostProjectRegistrations method's response.
class GoogleCloudApihubV1ListHostProjectRegistrationsResponse {
  /// The list of host project registrations.
  core.List<GoogleCloudApihubV1HostProjectRegistration>?
  hostProjectRegistrations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudApihubV1ListHostProjectRegistrationsResponse({
    this.hostProjectRegistrations,
    this.nextPageToken,
  });

  GoogleCloudApihubV1ListHostProjectRegistrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        hostProjectRegistrations:
            (json_['hostProjectRegistrations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudApihubV1HostProjectRegistration.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hostProjectRegistrations != null)
      'hostProjectRegistrations': hostProjectRegistrations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The ListPluginInstances method's response.
class GoogleCloudApihubV1ListPluginInstancesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The plugin instances from the specified parent resource.
  core.List<GoogleCloudApihubV1PluginInstance>? pluginInstances;

  GoogleCloudApihubV1ListPluginInstancesResponse({
    this.nextPageToken,
    this.pluginInstances,
  });

  GoogleCloudApihubV1ListPluginInstancesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pluginInstances:
            (json_['pluginInstances'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1PluginInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (pluginInstances != null) 'pluginInstances': pluginInstances!,
  };
}

/// The ListPlugins method's response.
class GoogleCloudApihubV1ListPluginsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The plugins from the specified parent resource.
  core.List<GoogleCloudApihubV1Plugin>? plugins;

  GoogleCloudApihubV1ListPluginsResponse({this.nextPageToken, this.plugins});

  GoogleCloudApihubV1ListPluginsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        plugins:
            (json_['plugins'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Plugin.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (plugins != null) 'plugins': plugins!,
  };
}

/// The ListRuntimeProjectAttachments method's response.
class GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of runtime project attachments.
  core.List<GoogleCloudApihubV1RuntimeProjectAttachment>?
  runtimeProjectAttachments;

  GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse({
    this.nextPageToken,
    this.runtimeProjectAttachments,
  });

  GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        runtimeProjectAttachments:
            (json_['runtimeProjectAttachments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (runtimeProjectAttachments != null)
      'runtimeProjectAttachments': runtimeProjectAttachments!,
  };
}

/// The ListSpecs method's response.
class GoogleCloudApihubV1ListSpecsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The specs corresponding to an API Version.
  core.List<GoogleCloudApihubV1Spec>? specs;

  GoogleCloudApihubV1ListSpecsResponse({this.nextPageToken, this.specs});

  GoogleCloudApihubV1ListSpecsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        specs:
            (json_['specs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Spec.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (specs != null) 'specs': specs!,
  };
}

/// The ListVersions method's response.
class GoogleCloudApihubV1ListVersionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The versions corresponding to an API.
  core.List<GoogleCloudApihubV1Version>? versions;

  GoogleCloudApihubV1ListVersionsResponse({this.nextPageToken, this.versions});

  GoogleCloudApihubV1ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1Version.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (versions != null) 'versions': versions!,
  };
}

/// The LookupApiHubInstance method's response.\`
class GoogleCloudApihubV1LookupApiHubInstanceResponse {
  /// API Hub instance for a project if it exists, empty otherwise.
  GoogleCloudApihubV1ApiHubInstance? apiHubInstance;

  GoogleCloudApihubV1LookupApiHubInstanceResponse({this.apiHubInstance});

  GoogleCloudApihubV1LookupApiHubInstanceResponse.fromJson(core.Map json_)
    : this(
        apiHubInstance:
            json_.containsKey('apiHubInstance')
                ? GoogleCloudApihubV1ApiHubInstance.fromJson(
                  json_['apiHubInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiHubInstance != null) 'apiHubInstance': apiHubInstance!,
  };
}

/// The ListRuntimeProjectAttachments method's response.
class GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse {
  /// Runtime project attachment for a project if exists, empty otherwise.
  GoogleCloudApihubV1RuntimeProjectAttachment? runtimeProjectAttachment;

  GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse({
    this.runtimeProjectAttachment,
  });

  GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse.fromJson(
    core.Map json_,
  ) : this(
        runtimeProjectAttachment:
            json_.containsKey('runtimeProjectAttachment')
                ? GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
                  json_['runtimeProjectAttachment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (runtimeProjectAttachment != null)
      'runtimeProjectAttachment': runtimeProjectAttachment!,
  };
}

/// MatchResult represents the result of matching a discovered API operation
/// with a catalog API operation.
class GoogleCloudApihubV1MatchResult {
  /// The name of the matched API Operation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  ///
  /// Output only.
  core.String? name;

  GoogleCloudApihubV1MatchResult({this.name});

  GoogleCloudApihubV1MatchResult.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// The config variable value of data type multi int.
class GoogleCloudApihubV1MultiIntValues {
  /// The config variable value of data type multi int.
  ///
  /// Optional.
  core.List<core.int>? values;

  GoogleCloudApihubV1MultiIntValues({this.values});

  GoogleCloudApihubV1MultiIntValues.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// The config variable value of data type multi select.
class GoogleCloudApihubV1MultiSelectValues {
  /// The config variable value of data type multi select.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1ConfigValueOption>? values;

  GoogleCloudApihubV1MultiSelectValues({this.values});

  GoogleCloudApihubV1MultiSelectValues.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1ConfigValueOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// The config variable value of data type multi string.
class GoogleCloudApihubV1MultiStringValues {
  /// The config variable value of data type multi string.
  ///
  /// Optional.
  core.List<core.String>? values;

  GoogleCloudApihubV1MultiStringValues({this.values});

  GoogleCloudApihubV1MultiStringValues.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// Parameters to support Oauth 2.0 client credentials grant authentication.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class GoogleCloudApihubV1Oauth2ClientCredentialsConfig {
  /// The client identifier.
  ///
  /// Required.
  core.String? clientId;

  /// Secret version reference containing the client secret.
  ///
  /// The `secretmanager.versions.access` permission should be granted to the
  /// service account accessing the secret.
  ///
  /// Required.
  GoogleCloudApihubV1Secret? clientSecret;

  GoogleCloudApihubV1Oauth2ClientCredentialsConfig({
    this.clientId,
    this.clientSecret,
  });

  GoogleCloudApihubV1Oauth2ClientCredentialsConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? GoogleCloudApihubV1Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
  };
}

/// OpenApiSpecDetails contains the details parsed from an OpenAPI spec in
/// addition to the fields mentioned in SpecDetails.
class GoogleCloudApihubV1OpenApiSpecDetails {
  /// The format of the spec.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : SpecFile type unspecified.
  /// - "OPEN_API_SPEC_2_0" : OpenAPI Spec v2.0.
  /// - "OPEN_API_SPEC_3_0" : OpenAPI Spec v3.0.
  /// - "OPEN_API_SPEC_3_1" : OpenAPI Spec v3.1.
  core.String? format;

  /// Owner details for the spec.
  ///
  /// This maps to `info.contact` in OpenAPI spec.
  ///
  /// Output only.
  GoogleCloudApihubV1Owner? owner;

  /// The version in the spec.
  ///
  /// This maps to `info.version` in OpenAPI spec.
  ///
  /// Output only.
  core.String? version;

  GoogleCloudApihubV1OpenApiSpecDetails({
    this.format,
    this.owner,
    this.version,
  });

  GoogleCloudApihubV1OpenApiSpecDetails.fromJson(core.Map json_)
    : this(
        format: json_['format'] as core.String?,
        owner:
            json_.containsKey('owner')
                ? GoogleCloudApihubV1Owner.fromJson(
                  json_['owner'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (format != null) 'format': format!,
    if (owner != null) 'owner': owner!,
    if (version != null) 'version': version!,
  };
}

/// The operation details parsed from the spec.
class GoogleCloudApihubV1OperationDetails {
  /// For OpenAPI spec, this will be set if `operation.deprecated`is marked as
  /// `true` in the spec.
  ///
  /// Optional.
  core.bool? deprecated;

  /// Description of the operation behavior.
  ///
  /// For OpenAPI spec, this will map to `operation.description` in the spec, in
  /// case description is empty, `operation.summary` will be used.
  ///
  /// Optional.
  core.String? description;

  /// Additional external documentation for this operation.
  ///
  /// For OpenAPI spec, this will map to `operation.documentation` in the spec.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// The HTTP Operation.
  GoogleCloudApihubV1HttpOperation? httpOperation;

  GoogleCloudApihubV1OperationDetails({
    this.deprecated,
    this.description,
    this.documentation,
    this.httpOperation,
  });

  GoogleCloudApihubV1OperationDetails.fromJson(core.Map json_)
    : this(
        deprecated: json_['deprecated'] as core.bool?,
        description: json_['description'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpOperation:
            json_.containsKey('httpOperation')
                ? GoogleCloudApihubV1HttpOperation.fromJson(
                  json_['httpOperation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deprecated != null) 'deprecated': deprecated!,
    if (description != null) 'description': description!,
    if (documentation != null) 'documentation': documentation!,
    if (httpOperation != null) 'httpOperation': httpOperation!,
  };
}

/// Owner details.
class GoogleCloudApihubV1Owner {
  /// The name of the owner.
  ///
  /// Optional.
  core.String? displayName;

  /// The email of the owner.
  ///
  /// Required.
  core.String? email;

  GoogleCloudApihubV1Owner({this.displayName, this.email});

  GoogleCloudApihubV1Owner.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (email != null) 'email': email!,
  };
}

/// The path details derived from the spec.
class GoogleCloudApihubV1Path {
  /// A short description for the path applicable to all operations.
  ///
  /// Optional.
  core.String? description;

  /// Complete path relative to server endpoint.
  ///
  /// Note: Even though this field is optional, it is required for
  /// CreateApiOperation API and we will fail the request if not provided.
  ///
  /// Optional.
  core.String? path;

  GoogleCloudApihubV1Path({this.description, this.path});

  GoogleCloudApihubV1Path.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (path != null) 'path': path!,
  };
}

/// HTTP Path parameter.
class GoogleCloudApihubV1PathParam {
  /// Data type of path param
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type
  /// - "BOOL" : Boolean data type
  /// - "INTEGER" : Integer data type
  /// - "FLOAT" : Float data type
  /// - "STRING" : String data type
  /// - "UUID" : UUID data type
  core.String? dataType;

  /// Segment location in the path, 1-indexed
  ///
  /// Optional.
  core.int? position;

  GoogleCloudApihubV1PathParam({this.dataType, this.position});

  GoogleCloudApihubV1PathParam.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        position: json_['position'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (position != null) 'position': position!,
  };
}

/// A plugin resource in the API Hub.
class GoogleCloudApihubV1Plugin {
  /// The configuration of actions supported by the plugin.
  ///
  /// Required.
  core.List<GoogleCloudApihubV1PluginActionConfig>? actionsConfig;

  /// The configuration template for the plugin.
  ///
  /// Optional.
  GoogleCloudApihubV1ConfigTemplate? configTemplate;

  /// Timestamp indicating when the plugin was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The plugin description.
  ///
  /// Max length is 2000 characters (Unicode code points).
  ///
  /// Optional.
  core.String? description;

  /// The display name of the plugin.
  ///
  /// Max length is 50 characters (Unicode code points).
  ///
  /// Required.
  core.String? displayName;

  /// The documentation of the plugin, that explains how to set up and use the
  /// plugin.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// The type of the gateway.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GATEWAY_TYPE_UNSPECIFIED" : The gateway type is not specified.
  /// - "APIGEE_X_AND_HYBRID" : The gateway type is Apigee X and Hybrid.
  /// - "APIGEE_EDGE_PUBLIC_CLOUD" : The gateway type is Apigee Edge Public
  /// Cloud.
  /// - "APIGEE_EDGE_PRIVATE_CLOUD" : The gateway type is Apigee Edge Private
  /// Cloud.
  /// - "CLOUD_API_GATEWAY" : The gateway type is Cloud API Gateway.
  /// - "CLOUD_ENDPOINTS" : The gateway type is Cloud Endpoints.
  /// - "API_DISCOVERY" : The gateway type is API Discovery.
  /// - "OTHERS" : The gateway type for any other types of gateways.
  core.String? gatewayType;

  /// This field is optional.
  ///
  /// It is used to notify the plugin hosting service for any lifecycle changes
  /// of the plugin instance and trigger execution of plugin instance actions in
  /// case of API hub managed actions. This field should be provided if the
  /// plugin instance lifecycle of the developed plugin needs to be managed from
  /// API hub. Also, in this case the plugin hosting service interface needs to
  /// be implemented. This field should not be provided if the plugin wants to
  /// manage plugin instance lifecycle events outside of hub interface and use
  /// plugin framework for only registering of plugin and plugin instances to
  /// capture the source of data into hub. Note, in this case the plugin hosting
  /// service interface is not required to be implemented. Also, the plugin
  /// instance lifecycle actions will be disabled from API hub's UI.
  ///
  /// Optional.
  GoogleCloudApihubV1HostingService? hostingService;

  /// Identifier.
  ///
  /// The name of the plugin. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}`
  core.String? name;

  /// The type of the plugin, indicating whether it is 'SYSTEM_OWNED' or
  /// 'USER_OWNED'.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OWNERSHIP_TYPE_UNSPECIFIED" : Default unspecified type.
  /// - "SYSTEM_OWNED" : System owned plugins are defined by API hub and are
  /// available out of the box in API hub.
  /// - "USER_OWNED" : User owned plugins are defined by the user and need to be
  /// explicitly added to API hub via CreatePlugin method.
  core.String? ownershipType;

  /// The category of the plugin, identifying its primary category or purpose.
  ///
  /// This field is required for all plugins.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PLUGIN_CATEGORY_UNSPECIFIED" : Default unspecified plugin type.
  /// - "API_GATEWAY" : API_GATEWAY plugins represent plugins built for API
  /// Gateways like Apigee.
  /// - "API_PRODUCER" : API_PRODUCER plugins represent plugins built for API
  /// Producers like Cloud Run, Application Integration etc.
  core.String? pluginCategory;

  /// Represents the state of the plugin.
  ///
  /// Note this field will not be set for plugins developed via plugin framework
  /// as the state will be managed at plugin instance level.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ENABLED" : The plugin is enabled.
  /// - "DISABLED" : The plugin is disabled.
  core.String? state;

  /// The type of the API.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-plugin-type`
  /// attribute. The number of allowed values for this attribute will be based
  /// on the cardinality of the attribute. The same can be retrieved via
  /// GetAttribute API. All values should be from the list of allowed values
  /// defined for the attribute. Note this field is not required for plugins
  /// developed via plugin framework.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? type;

  /// Timestamp indicating when the plugin was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Plugin({
    this.actionsConfig,
    this.configTemplate,
    this.createTime,
    this.description,
    this.displayName,
    this.documentation,
    this.gatewayType,
    this.hostingService,
    this.name,
    this.ownershipType,
    this.pluginCategory,
    this.state,
    this.type,
    this.updateTime,
  });

  GoogleCloudApihubV1Plugin.fromJson(core.Map json_)
    : this(
        actionsConfig:
            (json_['actionsConfig'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1PluginActionConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        configTemplate:
            json_.containsKey('configTemplate')
                ? GoogleCloudApihubV1ConfigTemplate.fromJson(
                  json_['configTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gatewayType: json_['gatewayType'] as core.String?,
        hostingService:
            json_.containsKey('hostingService')
                ? GoogleCloudApihubV1HostingService.fromJson(
                  json_['hostingService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        ownershipType: json_['ownershipType'] as core.String?,
        pluginCategory: json_['pluginCategory'] as core.String?,
        state: json_['state'] as core.String?,
        type:
            json_.containsKey('type')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionsConfig != null) 'actionsConfig': actionsConfig!,
    if (configTemplate != null) 'configTemplate': configTemplate!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (gatewayType != null) 'gatewayType': gatewayType!,
    if (hostingService != null) 'hostingService': hostingService!,
    if (name != null) 'name': name!,
    if (ownershipType != null) 'ownershipType': ownershipType!,
    if (pluginCategory != null) 'pluginCategory': pluginCategory!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// PluginActionConfig represents the configuration of an action supported by a
/// plugin.
class GoogleCloudApihubV1PluginActionConfig {
  /// The description of the operation performed by the action.
  ///
  /// Required.
  core.String? description;

  /// The display name of the action.
  ///
  /// Required.
  core.String? displayName;

  /// The id of the action.
  ///
  /// Required.
  core.String? id;

  /// The trigger mode supported by the action.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRIGGER_MODE_UNSPECIFIED" : Default unspecified mode.
  /// - "API_HUB_ON_DEMAND_TRIGGER" : This action can be executed by invoking
  /// ExecutePluginInstanceAction API with the given action id. To support this,
  /// the plugin hosting service should handle this action id as part of execute
  /// call.
  /// - "API_HUB_SCHEDULE_TRIGGER" : This action will be executed on schedule by
  /// invoking ExecutePluginInstanceAction API with the given action id. To set
  /// the schedule, the user can provide the cron expression in the PluginAction
  /// field for a given plugin instance. To support this, the plugin hosting
  /// service should handle this action id as part of execute call. Note, on
  /// demand execution will be supported by default in this trigger mode.
  /// - "NON_API_HUB_MANAGED" : The execution of this plugin is not handled by
  /// API hub. In this case, the plugin hosting service need not handle this
  /// action id as part of the execute call.
  core.String? triggerMode;

  GoogleCloudApihubV1PluginActionConfig({
    this.description,
    this.displayName,
    this.id,
    this.triggerMode,
  });

  GoogleCloudApihubV1PluginActionConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        triggerMode: json_['triggerMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (id != null) 'id': id!,
    if (triggerMode != null) 'triggerMode': triggerMode!,
  };
}

/// Represents a plugin instance resource in the API Hub.
///
/// A PluginInstance is a specific instance of a hub plugin with its own
/// configuration, state, and execution details.
class GoogleCloudApihubV1PluginInstance {
  /// The action status for the plugin instance.
  ///
  /// Required.
  core.List<GoogleCloudApihubV1PluginInstanceAction>? actions;

  /// The additional information for this plugin instance corresponding to the
  /// additional config template of the plugin.
  ///
  /// This information will be sent to plugin hosting service on each call to
  /// plugin hosted service. The key will be the
  /// config_variable_template.display_name to uniquely identify the config
  /// variable.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1ConfigVariable>? additionalConfig;

  /// The authentication information for this plugin instance.
  ///
  /// Optional.
  GoogleCloudApihubV1AuthConfig? authConfig;

  /// Timestamp indicating when the plugin instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for this plugin instance.
  ///
  /// Max length is 255 characters.
  ///
  /// Required.
  core.String? displayName;

  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  ///
  /// Output only.
  core.String? errorMessage;

  /// Identifier.
  ///
  /// The unique name of the plugin instance resource. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  core.String? name;

  /// The source project id of the plugin instance.
  ///
  /// This will be the id of runtime project in case of gcp based plugins and
  /// org id in case of non gcp based plugins. This field will be a required
  /// field for Google provided on-ramp plugins.
  ///
  /// Optional.
  core.String? sourceProjectId;

  /// The current state of the plugin instance (e.g., enabled, disabled,
  /// provisioning).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified state.
  /// - "CREATING" : The plugin instance is being created.
  /// - "ACTIVE" : The plugin instance is active and ready for executions. This
  /// is the only state where executions can run on the plugin instance.
  /// - "APPLYING_CONFIG" : The updated config that contains additional_config
  /// and auth_config is being applied.
  /// - "ERROR" : The ERROR state can come while applying config. Users can
  /// retrigger ApplyPluginInstanceConfig to restore the plugin instance back to
  /// active state. Note, In case the ERROR state happens while applying config
  /// (auth_config, additional_config), the plugin instance will reflect the
  /// config which was trying to be applied while error happened. In order to
  /// overwrite, trigger ApplyConfig with a new config.
  /// - "FAILED" : The plugin instance is in a failed state. This indicates that
  /// an unrecoverable error occurred during a previous operation (Create,
  /// Delete).
  /// - "DELETING" : The plugin instance is being deleted. Delete is only
  /// possible if there is no other operation running on the plugin instance and
  /// plugin instance action.
  core.String? state;

  /// Timestamp indicating when the plugin instance was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1PluginInstance({
    this.actions,
    this.additionalConfig,
    this.authConfig,
    this.createTime,
    this.displayName,
    this.errorMessage,
    this.name,
    this.sourceProjectId,
    this.state,
    this.updateTime,
  });

  GoogleCloudApihubV1PluginInstance.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1PluginInstanceAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        additionalConfig: (json_['additionalConfig']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1ConfigVariable.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        authConfig:
            json_.containsKey('authConfig')
                ? GoogleCloudApihubV1AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        name: json_['name'] as core.String?,
        sourceProjectId: json_['sourceProjectId'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (additionalConfig != null) 'additionalConfig': additionalConfig!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (name != null) 'name': name!,
    if (sourceProjectId != null) 'sourceProjectId': sourceProjectId!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// PluginInstanceAction represents an action which can be executed in the
/// plugin instance.
class GoogleCloudApihubV1PluginInstanceAction {
  /// This should map to one of the action id specified in actions_config in the
  /// plugin.
  ///
  /// Required.
  core.String? actionId;

  /// This configuration should be provided if the plugin action is publishing
  /// data to API hub curate layer.
  ///
  /// Optional.
  GoogleCloudApihubV1CurationConfig? curationConfig;

  /// The execution information for the plugin instance action done
  /// corresponding to an API hub instance.
  ///
  /// Optional.
  GoogleCloudApihubV1ExecutionStatus? hubInstanceAction;

  /// The configuration of resources created for a given plugin instance action.
  ///
  /// Note these will be returned only in case of Non-GCP plugins like OPDK.
  ///
  /// Output only.
  GoogleCloudApihubV1ResourceConfig? resourceConfig;

  /// The schedule for this plugin instance action.
  ///
  /// This can only be set if the plugin supports API_HUB_SCHEDULE_TRIGGER mode
  /// for this action.
  ///
  /// Optional.
  core.String? scheduleCronExpression;

  /// The time zone for the schedule cron expression.
  ///
  /// If not provided, UTC will be used.
  ///
  /// Optional.
  core.String? scheduleTimeZone;

  /// The service account used to publish data.
  ///
  /// Note, the service account will only be accepted for non GCP plugins like
  /// OPDK.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The current state of the plugin action in the plugin instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified state.
  /// - "ENABLED" : The action is enabled in the plugin instance i.e.,
  /// executions can be triggered for this action.
  /// - "DISABLED" : The action is disabled in the plugin instance i.e., no
  /// executions can be triggered for this action. This state indicates that the
  /// user explicitly disabled the instance, and no further action is needed
  /// unless the user wants to re-enable it.
  /// - "ENABLING" : The action in the plugin instance is being enabled.
  /// - "DISABLING" : The action in the plugin instance is being disabled.
  /// - "ERROR" : The ERROR state can come while enabling/disabling plugin
  /// instance action. Users can retrigger enable, disable via
  /// EnablePluginInstanceAction and DisablePluginInstanceAction to restore the
  /// action back to enabled/disabled state. Note enable/disable on actions can
  /// only be triggered if plugin instance is in Active state.
  core.String? state;

  GoogleCloudApihubV1PluginInstanceAction({
    this.actionId,
    this.curationConfig,
    this.hubInstanceAction,
    this.resourceConfig,
    this.scheduleCronExpression,
    this.scheduleTimeZone,
    this.serviceAccount,
    this.state,
  });

  GoogleCloudApihubV1PluginInstanceAction.fromJson(core.Map json_)
    : this(
        actionId: json_['actionId'] as core.String?,
        curationConfig:
            json_.containsKey('curationConfig')
                ? GoogleCloudApihubV1CurationConfig.fromJson(
                  json_['curationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        hubInstanceAction:
            json_.containsKey('hubInstanceAction')
                ? GoogleCloudApihubV1ExecutionStatus.fromJson(
                  json_['hubInstanceAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceConfig:
            json_.containsKey('resourceConfig')
                ? GoogleCloudApihubV1ResourceConfig.fromJson(
                  json_['resourceConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        scheduleCronExpression: json_['scheduleCronExpression'] as core.String?,
        scheduleTimeZone: json_['scheduleTimeZone'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
    if (curationConfig != null) 'curationConfig': curationConfig!,
    if (hubInstanceAction != null) 'hubInstanceAction': hubInstanceAction!,
    if (resourceConfig != null) 'resourceConfig': resourceConfig!,
    if (scheduleCronExpression != null)
      'scheduleCronExpression': scheduleCronExpression!,
    if (scheduleTimeZone != null) 'scheduleTimeZone': scheduleTimeZone!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (state != null) 'state': state!,
  };
}

/// The plugin instance and associated action that is using the curation.
class GoogleCloudApihubV1PluginInstanceActionID {
  /// The action ID that is using the curation.
  ///
  /// This should map to one of the action IDs specified in action configs in
  /// the plugin.
  ///
  /// Output only.
  core.String? actionId;

  /// Plugin instance that is using the curation.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  ///
  /// Output only.
  core.String? pluginInstance;

  GoogleCloudApihubV1PluginInstanceActionID({
    this.actionId,
    this.pluginInstance,
  });

  GoogleCloudApihubV1PluginInstanceActionID.fromJson(core.Map json_)
    : this(
        actionId: json_['actionId'] as core.String?,
        pluginInstance: json_['pluginInstance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
    if (pluginInstance != null) 'pluginInstance': pluginInstance!,
  };
}

/// PluginInstanceActionSource represents the plugin instance action source.
class GoogleCloudApihubV1PluginInstanceActionSource {
  /// The id of the plugin instance action.
  ///
  /// Output only.
  core.String? actionId;

  /// The resource name of the source plugin instance.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  ///
  /// Output only.
  core.String? pluginInstance;

  GoogleCloudApihubV1PluginInstanceActionSource({
    this.actionId,
    this.pluginInstance,
  });

  GoogleCloudApihubV1PluginInstanceActionSource.fromJson(core.Map json_)
    : this(
        actionId: json_['actionId'] as core.String?,
        pluginInstance: json_['pluginInstance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionId != null) 'actionId': actionId!,
    if (pluginInstance != null) 'pluginInstance': pluginInstance!,
  };
}

/// Point within the file (line and character).
class GoogleCloudApihubV1Point {
  /// Character position within the line (zero-indexed).
  ///
  /// Required.
  core.int? character;

  /// Line number (zero-indexed).
  ///
  /// Required.
  core.int? line;

  GoogleCloudApihubV1Point({this.character, this.line});

  GoogleCloudApihubV1Point.fromJson(core.Map json_)
    : this(
        character: json_['character'] as core.int?,
        line: json_['line'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (character != null) 'character': character!,
    if (line != null) 'line': line!,
  };
}

/// An aggregation of HTTP query parameter occurrences.
class GoogleCloudApihubV1QueryParam {
  /// The number of occurrences of this query parameter across transactions.
  ///
  /// Optional.
  core.String? count;

  /// Data type of path param
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type
  /// - "BOOL" : Boolean data type
  /// - "INTEGER" : Integer data type
  /// - "FLOAT" : Float data type
  /// - "STRING" : String data type
  /// - "UUID" : UUID data type
  core.String? dataType;

  /// Name of query param
  ///
  /// Required.
  core.String? name;

  GoogleCloudApihubV1QueryParam({this.count, this.dataType, this.name});

  GoogleCloudApihubV1QueryParam.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        dataType: json_['dataType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (dataType != null) 'dataType': dataType!,
    if (name != null) 'name': name!,
  };
}

/// Object describing where in the file the issue was found.
class GoogleCloudApihubV1Range {
  /// End of the issue.
  ///
  /// Required.
  GoogleCloudApihubV1Point? end;

  /// Start of the issue.
  ///
  /// Required.
  GoogleCloudApihubV1Point? start;

  GoogleCloudApihubV1Range({this.end, this.start});

  GoogleCloudApihubV1Range.fromJson(core.Map json_)
    : this(
        end:
            json_.containsKey('end')
                ? GoogleCloudApihubV1Point.fromJson(
                  json_['end'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        start:
            json_.containsKey('start')
                ? GoogleCloudApihubV1Point.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (end != null) 'end': end!,
    if (start != null) 'start': start!,
  };
}

/// The configuration of resources created for a given plugin instance action.
class GoogleCloudApihubV1ResourceConfig {
  /// The type of the action.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Default unspecified action type.
  /// - "SYNC_METADATA" : Action type for sync metadata.
  /// - "SYNC_RUNTIME_DATA" : Action type for sync runtime data.
  core.String? actionType;

  /// The pubsub topic to publish the data to.
  ///
  /// Format is projects/{project}/topics/{topic}
  ///
  /// Output only.
  core.String? pubsubTopic;

  GoogleCloudApihubV1ResourceConfig({this.actionType, this.pubsubTopic});

  GoogleCloudApihubV1ResourceConfig.fromJson(core.Map json_)
    : this(
        actionType: json_['actionType'] as core.String?,
        pubsubTopic: json_['pubsubTopic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionType != null) 'actionType': actionType!,
    if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
  };
}

/// Runtime project attachment represents an attachment from the runtime project
/// to the host project.
///
/// Api Hub looks for deployments in the attached runtime projects and creates
/// corresponding resources in Api Hub for the discovered deployments.
class GoogleCloudApihubV1RuntimeProjectAttachment {
  /// Create time.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The resource name of a runtime project attachment. Format:
  /// "projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment}".
  core.String? name;

  /// Google cloud project name in the format: "projects/abc" or "projects/123".
  ///
  /// As input, project name with either project id or number are accepted. As
  /// output, this field will contain project number.
  ///
  /// Required. Immutable.
  core.String? runtimeProject;

  GoogleCloudApihubV1RuntimeProjectAttachment({
    this.createTime,
    this.name,
    this.runtimeProject,
  });

  GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        runtimeProject: json_['runtimeProject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (runtimeProject != null) 'runtimeProject': runtimeProject!,
  };
}

/// The schema details derived from the spec.
///
/// Currently, this entity is supported for OpenAPI spec only. For OpenAPI spec,
/// this maps to the schema defined in the `definitions` section for OpenAPI 2.0
/// version and in `components.schemas` section for OpenAPI 3.0 and 3.1 version.
class GoogleCloudApihubV1Schema {
  /// The display name of the schema.
  ///
  /// This will map to the name of the schema in the spec.
  ///
  /// Output only.
  core.String? displayName;

  /// The raw value of the schema definition corresponding to the schema name in
  /// the spec.
  ///
  /// Output only.
  core.String? rawValue;
  core.List<core.int> get rawValueAsBytes => convert.base64.decode(rawValue!);

  set rawValueAsBytes(core.List<core.int> bytes_) {
    rawValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GoogleCloudApihubV1Schema({this.displayName, this.rawValue});

  GoogleCloudApihubV1Schema.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        rawValue: json_['rawValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (rawValue != null) 'rawValue': rawValue!,
  };
}

/// The SearchResources method's request.
class GoogleCloudApihubV1SearchResourcesRequest {
  /// An expression that filters the list of search results.
  ///
  /// A filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string, a number, or a boolean.
  /// The comparison operator must be `=`. Filters are not case sensitive. The
  /// following field names are eligible for filtering: * `resource_type` - The
  /// type of resource in the search results. Must be one of the following:
  /// `Api`, `ApiOperation`, `Deployment`, `Definition`, `Spec` or `Version`.
  /// This field can only be specified once in the filter. Here are is an
  /// example: * `resource_type = Api` - The resource_type is _Api_.
  ///
  /// Optional.
  core.String? filter;

  /// The maximum number of search results to return.
  ///
  /// The service may return fewer than this value. If unspecified at most 10
  /// search results will be returned. If value is negative then
  /// `INVALID_ARGUMENT` error is returned. The maximum value is 25; values
  /// above 25 will be coerced to 25. While paginating, you can specify a new
  /// page size parameter for each page of search results to be listed.
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous SearchResources call.
  ///
  /// Specify this parameter to retrieve the next page of transactions. When
  /// paginating, you must specify the `page_token` parameter and all the other
  /// parameters except page_size should be specified with the same value which
  /// was used in the previous call. If the other fields are set with a
  /// different value than the previous call then `INVALID_ARGUMENT` error is
  /// returned.
  ///
  /// Optional.
  core.String? pageToken;

  /// The free text search query.
  ///
  /// This query can contain keywords which could be related to any detail of
  /// the API-Hub resources such display names, descriptions, attributes etc.
  ///
  /// Required.
  core.String? query;

  GoogleCloudApihubV1SearchResourcesRequest({
    this.filter,
    this.pageSize,
    this.pageToken,
    this.query,
  });

  GoogleCloudApihubV1SearchResourcesRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        query: json_['query'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (query != null) 'query': query!,
  };
}

/// Response for the SearchResources method.
class GoogleCloudApihubV1SearchResourcesResponse {
  /// Pass this token in the SearchResourcesRequest to continue to list results.
  ///
  /// If all results have been returned, this field is an empty string or not
  /// present in the response.
  core.String? nextPageToken;

  /// List of search results according to the filter and search query specified.
  ///
  /// The order of search results represents the ranking.
  core.List<GoogleCloudApihubV1SearchResult>? searchResults;

  GoogleCloudApihubV1SearchResourcesResponse({
    this.nextPageToken,
    this.searchResults,
  });

  GoogleCloudApihubV1SearchResourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        searchResults:
            (json_['searchResults'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SearchResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (searchResults != null) 'searchResults': searchResults!,
  };
}

/// Represents the search results.
class GoogleCloudApihubV1SearchResult {
  /// This represents the ApiHubResource.
  ///
  /// Note: Only selected fields of the resources are populated in response.
  GoogleCloudApihubV1ApiHubResource? resource;

  GoogleCloudApihubV1SearchResult({this.resource});

  GoogleCloudApihubV1SearchResult.fromJson(core.Map json_)
    : this(
        resource:
            json_.containsKey('resource')
                ? GoogleCloudApihubV1ApiHubResource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resource != null) 'resource': resource!,
  };
}

/// Secret provides a reference to entries in Secret Manager.
class GoogleCloudApihubV1Secret {
  /// The resource name of the secret version in the format, format as:
  /// `projects / * /secrets / * /versions / * `.
  ///
  /// Required.
  core.String? secretVersion;

  GoogleCloudApihubV1Secret({this.secretVersion});

  GoogleCloudApihubV1Secret.fromJson(core.Map json_)
    : this(secretVersion: json_['secretVersion'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (secretVersion != null) 'secretVersion': secretVersion!,
  };
}

/// SourceMetadata represents the metadata for a resource at the source.
class GoogleCloudApihubV1SourceMetadata {
  /// The time at which the resource was created at the source.
  ///
  /// Output only.
  core.String? originalResourceCreateTime;

  /// The unique identifier of the resource at the source.
  ///
  /// Output only.
  core.String? originalResourceId;

  /// The time at which the resource was last updated at the source.
  ///
  /// Output only.
  core.String? originalResourceUpdateTime;

  /// The source of the resource is a plugin instance action.
  ///
  /// Output only.
  GoogleCloudApihubV1PluginInstanceActionSource? pluginInstanceActionSource;

  /// The type of the source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Source type not specified.
  /// - "PLUGIN" : Source type plugin.
  core.String? sourceType;

  GoogleCloudApihubV1SourceMetadata({
    this.originalResourceCreateTime,
    this.originalResourceId,
    this.originalResourceUpdateTime,
    this.pluginInstanceActionSource,
    this.sourceType,
  });

  GoogleCloudApihubV1SourceMetadata.fromJson(core.Map json_)
    : this(
        originalResourceCreateTime:
            json_['originalResourceCreateTime'] as core.String?,
        originalResourceId: json_['originalResourceId'] as core.String?,
        originalResourceUpdateTime:
            json_['originalResourceUpdateTime'] as core.String?,
        pluginInstanceActionSource:
            json_.containsKey('pluginInstanceActionSource')
                ? GoogleCloudApihubV1PluginInstanceActionSource.fromJson(
                  json_['pluginInstanceActionSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceType: json_['sourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (originalResourceCreateTime != null)
      'originalResourceCreateTime': originalResourceCreateTime!,
    if (originalResourceId != null) 'originalResourceId': originalResourceId!,
    if (originalResourceUpdateTime != null)
      'originalResourceUpdateTime': originalResourceUpdateTime!,
    if (pluginInstanceActionSource != null)
      'pluginInstanceActionSource': pluginInstanceActionSource!,
    if (sourceType != null) 'sourceType': sourceType!,
  };
}

/// Represents a spec associated with an API version in the API Hub.
///
/// Note that specs of various types can be uploaded, however parsing of details
/// is supported for OpenAPI spec currently.
class GoogleCloudApihubV1Spec {
  /// The list of user defined attributes associated with the spec.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// Input only.
  ///
  /// The contents of the uploaded spec.
  ///
  /// Optional.
  GoogleCloudApihubV1SpecContents? contents;

  /// The time at which the spec was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Details parsed from the spec.
  ///
  /// Output only.
  GoogleCloudApihubV1SpecDetails? details;

  /// The display name of the spec.
  ///
  /// This can contain the file name of the spec.
  ///
  /// Required.
  core.String? displayName;

  /// The documentation of the spec.
  ///
  /// For OpenAPI spec, this will be populated from `externalDocs` in OpenAPI
  /// spec.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// The lint response for the spec.
  ///
  /// Optional.
  GoogleCloudApihubV1LintResponse? lintResponse;

  /// Identifier.
  ///
  /// The name of the spec. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  core.String? name;

  /// Input only.
  ///
  /// Enum specifying the parsing mode for OpenAPI Specification (OAS) parsing.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARSING_MODE_UNSPECIFIED" : Defaults to `RELAXED`.
  /// - "RELAXED" : Parsing of the Spec on create and update is relaxed, meaning
  /// that parsing errors the spec contents will not fail the API call.
  /// - "STRICT" : Parsing of the Spec on create and update is strict, meaning
  /// that parsing errors in the spec contents will fail the API call.
  core.String? parsingMode;

  /// The list of sources and metadata from the sources of the spec.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1SourceMetadata>? sourceMetadata;

  /// The URI of the spec source in case file is uploaded from an external
  /// version control system.
  ///
  /// Optional.
  core.String? sourceUri;

  /// The type of spec.
  ///
  /// The value should be one of the allowed values defined for
  /// `projects/{project}/locations/{location}/attributes/system-spec-type`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. Note, this field is mandatory if content is provided.
  ///
  /// Required.
  GoogleCloudApihubV1AttributeValues? specType;

  /// The time at which the spec was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Spec({
    this.attributes,
    this.contents,
    this.createTime,
    this.details,
    this.displayName,
    this.documentation,
    this.lintResponse,
    this.name,
    this.parsingMode,
    this.sourceMetadata,
    this.sourceUri,
    this.specType,
    this.updateTime,
  });

  GoogleCloudApihubV1Spec.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        contents:
            json_.containsKey('contents')
                ? GoogleCloudApihubV1SpecContents.fromJson(
                  json_['contents'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        details:
            json_.containsKey('details')
                ? GoogleCloudApihubV1SpecDetails.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lintResponse:
            json_.containsKey('lintResponse')
                ? GoogleCloudApihubV1LintResponse.fromJson(
                  json_['lintResponse'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        parsingMode: json_['parsingMode'] as core.String?,
        sourceMetadata:
            (json_['sourceMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sourceUri: json_['sourceUri'] as core.String?,
        specType:
            json_.containsKey('specType')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['specType'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (contents != null) 'contents': contents!,
    if (createTime != null) 'createTime': createTime!,
    if (details != null) 'details': details!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (lintResponse != null) 'lintResponse': lintResponse!,
    if (name != null) 'name': name!,
    if (parsingMode != null) 'parsingMode': parsingMode!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (sourceUri != null) 'sourceUri': sourceUri!,
    if (specType != null) 'specType': specType!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The spec contents.
class GoogleCloudApihubV1SpecContents {
  /// The contents of the spec.
  ///
  /// Required.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> bytes_) {
    contents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The mime type of the content for example application/json,
  /// application/yaml, application/wsdl etc.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudApihubV1SpecContents({this.contents, this.mimeType});

  GoogleCloudApihubV1SpecContents.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// SpecDetails contains the details parsed from supported spec types.
class GoogleCloudApihubV1SpecDetails {
  /// The description of the spec.
  ///
  /// Output only.
  core.String? description;

  /// Additional details apart from `OperationDetails` parsed from an OpenAPI
  /// spec.
  ///
  /// The OperationDetails parsed from the spec can be obtained by using
  /// ListAPIOperations method.
  ///
  /// Output only.
  GoogleCloudApihubV1OpenApiSpecDetails? openApiSpecDetails;

  GoogleCloudApihubV1SpecDetails({this.description, this.openApiSpecDetails});

  GoogleCloudApihubV1SpecDetails.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        openApiSpecDetails:
            json_.containsKey('openApiSpecDetails')
                ? GoogleCloudApihubV1OpenApiSpecDetails.fromJson(
                  json_['openApiSpecDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (openApiSpecDetails != null) 'openApiSpecDetails': openApiSpecDetails!,
  };
}

/// The metadata associated with a spec of the API version.
class GoogleCloudApihubV1SpecMetadata {
  /// Timestamp indicating when the spec was created at the source.
  ///
  /// Optional.
  core.String? originalCreateTime;

  /// The unique identifier of the spec in the system where it was originally
  /// created.
  ///
  /// Optional.
  core.String? originalId;

  /// Timestamp indicating when the spec was last updated at the source.
  ///
  /// Required.
  core.String? originalUpdateTime;

  /// The spec resource to be pushed to Hub's collect layer.
  ///
  /// The ID of the spec will be generated by Hub.
  ///
  /// Required.
  GoogleCloudApihubV1Spec? spec;

  GoogleCloudApihubV1SpecMetadata({
    this.originalCreateTime,
    this.originalId,
    this.originalUpdateTime,
    this.spec,
  });

  GoogleCloudApihubV1SpecMetadata.fromJson(core.Map json_)
    : this(
        originalCreateTime: json_['originalCreateTime'] as core.String?,
        originalId: json_['originalId'] as core.String?,
        originalUpdateTime: json_['originalUpdateTime'] as core.String?,
        spec:
            json_.containsKey('spec')
                ? GoogleCloudApihubV1Spec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (originalCreateTime != null) 'originalCreateTime': originalCreateTime!,
    if (originalId != null) 'originalId': originalId!,
    if (originalUpdateTime != null) 'originalUpdateTime': originalUpdateTime!,
    if (spec != null) 'spec': spec!,
  };
}

/// The attribute values of data type string or JSON.
class GoogleCloudApihubV1StringAttributeValues {
  /// The attribute values in case attribute data type is string or JSON.
  ///
  /// Required.
  core.List<core.String>? values;

  GoogleCloudApihubV1StringAttributeValues({this.values});

  GoogleCloudApihubV1StringAttributeValues.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// Represents a singleton style guide resource to be used for linting Open API
/// specs.
class GoogleCloudApihubV1StyleGuide {
  /// Input only.
  ///
  /// The contents of the uploaded style guide.
  ///
  /// Required.
  GoogleCloudApihubV1StyleGuideContents? contents;

  /// Target linter for the style guide.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINTER_UNSPECIFIED" : Linter type unspecified.
  /// - "SPECTRAL" : Linter type spectral.
  /// - "OTHER" : Linter type other.
  core.String? linter;

  /// Identifier.
  ///
  /// The name of the style guide. Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/styleGuide`
  core.String? name;

  GoogleCloudApihubV1StyleGuide({this.contents, this.linter, this.name});

  GoogleCloudApihubV1StyleGuide.fromJson(core.Map json_)
    : this(
        contents:
            json_.containsKey('contents')
                ? GoogleCloudApihubV1StyleGuideContents.fromJson(
                  json_['contents'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        linter: json_['linter'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (linter != null) 'linter': linter!,
    if (name != null) 'name': name!,
  };
}

/// The style guide contents.
class GoogleCloudApihubV1StyleGuideContents {
  /// The contents of the style guide.
  ///
  /// Required.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> bytes_) {
    contents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The mime type of the content.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudApihubV1StyleGuideContents({this.contents, this.mimeType});

  GoogleCloudApihubV1StyleGuideContents.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contents != null) 'contents': contents!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Count of issues with a given severity.
class GoogleCloudApihubV1SummaryEntry {
  /// Count of issues with the given severity.
  ///
  /// Required.
  core.int? count;

  /// Severity of the issue.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity unspecified.
  /// - "SEVERITY_ERROR" : Severity error.
  /// - "SEVERITY_WARNING" : Severity warning.
  /// - "SEVERITY_INFO" : Severity info.
  /// - "SEVERITY_HINT" : Severity hint.
  core.String? severity;

  GoogleCloudApihubV1SummaryEntry({this.count, this.severity});

  GoogleCloudApihubV1SummaryEntry.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (severity != null) 'severity': severity!,
  };
}

/// Parameters to support Username and Password Authentication.
class GoogleCloudApihubV1UserPasswordConfig {
  /// Secret version reference containing the password.
  ///
  /// The `secretmanager.versions.access` permission should be granted to the
  /// service account accessing the secret.
  ///
  /// Required.
  GoogleCloudApihubV1Secret? password;

  /// Username.
  ///
  /// Required.
  core.String? username;

  GoogleCloudApihubV1UserPasswordConfig({this.password, this.username});

  GoogleCloudApihubV1UserPasswordConfig.fromJson(core.Map json_)
    : this(
        password:
            json_.containsKey('password')
                ? GoogleCloudApihubV1Secret.fromJson(
                  json_['password'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// Represents a version of the API resource in API hub.
///
/// This is also referred to as the API version.
class GoogleCloudApihubV1Version {
  /// The accreditations associated with the API version.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-accreditation`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? accreditation;

  /// The operations contained in the API version.
  ///
  /// These operations will be added to the version when a new spec is added or
  /// when an existing spec is updated. Format is
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
  ///
  /// Output only.
  core.List<core.String>? apiOperations;

  /// The list of user defined attributes associated with the Version resource.
  ///
  /// The key is the attribute name. It will be of the format:
  /// `projects/{project}/locations/{location}/attributes/{attribute}`. The
  /// value is the attribute values associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudApihubV1AttributeValues>? attributes;

  /// The compliance associated with the API version.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-compliance`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? compliance;

  /// The time at which the version was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The definitions contained in the API version.
  ///
  /// These definitions will be added to the version when a new spec is added or
  /// when an existing spec is updated. Format is
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/definitions/{definition}`
  ///
  /// Output only.
  core.List<core.String>? definitions;

  /// The deployments linked to this API version.
  ///
  /// Note: A particular API version could be deployed to multiple deployments
  /// (for dev deployment, UAT deployment, etc) Format is
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  ///
  /// Optional.
  core.List<core.String>? deployments;

  /// The description of the version.
  ///
  /// Optional.
  core.String? description;

  /// The display name of the version.
  ///
  /// Required.
  core.String? displayName;

  /// The documentation of the version.
  ///
  /// Optional.
  GoogleCloudApihubV1Documentation? documentation;

  /// The lifecycle of the API version.
  ///
  /// This maps to the following system defined attribute:
  /// `projects/{project}/locations/{location}/attributes/system-lifecycle`
  /// attribute. The number of values for this attribute will be based on the
  /// cardinality of the attribute. The same can be retrieved via GetAttribute
  /// API. All values should be from the list of allowed values defined for the
  /// attribute.
  ///
  /// Optional.
  GoogleCloudApihubV1AttributeValues? lifecycle;

  /// Identifier.
  ///
  /// The name of the version. Format:
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  core.String? name;

  /// The selected deployment for a Version resource.
  ///
  /// This can be used when special handling is needed on client side for a
  /// particular deployment linked to the version. Format is
  /// `projects/{project}/locations/{location}/deployments/{deployment}`
  ///
  /// Optional.
  core.String? selectedDeployment;

  /// The list of sources and metadata from the sources of the version.
  ///
  /// Output only.
  core.List<GoogleCloudApihubV1SourceMetadata>? sourceMetadata;

  /// The specs associated with this version.
  ///
  /// Note that an API version can be associated with multiple specs. Format is
  /// `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
  ///
  /// Output only.
  core.List<core.String>? specs;

  /// The time at which the version was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudApihubV1Version({
    this.accreditation,
    this.apiOperations,
    this.attributes,
    this.compliance,
    this.createTime,
    this.definitions,
    this.deployments,
    this.description,
    this.displayName,
    this.documentation,
    this.lifecycle,
    this.name,
    this.selectedDeployment,
    this.sourceMetadata,
    this.specs,
    this.updateTime,
  });

  GoogleCloudApihubV1Version.fromJson(core.Map json_)
    : this(
        accreditation:
            json_.containsKey('accreditation')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['accreditation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiOperations:
            (json_['apiOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudApihubV1AttributeValues.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        compliance:
            json_.containsKey('compliance')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['compliance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        definitions:
            (json_['definitions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        deployments:
            (json_['deployments'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentation:
            json_.containsKey('documentation')
                ? GoogleCloudApihubV1Documentation.fromJson(
                  json_['documentation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lifecycle:
            json_.containsKey('lifecycle')
                ? GoogleCloudApihubV1AttributeValues.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        selectedDeployment: json_['selectedDeployment'] as core.String?,
        sourceMetadata:
            (json_['sourceMetadata'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SourceMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        specs:
            (json_['specs'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accreditation != null) 'accreditation': accreditation!,
    if (apiOperations != null) 'apiOperations': apiOperations!,
    if (attributes != null) 'attributes': attributes!,
    if (compliance != null) 'compliance': compliance!,
    if (createTime != null) 'createTime': createTime!,
    if (definitions != null) 'definitions': definitions!,
    if (deployments != null) 'deployments': deployments!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentation != null) 'documentation': documentation!,
    if (lifecycle != null) 'lifecycle': lifecycle!,
    if (name != null) 'name': name!,
    if (selectedDeployment != null) 'selectedDeployment': selectedDeployment!,
    if (sourceMetadata != null) 'sourceMetadata': sourceMetadata!,
    if (specs != null) 'specs': specs!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The metadata associated with a version of the API resource.
class GoogleCloudApihubV1VersionMetadata {
  /// The deployments linked to this API version.
  ///
  /// Note: A particular API version could be deployed to multiple deployments
  /// (for dev deployment, UAT deployment, etc.)
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1DeploymentMetadata>? deployments;

  /// Timestamp indicating when the version was created at the source.
  ///
  /// Optional.
  core.String? originalCreateTime;

  /// The unique identifier of the version in the system where it was originally
  /// created.
  ///
  /// Optional.
  core.String? originalId;

  /// Timestamp indicating when the version was last updated at the source.
  ///
  /// Required.
  core.String? originalUpdateTime;

  /// The specs associated with this version.
  ///
  /// Note that an API version can be associated with multiple specs.
  ///
  /// Optional.
  core.List<GoogleCloudApihubV1SpecMetadata>? specs;

  /// Represents a version of the API resource in API hub.
  ///
  /// The ID of the version will be generated by Hub.
  ///
  /// Required.
  GoogleCloudApihubV1Version? version;

  GoogleCloudApihubV1VersionMetadata({
    this.deployments,
    this.originalCreateTime,
    this.originalId,
    this.originalUpdateTime,
    this.specs,
    this.version,
  });

  GoogleCloudApihubV1VersionMetadata.fromJson(core.Map json_)
    : this(
        deployments:
            (json_['deployments'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1DeploymentMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        originalCreateTime: json_['originalCreateTime'] as core.String?,
        originalId: json_['originalId'] as core.String?,
        originalUpdateTime: json_['originalUpdateTime'] as core.String?,
        specs:
            (json_['specs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudApihubV1SpecMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        version:
            json_.containsKey('version')
                ? GoogleCloudApihubV1Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deployments != null) 'deployments': deployments!,
    if (originalCreateTime != null) 'originalCreateTime': originalCreateTime!,
    if (originalId != null) 'originalId': originalId!,
    if (originalUpdateTime != null) 'originalUpdateTime': originalUpdateTime!,
    if (specs != null) 'specs': specs!,
    if (version != null) 'version': version!,
  };
}

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudLocationLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

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

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;
