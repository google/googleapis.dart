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
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsRepositoriesResource]
///       - [ProjectsLocationsRepositoriesDockerImagesResource]
library artifactregistry.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

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

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  ArtifactRegistryApi(http.Client client,
      {core.String rootUrl = 'https://artifactregistry.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations/.*$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  ProjectsLocationsRepositoriesResource get repositories =>
      ProjectsLocationsRepositoriesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesDockerImagesResource get dockerImages =>
      ProjectsLocationsRepositoriesDockerImagesResource(_requester);

  ProjectsLocationsRepositoriesResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Repository.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists repositories.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose repositories
  /// will be listed.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of repositories to return.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRepositoriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesDockerImagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesDockerImagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists docker images.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource whose docker images
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
  /// Completes with a [ListDockerImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDockerImagesResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dockerImages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDockerImagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A detailed representation of an Apt artifact.
///
/// Information in the record is derived from the archive's control file. See
/// https://www.debian.org/doc/debian-policy/ch-controlfields.html
class AptArtifact {
  /// Operating system architecture of the artifact.
  ///
  /// Output only.
  core.String? architecture;

  /// Repository component of the artifact.
  ///
  /// Output only.
  core.String? component;

  /// Contents of the artifact's control metadata file.
  ///
  /// Output only.
  core.String? controlFile;
  core.List<core.int> get controlFileAsBytes =>
      convert.base64.decode(controlFile!);

  set controlFileAsBytes(core.List<core.int> _bytes) {
    controlFile =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The Artifact Registry resource name of the artifact.
  ///
  /// Output only.
  core.String? name;

  /// The Apt package name of the artifact.
  ///
  /// Output only.
  core.String? packageName;

  /// An artifact is a binary or source package.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PACKAGE_TYPE_UNSPECIFIED" : Package type is not specified.
  /// - "BINARY" : Binary package.
  /// - "SOURCE" : Source package.
  core.String? packageType;

  AptArtifact({
    this.architecture,
    this.component,
    this.controlFile,
    this.name,
    this.packageName,
    this.packageType,
  });

  AptArtifact.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          component: _json.containsKey('component')
              ? _json['component'] as core.String
              : null,
          controlFile: _json.containsKey('controlFile')
              ? _json['controlFile'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (component != null) 'component': component!,
        if (controlFile != null) 'controlFile': controlFile!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (packageType != null) 'packageType': packageType!,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// DockerImage represents a docker artifact.
///
/// The following fields are returned as untyped metadata in the Version
/// resource, using camelcase keys (i.e. metadata.imageSizeBytes): -
/// imageSizeBytes - mediaType - buildTime
class DockerImage {
  /// The time this image was built.
  ///
  /// This field is returned as the 'metadata.buildTime' field in the Version
  /// resource. The build time is returned to the client as an RFC 3339 string,
  /// which can be easily used with the JavaScript Date constructor and keeps
  /// the Version timestamps returned via OnePlatform consistent, as JSON
  /// marshals google.protobuf.Timestamp into an RFC 3339 string.
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
    this.uploadTime,
    this.uri,
  });

  DockerImage.fromJson(core.Map _json)
      : this(
          buildTime: _json.containsKey('buildTime')
              ? _json['buildTime'] as core.String
              : null,
          imageSizeBytes: _json.containsKey('imageSizeBytes')
              ? _json['imageSizeBytes'] as core.String
              : null,
          mediaType: _json.containsKey('mediaType')
              ? _json['mediaType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          tags: _json.containsKey('tags')
              ? (_json['tags'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          uploadTime: _json.containsKey('uploadTime')
              ? _json['uploadTime'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildTime != null) 'buildTime': buildTime!,
        if (imageSizeBytes != null) 'imageSizeBytes': imageSizeBytes!,
        if (mediaType != null) 'mediaType': mediaType!,
        if (name != null) 'name': name!,
        if (tags != null) 'tags': tags!,
        if (uploadTime != null) 'uploadTime': uploadTime!,
        if (uri != null) 'uri': uri!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Error information explaining why a package was not imported.
class ImportAptArtifactsErrorInfo {
  /// The detailed error status.
  Status? error;

  /// Google Cloud Storage location requested.
  ImportAptArtifactsGcsSource? gcsSource;

  ImportAptArtifactsErrorInfo({
    this.error,
    this.gcsSource,
  });

  ImportAptArtifactsErrorInfo.fromJson(core.Map _json)
      : this(
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? ImportAptArtifactsGcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!.toJson(),
        if (gcsSource != null) 'gcsSource': gcsSource!.toJson(),
      };
}

/// Google Cloud Storage location where the artifacts currently reside.
class ImportAptArtifactsGcsSource {
  /// Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
  core.List<core.String>? uris;

  /// Supports URI wildcards for matching multiple objects from a single URI.
  core.bool? useWildcards;

  ImportAptArtifactsGcsSource({
    this.uris,
    this.useWildcards,
  });

  ImportAptArtifactsGcsSource.fromJson(core.Map _json)
      : this(
          uris: _json.containsKey('uris')
              ? (_json['uris'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          useWildcards: _json.containsKey('useWildcards')
              ? _json['useWildcards'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uris != null) 'uris': uris!,
        if (useWildcards != null) 'useWildcards': useWildcards!,
      };
}

/// The response message from importing artifacts.
class ImportAptArtifactsResponse {
  /// The Apt artifacts updated.
  core.List<AptArtifact>? aptArtifacts;

  /// Detailed error info for packages that were not imported.
  core.List<ImportAptArtifactsErrorInfo>? errors;

  ImportAptArtifactsResponse({
    this.aptArtifacts,
    this.errors,
  });

  ImportAptArtifactsResponse.fromJson(core.Map _json)
      : this(
          aptArtifacts: _json.containsKey('aptArtifacts')
              ? (_json['aptArtifacts'] as core.List)
                  .map<AptArtifact>((value) => AptArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map<ImportAptArtifactsErrorInfo>((value) =>
                      ImportAptArtifactsErrorInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aptArtifacts != null)
          'aptArtifacts': aptArtifacts!.map((value) => value.toJson()).toList(),
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
      };
}

/// Error information explaining why a package was not imported.
class ImportYumArtifactsErrorInfo {
  /// The detailed error status.
  Status? error;

  /// Google Cloud Storage location requested.
  ImportYumArtifactsGcsSource? gcsSource;

  ImportYumArtifactsErrorInfo({
    this.error,
    this.gcsSource,
  });

  ImportYumArtifactsErrorInfo.fromJson(core.Map _json)
      : this(
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? ImportYumArtifactsGcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!.toJson(),
        if (gcsSource != null) 'gcsSource': gcsSource!.toJson(),
      };
}

/// Google Cloud Storage location where the artifacts currently reside.
class ImportYumArtifactsGcsSource {
  /// Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
  core.List<core.String>? uris;

  /// Supports URI wildcards for matching multiple objects from a single URI.
  core.bool? useWildcards;

  ImportYumArtifactsGcsSource({
    this.uris,
    this.useWildcards,
  });

  ImportYumArtifactsGcsSource.fromJson(core.Map _json)
      : this(
          uris: _json.containsKey('uris')
              ? (_json['uris'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          useWildcards: _json.containsKey('useWildcards')
              ? _json['useWildcards'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uris != null) 'uris': uris!,
        if (useWildcards != null) 'useWildcards': useWildcards!,
      };
}

/// The response message from importing artifacts.
class ImportYumArtifactsResponse {
  /// Detailed error info for packages that were not imported.
  core.List<ImportYumArtifactsErrorInfo>? errors;

  /// The yum artifacts updated.
  core.List<YumArtifact>? yumArtifacts;

  ImportYumArtifactsResponse({
    this.errors,
    this.yumArtifacts,
  });

  ImportYumArtifactsResponse.fromJson(core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map<ImportYumArtifactsErrorInfo>((value) =>
                      ImportYumArtifactsErrorInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          yumArtifacts: _json.containsKey('yumArtifacts')
              ? (_json['yumArtifacts'] as core.List)
                  .map<YumArtifact>((value) => YumArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (yumArtifacts != null)
          'yumArtifacts': yumArtifacts!.map((value) => value.toJson()).toList(),
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

  ListDockerImagesResponse.fromJson(core.Map _json)
      : this(
          dockerImages: _json.containsKey('dockerImages')
              ? (_json['dockerImages'] as core.List)
                  .map<DockerImage>((value) => DockerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dockerImages != null)
          'dockerImages': dockerImages!.map((value) => value.toJson()).toList(),
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map<Operation>((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
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

  ListRepositoriesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          repositories: _json.containsKey('repositories')
              ? (_json['repositories'] as core.List)
                  .map<Repository>((value) => Repository.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repositories != null)
          'repositories': repositories!.map((value) => value.toJson()).toList(),
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
  core.Map<core.String, core.Object>? metadata;

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
  core.Map<core.String, core.Object>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
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
  /// - "PYPI" : PyPI package format.
  /// - "APT" : APT package format.
  /// - "YUM" : YUM package format.
  /// - "PYTHON" : Python package format.
  core.String? format;

  /// The Cloud KMS resource name of the customer managed encryption key that’s
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

  /// The name of the repository, for example:
  /// "projects/p1/locations/us-central1/repositories/repo1".
  core.String? name;

  /// The time when the repository was last updated.
  core.String? updateTime;

  Repository({
    this.createTime,
    this.description,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.updateTime,
  });

  Repository.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (format != null) 'format': format!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// The response to upload an artifact.
class UploadAptArtifactMediaResponse {
  /// Operation to be returned to the user.
  Operation? operation;

  UploadAptArtifactMediaResponse({
    this.operation,
  });

  UploadAptArtifactMediaResponse.fromJson(core.Map _json)
      : this(
          operation: _json.containsKey('operation')
              ? Operation.fromJson(
                  _json['operation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!.toJson(),
      };
}

/// The response of the completed artifact upload operation.
///
/// This response is contained in the Operation and available to users.
class UploadAptArtifactResponse {
  /// The Apt artifacts updated.
  core.List<AptArtifact>? aptArtifacts;

  UploadAptArtifactResponse({
    this.aptArtifacts,
  });

  UploadAptArtifactResponse.fromJson(core.Map _json)
      : this(
          aptArtifacts: _json.containsKey('aptArtifacts')
              ? (_json['aptArtifacts'] as core.List)
                  .map<AptArtifact>((value) => AptArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aptArtifacts != null)
          'aptArtifacts': aptArtifacts!.map((value) => value.toJson()).toList(),
      };
}

/// The response to upload an artifact.
class UploadYumArtifactMediaResponse {
  /// Operation to be returned to the user.
  Operation? operation;

  UploadYumArtifactMediaResponse({
    this.operation,
  });

  UploadYumArtifactMediaResponse.fromJson(core.Map _json)
      : this(
          operation: _json.containsKey('operation')
              ? Operation.fromJson(
                  _json['operation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!.toJson(),
      };
}

/// The response of the completed artifact upload operation.
///
/// This response is contained in the Operation and available to users.
class UploadYumArtifactResponse {
  /// The Apt artifacts updated.
  core.List<YumArtifact>? yumArtifacts;

  UploadYumArtifactResponse({
    this.yumArtifacts,
  });

  UploadYumArtifactResponse.fromJson(core.Map _json)
      : this(
          yumArtifacts: _json.containsKey('yumArtifacts')
              ? (_json['yumArtifacts'] as core.List)
                  .map<YumArtifact>((value) => YumArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (yumArtifacts != null)
          'yumArtifacts': yumArtifacts!.map((value) => value.toJson()).toList(),
      };
}

/// A detailed representation of a Yum artifact.
class YumArtifact {
  /// Operating system architecture of the artifact.
  ///
  /// Output only.
  core.String? architecture;

  /// The Artifact Registry resource name of the artifact.
  ///
  /// Output only.
  core.String? name;

  /// The yum package name of the artifact.
  ///
  /// Output only.
  core.String? packageName;

  /// An artifact is a binary or source package.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PACKAGE_TYPE_UNSPECIFIED" : Package type is not specified.
  /// - "BINARY" : Binary package (.rpm). .rpm
  /// - "SOURCE" : Source package (.srpm).
  core.String? packageType;

  YumArtifact({
    this.architecture,
    this.name,
    this.packageName,
    this.packageType,
  });

  YumArtifact.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (packageType != null) 'packageType': packageType!,
      };
}
