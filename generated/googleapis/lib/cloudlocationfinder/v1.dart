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

/// Cloud Location Finder API - v1
///
/// For more information, see <https://cloud.google.com/location-finder/docs>
///
/// Create an instance of [CloudLocationFinderApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCloudLocationsResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class CloudLocationFinderApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudLocationFinderApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudlocationfinder.googleapis.com/',
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

  ProjectsLocationsCloudLocationsResource get cloudLocations =>
      ProjectsLocationsCloudLocationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

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
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// This method can be called in two ways: * **List all public locations:**
  /// Use the path `GET /v1/locations`. * **List project-visible locations:**
  /// Use the path `GET /v1/projects/{project_id}/locations`. This may include
  /// public locations as well as private or other locations specifically
  /// visible to the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudLocationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a resource containing information about a cloud location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudLocations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloudLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloudLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CloudLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists cloud locations under a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of cloud
  /// locations. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters resources listed in
  /// the response. The expression is in the form of field=value. For example,
  /// 'cloud_location_type=CLOUD_LOCATION_TYPE_REGION'. Multiple filter queries
  /// are space-separated. For example,
  /// 'cloud_location_type=CLOUD_LOCATION_TYPE_REGION territory_code="US"' By
  /// default, each expression is an AND expression. However, you can include
  /// AND and OR expressions explicitly.
  ///
  /// [pageSize] - Optional. The maximum number of cloud locations to return per
  /// page. The service might return fewer cloud locations than this value. If
  /// unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return. Provide page token returned by a previous
  /// 'ListCloudLocations' call to retrieve the next page of results. When
  /// paginating, all other parameters provided to 'ListCloudLocations' must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCloudLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCloudLocationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudLocations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloudLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches for cloud locations from a given source location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of cloud
  /// locations. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of cloud locations to return.
  /// The service might return fewer cloud locations than this value. If
  /// unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return. Provide Page token returned by a previous
  /// 'ListCloudLocations' call to retrieve the next page of results. When
  /// paginating, all other parameters provided to 'ListCloudLocations' must
  /// match the call that provided the page token.
  ///
  /// [query] - Optional. The query string in search query syntax. While filter
  /// is used to filter the search results by attributes, query is used to
  /// specify the search requirements.
  ///
  /// [sourceCloudLocation] - Required. The source cloud location to search
  /// from. Example search can be searching nearby cloud locations from the
  /// source cloud location by latency.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchCloudLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchCloudLocationsResponse> search(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? sourceCloudLocation,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'query': ?query == null ? null : [query],
      'sourceCloudLocation': ?sourceCloudLocation == null
          ? null
          : [sourceCloudLocation],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cloudLocations:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchCloudLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents resource cloud locations.
class CloudLocation {
  /// The carbon free energy percentage of the cloud location.
  ///
  /// This represents the average percentage of time customers' application will
  /// be running on carbon-free energy. See
  /// https://cloud.google.com/sustainability/region-carbon for more details.
  /// There is a difference between default value 0 and unset value. 0 means the
  /// carbon free energy percentage is 0%, while unset value means the carbon
  /// footprint data is not available.
  ///
  /// Optional.
  core.double? carbonFreeEnergyPercentage;

  /// The type of the cloud location.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLOUD_LOCATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "CLOUD_LOCATION_TYPE_REGION" : CloudLocation type for region.
  /// - "CLOUD_LOCATION_TYPE_ZONE" : CloudLocation type for zone.
  /// - "CLOUD_LOCATION_TYPE_REGION_EXTENSION" : CloudLocation type for region
  /// extension.
  /// - "CLOUD_LOCATION_TYPE_GDCC_ZONE" : CloudLocation type for Google
  /// Distributed Cloud Connected Zone.
  core.String? cloudLocationType;

