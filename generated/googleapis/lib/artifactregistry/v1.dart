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

/// Artifact Registry API - v1
///
/// Store and manage build artifacts in a scalable and integrated service built
/// on Google infrastructure.
///
/// For more information, see <https://cloud.google.com/artifacts/docs/>
///
/// Create an instance of [ArtifactRegistryApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRepositoriesResource]
///       - [ProjectsLocationsRepositoriesAptArtifactsResource]
///       - [ProjectsLocationsRepositoriesDockerImagesResource]
///       - [ProjectsLocationsRepositoriesFilesResource]
///       - [ProjectsLocationsRepositoriesKfpArtifactsResource]
///       - [ProjectsLocationsRepositoriesMavenArtifactsResource]
///       - [ProjectsLocationsRepositoriesNpmPackagesResource]
///       - [ProjectsLocationsRepositoriesPackagesResource]
///         - [ProjectsLocationsRepositoriesPackagesTagsResource]
///         - [ProjectsLocationsRepositoriesPackagesVersionsResource]
///       - [ProjectsLocationsRepositoriesPythonPackagesResource]
///       - [ProjectsLocationsRepositoriesYumArtifactsResource]
library artifactregistry.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Store and manage build artifacts in a scalable and integrated service built
/// on Google infrastructure.
class ArtifactRegistryApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ArtifactRegistryApi(http.Client client,
      {core.String rootUrl = 'https://artifactregistry.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves the Settings for the Project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the projectSettings resource.
  /// Value must have pattern `^projects/\[^/\]+/projectSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectSettings> getProjectSettings(
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
    return ProjectSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Settings for the Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the project's settings. Always of the form:
  /// projects/{project-id}/projectSettings In update request: never set In
  /// response: always set
  /// Value must have pattern `^projects/\[^/\]+/projectSettings$`.
  ///
  /// [updateMask] - Field mask to support partial updates.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectSettings> updateProjectSettings(
    ProjectSettings request,
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
    return ProjectSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRepositoriesResource get repositories =>
      ProjectsLocationsRepositoriesResource(_requester);

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
}

class ProjectsLocationsRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesAptArtifactsResource get aptArtifacts =>
      ProjectsLocationsRepositoriesAptArtifactsResource(_requester);
  ProjectsLocationsRepositoriesDockerImagesResource get dockerImages =>
      ProjectsLocationsRepositoriesDockerImagesResource(_requester);
  ProjectsLocationsRepositoriesFilesResource get files =>
      ProjectsLocationsRepositoriesFilesResource(_requester);
  ProjectsLocationsRepositoriesKfpArtifactsResource get kfpArtifacts =>
      ProjectsLocationsRepositoriesKfpArtifactsResource(_requester);
  ProjectsLocationsRepositoriesMavenArtifactsResource get mavenArtifacts =>
      ProjectsLocationsRepositoriesMavenArtifactsResource(_requester);
  ProjectsLocationsRepositoriesNpmPackagesResource get npmPackages =>
      ProjectsLocationsRepositoriesNpmPackagesResource(_requester);
  ProjectsLocationsRepositoriesPackagesResource get packages =>
      ProjectsLocationsRepositoriesPackagesResource(_requester);
  ProjectsLocationsRepositoriesPythonPackagesResource get pythonPackages =>
      ProjectsLocationsRepositoriesPythonPackagesResource(_requester);
  ProjectsLocationsRepositoriesYumArtifactsResource get yumArtifacts =>
      ProjectsLocationsRepositoriesYumArtifactsResource(_requester);

  ProjectsLocationsRepositoriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a repository.
  ///
  /// The returned Operation will finish once the repository has been created.
  /// Its response will be the created Repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource where the repository
  /// will be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [repositoryId] - The repository id to use for this repository.
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
    Repository request,
    core.String parent, {
    core.String? repositoryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (repositoryId != null) 'repositoryId': [repositoryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a repository and all of its contents.
  ///
  /// The returned Operation will finish once the repository has been deleted.
  /// It will not have any Operation metadata and will return a
  /// google.protobuf.Empty response.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the repository to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

  /// Gets a repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the repository to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> get(
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
    return Repository.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy for a given resource.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

  /// Lists repositories.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose repositories
  /// will be listed.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of repositories to return. Maximum page
  /// size is 1,000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepositoriesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the repository, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> patch(
    Repository request,
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
    return Repository.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the IAM policy for a given resource.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

  /// Tests if the caller has a list of permissions on a resource.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

class ProjectsLocationsRepositoriesAptArtifactsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesAptArtifactsResource(commons.ApiRequester client)
      : _requester = client;

  /// Imports Apt artifacts.
  ///
  /// The returned Operation will complete once the resources are imported.
  /// Package, Version, and File resources are created based on the imported
  /// artifacts. Imported artifacts that conflict with existing resources are
  /// ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource where the artifacts will be
  /// imported.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportAptArtifactsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/aptArtifacts:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Directly uploads an Apt artifact.
  ///
  /// The returned Operation will complete once the resources are uploaded.
  /// Package, Version, and File resources are created based on the imported
  /// artifact. Imported artifacts that conflict with existing resources are
  /// ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource where the artifacts will be
  /// uploaded.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [UploadAptArtifactMediaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadAptArtifactMediaResponse> upload(
    UploadAptArtifactRequest request,
    core.String parent, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/aptArtifacts:create';
    } else {
      url_ = '/upload/v1/' +
          core.Uri.encodeFull('$parent') +
          '/aptArtifacts:create';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return UploadAptArtifactMediaResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesDockerImagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesDockerImagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a docker image.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the docker images.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/dockerImages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DockerImage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DockerImage> get(
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
    return DockerImage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists docker images.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose docker images
  /// will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [orderBy] - The field to order the results by.
  ///
  /// [pageSize] - The maximum number of artifacts to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDockerImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDockerImagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dockerImages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDockerImagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesFilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesFilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a file.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the file to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/files/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleDevtoolsArtifactregistryV1File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleDevtoolsArtifactregistryV1File> get(
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
    return GoogleDevtoolsArtifactregistryV1File.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists files.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the repository whose files will be listed. For
  /// example: "projects/p1/locations/us-central1/repositories/repo1
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are case insensitive. The fields eligible for filtering are: *
  /// `name` * `owner` An example of using a filter: *
  /// `name="projects/p1/locations/us-central1/repositories/repo1/files/a/b / *
  /// "` --\> Files with an ID starting with "a/b/". *
  /// `owner="projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/1.0"`
  /// --\> Files owned by the version `1.0` in package `pkg1`.
  ///
  /// [orderBy] - The field to order the results by.
  ///
  /// [pageSize] - The maximum number of files to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFilesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesKfpArtifactsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesKfpArtifactsResource(commons.ApiRequester client)
      : _requester = client;

  /// Directly uploads a KFP artifact.
  ///
  /// The returned Operation will complete once the resource is uploaded.
  /// Package, Version, and File resources will be created based on the uploaded
  /// artifact. Uploaded artifacts that conflict with existing resources will be
  /// overwritten.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the repository where the KFP artifact will
  /// be uploaded.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [UploadKfpArtifactMediaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadKfpArtifactMediaResponse> upload(
    UploadKfpArtifactRequest request,
    core.String parent, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/kfpArtifacts:create';
    } else {
      url_ = '/upload/v1/' +
          core.Uri.encodeFull('$parent') +
          '/kfpArtifacts:create';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return UploadKfpArtifactMediaResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesMavenArtifactsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesMavenArtifactsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a maven artifact.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the maven artifact.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/mavenArtifacts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MavenArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MavenArtifact> get(
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
    return MavenArtifact.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists maven artifacts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose maven artifacts
  /// will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of artifacts to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMavenArtifactsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMavenArtifactsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/mavenArtifacts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMavenArtifactsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesNpmPackagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesNpmPackagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a npm package.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the npm package.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/npmPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NpmPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NpmPackage> get(
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
    return NpmPackage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists npm packages.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose npm packages
  /// will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of artifacts to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNpmPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNpmPackagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/npmPackages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNpmPackagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPackagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPackagesTagsResource get tags =>
      ProjectsLocationsRepositoriesPackagesTagsResource(_requester);
  ProjectsLocationsRepositoriesPackagesVersionsResource get versions =>
      ProjectsLocationsRepositoriesPackagesVersionsResource(_requester);

  ProjectsLocationsRepositoriesPackagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a package and all of its versions and tags.
  ///
  /// The returned operation will complete once the package has been deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the package to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+$`.
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

  /// Gets a package.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the package to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Package].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Package> get(
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
    return Package.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists packages.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose packages will
  /// be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of packages to return. Maximum page size
  /// is 1,000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPackagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/packages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPackagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPackagesTagsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPackagesTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource where the tag will be created.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+$`.
  ///
  /// [tagId] - The tag id to use for this repository.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> create(
    Tag request,
    core.String parent, {
    core.String? tagId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tagId != null) 'tagId': [tagId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a tag.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the tag to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+/tags/\[^/\]+$`.
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

  /// Gets a tag.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the tag to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+/tags/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> get(
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
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tags.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource whose tags will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are case insensitive. The fields eligible for filtering are: *
  /// `version` An example of using a filter: *
  /// `version="projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/1.0"`
  /// --\> Tags that are applied to the version `1.0` in package `pkg1`.
  ///
  /// [pageSize] - The maximum number of tags to return. Maximum page size is
  /// 10,000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the tag, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1".
  /// If the package part contains slashes, the slashes are escaped. The tag
  /// part can only have characters in \[a-zA-Z0-9\-._~:@\], anything else must
  /// be URL encoded.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+/tags/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tag> patch(
    Tag request,
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
    return Tag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPackagesVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPackagesVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Deletes a version and all of its content.
  ///
  /// The returned operation will complete once the version has been deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the version to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [force] - By default, a version that is tagged may not be deleted. If
  /// force=true, the version and any tags pointing to the version are deleted.
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a version
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the version to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [view] - The view that should be returned in the response.
  /// Possible string values are:
  /// - "VERSION_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Includes basic information about the version, but not any
  /// related tags.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists versions.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource whose versions will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/packages/\[^/\]+$`.
  ///
  /// [orderBy] - Optional. The field to order the results by.
  ///
  /// [pageSize] - The maximum number of versions to return. Maximum page size
  /// is 1,000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [view] - The view that should be returned in the response.
  /// Possible string values are:
  /// - "VERSION_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Includes basic information about the version, but not any
  /// related tags.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPythonPackagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPythonPackagesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a python package.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the python package.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pythonPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PythonPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PythonPackage> get(
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
    return PythonPackage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists python packages.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose python packages
  /// will be listed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of artifacts to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPythonPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPythonPackagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pythonPackages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPythonPackagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesYumArtifactsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesYumArtifactsResource(commons.ApiRequester client)
      : _requester = client;

  /// Imports Yum (RPM) artifacts.
  ///
  /// The returned Operation will complete once the resources are imported.
  /// Package, Version, and File resources are created based on the imported
  /// artifacts. Imported artifacts that conflict with existing resources are
  /// ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource where the artifacts will be
  /// imported.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportYumArtifactsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/yumArtifacts:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Directly uploads a Yum artifact.
  ///
  /// The returned Operation will complete once the resources are uploaded.
  /// Package, Version, and File resources are created based on the imported
  /// artifact. Imported artifacts that conflict with existing resources are
  /// ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the parent resource where the artifacts will be
  /// uploaded.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [UploadYumArtifactMediaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadYumArtifactMediaResponse> upload(
    UploadYumArtifactRequest request,
    core.String parent, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/yumArtifacts:create';
    } else {
      url_ = '/upload/v1/' +
          core.Uri.encodeFull('$parent') +
          '/yumArtifacts:create';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return UploadYumArtifactMediaResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
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

/// DockerImage represents a docker artifact.
///
/// The following fields are returned as untyped metadata in the Version
/// resource, using camelcase keys (i.e. metadata.imageSizeBytes): *
/// imageSizeBytes * mediaType * buildTime
class DockerImage {
  /// The time this image was built.
  ///
  /// This field is returned as the 'metadata.buildTime' field in the Version
  /// resource. The build time is returned to the client as an RFC 3339 string,
  /// which can be easily used with the JavaScript Date constructor.
  core.String? buildTime;

  /// Calculated size of the image.
  ///
  /// This field is returned as the 'metadata.imageSizeBytes' field in the
  /// Version resource.
  core.String? imageSizeBytes;

  /// Media type of this image, e.g.
  /// "application/vnd.docker.distribution.manifest.v2+json".
  ///
  /// This field is returned as the 'metadata.mediaType' field in the Version
  /// resource.
  core.String? mediaType;

  /// registry_location, project_id, repository_name and image id forms a unique
  /// image name:`projects//locations//repository//dockerImages/`.
  ///
  /// For example,
  /// "projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/
  /// nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf",
  /// where "us-west4" is the registry_location, "test-project" is the
  /// project_id, "test-repo" is the repository_name and
  /// "nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf"
  /// is the image's digest.
  ///
  /// Required.
  core.String? name;

  /// Tags attached to this image.
  core.List<core.String>? tags;

  /// The time when the docker image was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Time the image was uploaded.
  core.String? uploadTime;

  /// URL to access the image.
  ///
  /// Example:
  /// us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
  ///
  /// Required.
  core.String? uri;

  DockerImage({
    this.buildTime,
    this.imageSizeBytes,
    this.mediaType,
    this.name,
    this.tags,
    this.updateTime,
    this.uploadTime,
    this.uri,
  });

  DockerImage.fromJson(core.Map json_)
      : this(
          buildTime: json_.containsKey('buildTime')
              ? json_['buildTime'] as core.String
              : null,
          imageSizeBytes: json_.containsKey('imageSizeBytes')
              ? json_['imageSizeBytes'] as core.String
              : null,
          mediaType: json_.containsKey('mediaType')
              ? json_['mediaType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          uploadTime: json_.containsKey('uploadTime')
              ? json_['uploadTime'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildTime != null) 'buildTime': buildTime!,
        if (imageSizeBytes != null) 'imageSizeBytes': imageSizeBytes!,
        if (mediaType != null) 'mediaType': mediaType!,
        if (name != null) 'name': name!,
        if (tags != null) 'tags': tags!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uploadTime != null) 'uploadTime': uploadTime!,
        if (uri != null) 'uri': uri!,
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

/// Files store content that is potentially associated with Packages or
/// Versions.
class GoogleDevtoolsArtifactregistryV1File {
  /// The time when the File was created.
  core.String? createTime;

  /// The hashes of the file content.
  core.List<Hash>? hashes;

  /// The name of the file, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/files/a%2Fb%2Fc.txt".
  ///
  /// If the file ID part contains slashes, they are escaped.
  core.String? name;

  /// The name of the Package or Version that owns this file, if any.
  core.String? owner;

  /// The size of the File in bytes.
  core.String? sizeBytes;

  /// The time when the File was last updated.
  core.String? updateTime;

  GoogleDevtoolsArtifactregistryV1File({
    this.createTime,
    this.hashes,
    this.name,
    this.owner,
    this.sizeBytes,
    this.updateTime,
  });

  GoogleDevtoolsArtifactregistryV1File.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          hashes: json_.containsKey('hashes')
              ? (json_['hashes'] as core.List)
                  .map((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          owner:
              json_.containsKey('owner') ? json_['owner'] as core.String : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (hashes != null) 'hashes': hashes!,
        if (name != null) 'name': name!,
        if (owner != null) 'owner': owner!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A hash of file content.
class Hash {
  /// The algorithm used to compute the hash value.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : Unspecified.
  /// - "SHA256" : SHA256 hash.
  /// - "MD5" : MD5 hash.
  core.String? type;

  /// The hash value.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash({
    this.type,
    this.value,
  });

  Hash.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Google Cloud Storage location where the artifacts currently reside.
typedef ImportAptArtifactsGcsSource = $ArtifactsGcsSource;

/// The request to import new apt artifacts.
class ImportAptArtifactsRequest {
  /// Google Cloud Storage location where input content is located.
  ImportAptArtifactsGcsSource? gcsSource;

  ImportAptArtifactsRequest({
    this.gcsSource,
  });

  ImportAptArtifactsRequest.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? ImportAptArtifactsGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Google Cloud Storage location where the artifacts currently reside.
typedef ImportYumArtifactsGcsSource = $ArtifactsGcsSource;

/// The request to import new yum artifacts.
class ImportYumArtifactsRequest {
  /// Google Cloud Storage location where input content is located.
  ImportYumArtifactsGcsSource? gcsSource;

  ImportYumArtifactsRequest({
    this.gcsSource,
  });

  ImportYumArtifactsRequest.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? ImportYumArtifactsGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// The response from listing docker images.
class ListDockerImagesResponse {
  /// The docker images returned.
  core.List<DockerImage>? dockerImages;

  /// The token to retrieve the next page of artifacts, or empty if there are no
  /// more artifacts to return.
  core.String? nextPageToken;

  ListDockerImagesResponse({
    this.dockerImages,
    this.nextPageToken,
  });

  ListDockerImagesResponse.fromJson(core.Map json_)
      : this(
          dockerImages: json_.containsKey('dockerImages')
              ? (json_['dockerImages'] as core.List)
                  .map((value) => DockerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dockerImages != null) 'dockerImages': dockerImages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response from listing files.
class ListFilesResponse {
  /// The files returned.
  core.List<GoogleDevtoolsArtifactregistryV1File>? files;

  /// The token to retrieve the next page of files, or empty if there are no
  /// more files to return.
  core.String? nextPageToken;

  ListFilesResponse({
    this.files,
    this.nextPageToken,
  });

  ListFilesResponse.fromJson(core.Map json_)
      : this(
          files: json_.containsKey('files')
              ? (json_['files'] as core.List)
                  .map((value) => GoogleDevtoolsArtifactregistryV1File.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (files != null) 'files': files!,
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

/// The response from listing maven artifacts.
class ListMavenArtifactsResponse {
  /// The maven artifacts returned.
  core.List<MavenArtifact>? mavenArtifacts;

  /// The token to retrieve the next page of artifacts, or empty if there are no
  /// more artifacts to return.
  core.String? nextPageToken;

  ListMavenArtifactsResponse({
    this.mavenArtifacts,
    this.nextPageToken,
  });

  ListMavenArtifactsResponse.fromJson(core.Map json_)
      : this(
          mavenArtifacts: json_.containsKey('mavenArtifacts')
              ? (json_['mavenArtifacts'] as core.List)
                  .map((value) => MavenArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mavenArtifacts != null) 'mavenArtifacts': mavenArtifacts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response from listing npm packages.
class ListNpmPackagesResponse {
  /// The token to retrieve the next page of artifacts, or empty if there are no
  /// more artifacts to return.
  core.String? nextPageToken;

  /// The npm packages returned.
  core.List<NpmPackage>? npmPackages;

  ListNpmPackagesResponse({
    this.nextPageToken,
    this.npmPackages,
  });

  ListNpmPackagesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          npmPackages: json_.containsKey('npmPackages')
              ? (json_['npmPackages'] as core.List)
                  .map((value) => NpmPackage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (npmPackages != null) 'npmPackages': npmPackages!,
      };
}

/// The response from listing packages.
class ListPackagesResponse {
  /// The token to retrieve the next page of packages, or empty if there are no
  /// more packages to return.
  core.String? nextPageToken;

  /// The packages returned.
  core.List<Package>? packages;

  ListPackagesResponse({
    this.nextPageToken,
    this.packages,
  });

  ListPackagesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          packages: json_.containsKey('packages')
              ? (json_['packages'] as core.List)
                  .map((value) => Package.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (packages != null) 'packages': packages!,
      };
}

/// The response from listing python packages.
class ListPythonPackagesResponse {
  /// The token to retrieve the next page of artifacts, or empty if there are no
  /// more artifacts to return.
  core.String? nextPageToken;

  /// The python packages returned.
  core.List<PythonPackage>? pythonPackages;

  ListPythonPackagesResponse({
    this.nextPageToken,
    this.pythonPackages,
  });

  ListPythonPackagesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          pythonPackages: json_.containsKey('pythonPackages')
              ? (json_['pythonPackages'] as core.List)
                  .map((value) => PythonPackage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pythonPackages != null) 'pythonPackages': pythonPackages!,
      };
}

/// The response from listing repositories.
class ListRepositoriesResponse {
  /// The token to retrieve the next page of repositories, or empty if there are
  /// no more repositories to return.
  core.String? nextPageToken;

  /// The repositories returned.
  core.List<Repository>? repositories;

  ListRepositoriesResponse({
    this.nextPageToken,
    this.repositories,
  });

  ListRepositoriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          repositories: json_.containsKey('repositories')
              ? (json_['repositories'] as core.List)
                  .map((value) => Repository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repositories != null) 'repositories': repositories!,
      };
}

/// The response from listing tags.
class ListTagsResponse {
  /// The token to retrieve the next page of tags, or empty if there are no more
  /// tags to return.
  core.String? nextPageToken;

  /// The tags returned.
  core.List<Tag>? tags;

  ListTagsResponse({
    this.nextPageToken,
    this.tags,
  });

  ListTagsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tags != null) 'tags': tags!,
      };
}

/// The response from listing versions.
class ListVersionsResponse {
  /// The token to retrieve the next page of versions, or empty if there are no
  /// more versions to return.
  core.String? nextPageToken;

  /// The versions returned.
  core.List<Version>? versions;

  ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  ListVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// MavenArtifact represents a maven artifact.
class MavenArtifact {
  /// Artifact ID for the artifact.
  core.String? artifactId;

  /// Time the artifact was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Group ID for the artifact.
  ///
  /// Example: com.google.guava
  core.String? groupId;

  /// registry_location, project_id, repository_name and maven_artifact forms a
  /// unique artifact For example,
  /// "projects/test-project/locations/us-west4/repositories/test-repo/mavenArtifacts/
  /// com.google.guava:guava:31.0-jre", where "us-west4" is the
  /// registry_location, "test-project" is the project_id, "test-repo" is the
  /// repository_name and "com.google.guava:guava:31.0-jre" is the maven
  /// artifact.
  ///
  /// Required.
  core.String? name;

  /// URL to access the pom file of the artifact.
  ///
  /// Example:
  /// us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom
  ///
  /// Required.
  core.String? pomUri;

  /// Time the artifact was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Version of this artifact.
  core.String? version;

  MavenArtifact({
    this.artifactId,
    this.createTime,
    this.groupId,
    this.name,
    this.pomUri,
    this.updateTime,
    this.version,
  });

  MavenArtifact.fromJson(core.Map json_)
      : this(
          artifactId: json_.containsKey('artifactId')
              ? json_['artifactId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          groupId: json_.containsKey('groupId')
              ? json_['groupId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pomUri: json_.containsKey('pomUri')
              ? json_['pomUri'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactId != null) 'artifactId': artifactId!,
        if (createTime != null) 'createTime': createTime!,
        if (groupId != null) 'groupId': groupId!,
        if (name != null) 'name': name!,
        if (pomUri != null) 'pomUri': pomUri!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// MavenRepositoryConfig is maven related repository details.
///
/// Provides additional configuration details for repositories of the maven
/// format type.
class MavenRepositoryConfig {
  /// The repository with this flag will allow publishing the same snapshot
  /// versions.
  core.bool? allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  /// Possible string values are:
  /// - "VERSION_POLICY_UNSPECIFIED" : VERSION_POLICY_UNSPECIFIED - the version
  /// policy is not defined. When the version policy is not defined, no
  /// validation is performed for the versions.
  /// - "RELEASE" : RELEASE - repository will accept only Release versions.
  /// - "SNAPSHOT" : SNAPSHOT - repository will accept only Snapshot versions.
  core.String? versionPolicy;

  MavenRepositoryConfig({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  MavenRepositoryConfig.fromJson(core.Map json_)
      : this(
          allowSnapshotOverwrites: json_.containsKey('allowSnapshotOverwrites')
              ? json_['allowSnapshotOverwrites'] as core.bool
              : null,
          versionPolicy: json_.containsKey('versionPolicy')
              ? json_['versionPolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowSnapshotOverwrites != null)
          'allowSnapshotOverwrites': allowSnapshotOverwrites!,
        if (versionPolicy != null) 'versionPolicy': versionPolicy!,
      };
}

/// NpmPackage represents an npm artifact.
class NpmPackage {
  /// Time the package was created.
  ///
  /// Output only.
  core.String? createTime;

  /// registry_location, project_id, repository_name and npm_package forms a
  /// unique package For example,
  /// "projects/test-project/locations/us-west4/repositories/test-repo/npmPackages/
  /// npm_test:1.0.0", where "us-west4" is the registry_location, "test-project"
  /// is the project_id, "test-repo" is the repository_name and npm_test:1.0.0"
  /// is the npm package.
  ///
  /// Required.
  core.String? name;

  /// Package for the artifact.
  core.String? packageName;

  /// Tags attached to this package.
  core.List<core.String>? tags;

  /// Time the package was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Version of this package.
  core.String? version;

  NpmPackage({
    this.createTime,
    this.name,
    this.packageName,
    this.tags,
    this.updateTime,
    this.version,
  });

  NpmPackage.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (tags != null) 'tags': tags!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
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

/// Packages are named collections of versions.
class Package {
  /// The time when the package was created.
  core.String? createTime;

  /// The display name of the package.
  core.String? displayName;

  /// The name of the package, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1".
  ///
  /// If the package ID part contains slashes, the slashes are escaped.
  core.String? name;

  /// The time when the package was last updated.
  ///
  /// This includes publishing a new version of the package.
  core.String? updateTime;

  Package({
    this.createTime,
    this.displayName,
    this.name,
    this.updateTime,
  });

  Package.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
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
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
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
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// The Artifact Registry settings that apply to a Project.
class ProjectSettings {
  /// The redirection state of the legacy repositories in this project.
  /// Possible string values are:
  /// - "REDIRECTION_STATE_UNSPECIFIED" : No redirection status has been set.
  /// - "REDIRECTION_FROM_GCR_IO_DISABLED" : Redirection is disabled.
  /// - "REDIRECTION_FROM_GCR_IO_ENABLED" : Redirection is enabled.
  /// - "REDIRECTION_FROM_GCR_IO_FINALIZED" : Redirection is enabled, and has
  /// been finalized so cannot be reverted.
  core.String? legacyRedirectionState;

  /// The name of the project's settings.
  ///
  /// Always of the form: projects/{project-id}/projectSettings In update
  /// request: never set In response: always set
  core.String? name;

  ProjectSettings({
    this.legacyRedirectionState,
    this.name,
  });

  ProjectSettings.fromJson(core.Map json_)
      : this(
          legacyRedirectionState: json_.containsKey('legacyRedirectionState')
              ? json_['legacyRedirectionState'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacyRedirectionState != null)
          'legacyRedirectionState': legacyRedirectionState!,
        if (name != null) 'name': name!,
      };
}

/// PythonPackage represents a python artifact.
class PythonPackage {
  /// Time the package was created.
  ///
  /// Output only.
  core.String? createTime;

  /// registry_location, project_id, repository_name and python_package forms a
  /// unique package name:`projects//locations//repository//pythonPackages/`.
  ///
  /// For example,
  /// "projects/test-project/locations/us-west4/repositories/test-repo/pythonPackages/
  /// python_package:1.0.0", where "us-west4" is the registry_location,
  /// "test-project" is the project_id, "test-repo" is the repository_name and
  /// python_package:1.0.0" is the python package.
  ///
  /// Required.
  core.String? name;

  /// Package for the artifact.
  core.String? packageName;

  /// Time the package was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// URL to access the package.
  ///
  /// Example:
  /// us-west4-python.pkg.dev/test-project/test-repo/python_package/file-name-1.0.0.tar.gz
  ///
  /// Required.
  core.String? uri;

  /// Version of this package.
  core.String? version;

  PythonPackage({
    this.createTime,
    this.name,
    this.packageName,
    this.updateTime,
    this.uri,
    this.version,
  });

  PythonPackage.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uri != null) 'uri': uri!,
        if (version != null) 'version': version!,
      };
}

/// A Repository for storing artifacts with a specific format.
class Repository {
  /// The time when the repository was created.
  core.String? createTime;

  /// The user-provided description of the repository.
  core.String? description;

  /// The format of packages that are stored in the repository.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Unspecified package format.
  /// - "DOCKER" : Docker package format.
  /// - "MAVEN" : Maven package format.
  /// - "NPM" : NPM package format.
  /// - "APT" : APT package format.
  /// - "YUM" : YUM package format.
  /// - "PYTHON" : Python package format.
  /// - "KFP" : Kubeflow Pipelines package format.
  core.String? format;

  /// The Cloud KMS resource name of the customer managed encryption key that's
  /// used to encrypt the contents of the Repository.
  ///
  /// Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  core.String? kmsKeyName;

  /// Labels with user-defined metadata.
  ///
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  core.Map<core.String, core.String>? labels;

  /// Maven repository config contains repository level configuration for the
  /// repositories of maven type.
  MavenRepositoryConfig? mavenConfig;

  /// The name of the repository, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1".
  core.String? name;

  /// If set, the repository satisfies physical zone separation.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The size, in bytes, of all artifact storage in this repository.
  ///
  /// Repositories that are generally available or in public preview use this to
  /// calculate storage costs.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// The time when the repository was last updated.
  core.String? updateTime;

  Repository({
    this.createTime,
    this.description,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.mavenConfig,
    this.name,
    this.satisfiesPzs,
    this.sizeBytes,
    this.updateTime,
  });

  Repository.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mavenConfig: json_.containsKey('mavenConfig')
              ? MavenRepositoryConfig.fromJson(
                  json_['mavenConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (format != null) 'format': format!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (labels != null) 'labels': labels!,
        if (mavenConfig != null) 'mavenConfig': mavenConfig!,
        if (name != null) 'name': name!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
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

/// Tags point to a version and represent an alternative name that can be used
/// to access the version.
class Tag {
  /// The name of the tag, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1".
  ///
  /// If the package part contains slashes, the slashes are escaped. The tag
  /// part can only have characters in \[a-zA-Z0-9\-._~:@\], anything else must
  /// be URL encoded.
  core.String? name;

  /// The name of the version the tag refers to, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811"
  /// If the package or version ID parts contain slashes, the slashes are
  /// escaped.
  core.String? version;

  Tag({
    this.name,
    this.version,
  });

  Tag.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The response to upload an artifact.
class UploadAptArtifactMediaResponse {
  /// Operation to be returned to the user.
  Operation? operation;

  UploadAptArtifactMediaResponse({
    this.operation,
  });

  UploadAptArtifactMediaResponse.fromJson(core.Map json_)
      : this(
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
      };
}

/// The request to upload an artifact.
typedef UploadAptArtifactRequest = $Empty;

/// The response to upload an artifact.
class UploadKfpArtifactMediaResponse {
  /// Operation that will be returned to the user.
  Operation? operation;

  UploadKfpArtifactMediaResponse({
    this.operation,
  });

  UploadKfpArtifactMediaResponse.fromJson(core.Map json_)
      : this(
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
      };
}

/// The request to upload an artifact.
class UploadKfpArtifactRequest {
  /// Description of the package version.
  core.String? description;

  /// Tags to be created with the version.
  core.List<core.String>? tags;

  UploadKfpArtifactRequest({
    this.description,
    this.tags,
  });

  UploadKfpArtifactRequest.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (tags != null) 'tags': tags!,
      };
}

/// The response to upload an artifact.
class UploadYumArtifactMediaResponse {
  /// Operation to be returned to the user.
  Operation? operation;

  UploadYumArtifactMediaResponse({
    this.operation,
  });

  UploadYumArtifactMediaResponse.fromJson(core.Map json_)
      : this(
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
      };
}

/// The request to upload an artifact.
typedef UploadYumArtifactRequest = $Empty;

/// The body of a version resource.
///
/// A version resource represents a collection of components, such as files and
/// other data. This may correspond to a version in many package management
/// schemes.
class Version {
  /// The time when the version was created.
  core.String? createTime;

  /// Description of the version, as specified in its metadata.
  ///
  /// Optional.
  core.String? description;

  /// Repository-specific Metadata stored against this version.
  ///
  /// The fields returned are defined by the underlying repository-specific
  /// resource. Currently, the resources could be: DockerImage MavenArtifact
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The name of the version, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/art1".
  ///
  /// If the package or version ID parts contain slashes, the slashes are
  /// escaped.
  core.String? name;

  /// A list of related tags.
  ///
  /// Will contain up to 100 tags that reference this version.
  ///
  /// Output only.
  core.List<Tag>? relatedTags;

  /// The time when the version was last updated.
  core.String? updateTime;

  Version({
    this.createTime,
    this.description,
    this.metadata,
    this.name,
    this.relatedTags,
    this.updateTime,
  });

  Version.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          relatedTags: json_.containsKey('relatedTags')
              ? (json_['relatedTags'] as core.List)
                  .map((value) => Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (relatedTags != null) 'relatedTags': relatedTags!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
