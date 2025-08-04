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

/// Managed Service for Apache Kafka API - v1
///
/// Manage Apache Kafka clusters and resources.
///
/// For more information, see
/// <https://cloud.google.com/managed-service-for-apache-kafka/docs>
///
/// Create an instance of [ManagedKafkaApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsClustersResource]
///       - [ProjectsLocationsClustersAclsResource]
///       - [ProjectsLocationsClustersConsumerGroupsResource]
///       - [ProjectsLocationsClustersTopicsResource]
///     - [ProjectsLocationsConnectClustersResource]
///       - [ProjectsLocationsConnectClustersConnectorsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSchemaRegistriesResource]
///       - [ProjectsLocationsSchemaRegistriesCompatibilityResource]
///       - [ProjectsLocationsSchemaRegistriesConfigResource]
///       - [ProjectsLocationsSchemaRegistriesContextsResource]
///         - [ProjectsLocationsSchemaRegistriesContextsCompatibilityResource]
///         - [ProjectsLocationsSchemaRegistriesContextsConfigResource]
///         - [ProjectsLocationsSchemaRegistriesContextsModeResource]
///         - [ProjectsLocationsSchemaRegistriesContextsSchemasResource]
/// - [ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource]
///           - [ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource]
/// - [ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource]
///         - [ProjectsLocationsSchemaRegistriesContextsSubjectsResource]
/// - [ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource]
/// -
/// [ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource]
///       - [ProjectsLocationsSchemaRegistriesModeResource]
///       - [ProjectsLocationsSchemaRegistriesSchemasResource]
///         - [ProjectsLocationsSchemaRegistriesSchemasSubjectsResource]
///         - [ProjectsLocationsSchemaRegistriesSchemasTypesResource]
///         - [ProjectsLocationsSchemaRegistriesSchemasVersionsResource]
///       - [ProjectsLocationsSchemaRegistriesSubjectsResource]
///         - [ProjectsLocationsSchemaRegistriesSubjectsVersionsResource]
/// - [ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource]
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