  /// The provider of the cloud location.
  ///
  /// Values can be Google Cloud or third-party providers, including AWS, Azure,
  /// or Oracle Cloud Infrastructure.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED" : Unspecified type.
  /// - "CLOUD_PROVIDER_GCP" : Cloud provider type for Google Cloud.
  /// - "CLOUD_PROVIDER_AWS" : Cloud provider type for AWS.
  /// - "CLOUD_PROVIDER_AZURE" : Cloud provider type for Azure.
  /// - "CLOUD_PROVIDER_OCI" : Cloud provider type for OCI.
  core.String? cloudProvider;

  /// The containing cloud location in the strict nesting hierarchy.
  ///
  /// For example, the containing cloud location of a zone is a region.
  ///
  /// Output only.
  core.String? containingCloudLocation;

  /// The human-readable name of the cloud location.
  ///
  /// Example: us-east-2, us-east1.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Name of the cloud location. Unique name of the cloud location including
  /// project and location using the form:
  /// `projects/{project_id}/locations/{location}/cloudLocations/{cloud_location}`
  core.String? name;

  /// The two-letter ISO 3166-1 alpha-2 code of the cloud location.
  ///
  /// Examples: US, JP, KR.
  ///
  /// Optional.
  core.String? territoryCode;

  CloudLocation({
    this.carbonFreeEnergyPercentage,
    this.cloudLocationType,
    this.cloudProvider,
    this.containingCloudLocation,
    this.displayName,
    this.name,
    this.territoryCode,
  });

  CloudLocation.fromJson(core.Map json_)
    : this(
        carbonFreeEnergyPercentage:
            (json_['carbonFreeEnergyPercentage'] as core.num?)?.toDouble(),
        cloudLocationType: json_['cloudLocationType'] as core.String?,
        cloudProvider: json_['cloudProvider'] as core.String?,
        containingCloudLocation:
            json_['containingCloudLocation'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        territoryCode: json_['territoryCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final carbonFreeEnergyPercentage = this.carbonFreeEnergyPercentage;
    final cloudLocationType = this.cloudLocationType;
    final cloudProvider = this.cloudProvider;
    final containingCloudLocation = this.containingCloudLocation;
    final displayName = this.displayName;
    final name = this.name;
    final territoryCode = this.territoryCode;
    return {
      'carbonFreeEnergyPercentage': ?carbonFreeEnergyPercentage,
      'cloudLocationType': ?cloudLocationType,
      'cloudProvider': ?cloudProvider,
      'containingCloudLocation': ?containingCloudLocation,
      'displayName': ?displayName,
      'name': ?name,
      'territoryCode': ?territoryCode,
    };
  }
}

/// Message for response to listing cloud locations.
class ListCloudLocationsResponse {
  /// List of cloud locations.
  ///
  /// Output only.
  core.List<CloudLocation>? cloudLocations;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request as page_token in subsequent
  /// requests to retrieve the next page. If this field is not present, there
  /// are no subsequent results.
  ///
  /// Output only.
  core.String? nextPageToken;

  ListCloudLocationsResponse({this.cloudLocations, this.nextPageToken});

  ListCloudLocationsResponse.fromJson(core.Map json_)
    : this(
        cloudLocations: (json_['cloudLocations'] as core.List?)
            ?.map(
              (value) => CloudLocation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudLocations = this.cloudLocations;
    final nextPageToken = this.nextPageToken;
    return {'cloudLocations': ?cloudLocations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message for response to searching cloud locations.
class SearchCloudLocationsResponse {
  /// List of cloud locations.
  ///
  /// Output only.
  core.List<CloudLocation>? cloudLocations;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request as page_token in subsequent
  /// requests to retrieve the next page. If this field is not present, there
  /// are no subsequent results.
  ///
  /// Output only.
  core.String? nextPageToken;

  SearchCloudLocationsResponse({this.cloudLocations, this.nextPageToken});

  SearchCloudLocationsResponse.fromJson(core.Map json_)
    : this(
        cloudLocations: (json_['cloudLocations'] as core.List?)
            ?.map(
              (value) => CloudLocation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudLocations = this.cloudLocations;
    final nextPageToken = this.nextPageToken;
    return {'cloudLocations': ?cloudLocations, 'nextPageToken': ?nextPageToken};
  }
}
