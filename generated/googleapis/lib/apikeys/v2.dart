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

/// API Keys API - v2
///
/// Manages the API keys associated with developer projects.
///
/// For more information, see <https://cloud.google.com/api-keys/docs>
///
/// Create an instance of [ApiKeysServiceApi] to access these resources:
///
/// - [KeysResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsKeysResource]
library apikeys.v2;

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

/// Manages the API keys associated with developer projects.
class ApiKeysServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  KeysResource get keys => KeysResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  ApiKeysServiceApi(http.Client client,
      {core.String rootUrl = 'https://apikeys.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class KeysResource {
  final commons.ApiRequester _requester;

  KeysResource(commons.ApiRequester client) : _requester = client;

  /// Find the parent project and resource name of the API key that matches the
  /// key string in the request.
  ///
  /// If the API key has been purged, resource name will not be set. The service
  /// account must have the `apikeys.keys.lookup` permission on the parent
  /// project.
  ///
  /// Request parameters:
  ///
  /// [keyString] - Required. Finds the project that owns the key string value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V2LookupKeyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V2LookupKeyResponse> lookupKey({
    core.String? keyString,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (keyString != null) 'keyString': [keyString],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/keys:lookupKey';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return V2LookupKeyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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

  ProjectsLocationsKeysResource get keys =>
      ProjectsLocationsKeysResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Clones the existing key's restriction and display name to a new API key.
  ///
  /// The service account must have the `apikeys.keys.get` and
  /// `apikeys.keys.create` permissions in the project. NOTE: Key is a global
  /// resource; hence the only supported value for location is `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the API key to be cloned in the
  /// same project.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
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
  async.Future<Operation> clone(
    V2CloneKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':clone';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new API key.
  ///
  /// NOTE: Key is a global resource; hence the only supported value for
  /// location is `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which the API key is created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [keyId] - User specified key id (optional). If specified, it will become
  /// the final component of the key resource name. The id must be unique within
  /// the project, must conform with RFC-1034, is restricted to lower-cased
  /// letters, and has a maximum length of 63 characters. In another word, the
  /// id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  /// The id must NOT be a UUID-like string.
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
    V2Key request,
    core.String parent, {
    core.String? keyId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (keyId != null) 'keyId': [keyId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/keys';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an API key.
  ///
  /// Deleted key can be retrieved within 30 days of deletion. Afterward, key
  /// will be purged from the project. NOTE: Key is a global resource; hence the
  /// only supported value for location is `global`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the API key to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag known to the client for the expected state of
  /// the key. This is to be used for optimistic concurrency.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the metadata for an API key.
  ///
  /// The key string of the API key isn't included in the response. NOTE: Key is
  /// a global resource; hence the only supported value for location is
  /// `global`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the API key to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V2Key].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V2Key> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return V2Key.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get the key string for an API key.
  ///
  /// NOTE: Key is a global resource; hence the only supported value for
  /// location is `global`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the API key to be retrieved.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V2GetKeyStringResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V2GetKeyStringResponse> getKeyString(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/keyString';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return V2GetKeyStringResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the API keys owned by a project.
  ///
  /// The key string of the API key isn't included in the response. NOTE: Key is
  /// a global resource; hence the only supported value for location is
  /// `global`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Lists all API keys associated with this project.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Only list keys that conform to the specified filter.
  /// The allowed filter strings are `state:ACTIVE` and `state:DELETED`. By
  /// default, ListKeys returns only active keys.
  ///
  /// [pageSize] - Optional. Specifies the maximum number of results to be
  /// returned at a time.
  ///
  /// [pageToken] - Optional. Requests a specific page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V2ListKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V2ListKeysResponse> list(
    core.String parent, {
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

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/keys';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return V2ListKeysResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Patches the modifiable fields of an API key.
  ///
  /// The key string of the API key isn't included in the response. NOTE: Key is
  /// a global resource; hence the only supported value for location is
  /// `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the key. The `name` has the
  /// form: `projects//locations/global/keys/`. For example:
  /// `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2`
  /// NOTE: Key is a global resource; hence the only supported value for
  /// location is `global`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [updateMask] - The field mask specifies which fields to be updated as part
  /// of this request. All other fields are ignored. Mutable fields are:
  /// `display_name` and `restrictions`. If an update mask is not provided, the
  /// service treats it as an implied mask equivalent to all allowed fields that
  /// are set on the wire. If the field mask has a special value "*", the
  /// service treats it equivalent to replace all allowed mutable fields.
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
    V2Key request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes an API key which was deleted within 30 days.
  ///
  /// NOTE: Key is a global resource; hence the only supported value for
  /// location is `global`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the API key to be undeleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keys/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    V2UndeleteKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':undelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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
typedef Status = $Status;

/// Identifier of an Android application for key use.
class V2AndroidApplication {
  /// The package name of the application.
  core.String? packageName;

  /// The SHA1 fingerprint of the application.
  ///
  /// For example, both sha1 formats are acceptable :
  /// DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or
  /// DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.
  core.String? sha1Fingerprint;

  V2AndroidApplication({
    this.packageName,
    this.sha1Fingerprint,
  });

  V2AndroidApplication.fromJson(core.Map _json)
      : this(
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          sha1Fingerprint: _json.containsKey('sha1Fingerprint')
              ? _json['sha1Fingerprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageName != null) 'packageName': packageName!,
        if (sha1Fingerprint != null) 'sha1Fingerprint': sha1Fingerprint!,
      };
}

/// The Android apps that are allowed to use the key.
class V2AndroidKeyRestrictions {
  /// A list of Android applications that are allowed to make API calls with
  /// this key.
  core.List<V2AndroidApplication>? allowedApplications;

  V2AndroidKeyRestrictions({
    this.allowedApplications,
  });

  V2AndroidKeyRestrictions.fromJson(core.Map _json)
      : this(
          allowedApplications: _json.containsKey('allowedApplications')
              ? (_json['allowedApplications'] as core.List)
                  .map((value) => V2AndroidApplication.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedApplications != null)
          'allowedApplications': allowedApplications!,
      };
}

/// A restriction for a specific service and optionally one or multiple specific
/// methods.
///
/// Both fields are case insensitive.
class V2ApiTarget {
  /// List of one or more methods that can be called.
  ///
  /// If empty, all methods for the service are allowed. A wildcard (*) can be
  /// used as the last symbol. Valid examples:
  /// `google.cloud.translate.v2.TranslateService.GetSupportedLanguage`
  /// `TranslateText` `Get*` `translate.googleapis.com.Get*`
  ///
  /// Optional.
  core.List<core.String>? methods;

  /// The service for this restriction.
  ///
  /// It should be the canonical service name, for example:
  /// `translate.googleapis.com`. You can use \[`gcloud services
  /// list`\](/sdk/gcloud/reference/services/list) to get a list of services
  /// that are enabled in the project.
  core.String? service;

  V2ApiTarget({
    this.methods,
    this.service,
  });

  V2ApiTarget.fromJson(core.Map _json)
      : this(
          methods: _json.containsKey('methods')
              ? (_json['methods'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (methods != null) 'methods': methods!,
        if (service != null) 'service': service!,
      };
}

/// The HTTP referrers (websites) that are allowed to use the key.
class V2BrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to
  /// make API calls with this key.
  core.List<core.String>? allowedReferrers;

  V2BrowserKeyRestrictions({
    this.allowedReferrers,
  });

  V2BrowserKeyRestrictions.fromJson(core.Map _json)
      : this(
          allowedReferrers: _json.containsKey('allowedReferrers')
              ? (_json['allowedReferrers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedReferrers != null) 'allowedReferrers': allowedReferrers!,
      };
}

/// Request message for `CloneKey` method.
class V2CloneKeyRequest {
  /// User specified key id (optional).
  ///
  /// If specified, it will become the final component of the key resource name.
  /// The id must be unique within the project, must conform with RFC-1034, is
  /// restricted to lower-cased letters, and has a maximum length of 63
  /// characters. In another word, the id must match the regular expression:
  /// `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  core.String? keyId;

  V2CloneKeyRequest({
    this.keyId,
  });

  V2CloneKeyRequest.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
      };
}

/// Response message for `GetKeyString` method.
class V2GetKeyStringResponse {
  /// An encrypted and signed value of the key.
  core.String? keyString;

  V2GetKeyStringResponse({
    this.keyString,
  });

  V2GetKeyStringResponse.fromJson(core.Map _json)
      : this(
          keyString: _json.containsKey('keyString')
              ? _json['keyString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyString != null) 'keyString': keyString!,
      };
}

/// The iOS apps that are allowed to use the key.
class V2IosKeyRestrictions {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  core.List<core.String>? allowedBundleIds;

  V2IosKeyRestrictions({
    this.allowedBundleIds,
  });

  V2IosKeyRestrictions.fromJson(core.Map _json)
      : this(
          allowedBundleIds: _json.containsKey('allowedBundleIds')
              ? (_json['allowedBundleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedBundleIds != null) 'allowedBundleIds': allowedBundleIds!,
      };
}

/// The representation of a key managed by the API Keys API.
class V2Key {
  /// A timestamp identifying the time this key was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// A timestamp when this key was deleted.
  ///
  /// If the resource is not deleted, this must be empty.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable display name of this key that you can modify.
  ///
  /// The maximum length is 63 characters.
  core.String? displayName;

  /// A checksum computed by the server based on the current value of the Key
  /// resource.
  ///
  /// This may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding. See https://google.aip.dev/154.
  ///
  /// Output only.
  core.String? etag;

  /// An encrypted and signed value held by this key.
  ///
  /// This field can be accessed only through the `GetKeyString` method.
  ///
  /// Output only.
  core.String? keyString;

  /// The resource name of the key.
  ///
  /// The `name` has the form: `projects//locations/global/keys/`. For example:
  /// `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2`
  /// NOTE: Key is a global resource; hence the only supported value for
  /// location is `global`.
  ///
  /// Output only.
  core.String? name;

  /// Key restrictions.
  V2Restrictions? restrictions;

  /// Unique id in UUID4 format.
  ///
  /// Output only.
  core.String? uid;

  /// A timestamp identifying the time this key was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  V2Key({
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.keyString,
    this.name,
    this.restrictions,
    this.uid,
    this.updateTime,
  });

  V2Key.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          keyString: _json.containsKey('keyString')
              ? _json['keyString'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          restrictions: _json.containsKey('restrictions')
              ? V2Restrictions.fromJson(
                  _json['restrictions'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (keyString != null) 'keyString': keyString!,
        if (name != null) 'name': name!,
        if (restrictions != null) 'restrictions': restrictions!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response message for `ListKeys` method.
class V2ListKeysResponse {
  /// A list of API keys.
  core.List<V2Key>? keys;

  /// The pagination token for the next page of results.
  core.String? nextPageToken;

  V2ListKeysResponse({
    this.keys,
    this.nextPageToken,
  });

  V2ListKeysResponse.fromJson(core.Map _json)
      : this(
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) => V2Key.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for `LookupKey` method.
class V2LookupKeyResponse {
  /// The resource name of the API key.
  ///
  /// If the API key has been purged, resource name is empty.
  core.String? name;

  /// The project that owns the key with the value specified in the request.
  core.String? parent;

  V2LookupKeyResponse({
    this.name,
    this.parent,
  });

  V2LookupKeyResponse.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
      };
}

/// Describes the restrictions on the key.
class V2Restrictions {
  /// The Android apps that are allowed to use the key.
  V2AndroidKeyRestrictions? androidKeyRestrictions;

  /// A restriction for a specific service and optionally one or more specific
  /// methods.
  ///
  /// Requests are allowed if they match any of these restrictions. If no
  /// restrictions are specified, all targets are allowed.
  core.List<V2ApiTarget>? apiTargets;

  /// The HTTP referrers (websites) that are allowed to use the key.
  V2BrowserKeyRestrictions? browserKeyRestrictions;

  /// The iOS apps that are allowed to use the key.
  V2IosKeyRestrictions? iosKeyRestrictions;

  /// The IP addresses of callers that are allowed to use the key.
  V2ServerKeyRestrictions? serverKeyRestrictions;

  V2Restrictions({
    this.androidKeyRestrictions,
    this.apiTargets,
    this.browserKeyRestrictions,
    this.iosKeyRestrictions,
    this.serverKeyRestrictions,
  });

  V2Restrictions.fromJson(core.Map _json)
      : this(
          androidKeyRestrictions: _json.containsKey('androidKeyRestrictions')
              ? V2AndroidKeyRestrictions.fromJson(
                  _json['androidKeyRestrictions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          apiTargets: _json.containsKey('apiTargets')
              ? (_json['apiTargets'] as core.List)
                  .map((value) => V2ApiTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          browserKeyRestrictions: _json.containsKey('browserKeyRestrictions')
              ? V2BrowserKeyRestrictions.fromJson(
                  _json['browserKeyRestrictions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          iosKeyRestrictions: _json.containsKey('iosKeyRestrictions')
              ? V2IosKeyRestrictions.fromJson(_json['iosKeyRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serverKeyRestrictions: _json.containsKey('serverKeyRestrictions')
              ? V2ServerKeyRestrictions.fromJson(_json['serverKeyRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidKeyRestrictions != null)
          'androidKeyRestrictions': androidKeyRestrictions!,
        if (apiTargets != null) 'apiTargets': apiTargets!,
        if (browserKeyRestrictions != null)
          'browserKeyRestrictions': browserKeyRestrictions!,
        if (iosKeyRestrictions != null)
          'iosKeyRestrictions': iosKeyRestrictions!,
        if (serverKeyRestrictions != null)
          'serverKeyRestrictions': serverKeyRestrictions!,
      };
}

/// The IP addresses of callers that are allowed to use the key.
class V2ServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with
  /// this key.
  core.List<core.String>? allowedIps;

  V2ServerKeyRestrictions({
    this.allowedIps,
  });

  V2ServerKeyRestrictions.fromJson(core.Map _json)
      : this(
          allowedIps: _json.containsKey('allowedIps')
              ? (_json['allowedIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedIps != null) 'allowedIps': allowedIps!,
      };
}

/// Request message for `UndeleteKey` method.
typedef V2UndeleteKeyRequest = $Empty;
