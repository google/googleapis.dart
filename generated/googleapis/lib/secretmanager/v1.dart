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

/// Secret Manager API - v1
///
/// Stores sensitive data such as API keys, passwords, and certificates.
/// Provides convenience while improving security.
///
/// For more information, see <https://cloud.google.com/secret-manager/>
///
/// Create an instance of [SecretManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSecretsResource]
///       - [ProjectsLocationsSecretsVersionsResource]
///   - [ProjectsSecretsResource]
///     - [ProjectsSecretsVersionsResource]
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

/// Stores sensitive data such as API keys, passwords, and certificates.
///
/// Provides convenience while improving security.
class SecretManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  SecretManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://secretmanager.googleapis.com/',
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
  ProjectsSecretsResource get secrets => ProjectsSecretsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSecretsResource get secrets =>
      ProjectsLocationsSecretsResource(_requester);

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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
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
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSecretsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecretsVersionsResource get versions =>
      ProjectsLocationsSecretsVersionsResource(_requester);

  ProjectsLocationsSecretsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new SecretVersion containing secret data and attaches it to an
  /// existing Secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Secret to associate with the
  /// SecretVersion in the format `projects / * /secrets / * ` or `projects / *
  /// /locations / * /secrets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> addVersion(
    AddSecretVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':addVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new Secret containing no SecretVersions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project to associate with
  /// the Secret, in the format `projects / * ` or `projects / * /locations / *
  /// `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [secretId] - Required. This must be unique within the project. A secret ID
  /// is a string with a maximum length of 255 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (`-`) and
  /// underscore (`_`) characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> create(
    Secret request,
    core.String parent, {
    core.String? secretId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'secretId': ?secretId == null ? null : [secretId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/secrets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Secret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Secret to delete in the format
  /// `projects / * /secrets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [etag] - Optional. Etag of the Secret. The request succeeds if it matches
  /// the etag of the currently stored secret object. If the etag is omitted,
  /// the request succeeds.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata for a given Secret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Secret, in the format
  /// `projects / * /secrets / * ` or `projects / * /locations / * /secrets / *
  /// `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a secret.
  ///
  /// Returns empty policy if the secret exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
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
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Secrets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project associated with the
  /// Secrets, in the format `projects / * ` or `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string, adhering to the rules in
  /// \[List-operation
  /// filtering\](https://cloud.google.com/secret-manager/docs/filtering). List
  /// only secrets matching the filter. If filter is empty, all secrets are
  /// listed.
  ///
  /// [pageSize] - Optional. The maximum number of results to be returned in a
  /// single page. If set to 0, the server decides the number of results to
  /// return. If the number is greater than 25000, it is capped at 25000.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListSecretsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecretsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecretsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/secrets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecretsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates metadata of an existing Secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the Secret in the format
  /// `projects / * /secrets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Specifies the fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> patch(
    Secret request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified secret.
  ///
  /// Replaces any existing policy. Permissions on SecretVersions are enforced
  /// according to the policy set on the associated Secret.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

  /// Returns permissions that a caller has for the specified secret.
  ///
  /// If the secret does not exist, this call returns an empty set of
  /// permissions, not a NOT_FOUND error. Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsSecretsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSecretsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Accesses a SecretVersion.
  ///
  /// This call returns the secret data. `projects / * /secrets / *
  /// /versions/latest` is an alias to the most recently created SecretVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion in the format
  /// `projects / * /secrets / * /versions / * ` or `projects / * /locations / *
  /// /secrets / * /versions / * `. `projects / * /secrets / * /versions/latest`
  /// or `projects / * /locations / * /secrets / * /versions/latest` is an alias
  /// to the most recently created SecretVersion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSecretVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSecretVersionResponse> access(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':access';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSecretVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Destroys a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to DESTROYED and irrevocably destroys
  /// the secret data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to destroy in
  /// the format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> destroy(
    DestroySecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':destroy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disables a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to DISABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to disable in
  /// the format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> disable(
    DisableSecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to ENABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to enable in the
  /// format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> enable(
    EnableSecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets metadata for a SecretVersion.
  ///
  /// `projects / * /secrets / * /versions/latest` is an alias to the most
  /// recently created SecretVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion in the format
  /// `projects / * /secrets / * /versions / * ` or `projects / * /locations / *
  /// /secrets / * /versions / * `. `projects / * /secrets / * /versions/latest`
  /// or `projects / * /locations / * /secrets / * /versions/latest` is an alias
  /// to the most recently created SecretVersion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> get(
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
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SecretVersions.
  ///
  /// This call does not return secret data.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Secret associated with the
  /// SecretVersions to list, in the format `projects / * /secrets / * ` or
  /// `projects / * /locations / * /secrets / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string, adhering to the rules in
  /// \[List-operation
  /// filtering\](https://cloud.google.com/secret-manager/docs/filtering). List
  /// only secret versions matching the filter. If filter is empty, all secret
  /// versions are listed.
  ///
  /// [pageSize] - Optional. The maximum number of results to be returned in a
  /// single page. If set to 0, the server decides the number of results to
  /// return. If the number is greater than 25000, it is capped at 25000.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListSecretVersionsResponse.next_page_token\]\[\].
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecretVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecretVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecretVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSecretsResource {
  final commons.ApiRequester _requester;

  ProjectsSecretsVersionsResource get versions =>
      ProjectsSecretsVersionsResource(_requester);

  ProjectsSecretsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new SecretVersion containing secret data and attaches it to an
  /// existing Secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Secret to associate with the
  /// SecretVersion in the format `projects / * /secrets / * ` or `projects / *
  /// /locations / * /secrets / * `.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> addVersion(
    AddSecretVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':addVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new Secret containing no SecretVersions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project to associate with
  /// the Secret, in the format `projects / * ` or `projects / * /locations / *
  /// `.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [secretId] - Required. This must be unique within the project. A secret ID
  /// is a string with a maximum length of 255 characters and can contain
  /// uppercase and lowercase letters, numerals, and the hyphen (`-`) and
  /// underscore (`_`) characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> create(
    Secret request,
    core.String parent, {
    core.String? secretId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'secretId': ?secretId == null ? null : [secretId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/secrets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Secret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Secret to delete in the format
  /// `projects / * /secrets / * `.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [etag] - Optional. Etag of the Secret. The request succeeds if it matches
  /// the etag of the currently stored secret object. If the etag is omitted,
  /// the request succeeds.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'etag': ?etag == null ? null : [etag],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata for a given Secret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Secret, in the format
  /// `projects / * /secrets / * ` or `projects / * /locations / * /secrets / *
  /// `.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a secret.
  ///
  /// Returns empty policy if the secret exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
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
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Secrets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the project associated with the
  /// Secrets, in the format `projects / * ` or `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string, adhering to the rules in
  /// \[List-operation
  /// filtering\](https://cloud.google.com/secret-manager/docs/filtering). List
  /// only secrets matching the filter. If filter is empty, all secrets are
  /// listed.
  ///
  /// [pageSize] - Optional. The maximum number of results to be returned in a
  /// single page. If set to 0, the server decides the number of results to
  /// return. If the number is greater than 25000, it is capped at 25000.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListSecretsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecretsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecretsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/secrets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecretsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates metadata of an existing Secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the Secret in the format
  /// `projects / * /secrets / * `.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Specifies the fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Secret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Secret> patch(
    Secret request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Secret.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified secret.
  ///
  /// Replaces any existing policy. Permissions on SecretVersions are enforced
  /// according to the policy set on the associated Secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

  /// Returns permissions that a caller has for the specified secret.
  ///
  /// If the secret does not exist, this call returns an empty set of
  /// permissions, not a NOT_FOUND error. Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
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
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsSecretsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsSecretsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Accesses a SecretVersion.
  ///
  /// This call returns the secret data. `projects / * /secrets / *
  /// /versions/latest` is an alias to the most recently created SecretVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion in the format
  /// `projects / * /secrets / * /versions / * ` or `projects / * /locations / *
  /// /secrets / * /versions / * `. `projects / * /secrets / * /versions/latest`
  /// or `projects / * /locations / * /secrets / * /versions/latest` is an alias
  /// to the most recently created SecretVersion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSecretVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSecretVersionResponse> access(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':access';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccessSecretVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Destroys a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to DESTROYED and irrevocably destroys
  /// the secret data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to destroy in
  /// the format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> destroy(
    DestroySecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':destroy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disables a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to DISABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to disable in
  /// the format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> disable(
    DisableSecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a SecretVersion.
  ///
  /// Sets the state of the SecretVersion to ENABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion to enable in the
  /// format `projects / * /secrets / * /versions / * ` or `projects / *
  /// /locations / * /secrets / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> enable(
    EnableSecretVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets metadata for a SecretVersion.
  ///
  /// `projects / * /secrets / * /versions/latest` is an alias to the most
  /// recently created SecretVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the SecretVersion in the format
  /// `projects / * /secrets / * /versions / * ` or `projects / * /locations / *
  /// /secrets / * /versions / * `. `projects / * /secrets / * /versions/latest`
  /// or `projects / * /locations / * /secrets / * /versions/latest` is an alias
  /// to the most recently created SecretVersion.
  /// Value must have pattern
  /// `^projects/\[^/\]+/secrets/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecretVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecretVersion> get(
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
    return SecretVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SecretVersions.
  ///
  /// This call does not return secret data.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Secret associated with the
  /// SecretVersions to list, in the format `projects / * /secrets / * ` or
  /// `projects / * /locations / * /secrets / * `.
  /// Value must have pattern `^projects/\[^/\]+/secrets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string, adhering to the rules in
  /// \[List-operation
  /// filtering\](https://cloud.google.com/secret-manager/docs/filtering). List
  /// only secret versions matching the filter. If filter is empty, all secret
  /// versions are listed.
  ///
  /// [pageSize] - Optional. The maximum number of results to be returned in a
  /// single page. If set to 0, the server decides the number of results to
  /// return. If the number is greater than 25000, it is capped at 25000.
  ///
  /// [pageToken] - Optional. Pagination token, returned earlier via
  /// ListSecretVersionsResponse.next_page_token\]\[\].
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecretVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecretVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecretVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Response message for SecretManagerService.AccessSecretVersion.
class AccessSecretVersionResponse {
  /// The resource name of the SecretVersion in the format `projects / *
  /// /secrets / * /versions / * ` or `projects / * /locations / * /secrets / *
  /// /versions / * `.
  core.String? name;

  /// Secret payload
  SecretPayload? payload;

  AccessSecretVersionResponse({this.name, this.payload});

  AccessSecretVersionResponse.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        payload: json_.containsKey('payload')
            ? SecretPayload.fromJson(
                json_['payload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final payload = this.payload;
    return {'name': ?name, 'payload': ?payload};
  }
}

/// Request message for SecretManagerService.AddSecretVersion.
class AddSecretVersionRequest {
  /// The secret payload of the SecretVersion.
  ///
  /// Required.
  SecretPayload? payload;

  AddSecretVersionRequest({this.payload});

  AddSecretVersionRequest.fromJson(core.Map json_)
    : this(
        payload: json_.containsKey('payload')
            ? SecretPayload.fromJson(
                json_['payload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final payload = this.payload;
    return {'payload': ?payload};
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
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// A replication policy that replicates the Secret payload without any
/// restrictions.
class Automatic {
  /// The customer-managed encryption configuration of the Secret.
  ///
  /// If no configuration is provided, Google-managed default encryption is
  /// used. Updates to the Secret encryption configuration only apply to
  /// SecretVersions added afterwards. They do not apply retroactively to
  /// existing SecretVersions.
  ///
  /// Optional.
  CustomerManagedEncryption? customerManagedEncryption;

  Automatic({this.customerManagedEncryption});

  Automatic.fromJson(core.Map json_)
    : this(
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryption.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerManagedEncryption = this.customerManagedEncryption;
    return {'customerManagedEncryption': ?customerManagedEncryption};
  }
}

/// The replication status of a SecretVersion using automatic replication.
///
/// Only populated if the parent Secret has an automatic replication policy.
class AutomaticStatus {
  /// The customer-managed encryption status of the SecretVersion.
  ///
  /// Only populated if customer-managed encryption is used.
  ///
  /// Output only.
  CustomerManagedEncryptionStatus? customerManagedEncryption;

  AutomaticStatus({this.customerManagedEncryption});

  AutomaticStatus.fromJson(core.Map json_)
    : this(
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryptionStatus.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerManagedEncryption = this.customerManagedEncryption;
    return {'customerManagedEncryption': ?customerManagedEncryption};
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
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

/// Configuration for encrypting secret payloads using customer-managed
/// encryption keys (CMEK).
class CustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret
  /// payloads.
  ///
  /// For secrets using the UserManaged replication policy type, Cloud KMS
  /// CryptoKeys must reside in the same location as the replica location. For
  /// secrets using the Automatic replication policy type, Cloud KMS CryptoKeys
  /// must reside in `global`. The expected format is `projects / * /locations /
  /// * /keyRings / * /cryptoKeys / * `.
  ///
  /// Required.
  core.String? kmsKeyName;

  CustomerManagedEncryption({this.kmsKeyName});

  CustomerManagedEncryption.fromJson(core.Map json_)
    : this(kmsKeyName: json_['kmsKeyName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKeyName = this.kmsKeyName;
    return {'kmsKeyName': ?kmsKeyName};
  }
}

/// Describes the status of customer-managed encryption.
class CustomerManagedEncryptionStatus {
  /// The resource name of the Cloud KMS CryptoKeyVersion used to encrypt the
  /// secret payload, in the following format: `projects / * /locations / *
  /// /keyRings / * /cryptoKeys / * /versions / * `.
  ///
  /// Required.
  core.String? kmsKeyVersionName;

  CustomerManagedEncryptionStatus({this.kmsKeyVersionName});

  CustomerManagedEncryptionStatus.fromJson(core.Map json_)
    : this(kmsKeyVersionName: json_['kmsKeyVersionName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKeyVersionName = this.kmsKeyVersionName;
    return {'kmsKeyVersionName': ?kmsKeyVersionName};
  }
}

/// Request message for SecretManagerService.DestroySecretVersion.
typedef DestroySecretVersionRequest = $SecretVersionRequest;

/// Request message for SecretManagerService.DisableSecretVersion.
typedef DisableSecretVersionRequest = $SecretVersionRequest;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for SecretManagerService.EnableSecretVersion.
typedef EnableSecretVersionRequest = $SecretVersionRequest;

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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Response message for SecretManagerService.ListSecretVersions.
class ListSecretVersionsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in ListSecretVersionsRequest.page_token to retrieve the
  /// next page.
  core.String? nextPageToken;

  /// The total number of SecretVersions but 0 when the
  /// ListSecretsRequest.filter field is set.
  core.int? totalSize;

  /// The list of SecretVersions sorted in reverse by create_time (newest
  /// first).
  core.List<SecretVersion>? versions;

  ListSecretVersionsResponse({
    this.nextPageToken,
    this.totalSize,
    this.versions,
  });

  ListSecretVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
        versions: (json_['versions'] as core.List?)
            ?.map(
              (value) => SecretVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    final versions = this.versions;
    return {
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
      'versions': ?versions,
    };
  }
}

/// Response message for SecretManagerService.ListSecrets.
class ListSecretsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in ListSecretsRequest.page_token to retrieve the next
  /// page.
  core.String? nextPageToken;

  /// The list of Secrets sorted in reverse by create_time (newest first).
  core.List<Secret>? secrets;

  /// The total number of Secrets but 0 when the ListSecretsRequest.filter field
  /// is set.
  core.int? totalSize;

  ListSecretsResponse({this.nextPageToken, this.secrets, this.totalSize});

  ListSecretsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        secrets: (json_['secrets'] as core.List?)
            ?.map(
              (value) =>
                  Secret.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final secrets = this.secrets;
    final totalSize = this.totalSize;
    return {
      'nextPageToken': ?nextPageToken,
      'secrets': ?secrets,
      'totalSize': ?totalSize,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
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
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

/// Represents a Replica for this Secret.
class Replica {
  /// The customer-managed encryption configuration of the User-Managed Replica.
  ///
  /// If no configuration is provided, Google-managed default encryption is
  /// used. Updates to the Secret encryption configuration only apply to
  /// SecretVersions added afterwards. They do not apply retroactively to
  /// existing SecretVersions.
  ///
  /// Optional.
  CustomerManagedEncryption? customerManagedEncryption;

  /// The canonical IDs of the location to replicate data.
  ///
  /// For example: `"us-east1"`.
  core.String? location;

  Replica({this.customerManagedEncryption, this.location});

  Replica.fromJson(core.Map json_)
    : this(
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryption.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_['location'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerManagedEncryption = this.customerManagedEncryption;
    final location = this.location;
    return {
      'customerManagedEncryption': ?customerManagedEncryption,
      'location': ?location,
    };
  }
}

/// Describes the status of a user-managed replica for the SecretVersion.
class ReplicaStatus {
  /// The customer-managed encryption status of the SecretVersion.
  ///
  /// Only populated if customer-managed encryption is used.
  ///
  /// Output only.
  CustomerManagedEncryptionStatus? customerManagedEncryption;

  /// The canonical ID of the replica location.
  ///
  /// For example: `"us-east1"`.
  ///
  /// Output only.
  core.String? location;

  ReplicaStatus({this.customerManagedEncryption, this.location});

  ReplicaStatus.fromJson(core.Map json_)
    : this(
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryptionStatus.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_['location'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerManagedEncryption = this.customerManagedEncryption;
    final location = this.location;
    return {
      'customerManagedEncryption': ?customerManagedEncryption,
      'location': ?location,
    };
  }
}

/// A policy that defines the replication and encryption configuration of data.
class Replication {
  /// The Secret will automatically be replicated without any restrictions.
  Automatic? automatic;

  /// The Secret will only be replicated into the locations specified.
  UserManaged? userManaged;

  Replication({this.automatic, this.userManaged});

  Replication.fromJson(core.Map json_)
    : this(
        automatic: json_.containsKey('automatic')
            ? Automatic.fromJson(
                json_['automatic'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userManaged: json_.containsKey('userManaged')
            ? UserManaged.fromJson(
                json_['userManaged'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automatic = this.automatic;
    final userManaged = this.userManaged;
    return {'automatic': ?automatic, 'userManaged': ?userManaged};
  }
}

/// The replication status of a SecretVersion.
class ReplicationStatus {
  /// Describes the replication status of a SecretVersion with automatic
  /// replication.
  ///
  /// Only populated if the parent Secret has an automatic replication policy.
  AutomaticStatus? automatic;

  /// Describes the replication status of a SecretVersion with user-managed
  /// replication.
  ///
  /// Only populated if the parent Secret has a user-managed replication policy.
  UserManagedStatus? userManaged;

  ReplicationStatus({this.automatic, this.userManaged});

  ReplicationStatus.fromJson(core.Map json_)
    : this(
        automatic: json_.containsKey('automatic')
            ? AutomaticStatus.fromJson(
                json_['automatic'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userManaged: json_.containsKey('userManaged')
            ? UserManagedStatus.fromJson(
                json_['userManaged'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final automatic = this.automatic;
    final userManaged = this.userManaged;
    return {'automatic': ?automatic, 'userManaged': ?userManaged};
  }
}

/// The rotation time and period for a Secret.
///
/// At next_rotation_time, Secret Manager will send a Pub/Sub notification to
/// the topics configured on the Secret. Secret.topics must be set to configure
/// rotation.
class Rotation {
  /// Timestamp in UTC at which the Secret is scheduled to rotate.
  ///
  /// Cannot be set to less than 300s (5 min) in the future and at most
  /// 3153600000s (100 years). next_rotation_time MUST be set if rotation_period
  /// is set.
  ///
  /// Optional.
  core.String? nextRotationTime;

  /// Input only.
  ///
  /// The Duration between rotation notifications. Must be in seconds and at
  /// least 3600s (1h) and at most 3153600000s (100 years). If rotation_period
  /// is set, next_rotation_time must be set. next_rotation_time will be
  /// advanced by this period when the service automatically sends rotation
  /// notifications.
  core.String? rotationPeriod;

  Rotation({this.nextRotationTime, this.rotationPeriod});

  Rotation.fromJson(core.Map json_)
    : this(
        nextRotationTime: json_['nextRotationTime'] as core.String?,
        rotationPeriod: json_['rotationPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextRotationTime = this.nextRotationTime;
    final rotationPeriod = this.rotationPeriod;
    return {
      'nextRotationTime': ?nextRotationTime,
      'rotationPeriod': ?rotationPeriod,
    };
  }
}

/// A Secret is a logical secret whose value and versions can be accessed.
///
/// A Secret is made up of zero or more SecretVersions that represent the secret
/// data.
class Secret {
  /// Custom metadata about the secret.
  ///
  /// Annotations are distinct from various forms of labels. Annotations exist
  /// to allow client tools to store their own state information without
  /// requiring a database. Annotation keys must be between 1 and 63 characters
  /// long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an
  /// alphanumeric character (\[a-z0-9A-Z\]), and may have dashes (-),
  /// underscores (_), dots (.), and alphanumerics in between these symbols. The
  /// total size of annotation keys and values must be less than 16KiB.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The time at which the Secret was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The customer-managed encryption configuration of the regionalized secrets.
  ///
  /// If no configuration is provided, Google-managed default encryption is
  /// used. Updates to the Secret encryption configuration only apply to
  /// SecretVersions added afterwards. They do not apply retroactively to
  /// existing SecretVersions.
  ///
  /// Optional.
  CustomerManagedEncryption? customerManagedEncryption;

  /// Etag of the currently stored Secret.
  ///
  /// Optional.
  core.String? etag;

  /// Timestamp in UTC when the Secret is scheduled to expire.
  ///
  /// This is always provided on output, regardless of what was sent on input.
  ///
  /// Optional.
  core.String? expireTime;

  /// The labels assigned to this Secret.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63
  /// characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression:
  /// `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a
  /// given resource.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the Secret in the format `projects / * /secrets / *
  /// `.
  ///
  /// Output only.
  core.String? name;

  /// The replication policy of the secret data attached to the Secret.
  ///
  /// The replication policy cannot be changed after the Secret has been
  /// created.
  ///
  /// Optional. Immutable.
  Replication? replication;

  /// Rotation policy attached to the Secret.
  ///
  /// May be excluded if there is no rotation policy.
  ///
  /// Optional.
  Rotation? rotation;

  /// Input only.
  ///
  /// Immutable. Mapping of Tag keys/values directly bound to this resource. For
  /// example: "123/environment": "production", "123/costCenter": "marketing"
  /// Tags are used to organize and group resources. Tags can be used to control
  /// policy evaluation for the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when
  /// control plane operations are called on the secret or its versions.
  ///
  /// Optional.
  core.List<Topic>? topics;

  /// Input only.
  ///
  /// The TTL for the Secret.
  core.String? ttl;

  /// Mapping from version alias to version name.
  ///
  /// A version alias is a string with a maximum length of 63 characters and can
  /// contain uppercase and lowercase letters, numerals, and the hyphen (`-`)
  /// and underscore ('_') characters. An alias string must start with a letter
  /// and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be
  /// assigned to a given secret. Version-Alias pairs will be viewable via
  /// GetSecret and modifiable via UpdateSecret. Access by alias is only be
  /// supported on GetSecretVersion and AccessSecretVersion.
  ///
  /// Optional.
  core.Map<core.String, core.String>? versionAliases;

  /// Secret Version TTL after destruction request This is a part of the Delayed
  /// secret version destroy feature.
  ///
  /// For secret with TTL\>0, version destruction doesn't happen immediately on
  /// calling destroy instead the version goes to a disabled state and
  /// destruction happens after the TTL expires.
  ///
  /// Optional.
  core.String? versionDestroyTtl;

  Secret({
    this.annotations,
    this.createTime,
    this.customerManagedEncryption,
    this.etag,
    this.expireTime,
    this.labels,
    this.name,
    this.replication,
    this.rotation,
    this.tags,
    this.topics,
    this.ttl,
    this.versionAliases,
    this.versionDestroyTtl,
  });

  Secret.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryption.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        replication: json_.containsKey('replication')
            ? Replication.fromJson(
                json_['replication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rotation: json_.containsKey('rotation')
            ? Rotation.fromJson(
                json_['rotation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        topics: (json_['topics'] as core.List?)
            ?.map(
              (value) =>
                  Topic.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        ttl: json_['ttl'] as core.String?,
        versionAliases:
            (json_['versionAliases'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        versionDestroyTtl: json_['versionDestroyTtl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final customerManagedEncryption = this.customerManagedEncryption;
    final etag = this.etag;
    final expireTime = this.expireTime;
    final labels = this.labels;
    final name = this.name;
    final replication = this.replication;
    final rotation = this.rotation;
    final tags = this.tags;
    final topics = this.topics;
    final ttl = this.ttl;
    final versionAliases = this.versionAliases;
    final versionDestroyTtl = this.versionDestroyTtl;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'customerManagedEncryption': ?customerManagedEncryption,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'replication': ?replication,
      'rotation': ?rotation,
      'tags': ?tags,
      'topics': ?topics,
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
      'versionDestroyTtl': ?versionDestroyTtl,
    };
  }
}

/// A secret payload resource in the Secret Manager API.
///
/// This contains the sensitive secret payload that is associated with a
/// SecretVersion.
class SecretPayload {
  /// The secret data.
  ///
  /// Must be no larger than 64KiB.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// If specified, SecretManagerService will verify the integrity of the
  /// received data on SecretManagerService.AddSecretVersion calls using the
  /// crc32c checksum and store it to include in future
  /// SecretManagerService.AccessSecretVersion responses.
  ///
  /// If a checksum is not provided in the SecretManagerService.AddSecretVersion
  /// request, the SecretManagerService will generate and store one for you. The
  /// CRC32C value is encoded as a Int64 for compatibility, and can be safely
  /// downconverted to uint32 in languages that support this type.
  /// https://cloud.google.com/apis/design/design_patterns#integer_types
  ///
  /// Optional.
  core.String? dataCrc32c;

  SecretPayload({this.data, this.dataCrc32c});

  SecretPayload.fromJson(core.Map json_)
    : this(
        data: json_['data'] as core.String?,
        dataCrc32c: json_['dataCrc32c'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final dataCrc32c = this.dataCrc32c;
    return {'data': ?data, 'dataCrc32c': ?dataCrc32c};
  }
}

/// A secret version resource in the Secret Manager API.
class SecretVersion {
  /// True if payload checksum specified in SecretPayload object has been
  /// received by SecretManagerService on SecretManagerService.AddSecretVersion.
  ///
  /// Output only.
  core.bool? clientSpecifiedPayloadChecksum;

  /// The time at which the SecretVersion was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The customer-managed encryption status of the SecretVersion.
  ///
  /// Only populated if customer-managed encryption is used and Secret is a
  /// regionalized secret.
  ///
  /// Output only.
  CustomerManagedEncryptionStatus? customerManagedEncryption;

  /// The time this SecretVersion was destroyed.
  ///
  /// Only present if state is DESTROYED.
  ///
  /// Output only.
  core.String? destroyTime;

  /// Etag of the currently stored SecretVersion.
  ///
  /// Output only.
  core.String? etag;

  /// The resource name of the SecretVersion in the format `projects / *
  /// /secrets / * /versions / * `.
  ///
  /// SecretVersion IDs in a Secret start at 1 and are incremented for each
  /// subsequent version of the secret.
  ///
  /// Output only.
  core.String? name;

  /// The replication status of the SecretVersion.
  ReplicationStatus? replicationStatus;

  /// Scheduled destroy time for secret version.
  ///
  /// This is a part of the Delayed secret version destroy feature. For a Secret
  /// with a valid version destroy TTL, when a secert version is destroyed,
  /// version is moved to disabled state and it is scheduled for destruction
  /// Version is destroyed only after the scheduled_destroy_time.
  ///
  /// Optional. Output only.
  core.String? scheduledDestroyTime;

  /// The current state of the SecretVersion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified. This value is unused and invalid.
  /// - "ENABLED" : The SecretVersion may be accessed.
  /// - "DISABLED" : The SecretVersion may not be accessed, but the secret data
  /// is still available and can be placed back into the ENABLED state.
  /// - "DESTROYED" : The SecretVersion is destroyed and the secret data is no
  /// longer stored. A version may not leave this state once entered.
  core.String? state;

  SecretVersion({
    this.clientSpecifiedPayloadChecksum,
    this.createTime,
    this.customerManagedEncryption,
    this.destroyTime,
    this.etag,
    this.name,
    this.replicationStatus,
    this.scheduledDestroyTime,
    this.state,
  });

  SecretVersion.fromJson(core.Map json_)
    : this(
        clientSpecifiedPayloadChecksum:
            json_['clientSpecifiedPayloadChecksum'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? CustomerManagedEncryptionStatus.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        destroyTime: json_['destroyTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        replicationStatus: json_.containsKey('replicationStatus')
            ? ReplicationStatus.fromJson(
                json_['replicationStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        scheduledDestroyTime: json_['scheduledDestroyTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientSpecifiedPayloadChecksum = this.clientSpecifiedPayloadChecksum;
    final createTime = this.createTime;
    final customerManagedEncryption = this.customerManagedEncryption;
    final destroyTime = this.destroyTime;
    final etag = this.etag;
    final name = this.name;
    final replicationStatus = this.replicationStatus;
    final scheduledDestroyTime = this.scheduledDestroyTime;
    final state = this.state;
    return {
      'clientSpecifiedPayloadChecksum': ?clientSpecifiedPayloadChecksum,
      'createTime': ?createTime,
      'customerManagedEncryption': ?customerManagedEncryption,
      'destroyTime': ?destroyTime,
      'etag': ?etag,
      'name': ?name,
      'replicationStatus': ?replicationStatus,
      'scheduledDestroyTime': ?scheduledDestroyTime,
      'state': ?state,
    };
  }
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
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A Pub/Sub topic which Secret Manager will publish to when control plane
/// events occur on this secret.
class Topic {
  /// Identifier.
  ///
  /// The resource name of the Pub/Sub topic that will be published to, in the
  /// following format: `projects / * /topics / * `. For publication to succeed,
  /// the Secret Manager service agent must have the `pubsub.topic.publish`
  /// permission on the topic. The Pub/Sub Publisher role
  /// (`roles/pubsub.publisher`) includes this permission.
  core.String? name;

  Topic({this.name});

  Topic.fromJson(core.Map json_) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// A replication policy that replicates the Secret payload into the locations
/// specified in Replication.UserManaged.replicas
class UserManaged {
  /// The list of Replicas for this Secret.
  ///
  /// Cannot be empty.
  ///
  /// Required.
  core.List<Replica>? replicas;

  UserManaged({this.replicas});

  UserManaged.fromJson(core.Map json_)
    : this(
        replicas: (json_['replicas'] as core.List?)
            ?.map(
              (value) => Replica.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final replicas = this.replicas;
    return {'replicas': ?replicas};
  }
}

/// The replication status of a SecretVersion using user-managed replication.
///
/// Only populated if the parent Secret has a user-managed replication policy.
class UserManagedStatus {
  /// The list of replica statuses for the SecretVersion.
  ///
  /// Output only.
  core.List<ReplicaStatus>? replicas;

  UserManagedStatus({this.replicas});

  UserManagedStatus.fromJson(core.Map json_)
    : this(
        replicas: (json_['replicas'] as core.List?)
            ?.map(
              (value) => ReplicaStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final replicas = this.replicas;
    return {'replicas': ?replicas};
  }
}