/// Manage Apache Kafka clusters and resources.
class ManagedKafkaApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ManagedKafkaApi(http.Client client,
      {core.String rootUrl = 'https://managedkafka.googleapis.com/',
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

  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);
  ProjectsLocationsConnectClustersResource get connectClusters =>
      ProjectsLocationsConnectClustersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSchemaRegistriesResource get schemaRegistries =>
      ProjectsLocationsSchemaRegistriesResource(_requester);

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
  async.Future<Location> get(
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
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersAclsResource get acls =>
      ProjectsLocationsClustersAclsResource(_requester);
  ProjectsLocationsClustersConsumerGroupsResource get consumerGroups =>
      ProjectsLocationsClustersConsumerGroupsResource(_requester);
  ProjectsLocationsClustersTopicsResource get topics =>
      ProjectsLocationsClustersTopicsResource(_requester);

  ProjectsLocationsClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent region in which to create the cluster.
  /// Structured like `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clusterId] - Required. The ID to use for the cluster, which will become
  /// the final component of the cluster's name. The ID must be 1-63 characters
  /// long, and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` to
  /// comply with RFC 1035. This value is structured like: `my-cluster-id`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    Cluster request,
    core.String parent, {
    core.String? clusterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the cluster to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Returns the properties of a single cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the cluster whose configuration to return.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(
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
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location whose clusters are to be listed.
  /// Structured like `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression for the result.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of clusters to return. The
  /// service may return fewer than this value. If unspecified, server will pick
  /// an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListClusters` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListClusters` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a single cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the cluster. Structured like:
  /// projects/{project_number}/locations/{location}/clusters/{cluster_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the cluster resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The mask is required and a
  /// value of * will update all fields.
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
  async.Future<Operation> patch(
    Cluster request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersAclsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersAclsResource(commons.ApiRequester client)
      : _requester = client;

  /// Incremental update: Adds an acl entry to an acl.
  ///
  /// Creates the acl if it does not exist yet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [acl] - Required. The name of the acl to add the acl entry to. Structured
  /// like:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}`.
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. See `Acl.name` for details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/acls/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddAclEntryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddAclEntryResponse> addAclEntry(
    AclEntry request,
    core.String acl, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$acl') + ':addAclEntry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AddAclEntryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new acl in the given project, location, and cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent cluster in which to create the acl.
  /// Structured like
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [aclId] - Required. The ID to use for the acl, which will become the final
  /// component of the acl's name. The structure of `acl_id` defines the
  /// Resource Pattern (resource_type, resource_name, pattern_type) of the acl.
  /// `acl_id` is structured like one of the following: For acls on the cluster:
  /// `cluster` For acls on a single resource within the cluster:
  /// `topic/{resource_name}` `consumerGroup/{resource_name}`
  /// `transactionalId/{resource_name}` For acls on all resources that match a
  /// prefix: `topicPrefixed/{resource_name}`
  /// `consumerGroupPrefixed/{resource_name}`
  /// `transactionalIdPrefixed/{resource_name}` For acls on all resources of a
  /// given type (i.e. the wildcard literal "*"): `allTopics` (represents `topic
  /// / * `) `allConsumerGroups` (represents `consumerGroup / * `)
  /// `allTransactionalIds` (represents `transactionalId / * `)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Acl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Acl> create(
    Acl request,
    core.String parent, {
    core.String? aclId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (aclId != null) 'aclId': [aclId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/acls';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Acl.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an acl.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the acl to delete. Structured like:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}`.
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. See `Acl.name` for details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/acls/.*$`.
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

  /// Returns the properties of a single acl.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the acl to return. Structured like:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}`.
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. See `Acl.name` for details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/acls/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Acl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Acl> get(
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
    return Acl.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the acls in a given cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent cluster whose acls are to be listed.
  /// Structured like
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of acls to return. The service
  /// may return fewer than this value. If unset or zero, all acls for the
  /// parent is returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListAcls`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAcls` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAclsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAclsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/acls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAclsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a single acl.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name for the acl. Represents a single Resource
  /// Pattern. Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. `acl_id` is structured like one
  /// of the following: For acls on the cluster: `cluster` For acls on a single
  /// resource within the cluster: `topic/{resource_name}`
  /// `consumerGroup/{resource_name}` `transactionalId/{resource_name}` For acls
  /// on all resources that match a prefix: `topicPrefixed/{resource_name}`
  /// `consumerGroupPrefixed/{resource_name}`
  /// `transactionalIdPrefixed/{resource_name}` For acls on all resources of a
  /// given type (i.e. the wildcard literal "*"): `allTopics` (represents `topic
  /// / * `) `allConsumerGroups` (represents `consumerGroup / * `)
  /// `allTransactionalIds` (represents `transactionalId / * `)
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/acls/.*$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Acl resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Acl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Acl> patch(
    Acl request,
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
    return Acl.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Incremental update: Removes an acl entry from an acl.
  ///
  /// Deletes the acl if its acl entries become empty (i.e. if the removed entry
  /// was the last one in the acl).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [acl] - Required. The name of the acl to remove the acl entry from.
  /// Structured like:
  /// `projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}`.
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. See `Acl.name` for details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/acls/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAclEntryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAclEntryResponse> removeAclEntry(
    AclEntry request,
    core.String acl, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$acl') + ':removeAclEntry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAclEntryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersConsumerGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersConsumerGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a single consumer group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the consumer group to delete.
  /// `projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumerGroup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/consumerGroups/.*$`.
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

  /// Returns the properties of a single consumer group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the consumer group whose configuration to
  /// return.
  /// `projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumerGroup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/consumerGroups/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsumerGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsumerGroup> get(
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
    return ConsumerGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the consumer groups in a given cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent cluster whose consumer groups are to be
  /// listed. Structured like
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of consumer groups to return.
  /// The service may return fewer than this value. If unset or zero, all
  /// consumer groups for the parent is returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListConsumerGroups` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListConsumerGroups`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConsumerGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConsumerGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consumerGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConsumerGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a single consumer group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the consumer group. The `consumer_group`
  /// segment is used when connecting directly to the cluster. Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumer_group}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/consumerGroups/.*$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the ConsumerGroup resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. The mask is
  /// required and a value of * will update all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsumerGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsumerGroup> patch(
    ConsumerGroup request,
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
    return ConsumerGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsClustersTopicsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersTopicsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new topic in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent cluster in which to create the topic.
  /// Structured like
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [topicId] - Required. The ID to use for the topic, which will become the
  /// final component of the topic's name. This value is structured like:
  /// `my-topic-name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> create(
    Topic request,
    core.String parent, {
    core.String? topicId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (topicId != null) 'topicId': [topicId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/topics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single topic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic to delete.
  /// `projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/topics/\[^/\]+$`.
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

  /// Returns the properties of a single topic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic whose configuration to return.
  /// Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> get(
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
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the topics in a given cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent cluster whose topics are to be listed.
  /// Structured like
  /// `projects/{project}/locations/{location}/clusters/{cluster}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of topics to return. The service
  /// may return fewer than this value. If unset or zero, all topics for the
  /// parent is returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListTopics` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListTopics` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a single topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the topic. The `topic` segment is used
  /// when connecting directly to the cluster. Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Topic resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The mask is required and a
  /// value of * will update all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> patch(
    Topic request,
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
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectClustersConnectorsResource get connectors =>
      ProjectsLocationsConnectClustersConnectorsResource(_requester);

  ProjectsLocationsConnectClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Kafka Connect cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project/location in which to create the
  /// Kafka Connect cluster. Structured like
  /// `projects/{project}/locations/{location}/`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectClusterId] - Required. The ID to use for the Connect cluster,
  /// which will become the final component of the cluster's name. The ID must
  /// be 1-63 characters long, and match the regular expression
  /// `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with RFC 1035. This value is
  /// structured like: `my-cluster-id`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    ConnectCluster request,
    core.String parent, {
    core.String? connectClusterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectClusterId != null) 'connectClusterId': [connectClusterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Connect cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Kafka Connect cluster to delete.
  /// Structured like
  /// `projects/{project}/locations/{location}/connectClusters/{connect_cluster_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Returns the properties of a single Kafka Connect cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Kafka Connect cluster whose
  /// configuration to return. Structured like
  /// `projects/{project}/locations/{location}/connectClusters/{connect_cluster_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectCluster> get(
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
    return ConnectCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Kafka Connect clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project/location whose Connect clusters
  /// are to be listed. Structured like
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression for the result.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. The maximum number of Connect clusters to return.
  /// The service may return fewer than this value. If unspecified, server will
  /// pick an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListConnectClusters` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListConnectClusters`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectClustersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a single Kafka Connect cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the Kafka Connect cluster. Structured
  /// like:
  /// projects/{project_number}/locations/{location}/connectClusters/{connect_cluster_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID to avoid duplication of requests. If a request
  /// times out or fails, retrying with the same ID allows the server to
  /// recognize the previous attempt. For at least 60 minutes, the server
  /// ignores duplicate requests bearing the same ID. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID within 60 minutes of
  /// the last request, the server checks if an original operation with the same
  /// request ID was received. If so, the server ignores the second request. The
  /// request ID must be a valid UUID. A zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the cluster resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The mask is required and a
  /// value of * will update all fields.
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
  async.Future<Operation> patch(
    ConnectCluster request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectClustersConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectClustersConnectorsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new connector in a given Connect cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Connect cluster in which to create the
  /// connector. Structured like
  /// `projects/{project}/locations/{location}/connectClusters/{connect_cluster_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+$`.
  ///
  /// [connectorId] - Required. The ID to use for the connector, which will
  /// become the final component of the connector's name. The ID must be 1-63
  /// characters long, and match the regular expression
  /// `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with RFC 1035. This value is
  /// structured like: `my-connector-id`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connector> create(
    Connector request,
    core.String parent, {
    core.String? connectorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectorId != null) 'connectorId': [connectorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to delete. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
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

  /// Returns the properties of a single connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector whose configuration to
  /// return. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connector> get(
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
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the connectors in a given Connect cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Connect cluster whose connectors are to be
  /// listed. Structured like
  /// `projects/{project}/locations/{location}/connectClusters/{connect_cluster_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of connectors to return. The
  /// service may return fewer than this value. If unspecified, server will pick
  /// an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListConnectors` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListConnectors` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectorsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the properties of a connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the connector. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connect_cluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the cluster resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The mask is required and a
  /// value of * will update all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connector> patch(
    Connector request,
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
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pauses the connector and its tasks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to pause. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PauseConnectorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PauseConnectorResponse> pause(
    PauseConnectorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':pause';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PauseConnectorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restarts the connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to restart. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RestartConnectorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RestartConnectorResponse> restart(
    RestartConnectorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restart';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RestartConnectorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resumes the connector and its tasks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to pause. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResumeConnectorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResumeConnectorResponse> resume(
    ResumeConnectorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ResumeConnectorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops the connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to stop. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connectCluster}/connectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectClusters/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StopConnectorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StopConnectorResponse> stop(
    StopConnectorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return StopConnectorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    CancelOperationRequest request,
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
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
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesCompatibilityResource get compatibility =>
      ProjectsLocationsSchemaRegistriesCompatibilityResource(_requester);
  ProjectsLocationsSchemaRegistriesConfigResource get config =>
      ProjectsLocationsSchemaRegistriesConfigResource(_requester);
  ProjectsLocationsSchemaRegistriesContextsResource get contexts =>
      ProjectsLocationsSchemaRegistriesContextsResource(_requester);
  ProjectsLocationsSchemaRegistriesModeResource get mode =>
      ProjectsLocationsSchemaRegistriesModeResource(_requester);
  ProjectsLocationsSchemaRegistriesSchemasResource get schemas =>
      ProjectsLocationsSchemaRegistriesSchemasResource(_requester);
  ProjectsLocationsSchemaRegistriesSubjectsResource get subjects =>
      ProjectsLocationsSchemaRegistriesSubjectsResource(_requester);

  ProjectsLocationsSchemaRegistriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a schema registry instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent whose schema registry instance is to be
  /// created. Structured like: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaRegistry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaRegistry> create(
    CreateSchemaRegistryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemaRegistries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaRegistry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a schema registry instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema registry instance to delete.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+$`.
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

  /// Get the schema registry instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema registry instance to return.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaRegistry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaRegistry> get(
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
    return SchemaRegistry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List schema registries.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent whose schema registry instances are to be
  /// listed. Structured like: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchemaRegistriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchemaRegistriesResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemaRegistries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSchemaRegistriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesCompatibilityResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesCompatibilityResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Check compatibility of a schema with all versions or a specific version of
  /// a subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource to check compatibility for.
  /// The format is either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/compatibility/subjects
  /// / * /versions: Check compatibility with one or more versions of the
  /// specified subject. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/compatibility/subjects/{subject}/versions/{version}:
  /// Check compatibility with a specific version of the subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/compatibility/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckCompatibilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckCompatibilityResponse> checkCompatibility(
    CheckCompatibilityRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckCompatibilityResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete schema config for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of subject to delete the config for.
  /// The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/config/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> delete(
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
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get schema config at global level or for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name to get the config for. It can be
  /// either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config:
  /// Get config at global level. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}:
  /// Get config for a specific subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/config/.*$`.
  ///
  /// [defaultToGlobal] - Optional. If true, the config will fall back to the
  /// config at the global level if no subject level config is found.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> get(
    core.String name, {
    core.bool? defaultToGlobal,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (defaultToGlobal != null) 'defaultToGlobal': ['${defaultToGlobal}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update config at global level or for a subject.
  ///
  /// Creates a SchemaSubject-level SchemaConfig if it does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name to update the config for. It can be
  /// either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config:
  /// Update config at global level. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}:
  /// Update config for a specific subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/config/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> update(
    UpdateSchemaConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsCompatibilityResource
      get compatibility =>
          ProjectsLocationsSchemaRegistriesContextsCompatibilityResource(
              _requester);
  ProjectsLocationsSchemaRegistriesContextsConfigResource get config =>
      ProjectsLocationsSchemaRegistriesContextsConfigResource(_requester);
  ProjectsLocationsSchemaRegistriesContextsModeResource get mode =>
      ProjectsLocationsSchemaRegistriesContextsModeResource(_requester);
  ProjectsLocationsSchemaRegistriesContextsSchemasResource get schemas =>
      ProjectsLocationsSchemaRegistriesContextsSchemasResource(_requester);
  ProjectsLocationsSchemaRegistriesContextsSubjectsResource get subjects =>
      ProjectsLocationsSchemaRegistriesContextsSubjectsResource(_requester);

  ProjectsLocationsSchemaRegistriesContextsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the context.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the context to return. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Context].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Context> get(
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
    return Context.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List contexts for a schema registry.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the contexts. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/contexts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsCompatibilityResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsCompatibilityResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Check compatibility of a schema with all versions or a specific version of
  /// a subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource to check compatibility for.
  /// The format is either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/compatibility/subjects
  /// / * /versions: Check compatibility with one or more versions of the
  /// specified subject. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/compatibility/subjects/{subject}/versions/{version}:
  /// Check compatibility with a specific version of the subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/compatibility/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckCompatibilityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckCompatibilityResponse> checkCompatibility(
    CheckCompatibilityRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckCompatibilityResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsConfigResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Delete schema config for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of subject to delete the config for.
  /// The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/config/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> delete(
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
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get schema config at global level or for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name to get the config for. It can be
  /// either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config:
  /// Get config at global level. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}:
  /// Get config for a specific subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/config/.*$`.
  ///
  /// [defaultToGlobal] - Optional. If true, the config will fall back to the
  /// config at the global level if no subject level config is found.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> get(
    core.String name, {
    core.bool? defaultToGlobal,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (defaultToGlobal != null) 'defaultToGlobal': ['${defaultToGlobal}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update config at global level or for a subject.
  ///
  /// Creates a SchemaSubject-level SchemaConfig if it does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name to update the config for. It can be
  /// either of following: *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config:
  /// Update config at global level. *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/config/{subject}:
  /// Update config for a specific subject.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/config/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaConfig> update(
    UpdateSchemaConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsModeResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsModeResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Delete schema mode for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of subject to delete the mode for.
  /// The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}
  /// *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> delete(
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
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get mode at global level or for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the mode. The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}:
  /// mode for a schema registry, or *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}:
  /// mode for a specific subject in a specific context
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> get(
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
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update mode at global level or for a subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the mode. The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}:
  /// mode for a schema registry, or *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}:
  /// mode for a specific subject in a specific context
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> update(
    UpdateSchemaModeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource
      get subjects =>
          ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource(
              _requester);
  ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource get types =>
      ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource(_requester);
  ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource
      get versions =>
          ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource(
              _requester);

  ProjectsLocationsSchemaRegistriesContextsSchemasResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get the schema for the given schema id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to return. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/schemas/.*$`.
  ///
  /// [subject] - Optional. Used to limit the search for the schema ID to a
  /// specific subject, otherwise the schema ID will be searched for in all
  /// subjects in the given specified context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> get(
    core.String name, {
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the schema string for the given schema id.
  ///
  /// The response will be the schema string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to return. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/schemas/.*$`.
  ///
  /// [subject] - Optional. Used to limit the search for the schema ID to a
  /// specific subject, otherwise the schema ID will be searched for in all
  /// subjects in the given specified context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getSchema(
    core.String name, {
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/schema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSchemasSubjectsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List subjects which reference a particular schema id.
  ///
  /// The response will be an array of subject names.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The schema resource whose associated subjects are to
  /// be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/schemas/.*$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// subjects. The default is false.
  ///
  /// [subject] - Optional. The subject to filter the subjects by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subjects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSchemasTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List the supported schema types.
  ///
  /// The response will be an array of schema types.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent schema registry whose schema types are to
  /// be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas/types';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSchemasVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List the schema versions for the given schema id.
  ///
  /// The response will be an array of subject-version pairs as:
  /// \[{"subject":"subject1", "version":1}, {"subject":"subject2",
  /// "version":2}\].
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The schema whose schema versions are to be listed.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/schemas/.*$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// versions of the schema, even if the subject is soft-deleted. The default
  /// is false.
  ///
  /// [subject] - Optional. The subject to filter the subjects by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSubjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource
      get versions =>
          ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource(
              _requester);

  ProjectsLocationsSchemaRegistriesContextsSubjectsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Delete a subject.
  ///
  /// The response will be an array of versions of the deleted subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to delete. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [permanent] - Optional. If true, the subject and all associated metadata
  /// including the schema ID will be deleted permanently. Otherwise, only the
  /// subject is soft-deleted. The default is false. Soft-deleted subjects can
  /// still be searched in ListSubjects API call with deleted=true query
  /// parameter. A soft-delete of a subject must be performed before a
  /// hard-delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(
    core.String name, {
    core.bool? permanent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (permanent != null) 'permanent': ['${permanent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List subjects in the schema registry.
  ///
  /// The response will be an array of subject names.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent schema registry/context whose subjects are
  /// to be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// subjects. The default is false.
  ///
  /// [subjectPrefix] - Optional. The context to filter the subjects by, in the
  /// format of `:.{context}:`. If unset, all subjects in the registry are
  /// returned. Set to empty string or add as '?subjectPrefix=' at the end of
  /// this request to list subjects in the default context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subjectPrefix,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subjectPrefix != null) 'subjectPrefix': [subjectPrefix],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subjects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lookup a schema under the specified subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject to lookup the schema in. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaVersion> lookupVersion(
    LookupVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource
      get referencedby =>
          ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource(
              _requester);

  ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Register a new version under a given subject with the given schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject to create the version for. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateVersionResponse> create(
    CreateVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateVersionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a version of a subject.
  ///
  /// The response will be the deleted version id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject version to delete. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [permanent] - Optional. If true, both the version and the referenced
  /// schema ID will be permanently deleted. The default is false. If false, the
  /// version will be deleted but the schema ID will be retained. Soft-deleted
  /// versions can still be searched in ListVersions API call with deleted=true
  /// query parameter. A soft-delete of a version must be performed before a
  /// hard-delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(
    core.String name, {
    core.bool? permanent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (permanent != null) 'permanent': ['${permanent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a versioned schema (schema with subject/version) of a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to return versions. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, no matter if the subject/version is
  /// soft-deleted or not, it returns the version details. If false, it returns
  /// NOT_FOUND error if the subject/version is soft-deleted. The default is
  /// false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaVersion> get(
    core.String name, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SchemaVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the schema string only for a version of a subject.
  ///
  /// The response will be the schema string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to return versions. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, no matter if the subject/version is
  /// soft-deleted or not, it returns the version details. If false, it returns
  /// NOT_FOUND error if the subject/version is soft-deleted. The default is
  /// false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getSchema(
    core.String name, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/schema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get all versions of a subject.
  ///
  /// The response will be an array of versions of the subject.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject whose versions are to be listed.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// versions of an active or soft-deleted subject. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesContextsSubjectsVersionsReferencedbyResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get a list of IDs of schemas that reference the schema with the given
  /// subject and version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to list referenced by. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/contexts/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/referencedby';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesModeResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesModeResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete schema mode for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of subject to delete the mode for.
  /// The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}
  /// *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> delete(
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
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get mode at global level or for a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the mode. The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}:
  /// mode for a schema registry, or *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}:
  /// mode for a specific subject in a specific context
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> get(
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
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update mode at global level or for a subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the mode. The format is *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/mode/{subject}:
  /// mode for a schema registry, or *
  /// projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/mode/{subject}:
  /// mode for a specific subject in a specific context
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/mode/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaMode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaMode> update(
    UpdateSchemaModeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaMode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSchemasSubjectsResource get subjects =>
      ProjectsLocationsSchemaRegistriesSchemasSubjectsResource(_requester);
  ProjectsLocationsSchemaRegistriesSchemasTypesResource get types =>
      ProjectsLocationsSchemaRegistriesSchemasTypesResource(_requester);
  ProjectsLocationsSchemaRegistriesSchemasVersionsResource get versions =>
      ProjectsLocationsSchemaRegistriesSchemasVersionsResource(_requester);

  ProjectsLocationsSchemaRegistriesSchemasResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the schema for the given schema id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to return. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/schemas/.*$`.
  ///
  /// [subject] - Optional. Used to limit the search for the schema ID to a
  /// specific subject, otherwise the schema ID will be searched for in all
  /// subjects in the given specified context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> get(
    core.String name, {
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the schema string for the given schema id.
  ///
  /// The response will be the schema string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to return. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/schemas/.*$`.
  ///
  /// [subject] - Optional. Used to limit the search for the schema ID to a
  /// specific subject, otherwise the schema ID will be searched for in all
  /// subjects in the given specified context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getSchema(
    core.String name, {
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/schema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSchemasSubjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSchemasSubjectsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List subjects which reference a particular schema id.
  ///
  /// The response will be an array of subject names.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The schema resource whose associated subjects are to
  /// be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/schemas/.*$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// subjects. The default is false.
  ///
  /// [subject] - Optional. The subject to filter the subjects by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subjects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSchemasTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSchemasTypesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List the supported schema types.
  ///
  /// The response will be an array of schema types.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent schema registry whose schema types are to
  /// be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas/types';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSchemasVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSchemasVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List the schema versions for the given schema id.
  ///
  /// The response will be an array of subject-version pairs as:
  /// \[{"subject":"subject1", "version":1}, {"subject":"subject2",
  /// "version":2}\].
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The schema whose schema versions are to be listed.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/schemas/ids/{schema}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/schemas/ids/{schema}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/schemas/.*$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// versions of the schema, even if the subject is soft-deleted. The default
  /// is false.
  ///
  /// [subject] - Optional. The subject to filter the subjects by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subject,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subject != null) 'subject': [subject],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSubjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSubjectsVersionsResource get versions =>
      ProjectsLocationsSchemaRegistriesSubjectsVersionsResource(_requester);

  ProjectsLocationsSchemaRegistriesSubjectsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a subject.
  ///
  /// The response will be an array of versions of the deleted subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to delete. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [permanent] - Optional. If true, the subject and all associated metadata
  /// including the schema ID will be deleted permanently. Otherwise, only the
  /// subject is soft-deleted. The default is false. Soft-deleted subjects can
  /// still be searched in ListSubjects API call with deleted=true query
  /// parameter. A soft-delete of a subject must be performed before a
  /// hard-delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(
    core.String name, {
    core.bool? permanent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (permanent != null) 'permanent': ['${permanent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List subjects in the schema registry.
  ///
  /// The response will be an array of subject names.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent schema registry/context whose subjects are
  /// to be listed. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// subjects. The default is false.
  ///
  /// [subjectPrefix] - Optional. The context to filter the subjects by, in the
  /// format of `:.{context}:`. If unset, all subjects in the registry are
  /// returned. Set to empty string or add as '?subjectPrefix=' at the end of
  /// this request to list subjects in the default context.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? subjectPrefix,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if (subjectPrefix != null) 'subjectPrefix': [subjectPrefix],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subjects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lookup a schema under the specified subject.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject to lookup the schema in. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaVersion> lookupVersion(
    LookupVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SchemaVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSubjectsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource
      get referencedby =>
          ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource(
              _requester);

  ProjectsLocationsSchemaRegistriesSubjectsVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Register a new version under a given subject with the given schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject to create the version for. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateVersionResponse> create(
    CreateVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateVersionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a version of a subject.
  ///
  /// The response will be the deleted version id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject version to delete. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [permanent] - Optional. If true, both the version and the referenced
  /// schema ID will be permanently deleted. The default is false. If false, the
  /// version will be deleted but the schema ID will be retained. Soft-deleted
  /// versions can still be searched in ListVersions API call with deleted=true
  /// query parameter. A soft-delete of a version must be performed before a
  /// hard-delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(
    core.String name, {
    core.bool? permanent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (permanent != null) 'permanent': ['${permanent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a versioned schema (schema with subject/version) of a subject.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to return versions. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, no matter if the subject/version is
  /// soft-deleted or not, it returns the version details. If false, it returns
  /// NOT_FOUND error if the subject/version is soft-deleted. The default is
  /// false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SchemaVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SchemaVersion> get(
    core.String name, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SchemaVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the schema string only for a version of a subject.
  ///
  /// The response will be the schema string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subject to return versions. Structured
  /// like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, no matter if the subject/version is
  /// soft-deleted or not, it returns the version details. If false, it returns
  /// NOT_FOUND error if the subject/version is soft-deleted. The default is
  /// false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> getSchema(
    core.String name, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/schema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get all versions of a subject.
  ///
  /// The response will be an array of versions of the subject.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subject whose versions are to be listed.
  /// Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [deleted] - Optional. If true, the response will include soft-deleted
  /// versions of an active or soft-deleted subject. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.bool? deleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleted != null) 'deleted': ['${deleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchemaRegistriesSubjectsVersionsReferencedbyResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get a list of IDs of schemas that reference the schema with the given
  /// subject and version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to list referenced by. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/subjects/{subject}/versions/{version}`
  /// or
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}/subjects/{subject}/versions/{version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schemaRegistries/\[^/\]+/subjects/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/referencedby';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The configuration of access to the Kafka cluster.
class AccessConfig {
  /// Virtual Private Cloud (VPC) networks that must be granted direct access to
  /// the Kafka cluster.
  ///
  /// Minimum of 1 network is required. Maximum 10 networks can be specified.
  ///
  /// Required.
  core.List<NetworkConfig>? networkConfigs;

  AccessConfig({
    this.networkConfigs,
  });

  AccessConfig.fromJson(core.Map json_)
      : this(
          networkConfigs: (json_['networkConfigs'] as core.List?)
              ?.map((value) => NetworkConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkConfigs != null) 'networkConfigs': networkConfigs!,
      };
}

/// Represents the set of ACLs for a given Kafka Resource Pattern, which
/// consists of resource_type, resource_name and pattern_type.
class Acl {
  /// The ACL entries that apply to the resource pattern.
  ///
  /// The maximum number of allowed entries 100.
  ///
  /// Required.
  core.List<AclEntry>? aclEntries;

  /// `etag` is used for concurrency control.
  ///
  /// An `etag` is returned in the response to `GetAcl` and `CreateAcl`. Callers
  /// are required to put that etag in the request to `UpdateAcl` to ensure that
  /// their change will be applied to the same version of the acl that exists in
  /// the Kafka Cluster. A terminal 'T' character in the etag indicates that the
  /// AclEntries were truncated; more entries for the Acl exist on the Kafka
  /// Cluster, but can't be returned in the Acl due to repeated field limits.
  ///
  /// Optional.
  core.String? etag;

  /// Identifier.
  ///
  /// The name for the acl. Represents a single Resource Pattern. Structured
  /// like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/acls/{acl_id}
  /// The structure of `acl_id` defines the Resource Pattern (resource_type,
  /// resource_name, pattern_type) of the acl. `acl_id` is structured like one
  /// of the following: For acls on the cluster: `cluster` For acls on a single
  /// resource within the cluster: `topic/{resource_name}`
  /// `consumerGroup/{resource_name}` `transactionalId/{resource_name}` For acls
  /// on all resources that match a prefix: `topicPrefixed/{resource_name}`
  /// `consumerGroupPrefixed/{resource_name}`
  /// `transactionalIdPrefixed/{resource_name}` For acls on all resources of a
  /// given type (i.e. the wildcard literal "*"): `allTopics` (represents `topic
  /// / * `) `allConsumerGroups` (represents `consumerGroup / * `)
  /// `allTransactionalIds` (represents `transactionalId / * `)
  core.String? name;

  /// The ACL pattern type derived from the name.
  ///
  /// One of: LITERAL, PREFIXED.
  ///
  /// Output only.
  core.String? patternType;

  /// The ACL resource name derived from the name.
  ///
  /// For cluster resource_type, this is always "kafka-cluster". Can be the
  /// wildcard literal "*".
  ///
  /// Output only.
  core.String? resourceName;

  /// The ACL resource type derived from the name.
  ///
  /// One of: CLUSTER, TOPIC, GROUP, TRANSACTIONAL_ID.
  ///
  /// Output only.
  core.String? resourceType;

  Acl({
    this.aclEntries,
    this.etag,
    this.name,
    this.patternType,
    this.resourceName,
    this.resourceType,
  });

  Acl.fromJson(core.Map json_)
      : this(
          aclEntries: (json_['aclEntries'] as core.List?)
              ?.map((value) => AclEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          etag: json_['etag'] as core.String?,
          name: json_['name'] as core.String?,
          patternType: json_['patternType'] as core.String?,
          resourceName: json_['resourceName'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aclEntries != null) 'aclEntries': aclEntries!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (patternType != null) 'patternType': patternType!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Represents the access granted for a given Resource Pattern in an ACL.
class AclEntry {
  /// The host.
  ///
  /// Must be set to "*" for Managed Service for Apache Kafka.
  ///
  /// Required.
  core.String? host;

  /// The operation type.
  ///
  /// Allowed values are (case insensitive): ALL, READ, WRITE, CREATE, DELETE,
  /// ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS, ALTER_CONFIGS, and
  /// IDEMPOTENT_WRITE. See
  /// https://kafka.apache.org/documentation/#operations_resources_and_protocols
  /// for valid combinations of resource_type and operation for different Kafka
  /// API requests.
  ///
  /// Required.
  core.String? operation;

  /// The permission type.
  ///
  /// Accepted values are (case insensitive): ALLOW, DENY.
  ///
  /// Required.
  core.String? permissionType;

  /// The principal.
  ///
  /// Specified as Google Cloud account, with the Kafka StandardAuthorizer
  /// prefix "User:". For example:
  /// "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be the
  /// wildcard "User:*" to refer to all users.
  ///
  /// Required.
  core.String? principal;

  AclEntry({
    this.host,
    this.operation,
    this.permissionType,
    this.principal,
  });

  AclEntry.fromJson(core.Map json_)
      : this(
          host: json_['host'] as core.String?,
          operation: json_['operation'] as core.String?,
          permissionType: json_['permissionType'] as core.String?,
          principal: json_['principal'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (operation != null) 'operation': operation!,
        if (permissionType != null) 'permissionType': permissionType!,
        if (principal != null) 'principal': principal!,
      };
}

/// Response for AddAclEntry.
class AddAclEntryResponse {
  /// The updated acl.
  Acl? acl;

  /// Whether the acl was created as a result of adding the acl entry.
  core.bool? aclCreated;

  AddAclEntryResponse({
    this.acl,
    this.aclCreated,
  });

  AddAclEntryResponse.fromJson(core.Map json_)
      : this(
          acl: json_.containsKey('acl')
              ? Acl.fromJson(
                  json_['acl'] as core.Map<core.String, core.dynamic>)
              : null,
          aclCreated: json_['aclCreated'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (aclCreated != null) 'aclCreated': aclCreated!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A capacity configuration of a Kafka cluster.
class CapacityConfig {
  /// The memory to provision for the cluster in bytes.
  ///
  /// The CPU:memory ratio (vCPU:GiB) must be between 1:1 and 1:8. Minimum:
  /// 3221225472 (3 GiB).
  ///
  /// Required.
  core.String? memoryBytes;

  /// The number of vCPUs to provision for the cluster.
  ///
  /// Minimum: 3.
  ///
  /// Required.
  core.String? vcpuCount;

  CapacityConfig({
    this.memoryBytes,
    this.vcpuCount,
  });

  CapacityConfig.fromJson(core.Map json_)
      : this(
          memoryBytes: json_['memoryBytes'] as core.String?,
          vcpuCount: json_['vcpuCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memoryBytes != null) 'memoryBytes': memoryBytes!,
        if (vcpuCount != null) 'vcpuCount': vcpuCount!,
      };
}

/// A configuration for the Google Certificate Authority Service.
class CertificateAuthorityServiceConfig {
  /// The name of the CA pool to pull CA certificates from.
  ///
  /// Structured like:
  /// projects/{project}/locations/{location}/caPools/{ca_pool}. The CA pool
  /// does not need to be in the same project or location as the Kafka cluster.
  ///
  /// Required.
  core.String? caPool;

  CertificateAuthorityServiceConfig({
    this.caPool,
  });

  CertificateAuthorityServiceConfig.fromJson(core.Map json_)
      : this(
          caPool: json_['caPool'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caPool != null) 'caPool': caPool!,
      };
}

/// Request for CheckCompatibility.
class CheckCompatibilityRequest {
  /// The schema references used by the schema.
  ///
  /// Optional.
  core.List<SchemaReference>? references;

  /// The schema payload
  ///
  /// Required.
  core.String? schema;

  /// The schema type of the schema.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type. The default will be AVRO.
  /// - "AVRO" : Avro schema type.
  /// - "JSON" : JSON schema type.
  /// - "PROTOBUF" : Protobuf schema type.
  core.String? schemaType;

  /// If true, the response will contain the compatibility check result with
  /// reasons for failed checks.
  ///
  /// The default is false.
  ///
  /// Optional.
  core.bool? verbose;

  CheckCompatibilityRequest({
    this.references,
    this.schema,
    this.schemaType,
    this.verbose,
  });

  CheckCompatibilityRequest.fromJson(core.Map json_)
      : this(
          references: (json_['references'] as core.List?)
              ?.map((value) => SchemaReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          schema: json_['schema'] as core.String?,
          schemaType: json_['schemaType'] as core.String?,
          verbose: json_['verbose'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (references != null) 'references': references!,
        if (schema != null) 'schema': schema!,
        if (schemaType != null) 'schemaType': schemaType!,
        if (verbose != null) 'verbose': verbose!,
      };
}

/// Response for CheckCompatibility.
class CheckCompatibilityResponse {
  /// The compatibility check result.
  ///
  /// If true, the schema is compatible with the resource.
  core.bool? isCompatible;

  /// Failure reasons if verbose = true.
  core.List<core.String>? messages;

  CheckCompatibilityResponse({
    this.isCompatible,
    this.messages,
  });

  CheckCompatibilityResponse.fromJson(core.Map json_)
      : this(
          isCompatible: json_['is_compatible'] as core.bool?,
          messages: (json_['messages'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCompatible != null) 'is_compatible': isCompatible!,
        if (messages != null) 'messages': messages!,
      };
}

/// An Apache Kafka cluster deployed in a location.
class Cluster {
  /// Capacity configuration for the Kafka cluster.
  ///
  /// Required.
  CapacityConfig? capacityConfig;

  /// The time when the cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Configuration properties for a Kafka cluster deployed to Google Cloud
  /// Platform.
  ///
  /// Required.
  GcpConfig? gcpConfig;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the cluster. Structured like:
  /// projects/{project_number}/locations/{location}/clusters/{cluster_id}
  core.String? name;

  /// Rebalance configuration for the Kafka cluster.
  ///
  /// Optional.
  RebalanceConfig? rebalanceConfig;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current state of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A state was not specified.
  /// - "CREATING" : The cluster is being created.
  /// - "ACTIVE" : The cluster is active.
  /// - "DELETING" : The cluster is being deleted.
  core.String? state;

  /// TLS configuration for the Kafka cluster.
  ///
  /// Optional.
  TlsConfig? tlsConfig;

  /// The time when the cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Cluster({
    this.capacityConfig,
    this.createTime,
    this.gcpConfig,
    this.labels,
    this.name,
    this.rebalanceConfig,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.tlsConfig,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
      : this(
          capacityConfig: json_.containsKey('capacityConfig')
              ? CapacityConfig.fromJson(json_['capacityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          gcpConfig: json_.containsKey('gcpConfig')
              ? GcpConfig.fromJson(
                  json_['gcpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          rebalanceConfig: json_.containsKey('rebalanceConfig')
              ? RebalanceConfig.fromJson(json_['rebalanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
          satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
          state: json_['state'] as core.String?,
          tlsConfig: json_.containsKey('tlsConfig')
              ? TlsConfig.fromJson(
                  json_['tlsConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityConfig != null) 'capacityConfig': capacityConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (gcpConfig != null) 'gcpConfig': gcpConfig!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (rebalanceConfig != null) 'rebalanceConfig': rebalanceConfig!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (tlsConfig != null) 'tlsConfig': tlsConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The configuration of access to the Kafka Connect cluster.
class ConnectAccessConfig {
  /// Virtual Private Cloud (VPC) networks that must be granted direct access to
  /// the Kafka Connect cluster.
  ///
  /// Minimum of 1 network is required. Maximum 10 networks can be specified.
  ///
  /// Required.
  core.List<ConnectNetworkConfig>? networkConfigs;

  ConnectAccessConfig({
    this.networkConfigs,
  });

  ConnectAccessConfig.fromJson(core.Map json_)
      : this(
          networkConfigs: (json_['networkConfigs'] as core.List?)
              ?.map((value) => ConnectNetworkConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networkConfigs != null) 'networkConfigs': networkConfigs!,
      };
}

/// An Apache Kafka Connect cluster deployed in a location.
class ConnectCluster {
  /// Capacity configuration for the Kafka Connect cluster.
  ///
  /// Required.
  CapacityConfig? capacityConfig;

  /// Configurations for the worker that are overridden from the defaults.
  ///
  /// The key of the map is a Kafka Connect worker property name, for example:
  /// `exactly.once.source.support`.
  ///
  /// Optional.
  core.Map<core.String, core.String>? config;

  /// The time when the cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Configuration properties for a Kafka Connect cluster deployed to Google
  /// Cloud Platform.
  ///
  /// Required.
  ConnectGcpConfig? gcpConfig;

  /// The name of the Kafka cluster this Kafka Connect cluster is attached to.
  ///
  /// Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}
  ///
  /// Required. Immutable.
  core.String? kafkaCluster;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the Kafka Connect cluster. Structured like:
  /// projects/{project_number}/locations/{location}/connectClusters/{connect_cluster_id}
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The current state of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A state was not specified.
  /// - "CREATING" : The cluster is being created.
  /// - "ACTIVE" : The cluster is active.
  /// - "DELETING" : The cluster is being deleted.
  core.String? state;

  /// The time when the cluster was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConnectCluster({
    this.capacityConfig,
    this.config,
    this.createTime,
    this.gcpConfig,
    this.kafkaCluster,
    this.labels,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.updateTime,
  });

  ConnectCluster.fromJson(core.Map json_)
      : this(
          capacityConfig: json_.containsKey('capacityConfig')
              ? CapacityConfig.fromJson(json_['capacityConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          config:
              (json_['config'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          gcpConfig: json_.containsKey('gcpConfig')
              ? ConnectGcpConfig.fromJson(
                  json_['gcpConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          kafkaCluster: json_['kafkaCluster'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
          satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacityConfig != null) 'capacityConfig': capacityConfig!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (gcpConfig != null) 'gcpConfig': gcpConfig!,
        if (kafkaCluster != null) 'kafkaCluster': kafkaCluster!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Configuration properties for a Kafka Connect cluster deployed to Google
/// Cloud Platform.
class ConnectGcpConfig {
  /// Access configuration for the Kafka Connect cluster.
  ///
  /// Required.
  ConnectAccessConfig? accessConfig;

  /// Secrets to load into workers.
  ///
  /// Exact SecretVersions from Secret Manager must be provided -- aliases are
  /// not supported. Up to 32 secrets may be loaded into one cluster. Format:
  /// projects//secrets//versions/
  ///
  /// Optional.
  core.List<core.String>? secretPaths;

  ConnectGcpConfig({
    this.accessConfig,
    this.secretPaths,
  });

  ConnectGcpConfig.fromJson(core.Map json_)
      : this(
          accessConfig: json_.containsKey('accessConfig')
              ? ConnectAccessConfig.fromJson(
                  json_['accessConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          secretPaths: (json_['secretPaths'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessConfig != null) 'accessConfig': accessConfig!,
        if (secretPaths != null) 'secretPaths': secretPaths!,
      };
}

/// The configuration of a Virtual Private Cloud (VPC) network that can access
/// the Kafka Connect cluster.
class ConnectNetworkConfig {
  /// Additional subnets may be specified.
  ///
  /// They may be in another region, but must be in the same VPC network. The
  /// Connect workers can communicate with network endpoints in either the
  /// primary or additional subnets.
  ///
  /// Optional.
  core.List<core.String>? additionalSubnets;

  /// Additional DNS domain names from the subnet's network to be made visible
  /// to the Connect Cluster.
  ///
  /// When using MirrorMaker2, it's necessary to add the bootstrap address's dns
  /// domain name of the target cluster to make it visible to the connector. For
  /// example: my-kafka-cluster.us-central1.managedkafka.my-project.cloud.goog
  ///
  /// Optional.
  core.List<core.String>? dnsDomainNames;

  /// VPC subnet to make available to the Kafka Connect cluster.
  ///
  /// Structured like:
  /// projects/{project}/regions/{region}/subnetworks/{subnet_id} It is used to
  /// create a Private Service Connect (PSC) interface for the Kafka Connect
  /// workers. It must be located in the same region as the Kafka Connect
  /// cluster. The CIDR range of the subnet must be within the IPv4 address
  /// ranges for private networks, as specified in RFC 1918. The primary subnet
  /// CIDR range must have a minimum size of /22 (1024 addresses).
  ///
  /// Required.
  core.String? primarySubnet;

  ConnectNetworkConfig({
    this.additionalSubnets,
    this.dnsDomainNames,
    this.primarySubnet,
  });

  ConnectNetworkConfig.fromJson(core.Map json_)
      : this(
          additionalSubnets: (json_['additionalSubnets'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          dnsDomainNames: (json_['dnsDomainNames'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          primarySubnet: json_['primarySubnet'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalSubnets != null) 'additionalSubnets': additionalSubnets!,
        if (dnsDomainNames != null) 'dnsDomainNames': dnsDomainNames!,
        if (primarySubnet != null) 'primarySubnet': primarySubnet!,
      };
}

/// A Kafka Connect connector in a given ConnectCluster.
class Connector {
  /// Connector config as keys/values.
  ///
  /// The keys of the map are connector property names, for example:
  /// `connector.class`, `tasks.max`, `key.converter`.
  ///
  /// Optional.
  core.Map<core.String, core.String>? configs;

  /// Identifier.
  ///
  /// The name of the connector. Structured like:
  /// projects/{project}/locations/{location}/connectClusters/{connect_cluster}/connectors/{connector}
  core.String? name;

  /// The current state of the connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A state was not specified.
  /// - "UNASSIGNED" : The connector is not assigned to any tasks, usually
  /// transient.
  /// - "RUNNING" : The connector is running.
  /// - "PAUSED" : The connector has been paused.
  /// - "FAILED" : The connector has failed. See logs for why.
  /// - "RESTARTING" : The connector is restarting.
  /// - "STOPPED" : The connector has been stopped.
  core.String? state;

  /// Restarts the individual tasks of a Connector.
  ///
  /// Optional.
  TaskRetryPolicy? taskRestartPolicy;

  Connector({
    this.configs,
    this.name,
    this.state,
    this.taskRestartPolicy,
  });

  Connector.fromJson(core.Map json_)
      : this(
          configs:
              (json_['configs'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          taskRestartPolicy: json_.containsKey('taskRestartPolicy')
              ? TaskRetryPolicy.fromJson(json_['taskRestartPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (taskRestartPolicy != null) 'taskRestartPolicy': taskRestartPolicy!,
      };
}

/// A Kafka consumer group in a given cluster.
class ConsumerGroup {
  /// Identifier.
  ///
  /// The name of the consumer group. The `consumer_group` segment is used when
  /// connecting directly to the cluster. Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumer_group}
  core.String? name;

  /// Metadata for this consumer group for all topics it has metadata for.
  ///
  /// The key of the map is a topic name, structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}
  ///
  /// Optional.
  core.Map<core.String, ConsumerTopicMetadata>? topics;

  ConsumerGroup({
    this.name,
    this.topics,
  });

  ConsumerGroup.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          topics:
              (json_['topics'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              ConsumerTopicMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (topics != null) 'topics': topics!,
      };
}

/// Metadata for a consumer group corresponding to a specific partition.
class ConsumerPartitionMetadata {
  /// The associated metadata for this partition, or empty if it does not exist.
  ///
  /// Optional.
  core.String? metadata;

  /// The current offset for this partition, or 0 if no offset has been
  /// committed.
  ///
  /// Required.
  core.String? offset;

  ConsumerPartitionMetadata({
    this.metadata,
    this.offset,
  });

  ConsumerPartitionMetadata.fromJson(core.Map json_)
      : this(
          metadata: json_['metadata'] as core.String?,
          offset: json_['offset'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (offset != null) 'offset': offset!,
      };
}

/// Metadata for a consumer group corresponding to a specific topic.
class ConsumerTopicMetadata {
  /// Metadata for this consumer group and topic for all partition indexes it
  /// has metadata for.
  ///
  /// Optional.
  core.Map<core.String, ConsumerPartitionMetadata>? partitions;

  ConsumerTopicMetadata({
    this.partitions,
  });

  ConsumerTopicMetadata.fromJson(core.Map json_)
      : this(
          partitions:
              (json_['partitions'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              ConsumerPartitionMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitions != null) 'partitions': partitions!,
      };
}

/// Context represents an independent schema grouping in a schema registry
/// instance.
class Context {
  /// Identifier.
  ///
  /// The name of the context. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}/contexts/{context}`
  /// The context name {context} can contain the following: * Up to 255
  /// characters. * Allowed characters: letters (uppercase or lowercase),
  /// numbers, and the following special characters: `.`, `-`, `_`, `+`, `%`,
  /// and `~`.
  core.String? name;

  /// The subjects of the context.
  ///
  /// Optional.
  core.List<core.String>? subjects;

  Context({
    this.name,
    this.subjects,
  });

  Context.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          subjects: (json_['subjects'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (subjects != null) 'subjects': subjects!,
      };
}

/// Request to create a schema registry instance.
class CreateSchemaRegistryRequest {
  /// The schema registry instance to create.
  ///
  /// The name field is ignored.
  ///
  /// Required.
  SchemaRegistry? schemaRegistry;

  /// The schema registry instance ID to use for this schema registry.
  ///
  /// The ID must contain only letters (a-z, A-Z), numbers (0-9), and
  /// underscores (-). The maximum length is 63 characters. The ID must not
  /// start with a number.
  ///
  /// Required.
  core.String? schemaRegistryId;

  CreateSchemaRegistryRequest({
    this.schemaRegistry,
    this.schemaRegistryId,
  });

  CreateSchemaRegistryRequest.fromJson(core.Map json_)
      : this(
          schemaRegistry: json_.containsKey('schemaRegistry')
              ? SchemaRegistry.fromJson(json_['schemaRegistry']
                  as core.Map<core.String, core.dynamic>)
              : null,
          schemaRegistryId: json_['schemaRegistryId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schemaRegistry != null) 'schemaRegistry': schemaRegistry!,
        if (schemaRegistryId != null) 'schemaRegistryId': schemaRegistryId!,
      };
}

/// Request for CreateVersion.
class CreateVersionRequest {
  /// The schema ID of the schema.
  ///
  /// If not specified, the schema ID will be generated by the server. If the
  /// schema ID is specified, it must not be used by an existing schema that is
  /// different from the schema to be created.
  ///
  /// Optional.
  core.int? id;

  /// If true, the schema will be normalized before being stored.
  ///
  /// The default is false.
  ///
  /// Optional.
  core.bool? normalize;

  /// The schema references used by the schema.
  ///
  /// Optional.
  core.List<SchemaReference>? references;

  /// The schema payload
  ///
  /// Required.
  core.String? schema;

  /// The type of the schema.
  ///
  /// It is optional. If not specified, the schema type will be AVRO.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type. The default will be AVRO.
  /// - "AVRO" : Avro schema type.
  /// - "JSON" : JSON schema type.
  /// - "PROTOBUF" : Protobuf schema type.
  core.String? schemaType;

  /// The version to create.
  ///
  /// It is optional. If not specified, the version will be created with the max
  /// version ID of the subject increased by 1. If the version ID is specified,
  /// it will be used as the new version ID and must not be used by an existing
  /// version of the subject.
  ///
  /// Optional.
  core.int? version;

  CreateVersionRequest({
    this.id,
    this.normalize,
    this.references,
    this.schema,
    this.schemaType,
    this.version,
  });

  CreateVersionRequest.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.int?,
          normalize: json_['normalize'] as core.bool?,
          references: (json_['references'] as core.List?)
              ?.map((value) => SchemaReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          schema: json_['schema'] as core.String?,
          schemaType: json_['schemaType'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (normalize != null) 'normalize': normalize!,
        if (references != null) 'references': references!,
        if (schema != null) 'schema': schema!,
        if (schemaType != null) 'schemaType': schemaType!,
        if (version != null) 'version': version!,
      };
}

/// Response for CreateVersion.
class CreateVersionResponse {
  /// The unique identifier of the schema created.
  core.int? id;

  CreateVersionResponse({
    this.id,
  });

  CreateVersionResponse.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Configuration properties for a Kafka cluster deployed to Google Cloud
/// Platform.
class GcpConfig {
  /// Access configuration for the Kafka cluster.
  ///
  /// Required.
  AccessConfig? accessConfig;

  /// The Cloud KMS Key name to use for encryption.
  ///
  /// The key must be located in the same region as the cluster and cannot be
  /// changed. Structured like:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  ///
  /// Optional. Immutable.
  core.String? kmsKey;

  GcpConfig({
    this.accessConfig,
    this.kmsKey,
  });

  GcpConfig.fromJson(core.Map json_)
      : this(
          accessConfig: json_.containsKey('accessConfig')
              ? AccessConfig.fromJson(
                  json_['accessConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          kmsKey: json_['kmsKey'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessConfig != null) 'accessConfig': accessConfig!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
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
typedef HttpBody = $HttpBody;

/// Response for ListAcls.
class ListAclsResponse {
  /// The list of acls in the requested parent.
  ///
  /// The order of the acls is unspecified.
  core.List<Acl>? acls;

  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  ListAclsResponse({
    this.acls,
    this.nextPageToken,
  });

  ListAclsResponse.fromJson(core.Map json_)
      : this(
          acls: (json_['acls'] as core.List?)
              ?.map((value) =>
                  Acl.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acls != null) 'acls': acls!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListClusters.
class ListClustersResponse {
  /// The list of Clusters in the requested parent.
  core.List<Cluster>? clusters;

  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListClustersResponse({
    this.clusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListClustersResponse.fromJson(core.Map json_)
      : this(
          clusters: (json_['clusters'] as core.List?)
              ?.map((value) => Cluster.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusters != null) 'clusters': clusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListConnectClusters.
class ListConnectClustersResponse {
  /// The list of Connect clusters in the requested parent.
  core.List<ConnectCluster>? connectClusters;

  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectClustersResponse({
    this.connectClusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectClustersResponse.fromJson(core.Map json_)
      : this(
          connectClusters: (json_['connectClusters'] as core.List?)
              ?.map((value) => ConnectCluster.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectClusters != null) 'connectClusters': connectClusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListConnectors.
class ListConnectorsResponse {
  /// The list of connectors in the requested parent.
  core.List<Connector>? connectors;

  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  ListConnectorsResponse({
    this.connectors,
    this.nextPageToken,
  });

  ListConnectorsResponse.fromJson(core.Map json_)
      : this(
          connectors: (json_['connectors'] as core.List?)
              ?.map((value) => Connector.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectors != null) 'connectors': connectors!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for ListConsumerGroups.
class ListConsumerGroupsResponse {
  /// The list of consumer group in the requested parent.
  ///
  /// The order of the consumer groups is unspecified.
  core.List<ConsumerGroup>? consumerGroups;

  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  ListConsumerGroupsResponse({
    this.consumerGroups,
    this.nextPageToken,
  });

  ListConsumerGroupsResponse.fromJson(core.Map json_)
      : this(
          consumerGroups: (json_['consumerGroups'] as core.List?)
              ?.map((value) => ConsumerGroup.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerGroups != null) 'consumerGroups': consumerGroups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Request for ListSchemaRegistries.
class ListSchemaRegistriesResponse {
  /// The schema registry instances.
  core.List<SchemaRegistry>? schemaRegistries;

  ListSchemaRegistriesResponse({
    this.schemaRegistries,
  });

  ListSchemaRegistriesResponse.fromJson(core.Map json_)
      : this(
          schemaRegistries: (json_['schemaRegistries'] as core.List?)
              ?.map((value) => SchemaRegistry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schemaRegistries != null) 'schemaRegistries': schemaRegistries!,
      };
}

/// Response for ListTopics.
class ListTopicsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The list of topics in the requested parent.
  ///
  /// The order of the topics is unspecified.
  core.List<Topic>? topics;

  ListTopicsResponse({
    this.nextPageToken,
    this.topics,
  });

  ListTopicsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          topics: (json_['topics'] as core.List?)
              ?.map((value) =>
                  Topic.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (topics != null) 'topics': topics!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Request for LookupVersion.
class LookupVersionRequest {
  /// If true, soft-deleted versions will be included in lookup, no matter if
  /// the subject is active or soft-deleted.
  ///
  /// If false, soft-deleted versions will be excluded. The default is false.
  ///
  /// Optional.
  core.bool? deleted;

  /// If true, the schema will be normalized before being looked up.
  ///
  /// The default is false.
  ///
  /// Optional.
  core.bool? normalize;

  /// The schema references used by the schema.
  ///
  /// Optional.
  core.List<SchemaReference>? references;

  /// The schema payload
  ///
  /// Required.
  core.String? schema;

  /// The schema type of the schema.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type. The default will be AVRO.
  /// - "AVRO" : Avro schema type.
  /// - "JSON" : JSON schema type.
  /// - "PROTOBUF" : Protobuf schema type.
  core.String? schemaType;

  LookupVersionRequest({
    this.deleted,
    this.normalize,
    this.references,
    this.schema,
    this.schemaType,
  });

  LookupVersionRequest.fromJson(core.Map json_)
      : this(
          deleted: json_['deleted'] as core.bool?,
          normalize: json_['normalize'] as core.bool?,
          references: (json_['references'] as core.List?)
              ?.map((value) => SchemaReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          schema: json_['schema'] as core.String?,
          schemaType: json_['schemaType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
        if (normalize != null) 'normalize': normalize!,
        if (references != null) 'references': references!,
        if (schema != null) 'schema': schema!,
        if (schemaType != null) 'schemaType': schemaType!,
      };
}

/// The configuration of a Virtual Private Cloud (VPC) network that can access
/// the Kafka cluster.
class NetworkConfig {
  /// Name of the VPC subnet in which to create Private Service Connect (PSC)
  /// endpoints for the Kafka brokers and bootstrap address.
  ///
  /// Structured like:
  /// projects/{project}/regions/{region}/subnetworks/{subnet_id} The subnet
  /// must be located in the same region as the Kafka cluster. The project may
  /// differ. Multiple subnets from the same parent network must not be
  /// specified.
  ///
  /// Required.
  core.String? subnet;

  NetworkConfig({
    this.subnet,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          subnet: json_['subnet'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subnet != null) 'subnet': subnet!,
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
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// Request for PauseConnector.
typedef PauseConnectorRequest = $Empty;

/// Response for PauseConnector.
typedef PauseConnectorResponse = $Empty;

/// Defines rebalancing behavior of a Kafka cluster.
class RebalanceConfig {
  /// The rebalance behavior for the cluster.
  ///
  /// When not specified, defaults to `NO_REBALANCE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : A mode was not specified. Do not use.
  /// - "NO_REBALANCE" : Do not rebalance automatically.
  /// - "AUTO_REBALANCE_ON_SCALE_UP" : Automatically rebalance topic partitions
  /// among brokers when the cluster is scaled up.
  core.String? mode;

  RebalanceConfig({
    this.mode,
  });

  RebalanceConfig.fromJson(core.Map json_)
      : this(
          mode: json_['mode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// Response for RemoveAclEntry.
class RemoveAclEntryResponse {
  /// The updated acl.
  ///
  /// Returned if the removed acl entry was not the last entry in the acl.
  Acl? acl;

  /// Returned with value true if the removed acl entry was the last entry in
  /// the acl, resulting in acl deletion.
  core.bool? aclDeleted;

  RemoveAclEntryResponse({
    this.acl,
    this.aclDeleted,
  });

  RemoveAclEntryResponse.fromJson(core.Map json_)
      : this(
          acl: json_.containsKey('acl')
              ? Acl.fromJson(
                  json_['acl'] as core.Map<core.String, core.dynamic>)
              : null,
          aclDeleted: json_['aclDeleted'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (aclDeleted != null) 'aclDeleted': aclDeleted!,
      };
}

/// Request for RestartConnector.
typedef RestartConnectorRequest = $Empty;

/// Response for RestartConnector.
typedef RestartConnectorResponse = $Empty;

/// Request for ResumeConnector.
typedef ResumeConnectorRequest = $Empty;

/// Response for ResumeConnector.
typedef ResumeConnectorResponse = $Empty;

/// Schema for a Kafka message.
class Schema {
  /// The schema references used by the schema.
  ///
  /// Optional.
  core.List<SchemaReference>? references;

  /// The schema payload.
  core.String? schema;

  /// The schema type of the schema.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type. The default will be AVRO.
  /// - "AVRO" : Avro schema type.
  /// - "JSON" : JSON schema type.
  /// - "PROTOBUF" : Protobuf schema type.
  core.String? schemaType;

  Schema({
    this.references,
    this.schema,
    this.schemaType,
  });

  Schema.fromJson(core.Map json_)
      : this(
          references: (json_['references'] as core.List?)
              ?.map((value) => SchemaReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          schema: json_['schema'] as core.String?,
          schemaType: json_['schemaType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (references != null) 'references': references!,
        if (schema != null) 'schema': schema!,
        if (schemaType != null) 'schemaType': schemaType!,
      };
}

/// SchemaConfig represents configuration for a schema registry or a specific
/// subject.
class SchemaConfig {
  /// The subject to which this subject is an alias of.
  ///
  /// Only applicable for subject config.
  ///
  /// Optional.
  core.String? alias;

  /// The compatibility type of the schema.
  ///
  /// The default value is BACKWARD. If unset in a SchemaSubject-level
  /// SchemaConfig, defaults to the global value. If unset in a
  /// SchemaRegistry-level SchemaConfig, reverts to the default value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "NONE" : No compatibility check.
  /// - "BACKWARD" : Backwards compatible with the most recent version.
  /// - "BACKWARD_TRANSITIVE" : Backwards compatible with all previous versions.
  /// - "FORWARD" : Forwards compatible with the most recent version.
  /// - "FORWARD_TRANSITIVE" : Forwards compatible with all previous versions.
  /// - "FULL" : Backwards and forwards compatible with the most recent version.
  /// - "FULL_TRANSITIVE" : Backwards and forwards compatible with all previous
  /// versions.
  core.String? compatibility;

  /// If true, the schema will be normalized before being stored or looked up.
  ///
  /// The default is false. If unset in a SchemaSubject-level SchemaConfig, the
  /// global value will be used. If unset in a SchemaRegistry-level
  /// SchemaConfig, reverts to the default value.
  ///
  /// Optional.
  core.bool? normalize;

  SchemaConfig({
    this.alias,
    this.compatibility,
    this.normalize,
  });

  SchemaConfig.fromJson(core.Map json_)
      : this(
          alias: json_['alias'] as core.String?,
          compatibility: json_['compatibility'] as core.String?,
          normalize: json_['normalize'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (normalize != null) 'normalize': normalize!,
      };
}

/// SchemaMode represents the mode of a schema registry or a specific subject.
///
/// Four modes are supported: * NONE: deprecated. This was the default mode for
/// a subject, but now the default is unset (which means use the global schema
/// registry setting) * READONLY: The schema registry is in read-only mode. *
/// READWRITE: The schema registry is in read-write mode, which allows limited
/// write operations on the schema. * IMPORT: The schema registry is in import
/// mode, which allows more editing operations on the schema for data importing
/// purposes.
class SchemaMode {
  /// The mode type of a schema registry (READWRITE by default) or of a subject
  /// (unset by default, which means use the global schema registry setting).
  ///
  /// Required.
  /// Possible string values are:
  /// - "NONE" : The default / unset value. The subject mode is NONE/unset by
  /// default, which means use the global schema registry mode. This should not
  /// be used for setting the mode.
  /// - "READONLY" : READONLY mode.
  /// - "READWRITE" : READWRITE mode.
  /// - "IMPORT" : IMPORT mode.
  core.String? mode;

  SchemaMode({
    this.mode,
  });

  SchemaMode.fromJson(core.Map json_)
      : this(
          mode: json_['mode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}

/// SchemaReference is a reference to a schema.
class SchemaReference {
  /// The name of the reference.
  ///
  /// Required.
  core.String? name;

  /// The subject of the reference.
  ///
  /// Required.
  core.String? subject;

  /// The version of the reference.
  ///
  /// Required.
  core.int? version;

  SchemaReference({
    this.name,
    this.subject,
    this.version,
  });

  SchemaReference.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          subject: json_['subject'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (subject != null) 'subject': subject!,
        if (version != null) 'version': version!,
      };
}

/// SchemaRegistry is a schema registry instance.
class SchemaRegistry {
  /// The contexts of the schema registry instance.
  ///
  /// Output only.
  core.List<core.String>? contexts;

  /// Identifier.
  ///
  /// The name of the schema registry instance. Structured like:
  /// `projects/{project}/locations/{location}/schemaRegistries/{schema_registry}`
  /// The instance name {schema_registry} can contain the following: * Up to 255
  /// characters. * Letters (uppercase or lowercase), numbers, and underscores.
  core.String? name;

  SchemaRegistry({
    this.contexts,
    this.name,
  });

  SchemaRegistry.fromJson(core.Map json_)
      : this(
          contexts: (json_['contexts'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contexts != null) 'contexts': contexts!,
        if (name != null) 'name': name!,
      };
}

/// Version of a schema.
class SchemaVersion {
  /// The schema ID.
  ///
  /// Required.
  core.int? id;

  /// The schema references used by the schema.
  ///
  /// Optional.
  core.List<SchemaReference>? references;

  /// The schema payload.
  ///
  /// Required.
  core.String? schema;

  /// The schema type of the schema.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type. The default will be AVRO.
  /// - "AVRO" : Avro schema type.
  /// - "JSON" : JSON schema type.
  /// - "PROTOBUF" : Protobuf schema type.
  core.String? schemaType;

  /// The subject of the version.
  ///
  /// Required.
  core.String? subject;

  /// The version ID
  ///
  /// Required.
  core.int? version;

  SchemaVersion({
    this.id,
    this.references,
    this.schema,
    this.schemaType,
    this.subject,
    this.version,
  });

  SchemaVersion.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.int?,
          references: (json_['references'] as core.List?)
              ?.map((value) => SchemaReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          schema: json_['schema'] as core.String?,
          schemaType: json_['schemaType'] as core.String?,
          subject: json_['subject'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (references != null) 'references': references!,
        if (schema != null) 'schema': schema!,
        if (schemaType != null) 'schemaType': schemaType!,
        if (subject != null) 'subject': subject!,
        if (version != null) 'version': version!,
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

/// Request for StopConnector.
typedef StopConnectorRequest = $Empty;

/// Response for StopConnector.
typedef StopConnectorResponse = $Empty;

/// Task Retry Policy is implemented on a best-effort basis.
///
/// Retry delay will be exponential based on provided minimum and maximum
/// backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. Note that the
/// delay between consecutive task restarts may not always precisely match the
/// configured settings. This can happen when the ConnectCluster is in
/// rebalancing state or if the ConnectCluster is unresponsive etc. The default
/// values for minimum and maximum backoffs are 60 seconds and 30 minutes
/// respectively.
class TaskRetryPolicy {
  /// The maximum amount of time to wait before retrying a failed task.
  ///
  /// This sets an upper bound for the backoff delay.
  ///
  /// Optional.
  core.String? maximumBackoff;

  /// The minimum amount of time to wait before retrying a failed task.
  ///
  /// This sets a lower bound for the backoff delay.
  ///
  /// Optional.
  core.String? minimumBackoff;

  TaskRetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  TaskRetryPolicy.fromJson(core.Map json_)
      : this(
          maximumBackoff: json_['maximumBackoff'] as core.String?,
          minimumBackoff: json_['minimumBackoff'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximumBackoff != null) 'maximumBackoff': maximumBackoff!,
        if (minimumBackoff != null) 'minimumBackoff': minimumBackoff!,
      };
}

/// The TLS configuration for the Kafka cluster.
class TlsConfig {
  /// A list of rules for mapping from SSL principal names to short names.
  ///
  /// These are applied in order by Kafka. Refer to the Apache Kafka
  /// documentation for `ssl.principal.mapping.rules` for the precise formatting
  /// details and syntax. Example:
  /// "RULE:^CN=(.*?),OU=ServiceUsers.*$/$1@example.com/,DEFAULT" This is a
  /// static Kafka broker configuration. Setting or modifying this field will
  /// trigger a rolling restart of the Kafka brokers to apply the change. An
  /// empty string means no rules are applied (Kafka default).
  ///
  /// Optional.
  core.String? sslPrincipalMappingRules;

  /// The configuration of the broker truststore.
  ///
  /// If specified, clients can use mTLS for authentication.
  ///
  /// Optional.
  TrustConfig? trustConfig;

  TlsConfig({
    this.sslPrincipalMappingRules,
    this.trustConfig,
  });

  TlsConfig.fromJson(core.Map json_)
      : this(
          sslPrincipalMappingRules:
              json_['sslPrincipalMappingRules'] as core.String?,
          trustConfig: json_.containsKey('trustConfig')
              ? TrustConfig.fromJson(
                  json_['trustConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sslPrincipalMappingRules != null)
          'sslPrincipalMappingRules': sslPrincipalMappingRules!,
        if (trustConfig != null) 'trustConfig': trustConfig!,
      };
}

/// A Kafka topic in a given cluster.
class Topic {
  /// Configurations for the topic that are overridden from the cluster
  /// defaults.
  ///
  /// The key of the map is a Kafka topic property name, for example:
  /// `cleanup.policy`, `compression.type`.
  ///
  /// Optional.
  core.Map<core.String, core.String>? configs;

  /// Identifier.
  ///
  /// The name of the topic. The `topic` segment is used when connecting
  /// directly to the cluster. Structured like:
  /// projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}
  core.String? name;

  /// The number of partitions this topic has.
  ///
  /// The partition count can only be increased, not decreased. Please note that
  /// if partitions are increased for a topic that has a key, the partitioning
  /// logic or the ordering of the messages will be affected.
  ///
  /// Required.
  core.int? partitionCount;

  /// The number of replicas of each partition.
  ///
  /// A replication factor of 3 is recommended for high availability.
  ///
  /// Required. Immutable.
  core.int? replicationFactor;

  Topic({
    this.configs,
    this.name,
    this.partitionCount,
    this.replicationFactor,
  });

  Topic.fromJson(core.Map json_)
      : this(
          configs:
              (json_['configs'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          partitionCount: json_['partitionCount'] as core.int?,
          replicationFactor: json_['replicationFactor'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
        if (name != null) 'name': name!,
        if (partitionCount != null) 'partitionCount': partitionCount!,
        if (replicationFactor != null) 'replicationFactor': replicationFactor!,
      };
}

/// Sources of CA certificates to install in the broker's truststore.
class TrustConfig {
  /// Configuration for the Google Certificate Authority Service.
  ///
  /// Maximum 10.
  ///
  /// Optional.
  core.List<CertificateAuthorityServiceConfig>? casConfigs;

  TrustConfig({
    this.casConfigs,
  });

  TrustConfig.fromJson(core.Map json_)
      : this(
          casConfigs: (json_['casConfigs'] as core.List?)
              ?.map((value) => CertificateAuthorityServiceConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (casConfigs != null) 'casConfigs': casConfigs!,
      };
}

/// Request for updating schema config.
///
/// On a SchemaSubject-level SchemaConfig, an unset field will be removed from
/// the SchemaConfig.
class UpdateSchemaConfigRequest {
  /// The compatibility type of the schemas.
  ///
  /// Cannot be unset for a SchemaRegistry-level SchemaConfig. If unset on a
  /// SchemaSubject-level SchemaConfig, removes the compatibility field for the
  /// SchemaConfig.
  ///
  /// Required.
  /// Possible string values are:
  /// - "NONE" : No compatibility check.
  /// - "BACKWARD" : Backwards compatible with the most recent version.
  /// - "BACKWARD_TRANSITIVE" : Backwards compatible with all previous versions.
  /// - "FORWARD" : Forwards compatible with the most recent version.
  /// - "FORWARD_TRANSITIVE" : Forwards compatible with all previous versions.
  /// - "FULL" : Backwards and forwards compatible with the most recent version.
  /// - "FULL_TRANSITIVE" : Backwards and forwards compatible with all previous
  /// versions.
  core.String? compatibility;

  /// If true, the schema will be normalized before being stored or looked up.
  ///
  /// The default is false. Cannot be unset for a SchemaRegistry-level
  /// SchemaConfig. If unset on a SchemaSubject-level SchemaConfig, removes the
  /// normalize field for the SchemaConfig.
  ///
  /// Optional.
  core.bool? normalize;

  UpdateSchemaConfigRequest({
    this.compatibility,
    this.normalize,
  });

  UpdateSchemaConfigRequest.fromJson(core.Map json_)
      : this(
          compatibility: json_['compatibility'] as core.String?,
          normalize: json_['normalize'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibility != null) 'compatibility': compatibility!,
        if (normalize != null) 'normalize': normalize!,
      };
}

/// Request for updating schema registry or subject mode.
class UpdateSchemaModeRequest {
  /// The mode type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "NONE" : The default / unset value. The subject mode is NONE/unset by
  /// default, which means use the global schema registry mode. This should not
  /// be used for setting the mode.
  /// - "READONLY" : READONLY mode.
  /// - "READWRITE" : READWRITE mode.
  /// - "IMPORT" : IMPORT mode.
  core.String? mode;

  UpdateSchemaModeRequest({
    this.mode,
  });

  UpdateSchemaModeRequest.fromJson(core.Map json_)
      : this(
          mode: json_['mode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
      };
}
