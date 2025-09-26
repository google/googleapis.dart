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

/// Eventarc API - v1
///
/// Build event-driven applications on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/eventarc>
///
/// Create an instance of [EventarcApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsChannelConnectionsResource]
///     - [ProjectsLocationsChannelsResource]
///     - [ProjectsLocationsEnrollmentsResource]
///     - [ProjectsLocationsGoogleApiSourcesResource]
///     - [ProjectsLocationsKafkaSourcesResource]
///     - [ProjectsLocationsMessageBusesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPipelinesResource]
///     - [ProjectsLocationsProvidersResource]
///     - [ProjectsLocationsTriggersResource]
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

/// Build event-driven applications on Google Cloud Platform.
class EventarcApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  EventarcApi(
    http.Client client, {
    core.String rootUrl = 'https://eventarc.googleapis.com/',
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

  ProjectsLocationsChannelConnectionsResource get channelConnections =>
      ProjectsLocationsChannelConnectionsResource(_requester);
  ProjectsLocationsChannelsResource get channels =>
      ProjectsLocationsChannelsResource(_requester);
  ProjectsLocationsEnrollmentsResource get enrollments =>
      ProjectsLocationsEnrollmentsResource(_requester);
  ProjectsLocationsGoogleApiSourcesResource get googleApiSources =>
      ProjectsLocationsGoogleApiSourcesResource(_requester);
  ProjectsLocationsKafkaSourcesResource get kafkaSources =>
      ProjectsLocationsKafkaSourcesResource(_requester);
  ProjectsLocationsMessageBusesResource get messageBuses =>
      ProjectsLocationsMessageBusesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPipelinesResource get pipelines =>
      ProjectsLocationsPipelinesResource(_requester);
  ProjectsLocationsProvidersResource get providers =>
      ProjectsLocationsProvidersResource(_requester);
  ProjectsLocationsTriggersResource get triggers =>
      ProjectsLocationsTriggersResource(_requester);

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

  /// Get a GoogleChannelConfig.
  ///
  /// The name of the GoogleChannelConfig in the response is ALWAYS coded with
  /// projectID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the config to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleChannelConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChannelConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChannelConfig> getGoogleChannelConfig(
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
    return GoogleChannelConfig.fromJson(
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
  /// [extraLocationTypes] - Optional. Unless explicitly documented otherwise,
  /// don't use this unsupported field which is primarily intended for internal
  /// usage.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single GoogleChannelConfig
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the config. Must be in the format
  /// of, `projects/{project}/locations/{location}/googleChannelConfig`. In API
  /// responses, the config name always includes the projectID, regardless of
  /// whether the projectID or projectNumber was provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleChannelConfig$`.
  ///
  /// [updateMask] - The fields to be updated; only fields explicitly provided
  /// are updated. If no field mask is provided, all provided fields in the
  /// request are updated. To update all fields, provide a field mask of "*".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChannelConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChannelConfig> updateGoogleChannelConfig(
    GoogleChannelConfig request,
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
    return GoogleChannelConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsChannelConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsChannelConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new ChannelConnection in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this channel
  /// connection.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [channelConnectionId] - Required. The user-provided ID to be assigned to
  /// the channel connection.
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
    ChannelConnection request,
    core.String parent, {
    core.String? channelConnectionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (channelConnectionId != null)
        'channelConnectionId': [channelConnectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/channelConnections';

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

  /// Delete a single ChannelConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the channel connection to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channelConnections/\[^/\]+$`.
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

  /// Get a single ChannelConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the channel connection to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channelConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChannelConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChannelConnection> get(
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
    return ChannelConnection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channelConnections/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List channel connections.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection from which to list channel
  /// connections.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of channel connections to return on each
  /// page. Note: The service may send fewer responses.
  ///
  /// [pageToken] - The page token; provide the value from the `next_page_token`
  /// field in a previous `ListChannelConnections` call to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListChannelConnetions` match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/channelConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/channelConnections/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/channelConnections/\[^/\]+$`.
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

class ProjectsLocationsChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsChannelsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new channel in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this channel.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [channelId] - Required. The user-provided ID to be assigned to the
  /// channel.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    Channel request,
    core.String parent, {
    core.String? channelId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/channels';

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

  /// Delete a single channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the channel to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single Channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the channel to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List channels.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list channels on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [orderBy] - The sorting order of the resources returned. Value should be a
  /// comma-separated list of fields. The default sorting order is ascending. To
  /// specify descending order for a field, append a `desc` suffix; for example:
  /// `name desc, channel_id`.
  ///
  /// [pageSize] - The maximum number of channels to return on each page. Note:
  /// The service may send fewer.
  ///
  /// [pageToken] - The page token; provide the value from the `next_page_token`
  /// field in a previous `ListChannels` call to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListChannels` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/channels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the channel. Must be unique within
  /// the location on the project and must be in
  /// `projects/{project}/locations/{location}/channels/{channel_id}` format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [updateMask] - The fields to be updated; only fields explicitly provided
  /// are updated. If no field mask is provided, all provided fields in the
  /// request are updated. To update all fields, provide a field mask of "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    Channel request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/channels/\[^/\]+$`.
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

class ProjectsLocationsEnrollmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnrollmentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new Enrollment in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this
  /// enrollment.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [enrollmentId] - Required. The user-provided ID to be assigned to the
  /// Enrollment. It should match the format
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    Enrollment request,
    core.String parent, {
    core.String? enrollmentId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enrollmentId != null) 'enrollmentId': [enrollmentId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/enrollments';

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

  /// Delete a single Enrollment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Enrollment to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the Enrollment is not
  /// found, the request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If provided, the Enrollment will only be deleted if the
  /// etag matches the current etag on the resource.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single Enrollment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Enrollment to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Enrollment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Enrollment> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Enrollment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Enrollments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list triggers on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter field that the list request will filter
  /// on. Possible filtersare described in https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. The sorting order of the resources returned. Value
  /// should be a comma-separated list of fields. The default sorting order is
  /// ascending. To specify descending order for a field, append a `desc`
  /// suffix; for example: `name desc, update_time`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return on each
  /// page. Note: The service may send fewer.
  ///
  /// [pageToken] - Optional. The page token; provide the value from the
  /// `next_page_token` field in a previous call to retrieve the subsequent
  /// page. When paginating, all other parameters provided must match the
  /// previous call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnrollmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnrollmentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/enrollments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEnrollmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single Enrollment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/enrollments/{enrollment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the Enrollment is not
  /// found, a new Enrollment will be created. In this situation, `update_mask`
  /// is ignored.
  ///
  /// [updateMask] - Optional. The fields to be updated; only fields explicitly
  /// provided are updated. If no field mask is provided, all provided fields in
  /// the request are updated. To update all fields, provide a field mask of
  /// "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    Enrollment request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/enrollments/\[^/\]+$`.
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

class ProjectsLocationsGoogleApiSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoogleApiSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new GoogleApiSource in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this google api
  /// source.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [googleApiSourceId] - Required. The user-provided ID to be assigned to the
  /// GoogleApiSource. It should match the format
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    GoogleApiSource request,
    core.String parent, {
    core.String? googleApiSourceId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (googleApiSourceId != null) 'googleApiSourceId': [googleApiSourceId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/googleApiSources';

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

  /// Delete a single GoogleApiSource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoogleApiSource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the MessageBus is not
  /// found, the request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If provided, the MessageBus will only be deleted if the
  /// etag matches the current etag on the resource.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single GoogleApiSource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the google api source to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiSource> get(
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
    return GoogleApiSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List GoogleApiSources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list GoogleApiSources on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter field that the list request will filter
  /// on. Possible filtersare described in https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. The sorting order of the resources returned. Value
  /// should be a comma-separated list of fields. The default sorting order is
  /// ascending. To specify descending order for a field, append a `desc`
  /// suffix; for example: `name desc, update_time`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return on each
  /// page. Note: The service may send fewer.
  ///
  /// [pageToken] - Optional. The page token; provide the value from the
  /// `next_page_token` field in a previous call to retrieve the subsequent
  /// page. When paginating, all other parameters provided must match the
  /// previous call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoogleApiSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoogleApiSourcesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/googleApiSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoogleApiSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single GoogleApiSource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the GoogleApiSource is not
  /// found, a new GoogleApiSource will be created. In this situation,
  /// `update_mask` is ignored.
  ///
  /// [updateMask] - Optional. The fields to be updated; only fields explicitly
  /// provided are updated. If no field mask is provided, all provided fields in
  /// the request are updated. To update all fields, provide a field mask of
  /// "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    GoogleApiSource request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/googleApiSources/\[^/\]+$`.
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

class ProjectsLocationsKafkaSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKafkaSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kafkaSources/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/kafkaSources/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/kafkaSources/\[^/\]+$`.
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

class ProjectsLocationsMessageBusesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMessageBusesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new MessageBus in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this message
  /// bus.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [messageBusId] - Required. The user-provided ID to be assigned to the
  /// MessageBus. It should match the format
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    MessageBus request,
    core.String parent, {
    core.String? messageBusId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (messageBusId != null) 'messageBusId': [messageBusId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messageBuses';

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

  /// Delete a single message bus.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the MessageBus to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the MessageBus is not
  /// found, the request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If provided, the MessageBus will only be deleted if the
  /// etag matches the current etag on the resource.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single MessageBus.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the message bus to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MessageBus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MessageBus> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MessageBus.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List message buses.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list message buses on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter field that the list request will filter
  /// on. Possible filtersare described in https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. The sorting order of the resources returned. Value
  /// should be a comma-separated list of fields. The default sorting order is
  /// ascending. To specify descending order for a field, append a `desc`
  /// suffix; for example: `name desc, update_time`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return on each
  /// page. Note: The service may send fewer.
  ///
  /// [pageToken] - Optional. The page token; provide the value from the
  /// `next_page_token` field in a previous call to retrieve the subsequent
  /// page. When paginating, all other parameters provided must match the
  /// previous call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMessageBusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMessageBusesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messageBuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMessageBusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List message bus enrollments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent message bus to list enrollments on.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return on each
  /// page. Note: The service may send fewer.
  ///
  /// [pageToken] - Optional. The page token; provide the value from the
  /// `next_page_token` field in a previous call to retrieve the subsequent
  /// page. When paginating, all other parameters provided must match the
  /// previous call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMessageBusEnrollmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMessageBusEnrollmentsResponse> listEnrollments(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':listEnrollments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMessageBusEnrollmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single message bus.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the form
  /// projects/{project}/locations/{location}/messageBuses/{message_bus}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the MessageBus is not
  /// found, a new MessageBus will be created. In this situation, `update_mask`
  /// is ignored.
  ///
  /// [updateMask] - Optional. The fields to be updated; only fields explicitly
  /// provided are updated. If no field mask is provided, all provided fields in
  /// the request are updated. To update all fields, provide a field mask of
  /// "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    MessageBus request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/messageBuses/\[^/\]+$`.
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

class ProjectsLocationsPipelinesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new Pipeline in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this pipeline.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pipelineId] - Required. The user-provided ID to be assigned to the
  /// Pipeline. It should match the format `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    Pipeline request,
    core.String parent, {
    core.String? pipelineId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pipelineId != null) 'pipelineId': [pipelineId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pipelines';

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

  /// Delete a single pipeline.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Pipeline to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the Pipeline is not found,
  /// the request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. If provided, the Pipeline will only be deleted if the
  /// etag matches the current etag on the resource.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single Pipeline.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pipeline to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Pipeline> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Pipeline.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List pipelines.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list pipelines on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. The filter field that the list request will filter
  /// on. Possible filters are described in https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. The sorting order of the resources returned. Value
  /// should be a comma-separated list of fields. The default sorting order is
  /// ascending. To specify descending order for a field, append a `desc`
  /// suffix; for example: `name desc, update_time`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return on each
  /// page. Note: The service may send fewer.
  ///
  /// [pageToken] - Optional. The page token; provide the value from the
  /// `next_page_token` field in a previous call to retrieve the subsequent
  /// page. When paginating, all other parameters provided must match the
  /// previous call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPipelinesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPipelinesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pipelines';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPipelinesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single pipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the Pipeline. Must be unique
  /// within the location of the project and must be in
  /// `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the Pipeline is not found,
  /// a new Pipeline will be created. In this situation, `update_mask` is
  /// ignored.
  ///
  /// [updateMask] - Optional. The fields to be updated; only fields explicitly
  /// provided are updated. If no field mask is provided, all provided fields in
  /// the request are updated. To update all fields, provide a field mask of
  /// "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    Pipeline request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
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

class ProjectsLocationsProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a single Provider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Provider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Provider> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Provider.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List providers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the provider to get.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter field that the list request will filter on.
  ///
  /// [orderBy] - The sorting order of the resources returned. Value should be a
  /// comma-separated list of fields. The default sorting oder is ascending. To
  /// specify descending order for a field, append a `desc` suffix; for example:
  /// `name desc, _id`.
  ///
  /// [pageSize] - The maximum number of providers to return on each page.
  ///
  /// [pageToken] - The page token; provide the value from the `next_page_token`
  /// field in a previous `ListProviders` call to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListProviders` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProvidersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsTriggersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTriggersResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new trigger in a particular project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which to add this trigger.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [triggerId] - Required. The user-provided ID to be assigned to the
  /// trigger.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    Trigger request,
    core.String parent, {
    core.String? triggerId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (triggerId != null) 'triggerId': [triggerId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

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

  /// Delete a single trigger.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the trigger to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the trigger is not found, the request
  /// will succeed but no action will be taken on the server.
  ///
  /// [etag] - If provided, the trigger will only be deleted if the etag matches
  /// the current etag on the resource.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Get a single trigger.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the trigger to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trigger> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Trigger.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List triggers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection to list triggers on.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter field. Used to filter the Triggers to be listed.
  /// Possible filters are described in https://google.aip.dev/160. For example,
  /// using "?filter=destination:gke" would list only Triggers with a gke
  /// destination.
  ///
  /// [orderBy] - The sorting order of the resources returned. Value should be a
  /// comma-separated list of fields. The default sorting order is ascending. To
  /// specify descending order for a field, append a `desc` suffix; for example:
  /// `name desc, trigger_id`.
  ///
  /// [pageSize] - The maximum number of triggers to return on each page. Note:
  /// The service may send fewer.
  ///
  /// [pageToken] - The page token; provide the value from the `next_page_token`
  /// field in a previous `ListTriggers` call to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListTriggers` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTriggersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/triggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTriggersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the trigger. Must be unique within
  /// the location of the project and must be in
  /// `projects/{project}/locations/{location}/triggers/{trigger}` format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
  ///
  /// [allowMissing] - If set to true, and the trigger is not found, a new
  /// trigger will be created. In this situation, `update_mask` is ignored.
  ///
  /// [updateMask] - The fields to be updated; only fields explicitly provided
  /// are updated. If no field mask is provided, all provided fields in the
  /// request are updated. To update all fields, provide a field mask of "*".
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not post it.
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
  async.Future<GoogleLongrunningOperation> patch(
    Trigger request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/triggers/\[^/\]+$`.
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
typedef AuditLogConfig = $AuditLogConfig;

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

/// A representation of the Channel resource.
///
/// A Channel is a resource on which event providers publish their events. The
/// published events are delivered through the transport associated with the
/// channel. Note that a channel is associated with exactly one event provider.
class Channel {
  /// The activation token for the channel.
  ///
  /// The token must be used by the provider to register the channel for
  /// publishing.
  ///
  /// Output only.
  core.String? activationToken;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  ///
  /// It must match the pattern `projects / * /locations / * /keyRings / *
  /// /cryptoKeys / * `.
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the channel.
  ///
  /// Must be unique within the location on the project and must be in
  /// `projects/{project}/locations/{location}/channels/{channel_id}` format.
  ///
  /// Required.
  core.String? name;

  /// The name of the event provider (e.g. Eventarc SaaS partner) associated
  /// with the channel.
  ///
  /// This provider will be granted permissions to publish events to the
  /// channel. Format:
  /// `projects/{project}/locations/{location}/providers/{provider_id}`.
  core.String? provider;

  /// The name of the Pub/Sub topic created and managed by Eventarc system as a
  /// transport for the event delivery.
  ///
  /// Format: `projects/{project}/topics/{topic_id}`.
  ///
  /// Output only.
  core.String? pubsubTopic;

  /// Whether or not this Channel satisfies the requirements of physical zone
  /// separation
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The state of a Channel.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PENDING" : The PENDING state indicates that a Channel has been created
  /// successfully and there is a new activation token available for the
  /// subscriber to use to convey the Channel to the provider in order to create
  /// a Connection.
  /// - "ACTIVE" : The ACTIVE state indicates that a Channel has been
  /// successfully connected with the event provider. An ACTIVE Channel is ready
  /// to receive and route events from the event provider.
  /// - "INACTIVE" : The INACTIVE state indicates that the Channel cannot
  /// receive events permanently. There are two possible cases this state can
  /// happen: 1. The SaaS provider disconnected from this Channel. 2. The
  /// Channel activation token has expired but the SaaS provider wasn't
  /// connected. To re-establish a Connection with a provider, the subscriber
  /// should create a new Channel and give it to the provider.
  core.String? state;

  /// Server assigned unique identifier for the channel.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  Channel({
    this.activationToken,
    this.createTime,
    this.cryptoKeyName,
    this.labels,
    this.name,
    this.provider,
    this.pubsubTopic,
    this.satisfiesPzs,
    this.state,
    this.uid,
    this.updateTime,
  });

  Channel.fromJson(core.Map json_)
    : this(
        activationToken: json_['activationToken'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        provider: json_['provider'] as core.String?,
        pubsubTopic: json_['pubsubTopic'] as core.String?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationToken != null) 'activationToken': activationToken!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (provider != null) 'provider': provider!,
    if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A representation of the ChannelConnection resource.
///
/// A ChannelConnection is a resource which event providers create during the
/// activation process to establish a connection between the provider and the
/// subscriber channel.
class ChannelConnection {
  /// Input only.
  ///
  /// Activation token for the channel. The token will be used during the
  /// creation of ChannelConnection to bind the channel with the provider
  /// project. This field will not be stored in the provider resource.
  core.String? activationToken;

  /// The name of the connected subscriber Channel.
  ///
  /// This is a weak reference to avoid cross project and cross accounts
  /// references. This must be in
  /// `projects/{project}/location/{location}/channels/{channel_id}` format.
  ///
  /// Required.
  core.String? channel;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The name of the connection.
  ///
  /// Required.
  core.String? name;

  /// Server assigned ID of the resource.
  ///
  /// The server guarantees uniqueness and immutability until deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  ChannelConnection({
    this.activationToken,
    this.channel,
    this.createTime,
    this.labels,
    this.name,
    this.uid,
    this.updateTime,
  });

  ChannelConnection.fromJson(core.Map json_)
    : this(
        activationToken: json_['activationToken'] as core.String?,
        channel: json_['channel'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationToken != null) 'activationToken': activationToken!,
    if (channel != null) 'channel': channel!,
    if (createTime != null) 'createTime': createTime!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents a Cloud Run destination.
class CloudRun {
  /// The relative path on the Cloud Run service the events should be sent to.
  ///
  /// The value must conform to the definition of a URI path segment (section
  /// 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  ///
  /// Optional.
  core.String? path;

  /// The region the Cloud Run service is deployed in.
  ///
  /// Required.
  core.String? region;

  /// The name of the Cloud Run service being addressed.
  ///
  /// See
  /// https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services.
  /// Only services located in the same project as the trigger object can be
  /// addressed.
  ///
  /// Required.
  core.String? service;

  CloudRun({this.path, this.region, this.service});

  CloudRun.fromJson(core.Map json_)
    : this(
        path: json_['path'] as core.String?,
        region: json_['region'] as core.String?,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (path != null) 'path': path!,
    if (region != null) 'region': region!,
    if (service != null) 'service': service!,
  };
}

/// Represents a target of an invocation over HTTP.
class Destination {
  /// The Cloud Function resource name.
  ///
  /// Cloud Functions V1 and V2 are supported. Format:
  /// `projects/{project}/locations/{location}/functions/{function}` This is a
  /// read-only field. Creating Cloud Functions V1/V2 triggers is only supported
  /// via the Cloud Functions product. An error will be returned if the user
  /// sets this value.
  core.String? cloudFunction;

  /// Cloud Run fully-managed resource that receives the events.
  ///
  /// The resource should be in the same project as the trigger.
  CloudRun? cloudRun;

  /// A GKE service capable of receiving events.
  ///
  /// The service should be running in the same project as the trigger.
  GKE? gke;

  /// An HTTP endpoint destination described by an URI.
  HttpEndpoint? httpEndpoint;

  /// Network config is used to configure how Eventarc resolves and connect to a
  /// destination.
  ///
  /// This should only be used with HttpEndpoint destination type.
  ///
  /// Optional.
  NetworkConfig? networkConfig;

  /// The resource name of the Workflow whose Executions are triggered by the
  /// events.
  ///
  /// The Workflow resource should be deployed in the same project as the
  /// trigger. Format:
  /// `projects/{project}/locations/{location}/workflows/{workflow}`
  core.String? workflow;

  Destination({
    this.cloudFunction,
    this.cloudRun,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
    this.workflow,
  });

  Destination.fromJson(core.Map json_)
    : this(
        cloudFunction: json_['cloudFunction'] as core.String?,
        cloudRun:
            json_.containsKey('cloudRun')
                ? CloudRun.fromJson(
                  json_['cloudRun'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gke:
            json_.containsKey('gke')
                ? GKE.fromJson(
                  json_['gke'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpEndpoint:
            json_.containsKey('httpEndpoint')
                ? HttpEndpoint.fromJson(
                  json_['httpEndpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        networkConfig:
            json_.containsKey('networkConfig')
                ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        workflow: json_['workflow'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudFunction != null) 'cloudFunction': cloudFunction!,
    if (cloudRun != null) 'cloudRun': cloudRun!,
    if (gke != null) 'gke': gke!,
    if (httpEndpoint != null) 'httpEndpoint': httpEndpoint!,
    if (networkConfig != null) 'networkConfig': networkConfig!,
    if (workflow != null) 'workflow': workflow!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// An enrollment represents a subscription for messages on a particular message
/// bus.
///
/// It defines a matching criteria for messages on the bus and the subscriber
/// endpoint where matched messages should be delivered.
class Enrollment {
  /// Resource annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// A CEL expression identifying which messages this enrollment applies to.
  ///
  /// Required.
  core.String? celMatch;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Destination is the Pipeline that the Enrollment is delivering to.
  ///
  /// It must point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  ///
  /// Required.
  core.String? destination;

  /// Resource display name.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure
  /// that the client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the message bus identifying the source of the messages.
  ///
  /// It matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  ///
  /// Required. Immutable.
  core.String? messageBus;

  /// Identifier.
  ///
  /// Resource name of the form
  /// projects/{project}/locations/{location}/enrollments/{enrollment}
  core.String? name;

  /// Server assigned unique identifier for the channel.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  Enrollment({
    this.annotations,
    this.celMatch,
    this.createTime,
    this.destination,
    this.displayName,
    this.etag,
    this.labels,
    this.messageBus,
    this.name,
    this.uid,
    this.updateTime,
  });

  Enrollment.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        celMatch: json_['celMatch'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        destination: json_['destination'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        messageBus: json_['messageBus'] as core.String?,
        name: json_['name'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (celMatch != null) 'celMatch': celMatch!,
    if (createTime != null) 'createTime': createTime!,
    if (destination != null) 'destination': destination!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (messageBus != null) 'messageBus': messageBus!,
    if (name != null) 'name': name!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilter {
  /// The name of a CloudEvents attribute.
  ///
  /// Currently, only a subset of attributes are supported for filtering. You
  /// can \[retrieve a specific provider's supported event
  /// types\](/eventarc/docs/list-providers#describe-provider). All triggers
  /// MUST provide a filter for the 'type' attribute.
  ///
  /// Required.
  core.String? attribute;

  /// The operator used for matching the events with the value of the filter.
  ///
  /// If not specified, only events that have an exact key-value pair specified
  /// in the filter are matched. The allowed values are `path_pattern` and
  /// `match-path-pattern`. `path_pattern` is only allowed for GCFv1 triggers.
  ///
  /// Optional.
  core.String? operator;

  /// The value for the attribute.
  ///
  /// Required.
  core.String? value;

  EventFilter({this.attribute, this.operator, this.value});

  EventFilter.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        operator: json_['operator'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (operator != null) 'operator': operator!,
    if (value != null) 'value': value!,
  };
}

/// A representation of the event type resource.
class EventType {
  /// Human friendly description of what the event type is about.
  ///
  /// For example "Bucket created in Cloud Storage".
  ///
  /// Output only.
  core.String? description;

  /// URI for the event schema.
  ///
  /// For example
  /// "https://github.com/googleapis/google-cloudevents/blob/master/proto/google/events/cloud/storage/v1/events.proto"
  ///
  /// Output only.
  core.String? eventSchemaUri;

  /// Filtering attributes for the event type.
  ///
  /// Output only.
  core.List<FilteringAttribute>? filteringAttributes;

  /// The full name of the event type (for example,
  /// "google.cloud.storage.object.v1.finalized").
  ///
  /// In the form of {provider-specific-prefix}.{resource}.{version}.{verb}.
  /// Types MUST be versioned and event schemas are guaranteed to remain
  /// backward compatible within one version. Note that event type versions and
  /// API versions do not need to match.
  ///
  /// Output only.
  core.String? type;

  EventType({
    this.description,
    this.eventSchemaUri,
    this.filteringAttributes,
    this.type,
  });

  EventType.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        eventSchemaUri: json_['eventSchemaUri'] as core.String?,
        filteringAttributes:
            (json_['filteringAttributes'] as core.List?)
                ?.map(
                  (value) => FilteringAttribute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (eventSchemaUri != null) 'eventSchemaUri': eventSchemaUri!,
    if (filteringAttributes != null)
      'filteringAttributes': filteringAttributes!,
    if (type != null) 'type': type!,
  };
}

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

/// A representation of the FilteringAttribute resource.
///
/// Filtering attributes are per event type.
class FilteringAttribute {
  /// Attribute used for filtering the event type.
  ///
  /// Output only.
  core.String? attribute;

  /// Description of the purpose of the attribute.
  ///
  /// Output only.
  core.String? description;

  /// If true, the attribute accepts matching expressions in the Eventarc
  /// PathPattern format.
  ///
  /// Output only.
  core.bool? pathPatternSupported;

  /// If true, the triggers for this provider should always specify a filter on
  /// these attributes.
  ///
  /// Trigger creation will fail otherwise.
  ///
  /// Output only.
  core.bool? required;

  FilteringAttribute({
    this.attribute,
    this.description,
    this.pathPatternSupported,
    this.required,
  });

  FilteringAttribute.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        description: json_['description'] as core.String?,
        pathPatternSupported: json_['pathPatternSupported'] as core.bool?,
        required: json_['required'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (description != null) 'description': description!,
    if (pathPatternSupported != null)
      'pathPatternSupported': pathPatternSupported!,
    if (required != null) 'required': required!,
  };
}

/// Represents a GKE destination.
class GKE {
  /// The name of the cluster the GKE service is running in.
  ///
  /// The cluster must be running in the same project as the trigger being
  /// created.
  ///
  /// Required.
  core.String? cluster;

  /// The name of the Google Compute Engine in which the cluster resides, which
  /// can either be compute zone (for example, us-central1-a) for the zonal
  /// clusters or region (for example, us-central1) for regional clusters.
  ///
  /// Required.
  core.String? location;

  /// The namespace the GKE service is running in.
  ///
  /// Required.
  core.String? namespace;

  /// The relative path on the GKE service the events should be sent to.
  ///
  /// The value must conform to the definition of a URI path segment (section
  /// 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  ///
  /// Optional.
  core.String? path;

  /// Name of the GKE service.
  ///
  /// Required.
  core.String? service;

  GKE({this.cluster, this.location, this.namespace, this.path, this.service});

  GKE.fromJson(core.Map json_)
    : this(
        cluster: json_['cluster'] as core.String?,
        location: json_['location'] as core.String?,
        namespace: json_['namespace'] as core.String?,
        path: json_['path'] as core.String?,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cluster != null) 'cluster': cluster!,
    if (location != null) 'location': location!,
    if (namespace != null) 'namespace': namespace!,
    if (path != null) 'path': path!,
    if (service != null) 'service': service!,
  };
}

/// A GoogleApiSource represents a subscription of 1P events from a MessageBus.
class GoogleApiSource {
  /// Resource annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  ///
  /// It must match the pattern `projects / * /locations / * /keyRings / *
  /// /cryptoKeys / * `.
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// Destination is the message bus that the GoogleApiSource is delivering to.
  ///
  /// It must be point to the full resource name of a MessageBus. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/messagesBuses/{MESSAGE_BUS_ID)
  ///
  /// Required.
  core.String? destination;

  /// Resource display name.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure
  /// that the client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Config to control Platform logging for the GoogleApiSource.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// Identifier.
  ///
  /// Resource name of the form
  /// projects/{project}/locations/{location}/googleApiSources/{google_api_source}
  core.String? name;

  /// Config to enable subscribing to events from all projects in the
  /// GoogleApiSource's org.
  ///
  /// Optional.
  OrganizationSubscription? organizationSubscription;

  /// Config to enable subscribing to all events from a list of projects.
  ///
  /// All the projects must be in the same org as the GoogleApiSource.
  ///
  /// Optional.
  ProjectSubscriptions? projectSubscriptions;

  /// Server assigned unique identifier for the channel.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleApiSource({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.destination,
    this.displayName,
    this.etag,
    this.labels,
    this.loggingConfig,
    this.name,
    this.organizationSubscription,
    this.projectSubscriptions,
    this.uid,
    this.updateTime,
  });

  GoogleApiSource.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        destination: json_['destination'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        organizationSubscription:
            json_.containsKey('organizationSubscription')
                ? OrganizationSubscription.fromJson(
                  json_['organizationSubscription']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        projectSubscriptions:
            json_.containsKey('projectSubscriptions')
                ? ProjectSubscriptions.fromJson(
                  json_['projectSubscriptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (destination != null) 'destination': destination!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (name != null) 'name': name!,
    if (organizationSubscription != null)
      'organizationSubscription': organizationSubscription!,
    if (projectSubscriptions != null)
      'projectSubscriptions': projectSubscriptions!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A GoogleChannelConfig is a resource that stores the custom settings
/// respected by Eventarc first-party triggers in the matching region.
///
/// Once configured, first-party event data will be protected using the
/// specified custom managed encryption key instead of Google-managed encryption
/// keys.
class GoogleChannelConfig {
  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  ///
  /// It must match the pattern `projects / * /locations / * /keyRings / *
  /// /cryptoKeys / * `.
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the config.
  ///
  /// Must be in the format of,
  /// `projects/{project}/locations/{location}/googleChannelConfig`. In API
  /// responses, the config name always includes the projectID, regardless of
  /// whether the projectID or projectNumber was provided.
  ///
  /// Required.
  core.String? name;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleChannelConfig({
    this.cryptoKeyName,
    this.labels,
    this.name,
    this.updateTime,
  });

  GoogleChannelConfig.fromJson(core.Map json_)
    : this(
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents a target of an invocation over HTTP.
class GoogleCloudEventarcV1PipelineDestination {
  /// An authentication config used to authenticate message requests, such that
  /// destinations can verify the source.
  ///
  /// For example, this can be used with private Google Cloud destinations that
  /// require Google Cloud credentials for access like Cloud Run. This field is
  /// optional and should be set only by users interested in authenticated push.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig?
  authenticationConfig;

  /// An HTTP endpoint destination described by an URI.
  ///
  /// If a DNS FQDN is provided as the endpoint, Pipeline will create a peering
  /// zone to the consumer VPC and forward DNS requests to the VPC specified by
  /// network config to resolve the service endpoint. See:
  /// https://cloud.google.com/dns/docs/zones/zones-overview#peering_zones
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineDestinationHttpEndpoint? httpEndpoint;

  /// The resource name of the Message Bus to which events should be published.
  ///
  /// The Message Bus resource should exist in the same project as the Pipeline.
  /// Format:
  /// `projects/{project}/locations/{location}/messageBuses/{message_bus}`
  ///
  /// Optional.
  core.String? messageBus;

  /// Network config is used to configure how Pipeline resolves and connects to
  /// a destination.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineDestinationNetworkConfig? networkConfig;

  /// The message format before it is delivered to the destination.
  ///
  /// If not set, the message will be delivered in the format it was originally
  /// delivered to the Pipeline. This field can only be set if
  /// Pipeline.input_payload_format is also set.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMessagePayloadFormat? outputPayloadFormat;

  /// The resource name of the Pub/Sub topic to which events should be
  /// published.
  ///
  /// Format: `projects/{project}/locations/{location}/topics/{topic}`
  ///
  /// Optional.
  core.String? topic;

  /// The resource name of the Workflow whose Executions are triggered by the
  /// events.
  ///
  /// The Workflow resource should be deployed in the same project as the
  /// Pipeline. Format:
  /// `projects/{project}/locations/{location}/workflows/{workflow}`
  ///
  /// Optional.
  core.String? workflow;

  GoogleCloudEventarcV1PipelineDestination({
    this.authenticationConfig,
    this.httpEndpoint,
    this.messageBus,
    this.networkConfig,
    this.outputPayloadFormat,
    this.topic,
    this.workflow,
  });

  GoogleCloudEventarcV1PipelineDestination.fromJson(core.Map json_)
    : this(
        authenticationConfig:
            json_.containsKey('authenticationConfig')
                ? GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig.fromJson(
                  json_['authenticationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        httpEndpoint:
            json_.containsKey('httpEndpoint')
                ? GoogleCloudEventarcV1PipelineDestinationHttpEndpoint.fromJson(
                  json_['httpEndpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        messageBus: json_['messageBus'] as core.String?,
        networkConfig:
            json_.containsKey('networkConfig')
                ? GoogleCloudEventarcV1PipelineDestinationNetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputPayloadFormat:
            json_.containsKey('outputPayloadFormat')
                ? GoogleCloudEventarcV1PipelineMessagePayloadFormat.fromJson(
                  json_['outputPayloadFormat']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        topic: json_['topic'] as core.String?,
        workflow: json_['workflow'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authenticationConfig != null)
      'authenticationConfig': authenticationConfig!,
    if (httpEndpoint != null) 'httpEndpoint': httpEndpoint!,
    if (messageBus != null) 'messageBus': messageBus!,
    if (networkConfig != null) 'networkConfig': networkConfig!,
    if (outputPayloadFormat != null)
      'outputPayloadFormat': outputPayloadFormat!,
    if (topic != null) 'topic': topic!,
    if (workflow != null) 'workflow': workflow!,
  };
}

/// Represents a config used to authenticate message requests.
class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig {
  /// This authenticate method will apply Google OIDC tokens signed by a Google
  /// Cloud service account to the requests.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken?
  googleOidc;

  /// If specified, an
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2)
  /// will be generated and attached as an `Authorization` header in the HTTP
  /// request.
  ///
  /// This type of authorization should generally only be used when calling
  /// Google APIs hosted on *.googleapis.com.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken?
  oauthToken;

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig({
    this.googleOidc,
    this.oauthToken,
  });

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig.fromJson(
    core.Map json_,
  ) : this(
        googleOidc:
            json_.containsKey('googleOidc')
                ? GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken.fromJson(
                  json_['googleOidc'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauthToken:
            json_.containsKey('oauthToken')
                ? GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken.fromJson(
                  json_['oauthToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleOidc != null) 'googleOidc': googleOidc!,
    if (oauthToken != null) 'oauthToken': oauthToken!,
  };
}

/// Contains information needed for generating an
/// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
///
/// This type of authorization should generally only be used when calling Google
/// APIs hosted on *.googleapis.com.
class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken {
  /// OAuth scope to be used for generating OAuth access token.
  ///
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform" will be
  /// used.
  ///
  /// Optional.
  core.String? scope;

  /// Service account email used to generate the
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
  ///
  /// The principal who calls this API must have iam.serviceAccounts.actAs
  /// permission in the service account. See
  /// https://cloud.google.com/iam/docs/understanding-service-accounts for more
  /// information. Eventarc service agents must have
  /// roles/roles/iam.serviceAccountTokenCreator role to allow Pipeline to
  /// create OAuth2 tokens for authenticated requests.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken({
    this.scope,
    this.serviceAccount,
  });

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken.fromJson(
    core.Map json_,
  ) : this(
        scope: json_['scope'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (scope != null) 'scope': scope!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// Represents a config used to authenticate with a Google OIDC token using a
/// Google Cloud service account.
///
/// Use this authentication method to invoke your Cloud Run and Cloud Functions
/// destinations or HTTP endpoints that support Google OIDC.
class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken {
  /// Audience to be used to generate the OIDC Token.
  ///
  /// The audience claim identifies the recipient that the JWT is intended for.
  /// If unspecified, the destination URI will be used.
  ///
  /// Optional.
  core.String? audience;

  /// Service account email used to generate the OIDC Token.
  ///
  /// The principal who calls this API must have iam.serviceAccounts.actAs
  /// permission in the service account. See
  /// https://cloud.google.com/iam/docs/understanding-service-accounts for more
  /// information. Eventarc service agents must have
  /// roles/roles/iam.serviceAccountTokenCreator role to allow the Pipeline to
  /// create OpenID tokens for authenticated requests.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken({
    this.audience,
    this.serviceAccount,
  });

  GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken.fromJson(
    core.Map json_,
  ) : this(
        audience: json_['audience'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// Represents a HTTP endpoint destination.
class GoogleCloudEventarcV1PipelineDestinationHttpEndpoint {
  /// The CEL expression used to modify how the destination-bound HTTP request
  /// is constructed.
  ///
  /// If a binding expression is not specified here, the message is treated as a
  /// CloudEvent and is mapped to the HTTP request according to the CloudEvent
  /// HTTP Protocol Binding Binary Content Mode
  /// (https://github.com/cloudevents/spec/blob/main/cloudevents/bindings/http-protocol-binding.md#31-binary-content-mode).
  /// In this representation, all fields except the `data` and `datacontenttype`
  /// field on the message are mapped to HTTP request headers with a prefix of
  /// `ce-`. To construct the HTTP request payload and the value of the
  /// content-type HTTP header, the payload format is defined as follows: 1) Use
  /// the output_payload_format_type on the Pipeline.Destination if it is set,
  /// else: 2) Use the input_payload_format_type on the Pipeline if it is set,
  /// else: 3) Treat the payload as opaque binary data. The `data` field of the
  /// message is converted to the payload format or left as-is for case 3) and
  /// then attached as the payload of the HTTP request. The `content-type`
  /// header on the HTTP request is set to the payload format type or left empty
  /// for case 3). However, if a mediation has updated the `datacontenttype`
  /// field on the message so that it is not the same as the payload format type
  /// but it is still a prefix of the payload format type, then the
  /// `content-type` header on the HTTP request is set to this `datacontenttype`
  /// value. For example, if the `datacontenttype` is "application/json" and the
  /// payload format type is "application/json; charset=utf-8", then the
  /// `content-type` header on the HTTP request is set to "application/json;
  /// charset=utf-8". If a non-empty binding expression is specified then this
  /// expression is used to modify the default CloudEvent HTTP Protocol Binding
  /// Binary Content representation. The result of the CEL expression must be a
  /// map of key/value pairs which is used as follows: - If a map named
  /// `headers` exists on the result of the expression, then its key/value pairs
  /// are directly mapped to the HTTP request headers. The headers values are
  /// constructed from the corresponding value type's canonical representation.
  /// If the `headers` field doesn't exist then the resulting HTTP request will
  /// be the headers of the CloudEvent HTTP Binding Binary Content Mode
  /// representation of the final message. Note: If the specified binding
  /// expression, has updated the `datacontenttype` field on the message so that
  /// it is not the same as the payload format type but it is still a prefix of
  /// the payload format type, then the `content-type` header in the `headers`
  /// map is set to this `datacontenttype` value. - If a field named `body`
  /// exists on the result of the expression then its value is directly mapped
  /// to the body of the request. If the value of the `body` field is of type
  /// bytes or string then it is used for the HTTP request body as-is, with no
  /// conversion. If the body field is of any other type then it is converted to
  /// a JSON string. If the body field does not exist then the resulting payload
  /// of the HTTP request will be data value of the CloudEvent HTTP Binding
  /// Binary Content Mode representation of the final message as described
  /// earlier. - Any other fields in the resulting expression will be ignored.
  /// The CEL expression may access the incoming CloudEvent message in its
  /// definition, as follows: - The `data` field of the incoming CloudEvent
  /// message can be accessed using the `message.data` value. Subfields of
  /// `message.data` may also be accessed if an input_payload_format has been
  /// specified on the Pipeline. - Each attribute of the incoming CloudEvent
  /// message can be accessed using the `message.` value, where is replaced with
  /// the name of the attribute. - Existing headers can be accessed in the CEL
  /// expression using the `headers` variable. The `headers` variable defines a
  /// map of key/value pairs corresponding to the HTTP headers of the CloudEvent
  /// HTTP Binding Binary Content Mode representation of the final message as
  /// described earlier. For example, the following CEL expression can be used
  /// to construct an HTTP request by adding an additional header to the HTTP
  /// headers of the CloudEvent HTTP Binding Binary Content Mode representation
  /// of the final message and by overwriting the body of the request: ``` {
  /// "headers": headers.merge({"new-header-key": "new-header-value"}), "body":
  /// "new-body" } ``` - The default binding for the message payload can be
  /// accessed using the `body` variable. It conatins a string representation of
  /// the message payload in the format specified by the `output_payload_format`
  /// field. If the `input_payload_format` field is not set, the `body` variable
  /// contains the same message payload bytes that were published. Additionally,
  /// the following CEL extension functions are provided for use in this CEL
  /// expression: - toBase64Url: map.toBase64Url() -\> string - Converts a
  /// CelValue to a base64url encoded string - toJsonString: map.toJsonString()
  /// -\> string - Converts a CelValue to a JSON string - merge:
  /// map1.merge(map2) -\> map3 - Merges the passed CEL map with the existing
  /// CEL map the function is applied to. - If the same key exists in both maps,
  /// if the key's value is type map both maps are merged else the value from
  /// the passed map is used. - denormalize: map.denormalize() -\> map -
  /// Denormalizes a CEL map such that every value of type map or key in the map
  /// is expanded to return a single level map. - The resulting keys are "."
  /// separated indices of the map keys. - For example: { "a": 1, "b": { "c": 2,
  /// "d": 3 } "e": \[4, 5\] } .denormalize() -\> { "a": 1, "b.c": 2, "b.d": 3,
  /// "e.0": 4, "e.1": 5 } - setField: map.setField(key, value) -\> message -
  /// Sets the field of the message with the given key to the given value. - If
  /// the field is not present it will be added. - If the field is present it
  /// will be overwritten. - The key can be a dot separated path to set a field
  /// in a nested message. - Key must be of type string. - Value may be any
  /// valid type. - removeFields: map.removeFields(\[key1, key2, ...\]) -\>
  /// message - Removes the fields of the map with the given keys. - The keys
  /// can be a dot separated path to remove a field in a nested message. - If a
  /// key is not found it will be ignored. - Keys must be of type string. -
  /// toMap: \[map1, map2, ...\].toMap() -\> map - Converts a CEL list of CEL
  /// maps to a single CEL map - toCloudEventJsonWithPayloadFormat:
  /// message.toCloudEventJsonWithPayloadFormat() -\> map - Converts a message
  /// to the corresponding structure of JSON format for CloudEvents. - It
  /// converts `data` to destination payload format specified in
  /// `output_payload_format`. If `output_payload_format` is not set, the data
  /// will remain unchanged. - It also sets the corresponding datacontenttype of
  /// the CloudEvent, as indicated by `output_payload_format`. If no
  /// `output_payload_format` is set it will use the value of the
  /// "datacontenttype" attribute on the CloudEvent if present, else remove
  /// "datacontenttype" attribute. - This function expects that the content of
  /// the message will adhere to the standard CloudEvent format. If it doesn't
  /// then this function will fail. - The result is a CEL map that corresponds
  /// to the JSON representation of the CloudEvent. To convert that data to a
  /// JSON string it can be chained with the toJsonString function. The Pipeline
  /// expects that the message it receives adheres to the standard CloudEvent
  /// format. If it doesn't then the outgoing message request may fail with a
  /// persistent error.
  ///
  /// Optional.
  core.String? messageBindingTemplate;

  /// The URI of the HTTP endpoint.
  ///
  /// The value must be a RFC2396 URI string. Examples:
  /// `https://svc.us-central1.p.local:8080/route`. Only the HTTPS protocol is
  /// supported.
  ///
  /// Required.
  core.String? uri;

  GoogleCloudEventarcV1PipelineDestinationHttpEndpoint({
    this.messageBindingTemplate,
    this.uri,
  });

  GoogleCloudEventarcV1PipelineDestinationHttpEndpoint.fromJson(core.Map json_)
    : this(
        messageBindingTemplate: json_['messageBindingTemplate'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messageBindingTemplate != null)
      'messageBindingTemplate': messageBindingTemplate!,
    if (uri != null) 'uri': uri!,
  };
}

/// Represents a network config to be used for destination resolution and
/// connectivity.
class GoogleCloudEventarcV1PipelineDestinationNetworkConfig {
  /// Name of the NetworkAttachment that allows access to the consumer VPC.
  ///
  /// Format:
  /// `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  ///
  /// Required.
  core.String? networkAttachment;

  GoogleCloudEventarcV1PipelineDestinationNetworkConfig({
    this.networkAttachment,
  });

  GoogleCloudEventarcV1PipelineDestinationNetworkConfig.fromJson(core.Map json_)
    : this(networkAttachment: json_['networkAttachment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkAttachment != null) 'networkAttachment': networkAttachment!,
  };
}

/// Mediation defines different ways to modify the Pipeline.
class GoogleCloudEventarcV1PipelineMediation {
  /// How the Pipeline is to transform messages
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMediationTransformation? transformation;

  GoogleCloudEventarcV1PipelineMediation({this.transformation});

  GoogleCloudEventarcV1PipelineMediation.fromJson(core.Map json_)
    : this(
        transformation:
            json_.containsKey('transformation')
                ? GoogleCloudEventarcV1PipelineMediationTransformation.fromJson(
                  json_['transformation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (transformation != null) 'transformation': transformation!,
  };
}

/// Transformation defines the way to transform an incoming message.
class GoogleCloudEventarcV1PipelineMediationTransformation {
  /// The CEL expression template to apply to transform messages.
  ///
  /// The following CEL extension functions are provided for use in this CEL
  /// expression: - merge: map1.merge(map2) -\> map3 - Merges the passed CEL map
  /// with the existing CEL map the function is applied to. - If the same key
  /// exists in both maps, if the key's value is type map both maps are merged
  /// else the value from the passed map is used. - denormalize:
  /// map.denormalize() -\> map - Denormalizes a CEL map such that every value
  /// of type map or key in the map is expanded to return a single level map. -
  /// The resulting keys are "." separated indices of the map keys. - For
  /// example: { "a": 1, "b": { "c": 2, "d": 3 } "e": \[4, 5\] } .denormalize()
  /// -\> { "a": 1, "b.c": 2, "b.d": 3, "e.0": 4, "e.1": 5 } - setField:
  /// map.setField(key, value) -\> message - Sets the field of the message with
  /// the given key to the given value. - If the field is not present it will be
  /// added. - If the field is present it will be overwritten. - The key can be
  /// a dot separated path to set a field in a nested message. - Key must be of
  /// type string. - Value may be any valid type. - removeFields:
  /// map.removeFields(\[key1, key2, ...\]) -\> message - Removes the fields of
  /// the map with the given keys. - The keys can be a dot separated path to
  /// remove a field in a nested message. - If a key is not found it will be
  /// ignored. - Keys must be of type string. - toMap: \[map1, map2,
  /// ...\].toMap() -\> map - Converts a CEL list of CEL maps to a single CEL
  /// map - toDestinationPayloadFormat():
  /// message.data.toDestinationPayloadFormat() -\> string or bytes - Converts
  /// the message data to the destination payload format specified in
  /// Pipeline.Destination.output_payload_format - This function is meant to be
  /// applied to the message.data field. - If the destination payload format is
  /// not set, the function will return the message data unchanged. -
  /// toCloudEventJsonWithPayloadFormat:
  /// message.toCloudEventJsonWithPayloadFormat() -\> map - Converts a message
  /// to the corresponding structure of JSON format for CloudEvents - This
  /// function applies toDestinationPayloadFormat() to the message data. It also
  /// sets the corresponding datacontenttype of the CloudEvent, as indicated by
  /// Pipeline.Destination.output_payload_format. If no output_payload_format is
  /// set it will use the existing datacontenttype on the CloudEvent if present,
  /// else leave datacontenttype absent. - This function expects that the
  /// content of the message will adhere to the standard CloudEvent format. If
  /// it doesn't then this function will fail. - The result is a CEL map that
  /// corresponds to the JSON representation of the CloudEvent. To convert that
  /// data to a JSON string it can be chained with the toJsonString function.
  ///
  /// Optional.
  core.String? transformationTemplate;

  GoogleCloudEventarcV1PipelineMediationTransformation({
    this.transformationTemplate,
  });

  GoogleCloudEventarcV1PipelineMediationTransformation.fromJson(core.Map json_)
    : this(
        transformationTemplate: json_['transformationTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (transformationTemplate != null)
      'transformationTemplate': transformationTemplate!,
  };
}

/// Represents the format of message data.
class GoogleCloudEventarcV1PipelineMessagePayloadFormat {
  /// Avro format.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat? avro;

  /// JSON format.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat? json;

  /// Protobuf format.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat? protobuf;

  GoogleCloudEventarcV1PipelineMessagePayloadFormat({
    this.avro,
    this.json,
    this.protobuf,
  });

  GoogleCloudEventarcV1PipelineMessagePayloadFormat.fromJson(core.Map json_)
    : this(
        avro:
            json_.containsKey('avro')
                ? GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat.fromJson(
                  json_['avro'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        json:
            json_.containsKey('json')
                ? GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat.fromJson(
                  json_['json'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        protobuf:
            json_.containsKey('protobuf')
                ? GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat.fromJson(
                  json_['protobuf'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (avro != null) 'avro': avro!,
    if (json != null) 'json': json!,
    if (protobuf != null) 'protobuf': protobuf!,
  };
}

/// The format of an AVRO message payload.
typedef GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat = $Format;

/// The format of a JSON message payload.
typedef GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat = $Empty;

/// The format of a Protobuf message payload.
typedef GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat =
    $Format;

/// The retry policy configuration for the Pipeline.
///
/// The pipeline exponentially backs off in case the destination is non
/// responsive or returns a retryable error code. The default semantics are as
/// follows: The backoff starts with a 5 second delay and doubles the delay
/// after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.). The
/// delay is capped at 60 seconds by default. Please note that if you set the
/// min_retry_delay and max_retry_delay fields to the same value this will make
/// the duration between retries constant.
class GoogleCloudEventarcV1PipelineRetryPolicy {
  /// The maximum number of delivery attempts for any message.
  ///
  /// The value must be between 1 and 100. The default value for this field is
  /// 5.
  ///
  /// Optional.
  core.int? maxAttempts;

  /// The maximum amount of seconds to wait between retry attempts.
  ///
  /// The value must be between 1 and 600. The default value for this field is
  /// 60.
  ///
  /// Optional.
  core.String? maxRetryDelay;

  /// The minimum amount of seconds to wait between retry attempts.
  ///
  /// The value must be between 1 and 600. The default value for this field is
  /// 5.
  ///
  /// Optional.
  core.String? minRetryDelay;

  GoogleCloudEventarcV1PipelineRetryPolicy({
    this.maxAttempts,
    this.maxRetryDelay,
    this.minRetryDelay,
  });

  GoogleCloudEventarcV1PipelineRetryPolicy.fromJson(core.Map json_)
    : this(
        maxAttempts: json_['maxAttempts'] as core.int?,
        maxRetryDelay: json_['maxRetryDelay'] as core.String?,
        minRetryDelay: json_['minRetryDelay'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxAttempts != null) 'maxAttempts': maxAttempts!,
    if (maxRetryDelay != null) 'maxRetryDelay': maxRetryDelay!,
    if (minRetryDelay != null) 'minRetryDelay': minRetryDelay!,
  };
}

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

/// Represents a HTTP endpoint destination.
class HttpEndpoint {
  /// The URI of the HTTP endpoint.
  ///
  /// The value must be a RFC2396 URI string. Examples:
  /// `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`. Only
  /// HTTP and HTTPS protocols are supported. The host can be either a static IP
  /// addressable from the VPC specified by the network config, or an internal
  /// DNS hostname of the service resolvable via Cloud DNS.
  ///
  /// Required.
  core.String? uri;

  HttpEndpoint({this.uri});

  HttpEndpoint.fromJson(core.Map json_)
    : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
  };
}

/// The response message for the `ListChannelConnections` method.
class ListChannelConnectionsResponse {
  /// The requested channel connections, up to the number specified in
  /// `page_size`.
  core.List<ChannelConnection>? channelConnections;

  /// A page token that can be sent to `ListChannelConnections` to request the
  /// next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListChannelConnectionsResponse({
    this.channelConnections,
    this.nextPageToken,
    this.unreachable,
  });

  ListChannelConnectionsResponse.fromJson(core.Map json_)
    : this(
        channelConnections:
            (json_['channelConnections'] as core.List?)
                ?.map(
                  (value) => ChannelConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channelConnections != null) 'channelConnections': channelConnections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListChannels` method.
class ListChannelsResponse {
  /// The requested channels, up to the number specified in `page_size`.
  core.List<Channel>? channels;

  /// A page token that can be sent to `ListChannels` to request the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListChannelsResponse({this.channels, this.nextPageToken, this.unreachable});

  ListChannelsResponse.fromJson(core.Map json_)
    : this(
        channels:
            (json_['channels'] as core.List?)
                ?.map(
                  (value) => Channel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channels != null) 'channels': channels!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListEnrollments` method.
class ListEnrollmentsResponse {
  /// The requested Enrollments, up to the number specified in `page_size`.
  core.List<Enrollment>? enrollments;

  /// A page token that can be sent to `ListEnrollments` to request the next
  /// page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListEnrollmentsResponse({
    this.enrollments,
    this.nextPageToken,
    this.unreachable,
  });

  ListEnrollmentsResponse.fromJson(core.Map json_)
    : this(
        enrollments:
            (json_['enrollments'] as core.List?)
                ?.map(
                  (value) => Enrollment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enrollments != null) 'enrollments': enrollments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListGoogleApiSources` method.
class ListGoogleApiSourcesResponse {
  /// The requested GoogleApiSources, up to the number specified in `page_size`.
  core.List<GoogleApiSource>? googleApiSources;

  /// A page token that can be sent to `ListMessageBusEnrollments` to request
  /// the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListGoogleApiSourcesResponse({
    this.googleApiSources,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoogleApiSourcesResponse.fromJson(core.Map json_)
    : this(
        googleApiSources:
            (json_['googleApiSources'] as core.List?)
                ?.map(
                  (value) => GoogleApiSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleApiSources != null) 'googleApiSources': googleApiSources!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
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
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
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

/// The response message for the \`ListMessageBusEnrollments\` method.\`
class ListMessageBusEnrollmentsResponse {
  /// The requested enrollments, up to the number specified in `page_size`.
  core.List<core.String>? enrollments;

  /// A page token that can be sent to `ListMessageBusEnrollments` to request
  /// the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListMessageBusEnrollmentsResponse({
    this.enrollments,
    this.nextPageToken,
    this.unreachable,
  });

  ListMessageBusEnrollmentsResponse.fromJson(core.Map json_)
    : this(
        enrollments:
            (json_['enrollments'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enrollments != null) 'enrollments': enrollments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListMessageBuses` method.
class ListMessageBusesResponse {
  /// The requested message buses, up to the number specified in `page_size`.
  core.List<MessageBus>? messageBuses;

  /// A page token that can be sent to `ListMessageBuses` to request the next
  /// page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListMessageBusesResponse({
    this.messageBuses,
    this.nextPageToken,
    this.unreachable,
  });

  ListMessageBusesResponse.fromJson(core.Map json_)
    : this(
        messageBuses:
            (json_['messageBuses'] as core.List?)
                ?.map(
                  (value) => MessageBus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messageBuses != null) 'messageBuses': messageBuses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the ListPipelines method.
class ListPipelinesResponse {
  /// A page token that can be sent to `ListPipelines` to request the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// The requested pipelines, up to the number specified in `page_size`.
  core.List<Pipeline>? pipelines;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListPipelinesResponse({this.nextPageToken, this.pipelines, this.unreachable});

  ListPipelinesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pipelines:
            (json_['pipelines'] as core.List?)
                ?.map(
                  (value) => Pipeline.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (pipelines != null) 'pipelines': pipelines!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListProviders` method.
class ListProvidersResponse {
  /// A page token that can be sent to `ListProviders` to request the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// The requested providers, up to the number specified in `page_size`.
  core.List<Provider>? providers;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListProvidersResponse({this.nextPageToken, this.providers, this.unreachable});

  ListProvidersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        providers:
            (json_['providers'] as core.List?)
                ?.map(
                  (value) => Provider.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (providers != null) 'providers': providers!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for the `ListTriggers` method.
class ListTriggersResponse {
  /// A page token that can be sent to `ListTriggers` to request the next page.
  ///
  /// If this is empty, then there are no more pages.
  core.String? nextPageToken;

  /// The requested triggers, up to the number specified in `page_size`.
  core.List<Trigger>? triggers;

  /// Unreachable resources, if any.
  core.List<core.String>? unreachable;

  ListTriggersResponse({this.nextPageToken, this.triggers, this.unreachable});

  ListTriggersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        triggers:
            (json_['triggers'] as core.List?)
                ?.map(
                  (value) => Trigger.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (triggers != null) 'triggers': triggers!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// The configuration for Platform Telemetry logging for Eventarc Advanced
/// resources.
class LoggingConfig {
  /// The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry.
  ///
  /// Logs at severitiy ≥ this value will be sent, unless it is NONE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LOG_SEVERITY_UNSPECIFIED" : Log severity is not specified. This value
  /// is treated the same as NONE, but is used to distinguish between no update
  /// and update to NONE in update_masks.
  /// - "NONE" : Default value at resource creation, presence of this value must
  /// be treated as no logging/disable logging.
  /// - "DEBUG" : Debug or trace level logging.
  /// - "INFO" : Routine information, such as ongoing status or performance.
  /// - "NOTICE" : Normal but significant events, such as start up, shut down,
  /// or a configuration change.
  /// - "WARNING" : Warning events might cause problems.
  /// - "ERROR" : Error events are likely to cause problems.
  /// - "CRITICAL" : Critical events cause more severe problems or outages.
  /// - "ALERT" : A person must take action immediately.
  /// - "EMERGENCY" : One or more systems are unusable.
  core.String? logSeverity;

  LoggingConfig({this.logSeverity});

  LoggingConfig.fromJson(core.Map json_)
    : this(logSeverity: json_['logSeverity'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (logSeverity != null) 'logSeverity': logSeverity!,
  };
}

/// MessageBus for the messages flowing through the system.
///
/// The admin has visibility and control over the messages being published and
/// consumed and can restrict publishers and subscribers to only a subset of
/// data available in the system by defining authorization policies.
class MessageBus {
  /// Resource annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt their event data.
  ///
  /// It must match the pattern `projects / * /locations / * /keyRings / *
  /// /cryptoKeys / * `.
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// Resource display name.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure
  /// that the client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Config to control Platform logging for the Message Bus.
  ///
  /// This log configuration is applied to the Message Bus itself, and all the
  /// Enrollments attached to it.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// Identifier.
  ///
  /// Resource name of the form
  /// projects/{project}/locations/{location}/messageBuses/{message_bus}
  core.String? name;

  /// Server assigned unique identifier for the channel.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  MessageBus({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.displayName,
    this.etag,
    this.labels,
    this.loggingConfig,
    this.name,
    this.uid,
    this.updateTime,
  });

  MessageBus.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (name != null) 'name': name!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Network Configuration that can be inherited by other protos.
class NetworkConfig {
  /// Name of the NetworkAttachment that allows access to the customer's VPC.
  ///
  /// Format:
  /// `projects/{PROJECT_ID}/regions/{REGION}/networkAttachments/{NETWORK_ATTACHMENT_NAME}`
  ///
  /// Required.
  core.String? networkAttachment;

  NetworkConfig({this.networkAttachment});

  NetworkConfig.fromJson(core.Map json_)
    : this(networkAttachment: json_['networkAttachment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkAttachment != null) 'networkAttachment': networkAttachment!,
  };
}

/// Config to enabled subscribing to events from other projects in the org.
class OrganizationSubscription {
  /// Enable org level subscription.
  ///
  /// Required.
  core.bool? enabled;

  OrganizationSubscription({this.enabled});

  OrganizationSubscription.fromJson(core.Map json_)
    : this(enabled: json_['enabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabled != null) 'enabled': enabled!,
  };
}

/// A representation of the Pipeline resource.
class Pipeline {
  /// User-defined annotations.
  ///
  /// See https://google.aip.dev/128#annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The creation time.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to
  /// encrypt/decrypt the event data.
  ///
  /// If not set, an internal Google-owned key will be used to encrypt messages.
  /// It must match the pattern
  /// "projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}".
  ///
  /// Optional.
  core.String? cryptoKeyName;

  /// List of destinations to which messages will be forwarded.
  ///
  /// Currently, exactly one destination is supported per Pipeline.
  ///
  /// Required.
  core.List<GoogleCloudEventarcV1PipelineDestination>? destinations;

  /// Display name of resource.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on create requests to ensure that the
  /// client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The payload format expected for the messages received by the Pipeline.
  ///
  /// If input_payload_format is set then any messages not matching this format
  /// will be treated as persistent errors. If input_payload_format is not set,
  /// then the message data will be treated as an opaque binary and no output
  /// format can be set on the Pipeline through the
  /// Pipeline.Destination.output_payload_format field. Any Mediations on the
  /// Pipeline that involve access to the data field will fail as persistent
  /// errors.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineMessagePayloadFormat? inputPayloadFormat;

  /// User labels attached to the Pipeline that can be used to group resources.
  ///
  /// An object containing a list of "key": value pairs. Example: { "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Config to control Platform Logging for Pipelines.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// List of mediation operations to be performed on the message.
  ///
  /// Currently, only one Transformation operation is allowed in each Pipeline.
  ///
  /// Optional.
  core.List<GoogleCloudEventarcV1PipelineMediation>? mediations;

  /// Identifier.
  ///
  /// The resource name of the Pipeline. Must be unique within the location of
  /// the project and must be in
  /// `projects/{project}/locations/{location}/pipelines/{pipeline}` format.
  core.String? name;

  /// The retry policy to use in the pipeline.
  ///
  /// Optional.
  GoogleCloudEventarcV1PipelineRetryPolicy? retryPolicy;

  /// Whether or not this Pipeline satisfies the requirements of physical zone
  /// separation
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Server-assigned unique identifier for the Pipeline.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? updateTime;

  Pipeline({
    this.annotations,
    this.createTime,
    this.cryptoKeyName,
    this.destinations,
    this.displayName,
    this.etag,
    this.inputPayloadFormat,
    this.labels,
    this.loggingConfig,
    this.mediations,
    this.name,
    this.retryPolicy,
    this.satisfiesPzs,
    this.uid,
    this.updateTime,
  });

  Pipeline.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        cryptoKeyName: json_['cryptoKeyName'] as core.String?,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudEventarcV1PipelineDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        inputPayloadFormat:
            json_.containsKey('inputPayloadFormat')
                ? GoogleCloudEventarcV1PipelineMessagePayloadFormat.fromJson(
                  json_['inputPayloadFormat']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mediations:
            (json_['mediations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudEventarcV1PipelineMediation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        retryPolicy:
            json_.containsKey('retryPolicy')
                ? GoogleCloudEventarcV1PipelineRetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
    if (destinations != null) 'destinations': destinations!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (inputPayloadFormat != null) 'inputPayloadFormat': inputPayloadFormat!,
    if (labels != null) 'labels': labels!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (mediations != null) 'mediations': mediations!,
    if (name != null) 'name': name!,
    if (retryPolicy != null) 'retryPolicy': retryPolicy!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
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

/// Config to enable subscribing to all events from a list of projects.
class ProjectSubscriptions {
  /// A list of projects to receive events from.
  ///
  /// All the projects must be in the same org. The listed projects should have
  /// the format project/{identifier} where identifier can be either the project
  /// id for project number. A single list may contain both formats. At most 100
  /// projects can be listed.
  ///
  /// Required.
  core.List<core.String>? list;

  ProjectSubscriptions({this.list});

  ProjectSubscriptions.fromJson(core.Map json_)
    : this(
        list:
            (json_['list'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (list != null) 'list': list!,
  };
}

/// A representation of the Provider resource.
class Provider {
  /// Human friendly name for the Provider.
  ///
  /// For example "Cloud Storage".
  ///
  /// Output only.
  core.String? displayName;

  /// Event types for this provider.
  ///
  /// Output only.
  core.List<EventType>? eventTypes;

  /// In `projects/{project}/locations/{location}/providers/{provider_id}`
  /// format.
  ///
  /// Output only.
  core.String? name;

  Provider({this.displayName, this.eventTypes, this.name});

  Provider.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        eventTypes:
            (json_['eventTypes'] as core.List?)
                ?.map(
                  (value) => EventType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (eventTypes != null) 'eventTypes': eventTypes!,
    if (name != null) 'name': name!,
  };
}

/// Represents a Pub/Sub transport.
class Pubsub {
  /// The name of the Pub/Sub subscription created and managed by Eventarc as a
  /// transport for the event delivery.
  ///
  /// Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  ///
  /// Output only.
  core.String? subscription;

  /// The name of the Pub/Sub topic created and managed by Eventarc as a
  /// transport for the event delivery.
  ///
  /// Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an
  /// existing topic for triggers of the type
  /// `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide
  /// here is not deleted by Eventarc at trigger deletion.
  ///
  /// Optional.
  core.String? topic;

  Pubsub({this.subscription, this.topic});

  Pubsub.fromJson(core.Map json_)
    : this(
        subscription: json_['subscription'] as core.String?,
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (subscription != null) 'subscription': subscription!,
    if (topic != null) 'topic': topic!,
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

/// A condition that is part of the trigger state computation.
class StateCondition {
  /// The canonical code of the condition.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success. HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? code;

  /// Human-readable message.
  core.String? message;

  StateCondition({this.code, this.message});

  StateCondition.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Represents the transport intermediaries created for the trigger to deliver
/// events.
class Transport {
  /// The Pub/Sub topic and subscription used by Eventarc as a transport
  /// intermediary.
  Pubsub? pubsub;

  Transport({this.pubsub});

  Transport.fromJson(core.Map json_)
    : this(
        pubsub:
            json_.containsKey('pubsub')
                ? Pubsub.fromJson(
                  json_['pubsub'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pubsub != null) 'pubsub': pubsub!,
  };
}

/// A representation of the trigger resource.
class Trigger {
  /// The name of the channel associated with the trigger in
  /// `projects/{project}/locations/{location}/channels/{channel}` format.
  ///
  /// You must provide a channel to receive events from Eventarc SaaS partners.
  ///
  /// Optional.
  core.String? channel;

  /// The reason(s) why a trigger is in FAILED state.
  ///
  /// Output only.
  core.Map<core.String, StateCondition>? conditions;

  /// The creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Destination specifies where the events should be sent to.
  ///
  /// Required.
  Destination? destination;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on create requests to ensure that the
  /// client has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// EventDataContentType specifies the type of payload in MIME format that is
  /// expected from the CloudEvent data field.
  ///
  /// This is set to `application/json` if the value is not defined.
  ///
  /// Optional.
  core.String? eventDataContentType;

  /// Unordered list.
  ///
  /// The list of filters that applies to event attributes. Only events that
  /// match all the provided filters are sent to the destination.
  ///
  /// Required.
  core.List<EventFilter>? eventFilters;

  /// User labels attached to the triggers that can be used to group resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the trigger.
  ///
  /// Must be unique within the location of the project and must be in
  /// `projects/{project}/locations/{location}/triggers/{trigger}` format.
  ///
  /// Required.
  core.String? name;

  /// Whether or not this Trigger satisfies the requirements of physical zone
  /// separation
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The IAM service account email associated with the trigger.
  ///
  /// The service account represents the identity of the trigger. The
  /// `iam.serviceAccounts.actAs` permission must be granted on the service
  /// account to allow a principal to impersonate the service account. For more
  /// information, see the \[Roles and
  /// permissions\](/eventarc/docs/all-roles-permissions) page specific to the
  /// trigger destination.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// To deliver messages, Eventarc might use other Google Cloud products as a
  /// transport intermediary.
  ///
  /// This field contains a reference to that transport intermediary. This
  /// information can be used for debugging purposes.
  ///
  /// Optional.
  Transport? transport;

  /// Server-assigned unique identifier for the trigger.
  ///
  /// The value is a UUID4 string and guaranteed to remain unchanged until the
  /// resource is deleted.
  ///
  /// Output only.
  core.String? uid;

  /// The last-modified time.
  ///
  /// Output only.
  core.String? updateTime;

  Trigger({
    this.channel,
    this.conditions,
    this.createTime,
    this.destination,
    this.etag,
    this.eventDataContentType,
    this.eventFilters,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.serviceAccount,
    this.transport,
    this.uid,
    this.updateTime,
  });

  Trigger.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        conditions:
            (json_['conditions'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                StateCondition.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        createTime: json_['createTime'] as core.String?,
        destination:
            json_.containsKey('destination')
                ? Destination.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        etag: json_['etag'] as core.String?,
        eventDataContentType: json_['eventDataContentType'] as core.String?,
        eventFilters:
            (json_['eventFilters'] as core.List?)
                ?.map(
                  (value) => EventFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        transport:
            json_.containsKey('transport')
                ? Transport.fromJson(
                  json_['transport'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channel != null) 'channel': channel!,
    if (conditions != null) 'conditions': conditions!,
    if (createTime != null) 'createTime': createTime!,
    if (destination != null) 'destination': destination!,
    if (etag != null) 'etag': etag!,
    if (eventDataContentType != null)
      'eventDataContentType': eventDataContentType!,
    if (eventFilters != null) 'eventFilters': eventFilters!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (transport != null) 'transport': transport!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}
