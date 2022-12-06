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

/// Cloud Key Management Service (KMS) API - v1
///
/// Manages keys and performs cryptographic operations in a central cloud
/// service, for direct use by other cloud resources and applications.
///
/// For more information, see <https://cloud.google.com/kms/>
///
/// Create an instance of [CloudKMSApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEkmConfigResource]
///     - [ProjectsLocationsEkmConnectionsResource]
///     - [ProjectsLocationsKeyRingsResource]
///       - [ProjectsLocationsKeyRingsCryptoKeysResource]
///         - [ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource]
///       - [ProjectsLocationsKeyRingsImportJobsResource]
library cloudkms.v1;

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

/// Manages keys and performs cryptographic operations in a central cloud
/// service, for direct use by other cloud resources and applications.
class CloudKMSApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your keys and secrets stored in Cloud Key Management
  /// Service
  static const cloudkmsScope = 'https://www.googleapis.com/auth/cloudkms';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudKMSApi(http.Client client,
      {core.String rootUrl = 'https://cloudkms.googleapis.com/',
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

  ProjectsLocationsEkmConfigResource get ekmConfig =>
      ProjectsLocationsEkmConfigResource(_requester);
  ProjectsLocationsEkmConnectionsResource get ekmConnections =>
      ProjectsLocationsEkmConnectionsResource(_requester);
  ProjectsLocationsKeyRingsResource get keyRings =>
      ProjectsLocationsKeyRingsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Generate random bytes using the Cloud KMS randomness source in the
  /// provided location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - The project-specific location in which to generate random
  /// bytes. For example, "projects/my-project/locations/us-central1".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateRandomBytesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateRandomBytesResponse> generateRandomBytes(
    GenerateRandomBytesRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$location') + ':generateRandomBytes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateRandomBytesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsEkmConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEkmConfigResource(commons.ApiRequester client)
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
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/ekmConfig$`.
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
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/ekmConfig$`.
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
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/ekmConfig$`.
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

class ProjectsLocationsEkmConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEkmConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new EkmConnection in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// EkmConnection, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [ekmConnectionId] - Required. It must be unique within a location and
  /// match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EkmConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EkmConnection> create(
    EkmConnection request,
    core.String parent, {
    core.String? ekmConnectionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ekmConnectionId != null) 'ekmConnectionId': [ekmConnectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ekmConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EkmConnection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for a given EkmConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EkmConnection to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/ekmConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EkmConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EkmConnection> get(
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
    return EkmConnection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/ekmConnections/\[^/\]+$`.
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

  /// Lists EkmConnections.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// EkmConnections to list, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For more information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. If not
  /// specified, the results will be sorted in the default order. For more
  /// information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. Optional limit on the number of EkmConnections to
  /// include in the response. Further EkmConnections can subsequently be
  /// obtained by including the ListEkmConnectionsResponse.next_page_token in a
  /// subsequent request. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. Optional pagination token, returned earlier via
  /// ListEkmConnectionsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEkmConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEkmConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ekmConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEkmConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an EkmConnection's metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for the EkmConnection in the
  /// format `projects / * /locations / * /ekmConnections / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/ekmConnections/\[^/\]+$`.
  ///
  /// [updateMask] - Required. List of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EkmConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EkmConnection> patch(
    EkmConnection request,
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
    return EkmConnection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/ekmConnections/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/ekmConnections/\[^/\]+$`.
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

class ProjectsLocationsKeyRingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysResource get cryptoKeys =>
      ProjectsLocationsKeyRingsCryptoKeysResource(_requester);
  ProjectsLocationsKeyRingsImportJobsResource get importJobs =>
      ProjectsLocationsKeyRingsImportJobsResource(_requester);

  ProjectsLocationsKeyRingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new KeyRing in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// KeyRings, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [keyRingId] - Required. It must be unique within a location and match the
  /// regular expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [KeyRing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<KeyRing> create(
    KeyRing request,
    core.String parent, {
    core.String? keyRingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (keyRingId != null) 'keyRingId': [keyRingId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keyRings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return KeyRing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for a given KeyRing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the KeyRing to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [KeyRing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<KeyRing> get(
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
    return KeyRing.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
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

  /// Lists KeyRings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// KeyRings, in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For more information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. If not
  /// specified, the results will be sorted in the default order. For more
  /// information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. Optional limit on the number of KeyRings to include
  /// in the response. Further KeyRings can subsequently be obtained by
  /// including the ListKeyRingsResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Optional pagination token, returned earlier via
  /// ListKeyRingsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListKeyRingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListKeyRingsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keyRings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListKeyRingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
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

class ProjectsLocationsKeyRingsCryptoKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource
      get cryptoKeyVersions =>
          ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource(
              _requester);

  ProjectsLocationsKeyRingsCryptoKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new CryptoKey within a KeyRing.
  ///
  /// CryptoKey.purpose and CryptoKey.version_template.algorithm are required.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the KeyRing associated with the
  /// CryptoKeys.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
  ///
  /// [cryptoKeyId] - Required. It must be unique within a KeyRing and match the
  /// regular expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [skipInitialVersionCreation] - If set to true, the request will create a
  /// CryptoKey without any CryptoKeyVersions. You must manually call
  /// CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this
  /// CryptoKey.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> create(
    CryptoKey request,
    core.String parent, {
    core.String? cryptoKeyId,
    core.bool? skipInitialVersionCreation,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cryptoKeyId != null) 'cryptoKeyId': [cryptoKeyId],
      if (skipInitialVersionCreation != null)
        'skipInitialVersionCreation': ['${skipInitialVersionCreation}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Decrypts data that was protected by Encrypt.
  ///
  /// The CryptoKey.purpose must be ENCRYPT_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey to use for
  /// decryption. The server will choose the appropriate version.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DecryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DecryptResponse> decrypt(
    DecryptRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':decrypt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DecryptResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Encrypts data, so that it can only be recovered by a call to Decrypt.
  ///
  /// The CryptoKey.purpose must be ENCRYPT_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey or CryptoKeyVersion
  /// to use for encryption. If a CryptoKey is specified, the server will use
  /// its primary version.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EncryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EncryptResponse> encrypt(
    EncryptRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':encrypt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EncryptResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for a given CryptoKey, as well as its primary
  /// CryptoKeyVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CryptoKey to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> get(
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
    return CryptoKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
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

  /// Lists CryptoKeys.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the KeyRing to list, in the
  /// format `projects / * /locations / * /keyRings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For more information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. If not
  /// specified, the results will be sorted in the default order. For more
  /// information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. Optional limit on the number of CryptoKeys to
  /// include in the response. Further CryptoKeys can subsequently be obtained
  /// by including the ListCryptoKeysResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Optional pagination token, returned earlier via
  /// ListCryptoKeysResponse.next_page_token.
  ///
  /// [versionView] - The fields of the primary version to include in the
  /// response.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" : Default view for each
  /// CryptoKeyVersion. Does not include the attestation field.
  /// - "FULL" : Provides all fields in each CryptoKeyVersion, including the
  /// attestation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCryptoKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCryptoKeysResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? versionView,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (versionView != null) 'versionView': [versionView],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCryptoKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CryptoKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CryptoKey in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [updateMask] - Required. List of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> patch(
    CryptoKey request,
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
    return CryptoKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
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

  /// Update the version of a CryptoKey that will be used in Encrypt.
  ///
  /// Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> updatePrimaryVersion(
    UpdateCryptoKeyPrimaryVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updatePrimaryVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Decrypts data that was encrypted with a public key retrieved from
  /// GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose
  /// ASYMMETRIC_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// decryption.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AsymmetricDecryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AsymmetricDecryptResponse> asymmetricDecrypt(
    AsymmetricDecryptRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':asymmetricDecrypt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AsymmetricDecryptResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs data using a CryptoKeyVersion with CryptoKey.purpose
  /// ASYMMETRIC_SIGN, producing a signature that can be verified with the
  /// public key retrieved from GetPublicKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// signing.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AsymmetricSignResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AsymmetricSignResponse> asymmetricSign(
    AsymmetricSignRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':asymmetricSign';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AsymmetricSignResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new CryptoKeyVersion in a CryptoKey.
  ///
  /// The server will assign the next sequential id. If unset, state will be set
  /// to ENABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the CryptoKey associated with the
  /// CryptoKeyVersions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> create(
    CryptoKeyVersion request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeyVersions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Schedule a CryptoKeyVersion for destruction.
  ///
  /// Upon calling this method, CryptoKeyVersion.state will be set to
  /// DESTROY_SCHEDULED, and destroy_time will be set to the time
  /// destroy_scheduled_duration in the future. At that time, the state will
  /// automatically change to DESTROYED, and the key material will be
  /// irrevocably destroyed. Before the destroy_time is reached,
  /// RestoreCryptoKeyVersion may be called to reverse the process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to destroy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> destroy(
    DestroyCryptoKeyVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':destroy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for a given CryptoKeyVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CryptoKeyVersion to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> get(
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
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the public key for the given CryptoKeyVersion.
  ///
  /// The CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CryptoKeyVersion public key to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublicKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublicKey> getPublicKey(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/publicKey';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PublicKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Import wrapped key material into a CryptoKeyVersion.
  ///
  /// All requests must specify a CryptoKey. If a CryptoKeyVersion is
  /// additionally specified in the request, key material will be reimported
  /// into that version. Otherwise, a new version will be created, and will be
  /// assigned the next sequential id within the CryptoKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the CryptoKey to be imported into. The
  /// create permission is only required on this key when creating a new
  /// CryptoKeyVersion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> import(
    ImportCryptoKeyVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeyVersions:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists CryptoKeyVersions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the CryptoKey to list, in the
  /// format `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For more information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. If not
  /// specified, the results will be sorted in the default order. For more
  /// information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. Optional limit on the number of CryptoKeyVersions
  /// to include in the response. Further CryptoKeyVersions can subsequently be
  /// obtained by including the ListCryptoKeyVersionsResponse.next_page_token in
  /// a subsequent request. If unspecified, the server will pick an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. Optional pagination token, returned earlier via
  /// ListCryptoKeyVersionsResponse.next_page_token.
  ///
  /// [view] - The fields to include in the response.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" : Default view for each
  /// CryptoKeyVersion. Does not include the attestation field.
  /// - "FULL" : Provides all fields in each CryptoKeyVersion, including the
  /// attestation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCryptoKeyVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCryptoKeyVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeyVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCryptoKeyVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Signs data using a CryptoKeyVersion with CryptoKey.purpose MAC, producing
  /// a tag that can be verified by another source with the same key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// signing.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MacSignResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MacSignResponse> macSign(
    MacSignRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':macSign';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MacSignResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies MAC tag using a CryptoKeyVersion with CryptoKey.purpose MAC, and
  /// returns a response that indicates whether or not the verification was
  /// successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// verification.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MacVerifyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MacVerifyResponse> macVerify(
    MacVerifyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':macVerify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MacVerifyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a CryptoKeyVersion's metadata.
  ///
  /// state may be changed between ENABLED and DISABLED using this method. See
  /// DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to move between other
  /// states.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CryptoKeyVersion in the
  /// format `projects / * /locations / * /keyRings / * /cryptoKeys / *
  /// /cryptoKeyVersions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. List of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> patch(
    CryptoKeyVersion request,
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
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state.
  ///
  /// Upon restoration of the CryptoKeyVersion, state will be set to DISABLED,
  /// and destroy_time will be cleared.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to restore.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/\[^/\]+/cryptoKeyVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> restore(
    RestoreCryptoKeyVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CryptoKeyVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsKeyRingsImportJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsImportJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new ImportJob within a KeyRing.
  ///
  /// ImportJob.import_method is required.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the KeyRing associated with the
  /// ImportJobs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
  ///
  /// [importJobId] - Required. It must be unique within a KeyRing and match the
  /// regular expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImportJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImportJob> create(
    ImportJob request,
    core.String parent, {
    core.String? importJobId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (importJobId != null) 'importJobId': [importJobId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ImportJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns metadata for a given ImportJob.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ImportJob to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/importJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImportJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImportJob> get(
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
    return ImportJob.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/importJobs/\[^/\]+$`.
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

  /// Lists ImportJobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the KeyRing to list, in the
  /// format `projects / * /locations / * /keyRings / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only include resources that match the filter in the
  /// response. For more information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [orderBy] - Optional. Specify how the results should be sorted. If not
  /// specified, the results will be sorted in the default order. For more
  /// information, see
  /// [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).
  ///
  /// [pageSize] - Optional. Optional limit on the number of ImportJobs to
  /// include in the response. Further ImportJobs can subsequently be obtained
  /// by including the ListImportJobsResponse.next_page_token in a subsequent
  /// request. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. Optional pagination token, returned earlier via
  /// ListImportJobsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListImportJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListImportJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/importJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListImportJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/importJobs/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/importJobs/\[^/\]+$`.
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

/// Request message for KeyManagementService.AsymmetricDecrypt.
class AsymmetricDecryptRequest {
  /// The data encrypted with the named CryptoKeyVersion's public key using
  /// OAEP.
  ///
  /// Required.
  core.String? ciphertext;
  core.List<core.int> get ciphertextAsBytes =>
      convert.base64.decode(ciphertext!);

  set ciphertextAsBytes(core.List<core.int> bytes_) {
    ciphertext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the AsymmetricDecryptRequest.ciphertext.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received AsymmetricDecryptRequest.ciphertext using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(AsymmetricDecryptRequest.ciphertext) is equal to
  /// AsymmetricDecryptRequest.ciphertext_crc32c, and if so, perform a limited
  /// number of retries. A persistent mismatch may indicate an issue in your
  /// computation of the CRC32C checksum. Note: This field is defined as int64
  /// for reasons of compatibility across different languages. However, it is a
  /// non-negative integer, which will never exceed 2^32-1, and can be safely
  /// downconverted to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? ciphertextCrc32c;

  AsymmetricDecryptRequest({
    this.ciphertext,
    this.ciphertextCrc32c,
  });

  AsymmetricDecryptRequest.fromJson(core.Map json_)
      : this(
          ciphertext: json_.containsKey('ciphertext')
              ? json_['ciphertext'] as core.String
              : null,
          ciphertextCrc32c: json_.containsKey('ciphertextCrc32c')
              ? json_['ciphertextCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ciphertext != null) 'ciphertext': ciphertext!,
        if (ciphertextCrc32c != null) 'ciphertextCrc32c': ciphertextCrc32c!,
      };
}

/// Response message for KeyManagementService.AsymmetricDecrypt.
class AsymmetricDecryptResponse {
  /// The decrypted data originally encrypted with the matching public key.
  core.String? plaintext;
  core.List<core.int> get plaintextAsBytes => convert.base64.decode(plaintext!);

  set plaintextAsBytes(core.List<core.int> bytes_) {
    plaintext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned AsymmetricDecryptResponse.plaintext. An
  /// integrity check of AsymmetricDecryptResponse.plaintext can be performed by
  /// computing the CRC32C checksum of AsymmetricDecryptResponse.plaintext and
  /// comparing your results to this field. Discard the response in case of
  /// non-matching checksum values, and perform a limited number of retries. A
  /// persistent mismatch may indicate an issue in your computation of the
  /// CRC32C checksum. Note: This field is defined as int64 for reasons of
  /// compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  core.String? plaintextCrc32c;

  /// The ProtectionLevel of the CryptoKeyVersion used in decryption.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Integrity verification field.
  ///
  /// A flag indicating whether AsymmetricDecryptRequest.ciphertext_crc32c was
  /// received by KeyManagementService and used for the integrity verification
  /// of the ciphertext. A false value of this field indicates either that
  /// AsymmetricDecryptRequest.ciphertext_crc32c was left unset or that it was
  /// not delivered to KeyManagementService. If you've set
  /// AsymmetricDecryptRequest.ciphertext_crc32c but this field is still false,
  /// discard the response and perform a limited number of retries.
  core.bool? verifiedCiphertextCrc32c;

  AsymmetricDecryptResponse({
    this.plaintext,
    this.plaintextCrc32c,
    this.protectionLevel,
    this.verifiedCiphertextCrc32c,
  });

  AsymmetricDecryptResponse.fromJson(core.Map json_)
      : this(
          plaintext: json_.containsKey('plaintext')
              ? json_['plaintext'] as core.String
              : null,
          plaintextCrc32c: json_.containsKey('plaintextCrc32c')
              ? json_['plaintextCrc32c'] as core.String
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          verifiedCiphertextCrc32c:
              json_.containsKey('verifiedCiphertextCrc32c')
                  ? json_['verifiedCiphertextCrc32c'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (plaintext != null) 'plaintext': plaintext!,
        if (plaintextCrc32c != null) 'plaintextCrc32c': plaintextCrc32c!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (verifiedCiphertextCrc32c != null)
          'verifiedCiphertextCrc32c': verifiedCiphertextCrc32c!,
      };
}

/// Request message for KeyManagementService.AsymmetricSign.
class AsymmetricSignRequest {
  /// The data to sign.
  ///
  /// It can't be supplied if AsymmetricSignRequest.digest is supplied.
  ///
  /// Optional.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the AsymmetricSignRequest.data.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received AsymmetricSignRequest.data using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(AsymmetricSignRequest.data) is equal to
  /// AsymmetricSignRequest.data_crc32c, and if so, perform a limited number of
  /// retries. A persistent mismatch may indicate an issue in your computation
  /// of the CRC32C checksum. Note: This field is defined as int64 for reasons
  /// of compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? dataCrc32c;

  /// The digest of the data to sign.
  ///
  /// The digest must be produced with the same digest algorithm as specified by
  /// the key version's algorithm. This field may not be supplied if
  /// AsymmetricSignRequest.data is supplied.
  ///
  /// Optional.
  Digest? digest;

  /// An optional CRC32C checksum of the AsymmetricSignRequest.digest.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received AsymmetricSignRequest.digest using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(AsymmetricSignRequest.digest) is equal to
  /// AsymmetricSignRequest.digest_crc32c, and if so, perform a limited number
  /// of retries. A persistent mismatch may indicate an issue in your
  /// computation of the CRC32C checksum. Note: This field is defined as int64
  /// for reasons of compatibility across different languages. However, it is a
  /// non-negative integer, which will never exceed 2^32-1, and can be safely
  /// downconverted to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? digestCrc32c;

  AsymmetricSignRequest({
    this.data,
    this.dataCrc32c,
    this.digest,
    this.digestCrc32c,
  });

  AsymmetricSignRequest.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          dataCrc32c: json_.containsKey('dataCrc32c')
              ? json_['dataCrc32c'] as core.String
              : null,
          digest: json_.containsKey('digest')
              ? Digest.fromJson(
                  json_['digest'] as core.Map<core.String, core.dynamic>)
              : null,
          digestCrc32c: json_.containsKey('digestCrc32c')
              ? json_['digestCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (dataCrc32c != null) 'dataCrc32c': dataCrc32c!,
        if (digest != null) 'digest': digest!,
        if (digestCrc32c != null) 'digestCrc32c': digestCrc32c!,
      };
}

/// Response message for KeyManagementService.AsymmetricSign.
class AsymmetricSignResponse {
  /// The resource name of the CryptoKeyVersion used for signing.
  ///
  /// Check this field to verify that the intended resource was used for
  /// signing.
  core.String? name;

  /// The ProtectionLevel of the CryptoKeyVersion used for signing.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// The created signature.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned AsymmetricSignResponse.signature. An
  /// integrity check of AsymmetricSignResponse.signature can be performed by
  /// computing the CRC32C checksum of AsymmetricSignResponse.signature and
  /// comparing your results to this field. Discard the response in case of
  /// non-matching checksum values, and perform a limited number of retries. A
  /// persistent mismatch may indicate an issue in your computation of the
  /// CRC32C checksum. Note: This field is defined as int64 for reasons of
  /// compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  core.String? signatureCrc32c;

  /// Integrity verification field.
  ///
  /// A flag indicating whether AsymmetricSignRequest.data_crc32c was received
  /// by KeyManagementService and used for the integrity verification of the
  /// data. A false value of this field indicates either that
  /// AsymmetricSignRequest.data_crc32c was left unset or that it was not
  /// delivered to KeyManagementService. If you've set
  /// AsymmetricSignRequest.data_crc32c but this field is still false, discard
  /// the response and perform a limited number of retries.
  core.bool? verifiedDataCrc32c;

  /// Integrity verification field.
  ///
  /// A flag indicating whether AsymmetricSignRequest.digest_crc32c was received
  /// by KeyManagementService and used for the integrity verification of the
  /// digest. A false value of this field indicates either that
  /// AsymmetricSignRequest.digest_crc32c was left unset or that it was not
  /// delivered to KeyManagementService. If you've set
  /// AsymmetricSignRequest.digest_crc32c but this field is still false, discard
  /// the response and perform a limited number of retries.
  core.bool? verifiedDigestCrc32c;

  AsymmetricSignResponse({
    this.name,
    this.protectionLevel,
    this.signature,
    this.signatureCrc32c,
    this.verifiedDataCrc32c,
    this.verifiedDigestCrc32c,
  });

  AsymmetricSignResponse.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
          signatureCrc32c: json_.containsKey('signatureCrc32c')
              ? json_['signatureCrc32c'] as core.String
              : null,
          verifiedDataCrc32c: json_.containsKey('verifiedDataCrc32c')
              ? json_['verifiedDataCrc32c'] as core.bool
              : null,
          verifiedDigestCrc32c: json_.containsKey('verifiedDigestCrc32c')
              ? json_['verifiedDigestCrc32c'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (signature != null) 'signature': signature!,
        if (signatureCrc32c != null) 'signatureCrc32c': signatureCrc32c!,
        if (verifiedDataCrc32c != null)
          'verifiedDataCrc32c': verifiedDataCrc32c!,
        if (verifiedDigestCrc32c != null)
          'verifiedDigestCrc32c': verifiedDigestCrc32c!,
      };
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
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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

/// A Certificate represents an X.509 certificate used to authenticate HTTPS
/// connections to EKM replicas.
class Certificate {
  /// The issuer distinguished name in RFC 2253 format.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? issuer;

  /// The certificate is not valid after this time.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? notAfterTime;

  /// The certificate is not valid before this time.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? notBeforeTime;

  /// True if the certificate was parsed successfully.
  ///
  /// Output only.
  core.bool? parsed;

  /// The raw certificate bytes in DER format.
  ///
  /// Required.
  core.String? rawDer;
  core.List<core.int> get rawDerAsBytes => convert.base64.decode(rawDer!);

  set rawDerAsBytes(core.List<core.int> bytes_) {
    rawDer =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The certificate serial number as a hex string.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? serialNumber;

  /// The SHA-256 certificate fingerprint as a hex string.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? sha256Fingerprint;

  /// The subject distinguished name in RFC 2253 format.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.String? subject;

  /// The subject Alternative DNS names.
  ///
  /// Only present if parsed is true.
  ///
  /// Output only.
  core.List<core.String>? subjectAlternativeDnsNames;

  Certificate({
    this.issuer,
    this.notAfterTime,
    this.notBeforeTime,
    this.parsed,
    this.rawDer,
    this.serialNumber,
    this.sha256Fingerprint,
    this.subject,
    this.subjectAlternativeDnsNames,
  });

  Certificate.fromJson(core.Map json_)
      : this(
          issuer: json_.containsKey('issuer')
              ? json_['issuer'] as core.String
              : null,
          notAfterTime: json_.containsKey('notAfterTime')
              ? json_['notAfterTime'] as core.String
              : null,
          notBeforeTime: json_.containsKey('notBeforeTime')
              ? json_['notBeforeTime'] as core.String
              : null,
          parsed:
              json_.containsKey('parsed') ? json_['parsed'] as core.bool : null,
          rawDer: json_.containsKey('rawDer')
              ? json_['rawDer'] as core.String
              : null,
          serialNumber: json_.containsKey('serialNumber')
              ? json_['serialNumber'] as core.String
              : null,
          sha256Fingerprint: json_.containsKey('sha256Fingerprint')
              ? json_['sha256Fingerprint'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? json_['subject'] as core.String
              : null,
          subjectAlternativeDnsNames:
              json_.containsKey('subjectAlternativeDnsNames')
                  ? (json_['subjectAlternativeDnsNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issuer != null) 'issuer': issuer!,
        if (notAfterTime != null) 'notAfterTime': notAfterTime!,
        if (notBeforeTime != null) 'notBeforeTime': notBeforeTime!,
        if (parsed != null) 'parsed': parsed!,
        if (rawDer != null) 'rawDer': rawDer!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (sha256Fingerprint != null) 'sha256Fingerprint': sha256Fingerprint!,
        if (subject != null) 'subject': subject!,
        if (subjectAlternativeDnsNames != null)
          'subjectAlternativeDnsNames': subjectAlternativeDnsNames!,
      };
}

/// Certificate chains needed to verify the attestation.
///
/// Certificates in chains are PEM-encoded and are ordered based on
/// https://tools.ietf.org/html/rfc5246#section-7.4.2.
class CertificateChains {
  /// Cavium certificate chain corresponding to the attestation.
  core.List<core.String>? caviumCerts;

  /// Google card certificate chain corresponding to the attestation.
  core.List<core.String>? googleCardCerts;

  /// Google partition certificate chain corresponding to the attestation.
  core.List<core.String>? googlePartitionCerts;

  CertificateChains({
    this.caviumCerts,
    this.googleCardCerts,
    this.googlePartitionCerts,
  });

  CertificateChains.fromJson(core.Map json_)
      : this(
          caviumCerts: json_.containsKey('caviumCerts')
              ? (json_['caviumCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          googleCardCerts: json_.containsKey('googleCardCerts')
              ? (json_['googleCardCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          googlePartitionCerts: json_.containsKey('googlePartitionCerts')
              ? (json_['googlePartitionCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caviumCerts != null) 'caviumCerts': caviumCerts!,
        if (googleCardCerts != null) 'googleCardCerts': googleCardCerts!,
        if (googlePartitionCerts != null)
          'googlePartitionCerts': googlePartitionCerts!,
      };
}

/// A CryptoKey represents a logical key that can be used for cryptographic
/// operations.
///
/// A CryptoKey is made up of zero or more versions, which represent the actual
/// key material used in cryptographic operations.
class CryptoKey {
  /// The time at which this CryptoKey was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the backend environment where the key material for
  /// all CryptoKeyVersions associated with this CryptoKey reside and where all
  /// related cryptographic operations are performed.
  ///
  /// Only applicable if CryptoKeyVersions have a ProtectionLevel of
  /// EXTERNAL_VPC, with the resource name in the format `projects / *
  /// /locations / * /ekmConnections / * `. Note, this list is non-exhaustive
  /// and may apply to additional ProtectionLevels in the future.
  ///
  /// Immutable.
  core.String? cryptoKeyBackend;

  /// The period of time that versions of this key spend in the
  /// DESTROY_SCHEDULED state before transitioning to DESTROYED.
  ///
  /// If not specified at creation time, the default duration is 24 hours.
  ///
  /// Immutable.
  core.String? destroyScheduledDuration;

  /// Whether this key may contain imported versions only.
  ///
  /// Immutable.
  core.bool? importOnly;

  /// Labels with user-defined metadata.
  ///
  /// For more information, see
  /// [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  core.Map<core.String, core.String>? labels;

  /// The resource name for this CryptoKey in the format `projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * `.
  ///
  /// Output only.
  core.String? name;

  /// At next_rotation_time, the Key Management Service will automatically: 1.
  ///
  /// Create a new version of this CryptoKey. 2. Mark the new version as
  /// primary. Key rotations performed manually via CreateCryptoKeyVersion and
  /// UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with
  /// purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this
  /// field must be omitted.
  core.String? nextRotationTime;

  /// A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when
  /// this CryptoKey is given in EncryptRequest.name.
  ///
  /// The CryptoKey's primary version can be updated via
  /// UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have
  /// a primary. For other keys, this field will be omitted.
  ///
  /// Output only.
  CryptoKeyVersion? primary;

  /// The immutable purpose of this CryptoKey.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CRYPTO_KEY_PURPOSE_UNSPECIFIED" : Not specified.
  /// - "ENCRYPT_DECRYPT" : CryptoKeys with this purpose may be used with
  /// Encrypt and Decrypt.
  /// - "ASYMMETRIC_SIGN" : CryptoKeys with this purpose may be used with
  /// AsymmetricSign and GetPublicKey.
  /// - "ASYMMETRIC_DECRYPT" : CryptoKeys with this purpose may be used with
  /// AsymmetricDecrypt and GetPublicKey.
  /// - "MAC" : CryptoKeys with this purpose may be used with MacSign.
  core.String? purpose;

  /// next_rotation_time will be advanced by this period when the service
  /// automatically rotates a key.
  ///
  /// Must be at least 24 hours and at most 876,000 hours. If rotation_period is
  /// set, next_rotation_time must also be set. Keys with purpose
  /// ENCRYPT_DECRYPT support automatic rotation. For other keys, this field
  /// must be omitted.
  core.String? rotationPeriod;

  /// A template describing settings for new CryptoKeyVersion instances.
  ///
  /// The properties of new CryptoKeyVersion instances created by either
  /// CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  CryptoKeyVersionTemplate? versionTemplate;

  CryptoKey({
    this.createTime,
    this.cryptoKeyBackend,
    this.destroyScheduledDuration,
    this.importOnly,
    this.labels,
    this.name,
    this.nextRotationTime,
    this.primary,
    this.purpose,
    this.rotationPeriod,
    this.versionTemplate,
  });

  CryptoKey.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          cryptoKeyBackend: json_.containsKey('cryptoKeyBackend')
              ? json_['cryptoKeyBackend'] as core.String
              : null,
          destroyScheduledDuration:
              json_.containsKey('destroyScheduledDuration')
                  ? json_['destroyScheduledDuration'] as core.String
                  : null,
          importOnly: json_.containsKey('importOnly')
              ? json_['importOnly'] as core.bool
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nextRotationTime: json_.containsKey('nextRotationTime')
              ? json_['nextRotationTime'] as core.String
              : null,
          primary: json_.containsKey('primary')
              ? CryptoKeyVersion.fromJson(
                  json_['primary'] as core.Map<core.String, core.dynamic>)
              : null,
          purpose: json_.containsKey('purpose')
              ? json_['purpose'] as core.String
              : null,
          rotationPeriod: json_.containsKey('rotationPeriod')
              ? json_['rotationPeriod'] as core.String
              : null,
          versionTemplate: json_.containsKey('versionTemplate')
              ? CryptoKeyVersionTemplate.fromJson(json_['versionTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (cryptoKeyBackend != null) 'cryptoKeyBackend': cryptoKeyBackend!,
        if (destroyScheduledDuration != null)
          'destroyScheduledDuration': destroyScheduledDuration!,
        if (importOnly != null) 'importOnly': importOnly!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (nextRotationTime != null) 'nextRotationTime': nextRotationTime!,
        if (primary != null) 'primary': primary!,
        if (purpose != null) 'purpose': purpose!,
        if (rotationPeriod != null) 'rotationPeriod': rotationPeriod!,
        if (versionTemplate != null) 'versionTemplate': versionTemplate!,
      };
}

/// A CryptoKeyVersion represents an individual cryptographic key, and the
/// associated key material.
///
/// An ENABLED version can be used for cryptographic operations. For security
/// reasons, the raw cryptographic key material represented by a
/// CryptoKeyVersion can never be viewed or exported. It can only be used to
/// encrypt, decrypt, or sign data when an authorized user or application
/// invokes Cloud KMS.
class CryptoKeyVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "RSA_SIGN_RAW_PKCS1_2048" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 2048 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_3072" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 3072 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_4096" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 4096 bit key.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA256" : RSAES-OAEP 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA512" : RSAES-OAEP 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA1" : RSAES-OAEP 2048 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA1" : RSAES-OAEP 3072 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA1" : RSAES-OAEP 4096 bit key with a SHA1
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "EC_SIGN_SECP256K1_SHA256" : ECDSA on the non-NIST secp256k1 curve. This
  /// curve is only supported for HSM protection level.
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
  core.String? algorithm;

  /// Statement that was generated and signed by the HSM at key creation time.
  ///
  /// Use this statement to verify attributes of the key as stored on the HSM,
  /// independently of Google. Only provided for key versions with
  /// protection_level HSM.
  ///
  /// Output only.
  KeyOperationAttestation? attestation;

  /// The time at which this CryptoKeyVersion was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time this CryptoKeyVersion's key material was destroyed.
  ///
  /// Only present if state is DESTROYED.
  ///
  /// Output only.
  core.String? destroyEventTime;

  /// The time this CryptoKeyVersion's key material is scheduled for
  /// destruction.
  ///
  /// Only present if state is DESTROY_SCHEDULED.
  ///
  /// Output only.
  core.String? destroyTime;

  /// ExternalProtectionLevelOptions stores a group of additional fields for
  /// configuring a CryptoKeyVersion that are specific to the EXTERNAL
  /// protection level and EXTERNAL_VPC protection levels.
  ExternalProtectionLevelOptions? externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion's key material was generated.
  ///
  /// Output only.
  core.String? generateTime;

  /// The root cause of the most recent import failure.
  ///
  /// Only present if state is IMPORT_FAILED.
  ///
  /// Output only.
  core.String? importFailureReason;

  /// The name of the ImportJob used in the most recent import of this
  /// CryptoKeyVersion.
  ///
  /// Only present if the underlying key material was imported.
  ///
  /// Output only.
  core.String? importJob;

  /// The time at which this CryptoKeyVersion's key material was most recently
  /// imported.
  ///
  /// Output only.
  core.String? importTime;

  /// The resource name for this CryptoKeyVersion in the format `projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * /cryptoKeyVersions / * `.
  ///
  /// Output only.
  core.String? name;

  /// The ProtectionLevel describing how crypto operations are performed with
  /// this CryptoKeyVersion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Whether or not this key version is eligible for reimport, by being
  /// specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  ///
  /// Output only.
  core.bool? reimportEligible;

  /// The current state of the CryptoKeyVersion.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" : Not specified.
  /// - "PENDING_GENERATION" : This version is still being generated. It may not
  /// be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically
  /// mark this version ENABLED as soon as the version is ready.
  /// - "ENABLED" : This version may be used for cryptographic operations.
  /// - "DISABLED" : This version may not be used, but the key material is still
  /// available, and the version can be placed back into the ENABLED state.
  /// - "DESTROYED" : This version is destroyed, and the key material is no
  /// longer stored. This version may only become ENABLED again if this version
  /// is reimport_eligible and the original key material is reimported with a
  /// call to KeyManagementService.ImportCryptoKeyVersion.
  /// - "DESTROY_SCHEDULED" : This version is scheduled for destruction, and
  /// will be destroyed soon. Call RestoreCryptoKeyVersion to put it back into
  /// the DISABLED state.
  /// - "PENDING_IMPORT" : This version is still being imported. It may not be
  /// used, enabled, disabled, or destroyed yet. Cloud KMS will automatically
  /// mark this version ENABLED as soon as the version is ready.
  /// - "IMPORT_FAILED" : This version was not imported successfully. It may not
  /// be used, enabled, disabled, or destroyed. The submitted key material has
  /// been discarded. Additional details can be found in
  /// CryptoKeyVersion.import_failure_reason.
  core.String? state;

  CryptoKeyVersion({
    this.algorithm,
    this.attestation,
    this.createTime,
    this.destroyEventTime,
    this.destroyTime,
    this.externalProtectionLevelOptions,
    this.generateTime,
    this.importFailureReason,
    this.importJob,
    this.importTime,
    this.name,
    this.protectionLevel,
    this.reimportEligible,
    this.state,
  });

  CryptoKeyVersion.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          attestation: json_.containsKey('attestation')
              ? KeyOperationAttestation.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          destroyEventTime: json_.containsKey('destroyEventTime')
              ? json_['destroyEventTime'] as core.String
              : null,
          destroyTime: json_.containsKey('destroyTime')
              ? json_['destroyTime'] as core.String
              : null,
          externalProtectionLevelOptions:
              json_.containsKey('externalProtectionLevelOptions')
                  ? ExternalProtectionLevelOptions.fromJson(
                      json_['externalProtectionLevelOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          generateTime: json_.containsKey('generateTime')
              ? json_['generateTime'] as core.String
              : null,
          importFailureReason: json_.containsKey('importFailureReason')
              ? json_['importFailureReason'] as core.String
              : null,
          importJob: json_.containsKey('importJob')
              ? json_['importJob'] as core.String
              : null,
          importTime: json_.containsKey('importTime')
              ? json_['importTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          reimportEligible: json_.containsKey('reimportEligible')
              ? json_['reimportEligible'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (attestation != null) 'attestation': attestation!,
        if (createTime != null) 'createTime': createTime!,
        if (destroyEventTime != null) 'destroyEventTime': destroyEventTime!,
        if (destroyTime != null) 'destroyTime': destroyTime!,
        if (externalProtectionLevelOptions != null)
          'externalProtectionLevelOptions': externalProtectionLevelOptions!,
        if (generateTime != null) 'generateTime': generateTime!,
        if (importFailureReason != null)
          'importFailureReason': importFailureReason!,
        if (importJob != null) 'importJob': importJob!,
        if (importTime != null) 'importTime': importTime!,
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (reimportEligible != null) 'reimportEligible': reimportEligible!,
        if (state != null) 'state': state!,
      };
}

/// A CryptoKeyVersionTemplate specifies the properties to use when creating a
/// new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or
/// automatically as a result of auto-rotation.
class CryptoKeyVersionTemplate {
  /// Algorithm to use when creating a CryptoKeyVersion based on this template.
  ///
  /// For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if
  /// both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "RSA_SIGN_RAW_PKCS1_2048" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 2048 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_3072" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 3072 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_4096" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 4096 bit key.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA256" : RSAES-OAEP 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA512" : RSAES-OAEP 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA1" : RSAES-OAEP 2048 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA1" : RSAES-OAEP 3072 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA1" : RSAES-OAEP 4096 bit key with a SHA1
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "EC_SIGN_SECP256K1_SHA256" : ECDSA on the non-NIST secp256k1 curve. This
  /// curve is only supported for HSM protection level.
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
  core.String? algorithm;

  /// ProtectionLevel to use when creating a CryptoKeyVersion based on this
  /// template.
  ///
  /// Immutable. Defaults to SOFTWARE.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  CryptoKeyVersionTemplate({
    this.algorithm,
    this.protectionLevel,
  });

  CryptoKeyVersionTemplate.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
      };
}

/// Request message for KeyManagementService.Decrypt.
class DecryptRequest {
  /// Optional data that must match the data originally supplied in
  /// EncryptRequest.additional_authenticated_data.
  ///
  /// Optional.
  core.String? additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes =>
      convert.base64.decode(additionalAuthenticatedData!);

  set additionalAuthenticatedDataAsBytes(core.List<core.int> bytes_) {
    additionalAuthenticatedData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the
  /// DecryptRequest.additional_authenticated_data.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received DecryptRequest.additional_authenticated_data using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(DecryptRequest.additional_authenticated_data) is equal to
  /// DecryptRequest.additional_authenticated_data_crc32c, and if so, perform a
  /// limited number of retries. A persistent mismatch may indicate an issue in
  /// your computation of the CRC32C checksum. Note: This field is defined as
  /// int64 for reasons of compatibility across different languages. However, it
  /// is a non-negative integer, which will never exceed 2^32-1, and can be
  /// safely downconverted to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? additionalAuthenticatedDataCrc32c;

  /// The encrypted data originally returned in EncryptResponse.ciphertext.
  ///
  /// Required.
  core.String? ciphertext;
  core.List<core.int> get ciphertextAsBytes =>
      convert.base64.decode(ciphertext!);

  set ciphertextAsBytes(core.List<core.int> bytes_) {
    ciphertext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the DecryptRequest.ciphertext.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received DecryptRequest.ciphertext using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(DecryptRequest.ciphertext) is equal to
  /// DecryptRequest.ciphertext_crc32c, and if so, perform a limited number of
  /// retries. A persistent mismatch may indicate an issue in your computation
  /// of the CRC32C checksum. Note: This field is defined as int64 for reasons
  /// of compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? ciphertextCrc32c;

  DecryptRequest({
    this.additionalAuthenticatedData,
    this.additionalAuthenticatedDataCrc32c,
    this.ciphertext,
    this.ciphertextCrc32c,
  });

  DecryptRequest.fromJson(core.Map json_)
      : this(
          additionalAuthenticatedData:
              json_.containsKey('additionalAuthenticatedData')
                  ? json_['additionalAuthenticatedData'] as core.String
                  : null,
          additionalAuthenticatedDataCrc32c:
              json_.containsKey('additionalAuthenticatedDataCrc32c')
                  ? json_['additionalAuthenticatedDataCrc32c'] as core.String
                  : null,
          ciphertext: json_.containsKey('ciphertext')
              ? json_['ciphertext'] as core.String
              : null,
          ciphertextCrc32c: json_.containsKey('ciphertextCrc32c')
              ? json_['ciphertextCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalAuthenticatedData != null)
          'additionalAuthenticatedData': additionalAuthenticatedData!,
        if (additionalAuthenticatedDataCrc32c != null)
          'additionalAuthenticatedDataCrc32c':
              additionalAuthenticatedDataCrc32c!,
        if (ciphertext != null) 'ciphertext': ciphertext!,
        if (ciphertextCrc32c != null) 'ciphertextCrc32c': ciphertextCrc32c!,
      };
}

/// Response message for KeyManagementService.Decrypt.
class DecryptResponse {
  /// The decrypted data originally supplied in EncryptRequest.plaintext.
  core.String? plaintext;
  core.List<core.int> get plaintextAsBytes => convert.base64.decode(plaintext!);

  set plaintextAsBytes(core.List<core.int> bytes_) {
    plaintext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned DecryptResponse.plaintext. An integrity
  /// check of DecryptResponse.plaintext can be performed by computing the
  /// CRC32C checksum of DecryptResponse.plaintext and comparing your results to
  /// this field. Discard the response in case of non-matching checksum values,
  /// and perform a limited number of retries. A persistent mismatch may
  /// indicate an issue in your computation of the CRC32C checksum. Note:
  /// receiving this response message indicates that KeyManagementService is
  /// able to successfully decrypt the ciphertext. Note: This field is defined
  /// as int64 for reasons of compatibility across different languages. However,
  /// it is a non-negative integer, which will never exceed 2^32-1, and can be
  /// safely downconverted to uint32 in languages that support this type.
  core.String? plaintextCrc32c;

  /// The ProtectionLevel of the CryptoKeyVersion used in decryption.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Whether the Decryption was performed using the primary key version.
  core.bool? usedPrimary;

  DecryptResponse({
    this.plaintext,
    this.plaintextCrc32c,
    this.protectionLevel,
    this.usedPrimary,
  });

  DecryptResponse.fromJson(core.Map json_)
      : this(
          plaintext: json_.containsKey('plaintext')
              ? json_['plaintext'] as core.String
              : null,
          plaintextCrc32c: json_.containsKey('plaintextCrc32c')
              ? json_['plaintextCrc32c'] as core.String
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          usedPrimary: json_.containsKey('usedPrimary')
              ? json_['usedPrimary'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (plaintext != null) 'plaintext': plaintext!,
        if (plaintextCrc32c != null) 'plaintextCrc32c': plaintextCrc32c!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (usedPrimary != null) 'usedPrimary': usedPrimary!,
      };
}

/// Request message for KeyManagementService.DestroyCryptoKeyVersion.
typedef DestroyCryptoKeyVersionRequest = $Empty;

/// A Digest holds a cryptographic message digest.
class Digest {
  /// A message digest produced with the SHA-256 algorithm.
  core.String? sha256;
  core.List<core.int> get sha256AsBytes => convert.base64.decode(sha256!);

  set sha256AsBytes(core.List<core.int> bytes_) {
    sha256 =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A message digest produced with the SHA-384 algorithm.
  core.String? sha384;
  core.List<core.int> get sha384AsBytes => convert.base64.decode(sha384!);

  set sha384AsBytes(core.List<core.int> bytes_) {
    sha384 =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A message digest produced with the SHA-512 algorithm.
  core.String? sha512;
  core.List<core.int> get sha512AsBytes => convert.base64.decode(sha512!);

  set sha512AsBytes(core.List<core.int> bytes_) {
    sha512 =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Digest({
    this.sha256,
    this.sha384,
    this.sha512,
  });

  Digest.fromJson(core.Map json_)
      : this(
          sha256: json_.containsKey('sha256')
              ? json_['sha256'] as core.String
              : null,
          sha384: json_.containsKey('sha384')
              ? json_['sha384'] as core.String
              : null,
          sha512: json_.containsKey('sha512')
              ? json_['sha512'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256 != null) 'sha256': sha256!,
        if (sha384 != null) 'sha384': sha384!,
        if (sha512 != null) 'sha512': sha512!,
      };
}

/// An EkmConnection represents an individual EKM connection.
///
/// It can be used for creating CryptoKeys and CryptoKeyVersions with a
/// ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic
/// operations using keys created within the EkmConnection.
class EkmConnection {
  /// The time at which the EkmConnection was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Etag of the currently stored EkmConnection.
  ///
  /// Optional.
  core.String? etag;

  /// The resource name for the EkmConnection in the format `projects / *
  /// /locations / * /ekmConnections / * `.
  ///
  /// Output only.
  core.String? name;

  /// A list of ServiceResolvers where the EKM can be reached.
  ///
  /// There should be one ServiceResolver per EKM replica. Currently, only a
  /// single ServiceResolver is supported.
  core.List<ServiceResolver>? serviceResolvers;

  EkmConnection({
    this.createTime,
    this.etag,
    this.name,
    this.serviceResolvers,
  });

  EkmConnection.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceResolvers: json_.containsKey('serviceResolvers')
              ? (json_['serviceResolvers'] as core.List)
                  .map((value) => ServiceResolver.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (serviceResolvers != null) 'serviceResolvers': serviceResolvers!,
      };
}

/// Request message for KeyManagementService.Encrypt.
class EncryptRequest {
  /// Optional data that, if specified, must also be provided during decryption
  /// through DecryptRequest.additional_authenticated_data.
  ///
  /// The maximum size depends on the key version's protection_level. For
  /// SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys the AAD must be no larger than
  /// 64KiB. For HSM keys, the combined length of the plaintext and
  /// additional_authenticated_data fields must be no larger than 8KiB.
  ///
  /// Optional.
  core.String? additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes =>
      convert.base64.decode(additionalAuthenticatedData!);

  set additionalAuthenticatedDataAsBytes(core.List<core.int> bytes_) {
    additionalAuthenticatedData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the
  /// EncryptRequest.additional_authenticated_data.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received EncryptRequest.additional_authenticated_data using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(EncryptRequest.additional_authenticated_data) is equal to
  /// EncryptRequest.additional_authenticated_data_crc32c, and if so, perform a
  /// limited number of retries. A persistent mismatch may indicate an issue in
  /// your computation of the CRC32C checksum. Note: This field is defined as
  /// int64 for reasons of compatibility across different languages. However, it
  /// is a non-negative integer, which will never exceed 2^32-1, and can be
  /// safely downconverted to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? additionalAuthenticatedDataCrc32c;

  /// The data to encrypt.
  ///
  /// Must be no larger than 64KiB. The maximum size depends on the key
  /// version's protection_level. For SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys,
  /// the plaintext must be no larger than 64KiB. For HSM keys, the combined
  /// length of the plaintext and additional_authenticated_data fields must be
  /// no larger than 8KiB.
  ///
  /// Required.
  core.String? plaintext;
  core.List<core.int> get plaintextAsBytes => convert.base64.decode(plaintext!);

  set plaintextAsBytes(core.List<core.int> bytes_) {
    plaintext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the EncryptRequest.plaintext.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received EncryptRequest.plaintext using this checksum.
  /// KeyManagementService will report an error if the checksum verification
  /// fails. If you receive a checksum error, your client should verify that
  /// CRC32C(EncryptRequest.plaintext) is equal to
  /// EncryptRequest.plaintext_crc32c, and if so, perform a limited number of
  /// retries. A persistent mismatch may indicate an issue in your computation
  /// of the CRC32C checksum. Note: This field is defined as int64 for reasons
  /// of compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? plaintextCrc32c;

  EncryptRequest({
    this.additionalAuthenticatedData,
    this.additionalAuthenticatedDataCrc32c,
    this.plaintext,
    this.plaintextCrc32c,
  });

  EncryptRequest.fromJson(core.Map json_)
      : this(
          additionalAuthenticatedData:
              json_.containsKey('additionalAuthenticatedData')
                  ? json_['additionalAuthenticatedData'] as core.String
                  : null,
          additionalAuthenticatedDataCrc32c:
              json_.containsKey('additionalAuthenticatedDataCrc32c')
                  ? json_['additionalAuthenticatedDataCrc32c'] as core.String
                  : null,
          plaintext: json_.containsKey('plaintext')
              ? json_['plaintext'] as core.String
              : null,
          plaintextCrc32c: json_.containsKey('plaintextCrc32c')
              ? json_['plaintextCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalAuthenticatedData != null)
          'additionalAuthenticatedData': additionalAuthenticatedData!,
        if (additionalAuthenticatedDataCrc32c != null)
          'additionalAuthenticatedDataCrc32c':
              additionalAuthenticatedDataCrc32c!,
        if (plaintext != null) 'plaintext': plaintext!,
        if (plaintextCrc32c != null) 'plaintextCrc32c': plaintextCrc32c!,
      };
}

/// Response message for KeyManagementService.Encrypt.
class EncryptResponse {
  /// The encrypted data.
  core.String? ciphertext;
  core.List<core.int> get ciphertextAsBytes =>
      convert.base64.decode(ciphertext!);

  set ciphertextAsBytes(core.List<core.int> bytes_) {
    ciphertext =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned EncryptResponse.ciphertext. An integrity
  /// check of EncryptResponse.ciphertext can be performed by computing the
  /// CRC32C checksum of EncryptResponse.ciphertext and comparing your results
  /// to this field. Discard the response in case of non-matching checksum
  /// values, and perform a limited number of retries. A persistent mismatch may
  /// indicate an issue in your computation of the CRC32C checksum. Note: This
  /// field is defined as int64 for reasons of compatibility across different
  /// languages. However, it is a non-negative integer, which will never exceed
  /// 2^32-1, and can be safely downconverted to uint32 in languages that
  /// support this type.
  core.String? ciphertextCrc32c;

  /// The resource name of the CryptoKeyVersion used in encryption.
  ///
  /// Check this field to verify that the intended resource was used for
  /// encryption.
  core.String? name;

  /// The ProtectionLevel of the CryptoKeyVersion used in encryption.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Integrity verification field.
  ///
  /// A flag indicating whether
  /// EncryptRequest.additional_authenticated_data_crc32c was received by
  /// KeyManagementService and used for the integrity verification of the AAD. A
  /// false value of this field indicates either that
  /// EncryptRequest.additional_authenticated_data_crc32c was left unset or that
  /// it was not delivered to KeyManagementService. If you've set
  /// EncryptRequest.additional_authenticated_data_crc32c but this field is
  /// still false, discard the response and perform a limited number of retries.
  core.bool? verifiedAdditionalAuthenticatedDataCrc32c;

  /// Integrity verification field.
  ///
  /// A flag indicating whether EncryptRequest.plaintext_crc32c was received by
  /// KeyManagementService and used for the integrity verification of the
  /// plaintext. A false value of this field indicates either that
  /// EncryptRequest.plaintext_crc32c was left unset or that it was not
  /// delivered to KeyManagementService. If you've set
  /// EncryptRequest.plaintext_crc32c but this field is still false, discard the
  /// response and perform a limited number of retries.
  core.bool? verifiedPlaintextCrc32c;

  EncryptResponse({
    this.ciphertext,
    this.ciphertextCrc32c,
    this.name,
    this.protectionLevel,
    this.verifiedAdditionalAuthenticatedDataCrc32c,
    this.verifiedPlaintextCrc32c,
  });

  EncryptResponse.fromJson(core.Map json_)
      : this(
          ciphertext: json_.containsKey('ciphertext')
              ? json_['ciphertext'] as core.String
              : null,
          ciphertextCrc32c: json_.containsKey('ciphertextCrc32c')
              ? json_['ciphertextCrc32c'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          verifiedAdditionalAuthenticatedDataCrc32c: json_
                  .containsKey('verifiedAdditionalAuthenticatedDataCrc32c')
              ? json_['verifiedAdditionalAuthenticatedDataCrc32c'] as core.bool
              : null,
          verifiedPlaintextCrc32c: json_.containsKey('verifiedPlaintextCrc32c')
              ? json_['verifiedPlaintextCrc32c'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ciphertext != null) 'ciphertext': ciphertext!,
        if (ciphertextCrc32c != null) 'ciphertextCrc32c': ciphertextCrc32c!,
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (verifiedAdditionalAuthenticatedDataCrc32c != null)
          'verifiedAdditionalAuthenticatedDataCrc32c':
              verifiedAdditionalAuthenticatedDataCrc32c!,
        if (verifiedPlaintextCrc32c != null)
          'verifiedPlaintextCrc32c': verifiedPlaintextCrc32c!,
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

/// ExternalProtectionLevelOptions stores a group of additional fields for
/// configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
/// level and EXTERNAL_VPC protection levels.
class ExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection
  /// e.g., "v0/my/key".
  ///
  /// Set this field instead of external_key_uri when using an EkmConnection.
  core.String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  core.String? externalKeyUri;

  ExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  ExternalProtectionLevelOptions.fromJson(core.Map json_)
      : this(
          ekmConnectionKeyPath: json_.containsKey('ekmConnectionKeyPath')
              ? json_['ekmConnectionKeyPath'] as core.String
              : null,
          externalKeyUri: json_.containsKey('externalKeyUri')
              ? json_['externalKeyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmConnectionKeyPath != null)
          'ekmConnectionKeyPath': ekmConnectionKeyPath!,
        if (externalKeyUri != null) 'externalKeyUri': externalKeyUri!,
      };
}

/// Request message for KeyManagementService.GenerateRandomBytes.
class GenerateRandomBytesRequest {
  /// The length in bytes of the amount of randomness to retrieve.
  ///
  /// Minimum 8 bytes, maximum 1024 bytes.
  core.int? lengthBytes;

  /// The ProtectionLevel to use when generating the random data.
  ///
  /// Currently, only HSM protection level is supported.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  GenerateRandomBytesRequest({
    this.lengthBytes,
    this.protectionLevel,
  });

  GenerateRandomBytesRequest.fromJson(core.Map json_)
      : this(
          lengthBytes: json_.containsKey('lengthBytes')
              ? json_['lengthBytes'] as core.int
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lengthBytes != null) 'lengthBytes': lengthBytes!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
      };
}

/// Response message for KeyManagementService.GenerateRandomBytes.
class GenerateRandomBytesResponse {
  /// The generated data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned GenerateRandomBytesResponse.data. An
  /// integrity check of GenerateRandomBytesResponse.data can be performed by
  /// computing the CRC32C checksum of GenerateRandomBytesResponse.data and
  /// comparing your results to this field. Discard the response in case of
  /// non-matching checksum values, and perform a limited number of retries. A
  /// persistent mismatch may indicate an issue in your computation of the
  /// CRC32C checksum. Note: This field is defined as int64 for reasons of
  /// compatibility across different languages. However, it is a non-negative
  /// integer, which will never exceed 2^32-1, and can be safely downconverted
  /// to uint32 in languages that support this type.
  core.String? dataCrc32c;

  GenerateRandomBytesResponse({
    this.data,
    this.dataCrc32c,
  });

  GenerateRandomBytesResponse.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          dataCrc32c: json_.containsKey('dataCrc32c')
              ? json_['dataCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (dataCrc32c != null) 'dataCrc32c': dataCrc32c!,
      };
}

/// Request message for KeyManagementService.ImportCryptoKeyVersion.
class ImportCryptoKeyVersionRequest {
  /// The algorithm of the key being imported.
  ///
  /// This does not need to match the version_template of the CryptoKey this
  /// version imports into.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "RSA_SIGN_RAW_PKCS1_2048" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 2048 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_3072" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 3072 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_4096" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 4096 bit key.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA256" : RSAES-OAEP 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA512" : RSAES-OAEP 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA1" : RSAES-OAEP 2048 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA1" : RSAES-OAEP 3072 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA1" : RSAES-OAEP 4096 bit key with a SHA1
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "EC_SIGN_SECP256K1_SHA256" : ECDSA on the non-NIST secp256k1 curve. This
  /// curve is only supported for HSM protection level.
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
  core.String? algorithm;

  /// The optional name of an existing CryptoKeyVersion to target for an import
  /// operation.
  ///
  /// If this field is not present, a new CryptoKeyVersion containing the
  /// supplied key material is created. If this field is present, the supplied
  /// key material is imported into the existing CryptoKeyVersion. To import
  /// into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child of
  /// ImportCryptoKeyVersionRequest.parent, have been previously created via
  /// ImportCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The
  /// key material and algorithm must match the previous CryptoKeyVersion
  /// exactly if the CryptoKeyVersion has ever contained key material.
  ///
  /// Optional.
  core.String? cryptoKeyVersion;

  /// The name of the ImportJob that was used to wrap this key material.
  ///
  /// Required.
  core.String? importJob;

  /// This field has the same meaning as wrapped_key.
  ///
  /// Prefer to use that field in new work. Either that field or this field (but
  /// not both) must be specified.
  ///
  /// Optional.
  core.String? rsaAesWrappedKey;
  core.List<core.int> get rsaAesWrappedKeyAsBytes =>
      convert.base64.decode(rsaAesWrappedKey!);

  set rsaAesWrappedKeyAsBytes(core.List<core.int> bytes_) {
    rsaAesWrappedKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The wrapped key material to import.
  ///
  /// Before wrapping, key material must be formatted. If importing symmetric
  /// key material, the expected key material format is plain bytes. If
  /// importing asymmetric key material, the expected key material format is
  /// PKCS#8-encoded DER (the PrivateKeyInfo structure from RFC 5208). When
  /// wrapping with import methods (RSA_OAEP_3072_SHA1_AES_256 or
  /// RSA_OAEP_4096_SHA1_AES_256 or RSA_OAEP_3072_SHA256_AES_256 or
  /// RSA_OAEP_4096_SHA256_AES_256), this field must contain the concatenation
  /// of: 1. An ephemeral AES-256 wrapping key wrapped with the public_key using
  /// RSAES-OAEP with SHA-1/SHA-256, MGF1 with SHA-1/SHA-256, and an empty
  /// label. 2. The formatted key to be imported, wrapped with the ephemeral
  /// AES-256 key using AES-KWP (RFC 5649). This format is the same as the
  /// format produced by PKCS#11 mechanism CKM_RSA_AES_KEY_WRAP. When wrapping
  /// with import methods (RSA_OAEP_3072_SHA256 or RSA_OAEP_4096_SHA256), this
  /// field must contain the formatted key to be imported, wrapped with the
  /// public_key using RSAES-OAEP with SHA-256, MGF1 with SHA-256, and an empty
  /// label.
  ///
  /// Optional.
  core.String? wrappedKey;
  core.List<core.int> get wrappedKeyAsBytes =>
      convert.base64.decode(wrappedKey!);

  set wrappedKeyAsBytes(core.List<core.int> bytes_) {
    wrappedKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  ImportCryptoKeyVersionRequest({
    this.algorithm,
    this.cryptoKeyVersion,
    this.importJob,
    this.rsaAesWrappedKey,
    this.wrappedKey,
  });

  ImportCryptoKeyVersionRequest.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          cryptoKeyVersion: json_.containsKey('cryptoKeyVersion')
              ? json_['cryptoKeyVersion'] as core.String
              : null,
          importJob: json_.containsKey('importJob')
              ? json_['importJob'] as core.String
              : null,
          rsaAesWrappedKey: json_.containsKey('rsaAesWrappedKey')
              ? json_['rsaAesWrappedKey'] as core.String
              : null,
          wrappedKey: json_.containsKey('wrappedKey')
              ? json_['wrappedKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (cryptoKeyVersion != null) 'cryptoKeyVersion': cryptoKeyVersion!,
        if (importJob != null) 'importJob': importJob!,
        if (rsaAesWrappedKey != null) 'rsaAesWrappedKey': rsaAesWrappedKey!,
        if (wrappedKey != null) 'wrappedKey': wrappedKey!,
      };
}

/// An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using
/// pre-existing key material, generated outside of Cloud KMS.
///
/// When an ImportJob is created, Cloud KMS will generate a "wrapping key",
/// which is a public/private key pair. You use the wrapping key to encrypt
/// (also known as wrap) the pre-existing key material to protect it during the
/// import process. The nature of the wrapping key depends on the choice of
/// import_method. When the wrapping key generation is complete, the state will
/// be set to ACTIVE and the public_key can be fetched. The fetched public key
/// can then be used to wrap your pre-existing key material. Once the key
/// material is wrapped, it can be imported into a new CryptoKeyVersion in an
/// existing CryptoKey by calling ImportCryptoKeyVersion. Multiple
/// CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS uses
/// the private key portion of the wrapping key to unwrap the key material. Only
/// Cloud KMS has access to the private key. An ImportJob expires 3 days after
/// it is created. Once expired, Cloud KMS will no longer be able to import or
/// unwrap any key material that was wrapped with the ImportJob's public key.
/// For more information, see
/// [Importing a key](https://cloud.google.com/kms/docs/importing-a-key).
class ImportJob {
  /// Statement that was generated and signed by the key creator (for example,
  /// an HSM) at key creation time.
  ///
  /// Use this statement to verify attributes of the key as stored on the HSM,
  /// independently of Google. Only present if the chosen ImportMethod is one
  /// with a protection level of HSM.
  ///
  /// Output only.
  KeyOperationAttestation? attestation;

  /// The time at which this ImportJob was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time this ImportJob expired.
  ///
  /// Only present if state is EXPIRED.
  ///
  /// Output only.
  core.String? expireEventTime;

  /// The time at which this ImportJob is scheduled for expiration and can no
  /// longer be used to import key material.
  ///
  /// Output only.
  core.String? expireTime;

  /// The time this ImportJob's key material was generated.
  ///
  /// Output only.
  core.String? generateTime;

  /// The wrapping method to be used for incoming key material.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "IMPORT_METHOD_UNSPECIFIED" : Not specified.
  /// - "RSA_OAEP_3072_SHA1_AES_256" : This ImportMethod represents the
  /// CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard.
  /// In summary, this involves wrapping the raw key with an ephemeral AES key,
  /// and wrapping the ephemeral AES key with a 3072 bit RSA key. For more
  /// details, see
  /// [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
  /// - "RSA_OAEP_4096_SHA1_AES_256" : This ImportMethod represents the
  /// CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard.
  /// In summary, this involves wrapping the raw key with an ephemeral AES key,
  /// and wrapping the ephemeral AES key with a 4096 bit RSA key. For more
  /// details, see
  /// [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
  /// - "RSA_OAEP_3072_SHA256_AES_256" : This ImportMethod represents the
  /// CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard.
  /// In summary, this involves wrapping the raw key with an ephemeral AES key,
  /// and wrapping the ephemeral AES key with a 3072 bit RSA key. For more
  /// details, see
  /// [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
  /// - "RSA_OAEP_4096_SHA256_AES_256" : This ImportMethod represents the
  /// CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard.
  /// In summary, this involves wrapping the raw key with an ephemeral AES key,
  /// and wrapping the ephemeral AES key with a 4096 bit RSA key. For more
  /// details, see
  /// [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).
  /// - "RSA_OAEP_3072_SHA256" : This ImportMethod represents RSAES-OAEP with a
  /// 3072 bit RSA key. The key material to be imported is wrapped directly with
  /// the RSA key. Due to technical limitations of RSA wrapping, this method
  /// cannot be used to wrap RSA keys for import.
  /// - "RSA_OAEP_4096_SHA256" : This ImportMethod represents RSAES-OAEP with a
  /// 4096 bit RSA key. The key material to be imported is wrapped directly with
  /// the RSA key. Due to technical limitations of RSA wrapping, this method
  /// cannot be used to wrap RSA keys for import.
  core.String? importMethod;

  /// The resource name for this ImportJob in the format `projects / *
  /// /locations / * /keyRings / * /importJobs / * `.
  ///
  /// Output only.
  core.String? name;

  /// The protection level of the ImportJob.
  ///
  /// This must match the protection_level of the version_template on the
  /// CryptoKey you attempt to import into.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// The public key with which to wrap key material prior to import.
  ///
  /// Only returned if state is ACTIVE.
  ///
  /// Output only.
  WrappingPublicKey? publicKey;

  /// The current state of the ImportJob, indicating if it can be used.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "IMPORT_JOB_STATE_UNSPECIFIED" : Not specified.
  /// - "PENDING_GENERATION" : The wrapping key for this job is still being
  /// generated. It may not be used. Cloud KMS will automatically mark this job
  /// as ACTIVE as soon as the wrapping key is generated.
  /// - "ACTIVE" : This job may be used in CreateCryptoKey and
  /// CreateCryptoKeyVersion requests.
  /// - "EXPIRED" : This job can no longer be used and may not leave this state
  /// once entered.
  core.String? state;

  ImportJob({
    this.attestation,
    this.createTime,
    this.expireEventTime,
    this.expireTime,
    this.generateTime,
    this.importMethod,
    this.name,
    this.protectionLevel,
    this.publicKey,
    this.state,
  });

  ImportJob.fromJson(core.Map json_)
      : this(
          attestation: json_.containsKey('attestation')
              ? KeyOperationAttestation.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          expireEventTime: json_.containsKey('expireEventTime')
              ? json_['expireEventTime'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          generateTime: json_.containsKey('generateTime')
              ? json_['generateTime'] as core.String
              : null,
          importMethod: json_.containsKey('importMethod')
              ? json_['importMethod'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          publicKey: json_.containsKey('publicKey')
              ? WrappingPublicKey.fromJson(
                  json_['publicKey'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!,
        if (createTime != null) 'createTime': createTime!,
        if (expireEventTime != null) 'expireEventTime': expireEventTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (generateTime != null) 'generateTime': generateTime!,
        if (importMethod != null) 'importMethod': importMethod!,
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (publicKey != null) 'publicKey': publicKey!,
        if (state != null) 'state': state!,
      };
}

/// Contains an HSM-generated attestation about a key operation.
///
/// For more information, see
/// [Verifying attestations](https://cloud.google.com/kms/docs/attest-key).
class KeyOperationAttestation {
  /// The certificate chains needed to validate the attestation
  ///
  /// Output only.
  CertificateChains? certChains;

  /// The attestation data provided by the HSM when the key operation was
  /// performed.
  ///
  /// Output only.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The format of the attestation data.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ATTESTATION_FORMAT_UNSPECIFIED" : Not specified.
  /// - "CAVIUM_V1_COMPRESSED" : Cavium HSM attestation compressed with gzip.
  /// Note that this format is defined by Cavium and subject to change at any
  /// time. See
  /// https://www.marvell.com/products/security-solutions/nitrox-hs-adapters/software-key-attestation.html.
  /// - "CAVIUM_V2_COMPRESSED" : Cavium HSM attestation V2 compressed with gzip.
  /// This is a new format introduced in Cavium's version 3.2-08.
  core.String? format;

  KeyOperationAttestation({
    this.certChains,
    this.content,
    this.format,
  });

  KeyOperationAttestation.fromJson(core.Map json_)
      : this(
          certChains: json_.containsKey('certChains')
              ? CertificateChains.fromJson(
                  json_['certChains'] as core.Map<core.String, core.dynamic>)
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certChains != null) 'certChains': certChains!,
        if (content != null) 'content': content!,
        if (format != null) 'format': format!,
      };
}

/// A KeyRing is a toplevel logical grouping of CryptoKeys.
class KeyRing {
  /// The time at which this KeyRing was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name for the KeyRing in the format `projects / * /locations /
  /// * /keyRings / * `.
  ///
  /// Output only.
  core.String? name;

  KeyRing({
    this.createTime,
    this.name,
  });

  KeyRing.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
      };
}

/// Response message for KeyManagementService.ListCryptoKeyVersions.
class ListCryptoKeyVersionsResponse {
  /// The list of CryptoKeyVersions.
  core.List<CryptoKeyVersion>? cryptoKeyVersions;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCryptoKeyVersionsRequest.page_token to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// The total number of CryptoKeyVersions that matched the query.
  core.int? totalSize;

  ListCryptoKeyVersionsResponse({
    this.cryptoKeyVersions,
    this.nextPageToken,
    this.totalSize,
  });

  ListCryptoKeyVersionsResponse.fromJson(core.Map json_)
      : this(
          cryptoKeyVersions: json_.containsKey('cryptoKeyVersions')
              ? (json_['cryptoKeyVersions'] as core.List)
                  .map((value) => CryptoKeyVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKeyVersions != null) 'cryptoKeyVersions': cryptoKeyVersions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response message for KeyManagementService.ListCryptoKeys.
class ListCryptoKeysResponse {
  /// The list of CryptoKeys.
  core.List<CryptoKey>? cryptoKeys;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListCryptoKeysRequest.page_token to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  /// The total number of CryptoKeys that matched the query.
  core.int? totalSize;

  ListCryptoKeysResponse({
    this.cryptoKeys,
    this.nextPageToken,
    this.totalSize,
  });

  ListCryptoKeysResponse.fromJson(core.Map json_)
      : this(
          cryptoKeys: json_.containsKey('cryptoKeys')
              ? (json_['cryptoKeys'] as core.List)
                  .map((value) => CryptoKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKeys != null) 'cryptoKeys': cryptoKeys!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response message for EkmService.ListEkmConnections.
class ListEkmConnectionsResponse {
  /// The list of EkmConnections.
  core.List<EkmConnection>? ekmConnections;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListEkmConnectionsRequest.page_token to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// The total number of EkmConnections that matched the query.
  core.int? totalSize;

  ListEkmConnectionsResponse({
    this.ekmConnections,
    this.nextPageToken,
    this.totalSize,
  });

  ListEkmConnectionsResponse.fromJson(core.Map json_)
      : this(
          ekmConnections: json_.containsKey('ekmConnections')
              ? (json_['ekmConnections'] as core.List)
                  .map((value) => EkmConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmConnections != null) 'ekmConnections': ekmConnections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response message for KeyManagementService.ListImportJobs.
class ListImportJobsResponse {
  /// The list of ImportJobs.
  core.List<ImportJob>? importJobs;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListImportJobsRequest.page_token to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  /// The total number of ImportJobs that matched the query.
  core.int? totalSize;

  ListImportJobsResponse({
    this.importJobs,
    this.nextPageToken,
    this.totalSize,
  });

  ListImportJobsResponse.fromJson(core.Map json_)
      : this(
          importJobs: json_.containsKey('importJobs')
              ? (json_['importJobs'] as core.List)
                  .map((value) => ImportJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (importJobs != null) 'importJobs': importJobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Response message for KeyManagementService.ListKeyRings.
class ListKeyRingsResponse {
  /// The list of KeyRings.
  core.List<KeyRing>? keyRings;

  /// A token to retrieve next page of results.
  ///
  /// Pass this value in ListKeyRingsRequest.page_token to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  /// The total number of KeyRings that matched the query.
  core.int? totalSize;

  ListKeyRingsResponse({
    this.keyRings,
    this.nextPageToken,
    this.totalSize,
  });

  ListKeyRingsResponse.fromJson(core.Map json_)
      : this(
          keyRings: json_.containsKey('keyRings')
              ? (json_['keyRings'] as core.List)
                  .map((value) => KeyRing.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyRings != null) 'keyRings': keyRings!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
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
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Request message for KeyManagementService.MacSign.
class MacSignRequest {
  /// The data to sign.
  ///
  /// The MAC tag is computed over this data field based on the specific
  /// algorithm.
  ///
  /// Required.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the MacSignRequest.data.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received MacSignRequest.data using this checksum. KeyManagementService
  /// will report an error if the checksum verification fails. If you receive a
  /// checksum error, your client should verify that CRC32C(MacSignRequest.data)
  /// is equal to MacSignRequest.data_crc32c, and if so, perform a limited
  /// number of retries. A persistent mismatch may indicate an issue in your
  /// computation of the CRC32C checksum. Note: This field is defined as int64
  /// for reasons of compatibility across different languages. However, it is a
  /// non-negative integer, which will never exceed 2^32-1, and can be safely
  /// downconverted to uint32 in languages that support this type.
  ///
  /// Optional.
  core.String? dataCrc32c;

  MacSignRequest({
    this.data,
    this.dataCrc32c,
  });

  MacSignRequest.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          dataCrc32c: json_.containsKey('dataCrc32c')
              ? json_['dataCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (dataCrc32c != null) 'dataCrc32c': dataCrc32c!,
      };
}

/// Response message for KeyManagementService.MacSign.
class MacSignResponse {
  /// The created signature.
  core.String? mac;
  core.List<core.int> get macAsBytes => convert.base64.decode(mac!);

  set macAsBytes(core.List<core.int> bytes_) {
    mac =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned MacSignResponse.mac. An integrity check
  /// of MacSignResponse.mac can be performed by computing the CRC32C checksum
  /// of MacSignResponse.mac and comparing your results to this field. Discard
  /// the response in case of non-matching checksum values, and perform a
  /// limited number of retries. A persistent mismatch may indicate an issue in
  /// your computation of the CRC32C checksum. Note: This field is defined as
  /// int64 for reasons of compatibility across different languages. However, it
  /// is a non-negative integer, which will never exceed 2^32-1, and can be
  /// safely downconverted to uint32 in languages that support this type.
  core.String? macCrc32c;

  /// The resource name of the CryptoKeyVersion used for signing.
  ///
  /// Check this field to verify that the intended resource was used for
  /// signing.
  core.String? name;

  /// The ProtectionLevel of the CryptoKeyVersion used for signing.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Integrity verification field.
  ///
  /// A flag indicating whether MacSignRequest.data_crc32c was received by
  /// KeyManagementService and used for the integrity verification of the data.
  /// A false value of this field indicates either that
  /// MacSignRequest.data_crc32c was left unset or that it was not delivered to
  /// KeyManagementService. If you've set MacSignRequest.data_crc32c but this
  /// field is still false, discard the response and perform a limited number of
  /// retries.
  core.bool? verifiedDataCrc32c;

  MacSignResponse({
    this.mac,
    this.macCrc32c,
    this.name,
    this.protectionLevel,
    this.verifiedDataCrc32c,
  });

  MacSignResponse.fromJson(core.Map json_)
      : this(
          mac: json_.containsKey('mac') ? json_['mac'] as core.String : null,
          macCrc32c: json_.containsKey('macCrc32c')
              ? json_['macCrc32c'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          verifiedDataCrc32c: json_.containsKey('verifiedDataCrc32c')
              ? json_['verifiedDataCrc32c'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mac != null) 'mac': mac!,
        if (macCrc32c != null) 'macCrc32c': macCrc32c!,
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (verifiedDataCrc32c != null)
          'verifiedDataCrc32c': verifiedDataCrc32c!,
      };
}

/// Request message for KeyManagementService.MacVerify.
class MacVerifyRequest {
  /// The data used previously as a MacSignRequest.data to generate the MAC tag.
  ///
  /// Required.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the MacVerifyRequest.data.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received MacVerifyRequest.data using this checksum. KeyManagementService
  /// will report an error if the checksum verification fails. If you receive a
  /// checksum error, your client should verify that
  /// CRC32C(MacVerifyRequest.data) is equal to MacVerifyRequest.data_crc32c,
  /// and if so, perform a limited number of retries. A persistent mismatch may
  /// indicate an issue in your computation of the CRC32C checksum. Note: This
  /// field is defined as int64 for reasons of compatibility across different
  /// languages. However, it is a non-negative integer, which will never exceed
  /// 2^32-1, and can be safely downconverted to uint32 in languages that
  /// support this type.
  ///
  /// Optional.
  core.String? dataCrc32c;

  /// The signature to verify.
  ///
  /// Required.
  core.String? mac;
  core.List<core.int> get macAsBytes => convert.base64.decode(mac!);

  set macAsBytes(core.List<core.int> bytes_) {
    mac =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An optional CRC32C checksum of the MacVerifyRequest.mac.
  ///
  /// If specified, KeyManagementService will verify the integrity of the
  /// received MacVerifyRequest.mac using this checksum. KeyManagementService
  /// will report an error if the checksum verification fails. If you receive a
  /// checksum error, your client should verify that
  /// CRC32C(MacVerifyRequest.tag) is equal to MacVerifyRequest.mac_crc32c, and
  /// if so, perform a limited number of retries. A persistent mismatch may
  /// indicate an issue in your computation of the CRC32C checksum. Note: This
  /// field is defined as int64 for reasons of compatibility across different
  /// languages. However, it is a non-negative integer, which will never exceed
  /// 2^32-1, and can be safely downconverted to uint32 in languages that
  /// support this type.
  ///
  /// Optional.
  core.String? macCrc32c;

  MacVerifyRequest({
    this.data,
    this.dataCrc32c,
    this.mac,
    this.macCrc32c,
  });

  MacVerifyRequest.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          dataCrc32c: json_.containsKey('dataCrc32c')
              ? json_['dataCrc32c'] as core.String
              : null,
          mac: json_.containsKey('mac') ? json_['mac'] as core.String : null,
          macCrc32c: json_.containsKey('macCrc32c')
              ? json_['macCrc32c'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (dataCrc32c != null) 'dataCrc32c': dataCrc32c!,
        if (mac != null) 'mac': mac!,
        if (macCrc32c != null) 'macCrc32c': macCrc32c!,
      };
}

/// Response message for KeyManagementService.MacVerify.
class MacVerifyResponse {
  /// The resource name of the CryptoKeyVersion used for verification.
  ///
  /// Check this field to verify that the intended resource was used for
  /// verification.
  core.String? name;

  /// The ProtectionLevel of the CryptoKeyVersion used for verification.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// This field indicates whether or not the verification operation for
  /// MacVerifyRequest.mac over MacVerifyRequest.data was successful.
  core.bool? success;

  /// Integrity verification field.
  ///
  /// A flag indicating whether MacVerifyRequest.data_crc32c was received by
  /// KeyManagementService and used for the integrity verification of the data.
  /// A false value of this field indicates either that
  /// MacVerifyRequest.data_crc32c was left unset or that it was not delivered
  /// to KeyManagementService. If you've set MacVerifyRequest.data_crc32c but
  /// this field is still false, discard the response and perform a limited
  /// number of retries.
  core.bool? verifiedDataCrc32c;

  /// Integrity verification field.
  ///
  /// A flag indicating whether MacVerifyRequest.mac_crc32c was received by
  /// KeyManagementService and used for the integrity verification of the data.
  /// A false value of this field indicates either that
  /// MacVerifyRequest.mac_crc32c was left unset or that it was not delivered to
  /// KeyManagementService. If you've set MacVerifyRequest.mac_crc32c but this
  /// field is still false, discard the response and perform a limited number of
  /// retries.
  core.bool? verifiedMacCrc32c;

  /// Integrity verification field.
  ///
  /// This value is used for the integrity verification of
  /// \[MacVerifyResponse.success\]. If the value of this field contradicts the
  /// value of \[MacVerifyResponse.success\], discard the response and perform a
  /// limited number of retries.
  core.bool? verifiedSuccessIntegrity;

  MacVerifyResponse({
    this.name,
    this.protectionLevel,
    this.success,
    this.verifiedDataCrc32c,
    this.verifiedMacCrc32c,
    this.verifiedSuccessIntegrity,
  });

  MacVerifyResponse.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
          success: json_.containsKey('success')
              ? json_['success'] as core.bool
              : null,
          verifiedDataCrc32c: json_.containsKey('verifiedDataCrc32c')
              ? json_['verifiedDataCrc32c'] as core.bool
              : null,
          verifiedMacCrc32c: json_.containsKey('verifiedMacCrc32c')
              ? json_['verifiedMacCrc32c'] as core.bool
              : null,
          verifiedSuccessIntegrity:
              json_.containsKey('verifiedSuccessIntegrity')
                  ? json_['verifiedSuccessIntegrity'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
        if (success != null) 'success': success!,
        if (verifiedDataCrc32c != null)
          'verifiedDataCrc32c': verifiedDataCrc32c!,
        if (verifiedMacCrc32c != null) 'verifiedMacCrc32c': verifiedMacCrc32c!,
        if (verifiedSuccessIntegrity != null)
          'verifiedSuccessIntegrity': verifiedSuccessIntegrity!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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

/// The public key for a given CryptoKeyVersion.
///
/// Obtained via GetPublicKey.
class PublicKey {
  /// The Algorithm associated with this key.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "RSA_SIGN_RAW_PKCS1_2048" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 2048 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_3072" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 3072 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_4096" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 4096 bit key.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA256" : RSAES-OAEP 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA512" : RSAES-OAEP 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA1" : RSAES-OAEP 2048 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA1" : RSAES-OAEP 3072 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA1" : RSAES-OAEP 4096 bit key with a SHA1
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  /// - "EC_SIGN_SECP256K1_SHA256" : ECDSA on the non-NIST secp256k1 curve. This
  /// curve is only supported for HSM protection level.
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
  core.String? algorithm;

  /// The name of the CryptoKeyVersion public key.
  ///
  /// Provided here for verification. NOTE: This field is in Beta.
  core.String? name;

  /// The public key, encoded in PEM format.
  ///
  /// For more information, see the
  /// [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for
  /// [General Considerations](https://tools.ietf.org/html/rfc7468#section-2)
  /// and
  /// [Textual Encoding of Subject Public Key Info](https://tools.ietf.org/html/rfc7468#section-13).
  core.String? pem;

  /// Integrity verification field.
  ///
  /// A CRC32C checksum of the returned PublicKey.pem. An integrity check of
  /// PublicKey.pem can be performed by computing the CRC32C checksum of
  /// PublicKey.pem and comparing your results to this field. Discard the
  /// response in case of non-matching checksum values, and perform a limited
  /// number of retries. A persistent mismatch may indicate an issue in your
  /// computation of the CRC32C checksum. Note: This field is defined as int64
  /// for reasons of compatibility across different languages. However, it is a
  /// non-negative integer, which will never exceed 2^32-1, and can be safely
  /// downconverted to uint32 in languages that support this type. NOTE: This
  /// field is in Beta.
  core.String? pemCrc32c;

  /// The ProtectionLevel of the CryptoKeyVersion public key.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  PublicKey({
    this.algorithm,
    this.name,
    this.pem,
    this.pemCrc32c,
    this.protectionLevel,
  });

  PublicKey.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pem: json_.containsKey('pem') ? json_['pem'] as core.String : null,
          pemCrc32c: json_.containsKey('pemCrc32c')
              ? json_['pemCrc32c'] as core.String
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (name != null) 'name': name!,
        if (pem != null) 'pem': pem!,
        if (pemCrc32c != null) 'pemCrc32c': pemCrc32c!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
      };
}

/// Request message for KeyManagementService.RestoreCryptoKeyVersion.
typedef RestoreCryptoKeyVersionRequest = $Empty;

/// A ServiceResolver represents an EKM replica that can be reached within an
/// EkmConnection.
class ServiceResolver {
  /// The filter applied to the endpoints of the resolved service.
  ///
  /// If no filter is specified, all endpoints will be considered. An endpoint
  /// will be chosen arbitrarily from the filtered list for each request. For
  /// endpoint filter syntax and examples, see
  /// https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
  ///
  /// Optional.
  core.String? endpointFilter;

  /// The hostname of the EKM replica used at TLS and HTTP layers.
  ///
  /// Required.
  core.String? hostname;

  /// A list of leaf server certificates used to authenticate HTTPS connections
  /// to the EKM replica.
  ///
  /// Currently, a maximum of 10 Certificate is supported.
  ///
  /// Required.
  core.List<Certificate>? serverCertificates;

  /// The resource name of the Service Directory service pointing to an EKM
  /// replica, in the format `projects / * /locations / * /namespaces / *
  /// /services / * `.
  ///
  /// Required.
  core.String? serviceDirectoryService;

  ServiceResolver({
    this.endpointFilter,
    this.hostname,
    this.serverCertificates,
    this.serviceDirectoryService,
  });

  ServiceResolver.fromJson(core.Map json_)
      : this(
          endpointFilter: json_.containsKey('endpointFilter')
              ? json_['endpointFilter'] as core.String
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          serverCertificates: json_.containsKey('serverCertificates')
              ? (json_['serverCertificates'] as core.List)
                  .map((value) => Certificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceDirectoryService: json_.containsKey('serviceDirectoryService')
              ? json_['serviceDirectoryService'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpointFilter != null) 'endpointFilter': endpointFilter!,
        if (hostname != null) 'hostname': hostname!,
        if (serverCertificates != null)
          'serverCertificates': serverCertificates!,
        if (serviceDirectoryService != null)
          'serviceDirectoryService': serviceDirectoryService!,
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

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
class UpdateCryptoKeyPrimaryVersionRequest {
  /// The id of the child CryptoKeyVersion to use as primary.
  ///
  /// Required.
  core.String? cryptoKeyVersionId;

  UpdateCryptoKeyPrimaryVersionRequest({
    this.cryptoKeyVersionId,
  });

  UpdateCryptoKeyPrimaryVersionRequest.fromJson(core.Map json_)
      : this(
          cryptoKeyVersionId: json_.containsKey('cryptoKeyVersionId')
              ? json_['cryptoKeyVersionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKeyVersionId != null)
          'cryptoKeyVersionId': cryptoKeyVersionId!,
      };
}

/// The public key component of the wrapping key.
///
/// For details of the type of key this public key corresponds to, see the
/// ImportMethod.
class WrappingPublicKey {
  /// The public key, encoded in PEM format.
  ///
  /// For more information, see the
  /// [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for
  /// [General Considerations](https://tools.ietf.org/html/rfc7468#section-2)
  /// and
  /// [Textual Encoding of Subject Public Key Info](https://tools.ietf.org/html/rfc7468#section-13).
  core.String? pem;

  WrappingPublicKey({
    this.pem,
  });

  WrappingPublicKey.fromJson(core.Map json_)
      : this(
          pem: json_.containsKey('pem') ? json_['pem'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pem != null) 'pem': pem!,
      };
}
