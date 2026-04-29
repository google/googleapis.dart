// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Google Health API - v4
///
/// The Google Health API lets you view and manage health and fitness metrics
/// and measurement data.
///
/// For more information, see <https://developers.google.com/health>
///
/// Create an instance of [GoogleHealthApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsSubscribersResource]
/// - [UsersResource]
///   - [UsersDataTypesResource]
///     - [UsersDataTypesDataPointsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// The Google Health API lets you view and manage health and fitness metrics
/// and measurement data.
class GoogleHealthApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  GoogleHealthApi(
    http.Client client, {
    core.String rootUrl = 'https://health.googleapis.com/',
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

  ProjectsSubscribersResource get subscribers =>
      ProjectsSubscribersResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsSubscribersResource {
  final commons.ApiRequester _requester;

  ProjectsSubscribersResource(commons.ApiRequester client)
    : _requester = client;

  /// Registers a new subscriber endpoint to receive notifications.
  ///
  /// A subscriber represents an application or service that wishes to receive
  /// data change notifications for users who have granted consent. **Endpoint
  /// Verification:** For a subscriber to be successfully created, the provided
  /// `endpoint_uri` must be a valid HTTPS endpoint and must pass an automated
  /// verification check. The backend will send two HTTP POST requests to the
  /// `endpoint_uri`: 1. **Verification with Authorization:** * **Headers:**
  /// Includes `Content-Type: application/json` and `Authorization` (with the
  /// exact value from `CreateSubscriberPayload.endpoint_authorization.secret`).
  /// * **Body:** `{"type": "verification"}` * **Expected Response:** HTTP `201
  /// Created`. 2. **Verification without Authorization:** * **Headers:**
  /// Includes `Content-Type: application/json`. The `Authorization` header is
  /// OMITTED. * **Body:** `{"type": "verification"}` * **Expected Response:**
  /// HTTP `401 Unauthorized` or `403 Forbidden`. Both tests must pass for the
  /// subscriber creation to succeed. If verification fails, the operation will
  /// not be completed and an error will be returned. This process ensures the
  /// endpoint is reachable and correctly validates the `Authorization` header.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this subscriber will be
  /// created. Format: projects/{project} Example: projects/my-project-123
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [subscriberId] - Optional. The ID to use for the subscriber, which will
  /// become the final component of the subscriber's resource name. This value
  /// should be 4-36 characters, and valid characters are
  /// /\[a-z\](\[a-z0-9-\]{2,34}\[a-z0-9\])/.
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
    CreateSubscriberPayload request,
    core.String parent, {
    core.String? subscriberId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'subscriberId': ?subscriberId == null ? null : [subscriberId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/subscribers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a subscriber registration.
  ///
  /// This will stop all notifications to the subscriber's endpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscriber to delete. Format:
  /// projects/{project}/subscribers/{subscriber} Example:
  /// projects/my-project/subscribers/my-subscriber-123 The {subscriber} ID is
  /// user-settable (4-36 characters, matching
  /// /\[a-z\](\[a-z0-9-\]{2,34}\[a-z0-9\])/) or system-generated if not
  /// provided during creation.
  /// Value must have pattern `^projects/\[^/\]+/subscribers/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any child resources (e.g.,
  /// subscriptions) will also be deleted. If false (default) and child
  /// resources exist, the request will fail.
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all subscribers registered within the owned Google Cloud Project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// subscribers. Format: projects/{project}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of subscribers to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// subscribers will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSubscribers` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListSubscribers` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscribersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscribersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/subscribers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscribersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the configuration of an existing subscriber, such as the endpoint
  /// URI or the data types it's interested in.
  ///
  /// **Endpoint Verification:** If the `endpoint_uri` or
  /// `endpoint_authorization` field is included in the `update_mask`, the
  /// backend will re-verify the endpoint. The verification process is the same
  /// as described in `CreateSubscriber`: 1. **Verification with
  /// Authorization:** POST to the new or existing `endpoint_uri` with the new
  /// or existing `Authorization` secret. Expects HTTP `201 Created`. 2.
  /// **Verification without Authorization:** POST to the `endpoint_uri` without
  /// the `Authorization` header. Expects HTTP `401 Unauthorized` or `403
  /// Forbidden`. Both tests must pass using the potentially updated values for
  /// the subscriber update to succeed. If verification fails, the update will
  /// not be applied, and an error will be returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the Subscriber. Format:
  /// projects/{project}/subscribers/{subscriber} The {project} ID is a Google
  /// Cloud Project ID or Project Number. The {subscriber} ID is user-settable
  /// (4-36 characters, matching /\[a-z\](\[a-z0-9-\]{2,34}\[a-z0-9\])/) if
  /// provided during creation, or system-generated otherwise (e.g., a UUID).
  /// Example (User-settable subscriber ID):
  /// projects/my-project/subscribers/my-sub-123 Example (System-generated
  /// subscriber ID):
  /// projects/my-project/subscribers/a1b2c3d4-e5f6-7890-1234-567890abcdef
  /// Value must have pattern `^projects/\[^/\]+/subscribers/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. A field mask that specifies which fields of the
  /// Subscriber message are to be updated. This allows for partial updates.
  /// Supported fields: - endpoint_uri - subscriber_configs -
  /// endpoint_authorization
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
    Subscriber request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersDataTypesResource get dataTypes => UsersDataTypesResource(_requester);

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Gets the user's identity.
  ///
  /// It includes the legacy Fitbit user ID and the Google user ID and it can be
  /// used by migrating clients to map identifiers between the two systems.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Identity. Format:
  /// `users/me/identity`
  /// Value must have pattern `^users/\[^/\]+/identity$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Identity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Identity> getIdentity(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Identity.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns user Profile details.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Profile. Format: `users/me/profile`.
  /// Value must have pattern `^users/\[^/\]+/profile$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> getProfile(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns user settings details.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Settings. Format: `users/me/settings`.
  /// Value must have pattern `^users/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> getSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the user's profile details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of this Profile resource. Format:
  /// `users/{user}/profile` Example: `users/1234567890/profile` or
  /// `users/me/profile` The {user} ID is a system-generated Google Health API
  /// user ID, a string of 1-63 characters consisting of lowercase and uppercase
  /// letters, numbers, and hyphens. The literal `me` can also be used to refer
  /// to the authenticated user.
  /// Value must have pattern `^users/\[^/\]+/profile$`.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> updateProfile(
    Profile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the user's settings details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of this Settings resource. Format:
  /// `users/{user}/settings` Example: `users/1234567890/settings` or
  /// `users/me/settings` The {user} ID is a system-generated Google Health API
  /// user ID, a string of 1-63 characters consisting of lowercase and uppercase
  /// letters, numbers, and hyphens. The literal `me` can also be used to refer
  /// to the authenticated user.
  /// Value must have pattern `^users/\[^/\]+/settings$`.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> updateSettings(
    Settings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersDataTypesResource {
  final commons.ApiRequester _requester;

  UsersDataTypesDataPointsResource get dataPoints =>
      UsersDataTypesDataPointsResource(_requester);

  UsersDataTypesResource(commons.ApiRequester client) : _requester = client;
}

class UsersDataTypesDataPointsResource {
  final commons.ApiRequester _requester;

  UsersDataTypesDataPointsResource(commons.ApiRequester client)
    : _requester = client;

  /// Delete a batch of identifyable data points.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Parent (data type) for the Data Point collection
  /// Format: `users/me/dataTypes/{data_type}`, e.g.: -
  /// `users/me/dataTypes/steps` - `users/me/dataTypes/-` For a list of the
  /// supported data types see the DataPoint data union field. Deleting data
  /// points across multiple data type collections is supported following
  /// https://aip.dev/159. If this is set, the parent of all of the data points
  /// specified in `names` must match this field.
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
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
  async.Future<Operation> batchDelete(
    BatchDeleteDataPointsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a single identifiable data point.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name where the data point will be
  /// created. Format: `users/{user}/dataTypes/{data_type}`
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
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
    DataPoint request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Roll up data points over civil time intervals for supported data types.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent data type of the Data Point collection.
  /// Format: `users/{user}/dataTypes/{data_type}`, e.g.: -
  /// `users/me/dataTypes/steps` - `users/me/dataTypes/distance` For a list of
  /// the supported data types see the DailyRollupDataPoint value union field.
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DailyRollUpDataPointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DailyRollUpDataPointsResponse> dailyRollUp(
    DailyRollUpDataPointsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints:dailyRollUp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DailyRollUpDataPointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports exercise data in TCX format.
  ///
  /// Note: While the Authorization section below states that any one of the
  /// listed scopes is accepted, this specific method requires the user to
  /// provide both one of the `activity_and_fitness` scopes (`normal` or
  /// `readonly`) AND one of the `location` scopes (`normal` or `readonly`) in
  /// their access token to succeed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the exercise data point to export.
  /// Format: `users/{user}/dataTypes/exercise/dataPoints/{data_point}` Example:
  /// `users/me/dataTypes/exercise/dataPoints/2026443605080188808` The `{user}`
  /// is the alias `"me"` currently. Future versions may support user IDs. The
  /// `{data_point}` ID maps to the exercise ID, which is a long integer.
  /// Value must have pattern
  /// `^users/\[^/\]+/dataTypes/\[^/\]+/dataPoints/\[^/\]+$`.
  ///
  /// [partialData] - Optional. Indicates whether to include the TCX data points
  /// when the GPS data is not available. If not specified, defaults to `false`
  /// and partial data will not be included.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [ExportExerciseTcxResponse] for Metadata downloads (see
  /// [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> exportExerciseTcx(
    core.String name, {
    core.bool? partialData,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'partialData': ?partialData == null ? null : ['${partialData}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name') + ':exportExerciseTcx';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return ExportExerciseTcxResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>,
      );
    } else {
      return response_ as commons.Media;
    }
  }

  /// Get a single identifyable data point.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data point to retrieve. Format:
  /// `users/{user}/dataTypes/{data_type}/dataPoints/{data_point}` See
  /// DataPoint.name for examples and possible values.
  /// Value must have pattern
  /// `^users/\[^/\]+/dataTypes/\[^/\]+/dataPoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataPoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataPoint> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataPoint.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Query user health and fitness data points.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent data type of the Data Point collection.
  /// Format: `users/me/dataTypes/{data_type}`, e.g.: -
  /// `users/me/dataTypes/steps` - `users/me/dataTypes/weight` For a list of the
  /// supported data types see the DataPoint data union field.
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression following
  /// https://google.aip.dev/160. A time range (either physical or civil) can be
  /// specified. The supported filter fields are: - Interval start time: -
  /// Pattern: `{interval_data_type}.interval.start_time` - Supported comparison
  /// operators: `>=`, `<` - Timestamp literal expected in RFC-3339 format -
  /// Supported logical operators: `AND` - Example: - `steps.interval.start_time
  /// >= "2023-11-24T00:00:00Z" AND steps.interval.start_time <
  /// "2023-11-25T00:00:00Z"` - `distance.interval.start_time >=
  /// "2024-08-14T12:34:56Z"` - Interval civil start time: - Pattern:
  /// `{interval_data_type}.interval.civil_start_time` - Supported comparison
  /// operators: `>=`, `<` - Date with optional time literal expected in ISO
  /// 8601 `YYYY-MM-DD[THH:mm:ss]` format - Supported logical operators: `AND` -
  /// Example: - `steps.interval.civil_start_time >= "2023-11-24" AND
  /// steps.interval.civil_start_time < "2023-11-25"` -
  /// `distance.interval.civil_start_time >= "2024-08-14T12:34:56"` - Sample
  /// observation physical time: - Pattern:
  /// `{sample_data_type}.sample_time.physical_time` - Supported comparison
  /// operators: `>=`, `<` - Timestamp literal expected in RFC-3339 format -
  /// Supported logical operators: `AND` - Example: -
  /// `weight.sample_time.physical_time >= "2023-11-24T00:00:00Z" AND
  /// weight.sample_time.physical_time < "2023-11-25T00:00:00Z"` -
  /// `weight.sample_time.physical_time >= "2024-08-14T12:34:56Z"` - Sample
  /// observation civil time: - Pattern:
  /// `{sample_data_type}.sample_time.civil_time` - Supported comparison
  /// operators: `>=`, `<` - Date with optional time literal expected in ISO
  /// 8601 `YYYY-MM-DD[THH:mm:ss]` format - Supported logical operators: `AND` -
  /// Example: - `weight.sample_time.civil_time >= "2023-11-24" AND
  /// weight.sample_time.civil_time < "2023-11-25"` -
  /// `weight.sample_time.civil_time >= "2024-08-14T12:34:56"` - Daily summary
  /// date: - Pattern: `{daily_summary_data_type}.date` - Supported comparison
  /// operators: `>=`, `<` - Date literal expected in ISO 8601 `YYYY-MM-DD`
  /// format - Supported logical operators: `AND` - Example: -
  /// `daily_resting_heart_rate.date >= "2024-08-14"` -
  /// `daily_heart_rate_variability.date < "2024-08-15"` - Session civil start
  /// time (**Excluding Sleep**): - Pattern:
  /// `{session_data_type}.interval.civil_start_time` - Supported comparison
  /// operators: `>=`, `<` - Date with optional time literal expected in ISO
  /// 8601 `YYYY-MM-DD[THH:mm:ss]` format - Supported logical operators: `AND` -
  /// Example: - `exercise.interval.civil_start_time >= "2023-11-24" AND
  /// exercise.interval.civil_start_time < "2023-11-25"` -
  /// `exercise.interval.civil_start_time >= "2024-08-14T12:34:56"` - Session
  /// end time (**Sleep specific**): - Pattern: `sleep.interval.end_time` -
  /// Supported comparison operators: `>=`, `<` - Timestamp literal expected in
  /// RFC-3339 format - Supported logical operators: `AND`, `OR` - Example: -
  /// `sleep.interval.end_time >= "2023-11-24T00:00:00Z" AND
  /// sleep.interval.end_time < "2023-11-25T00:00:00Z"` - Session civil end time
  /// (**Sleep specific**): - Pattern: `sleep.interval.civil_end_time` -
  /// Supported comparison operators: `>=`, `<` - Date with optional time
  /// literal expected in ISO 8601 `YYYY-MM-DD[THH:mm:ss]` format - Supported
  /// logical operators: `AND`, `OR` - Example: - `sleep.interval.civil_end_time
  /// >= "2023-11-24" AND sleep.interval.civil_end_time < "2023-11-25"` Data
  /// points in the response will be ordered by the interval start time in
  /// descending order.
  ///
  /// [pageSize] - Optional. The maximum number of data points to return. If
  /// unspecified, at most 1440 data points will be returned. The maximum page
  /// size is 10000; values above that will be truncated accordingly. For
  /// `exercise` and `sleep` the default page size is 25. The maximum page size
  /// for `exercise` and `sleep` is 25.
  ///
  /// [pageToken] - Optional. The `next_page_token` from a previous request, if
  /// any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataPointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataPointsResponse> list(
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

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataPointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single identifiable data point.
  ///
  /// If a data point with the specified `name` is not found, the request will
  /// fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Data point name, only supported for the subset of
  /// identifiable data types. For the majority of the data types, individual
  /// data points do not need to be identified and this field would be empty.
  /// Format: `users/{user}/dataTypes/{data_type}/dataPoints/{data_point}`
  /// Example:
  /// `users/abcd1234/dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef`
  /// The `{user}` ID is a system-generated identifier, as described in
  /// Identity.health_user_id. The `{data_type}` ID corresponds to the
  /// kebab-case version of the field names in the DataPoint data union field,
  /// e.g. `total-calories` for the `total_calories` field. The `{data_point}`
  /// ID can be client-provided or system-generated. If client-provided, it must
  /// be a string of 4-63 characters, containing only lowercase letters,
  /// numbers, and hyphens.
  /// Value must have pattern
  /// `^users/\[^/\]+/dataTypes/\[^/\]+/dataPoints/\[^/\]+$`.
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
    DataPoint request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reconcile data points from multiple data sources into a single data
  /// stream.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent data type of the Data Point collection.
  /// Format: `users/me/dataTypes/{data_type}`, e.g.: -
  /// `users/me/dataTypes/steps` - `users/me/dataTypes/heart-rate` For a list of
  /// the supported data types see the DataPoint data union field.
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
  ///
  /// [dataSourceFamily] - Optional. The data source family name to reconcile.
  /// If empty, data points from all data sources will be reconciled. Format:
  /// `users/me/dataSourceFamilies/{data_source_family}` The supported values
  /// are: - `users/me/dataSourceFamilies/all-sources` - default value -
  /// `users/me/dataSourceFamilies/google-wearables` - tracker devices -
  /// `users/me/dataSourceFamilies/google-sources` - Google first party sources
  ///
  /// [filter] - Optional. Filter expression based on https://aip.dev/160. A
  /// time range, either physical or civil, can be specified. See the
  /// ListDataPointsRequest.filter for the supported fields and syntax.
  ///
  /// [pageSize] - Optional. The maximum number of data points to return. If
  /// unspecified, at most 1440 data points will be returned. The maximum page
  /// size is 10000; values above that will be truncated accordingly. For
  /// `exercise` and `sleep` the default page size is 25. The maximum page size
  /// for `exercise` and `sleep` is 25.
  ///
  /// [pageToken] - Optional. The `next_page_token` from a previous request, if
  /// any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReconcileDataPointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReconcileDataPointsResponse> reconcile(
    core.String parent, {
    core.String? dataSourceFamily,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'dataSourceFamily': ?dataSourceFamily == null ? null : [dataSourceFamily],
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints:reconcile';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReconcileDataPointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Roll up data points over physical time intervals for supported data types.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent data type of the Data Point collection.
  /// Format: `users/{user}/dataTypes/{data_type}`, e.g.: -
  /// `users/me/dataTypes/steps` - `users/me/dataTypes/distance` For a list of
  /// the supported data types see the RollupDataPoint value union field.
  /// Value must have pattern `^users/\[^/\]+/dataTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RollUpDataPointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RollUpDataPointsResponse> rollUp(
    RollUpDataPointsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/dataPoints:rollUp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RollUpDataPointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Record of active minutes in a given time interval.
class ActiveMinutes {
  /// Active minutes by activity level.
  ///
  /// At most one record per activity level is allowed.
  ///
  /// Required.
  core.List<ActiveMinutesByActivityLevel>? activeMinutesByActivityLevel;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  ActiveMinutes({this.activeMinutesByActivityLevel, this.interval});

  ActiveMinutes.fromJson(core.Map json_)
    : this(
        activeMinutesByActivityLevel:
            (json_['activeMinutesByActivityLevel'] as core.List?)
                ?.map(
                  (value) => ActiveMinutesByActivityLevel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutesByActivityLevel = this.activeMinutesByActivityLevel;
    final interval = this.interval;
    return {
      'activeMinutesByActivityLevel': ?activeMinutesByActivityLevel,
      'interval': ?interval,
    };
  }
}

/// Active minutes at a given activity level.
class ActiveMinutesByActivityLevel {
  /// Number of whole minutes spent in activity.
  ///
  /// Required.
  core.String? activeMinutes;

  /// The level of activity.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTIVITY_LEVEL_UNSPECIFIED" : Activity level is unspecified.
  /// - "LIGHT" : Light activity level.
  /// - "MODERATE" : Moderate activity level.
  /// - "VIGOROUS" : Vigorous activity level.
  core.String? activityLevel;

  ActiveMinutesByActivityLevel({this.activeMinutes, this.activityLevel});

  ActiveMinutesByActivityLevel.fromJson(core.Map json_)
    : this(
        activeMinutes: json_['activeMinutes'] as core.String?,
        activityLevel: json_['activityLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutes = this.activeMinutes;
    final activityLevel = this.activityLevel;
    return {'activeMinutes': ?activeMinutes, 'activityLevel': ?activityLevel};
  }
}

/// Active minutes by activity level.
class ActiveMinutesRollupByActivityLevel {
  /// Number of whole minutes spent in activity.
  core.String? activeMinutesSum;

  /// The level of activity.
  /// Possible string values are:
  /// - "ACTIVITY_LEVEL_UNSPECIFIED" : Activity level is unspecified.
  /// - "LIGHT" : Light activity level.
  /// - "MODERATE" : Moderate activity level.
  /// - "VIGOROUS" : Vigorous activity level.
  core.String? activityLevel;

  ActiveMinutesRollupByActivityLevel({
    this.activeMinutesSum,
    this.activityLevel,
  });

  ActiveMinutesRollupByActivityLevel.fromJson(core.Map json_)
    : this(
        activeMinutesSum: json_['activeMinutesSum'] as core.String?,
        activityLevel: json_['activityLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutesSum = this.activeMinutesSum;
    final activityLevel = this.activityLevel;
    return {
      'activeMinutesSum': ?activeMinutesSum,
      'activityLevel': ?activityLevel,
    };
  }
}

/// Represents the result of the rollup of the active minutes data type.
class ActiveMinutesRollupValue {
  /// Active minutes by activity level.
  ///
  /// At most one record per activity level is allowed.
  core.List<ActiveMinutesRollupByActivityLevel>?
  activeMinutesRollupByActivityLevel;

  ActiveMinutesRollupValue({this.activeMinutesRollupByActivityLevel});

  ActiveMinutesRollupValue.fromJson(core.Map json_)
    : this(
        activeMinutesRollupByActivityLevel:
            (json_['activeMinutesRollupByActivityLevel'] as core.List?)
                ?.map(
                  (value) => ActiveMinutesRollupByActivityLevel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutesRollupByActivityLevel =
        this.activeMinutesRollupByActivityLevel;
    return {
      'activeMinutesRollupByActivityLevel': ?activeMinutesRollupByActivityLevel,
    };
  }
}

/// Record of active zone minutes in a given time interval.
class ActiveZoneMinutes {
  /// Number of Active Zone Minutes earned in the given time interval.
  ///
  /// Note: active_zone_minutes equals to 1 for low intensity (fat burn) zones
  /// or 2 for high intensity zones (cardio, peak).
  ///
  /// Required.
  core.String? activeZoneMinutes;

  /// Heart rate zone in which the active zone minutes have been earned, in the
  /// given time interval.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HEART_RATE_ZONE_UNSPECIFIED" : Unspecified heart rate zone.
  /// - "FAT_BURN" : The fat burn heart rate zone.
  /// - "CARDIO" : The cardio heart rate zone.
  /// - "PEAK" : The peak heart rate zone.
  core.String? heartRateZone;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  ActiveZoneMinutes({
    this.activeZoneMinutes,
    this.heartRateZone,
    this.interval,
  });

  ActiveZoneMinutes.fromJson(core.Map json_)
    : this(
        activeZoneMinutes: json_['activeZoneMinutes'] as core.String?,
        heartRateZone: json_['heartRateZone'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeZoneMinutes = this.activeZoneMinutes;
    final heartRateZone = this.heartRateZone;
    final interval = this.interval;
    return {
      'activeZoneMinutes': ?activeZoneMinutes,
      'heartRateZone': ?heartRateZone,
      'interval': ?interval,
    };
  }
}

/// Represents the result of the rollup of the active zone minutes data type.
class ActiveZoneMinutesRollupValue {
  /// Active zone minutes in `HeartRateZone.CARDIO`.
  core.String? sumInCardioHeartZone;

  /// Active zone minutes in `HeartRateZone.FAT_BURN`.
  core.String? sumInFatBurnHeartZone;

  /// Active zone minutes in `HeartRateZone.PEAK`.
  core.String? sumInPeakHeartZone;

  ActiveZoneMinutesRollupValue({
    this.sumInCardioHeartZone,
    this.sumInFatBurnHeartZone,
    this.sumInPeakHeartZone,
  });

  ActiveZoneMinutesRollupValue.fromJson(core.Map json_)
    : this(
        sumInCardioHeartZone: json_['sumInCardioHeartZone'] as core.String?,
        sumInFatBurnHeartZone: json_['sumInFatBurnHeartZone'] as core.String?,
        sumInPeakHeartZone: json_['sumInPeakHeartZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sumInCardioHeartZone = this.sumInCardioHeartZone;
    final sumInFatBurnHeartZone = this.sumInFatBurnHeartZone;
    final sumInPeakHeartZone = this.sumInPeakHeartZone;
    return {
      'sumInCardioHeartZone': ?sumInCardioHeartZone,
      'sumInFatBurnHeartZone': ?sumInFatBurnHeartZone,
      'sumInPeakHeartZone': ?sumInPeakHeartZone,
    };
  }
}

/// Internal type to capture activity level during a certain time interval.
class ActivityLevel {
  /// Activity level type in the given time interval.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTIVITY_LEVEL_TYPE_UNSPECIFIED" : Unspecified activity level type.
  /// - "SEDENTARY" : Sedentary activity level.
  /// - "LIGHTLY_ACTIVE" : Lightly active activity level.
  /// - "MODERATELY_ACTIVE" : Moderately active activity level.
  /// - "VERY_ACTIVE" : Very active activity level.
  core.String? activityLevelType;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  ActivityLevel({this.activityLevelType, this.interval});

  ActivityLevel.fromJson(core.Map json_)
    : this(
        activityLevelType: json_['activityLevelType'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activityLevelType = this.activityLevelType;
    final interval = this.interval;
    return {'activityLevelType': ?activityLevelType, 'interval': ?interval};
  }
}

/// Represents the total duration in a specific activity level type.
class ActivityLevelRollupByActivityLevelType {
  /// Activity level type.
  /// Possible string values are:
  /// - "ACTIVITY_LEVEL_TYPE_UNSPECIFIED" : Unspecified activity level type.
  /// - "SEDENTARY" : Sedentary activity level.
  /// - "LIGHTLY_ACTIVE" : Lightly active activity level.
  /// - "MODERATELY_ACTIVE" : Moderately active activity level.
  /// - "VERY_ACTIVE" : Very active activity level.
  core.String? activityLevelType;

  /// Total duration in the activity level type.
  core.String? totalDuration;

  ActivityLevelRollupByActivityLevelType({
    this.activityLevelType,
    this.totalDuration,
  });

  ActivityLevelRollupByActivityLevelType.fromJson(core.Map json_)
    : this(
        activityLevelType: json_['activityLevelType'] as core.String?,
        totalDuration: json_['totalDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activityLevelType = this.activityLevelType;
    final totalDuration = this.totalDuration;
    return {
      'activityLevelType': ?activityLevelType,
      'totalDuration': ?totalDuration,
    };
  }
}

/// Represents the result of the rollup of the activity level data type.
class ActivityLevelRollupValue {
  /// List of total durations in each activity level type.
  core.List<ActivityLevelRollupByActivityLevelType>?
  activityLevelRollupsByActivityLevelType;

  ActivityLevelRollupValue({this.activityLevelRollupsByActivityLevelType});

  ActivityLevelRollupValue.fromJson(core.Map json_)
    : this(
        activityLevelRollupsByActivityLevelType:
            (json_['activityLevelRollupsByActivityLevelType'] as core.List?)
                ?.map(
                  (value) => ActivityLevelRollupByActivityLevelType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activityLevelRollupsByActivityLevelType =
        this.activityLevelRollupsByActivityLevelType;
    return {
      'activityLevelRollupsByActivityLevelType':
          ?activityLevelRollupsByActivityLevelType,
    };
  }
}

/// Captures the altitude gain (i.e. deltas), and not level above sea, for a
/// user in millimeters.
class Altitude {
  /// Altitude gain in millimeters over the observed interval.
  ///
  /// Required.
  core.String? gainMillimeters;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  Altitude({this.gainMillimeters, this.interval});

  Altitude.fromJson(core.Map json_)
    : this(
        gainMillimeters: json_['gainMillimeters'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gainMillimeters = this.gainMillimeters;
    final interval = this.interval;
    return {'gainMillimeters': ?gainMillimeters, 'interval': ?interval};
  }
}

/// Represents the result of the rollup of the user's altitude.
class AltitudeRollupValue {
  /// Sum of the altitude gain in millimeters.
  core.String? gainMillimetersSum;

  AltitudeRollupValue({this.gainMillimetersSum});

  AltitudeRollupValue.fromJson(core.Map json_)
    : this(gainMillimetersSum: json_['gainMillimetersSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final gainMillimetersSum = this.gainMillimetersSum;
    return {'gainMillimetersSum': ?gainMillimetersSum};
  }
}

/// Optional metadata for the application that provided this data.
class Application {
  /// The Google OAuth 2.0 client ID of the web application or service that
  /// recorded the data.
  ///
  /// This is the client ID used during the Google OAuth flow to obtain user
  /// credentials. This field is system-populated when the data is uploaded from
  /// Google Web API.
  ///
  /// Output only.
  core.String? googleWebClientId;

  /// A unique identifier for the mobile application that was the source of the
  /// data.
  ///
  /// This is typically the application's package name on Android (e.g.,
  /// `com.google.fitbit`) or the bundle ID on iOS. This field is informational
  /// and helps trace data origin. This field is system-populated when the data
  /// is uploaded from the Fitbit mobile application, Health Connect or Health
  /// Kit.
  ///
  /// Output only.
  core.String? packageName;

  /// The client ID of the application that recorded the data.
  ///
  /// This ID is a legacy Fitbit API client ID, which is different from a Google
  /// OAuth client ID. Example format: `ABC123`. This field is system-populated
  /// and used for tracing data from legacy Fitbit API integrations. This field
  /// is system-populated when the data is uploaded from a legacy Fitbit API
  /// integration.
  ///
  /// Output only.
  core.String? webClientId;

  Application({this.googleWebClientId, this.packageName, this.webClientId});

  Application.fromJson(core.Map json_)
    : this(
        googleWebClientId: json_['googleWebClientId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        webClientId: json_['webClientId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleWebClientId = this.googleWebClientId;
    final packageName = this.packageName;
    final webClientId = this.webClientId;
    return {
      'googleWebClientId': ?googleWebClientId,
      'packageName': ?packageName,
      'webClientId': ?webClientId,
    };
  }
}

/// Request to delete a batch of identifiable data points.
class BatchDeleteDataPointsRequest {
  /// The names of the DataPoints to delete.
  ///
  /// A maximum of 10000 data points can be deleted in a single request.
  ///
  /// Required.
  core.List<core.String>? names;

  BatchDeleteDataPointsRequest({this.names});

  BatchDeleteDataPointsRequest.fromJson(core.Map json_)
    : this(
        names: (json_['names'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final names = this.names;
    return {'names': ?names};
  }
}

/// Body fat measurement.
class BodyFat {
  /// Body fat percentage, in range \[0, 100\].
  ///
  /// Required.
  core.double? percentage;

  /// The time at which body fat was measured.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  BodyFat({this.percentage, this.sampleTime});

  BodyFat.fromJson(core.Map json_)
    : this(
        percentage: (json_['percentage'] as core.num?)?.toDouble(),
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final percentage = this.percentage;
    final sampleTime = this.sampleTime;
    return {'percentage': ?percentage, 'sampleTime': ?sampleTime};
  }
}

/// Represents the result of the rollup of the body fat data type.
class BodyFatRollupValue {
  /// Average body fat percentage.
  core.double? bodyFatPercentageAvg;

  BodyFatRollupValue({this.bodyFatPercentageAvg});

  BodyFatRollupValue.fromJson(core.Map json_)
    : this(
        bodyFatPercentageAvg: (json_['bodyFatPercentageAvg'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bodyFatPercentageAvg = this.bodyFatPercentageAvg;
    return {'bodyFatPercentageAvg': ?bodyFatPercentageAvg};
  }
}

/// Represents the result of the rollup of the calories in heart rate zone data
/// type.
class CaloriesInHeartRateZoneRollupValue {
  /// List of calories burned in each heart rate zone.
  core.List<CaloriesInHeartRateZoneValue>? caloriesInHeartRateZones;

  CaloriesInHeartRateZoneRollupValue({this.caloriesInHeartRateZones});

  CaloriesInHeartRateZoneRollupValue.fromJson(core.Map json_)
    : this(
        caloriesInHeartRateZones:
            (json_['caloriesInHeartRateZones'] as core.List?)
                ?.map(
                  (value) => CaloriesInHeartRateZoneValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caloriesInHeartRateZones = this.caloriesInHeartRateZones;
    return {'caloriesInHeartRateZones': ?caloriesInHeartRateZones};
  }
}

/// Represents the amount of kilocalories burned in a specific heart rate zone.
class CaloriesInHeartRateZoneValue {
  /// The heart rate zone.
  /// Possible string values are:
  /// - "HEART_RATE_ZONE_TYPE_UNSPECIFIED" : Unspecified heart rate zone.
  /// - "LIGHT" : The light heart rate zone.
  /// - "MODERATE" : The moderate heart rate zone.
  /// - "VIGOROUS" : The vigorous heart rate zone.
  /// - "PEAK" : The peak heart rate zone.
  core.String? heartRateZone;

  /// The amount of kilocalories burned in the specified heart rate zone.
  core.double? kcal;

  CaloriesInHeartRateZoneValue({this.heartRateZone, this.kcal});

  CaloriesInHeartRateZoneValue.fromJson(core.Map json_)
    : this(
        heartRateZone: json_['heartRateZone'] as core.String?,
        kcal: (json_['kcal'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heartRateZone = this.heartRateZone;
    final kcal = this.kcal;
    return {'heartRateZone': ?heartRateZone, 'kcal': ?kcal};
  }
}

/// Civil time representation similar to google.type.DateTime, but ensures that
/// neither the timezone nor the UTC offset can be set to avoid confusion
/// between civil and physical time queries.
class CivilDateTime {
  /// Calendar date.
  ///
  /// Required.
  Date? date;

  /// Time of day.
  ///
  /// Defaults to the start of the day, at midnight if omitted.
  ///
  /// Optional.
  TimeOfDay? time;

  CivilDateTime({this.date, this.time});

  CivilDateTime.fromJson(core.Map json_)
    : this(
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        time: json_.containsKey('time')
            ? TimeOfDay.fromJson(
                json_['time'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final date = this.date;
    final time = this.time;
    return {'date': ?date, 'time': ?time};
  }
}

/// Counterpart of google.type.Interval, but using CivilDateTime.
class CivilTimeInterval {
  /// The exclusive end of the range.
  ///
  /// Required.
  CivilDateTime? end;

  /// The inclusive start of the range.
  ///
  /// Required.
  CivilDateTime? start;

  CivilTimeInterval({this.end, this.start});

  CivilTimeInterval.fromJson(core.Map json_)
    : this(
        end: json_.containsKey('end')
            ? CivilDateTime.fromJson(
                json_['end'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        start: json_.containsKey('start')
            ? CivilDateTime.fromJson(
                json_['start'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final end = this.end;
    final start = this.start;
    return {'end': ?end, 'start': ?start};
  }
}

/// Payload for creating a subscriber.
class CreateSubscriberPayload {
  /// Authorization mechanism for the subscriber endpoint.
  ///
  /// The `secret` within this message is crucial for endpoint verification and
  /// for securing webhook notifications.
  ///
  /// Required.
  EndpointAuthorization? endpointAuthorization;

  /// The full HTTPS URI where update notifications will be sent.
  ///
  /// The URI must be a valid URL and use HTTPS as the scheme. This endpoint
  /// will be verified during the `CreateSubscriber` call. See CreateSubscriber
  /// RPC documentation for verification details.
  ///
  /// Required.
  core.String? endpointUri;

  /// Configuration for the subscriber.
  ///
  /// Optional.
  core.List<SubscriberConfig>? subscriberConfigs;

  CreateSubscriberPayload({
    this.endpointAuthorization,
    this.endpointUri,
    this.subscriberConfigs,
  });

  CreateSubscriberPayload.fromJson(core.Map json_)
    : this(
        endpointAuthorization: json_.containsKey('endpointAuthorization')
            ? EndpointAuthorization.fromJson(
                json_['endpointAuthorization']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        endpointUri: json_['endpointUri'] as core.String?,
        subscriberConfigs: (json_['subscriberConfigs'] as core.List?)
            ?.map(
              (value) => SubscriberConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endpointAuthorization = this.endpointAuthorization;
    final endpointUri = this.endpointUri;
    final subscriberConfigs = this.subscriberConfigs;
    return {
      'endpointAuthorization': ?endpointAuthorization,
      'endpointUri': ?endpointUri,
      'subscriberConfigs': ?subscriberConfigs,
    };
  }
}

/// Represents the daily heart rate variability data type.
///
/// At least one of the following fields must be set: -
/// `average_heart_rate_variability_milliseconds` -
/// `non_rem_heart_rate_beats_per_minute` - `entropy` -
/// `deep_sleep_root_mean_square_of_successive_differences_milliseconds`
class DailyHeartRateVariability {
  /// A user's average heart rate variability calculated using the root mean
  /// square of successive differences (RMSSD) in times between heartbeats.
  ///
  /// Optional.
  core.double? averageHeartRateVariabilityMilliseconds;

  /// Date (in the user's timezone) of heart rate variability measurement.
  ///
  /// Required.
  Date? date;

  /// The root mean square of successive differences (RMSSD) value during deep
  /// sleep.
  ///
  /// Optional.
  core.double? deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds;

  /// The Shanon entropy of heartbeat intervals.
  ///
  /// Entropy quantifies randomness or disorder in a system. High entropy
  /// indicates high HRV. Entropy is measured from the histogram of time
  /// interval between successive heart beats values measured during sleep.
  ///
  /// Optional.
  core.double? entropy;

  /// Non-REM heart rate
  ///
  /// Optional.
  core.String? nonRemHeartRateBeatsPerMinute;

  DailyHeartRateVariability({
    this.averageHeartRateVariabilityMilliseconds,
    this.date,
    this.deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds,
    this.entropy,
    this.nonRemHeartRateBeatsPerMinute,
  });

  DailyHeartRateVariability.fromJson(core.Map json_)
    : this(
        averageHeartRateVariabilityMilliseconds:
            (json_['averageHeartRateVariabilityMilliseconds'] as core.num?)
                ?.toDouble(),
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds:
            (json_['deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds']
                    as core.num?)
                ?.toDouble(),
        entropy: (json_['entropy'] as core.num?)?.toDouble(),
        nonRemHeartRateBeatsPerMinute:
            json_['nonRemHeartRateBeatsPerMinute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final averageHeartRateVariabilityMilliseconds =
        this.averageHeartRateVariabilityMilliseconds;
    final date = this.date;
    final deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds =
        this.deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds;
    final entropy = this.entropy;
    final nonRemHeartRateBeatsPerMinute = this.nonRemHeartRateBeatsPerMinute;
    return {
      'averageHeartRateVariabilityMilliseconds':
          ?averageHeartRateVariabilityMilliseconds,
      'date': ?date,
      'deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds':
          ?deepSleepRootMeanSquareOfSuccessiveDifferencesMilliseconds,
      'entropy': ?entropy,
      'nonRemHeartRateBeatsPerMinute': ?nonRemHeartRateBeatsPerMinute,
    };
  }
}

/// User's heart rate zone thresholds based on the Karvonen algorithm for a
/// specific day.
class DailyHeartRateZones {
  /// Date (in user's timezone) of the heart rate zones record.
  ///
  /// Required.
  Date? date;

  /// The heart rate zones.
  ///
  /// Required.
  core.List<HeartRateZone>? heartRateZones;

  DailyHeartRateZones({this.date, this.heartRateZones});

  DailyHeartRateZones.fromJson(core.Map json_)
    : this(
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRateZones: (json_['heartRateZones'] as core.List?)
            ?.map(
              (value) => HeartRateZone.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final date = this.date;
    final heartRateZones = this.heartRateZones;
    return {'date': ?date, 'heartRateZones': ?heartRateZones};
  }
}

/// A daily oxygen saturation (SpO2) record.
///
/// Represents the user's daily oxygen saturation summary, typically calculated
/// during sleep.
class DailyOxygenSaturation {
  /// The average value of the oxygen saturation samples during the sleep.
  ///
  /// Required.
  core.double? averagePercentage;

  /// Date (in user's timezone) of the daily oxygen saturation record.
  ///
  /// Required.
  Date? date;

  /// The lower bound of the confidence interval of oxygen saturation samples
  /// during sleep.
  ///
  /// Required.
  core.double? lowerBoundPercentage;

  /// Standard deviation of the daily oxygen saturation averages from the past
  /// 7-30 days.
  ///
  /// Optional.
  core.double? standardDeviationPercentage;

  /// The upper bound of the confidence interval of oxygen saturation samples
  /// during sleep.
  ///
  /// Required.
  core.double? upperBoundPercentage;

  DailyOxygenSaturation({
    this.averagePercentage,
    this.date,
    this.lowerBoundPercentage,
    this.standardDeviationPercentage,
    this.upperBoundPercentage,
  });

  DailyOxygenSaturation.fromJson(core.Map json_)
    : this(
        averagePercentage: (json_['averagePercentage'] as core.num?)
            ?.toDouble(),
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lowerBoundPercentage: (json_['lowerBoundPercentage'] as core.num?)
            ?.toDouble(),
        standardDeviationPercentage:
            (json_['standardDeviationPercentage'] as core.num?)?.toDouble(),
        upperBoundPercentage: (json_['upperBoundPercentage'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final averagePercentage = this.averagePercentage;
    final date = this.date;
    final lowerBoundPercentage = this.lowerBoundPercentage;
    final standardDeviationPercentage = this.standardDeviationPercentage;
    final upperBoundPercentage = this.upperBoundPercentage;
    return {
      'averagePercentage': ?averagePercentage,
      'date': ?date,
      'lowerBoundPercentage': ?lowerBoundPercentage,
      'standardDeviationPercentage': ?standardDeviationPercentage,
      'upperBoundPercentage': ?upperBoundPercentage,
    };
  }
}

/// A daily average respiratory rate (breaths per minute) for a day of the year.
///
/// One data point per day calculated for the main sleep.
class DailyRespiratoryRate {
  /// The average number of breaths taken per minute.
  ///
  /// Required.
  core.double? breathsPerMinute;

  /// The date on which the respiratory rate was measured.
  ///
  /// Required.
  Date? date;

  DailyRespiratoryRate({this.breathsPerMinute, this.date});

  DailyRespiratoryRate.fromJson(core.Map json_)
    : this(
        breathsPerMinute: (json_['breathsPerMinute'] as core.num?)?.toDouble(),
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final breathsPerMinute = this.breathsPerMinute;
    final date = this.date;
    return {'breathsPerMinute': ?breathsPerMinute, 'date': ?date};
  }
}

/// Measures the daily resting heart rate for a user, calculated using the all
/// day heart rate measurements.
class DailyRestingHeartRate {
  /// The resting heart rate value in beats per minute.
  ///
  /// Required.
  core.String? beatsPerMinute;

  /// Metadata for the daily resting heart rate.
  ///
  /// Optional.
  DailyRestingHeartRateMetadata? dailyRestingHeartRateMetadata;

  /// Date (in the user's timezone) of the resting heart rate measurement.
  ///
  /// Required.
  Date? date;

  DailyRestingHeartRate({
    this.beatsPerMinute,
    this.dailyRestingHeartRateMetadata,
    this.date,
  });

  DailyRestingHeartRate.fromJson(core.Map json_)
    : this(
        beatsPerMinute: json_['beatsPerMinute'] as core.String?,
        dailyRestingHeartRateMetadata:
            json_.containsKey('dailyRestingHeartRateMetadata')
            ? DailyRestingHeartRateMetadata.fromJson(
                json_['dailyRestingHeartRateMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final beatsPerMinute = this.beatsPerMinute;
    final dailyRestingHeartRateMetadata = this.dailyRestingHeartRateMetadata;
    final date = this.date;
    return {
      'beatsPerMinute': ?beatsPerMinute,
      'dailyRestingHeartRateMetadata': ?dailyRestingHeartRateMetadata,
      'date': ?date,
    };
  }
}

/// Metadata for the daily resting heart rate.
class DailyRestingHeartRateMetadata {
  /// The method used to calculate the resting heart rate.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CALCULATION_METHOD_UNSPECIFIED" : The calculation method is
  /// unspecified.
  /// - "WITH_SLEEP" : The resting heart rate is calculated using the sleep
  /// data.
  /// - "ONLY_WITH_AWAKE_DATA" : The resting heart rate is calculated using only
  /// awake data.
  core.String? calculationMethod;

  DailyRestingHeartRateMetadata({this.calculationMethod});

  DailyRestingHeartRateMetadata.fromJson(core.Map json_)
    : this(calculationMethod: json_['calculationMethod'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final calculationMethod = this.calculationMethod;
    return {'calculationMethod': ?calculationMethod};
  }
}

/// Request to roll up data points by civil time intervals.
class DailyRollUpDataPointsRequest {
  /// The data source family name to roll up.
  ///
  /// If empty, data points from all available data sources will be rolled up.
  /// Format: `users/me/dataSourceFamilies/{data_source_family}` The supported
  /// values are: - `users/me/dataSourceFamilies/all-sources` - default value -
  /// `users/me/dataSourceFamilies/google-wearables` - tracker devices -
  /// `users/me/dataSourceFamilies/google-sources` - Google first party sources
  ///
  /// Optional.
  core.String? dataSourceFamily;

  /// The maximum number of data points to return.
  ///
  /// If unspecified, at most 1440 data points will be returned. The maximum
  /// page size is 10000; values above that will be truncated accordingly.
  ///
  /// Optional.
  core.int? pageSize;

  /// The `next_page_token` from a previous request, if any.
  ///
  /// All other request fields need to be the same as in the initial request
  /// when the page token is specified.
  ///
  /// Optional.
  core.String? pageToken;

  /// Closed-open range of data points that will be rolled up.
  ///
  /// The start time must be aligned with the aggregation window. The maximum
  /// range for `calories-in-heart-rate-zone`, `heart-rate`, `active-minutes`
  /// and `total-calories` is 14 days. The maximum range for all other data
  /// types is 90 days.
  ///
  /// Required.
  CivilTimeInterval? range;

  /// Aggregation window size, in number of days.
  ///
  /// Defaults to 1 if not specified.
  ///
  /// Optional.
  core.int? windowSizeDays;

  DailyRollUpDataPointsRequest({
    this.dataSourceFamily,
    this.pageSize,
    this.pageToken,
    this.range,
    this.windowSizeDays,
  });

  DailyRollUpDataPointsRequest.fromJson(core.Map json_)
    : this(
        dataSourceFamily: json_['dataSourceFamily'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        range: json_.containsKey('range')
            ? CivilTimeInterval.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        windowSizeDays: json_['windowSizeDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceFamily = this.dataSourceFamily;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final range = this.range;
    final windowSizeDays = this.windowSizeDays;
    return {
      'dataSourceFamily': ?dataSourceFamily,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'range': ?range,
      'windowSizeDays': ?windowSizeDays,
    };
  }
}

/// Response containing the list of rolled up data points.
class DailyRollUpDataPointsResponse {
  /// Values for each aggregation time window.
  core.List<DailyRollupDataPoint>? rollupDataPoints;

  DailyRollUpDataPointsResponse({this.rollupDataPoints});

  DailyRollUpDataPointsResponse.fromJson(core.Map json_)
    : this(
        rollupDataPoints: (json_['rollupDataPoints'] as core.List?)
            ?.map(
              (value) => DailyRollupDataPoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rollupDataPoints = this.rollupDataPoints;
    return {'rollupDataPoints': ?rollupDataPoints};
  }
}

/// Value of a daily rollup for a single civil time interval (aggregation
/// window)
class DailyRollupDataPoint {
  /// Returned by default when rolling up data points from the `active-minutes`
  /// data type, or when requested explicitly using the `active-minutes` rollup
  /// type identifier.
  ActiveMinutesRollupValue? activeMinutes;

  /// Returned by default when rolling up data points from the
  /// `active-zone-minutes` data type, or when requested explicitly using the
  /// `active-zone-minutes` rollup type identifier.
  ActiveZoneMinutesRollupValue? activeZoneMinutes;

  /// Returned by default when rolling up data points from the `activity-level`
  /// data type, or when requested explicitly using the `activity-level` rollup
  /// type identifier.
  ActivityLevelRollupValue? activityLevel;

  /// Returned by default when rolling up data points from the `altitude` data
  /// type, or when requested explicitly using the `altitude` rollup type
  /// identifier.
  AltitudeRollupValue? altitude;

  /// Returned by default when rolling up data points from the `body-fat` data
  /// type, or when requested explicitly using the `body-fat` rollup type
  /// identifier.
  BodyFatRollupValue? bodyFat;

  /// Returned by default when rolling up data points from the
  /// `calories-in-heart-rate-zone` data type, or when requested explicitly
  /// using the `calories-in-heart-rate-zone` rollup type identifier.
  CaloriesInHeartRateZoneRollupValue? caloriesInHeartRateZone;

  /// End time of the window this value aggregates over
  CivilDateTime? civilEndTime;

  /// Start time of the window this value aggregates over
  CivilDateTime? civilStartTime;

  /// Returned by default when rolling up data points from the `distance` data
  /// type, or when requested explicitly using the `distance` rollup type
  /// identifier.
  DistanceRollupValue? distance;

  /// Returned by default when rolling up data points from the `floors` data
  /// type, or when requested explicitly using the `floors` rollup type
  /// identifier.
  FloorsRollupValue? floors;

  /// Returned by default when rolling up data points from the `heart-rate` data
  /// type, or when requested explicitly using the `heart-rate` rollup type
  /// identifier.
  HeartRateRollupValue? heartRate;

  /// Returned by default when rolling up data points from the
  /// `daily-heart-rate-variability` data type, or when requested explicitly
  /// using the `heart-rate-variability-personal-range` rollup type identifier.
  HeartRateVariabilityPersonalRangeRollupValue?
  heartRateVariabilityPersonalRange;

  /// Returned by default when rolling up data points from the `hydration-log`
  /// data type, or when requested explicitly using the `hydration-log` rollup
  /// type identifier.
  HydrationLogRollupValue? hydrationLog;

  /// Returned by default when rolling up data points from the
  /// `daily-resting-heart-rate` data type, or when requested explicitly using
  /// the `resting-heart-rate-personal-range` rollup type identifier.
  RestingHeartRatePersonalRangeRollupValue? restingHeartRatePersonalRange;

  /// Returned by default when rolling up data points from the `run-vo2-max`
  /// data type, or when requested explicitly using the `run-vo2-max` rollup
  /// type identifier.
  RunVO2MaxRollupValue? runVo2Max;

  /// Returned by default when rolling up data points from the
  /// `sedentary-period` data type, or when requested explicitly using the
  /// `sedentary-period` rollup type identifier.
  SedentaryPeriodRollupValue? sedentaryPeriod;

  /// Returned by default when rolling up data points from the `steps` data
  /// type, or when requested explicitly using the `steps` rollup type
  /// identifier.
  StepsRollupValue? steps;

  /// Returned by default when rolling up data points from the
  /// `swim-lengths-data` data type, or when requested explicitly using the
  /// `swim-lengths-data` rollup type identifier.
  SwimLengthsDataRollupValue? swimLengthsData;

  /// Returned by default when rolling up data points from the
  /// `time-in-heart-rate-zone` data type, or when requested explicitly using
  /// the `time-in-heart-rate-zone` rollup type identifier.
  TimeInHeartRateZoneRollupValue? timeInHeartRateZone;

  /// Returned by default when rolling up data points from the `total-calories`
  /// data type, or when requested explicitly using the `total-calories` rollup
  /// type identifier.
  TotalCaloriesRollupValue? totalCalories;

  /// Returned by default when rolling up data points from the `weight` data
  /// type, or when requested explicitly using the `weight` rollup type
  /// identifier.
  WeightRollupValue? weight;

  DailyRollupDataPoint({
    this.activeMinutes,
    this.activeZoneMinutes,
    this.activityLevel,
    this.altitude,
    this.bodyFat,
    this.caloriesInHeartRateZone,
    this.civilEndTime,
    this.civilStartTime,
    this.distance,
    this.floors,
    this.heartRate,
    this.heartRateVariabilityPersonalRange,
    this.hydrationLog,
    this.restingHeartRatePersonalRange,
    this.runVo2Max,
    this.sedentaryPeriod,
    this.steps,
    this.swimLengthsData,
    this.timeInHeartRateZone,
    this.totalCalories,
    this.weight,
  });

  DailyRollupDataPoint.fromJson(core.Map json_)
    : this(
        activeMinutes: json_.containsKey('activeMinutes')
            ? ActiveMinutesRollupValue.fromJson(
                json_['activeMinutes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        activeZoneMinutes: json_.containsKey('activeZoneMinutes')
            ? ActiveZoneMinutesRollupValue.fromJson(
                json_['activeZoneMinutes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        activityLevel: json_.containsKey('activityLevel')
            ? ActivityLevelRollupValue.fromJson(
                json_['activityLevel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        altitude: json_.containsKey('altitude')
            ? AltitudeRollupValue.fromJson(
                json_['altitude'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bodyFat: json_.containsKey('bodyFat')
            ? BodyFatRollupValue.fromJson(
                json_['bodyFat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        caloriesInHeartRateZone: json_.containsKey('caloriesInHeartRateZone')
            ? CaloriesInHeartRateZoneRollupValue.fromJson(
                json_['caloriesInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        civilEndTime: json_.containsKey('civilEndTime')
            ? CivilDateTime.fromJson(
                json_['civilEndTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        civilStartTime: json_.containsKey('civilStartTime')
            ? CivilDateTime.fromJson(
                json_['civilStartTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        distance: json_.containsKey('distance')
            ? DistanceRollupValue.fromJson(
                json_['distance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        floors: json_.containsKey('floors')
            ? FloorsRollupValue.fromJson(
                json_['floors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRate: json_.containsKey('heartRate')
            ? HeartRateRollupValue.fromJson(
                json_['heartRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRateVariabilityPersonalRange:
            json_.containsKey('heartRateVariabilityPersonalRange')
            ? HeartRateVariabilityPersonalRangeRollupValue.fromJson(
                json_['heartRateVariabilityPersonalRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hydrationLog: json_.containsKey('hydrationLog')
            ? HydrationLogRollupValue.fromJson(
                json_['hydrationLog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        restingHeartRatePersonalRange:
            json_.containsKey('restingHeartRatePersonalRange')
            ? RestingHeartRatePersonalRangeRollupValue.fromJson(
                json_['restingHeartRatePersonalRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        runVo2Max: json_.containsKey('runVo2Max')
            ? RunVO2MaxRollupValue.fromJson(
                json_['runVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sedentaryPeriod: json_.containsKey('sedentaryPeriod')
            ? SedentaryPeriodRollupValue.fromJson(
                json_['sedentaryPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        steps: json_.containsKey('steps')
            ? StepsRollupValue.fromJson(
                json_['steps'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        swimLengthsData: json_.containsKey('swimLengthsData')
            ? SwimLengthsDataRollupValue.fromJson(
                json_['swimLengthsData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeInHeartRateZone: json_.containsKey('timeInHeartRateZone')
            ? TimeInHeartRateZoneRollupValue.fromJson(
                json_['timeInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        totalCalories: json_.containsKey('totalCalories')
            ? TotalCaloriesRollupValue.fromJson(
                json_['totalCalories'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        weight: json_.containsKey('weight')
            ? WeightRollupValue.fromJson(
                json_['weight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutes = this.activeMinutes;
    final activeZoneMinutes = this.activeZoneMinutes;
    final activityLevel = this.activityLevel;
    final altitude = this.altitude;
    final bodyFat = this.bodyFat;
    final caloriesInHeartRateZone = this.caloriesInHeartRateZone;
    final civilEndTime = this.civilEndTime;
    final civilStartTime = this.civilStartTime;
    final distance = this.distance;
    final floors = this.floors;
    final heartRate = this.heartRate;
    final heartRateVariabilityPersonalRange =
        this.heartRateVariabilityPersonalRange;
    final hydrationLog = this.hydrationLog;
    final restingHeartRatePersonalRange = this.restingHeartRatePersonalRange;
    final runVo2Max = this.runVo2Max;
    final sedentaryPeriod = this.sedentaryPeriod;
    final steps = this.steps;
    final swimLengthsData = this.swimLengthsData;
    final timeInHeartRateZone = this.timeInHeartRateZone;
    final totalCalories = this.totalCalories;
    final weight = this.weight;
    return {
      'activeMinutes': ?activeMinutes,
      'activeZoneMinutes': ?activeZoneMinutes,
      'activityLevel': ?activityLevel,
      'altitude': ?altitude,
      'bodyFat': ?bodyFat,
      'caloriesInHeartRateZone': ?caloriesInHeartRateZone,
      'civilEndTime': ?civilEndTime,
      'civilStartTime': ?civilStartTime,
      'distance': ?distance,
      'floors': ?floors,
      'heartRate': ?heartRate,
      'heartRateVariabilityPersonalRange': ?heartRateVariabilityPersonalRange,
      'hydrationLog': ?hydrationLog,
      'restingHeartRatePersonalRange': ?restingHeartRatePersonalRange,
      'runVo2Max': ?runVo2Max,
      'sedentaryPeriod': ?sedentaryPeriod,
      'steps': ?steps,
      'swimLengthsData': ?swimLengthsData,
      'timeInHeartRateZone': ?timeInHeartRateZone,
      'totalCalories': ?totalCalories,
      'weight': ?weight,
    };
  }
}

/// Provides derived sleep temperature values, calculated from skin or internal
/// device temperature readings during sleep.
class DailySleepTemperatureDerivations {
  /// The user's baseline skin temperature.
  ///
  /// It is the median of the user's nightly skin temperature over the past 30
  /// days.
  ///
  /// Optional.
  core.double? baselineTemperatureCelsius;

  /// Date for which the sleep temperature derivations are calculated.
  ///
  /// Required.
  Date? date;

  /// The user's nightly skin temperature.
  ///
  /// It is the mean of skin temperature samples taken from the user’s sleep.
  ///
  /// Required.
  core.double? nightlyTemperatureCelsius;

  /// The standard deviation of the user’s relative nightly skin temperature
  /// (temperature - baseline) over the past 30 days.
  ///
  /// Optional.
  core.double? relativeNightlyStddev30dCelsius;

  DailySleepTemperatureDerivations({
    this.baselineTemperatureCelsius,
    this.date,
    this.nightlyTemperatureCelsius,
    this.relativeNightlyStddev30dCelsius,
  });

  DailySleepTemperatureDerivations.fromJson(core.Map json_)
    : this(
        baselineTemperatureCelsius:
            (json_['baselineTemperatureCelsius'] as core.num?)?.toDouble(),
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nightlyTemperatureCelsius:
            (json_['nightlyTemperatureCelsius'] as core.num?)?.toDouble(),
        relativeNightlyStddev30dCelsius:
            (json_['relativeNightlyStddev30dCelsius'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baselineTemperatureCelsius = this.baselineTemperatureCelsius;
    final date = this.date;
    final nightlyTemperatureCelsius = this.nightlyTemperatureCelsius;
    final relativeNightlyStddev30dCelsius =
        this.relativeNightlyStddev30dCelsius;
    return {
      'baselineTemperatureCelsius': ?baselineTemperatureCelsius,
      'date': ?date,
      'nightlyTemperatureCelsius': ?nightlyTemperatureCelsius,
      'relativeNightlyStddev30dCelsius': ?relativeNightlyStddev30dCelsius,
    };
  }
}

/// Contains a daily summary of the user's VO2 max (cardio fitness score), which
/// is the maximum rate of oxygen the body can use during exercise.
class DailyVO2Max {
  /// Represents the user's cardio fitness level based on their VO2 max.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CARDIO_FITNESS_LEVEL_UNSPECIFIED" : Unspecified cardio fitness level.
  /// - "POOR" : Poor cardio fitness level.
  /// - "FAIR" : Fair cardio fitness level.
  /// - "AVERAGE" : Average cardio fitness level.
  /// - "GOOD" : Good cardio fitness level.
  /// - "VERY_GOOD" : Very good cardio fitness level.
  /// - "EXCELLENT" : Excellent cardio fitness level.
  core.String? cardioFitnessLevel;

  /// The date for which the Daily VO2 max was measured.
  ///
  /// Required.
  Date? date;

  /// An estimated field is added to indicate when the confidence has decreased
  /// sufficiently to consider the value an estimation.
  ///
  /// Optional.
  core.bool? estimated;

  /// Daily VO2 max value measured as in ml consumed oxygen / kg of body weight
  /// / min.
  ///
  /// Required.
  core.double? vo2Max;

  /// The covariance of the VO2 max value.
  ///
  /// Optional.
  core.double? vo2MaxCovariance;

  DailyVO2Max({
    this.cardioFitnessLevel,
    this.date,
    this.estimated,
    this.vo2Max,
    this.vo2MaxCovariance,
  });

  DailyVO2Max.fromJson(core.Map json_)
    : this(
        cardioFitnessLevel: json_['cardioFitnessLevel'] as core.String?,
        date: json_.containsKey('date')
            ? Date.fromJson(
                json_['date'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        estimated: json_['estimated'] as core.bool?,
        vo2Max: (json_['vo2Max'] as core.num?)?.toDouble(),
        vo2MaxCovariance: (json_['vo2MaxCovariance'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cardioFitnessLevel = this.cardioFitnessLevel;
    final date = this.date;
    final estimated = this.estimated;
    final vo2Max = this.vo2Max;
    final vo2MaxCovariance = this.vo2MaxCovariance;
    return {
      'cardioFitnessLevel': ?cardioFitnessLevel,
      'date': ?date,
      'estimated': ?estimated,
      'vo2Max': ?vo2Max,
      'vo2MaxCovariance': ?vo2MaxCovariance,
    };
  }
}

/// A computed or recorded metric.
class DataPoint {
  /// Data for points in the `active-minutes` interval data type collection.
  ///
  /// Optional.
  ActiveMinutes? activeMinutes;

  /// Data for points in the `active-zone-minutes` interval data type
  /// collection, measured in minutes.
  ///
  /// Optional.
  ActiveZoneMinutes? activeZoneMinutes;

  /// Data for points in the `activity-level` daily data type collection.
  ///
  /// Optional.
  ActivityLevel? activityLevel;

  /// Data for points in the `altitude` interval data type collection.
  ///
  /// Optional.
  Altitude? altitude;

  /// Data for points in the `body-fat` sample data type collection.
  ///
  /// Optional.
  BodyFat? bodyFat;

  /// Data for points in the `daily-heart-rate-variability` daily data type
  /// collection.
  ///
  /// Optional.
  DailyHeartRateVariability? dailyHeartRateVariability;

  /// Data for points in the `daily-heart-rate-zones` daily data type
  /// collection.
  ///
  /// Optional.
  DailyHeartRateZones? dailyHeartRateZones;

  /// Data for points in the `daily-oxygen-saturation` daily data type
  /// collection.
  ///
  /// Optional.
  DailyOxygenSaturation? dailyOxygenSaturation;

  /// Data for points in the `daily-respiratory-rate` daily data type
  /// collection.
  ///
  /// Optional.
  DailyRespiratoryRate? dailyRespiratoryRate;

  /// Data for points in the `daily-resting-heart-rate` daily data type
  /// collection.
  ///
  /// Optional.
  DailyRestingHeartRate? dailyRestingHeartRate;

  /// Data for points in the `daily-sleep-temperature-derivations` daily data
  /// type collection.
  ///
  /// Optional.
  DailySleepTemperatureDerivations? dailySleepTemperatureDerivations;

  /// Data for points in the `daily-vo2-max` daily data type collection.
  ///
  /// Optional.
  DailyVO2Max? dailyVo2Max;

  /// Data source information for the metric
  ///
  /// Optional.
  DataSource? dataSource;

  /// Data for points in the `distance` interval data type collection.
  ///
  /// Optional.
  Distance? distance;

  /// Data for points in the `exercise` session data type collection.
  ///
  /// Optional.
  Exercise? exercise;

  /// Data for points in the `floors` interval data type collection.
  ///
  /// Optional.
  Floors? floors;

  /// Data for points in the `heart-rate` sample data type collection.
  ///
  /// Optional.
  HeartRate? heartRate;

  /// Data for points in the `heart-rate-variability` sample data type
  /// collection.
  ///
  /// Optional.
  HeartRateVariability? heartRateVariability;

  /// Data for points in the `height` sample data type collection.
  ///
  /// Optional.
  Height? height;

  /// Data for points in the `hydration-log` session data type collection.
  ///
  /// Optional.
  HydrationLog? hydrationLog;

  /// Identifier.
  ///
  /// Data point name, only supported for the subset of identifiable data types.
  /// For the majority of the data types, individual data points do not need to
  /// be identified and this field would be empty. Format:
  /// `users/{user}/dataTypes/{data_type}/dataPoints/{data_point}` Example:
  /// `users/abcd1234/dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef`
  /// The `{user}` ID is a system-generated identifier, as described in
  /// Identity.health_user_id. The `{data_type}` ID corresponds to the
  /// kebab-case version of the field names in the DataPoint data union field,
  /// e.g. `total-calories` for the `total_calories` field. The `{data_point}`
  /// ID can be client-provided or system-generated. If client-provided, it must
  /// be a string of 4-63 characters, containing only lowercase letters,
  /// numbers, and hyphens.
  core.String? name;

  /// Data for points in the `oxygen-saturation` sample data type collection.
  ///
  /// Optional.
  OxygenSaturation? oxygenSaturation;

  /// Data for points in the `respiratory-rate-sleep-summary` sample data type
  /// collection.
  ///
  /// Optional.
  RespiratoryRateSleepSummary? respiratoryRateSleepSummary;

  /// Data for points in the `run-vo2-max` sample data type collection.
  ///
  /// Optional.
  RunVO2Max? runVo2Max;

  /// Data for points in the `sedentary-period` interval data type collection.
  ///
  /// Optional.
  SedentaryPeriod? sedentaryPeriod;

  /// Data for points in the `sleep` session data type collection.
  ///
  /// Optional.
  Sleep? sleep;

  /// Data for points in the `steps` interval data type collection.
  ///
  /// Optional.
  Steps? steps;

  /// Data for points in the `swim-lengths-data` interval data type collection.
  ///
  /// Optional.
  SwimLengthsData? swimLengthsData;

  /// Data for points in the `time-in-heart-rate-zone` interval data type
  /// collection.
  ///
  /// Optional.
  TimeInHeartRateZone? timeInHeartRateZone;

  /// Data for points in the `vo2-max` sample data type collection.
  ///
  /// Optional.
  VO2Max? vo2Max;

  /// Data for points in the `weight` sample data type collection.
  ///
  /// Optional.
  Weight? weight;

  DataPoint({
    this.activeMinutes,
    this.activeZoneMinutes,
    this.activityLevel,
    this.altitude,
    this.bodyFat,
    this.dailyHeartRateVariability,
    this.dailyHeartRateZones,
    this.dailyOxygenSaturation,
    this.dailyRespiratoryRate,
    this.dailyRestingHeartRate,
    this.dailySleepTemperatureDerivations,
    this.dailyVo2Max,
    this.dataSource,
    this.distance,
    this.exercise,
    this.floors,
    this.heartRate,
    this.heartRateVariability,
    this.height,
    this.hydrationLog,
    this.name,
    this.oxygenSaturation,
    this.respiratoryRateSleepSummary,
    this.runVo2Max,
    this.sedentaryPeriod,
    this.sleep,
    this.steps,
    this.swimLengthsData,
    this.timeInHeartRateZone,
    this.vo2Max,
    this.weight,
  });

  DataPoint.fromJson(core.Map json_)
    : this(
        activeMinutes: json_.containsKey('activeMinutes')
            ? ActiveMinutes.fromJson(
                json_['activeMinutes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        activeZoneMinutes: json_.containsKey('activeZoneMinutes')
            ? ActiveZoneMinutes.fromJson(
                json_['activeZoneMinutes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        activityLevel: json_.containsKey('activityLevel')
            ? ActivityLevel.fromJson(
                json_['activityLevel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        altitude: json_.containsKey('altitude')
            ? Altitude.fromJson(
                json_['altitude'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bodyFat: json_.containsKey('bodyFat')
            ? BodyFat.fromJson(
                json_['bodyFat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyHeartRateVariability:
            json_.containsKey('dailyHeartRateVariability')
            ? DailyHeartRateVariability.fromJson(
                json_['dailyHeartRateVariability']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyHeartRateZones: json_.containsKey('dailyHeartRateZones')
            ? DailyHeartRateZones.fromJson(
                json_['dailyHeartRateZones']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyOxygenSaturation: json_.containsKey('dailyOxygenSaturation')
            ? DailyOxygenSaturation.fromJson(
                json_['dailyOxygenSaturation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyRespiratoryRate: json_.containsKey('dailyRespiratoryRate')
            ? DailyRespiratoryRate.fromJson(
                json_['dailyRespiratoryRate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyRestingHeartRate: json_.containsKey('dailyRestingHeartRate')
            ? DailyRestingHeartRate.fromJson(
                json_['dailyRestingHeartRate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailySleepTemperatureDerivations:
            json_.containsKey('dailySleepTemperatureDerivations')
            ? DailySleepTemperatureDerivations.fromJson(
                json_['dailySleepTemperatureDerivations']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyVo2Max: json_.containsKey('dailyVo2Max')
            ? DailyVO2Max.fromJson(
                json_['dailyVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSource: json_.containsKey('dataSource')
            ? DataSource.fromJson(
                json_['dataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        distance: json_.containsKey('distance')
            ? Distance.fromJson(
                json_['distance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        exercise: json_.containsKey('exercise')
            ? Exercise.fromJson(
                json_['exercise'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        floors: json_.containsKey('floors')
            ? Floors.fromJson(
                json_['floors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRate: json_.containsKey('heartRate')
            ? HeartRate.fromJson(
                json_['heartRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRateVariability: json_.containsKey('heartRateVariability')
            ? HeartRateVariability.fromJson(
                json_['heartRateVariability']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        height: json_.containsKey('height')
            ? Height.fromJson(
                json_['height'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hydrationLog: json_.containsKey('hydrationLog')
            ? HydrationLog.fromJson(
                json_['hydrationLog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        oxygenSaturation: json_.containsKey('oxygenSaturation')
            ? OxygenSaturation.fromJson(
                json_['oxygenSaturation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        respiratoryRateSleepSummary:
            json_.containsKey('respiratoryRateSleepSummary')
            ? RespiratoryRateSleepSummary.fromJson(
                json_['respiratoryRateSleepSummary']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        runVo2Max: json_.containsKey('runVo2Max')
            ? RunVO2Max.fromJson(
                json_['runVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sedentaryPeriod: json_.containsKey('sedentaryPeriod')
            ? SedentaryPeriod.fromJson(
                json_['sedentaryPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sleep: json_.containsKey('sleep')
            ? Sleep.fromJson(
                json_['sleep'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        steps: json_.containsKey('steps')
            ? Steps.fromJson(
                json_['steps'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        swimLengthsData: json_.containsKey('swimLengthsData')
            ? SwimLengthsData.fromJson(
                json_['swimLengthsData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeInHeartRateZone: json_.containsKey('timeInHeartRateZone')
            ? TimeInHeartRateZone.fromJson(
                json_['timeInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        vo2Max: json_.containsKey('vo2Max')
            ? VO2Max.fromJson(
                json_['vo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        weight: json_.containsKey('weight')
            ? Weight.fromJson(
                json_['weight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutes = this.activeMinutes;
    final activeZoneMinutes = this.activeZoneMinutes;
    final activityLevel = this.activityLevel;
    final altitude = this.altitude;
    final bodyFat = this.bodyFat;
    final dailyHeartRateVariability = this.dailyHeartRateVariability;
    final dailyHeartRateZones = this.dailyHeartRateZones;
    final dailyOxygenSaturation = this.dailyOxygenSaturation;
    final dailyRespiratoryRate = this.dailyRespiratoryRate;
    final dailyRestingHeartRate = this.dailyRestingHeartRate;
    final dailySleepTemperatureDerivations =
        this.dailySleepTemperatureDerivations;
    final dailyVo2Max = this.dailyVo2Max;
    final dataSource = this.dataSource;
    final distance = this.distance;
    final exercise = this.exercise;
    final floors = this.floors;
    final heartRate = this.heartRate;
    final heartRateVariability = this.heartRateVariability;
    final height = this.height;
    final hydrationLog = this.hydrationLog;
    final name = this.name;
    final oxygenSaturation = this.oxygenSaturation;
    final respiratoryRateSleepSummary = this.respiratoryRateSleepSummary;
    final runVo2Max = this.runVo2Max;
    final sedentaryPeriod = this.sedentaryPeriod;
    final sleep = this.sleep;
    final steps = this.steps;
    final swimLengthsData = this.swimLengthsData;
    final timeInHeartRateZone = this.timeInHeartRateZone;
    final vo2Max = this.vo2Max;
    final weight = this.weight;
    return {
      'activeMinutes': ?activeMinutes,
      'activeZoneMinutes': ?activeZoneMinutes,
      'activityLevel': ?activityLevel,
      'altitude': ?altitude,
      'bodyFat': ?bodyFat,
      'dailyHeartRateVariability': ?dailyHeartRateVariability,
      'dailyHeartRateZones': ?dailyHeartRateZones,
      'dailyOxygenSaturation': ?dailyOxygenSaturation,
      'dailyRespiratoryRate': ?dailyRespiratoryRate,
      'dailyRestingHeartRate': ?dailyRestingHeartRate,
      'dailySleepTemperatureDerivations': ?dailySleepTemperatureDerivations,
      'dailyVo2Max': ?dailyVo2Max,
      'dataSource': ?dataSource,
      'distance': ?distance,
      'exercise': ?exercise,
      'floors': ?floors,
      'heartRate': ?heartRate,
      'heartRateVariability': ?heartRateVariability,
      'height': ?height,
      'hydrationLog': ?hydrationLog,
      'name': ?name,
      'oxygenSaturation': ?oxygenSaturation,
      'respiratoryRateSleepSummary': ?respiratoryRateSleepSummary,
      'runVo2Max': ?runVo2Max,
      'sedentaryPeriod': ?sedentaryPeriod,
      'sleep': ?sleep,
      'steps': ?steps,
      'swimLengthsData': ?swimLengthsData,
      'timeInHeartRateZone': ?timeInHeartRateZone,
      'vo2Max': ?vo2Max,
      'weight': ?weight,
    };
  }
}

/// Data Source definition to track the origin of data.
///
/// Each health data point, regardless of the complexity or data model (whether
/// a simple step count or a detailed sleep session) must retain information
/// about its source of origin (e.g. the device or app that collected it).
class DataSource {
  /// Captures metadata for the application that provided this data.
  ///
  /// Output only.
  Application? application;

  /// Captures metadata for raw data points originating from devices.
  ///
  /// We expect this data source to be used for data points written on device
  /// sync.
  ///
  /// Optional.
  Device? device;

  /// Captures the platform that uploaded the data.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : The platform is unspecified.
  /// - "FITBIT" : The data was uploaded from Fitbit.
  /// - "HEALTH_CONNECT" : The data was uploaded from Health Connect.
  /// - "HEALTH_KIT" : The data was uploaded from Health Kit.
  /// - "FIT" : The data was uploaded from Google Fit.
  /// - "FITBIT_WEB_API" : The data was uploaded from Fitbit legacy Web API.
  /// - "NEST" : The data was uploaded from Nest devices.
  /// - "GOOGLE_WEB_API" : The data was uploaded from Google Health API.
  /// - "GOOGLE_PARTNER_INTEGRATION" : The data was uploaded from Google Partner
  /// Integrations.
  core.String? platform;

  /// Captures how the data was recorded.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RECORDING_METHOD_UNSPECIFIED" : The recording method is unspecified.
  /// - "MANUAL" : The data was manually entered by the user.
  /// - "PASSIVELY_MEASURED" : The data was passively measured by a device.
  /// - "DERIVED" : The data was derived from other data, e.g., by an algorithm
  /// in the backend.
  /// - "ACTIVELY_MEASURED" : The data was actively measured by a device.
  /// - "UNKNOWN" : The recording method is unknown. This is set when the data
  /// is uploaded from a third party app that does not provide this information.
  core.String? recordingMethod;

  DataSource({
    this.application,
    this.device,
    this.platform,
    this.recordingMethod,
  });

  DataSource.fromJson(core.Map json_)
    : this(
        application: json_.containsKey('application')
            ? Application.fromJson(
                json_['application'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        device: json_.containsKey('device')
            ? Device.fromJson(
                json_['device'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        platform: json_['platform'] as core.String?,
        recordingMethod: json_['recordingMethod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final application = this.application;
    final device = this.device;
    final platform = this.platform;
    final recordingMethod = this.recordingMethod;
    return {
      'application': ?application,
      'device': ?device,
      'platform': ?platform,
      'recordingMethod': ?recordingMethod,
    };
  }
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Captures metadata about the device that recorded the measurement.
class Device {
  /// An optional name for the device.
  ///
  /// Optional.
  core.String? displayName;

  /// Captures the form factor of the device.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FORM_FACTOR_UNSPECIFIED" : The form factor is unspecified.
  /// - "FITNESS_BAND" : The device is a fitness band.
  /// - "WATCH" : The device is a watch.
  /// - "PHONE" : The device is a phone.
  /// - "RING" : The device is a ring.
  /// - "CHEST_STRAP" : The device is a chest strap.
  /// - "SCALE" : The device is a scale.
  /// - "TABLET" : The device is a tablet.
  /// - "HEAD_MOUNTED" : The device is a head mounted device.
  /// - "SMART_DISPLAY" : The device is a smart display.
  core.String? formFactor;

  /// An optional manufacturer of the device.
  ///
  /// Optional.
  core.String? manufacturer;

  Device({this.displayName, this.formFactor, this.manufacturer});

  Device.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        formFactor: json_['formFactor'] as core.String?,
        manufacturer: json_['manufacturer'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final formFactor = this.formFactor;
    final manufacturer = this.manufacturer;
    return {
      'displayName': ?displayName,
      'formFactor': ?formFactor,
      'manufacturer': ?manufacturer,
    };
  }
}

/// Distance traveled over an interval of time.
class Distance {
  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  /// Distance in millimeters over the observed interval.
  ///
  /// Required.
  core.String? millimeters;

  Distance({this.interval, this.millimeters});

  Distance.fromJson(core.Map json_)
    : this(
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        millimeters: json_['millimeters'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final interval = this.interval;
    final millimeters = this.millimeters;
    return {'interval': ?interval, 'millimeters': ?millimeters};
  }
}

/// Result of the rollup of the user's distance.
class DistanceRollupValue {
  /// Sum of the distance in millimeters.
  core.String? millimetersSum;

  DistanceRollupValue({this.millimetersSum});

  DistanceRollupValue.fromJson(core.Map json_)
    : this(millimetersSum: json_['millimetersSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final millimetersSum = this.millimetersSum;
    return {'millimetersSum': ?millimetersSum};
  }
}

/// Authorization mechanism for a subscriber endpoint.
///
/// For all requests sent by the Webhooks service, the JSON payload is
/// cryptographically signed. The signature is delivered in the
/// `X-HEALTHAPI-SIGNATURE` HTTP header. This is an ECDSA (NIST P256) signature
/// of the JSON payload. Clients must verify this signature using Google Health
/// API's public key to confirm the payload was sent by the Health API.
class EndpointAuthorization {
  /// Input only.
  ///
  /// Provides a client-provided secret that will be sent with each notification
  /// to the subscriber endpoint using the "Authorization" header. The value
  /// must include the authorization scheme, e.g., "Bearer " or "Basic ", as it
  /// will be used as the full Authorization header value. This secret is used
  /// by the API to test the endpoint during `CreateSubscriber` and
  /// `UpdateSubscriber` calls, and will be sent in the `Authorization` header
  /// for all subsequent webhook notifications to this endpoint.
  ///
  /// Required.
  core.String? secret;

  /// Whether the secret is set.
  ///
  /// Output only.
  core.bool? secretSet;

  EndpointAuthorization({this.secret, this.secretSet});

  EndpointAuthorization.fromJson(core.Map json_)
    : this(
        secret: json_['secret'] as core.String?,
        secretSet: json_['secretSet'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final secret = this.secret;
    final secretSet = this.secretSet;
    return {'secret': ?secret, 'secretSet': ?secretSet};
  }
}

/// An exercise that stores information about a physical activity.
class Exercise {
  /// Duration excluding pauses.
  ///
  /// Optional.
  core.String? activeDuration;

  /// Represents the timestamp of the creation of the exercise.
  ///
  /// Output only.
  core.String? createTime;

  /// Exercise display name.
  ///
  /// Required.
  core.String? displayName;

  /// Exercise events that happen during an exercise, such as pause & restarts.
  ///
  /// Optional.
  core.List<ExerciseEvent>? exerciseEvents;

  /// Additional exercise metadata.
  ///
  /// Optional.
  ExerciseMetadata? exerciseMetadata;

  /// The type of activity performed during an exercise.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXERCISE_TYPE_UNSPECIFIED" : Exercise type is unspecified.
  /// - "RUNNING" : Running type.
  /// - "WALKING" : Walking type.
  /// - "BIKING" : Biking type.
  /// - "SWIMMING" : Swimming type.
  /// - "HIKING" : Hiking type.
  /// - "YOGA" : Yoga type.
  /// - "PILATES" : Pilates type.
  /// - "WORKOUT" : Workout type.
  /// - "HIIT" : HIIT type.
  /// - "WEIGHTLIFTING" : Weightlifting type.
  /// - "STRENGTH_TRAINING" : Strength training type.
  /// - "OTHER" : Other type.
  core.String? exerciseType;

  /// Observed exercise interval
  ///
  /// Required.
  SessionTimeInterval? interval;

  /// Summary metrics for this exercise ( )
  ///
  /// Required.
  MetricsSummary? metricsSummary;

  /// Standard free-form notes captured at manual logging.
  ///
  /// Optional.
  core.String? notes;

  /// Laps or splits recorded within an exercise.
  ///
  /// Laps could be split based on distance or other criteria (duration, etc.)
  /// Laps should not be overlapping with each other.
  ///
  /// Optional.
  core.List<SplitSummary>? splitSummaries;

  /// The default split is 1 km or 1 mile.
  ///
  /// - if the movement distance is less than the default, then there are no
  /// splits - if the movement distance is greater than or equal to the default,
  /// then we have splits
  ///
  /// Optional.
  core.List<SplitSummary>? splits;

  /// This is the timestamp of the last update to the exercise.
  ///
  /// Output only.
  core.String? updateTime;

  Exercise({
    this.activeDuration,
    this.createTime,
    this.displayName,
    this.exerciseEvents,
    this.exerciseMetadata,
    this.exerciseType,
    this.interval,
    this.metricsSummary,
    this.notes,
    this.splitSummaries,
    this.splits,
    this.updateTime,
  });

  Exercise.fromJson(core.Map json_)
    : this(
        activeDuration: json_['activeDuration'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        exerciseEvents: (json_['exerciseEvents'] as core.List?)
            ?.map(
              (value) => ExerciseEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        exerciseMetadata: json_.containsKey('exerciseMetadata')
            ? ExerciseMetadata.fromJson(
                json_['exerciseMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        exerciseType: json_['exerciseType'] as core.String?,
        interval: json_.containsKey('interval')
            ? SessionTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metricsSummary: json_.containsKey('metricsSummary')
            ? MetricsSummary.fromJson(
                json_['metricsSummary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notes: json_['notes'] as core.String?,
        splitSummaries: (json_['splitSummaries'] as core.List?)
            ?.map(
              (value) => SplitSummary.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        splits: (json_['splits'] as core.List?)
            ?.map(
              (value) => SplitSummary.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeDuration = this.activeDuration;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final exerciseEvents = this.exerciseEvents;
    final exerciseMetadata = this.exerciseMetadata;
    final exerciseType = this.exerciseType;
    final interval = this.interval;
    final metricsSummary = this.metricsSummary;
    final notes = this.notes;
    final splitSummaries = this.splitSummaries;
    final splits = this.splits;
    final updateTime = this.updateTime;
    return {
      'activeDuration': ?activeDuration,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'exerciseEvents': ?exerciseEvents,
      'exerciseMetadata': ?exerciseMetadata,
      'exerciseType': ?exerciseType,
      'interval': ?interval,
      'metricsSummary': ?metricsSummary,
      'notes': ?notes,
      'splitSummaries': ?splitSummaries,
      'splits': ?splits,
      'updateTime': ?updateTime,
    };
  }
}

/// Represents instantaneous events that happen during an exercise, such as
/// start, stop, pause, split.
class ExerciseEvent {
  /// Exercise event time
  ///
  /// Required.
  core.String? eventTime;

  /// Exercise event time offset from UTC
  ///
  /// Required.
  core.String? eventUtcOffset;

  /// The type of the event, such as start, stop, pause, resume.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXERCISE_EVENT_TYPE_UNSPECIFIED" : Exercise event type is unspecified.
  /// - "START" : Exercise start event.
  /// - "STOP" : Exercise stop event.
  /// - "PAUSE" : Exercise pause event.
  /// - "RESUME" : Exercise resume event.
  /// - "AUTO_PAUSE" : Exercise auto-pause event.
  /// - "AUTO_RESUME" : Exercise auto-resume event.
  core.String? exerciseEventType;

  ExerciseEvent({this.eventTime, this.eventUtcOffset, this.exerciseEventType});

  ExerciseEvent.fromJson(core.Map json_)
    : this(
        eventTime: json_['eventTime'] as core.String?,
        eventUtcOffset: json_['eventUtcOffset'] as core.String?,
        exerciseEventType: json_['exerciseEventType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventTime = this.eventTime;
    final eventUtcOffset = this.eventUtcOffset;
    final exerciseEventType = this.exerciseEventType;
    return {
      'eventTime': ?eventTime,
      'eventUtcOffset': ?eventUtcOffset,
      'exerciseEventType': ?exerciseEventType,
    };
  }
}

/// Additional exercise metadata.
class ExerciseMetadata {
  /// Whether the exercise had GPS tracking.
  ///
  /// Optional.
  core.bool? hasGps;

  /// Pool length in millimeters.
  ///
  /// Only present in the swimming exercises.
  ///
  /// Optional.
  core.String? poolLengthMillimeters;

  ExerciseMetadata({this.hasGps, this.poolLengthMillimeters});

  ExerciseMetadata.fromJson(core.Map json_)
    : this(
        hasGps: json_['hasGps'] as core.bool?,
        poolLengthMillimeters: json_['poolLengthMillimeters'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hasGps = this.hasGps;
    final poolLengthMillimeters = this.poolLengthMillimeters;
    return {'hasGps': ?hasGps, 'poolLengthMillimeters': ?poolLengthMillimeters};
  }
}

/// Represents a Response for exporting exercise data in TCX format.
class ExportExerciseTcxResponse {
  /// Contains the exported TCX data.
  core.String? tcxData;

  ExportExerciseTcxResponse({this.tcxData});

  ExportExerciseTcxResponse.fromJson(core.Map json_)
    : this(tcxData: json_['tcxData'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tcxData = this.tcxData;
    return {'tcxData': ?tcxData};
  }
}

/// Gained elevation measured in floors over the time interval
class Floors {
  /// Number of floors in the recorded interval
  ///
  /// Required.
  core.String? count;

  /// Observed interval
  ///
  /// Required.
  ObservationTimeInterval? interval;

  Floors({this.count, this.interval});

  Floors.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final interval = this.interval;
    return {'count': ?count, 'interval': ?interval};
  }
}

/// Represents the result of the rollup of the user's floors.
class FloorsRollupValue {
  /// Sum of the floors count.
  core.String? countSum;

  FloorsRollupValue({this.countSum});

  FloorsRollupValue.fromJson(core.Map json_)
    : this(countSum: json_['countSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final countSum = this.countSum;
    return {'countSum': ?countSum};
  }
}

/// A heart rate measurement.
class HeartRate {
  /// The heart rate value in beats per minute.
  ///
  /// Required.
  core.String? beatsPerMinute;

  /// Metadata about the heart rate sample.
  ///
  /// Optional.
  HeartRateMetadata? metadata;

  /// Observation time
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  HeartRate({this.beatsPerMinute, this.metadata, this.sampleTime});

  HeartRate.fromJson(core.Map json_)
    : this(
        beatsPerMinute: json_['beatsPerMinute'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? HeartRateMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final beatsPerMinute = this.beatsPerMinute;
    final metadata = this.metadata;
    final sampleTime = this.sampleTime;
    return {
      'beatsPerMinute': ?beatsPerMinute,
      'metadata': ?metadata,
      'sampleTime': ?sampleTime,
    };
  }
}

/// Heart rate metadata.
class HeartRateMetadata {
  /// Indicates the user’s level of activity when the heart rate sample was
  /// measured
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MOTION_CONTEXT_UNSPECIFIED" : The default value when no data is
  /// available.
  /// - "ACTIVE" : The user is active.
  /// - "SEDENTARY" : The user is inactive.
  core.String? motionContext;

  /// Indicates the location of the sensor that measured the heart rate.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SENSOR_LOCATION_UNSPECIFIED" : The default value when no data is
  /// available.
  /// - "CHEST" : Chest sensor.
  /// - "WRIST" : Wrist sensor.
  /// - "FINGER" : Finger sensor.
  /// - "HAND" : Hand sensor.
  /// - "EAR_LOBE" : Ear lobe sensor.
  /// - "FOOT" : Foot sensor.
  core.String? sensorLocation;

  HeartRateMetadata({this.motionContext, this.sensorLocation});

  HeartRateMetadata.fromJson(core.Map json_)
    : this(
        motionContext: json_['motionContext'] as core.String?,
        sensorLocation: json_['sensorLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final motionContext = this.motionContext;
    final sensorLocation = this.sensorLocation;
    return {'motionContext': ?motionContext, 'sensorLocation': ?sensorLocation};
  }
}

/// Represents the result of the rollup of the heart rate data type.
class HeartRateRollupValue {
  /// The average heart rate value in the interval.
  core.double? beatsPerMinuteAvg;

  /// The maximum heart rate value in the interval.
  core.double? beatsPerMinuteMax;

  /// The minimum heart rate value in the interval.
  core.double? beatsPerMinuteMin;

  HeartRateRollupValue({
    this.beatsPerMinuteAvg,
    this.beatsPerMinuteMax,
    this.beatsPerMinuteMin,
  });

  HeartRateRollupValue.fromJson(core.Map json_)
    : this(
        beatsPerMinuteAvg: (json_['beatsPerMinuteAvg'] as core.num?)
            ?.toDouble(),
        beatsPerMinuteMax: (json_['beatsPerMinuteMax'] as core.num?)
            ?.toDouble(),
        beatsPerMinuteMin: (json_['beatsPerMinuteMin'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final beatsPerMinuteAvg = this.beatsPerMinuteAvg;
    final beatsPerMinuteMax = this.beatsPerMinuteMax;
    final beatsPerMinuteMin = this.beatsPerMinuteMin;
    return {
      'beatsPerMinuteAvg': ?beatsPerMinuteAvg,
      'beatsPerMinuteMax': ?beatsPerMinuteMax,
      'beatsPerMinuteMin': ?beatsPerMinuteMin,
    };
  }
}

/// Captures user's heart rate variability (HRV) as measured by the root mean
/// square of successive differences (RMSSD) between normal heartbeats or by
/// standard deviation of the inter-beat intervals (SDNN).
class HeartRateVariability {
  /// The root mean square of successive differences between normal heartbeats.
  ///
  /// This is a measure of heart rate variability used by Fitbit.
  ///
  /// Optional.
  core.double? rootMeanSquareOfSuccessiveDifferencesMilliseconds;

  /// The time of the heart rate variability measurement.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  /// The standard deviation of the heart rate variability measurement.
  ///
  /// Optional.
  core.double? standardDeviationMilliseconds;

  HeartRateVariability({
    this.rootMeanSquareOfSuccessiveDifferencesMilliseconds,
    this.sampleTime,
    this.standardDeviationMilliseconds,
  });

  HeartRateVariability.fromJson(core.Map json_)
    : this(
        rootMeanSquareOfSuccessiveDifferencesMilliseconds:
            (json_['rootMeanSquareOfSuccessiveDifferencesMilliseconds']
                    as core.num?)
                ?.toDouble(),
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        standardDeviationMilliseconds:
            (json_['standardDeviationMilliseconds'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rootMeanSquareOfSuccessiveDifferencesMilliseconds =
        this.rootMeanSquareOfSuccessiveDifferencesMilliseconds;
    final sampleTime = this.sampleTime;
    final standardDeviationMilliseconds = this.standardDeviationMilliseconds;
    return {
      'rootMeanSquareOfSuccessiveDifferencesMilliseconds':
          ?rootMeanSquareOfSuccessiveDifferencesMilliseconds,
      'sampleTime': ?sampleTime,
      'standardDeviationMilliseconds': ?standardDeviationMilliseconds,
    };
  }
}

/// Represents the result of the rollup of the user's daily heart rate
/// variability personal range.
class HeartRateVariabilityPersonalRangeRollupValue {
  /// The upper bound of the user's average heart rate variability personal
  /// range.
  core.double? averageHeartRateVariabilityMillisecondsMax;

  /// The lower bound of the user's average heart rate variability personal
  /// range.
  core.double? averageHeartRateVariabilityMillisecondsMin;

  HeartRateVariabilityPersonalRangeRollupValue({
    this.averageHeartRateVariabilityMillisecondsMax,
    this.averageHeartRateVariabilityMillisecondsMin,
  });

  HeartRateVariabilityPersonalRangeRollupValue.fromJson(core.Map json_)
    : this(
        averageHeartRateVariabilityMillisecondsMax:
            (json_['averageHeartRateVariabilityMillisecondsMax'] as core.num?)
                ?.toDouble(),
        averageHeartRateVariabilityMillisecondsMin:
            (json_['averageHeartRateVariabilityMillisecondsMin'] as core.num?)
                ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final averageHeartRateVariabilityMillisecondsMax =
        this.averageHeartRateVariabilityMillisecondsMax;
    final averageHeartRateVariabilityMillisecondsMin =
        this.averageHeartRateVariabilityMillisecondsMin;
    return {
      'averageHeartRateVariabilityMillisecondsMax':
          ?averageHeartRateVariabilityMillisecondsMax,
      'averageHeartRateVariabilityMillisecondsMin':
          ?averageHeartRateVariabilityMillisecondsMin,
    };
  }
}

/// The heart rate zone.
class HeartRateZone {
  /// The heart rate zone type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HEART_RATE_ZONE_TYPE_UNSPECIFIED" : Unspecified heart rate zone.
  /// - "LIGHT" : The light heart rate zone.
  /// - "MODERATE" : The moderate heart rate zone.
  /// - "VIGOROUS" : The vigorous heart rate zone.
  /// - "PEAK" : The peak heart rate zone.
  core.String? heartRateZoneType;

  /// Maximum heart rate for this zone in beats per minute.
  ///
  /// Required.
  core.String? maxBeatsPerMinute;

  /// Minimum heart rate for this zone in beats per minute.
  ///
  /// Required.
  core.String? minBeatsPerMinute;

  HeartRateZone({
    this.heartRateZoneType,
    this.maxBeatsPerMinute,
    this.minBeatsPerMinute,
  });

  HeartRateZone.fromJson(core.Map json_)
    : this(
        heartRateZoneType: json_['heartRateZoneType'] as core.String?,
        maxBeatsPerMinute: json_['maxBeatsPerMinute'] as core.String?,
        minBeatsPerMinute: json_['minBeatsPerMinute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heartRateZoneType = this.heartRateZoneType;
    final maxBeatsPerMinute = this.maxBeatsPerMinute;
    final minBeatsPerMinute = this.minBeatsPerMinute;
    return {
      'heartRateZoneType': ?heartRateZoneType,
      'maxBeatsPerMinute': ?maxBeatsPerMinute,
      'minBeatsPerMinute': ?minBeatsPerMinute,
    };
  }
}

/// Body height measurement.
class Height {
  /// Height of the user in millimeters.
  ///
  /// Required.
  core.String? heightMillimeters;

  /// The time at which the height was recorded.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  Height({this.heightMillimeters, this.sampleTime});

  Height.fromJson(core.Map json_)
    : this(
        heightMillimeters: json_['heightMillimeters'] as core.String?,
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heightMillimeters = this.heightMillimeters;
    final sampleTime = this.sampleTime;
    return {'heightMillimeters': ?heightMillimeters, 'sampleTime': ?sampleTime};
  }
}

/// Holds information about a user logged hydration.
class HydrationLog {
  /// Amount of liquid (ex.
  ///
  /// water) consumed.
  ///
  /// Required.
  VolumeQuantity? amountConsumed;

  /// Observed interval.
  ///
  /// Required.
  SessionTimeInterval? interval;

  HydrationLog({this.amountConsumed, this.interval});

  HydrationLog.fromJson(core.Map json_)
    : this(
        amountConsumed: json_.containsKey('amountConsumed')
            ? VolumeQuantity.fromJson(
                json_['amountConsumed'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        interval: json_.containsKey('interval')
            ? SessionTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amountConsumed = this.amountConsumed;
    final interval = this.interval;
    return {'amountConsumed': ?amountConsumed, 'interval': ?interval};
  }
}

/// Represents the result of the rollup of the hydration log data type.
class HydrationLogRollupValue {
  /// Rollup for amount consumed.
  VolumeQuantityRollup? amountConsumed;

  HydrationLogRollupValue({this.amountConsumed});

  HydrationLogRollupValue.fromJson(core.Map json_)
    : this(
        amountConsumed: json_.containsKey('amountConsumed')
            ? VolumeQuantityRollup.fromJson(
                json_['amountConsumed'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amountConsumed = this.amountConsumed;
    return {'amountConsumed': ?amountConsumed};
  }
}

/// Represents details about the Google user's identity.
class Identity {
  /// The Google User Identifier in the Google Health APIs.
  ///
  /// It matches the `{user}` resource ID segment in the resource name paths,
  /// e.g. `users/{user}/dataTypes/steps`. Valid values are strings of 1-63
  /// characters, and valid characters are lowercase and uppercase letters,
  /// numbers, and hyphens.
  ///
  /// Output only.
  core.String? healthUserId;

  /// The legacy Fitbit User identifier.
  ///
  /// This is the Fitbit ID used in the legacy Fitbit APIs (v1-v3). It can be
  /// referenced by clients migrating from the legacy Fitbit APIs to map their
  /// existing identifiers to the new Google user ID. It **must not** be used
  /// for any other purpose. It is not of any use for new clients using only the
  /// Google Health APIs. Valid values are strings of 1-63 characters, and valid
  /// characters are lowercase and uppercase letters, numbers, and hyphens.
  ///
  /// Output only.
  core.String? legacyUserId;

  /// Identifier.
  ///
  /// The resource name of this Identity resource. Format: `users/me/identity`
  core.String? name;

  Identity({this.healthUserId, this.legacyUserId, this.name});

  Identity.fromJson(core.Map json_)
    : this(
        healthUserId: json_['healthUserId'] as core.String?,
        legacyUserId: json_['legacyUserId'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final healthUserId = this.healthUserId;
    final legacyUserId = this.legacyUserId;
    final name = this.name;
    return {
      'healthUserId': ?healthUserId,
      'legacyUserId': ?legacyUserId,
      'name': ?name,
    };
  }
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// Response containing raw data points matching the query
class ListDataPointsResponse {
  /// Data points matching the query
  core.List<DataPoint>? dataPoints;

  /// Next page token, empty if the response is complete
  core.String? nextPageToken;

  ListDataPointsResponse({this.dataPoints, this.nextPageToken});

  ListDataPointsResponse.fromJson(core.Map json_)
    : this(
        dataPoints: (json_['dataPoints'] as core.List?)
            ?.map(
              (value) => DataPoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataPoints = this.dataPoints;
    final nextPageToken = this.nextPageToken;
    return {'dataPoints': ?dataPoints, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for ListSubscribers.
class ListSubscribersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Subscribers from the specified project.
  core.List<Subscriber>? subscribers;

  /// The total number of subscribers matching the request.
  core.int? totalSize;

  ListSubscribersResponse({
    this.nextPageToken,
    this.subscribers,
    this.totalSize,
  });

  ListSubscribersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscribers: (json_['subscribers'] as core.List?)
            ?.map(
              (value) => Subscriber.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subscribers = this.subscribers;
    final totalSize = this.totalSize;
    return {
      'nextPageToken': ?nextPageToken,
      'subscribers': ?subscribers,
      'totalSize': ?totalSize,
    };
  }
}

/// Summary metrics for an exercise.
class MetricsSummary {
  /// Total active zone minutes for the exercise.
  ///
  /// Optional.
  core.String? activeZoneMinutes;

  /// Average heart rate during the exercise.
  ///
  /// Optional.
  core.String? averageHeartRateBeatsPerMinute;

  /// Average pace in seconds per meter.
  ///
  /// Optional.
  core.double? averagePaceSecondsPerMeter;

  /// Average speed in millimeters per second.
  ///
  /// Optional.
  core.double? averageSpeedMillimetersPerSecond;

  /// Total calories burned by the user during the exercise.
  ///
  /// Optional.
  core.double? caloriesKcal;

  /// Total distance covered by the user during the exercise.
  ///
  /// Optional.
  core.double? distanceMillimeters;

  /// Total elevation gain during the exercise.
  ///
  /// Optional.
  core.double? elevationGainMillimeters;

  /// Time spent in each heart rate zone.
  ///
  /// Optional.
  TimeInHeartRateZones? heartRateZoneDurations;

  /// Mobility workouts specific metrics.
  ///
  /// Only present in the advanced running exercises.
  ///
  /// Optional.
  MobilityMetrics? mobilityMetrics;

  /// Run VO2 max value for the exercise.
  ///
  /// Only present in the running exercises at the top level as in the summary
  /// of the whole exercise.
  ///
  /// Optional.
  core.double? runVo2Max;

  /// Total steps taken during the exercise.
  ///
  /// Optional.
  core.String? steps;

  /// Number of full pool lengths completed during the exercise.
  ///
  /// Only present in the swimming exercises at the top level as in the summary
  /// of the whole exercise.
  ///
  /// Optional.
  core.double? totalSwimLengths;

  MetricsSummary({
    this.activeZoneMinutes,
    this.averageHeartRateBeatsPerMinute,
    this.averagePaceSecondsPerMeter,
    this.averageSpeedMillimetersPerSecond,
    this.caloriesKcal,
    this.distanceMillimeters,
    this.elevationGainMillimeters,
    this.heartRateZoneDurations,
    this.mobilityMetrics,
    this.runVo2Max,
    this.steps,
    this.totalSwimLengths,
  });

  MetricsSummary.fromJson(core.Map json_)
    : this(
        activeZoneMinutes: json_['activeZoneMinutes'] as core.String?,
        averageHeartRateBeatsPerMinute:
            json_['averageHeartRateBeatsPerMinute'] as core.String?,
        averagePaceSecondsPerMeter:
            (json_['averagePaceSecondsPerMeter'] as core.num?)?.toDouble(),
        averageSpeedMillimetersPerSecond:
            (json_['averageSpeedMillimetersPerSecond'] as core.num?)
                ?.toDouble(),
        caloriesKcal: (json_['caloriesKcal'] as core.num?)?.toDouble(),
        distanceMillimeters: (json_['distanceMillimeters'] as core.num?)
            ?.toDouble(),
        elevationGainMillimeters:
            (json_['elevationGainMillimeters'] as core.num?)?.toDouble(),
        heartRateZoneDurations: json_.containsKey('heartRateZoneDurations')
            ? TimeInHeartRateZones.fromJson(
                json_['heartRateZoneDurations']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobilityMetrics: json_.containsKey('mobilityMetrics')
            ? MobilityMetrics.fromJson(
                json_['mobilityMetrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        runVo2Max: (json_['runVo2Max'] as core.num?)?.toDouble(),
        steps: json_['steps'] as core.String?,
        totalSwimLengths: (json_['totalSwimLengths'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeZoneMinutes = this.activeZoneMinutes;
    final averageHeartRateBeatsPerMinute = this.averageHeartRateBeatsPerMinute;
    final averagePaceSecondsPerMeter = this.averagePaceSecondsPerMeter;
    final averageSpeedMillimetersPerSecond =
        this.averageSpeedMillimetersPerSecond;
    final caloriesKcal = this.caloriesKcal;
    final distanceMillimeters = this.distanceMillimeters;
    final elevationGainMillimeters = this.elevationGainMillimeters;
    final heartRateZoneDurations = this.heartRateZoneDurations;
    final mobilityMetrics = this.mobilityMetrics;
    final runVo2Max = this.runVo2Max;
    final steps = this.steps;
    final totalSwimLengths = this.totalSwimLengths;
    return {
      'activeZoneMinutes': ?activeZoneMinutes,
      'averageHeartRateBeatsPerMinute': ?averageHeartRateBeatsPerMinute,
      'averagePaceSecondsPerMeter': ?averagePaceSecondsPerMeter,
      'averageSpeedMillimetersPerSecond': ?averageSpeedMillimetersPerSecond,
      'caloriesKcal': ?caloriesKcal,
      'distanceMillimeters': ?distanceMillimeters,
      'elevationGainMillimeters': ?elevationGainMillimeters,
      'heartRateZoneDurations': ?heartRateZoneDurations,
      'mobilityMetrics': ?mobilityMetrics,
      'runVo2Max': ?runVo2Max,
      'steps': ?steps,
      'totalSwimLengths': ?totalSwimLengths,
    };
  }
}

/// Mobility workouts specific metrics
class MobilityMetrics {
  /// Cadence is a measure of the frequency of your foot strikes.
  ///
  /// Steps / min in real time during workout.
  ///
  /// Optional.
  core.double? avgCadenceStepsPerMinute;

  /// The ground contact time for a particular stride is the amount of time for
  /// which the foot was in contact with the ground on that stride
  ///
  /// Optional.
  core.String? avgGroundContactTimeDuration;

  /// Stride length is a measure of the distance covered by a single stride
  ///
  /// Optional.
  core.String? avgStrideLengthMillimeters;

  /// Distance off the ground your center of mass moves with each stride while
  /// running
  ///
  /// Optional.
  core.String? avgVerticalOscillationMillimeters;

  /// Vertical oscillation/stride length between \[5.0, 11.0\].
  ///
  /// Optional.
  core.double? avgVerticalRatio;

  MobilityMetrics({
    this.avgCadenceStepsPerMinute,
    this.avgGroundContactTimeDuration,
    this.avgStrideLengthMillimeters,
    this.avgVerticalOscillationMillimeters,
    this.avgVerticalRatio,
  });

  MobilityMetrics.fromJson(core.Map json_)
    : this(
        avgCadenceStepsPerMinute:
            (json_['avgCadenceStepsPerMinute'] as core.num?)?.toDouble(),
        avgGroundContactTimeDuration:
            json_['avgGroundContactTimeDuration'] as core.String?,
        avgStrideLengthMillimeters:
            json_['avgStrideLengthMillimeters'] as core.String?,
        avgVerticalOscillationMillimeters:
            json_['avgVerticalOscillationMillimeters'] as core.String?,
        avgVerticalRatio: (json_['avgVerticalRatio'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final avgCadenceStepsPerMinute = this.avgCadenceStepsPerMinute;
    final avgGroundContactTimeDuration = this.avgGroundContactTimeDuration;
    final avgStrideLengthMillimeters = this.avgStrideLengthMillimeters;
    final avgVerticalOscillationMillimeters =
        this.avgVerticalOscillationMillimeters;
    final avgVerticalRatio = this.avgVerticalRatio;
    return {
      'avgCadenceStepsPerMinute': ?avgCadenceStepsPerMinute,
      'avgGroundContactTimeDuration': ?avgGroundContactTimeDuration,
      'avgStrideLengthMillimeters': ?avgStrideLengthMillimeters,
      'avgVerticalOscillationMillimeters': ?avgVerticalOscillationMillimeters,
      'avgVerticalRatio': ?avgVerticalRatio,
    };
  }
}

/// Represents a sample time of an observed data point.
class ObservationSampleTime {
  /// The civil time in the timezone the subject is in at the time of the
  /// observation.
  ///
  /// Output only.
  CivilDateTime? civilTime;

  /// The time of the observation.
  ///
  /// Required.
  core.String? physicalTime;

  /// The offset of the user's local time during the observation relative to the
  /// Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? utcOffset;

  ObservationSampleTime({this.civilTime, this.physicalTime, this.utcOffset});

  ObservationSampleTime.fromJson(core.Map json_)
    : this(
        civilTime: json_.containsKey('civilTime')
            ? CivilDateTime.fromJson(
                json_['civilTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        physicalTime: json_['physicalTime'] as core.String?,
        utcOffset: json_['utcOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final civilTime = this.civilTime;
    final physicalTime = this.physicalTime;
    final utcOffset = this.utcOffset;
    return {
      'civilTime': ?civilTime,
      'physicalTime': ?physicalTime,
      'utcOffset': ?utcOffset,
    };
  }
}

/// Represents a time interval of an observed data point.
class ObservationTimeInterval {
  /// Observed interval end time in civil time in the timezone the subject is in
  /// at the end of the observed interval
  ///
  /// Output only.
  CivilDateTime? civilEndTime;

  /// Observed interval start time in civil time in the timezone the subject is
  /// in at the start of the observed interval
  ///
  /// Output only.
  CivilDateTime? civilStartTime;

  /// Observed interval end time.
  ///
  /// Required.
  core.String? endTime;

  /// The offset of the user's local time at the end of the observation relative
  /// to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? endUtcOffset;

  /// Observed interval start time.
  ///
  /// Required.
  core.String? startTime;

  /// The offset of the user's local time at the start of the observation
  /// relative to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? startUtcOffset;

  ObservationTimeInterval({
    this.civilEndTime,
    this.civilStartTime,
    this.endTime,
    this.endUtcOffset,
    this.startTime,
    this.startUtcOffset,
  });

  ObservationTimeInterval.fromJson(core.Map json_)
    : this(
        civilEndTime: json_.containsKey('civilEndTime')
            ? CivilDateTime.fromJson(
                json_['civilEndTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        civilStartTime: json_.containsKey('civilStartTime')
            ? CivilDateTime.fromJson(
                json_['civilStartTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endTime: json_['endTime'] as core.String?,
        endUtcOffset: json_['endUtcOffset'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        startUtcOffset: json_['startUtcOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final civilEndTime = this.civilEndTime;
    final civilStartTime = this.civilStartTime;
    final endTime = this.endTime;
    final endUtcOffset = this.endUtcOffset;
    final startTime = this.startTime;
    final startUtcOffset = this.startUtcOffset;
    return {
      'civilEndTime': ?civilEndTime,
      'civilStartTime': ?civilStartTime,
      'endTime': ?endTime,
      'endUtcOffset': ?endUtcOffset,
      'startTime': ?startTime,
      'startUtcOffset': ?startUtcOffset,
    };
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

/// A time interval to represent an out-of-bed segment.
class OutOfBedSegment {
  /// Segment end time.
  ///
  /// Required.
  core.String? endTime;

  /// The offset of the user's local time at the end of the segment relative to
  /// the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? endUtcOffset;

  /// Segment tart time.
  ///
  /// Required.
  core.String? startTime;

  /// The offset of the user's local time at the start of the segment relative
  /// to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? startUtcOffset;

  OutOfBedSegment({
    this.endTime,
    this.endUtcOffset,
    this.startTime,
    this.startUtcOffset,
  });

  OutOfBedSegment.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        endUtcOffset: json_['endUtcOffset'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        startUtcOffset: json_['startUtcOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final endUtcOffset = this.endUtcOffset;
    final startTime = this.startTime;
    final startUtcOffset = this.startUtcOffset;
    return {
      'endTime': ?endTime,
      'endUtcOffset': ?endUtcOffset,
      'startTime': ?startTime,
      'startUtcOffset': ?startUtcOffset,
    };
  }
}

/// Captures the user's instantaneous oxygen saturation percentage (SpO2).
class OxygenSaturation {
  /// The oxygen saturation percentage.
  ///
  /// Valid values are from 0 to 100.
  ///
  /// Required.
  core.double? percentage;

  /// The time at which oxygen saturation was measured.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  OxygenSaturation({this.percentage, this.sampleTime});

  OxygenSaturation.fromJson(core.Map json_)
    : this(
        percentage: (json_['percentage'] as core.num?)?.toDouble(),
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final percentage = this.percentage;
    final sampleTime = this.sampleTime;
    return {'percentage': ?percentage, 'sampleTime': ?sampleTime};
  }
}

/// Profile details.
class Profile {
  /// The age in years based on the user's birth date.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  core.int? age;

  /// The automatically calculated running stride length, in millimeters.
  ///
  /// The user must consent to one of the following access scopes to access this
  /// field: -
  /// `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.readonly`
  /// - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
  ///
  /// Output only.
  core.int? autoRunningStrideLengthMm;

  /// The automatically calculated walking stride length, in millimeters.
  ///
  /// The user must consent to one of the following access scopes to access this
  /// field: -
  /// `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.readonly`
  /// - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
  ///
  /// Output only.
  core.int? autoWalkingStrideLengthMm;

  /// The date the user created their account.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Output only.
  Date? membershipStartDate;

  /// Identifier.
  ///
  /// The resource name of this Profile resource. Format: `users/{user}/profile`
  /// Example: `users/1234567890/profile` or `users/me/profile` The {user} ID is
  /// a system-generated Google Health API user ID, a string of 1-63 characters
  /// consisting of lowercase and uppercase letters, numbers, and hyphens. The
  /// literal `me` can also be used to refer to the authenticated user.
  core.String? name;

  /// The user's user configured running stride length, in millimeters.
  ///
  /// The user must consent to one of the following access scopes to access this
  /// field: -
  /// `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.readonly`
  /// - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
  ///
  /// Optional.
  core.int? userConfiguredRunningStrideLengthMm;

  /// The user's user configured walking stride length, in millimeters.
  ///
  /// The user must consent to one of the following access scopes to access this
  /// field: -
  /// `https://www.googleapis.com/auth/googlehealth.activity_and_fitness.readonly`
  /// - `https://www.googleapis.com/auth/googlehealth.activity_and_fitness`
  ///
  /// Optional.
  core.int? userConfiguredWalkingStrideLengthMm;

  Profile({
    this.age,
    this.autoRunningStrideLengthMm,
    this.autoWalkingStrideLengthMm,
    this.membershipStartDate,
    this.name,
    this.userConfiguredRunningStrideLengthMm,
    this.userConfiguredWalkingStrideLengthMm,
  });

  Profile.fromJson(core.Map json_)
    : this(
        age: json_['age'] as core.int?,
        autoRunningStrideLengthMm:
            json_['autoRunningStrideLengthMm'] as core.int?,
        autoWalkingStrideLengthMm:
            json_['autoWalkingStrideLengthMm'] as core.int?,
        membershipStartDate: json_.containsKey('membershipStartDate')
            ? Date.fromJson(
                json_['membershipStartDate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        userConfiguredRunningStrideLengthMm:
            json_['userConfiguredRunningStrideLengthMm'] as core.int?,
        userConfiguredWalkingStrideLengthMm:
            json_['userConfiguredWalkingStrideLengthMm'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final age = this.age;
    final autoRunningStrideLengthMm = this.autoRunningStrideLengthMm;
    final autoWalkingStrideLengthMm = this.autoWalkingStrideLengthMm;
    final membershipStartDate = this.membershipStartDate;
    final name = this.name;
    final userConfiguredRunningStrideLengthMm =
        this.userConfiguredRunningStrideLengthMm;
    final userConfiguredWalkingStrideLengthMm =
        this.userConfiguredWalkingStrideLengthMm;
    return {
      'age': ?age,
      'autoRunningStrideLengthMm': ?autoRunningStrideLengthMm,
      'autoWalkingStrideLengthMm': ?autoWalkingStrideLengthMm,
      'membershipStartDate': ?membershipStartDate,
      'name': ?name,
      'userConfiguredRunningStrideLengthMm':
          ?userConfiguredRunningStrideLengthMm,
      'userConfiguredWalkingStrideLengthMm':
          ?userConfiguredWalkingStrideLengthMm,
    };
  }
}

/// Response containing the list of reconciled DataPoints.
class ReconcileDataPointsResponse {
  /// Data points matching the query
  core.List<ReconciledDataPoint>? dataPoints;

  /// Next page token, empty if the response is complete
  core.String? nextPageToken;

  ReconcileDataPointsResponse({this.dataPoints, this.nextPageToken});

  ReconcileDataPointsResponse.fromJson(core.Map json_)
    : this(
        dataPoints: (json_['dataPoints'] as core.List?)
            ?.map(
              (value) => ReconciledDataPoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataPoints = this.dataPoints;
    final nextPageToken = this.nextPageToken;
    return {'dataPoints': ?dataPoints, 'nextPageToken': ?nextPageToken};
  }
}

/// A reconciled computed or recorded metric.
class ReconciledDataPoint {
  /// Data for points in the `active-minutes` interval data type collection.
  ActiveMinutes? activeMinutes;

  /// Data for points in the `active-zone-minutes` interval data type
  /// collection, measured in minutes.
  ActiveZoneMinutes? activeZoneMinutes;

  /// Data for points in the `activity-level` daily data type collection.
  ActivityLevel? activityLevel;

  /// Data for points in the `altitude` interval data type collection.
  Altitude? altitude;

  /// Data for points in the `body-fat` sample data type collection.
  BodyFat? bodyFat;

  /// Data for points in the `daily-heart-rate-variability` daily data type
  /// collection.
  DailyHeartRateVariability? dailyHeartRateVariability;

  /// Data for points in the `daily-heart-rate-zones` daily data type
  /// collection.
  DailyHeartRateZones? dailyHeartRateZones;

  /// Data for points in the `daily-oxygen-saturation` daily data type
  /// collection.
  DailyOxygenSaturation? dailyOxygenSaturation;

  /// Data for points in the `daily-respiratory-rate` daily data type
  /// collection.
  DailyRespiratoryRate? dailyRespiratoryRate;

  /// Data for points in the `daily-resting-heart-rate` daily data type
  /// collection.
  DailyRestingHeartRate? dailyRestingHeartRate;

  /// Data for points in the `daily-sleep-temperature-derivations` daily data
  /// type collection.
  DailySleepTemperatureDerivations? dailySleepTemperatureDerivations;

  /// Data for points in the `daily-vo2-max` daily data type collection.
  DailyVO2Max? dailyVo2Max;

  /// Identifier.
  ///
  /// Data point name, only supported for the subset of identifiable data types.
  /// For the majority of the data types, individual data points do not need to
  /// be identified and this field would be empty. Format:
  /// `users/{user}/dataTypes/{data_type}/dataPoints/{data_point}` Example:
  /// `users/abcd1234/dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef`
  /// The `{user}` ID is a system-generated identifier, as described in
  /// Identity.health_user_id. The `{data_type}` ID corresponds to the
  /// kebab-case version of the field names in the DataPoint data union field,
  /// e.g. `total-calories` for the `total_calories` field. The `{data_point}`
  /// ID can be client-provided or system-generated. If client-provided, it must
  /// be a string of 4-63 characters, containing only lowercase letters,
  /// numbers, and hyphens.
  core.String? dataPointName;

  /// Data for points in the `distance` interval data type collection.
  Distance? distance;

  /// Data for points in the `exercise` session data type collection.
  Exercise? exercise;

  /// Data for points in the `floors` interval data type collection.
  Floors? floors;

  /// Data for points in the `heart-rate` sample data type collection.
  HeartRate? heartRate;

  /// Data for points in the `heart-rate-variability` sample data type
  /// collection.
  HeartRateVariability? heartRateVariability;

  /// Data for points in the `height` sample data type collection.
  Height? height;

  /// Data for points in the `hydration-log` session data type collection.
  HydrationLog? hydrationLog;

  /// Data for points in the `oxygen-saturation` sample data type collection.
  OxygenSaturation? oxygenSaturation;

  /// Data for points in the `respiratory-rate-sleep-summary` sample data type
  /// collection.
  RespiratoryRateSleepSummary? respiratoryRateSleepSummary;

  /// Data for points in the `run-vo2-max` sample data type collection.
  RunVO2Max? runVo2Max;

  /// Data for points in the `sedentary-period` interval data type collection.
  SedentaryPeriod? sedentaryPeriod;

  /// Data for points in the `sleep` session data type collection.
  Sleep? sleep;

  /// Data for points in the `steps` interval data type collection.
  Steps? steps;

  /// Data for points in the `swim-lengths-data` interval data type collection.
  SwimLengthsData? swimLengthsData;

  /// Data for points in the `time-in-heart-rate-zone` interval data type
  /// collection.
  TimeInHeartRateZone? timeInHeartRateZone;

  /// Data for points in the `vo2-max` sample data type collection.
  VO2Max? vo2Max;

  /// Data for points in the `weight` sample data type collection.
  Weight? weight;

  ReconciledDataPoint({
    this.activeMinutes,
    this.activeZoneMinutes,
    this.activityLevel,
    this.altitude,
    this.bodyFat,
    this.dailyHeartRateVariability,
    this.dailyHeartRateZones,
    this.dailyOxygenSaturation,
    this.dailyRespiratoryRate,
    this.dailyRestingHeartRate,
    this.dailySleepTemperatureDerivations,
    this.dailyVo2Max,
    this.dataPointName,
    this.distance,
    this.exercise,
    this.floors,
    this.heartRate,
    this.heartRateVariability,
    this.height,
    this.hydrationLog,
    this.oxygenSaturation,
    this.respiratoryRateSleepSummary,
    this.runVo2Max,
    this.sedentaryPeriod,
    this.sleep,
    this.steps,
    this.swimLengthsData,
    this.timeInHeartRateZone,
    this.vo2Max,
    this.weight,
  });

  ReconciledDataPoint.fromJson(core.Map json_)
    : this(
        activeMinutes: json_.containsKey('activeMinutes')
            ? ActiveMinutes.fromJson(
                json_['activeMinutes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        activeZoneMinutes: json_.containsKey('activeZoneMinutes')
            ? ActiveZoneMinutes.fromJson(
                json_['activeZoneMinutes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        activityLevel: json_.containsKey('activityLevel')
            ? ActivityLevel.fromJson(
                json_['activityLevel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        altitude: json_.containsKey('altitude')
            ? Altitude.fromJson(
                json_['altitude'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bodyFat: json_.containsKey('bodyFat')
            ? BodyFat.fromJson(
                json_['bodyFat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyHeartRateVariability:
            json_.containsKey('dailyHeartRateVariability')
            ? DailyHeartRateVariability.fromJson(
                json_['dailyHeartRateVariability']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyHeartRateZones: json_.containsKey('dailyHeartRateZones')
            ? DailyHeartRateZones.fromJson(
                json_['dailyHeartRateZones']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyOxygenSaturation: json_.containsKey('dailyOxygenSaturation')
            ? DailyOxygenSaturation.fromJson(
                json_['dailyOxygenSaturation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyRespiratoryRate: json_.containsKey('dailyRespiratoryRate')
            ? DailyRespiratoryRate.fromJson(
                json_['dailyRespiratoryRate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyRestingHeartRate: json_.containsKey('dailyRestingHeartRate')
            ? DailyRestingHeartRate.fromJson(
                json_['dailyRestingHeartRate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailySleepTemperatureDerivations:
            json_.containsKey('dailySleepTemperatureDerivations')
            ? DailySleepTemperatureDerivations.fromJson(
                json_['dailySleepTemperatureDerivations']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dailyVo2Max: json_.containsKey('dailyVo2Max')
            ? DailyVO2Max.fromJson(
                json_['dailyVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataPointName: json_['dataPointName'] as core.String?,
        distance: json_.containsKey('distance')
            ? Distance.fromJson(
                json_['distance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        exercise: json_.containsKey('exercise')
            ? Exercise.fromJson(
                json_['exercise'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        floors: json_.containsKey('floors')
            ? Floors.fromJson(
                json_['floors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRate: json_.containsKey('heartRate')
            ? HeartRate.fromJson(
                json_['heartRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRateVariability: json_.containsKey('heartRateVariability')
            ? HeartRateVariability.fromJson(
                json_['heartRateVariability']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        height: json_.containsKey('height')
            ? Height.fromJson(
                json_['height'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hydrationLog: json_.containsKey('hydrationLog')
            ? HydrationLog.fromJson(
                json_['hydrationLog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oxygenSaturation: json_.containsKey('oxygenSaturation')
            ? OxygenSaturation.fromJson(
                json_['oxygenSaturation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        respiratoryRateSleepSummary:
            json_.containsKey('respiratoryRateSleepSummary')
            ? RespiratoryRateSleepSummary.fromJson(
                json_['respiratoryRateSleepSummary']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        runVo2Max: json_.containsKey('runVo2Max')
            ? RunVO2Max.fromJson(
                json_['runVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sedentaryPeriod: json_.containsKey('sedentaryPeriod')
            ? SedentaryPeriod.fromJson(
                json_['sedentaryPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sleep: json_.containsKey('sleep')
            ? Sleep.fromJson(
                json_['sleep'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        steps: json_.containsKey('steps')
            ? Steps.fromJson(
                json_['steps'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        swimLengthsData: json_.containsKey('swimLengthsData')
            ? SwimLengthsData.fromJson(
                json_['swimLengthsData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeInHeartRateZone: json_.containsKey('timeInHeartRateZone')
            ? TimeInHeartRateZone.fromJson(
                json_['timeInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        vo2Max: json_.containsKey('vo2Max')
            ? VO2Max.fromJson(
                json_['vo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        weight: json_.containsKey('weight')
            ? Weight.fromJson(
                json_['weight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutes = this.activeMinutes;
    final activeZoneMinutes = this.activeZoneMinutes;
    final activityLevel = this.activityLevel;
    final altitude = this.altitude;
    final bodyFat = this.bodyFat;
    final dailyHeartRateVariability = this.dailyHeartRateVariability;
    final dailyHeartRateZones = this.dailyHeartRateZones;
    final dailyOxygenSaturation = this.dailyOxygenSaturation;
    final dailyRespiratoryRate = this.dailyRespiratoryRate;
    final dailyRestingHeartRate = this.dailyRestingHeartRate;
    final dailySleepTemperatureDerivations =
        this.dailySleepTemperatureDerivations;
    final dailyVo2Max = this.dailyVo2Max;
    final dataPointName = this.dataPointName;
    final distance = this.distance;
    final exercise = this.exercise;
    final floors = this.floors;
    final heartRate = this.heartRate;
    final heartRateVariability = this.heartRateVariability;
    final height = this.height;
    final hydrationLog = this.hydrationLog;
    final oxygenSaturation = this.oxygenSaturation;
    final respiratoryRateSleepSummary = this.respiratoryRateSleepSummary;
    final runVo2Max = this.runVo2Max;
    final sedentaryPeriod = this.sedentaryPeriod;
    final sleep = this.sleep;
    final steps = this.steps;
    final swimLengthsData = this.swimLengthsData;
    final timeInHeartRateZone = this.timeInHeartRateZone;
    final vo2Max = this.vo2Max;
    final weight = this.weight;
    return {
      'activeMinutes': ?activeMinutes,
      'activeZoneMinutes': ?activeZoneMinutes,
      'activityLevel': ?activityLevel,
      'altitude': ?altitude,
      'bodyFat': ?bodyFat,
      'dailyHeartRateVariability': ?dailyHeartRateVariability,
      'dailyHeartRateZones': ?dailyHeartRateZones,
      'dailyOxygenSaturation': ?dailyOxygenSaturation,
      'dailyRespiratoryRate': ?dailyRespiratoryRate,
      'dailyRestingHeartRate': ?dailyRestingHeartRate,
      'dailySleepTemperatureDerivations': ?dailySleepTemperatureDerivations,
      'dailyVo2Max': ?dailyVo2Max,
      'dataPointName': ?dataPointName,
      'distance': ?distance,
      'exercise': ?exercise,
      'floors': ?floors,
      'heartRate': ?heartRate,
      'heartRateVariability': ?heartRateVariability,
      'height': ?height,
      'hydrationLog': ?hydrationLog,
      'oxygenSaturation': ?oxygenSaturation,
      'respiratoryRateSleepSummary': ?respiratoryRateSleepSummary,
      'runVo2Max': ?runVo2Max,
      'sedentaryPeriod': ?sedentaryPeriod,
      'sleep': ?sleep,
      'steps': ?steps,
      'swimLengthsData': ?swimLengthsData,
      'timeInHeartRateZone': ?timeInHeartRateZone,
      'vo2Max': ?vo2Max,
      'weight': ?weight,
    };
  }
}

/// Records respiratory rate details during sleep.
///
/// Can have multiple per day if the user sleeps multiple times.
class RespiratoryRateSleepSummary {
  /// Respiratory rate statistics for deep sleep.
  ///
  /// Optional.
  RespiratoryRateSleepSummaryStatistics? deepSleepStats;

  /// Full respiratory rate statistics.
  ///
  /// Required.
  RespiratoryRateSleepSummaryStatistics? fullSleepStats;

  /// Respiratory rate statistics for light sleep.
  ///
  /// Optional.
  RespiratoryRateSleepSummaryStatistics? lightSleepStats;

  /// Respiratory rate statistics for REM sleep.
  ///
  /// Optional.
  RespiratoryRateSleepSummaryStatistics? remSleepStats;

  /// The time at which respiratory rate was measured.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  RespiratoryRateSleepSummary({
    this.deepSleepStats,
    this.fullSleepStats,
    this.lightSleepStats,
    this.remSleepStats,
    this.sampleTime,
  });

  RespiratoryRateSleepSummary.fromJson(core.Map json_)
    : this(
        deepSleepStats: json_.containsKey('deepSleepStats')
            ? RespiratoryRateSleepSummaryStatistics.fromJson(
                json_['deepSleepStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fullSleepStats: json_.containsKey('fullSleepStats')
            ? RespiratoryRateSleepSummaryStatistics.fromJson(
                json_['fullSleepStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lightSleepStats: json_.containsKey('lightSleepStats')
            ? RespiratoryRateSleepSummaryStatistics.fromJson(
                json_['lightSleepStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        remSleepStats: json_.containsKey('remSleepStats')
            ? RespiratoryRateSleepSummaryStatistics.fromJson(
                json_['remSleepStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deepSleepStats = this.deepSleepStats;
    final fullSleepStats = this.fullSleepStats;
    final lightSleepStats = this.lightSleepStats;
    final remSleepStats = this.remSleepStats;
    final sampleTime = this.sampleTime;
    return {
      'deepSleepStats': ?deepSleepStats,
      'fullSleepStats': ?fullSleepStats,
      'lightSleepStats': ?lightSleepStats,
      'remSleepStats': ?remSleepStats,
      'sampleTime': ?sampleTime,
    };
  }
}

/// Respiratory rate statistics for a given sleep stage.
class RespiratoryRateSleepSummaryStatistics {
  /// Average breaths per minute.
  ///
  /// Required.
  core.double? breathsPerMinute;

  /// How trustworthy the data is for the computation.
  ///
  /// Optional.
  core.double? signalToNoise;

  /// Standard deviation of the respiratory rate during sleep.
  ///
  /// Optional.
  core.double? standardDeviation;

  RespiratoryRateSleepSummaryStatistics({
    this.breathsPerMinute,
    this.signalToNoise,
    this.standardDeviation,
  });

  RespiratoryRateSleepSummaryStatistics.fromJson(core.Map json_)
    : this(
        breathsPerMinute: (json_['breathsPerMinute'] as core.num?)?.toDouble(),
        signalToNoise: (json_['signalToNoise'] as core.num?)?.toDouble(),
        standardDeviation: (json_['standardDeviation'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final breathsPerMinute = this.breathsPerMinute;
    final signalToNoise = this.signalToNoise;
    final standardDeviation = this.standardDeviation;
    return {
      'breathsPerMinute': ?breathsPerMinute,
      'signalToNoise': ?signalToNoise,
      'standardDeviation': ?standardDeviation,
    };
  }
}

/// Represents the rollup value for the daily resting heart rate data type.
class RestingHeartRatePersonalRangeRollupValue {
  /// The upper bound of the user's daily resting heart rate personal range.
  core.double? beatsPerMinuteMax;

  /// The lower bound of the user's daily resting heart rate personal range.
  core.double? beatsPerMinuteMin;

  RestingHeartRatePersonalRangeRollupValue({
    this.beatsPerMinuteMax,
    this.beatsPerMinuteMin,
  });

  RestingHeartRatePersonalRangeRollupValue.fromJson(core.Map json_)
    : this(
        beatsPerMinuteMax: (json_['beatsPerMinuteMax'] as core.num?)
            ?.toDouble(),
        beatsPerMinuteMin: (json_['beatsPerMinuteMin'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final beatsPerMinuteMax = this.beatsPerMinuteMax;
    final beatsPerMinuteMin = this.beatsPerMinuteMin;
    return {
      'beatsPerMinuteMax': ?beatsPerMinuteMax,
      'beatsPerMinuteMin': ?beatsPerMinuteMin,
    };
  }
}

/// Request to roll up data points by physical time intervals.
class RollUpDataPointsRequest {
  /// The data source family name to roll up.
  ///
  /// If empty, data points from all available data sources will be rolled up.
  /// Format: `users/me/dataSourceFamilies/{data_source_family}` The supported
  /// values are: - `users/me/dataSourceFamilies/all-sources` - default value -
  /// `users/me/dataSourceFamilies/google-wearables` - tracker devices -
  /// `users/me/dataSourceFamilies/google-sources` - Google first party sources
  ///
  /// Optional.
  core.String? dataSourceFamily;

  /// The maximum number of data points to return.
  ///
  /// If unspecified, at most 1440 data points will be returned. The maximum
  /// page size is 10000; values above that will be truncated accordingly.
  ///
  /// Optional.
  core.int? pageSize;

  /// The next_page_token from a previous request, if any.
  ///
  /// All other request fields need to be the same as in the initial request
  /// when the page token is specified.
  ///
  /// Optional.
  core.String? pageToken;

  /// Closed-open range of data points that will be rolled up.
  ///
  /// The maximum range for `calories-in-heart-rate-zone`, `heart-rate`,
  /// `active-minutes` and `total-calories` is 14 days. The maximum range for
  /// all other data types is 90 days.
  ///
  /// Required.
  Interval? range;

  /// The size of the time window to group data points into before applying the
  /// aggregation functions.
  ///
  /// Required.
  core.String? windowSize;

  RollUpDataPointsRequest({
    this.dataSourceFamily,
    this.pageSize,
    this.pageToken,
    this.range,
    this.windowSize,
  });

  RollUpDataPointsRequest.fromJson(core.Map json_)
    : this(
        dataSourceFamily: json_['dataSourceFamily'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        range: json_.containsKey('range')
            ? Interval.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        windowSize: json_['windowSize'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceFamily = this.dataSourceFamily;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final range = this.range;
    final windowSize = this.windowSize;
    return {
      'dataSourceFamily': ?dataSourceFamily,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'range': ?range,
      'windowSize': ?windowSize,
    };
  }
}

/// Response containing the list of rolled up data points.
class RollUpDataPointsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Values for each aggregation time window.
  core.List<RollupDataPoint>? rollupDataPoints;

  RollUpDataPointsResponse({this.nextPageToken, this.rollupDataPoints});

  RollUpDataPointsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rollupDataPoints: (json_['rollupDataPoints'] as core.List?)
            ?.map(
              (value) => RollupDataPoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final rollupDataPoints = this.rollupDataPoints;
    return {
      'nextPageToken': ?nextPageToken,
      'rollupDataPoints': ?rollupDataPoints,
    };
  }
}

/// Value of a rollup for a single physical time interval (aggregation window)
class RollupDataPoint {
  /// Returned by default when rolling up data points from the `active-minutes`
  /// data type, or when requested explicitly using the `active-minutes` rollup
  /// type identifier.
  ActiveMinutesRollupValue? activeMinutes;

  /// Returned by default when rolling up data points from the
  /// `active-zone-minutes` data type, or when requested explicitly using the
  /// `active-zone-minutes` rollup type identifier.
  ActiveZoneMinutesRollupValue? activeZoneMinutes;

  /// Returned by default when rolling up data points from the `activity-level`
  /// data type, or when requested explicitly using the `activity-level` rollup
  /// type identifier.
  ActivityLevelRollupValue? activityLevel;

  /// Returned by default when rolling up data points from the `altitude` data
  /// type, or when requested explicitly using the `altitude` rollup type
  /// identifier.
  AltitudeRollupValue? altitude;

  /// Returned by default when rolling up data points from the `body-fat` data
  /// type, or when requested explicitly using the `body-fat` rollup type
  /// identifier.
  BodyFatRollupValue? bodyFat;

  /// Returned by default when rolling up data points from the
  /// `calories-in-heart-rate-zone` data type, or when requested explicitly
  /// using the `calories-in-heart-rate-zone` rollup type identifier.
  CaloriesInHeartRateZoneRollupValue? caloriesInHeartRateZone;

  /// Returned by default when rolling up data points from the `distance` data
  /// type, or when requested explicitly using the `distance` rollup type
  /// identifier.
  DistanceRollupValue? distance;

  /// End time of the window this value aggregates over
  core.String? endTime;

  /// Returned by default when rolling up data points from the `floors` data
  /// type, or when requested explicitly using the `floors` rollup type
  /// identifier.
  FloorsRollupValue? floors;

  /// Returned by default when rolling up data points from the `heart-rate` data
  /// type, or when requested explicitly using the `heart-rate` rollup type
  /// identifier.
  HeartRateRollupValue? heartRate;

  /// Returned by default when rolling up data points from the `hydration-log`
  /// data type, or when requested explicitly using the `hydration-log` rollup
  /// type identifier.
  HydrationLogRollupValue? hydrationLog;

  /// Returned by default when rolling up data points from the `run-vo2-max`
  /// data type, or when requested explicitly using the `run-vo2-max` rollup
  /// type identifier.
  RunVO2MaxRollupValue? runVo2Max;

  /// Returned by default when rolling up data points from the
  /// `sedentary-period` data type, or when requested explicitly using the
  /// `sedentary-period` rollup type identifier.
  SedentaryPeriodRollupValue? sedentaryPeriod;

  /// Start time of the window this value aggregates over
  core.String? startTime;

  /// Returned by default when rolling up data points from the `steps` data
  /// type, or when requested explicitly using the `steps` rollup type
  /// identifier.
  StepsRollupValue? steps;

  /// Returned by default when rolling up data points from the
  /// `swim-lengths-data` data type, or when requested explicitly using the
  /// `swim-lengths-data` rollup type identifier.
  SwimLengthsDataRollupValue? swimLengthsData;

  /// Returned by default when rolling up data points from the
  /// `time-in-heart-rate-zone` data type, or when requested explicitly using
  /// the `time-in-heart-rate-zone` rollup type identifier.
  TimeInHeartRateZoneRollupValue? timeInHeartRateZone;

  /// Returned by default when rolling up data points from the `total-calories`
  /// data type, or when requested explicitly using the `total-calories` rollup
  /// type identifier.
  TotalCaloriesRollupValue? totalCalories;

  /// Returned by default when rolling up data points from the `weight` data
  /// type, or when requested explicitly using the `weight` rollup type
  /// identifier.
  WeightRollupValue? weight;

  RollupDataPoint({
    this.activeMinutes,
    this.activeZoneMinutes,
    this.activityLevel,
    this.altitude,
    this.bodyFat,
    this.caloriesInHeartRateZone,
    this.distance,
    this.endTime,
    this.floors,
    this.heartRate,
    this.hydrationLog,
    this.runVo2Max,
    this.sedentaryPeriod,
    this.startTime,
    this.steps,
    this.swimLengthsData,
    this.timeInHeartRateZone,
    this.totalCalories,
    this.weight,
  });

  RollupDataPoint.fromJson(core.Map json_)
    : this(
        activeMinutes: json_.containsKey('activeMinutes')
            ? ActiveMinutesRollupValue.fromJson(
                json_['activeMinutes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        activeZoneMinutes: json_.containsKey('activeZoneMinutes')
            ? ActiveZoneMinutesRollupValue.fromJson(
                json_['activeZoneMinutes']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        activityLevel: json_.containsKey('activityLevel')
            ? ActivityLevelRollupValue.fromJson(
                json_['activityLevel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        altitude: json_.containsKey('altitude')
            ? AltitudeRollupValue.fromJson(
                json_['altitude'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bodyFat: json_.containsKey('bodyFat')
            ? BodyFatRollupValue.fromJson(
                json_['bodyFat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        caloriesInHeartRateZone: json_.containsKey('caloriesInHeartRateZone')
            ? CaloriesInHeartRateZoneRollupValue.fromJson(
                json_['caloriesInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        distance: json_.containsKey('distance')
            ? DistanceRollupValue.fromJson(
                json_['distance'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endTime: json_['endTime'] as core.String?,
        floors: json_.containsKey('floors')
            ? FloorsRollupValue.fromJson(
                json_['floors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heartRate: json_.containsKey('heartRate')
            ? HeartRateRollupValue.fromJson(
                json_['heartRate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hydrationLog: json_.containsKey('hydrationLog')
            ? HydrationLogRollupValue.fromJson(
                json_['hydrationLog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        runVo2Max: json_.containsKey('runVo2Max')
            ? RunVO2MaxRollupValue.fromJson(
                json_['runVo2Max'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sedentaryPeriod: json_.containsKey('sedentaryPeriod')
            ? SedentaryPeriodRollupValue.fromJson(
                json_['sedentaryPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startTime: json_['startTime'] as core.String?,
        steps: json_.containsKey('steps')
            ? StepsRollupValue.fromJson(
                json_['steps'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        swimLengthsData: json_.containsKey('swimLengthsData')
            ? SwimLengthsDataRollupValue.fromJson(
                json_['swimLengthsData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeInHeartRateZone: json_.containsKey('timeInHeartRateZone')
            ? TimeInHeartRateZoneRollupValue.fromJson(
                json_['timeInHeartRateZone']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        totalCalories: json_.containsKey('totalCalories')
            ? TotalCaloriesRollupValue.fromJson(
                json_['totalCalories'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        weight: json_.containsKey('weight')
            ? WeightRollupValue.fromJson(
                json_['weight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeMinutes = this.activeMinutes;
    final activeZoneMinutes = this.activeZoneMinutes;
    final activityLevel = this.activityLevel;
    final altitude = this.altitude;
    final bodyFat = this.bodyFat;
    final caloriesInHeartRateZone = this.caloriesInHeartRateZone;
    final distance = this.distance;
    final endTime = this.endTime;
    final floors = this.floors;
    final heartRate = this.heartRate;
    final hydrationLog = this.hydrationLog;
    final runVo2Max = this.runVo2Max;
    final sedentaryPeriod = this.sedentaryPeriod;
    final startTime = this.startTime;
    final steps = this.steps;
    final swimLengthsData = this.swimLengthsData;
    final timeInHeartRateZone = this.timeInHeartRateZone;
    final totalCalories = this.totalCalories;
    final weight = this.weight;
    return {
      'activeMinutes': ?activeMinutes,
      'activeZoneMinutes': ?activeZoneMinutes,
      'activityLevel': ?activityLevel,
      'altitude': ?altitude,
      'bodyFat': ?bodyFat,
      'caloriesInHeartRateZone': ?caloriesInHeartRateZone,
      'distance': ?distance,
      'endTime': ?endTime,
      'floors': ?floors,
      'heartRate': ?heartRate,
      'hydrationLog': ?hydrationLog,
      'runVo2Max': ?runVo2Max,
      'sedentaryPeriod': ?sedentaryPeriod,
      'startTime': ?startTime,
      'steps': ?steps,
      'swimLengthsData': ?swimLengthsData,
      'timeInHeartRateZone': ?timeInHeartRateZone,
      'totalCalories': ?totalCalories,
      'weight': ?weight,
    };
  }
}

/// VO2 max value calculated based on the user's running activity.
///
/// Value stored in ml/kg/min.
class RunVO2Max {
  /// Run VO2 max value in ml/kg/min.
  ///
  /// Required.
  core.double? runVo2Max;

  /// The time at which the metric was measured.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  RunVO2Max({this.runVo2Max, this.sampleTime});

  RunVO2Max.fromJson(core.Map json_)
    : this(
        runVo2Max: (json_['runVo2Max'] as core.num?)?.toDouble(),
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final runVo2Max = this.runVo2Max;
    final sampleTime = this.sampleTime;
    return {'runVo2Max': ?runVo2Max, 'sampleTime': ?sampleTime};
  }
}

/// Represents the result of the rollup of the user's daily heart rate
/// variability personal range.
class RunVO2MaxRollupValue {
  /// Average value of run VO2 max in the interval.
  core.double? rateAvg;

  /// Maximum value of run VO2 max in the interval.
  core.double? rateMax;

  /// Minimum value of run VO2 max in the interval..
  core.double? rateMin;

  RunVO2MaxRollupValue({this.rateAvg, this.rateMax, this.rateMin});

  RunVO2MaxRollupValue.fromJson(core.Map json_)
    : this(
        rateAvg: (json_['rateAvg'] as core.num?)?.toDouble(),
        rateMax: (json_['rateMax'] as core.num?)?.toDouble(),
        rateMin: (json_['rateMin'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rateAvg = this.rateAvg;
    final rateMax = this.rateMax;
    final rateMin = this.rateMin;
    return {'rateAvg': ?rateAvg, 'rateMax': ?rateMax, 'rateMin': ?rateMin};
  }
}

/// SedentaryPeriod SedentaryPeriod data represents the periods of time that the
/// user was sedentary (i.e. not moving while wearing the device).
class SedentaryPeriod {
  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  SedentaryPeriod({this.interval});

  SedentaryPeriod.fromJson(core.Map json_)
    : this(
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final interval = this.interval;
    return {'interval': ?interval};
  }
}

/// Represents the result of the rollup of the user's sedentary periods.
class SedentaryPeriodRollupValue {
  /// The total time user spent sedentary during the interval.
  core.String? durationSum;

  SedentaryPeriodRollupValue({this.durationSum});

  SedentaryPeriodRollupValue.fromJson(core.Map json_)
    : this(durationSum: json_['durationSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final durationSum = this.durationSum;
    return {'durationSum': ?durationSum};
  }
}

/// Represents a time interval of session data point, which bundles multiple
/// observed metrics together.
class SessionTimeInterval {
  /// Session end time in civil time in the timezone the subject is in at the
  /// end of the session.
  ///
  /// Output only.
  CivilDateTime? civilEndTime;

  /// Session start time in civil time in the timezone the subject is in at the
  /// start of the session.
  ///
  /// Output only.
  CivilDateTime? civilStartTime;

  /// The end time of the observed session.
  ///
  /// Required.
  core.String? endTime;

  /// The offset of the user's local time at the end of the session relative to
  /// the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? endUtcOffset;

  /// The start time of the observed session.
  ///
  /// Required.
  core.String? startTime;

  /// The offset of the user's local time at the start of the session relative
  /// to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? startUtcOffset;

  SessionTimeInterval({
    this.civilEndTime,
    this.civilStartTime,
    this.endTime,
    this.endUtcOffset,
    this.startTime,
    this.startUtcOffset,
  });

  SessionTimeInterval.fromJson(core.Map json_)
    : this(
        civilEndTime: json_.containsKey('civilEndTime')
            ? CivilDateTime.fromJson(
                json_['civilEndTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        civilStartTime: json_.containsKey('civilStartTime')
            ? CivilDateTime.fromJson(
                json_['civilStartTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endTime: json_['endTime'] as core.String?,
        endUtcOffset: json_['endUtcOffset'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        startUtcOffset: json_['startUtcOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final civilEndTime = this.civilEndTime;
    final civilStartTime = this.civilStartTime;
    final endTime = this.endTime;
    final endUtcOffset = this.endUtcOffset;
    final startTime = this.startTime;
    final startUtcOffset = this.startUtcOffset;
    return {
      'civilEndTime': ?civilEndTime,
      'civilStartTime': ?civilStartTime,
      'endTime': ?endTime,
      'endUtcOffset': ?endUtcOffset,
      'startTime': ?startTime,
      'startUtcOffset': ?startUtcOffset,
    };
  }
}

/// Settings details.
class Settings {
  /// True if the user's stride length is determined automatically.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  core.bool? autoStrideEnabled;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISTANCE_UNIT_UNSPECIFIED" : Distance unit is not specified.
  /// - "DISTANCE_UNIT_MILES" : Distance unit is miles.
  /// - "DISTANCE_UNIT_KILOMETERS" : Distance unit is kilometers.
  core.String? distanceUnit;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GLUCOSE_UNIT_UNSPECIFIED" : Glucose unit is not specified.
  /// - "GLUCOSE_UNIT_MG_DL" : Glucose unit is mg/dL.
  /// - "GLUCOSE_UNIT_MMOL_L" : Glucose unit is mmol/l.
  core.String? glucoseUnit;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HEIGHT_UNIT_UNSPECIFIED" : Height unit is not specified.
  /// - "HEIGHT_UNIT_INCHES" : Height unit is inches.
  /// - "HEIGHT_UNIT_CENTIMETERS" : Height unit is cm.
  core.String? heightUnit;

  /// The locale defined in the user's account settings.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  core.String? languageLocale;

  /// Identifier.
  ///
  /// The resource name of this Settings resource. Format:
  /// `users/{user}/settings` Example: `users/1234567890/settings` or
  /// `users/me/settings` The {user} ID is a system-generated Google Health API
  /// user ID, a string of 1-63 characters consisting of lowercase and uppercase
  /// letters, numbers, and hyphens. The literal `me` can also be used to refer
  /// to the authenticated user.
  core.String? name;

  /// The stride length type defined in the user's account settings for running.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STRIDE_LENGTH_TYPE_UNSPECIFIED" : Stride length type is not specified.
  /// - "STRIDE_LENGTH_TYPE_DEFAULT" : Stride length type is computed based on
  /// the user's gender and height.
  /// - "STRIDE_LENGTH_TYPE_MANUAL" : Stride length type is manually set by the
  /// user.
  /// - "STRIDE_LENGTH_TYPE_AUTO" : Stride length type is determined
  /// automatically.
  core.String? strideLengthRunningType;

  /// The stride length type defined in the user's account settings for walking.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STRIDE_LENGTH_TYPE_UNSPECIFIED" : Stride length type is not specified.
  /// - "STRIDE_LENGTH_TYPE_DEFAULT" : Stride length type is computed based on
  /// the user's gender and height.
  /// - "STRIDE_LENGTH_TYPE_MANUAL" : Stride length type is manually set by the
  /// user.
  /// - "STRIDE_LENGTH_TYPE_AUTO" : Stride length type is determined
  /// automatically.
  core.String? strideLengthWalkingType;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SWIM_UNIT_UNSPECIFIED" : Swim unit is not specified.
  /// - "SWIM_UNIT_METERS" : Swim unit is meters.
  /// - "SWIM_UNIT_YARDS" : Swim unit is yards.
  core.String? swimUnit;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TEMPERATURE_UNIT_UNSPECIFIED" : Temperature unit is not specified.
  /// - "TEMPERATURE_UNIT_CELSIUS" : Temperature unit is Celsius.
  /// - "TEMPERATURE_UNIT_FAHRENHEIT" : Temperature unit is Fahrenheit.
  core.String? temperatureUnit;

  /// The timezone defined in the user's account settings.
  ///
  /// This follows the IANA
  /// [Time Zone Database](https://www.iana.org/time-zones). Updates to this
  /// field are currently not supported.
  ///
  /// Optional.
  core.String? timeZone;

  /// The user's timezone offset relative to UTC.
  ///
  /// Updates to this field are currently not supported.
  ///
  /// Optional.
  core.String? utcOffset;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WATER_UNIT_UNSPECIFIED" : Water unit is not specified.
  /// - "WATER_UNIT_ML" : Water unit is milliliters.
  /// - "WATER_UNIT_FL_OZ" : Water unit is fluid ounces.
  /// - "WATER_UNIT_CUP" : Water unit is cups.
  core.String? waterUnit;

  /// The measurement unit defined in the user's account settings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WEIGHT_UNIT_UNSPECIFIED" : Weight unit is not specified.
  /// - "WEIGHT_UNIT_POUNDS" : Weight unit is pounds.
  /// - "WEIGHT_UNIT_STONE" : Weight unit is stones.
  /// - "WEIGHT_UNIT_KILOGRAMS" : Weight unit is kilograms.
  core.String? weightUnit;

  Settings({
    this.autoStrideEnabled,
    this.distanceUnit,
    this.glucoseUnit,
    this.heightUnit,
    this.languageLocale,
    this.name,
    this.strideLengthRunningType,
    this.strideLengthWalkingType,
    this.swimUnit,
    this.temperatureUnit,
    this.timeZone,
    this.utcOffset,
    this.waterUnit,
    this.weightUnit,
  });

  Settings.fromJson(core.Map json_)
    : this(
        autoStrideEnabled: json_['autoStrideEnabled'] as core.bool?,
        distanceUnit: json_['distanceUnit'] as core.String?,
        glucoseUnit: json_['glucoseUnit'] as core.String?,
        heightUnit: json_['heightUnit'] as core.String?,
        languageLocale: json_['languageLocale'] as core.String?,
        name: json_['name'] as core.String?,
        strideLengthRunningType:
            json_['strideLengthRunningType'] as core.String?,
        strideLengthWalkingType:
            json_['strideLengthWalkingType'] as core.String?,
        swimUnit: json_['swimUnit'] as core.String?,
        temperatureUnit: json_['temperatureUnit'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        utcOffset: json_['utcOffset'] as core.String?,
        waterUnit: json_['waterUnit'] as core.String?,
        weightUnit: json_['weightUnit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoStrideEnabled = this.autoStrideEnabled;
    final distanceUnit = this.distanceUnit;
    final glucoseUnit = this.glucoseUnit;
    final heightUnit = this.heightUnit;
    final languageLocale = this.languageLocale;
    final name = this.name;
    final strideLengthRunningType = this.strideLengthRunningType;
    final strideLengthWalkingType = this.strideLengthWalkingType;
    final swimUnit = this.swimUnit;
    final temperatureUnit = this.temperatureUnit;
    final timeZone = this.timeZone;
    final utcOffset = this.utcOffset;
    final waterUnit = this.waterUnit;
    final weightUnit = this.weightUnit;
    return {
      'autoStrideEnabled': ?autoStrideEnabled,
      'distanceUnit': ?distanceUnit,
      'glucoseUnit': ?glucoseUnit,
      'heightUnit': ?heightUnit,
      'languageLocale': ?languageLocale,
      'name': ?name,
      'strideLengthRunningType': ?strideLengthRunningType,
      'strideLengthWalkingType': ?strideLengthWalkingType,
      'swimUnit': ?swimUnit,
      'temperatureUnit': ?temperatureUnit,
      'timeZone': ?timeZone,
      'utcOffset': ?utcOffset,
      'waterUnit': ?waterUnit,
      'weightUnit': ?weightUnit,
    };
  }
}

/// A sleep session possibly including stages.
class Sleep {
  /// Creation time of this sleep observation.
  ///
  /// Output only.
  core.String? createTime;

  /// Observed sleep interval.
  ///
  /// Required.
  SessionTimeInterval? interval;

  /// Sleep metadata: processing, main, manually edited, stages status.
  ///
  /// Optional.
  SleepMetadata? metadata;

  /// “Out of bed” segments that can overlap with sleep stages.
  ///
  /// Optional.
  core.List<OutOfBedSegment>? outOfBedSegments;

  /// List of non-overlapping contiguous sleep stage segments that cover the
  /// sleep period.
  ///
  /// Optional.
  core.List<SleepStage>? stages;

  /// Sleep summary: metrics and stages summary.
  ///
  /// Output only.
  SleepSummary? summary;

  /// SleepType: classic or stages.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SLEEP_TYPE_UNSPECIFIED" : Sleep type is unspecified.
  /// - "CLASSIC" : Classic sleep is a sleep with 3 stages types: AWAKE,
  /// RESTLESS and ASLEEP.
  /// - "STAGES" : On top of "classic" sleep stages an additional processing
  /// pass can calculate stages more precisely, overwriting the prior stages
  /// with AWAKE, LIGHT, REM and DEEP.
  core.String? type;

  /// Last update time of this sleep observation.
  ///
  /// Output only.
  core.String? updateTime;

  Sleep({
    this.createTime,
    this.interval,
    this.metadata,
    this.outOfBedSegments,
    this.stages,
    this.summary,
    this.type,
    this.updateTime,
  });

  Sleep.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        interval: json_.containsKey('interval')
            ? SessionTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? SleepMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        outOfBedSegments: (json_['outOfBedSegments'] as core.List?)
            ?.map(
              (value) => OutOfBedSegment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        stages: (json_['stages'] as core.List?)
            ?.map(
              (value) => SleepStage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        summary: json_.containsKey('summary')
            ? SleepSummary.fromJson(
                json_['summary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final interval = this.interval;
    final metadata = this.metadata;
    final outOfBedSegments = this.outOfBedSegments;
    final stages = this.stages;
    final summary = this.summary;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'interval': ?interval,
      'metadata': ?metadata,
      'outOfBedSegments': ?outOfBedSegments,
      'stages': ?stages,
      'summary': ?summary,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
}

/// Additional information about how the sleep was processed.
class SleepMetadata {
  /// Sleep identifier relevant in the context of the data source.
  ///
  /// Optional.
  core.String? externalId;

  /// Some sleeps autodetected by algorithms can be manually edited by users.
  ///
  /// Output only.
  core.bool? manuallyEdited;

  /// Naps are sleeps without stages and relatively short durations.
  ///
  /// Output only.
  core.bool? nap;

  /// Sleep and sleep stages algorithms finished processing.
  ///
  /// Output only.
  core.bool? processed;

  /// Sleep stages algorithm processing status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STAGES_STATE_UNSPECIFIED" : Output only. Sleep stages status is
  /// unspecified.
  /// - "REJECTED_COVERAGE" : Output only. Sleep stages cannot be computed due
  /// to low RR coverage.
  /// - "REJECTED_MAX_GAP" : Output only. Sleep stages cannot be computed due to
  /// the large middle gap (2h).
  /// - "REJECTED_START_GAP" : Output only. Sleep stages cannot be computed due
  /// to the large start gap (1h).
  /// - "REJECTED_END_GAP" : Output only. Sleep stages cannot be computed due to
  /// the large end gap (1h).
  /// - "REJECTED_NAP" : Output only. Sleep stages cannot be computed because
  /// the sleep log is a nap (has \< 3h duration).
  /// - "REJECTED_SERVER" : Output only. Sleep stages cannot be computed because
  /// input data is not available (PPGV2, wake magnitude, etc).
  /// - "TIMEOUT" : Output only. Sleep stages cannot be computed due to server
  /// timeout.
  /// - "SUCCEEDED" : Output only. Sleep stages successfully computed.
  /// - "PROCESSING_INTERNAL_ERROR" : Output only. Sleep stages cannot be
  /// computed due to server internal error.
  core.String? stagesStatus;

  SleepMetadata({
    this.externalId,
    this.manuallyEdited,
    this.nap,
    this.processed,
    this.stagesStatus,
  });

  SleepMetadata.fromJson(core.Map json_)
    : this(
        externalId: json_['externalId'] as core.String?,
        manuallyEdited: json_['manuallyEdited'] as core.bool?,
        nap: json_['nap'] as core.bool?,
        processed: json_['processed'] as core.bool?,
        stagesStatus: json_['stagesStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externalId = this.externalId;
    final manuallyEdited = this.manuallyEdited;
    final nap = this.nap;
    final processed = this.processed;
    final stagesStatus = this.stagesStatus;
    return {
      'externalId': ?externalId,
      'manuallyEdited': ?manuallyEdited,
      'nap': ?nap,
      'processed': ?processed,
      'stagesStatus': ?stagesStatus,
    };
  }
}

/// Sleep stage segment.
class SleepStage {
  /// Creation time of this sleep stages segment.
  ///
  /// Output only.
  core.String? createTime;

  /// Sleep stage end time.
  ///
  /// Required.
  core.String? endTime;

  /// The offset of the user's local time at the end of the sleep stage relative
  /// to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? endUtcOffset;

  /// Sleep stage start time.
  ///
  /// Required.
  core.String? startTime;

  /// The offset of the user's local time at the start of the sleep stage
  /// relative to the Coordinated Universal Time (UTC).
  ///
  /// Required.
  core.String? startUtcOffset;

  /// Sleep stage type: AWAKE, DEEP, REM, LIGHT etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SLEEP_STAGE_TYPE_UNSPECIFIED" : The default unset value.
  /// - "AWAKE" : Sleep stage AWAKE.
  /// - "LIGHT" : Sleep stage LIGHT.
  /// - "DEEP" : Sleep stage DEEP.
  /// - "REM" : Sleep stage REM.
  /// - "ASLEEP" : Sleep stage ASLEEP.
  /// - "RESTLESS" : Sleep stage RESTLESS.
  core.String? type;

  /// Last update time of this sleep stages segment.
  ///
  /// Output only.
  core.String? updateTime;

  SleepStage({
    this.createTime,
    this.endTime,
    this.endUtcOffset,
    this.startTime,
    this.startUtcOffset,
    this.type,
    this.updateTime,
  });

  SleepStage.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        endUtcOffset: json_['endUtcOffset'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        startUtcOffset: json_['startUtcOffset'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final endTime = this.endTime;
    final endUtcOffset = this.endUtcOffset;
    final startTime = this.startTime;
    final startUtcOffset = this.startUtcOffset;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'endTime': ?endTime,
      'endUtcOffset': ?endUtcOffset,
      'startTime': ?startTime,
      'startUtcOffset': ?startUtcOffset,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
}

///  Sleep summary: metrics and stages summary.
class SleepSummary {
  /// Minutes after wake up calculated by restlessness algorithm.
  ///
  /// Output only.
  core.String? minutesAfterWakeUp;

  /// Total number of minutes asleep.
  ///
  /// For classic sleep it is the sum of ASLEEP stages (excluding AWAKE and
  /// RESTLESS). For "stages" sleep it is the sum of LIGHT, REM and DEEP stages
  /// (excluding AWAKE).
  ///
  /// Output only.
  core.String? minutesAsleep;

  /// Total number of minutes awake.
  ///
  /// It is a sum of all AWAKE stages.
  ///
  /// Output only.
  core.String? minutesAwake;

  /// Delta between wake time and bedtime.
  ///
  /// It is the sum of all stages.
  ///
  /// Output only.
  core.String? minutesInSleepPeriod;

  /// Minutes to fall asleep calculated by restlessness algorithm.
  ///
  /// Output only.
  core.String? minutesToFallAsleep;

  /// List of summaries (total duration and segment count) per each sleep stage
  /// type.
  ///
  /// Output only.
  core.List<StageSummary>? stagesSummary;

  SleepSummary({
    this.minutesAfterWakeUp,
    this.minutesAsleep,
    this.minutesAwake,
    this.minutesInSleepPeriod,
    this.minutesToFallAsleep,
    this.stagesSummary,
  });

  SleepSummary.fromJson(core.Map json_)
    : this(
        minutesAfterWakeUp: json_['minutesAfterWakeUp'] as core.String?,
        minutesAsleep: json_['minutesAsleep'] as core.String?,
        minutesAwake: json_['minutesAwake'] as core.String?,
        minutesInSleepPeriod: json_['minutesInSleepPeriod'] as core.String?,
        minutesToFallAsleep: json_['minutesToFallAsleep'] as core.String?,
        stagesSummary: (json_['stagesSummary'] as core.List?)
            ?.map(
              (value) => StageSummary.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minutesAfterWakeUp = this.minutesAfterWakeUp;
    final minutesAsleep = this.minutesAsleep;
    final minutesAwake = this.minutesAwake;
    final minutesInSleepPeriod = this.minutesInSleepPeriod;
    final minutesToFallAsleep = this.minutesToFallAsleep;
    final stagesSummary = this.stagesSummary;
    return {
      'minutesAfterWakeUp': ?minutesAfterWakeUp,
      'minutesAsleep': ?minutesAsleep,
      'minutesAwake': ?minutesAwake,
      'minutesInSleepPeriod': ?minutesInSleepPeriod,
      'minutesToFallAsleep': ?minutesToFallAsleep,
      'stagesSummary': ?stagesSummary,
    };
  }
}

/// Represents splits or laps recorded within an exercise.
///
/// Lap events partition a workout into segments based on criteria like
/// distance, time, or calories.
class SplitSummary {
  /// Lap time excluding the pauses.
  ///
  /// Output only.
  core.String? activeDuration;

  /// Lap end time
  ///
  /// Required.
  core.String? endTime;

  /// Lap end time offset from UTC
  ///
  /// Required.
  core.String? endUtcOffset;

  /// Summary metrics for this split.
  ///
  /// Required.
  MetricsSummary? metricsSummary;

  /// Method used to split the exercise laps.
  ///
  /// Users may manually mark the lap as complete even if the tracking is
  /// automatic.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SPLIT_TYPE_UNSPECIFIED" : Split type is unspecified.
  /// - "MANUAL" : Manual split.
  /// - "DURATION" : Split by duration.
  /// - "DISTANCE" : Split by distance.
  /// - "CALORIES" : Split by calories.
  core.String? splitType;

  /// Lap start time
  ///
  /// Required.
  core.String? startTime;

  /// Lap start time offset from UTC
  ///
  /// Required.
  core.String? startUtcOffset;

  SplitSummary({
    this.activeDuration,
    this.endTime,
    this.endUtcOffset,
    this.metricsSummary,
    this.splitType,
    this.startTime,
    this.startUtcOffset,
  });

  SplitSummary.fromJson(core.Map json_)
    : this(
        activeDuration: json_['activeDuration'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        endUtcOffset: json_['endUtcOffset'] as core.String?,
        metricsSummary: json_.containsKey('metricsSummary')
            ? MetricsSummary.fromJson(
                json_['metricsSummary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        splitType: json_['splitType'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        startUtcOffset: json_['startUtcOffset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeDuration = this.activeDuration;
    final endTime = this.endTime;
    final endUtcOffset = this.endUtcOffset;
    final metricsSummary = this.metricsSummary;
    final splitType = this.splitType;
    final startTime = this.startTime;
    final startUtcOffset = this.startUtcOffset;
    return {
      'activeDuration': ?activeDuration,
      'endTime': ?endTime,
      'endUtcOffset': ?endUtcOffset,
      'metricsSummary': ?metricsSummary,
      'splitType': ?splitType,
      'startTime': ?startTime,
      'startUtcOffset': ?startUtcOffset,
    };
  }
}

/// Total duration and segment count for a stage.
class StageSummary {
  /// Number of sleep stages segments.
  ///
  /// Output only.
  core.String? count;

  /// Total duration in minutes of a sleep stage.
  ///
  /// Output only.
  core.String? minutes;

  /// Sleep stage type: AWAKE, DEEP, REM, LIGHT etc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SLEEP_STAGE_TYPE_UNSPECIFIED" : The default unset value.
  /// - "AWAKE" : Sleep stage AWAKE.
  /// - "LIGHT" : Sleep stage LIGHT.
  /// - "DEEP" : Sleep stage DEEP.
  /// - "REM" : Sleep stage REM.
  /// - "ASLEEP" : Sleep stage ASLEEP.
  /// - "RESTLESS" : Sleep stage RESTLESS.
  core.String? type;

  StageSummary({this.count, this.minutes, this.type});

  StageSummary.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        minutes: json_['minutes'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final minutes = this.minutes;
    final type = this.type;
    return {'count': ?count, 'minutes': ?minutes, 'type': ?type};
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

/// Step count over the time interval.
class Steps {
  /// Number of steps in the recorded interval.
  ///
  /// Required.
  core.String? count;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  Steps({this.count, this.interval});

  Steps.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final interval = this.interval;
    return {'count': ?count, 'interval': ?interval};
  }
}

/// Represents the result of the rollup of the steps data type.
class StepsRollupValue {
  /// Total number of steps in the interval.
  core.String? countSum;

  StepsRollupValue({this.countSum});

  StepsRollupValue.fromJson(core.Map json_)
    : this(countSum: json_['countSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final countSum = this.countSum;
    return {'countSum': ?countSum};
  }
}

/// -- Resource Messages -- A subscriber receives notifications from Google
/// Health API.
class Subscriber {
  /// The time at which the subscriber was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Authorization mechanism for a subscriber endpoint.
  ///
  /// This is required to ensure the endpoint can be verified.
  ///
  /// Required.
  EndpointAuthorization? endpointAuthorization;

  /// The full HTTPS URI where update notifications will be sent.
  ///
  /// The URI must be a valid URL and use HTTPS as the scheme. This endpoint
  /// will be verified during CreateSubscriber and UpdateSubscriber calls. See
  /// RPC documentation for verification details.
  ///
  /// Required.
  core.String? endpointUri;

  /// Identifier.
  ///
  /// The resource name of the Subscriber. Format:
  /// projects/{project}/subscribers/{subscriber} The {project} ID is a Google
  /// Cloud Project ID or Project Number. The {subscriber} ID is user-settable
  /// (4-36 characters, matching /\[a-z\](\[a-z0-9-\]{2,34}\[a-z0-9\])/) if
  /// provided during creation, or system-generated otherwise (e.g., a UUID).
  /// Example (User-settable subscriber ID):
  /// projects/my-project/subscribers/my-sub-123 Example (System-generated
  /// subscriber ID):
  /// projects/my-project/subscribers/a1b2c3d4-e5f6-7890-1234-567890abcdef
  core.String? name;

  /// The state of the subscriber.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Represents an unspecified subscriber state.
  /// - "UNVERIFIED" : Represents an unverified subscriber. This is the initial
  /// state of the subscriber when it is created. The backend will verify the
  /// subscriber's endpoint_uri.
  /// - "ACTIVE" : Represents an active subscriber. The endpoint has been
  /// verified.
  /// - "INACTIVE" : Represents an inactive subscriber.
  core.String? state;

  /// Configuration for the subscriber.
  ///
  /// Optional.
  core.List<SubscriberConfig>? subscriberConfigs;

  /// The time at which the subscriber was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Subscriber({
    this.createTime,
    this.endpointAuthorization,
    this.endpointUri,
    this.name,
    this.state,
    this.subscriberConfigs,
    this.updateTime,
  });

  Subscriber.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        endpointAuthorization: json_.containsKey('endpointAuthorization')
            ? EndpointAuthorization.fromJson(
                json_['endpointAuthorization']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        endpointUri: json_['endpointUri'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        subscriberConfigs: (json_['subscriberConfigs'] as core.List?)
            ?.map(
              (value) => SubscriberConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final endpointAuthorization = this.endpointAuthorization;
    final endpointUri = this.endpointUri;
    final name = this.name;
    final state = this.state;
    final subscriberConfigs = this.subscriberConfigs;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'endpointAuthorization': ?endpointAuthorization,
      'endpointUri': ?endpointUri,
      'name': ?name,
      'state': ?state,
      'subscriberConfigs': ?subscriberConfigs,
      'updateTime': ?updateTime,
    };
  }
}

/// Configuration for a subscriber.
///
/// A notification is sent to a subscription ONLY if the subscriber has a config
/// for the data type.
class SubscriberConfig {
  /// Supported data types are: "altitude", "distance", "floors", "sleep",
  /// "steps", "weight".
  ///
  /// Values should be in kebab-case.
  ///
  /// Required.
  core.List<core.String>? dataTypes;

  /// Policy for subscription creation.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SUBSCRIPTION_CREATE_POLICY_UNSPECIFIED" : Represents an unspecified
  /// policy.
  /// - "AUTOMATIC" : When using `AUTOMATIC`, individual subscriptions are not
  /// created or stored. Instead, eligibility for notifications is computed
  /// dynamically. When a data update occurs for a given data type,
  /// notifications are sent to all subscribers with an `AUTOMATIC` policy for
  /// that data type, provided the user has granted the necessary consents. This
  /// means you do not need to call `CreateSubscription` for each user;
  /// notifications are managed automatically based on user consents. As
  /// `Subscription` resources are not stored, they cannot be retrieved or
  /// managed through `GetSubscription`, `ListSubscriptions`,
  /// `UpdateSubscription`, or `DeleteSubscription`.
  /// - "MANUAL" : Requires subscriptions to be created manually for new users.
  /// The developer needs to call CreateSubscription for new users.
  core.String? subscriptionCreatePolicy;

  SubscriberConfig({this.dataTypes, this.subscriptionCreatePolicy});

  SubscriberConfig.fromJson(core.Map json_)
    : this(
        dataTypes: (json_['dataTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        subscriptionCreatePolicy:
            json_['subscriptionCreatePolicy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataTypes = this.dataTypes;
    final subscriptionCreatePolicy = this.subscriptionCreatePolicy;
    return {
      'dataTypes': ?dataTypes,
      'subscriptionCreatePolicy': ?subscriptionCreatePolicy,
    };
  }
}

/// Swim lengths data over the time interval.
class SwimLengthsData {
  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  /// Number of strokes in the lap.
  ///
  /// Required.
  core.String? strokeCount;

  /// Swim stroke type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SWIM_STROKE_TYPE_UNSPECIFIED" : Swim stroke type is unspecified.
  /// - "FREESTYLE" : Freestyle swim stroke type.
  /// - "BACKSTROKE" : Backstroke swim stroke type.
  /// - "BREASTSTROKE" : Breaststroke swim stroke type.
  /// - "BUTTERFLY" : Butterfly swim stroke type.
  core.String? swimStrokeType;

  SwimLengthsData({this.interval, this.strokeCount, this.swimStrokeType});

  SwimLengthsData.fromJson(core.Map json_)
    : this(
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        strokeCount: json_['strokeCount'] as core.String?,
        swimStrokeType: json_['swimStrokeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final interval = this.interval;
    final strokeCount = this.strokeCount;
    final swimStrokeType = this.swimStrokeType;
    return {
      'interval': ?interval,
      'strokeCount': ?strokeCount,
      'swimStrokeType': ?swimStrokeType,
    };
  }
}

/// Represents the result of the rollup of the swim lengths data type.
class SwimLengthsDataRollupValue {
  /// Total number of swim strokes in the interval.
  core.String? strokeCountSum;

  SwimLengthsDataRollupValue({this.strokeCountSum});

  SwimLengthsDataRollupValue.fromJson(core.Map json_)
    : this(strokeCountSum: json_['strokeCountSum'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final strokeCountSum = this.strokeCountSum;
    return {'strokeCountSum': ?strokeCountSum};
  }
}

/// Time in heart rate zone record.
///
/// It's an interval spent in specific heart rate zone.
class TimeInHeartRateZone {
  /// Heart rate zone type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HEART_RATE_ZONE_TYPE_UNSPECIFIED" : Unspecified heart rate zone.
  /// - "LIGHT" : The light heart rate zone.
  /// - "MODERATE" : The moderate heart rate zone.
  /// - "VIGOROUS" : The vigorous heart rate zone.
  /// - "PEAK" : The peak heart rate zone.
  core.String? heartRateZoneType;

  /// Observed interval.
  ///
  /// Required.
  ObservationTimeInterval? interval;

  TimeInHeartRateZone({this.heartRateZoneType, this.interval});

  TimeInHeartRateZone.fromJson(core.Map json_)
    : this(
        heartRateZoneType: json_['heartRateZoneType'] as core.String?,
        interval: json_.containsKey('interval')
            ? ObservationTimeInterval.fromJson(
                json_['interval'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heartRateZoneType = this.heartRateZoneType;
    final interval = this.interval;
    return {'heartRateZoneType': ?heartRateZoneType, 'interval': ?interval};
  }
}

/// Represents the result of the rollup of the time in heart rate zone data
/// type.
class TimeInHeartRateZoneRollupValue {
  /// List of time spent in each heart rate zone.
  core.List<TimeInHeartRateZoneValue>? timeInHeartRateZones;

  TimeInHeartRateZoneRollupValue({this.timeInHeartRateZones});

  TimeInHeartRateZoneRollupValue.fromJson(core.Map json_)
    : this(
        timeInHeartRateZones: (json_['timeInHeartRateZones'] as core.List?)
            ?.map(
              (value) => TimeInHeartRateZoneValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final timeInHeartRateZones = this.timeInHeartRateZones;
    return {'timeInHeartRateZones': ?timeInHeartRateZones};
  }
}

/// Represents the total time spent in a specific heart rate zone.
class TimeInHeartRateZoneValue {
  /// The total time spent in the specified heart rate zone.
  core.String? duration;

  /// The heart rate zone.
  /// Possible string values are:
  /// - "HEART_RATE_ZONE_TYPE_UNSPECIFIED" : Unspecified heart rate zone.
  /// - "LIGHT" : The light heart rate zone.
  /// - "MODERATE" : The moderate heart rate zone.
  /// - "VIGOROUS" : The vigorous heart rate zone.
  /// - "PEAK" : The peak heart rate zone.
  core.String? heartRateZone;

  TimeInHeartRateZoneValue({this.duration, this.heartRateZone});

  TimeInHeartRateZoneValue.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        heartRateZone: json_['heartRateZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duration = this.duration;
    final heartRateZone = this.heartRateZone;
    return {'duration': ?duration, 'heartRateZone': ?heartRateZone};
  }
}

/// Time spent in each heart rate zone.
class TimeInHeartRateZones {
  /// Time spent in light heart rate zone.
  ///
  /// Optional.
  core.String? lightTime;

  /// Time spent in moderate heart rate zone.
  ///
  /// Optional.
  core.String? moderateTime;

  /// Time spent in peak heart rate zone.
  ///
  /// Optional.
  core.String? peakTime;

  /// Time spent in vigorous heart rate zone.
  ///
  /// Optional.
  core.String? vigorousTime;

  TimeInHeartRateZones({
    this.lightTime,
    this.moderateTime,
    this.peakTime,
    this.vigorousTime,
  });

  TimeInHeartRateZones.fromJson(core.Map json_)
    : this(
        lightTime: json_['lightTime'] as core.String?,
        moderateTime: json_['moderateTime'] as core.String?,
        peakTime: json_['peakTime'] as core.String?,
        vigorousTime: json_['vigorousTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lightTime = this.lightTime;
    final moderateTime = this.moderateTime;
    final peakTime = this.peakTime;
    final vigorousTime = this.vigorousTime;
    return {
      'lightTime': ?lightTime,
      'moderateTime': ?moderateTime,
      'peakTime': ?peakTime,
      'vigorousTime': ?vigorousTime,
    };
  }
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents the result of the rollup of the user's total calories.
class TotalCaloriesRollupValue {
  /// Sum of the total calories in kilocalories.
  core.double? kcalSum;

  TotalCaloriesRollupValue({this.kcalSum});

  TotalCaloriesRollupValue.fromJson(core.Map json_)
    : this(kcalSum: (json_['kcalSum'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() {
    final kcalSum = this.kcalSum;
    return {'kcalSum': ?kcalSum};
  }
}

/// VO2 max measurement.
class VO2Max {
  /// The method used to measure the VO2 max value.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MEASUREMENT_METHOD_UNSPECIFIED" : Unspecified measurement method.
  /// - "FITBIT_RUN" : Fitbit specific, measures VO2 max rate during a run.
  /// - "GOOGLE_DEMOGRAPHIC" : Google specific, measures VO2 max rate for a user
  /// based on their demographic data.
  /// - "COOPER_TEST" : Run as far as possible for 12 minutes. Distance
  /// correlated with age and gender translates to a VO2 max value.
  /// - "HEART_RATE_RATIO" : Maximum heart rate divided by the resting heart
  /// rate, with a multiplier applied. Does not require any exercise.
  /// - "METABOLIC_CART" : Measured by a medical device called metabolic cart.
  /// - "MULTISTAGE_FITNESS_TEST" : Continuous 20m back-and-forth runs with
  /// increasing difficulty, until exhaustion.
  /// - "ROCKPORT_FITNESS_TEST" : Measured using walking exercise.
  /// - "MAX_EXERCISE" : Healthkit specific, measures VO2 max rate by monitoring
  /// exercise to the user’s physical limit. Similar to COOPER_TEST or
  /// MULTISTAGE_FITNESS_TEST.
  /// - "PREDICTION_SUB_MAX_EXERCISE" : Healthkit specific, estimates VO2 max
  /// rate based on low-intensity exercise. Similar to ROCKPORT_FITNESS_TEST.
  /// - "PREDICTION_NON_EXERCISE" : Healthkit specific, estimates VO2 max rate
  /// without any exercise. Similar to HEART_RATE_RATIO.
  /// - "OTHER" : Use when the method is not covered in this enum.
  core.String? measurementMethod;

  /// The time at which VO2 max was measured.
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  /// VO2 max value measured as in ml consumed oxygen / kg of body weight / min.
  ///
  /// Required.
  core.double? vo2Max;

  VO2Max({this.measurementMethod, this.sampleTime, this.vo2Max});

  VO2Max.fromJson(core.Map json_)
    : this(
        measurementMethod: json_['measurementMethod'] as core.String?,
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vo2Max: (json_['vo2Max'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final measurementMethod = this.measurementMethod;
    final sampleTime = this.sampleTime;
    final vo2Max = this.vo2Max;
    return {
      'measurementMethod': ?measurementMethod,
      'sampleTime': ?sampleTime,
      'vo2Max': ?vo2Max,
    };
  }
}

/// Represents the volume quantity.
class VolumeQuantity {
  /// Value representing the volume in milliliters.
  ///
  /// Required.
  core.double? milliliters;

  /// Value representing the user provided unit.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VOLUME_UNIT_UNSPECIFIED" : Unspecified volume unit.
  /// - "CUP_IMPERIAL" : Cup (imperial)
  /// - "CUP_US" : Cup (US)
  /// - "FLUID_OUNCE_IMPERIAL" : Fluid ounce (imperial)
  /// - "FLUID_OUNCE_US" : Fluid ounce (US)
  /// - "LITER" : Liter
  /// - "MILLILITER" : Milliliter
  /// - "PINT_IMPERIAL" : Pint (imperial)
  /// - "PINT_US" : Pint (US)
  core.String? userProvidedUnit;

  VolumeQuantity({this.milliliters, this.userProvidedUnit});

  VolumeQuantity.fromJson(core.Map json_)
    : this(
        milliliters: (json_['milliliters'] as core.num?)?.toDouble(),
        userProvidedUnit: json_['userProvidedUnit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final milliliters = this.milliliters;
    final userProvidedUnit = this.userProvidedUnit;
    return {'milliliters': ?milliliters, 'userProvidedUnit': ?userProvidedUnit};
  }
}

/// Rollup for volume quantity.
class VolumeQuantityRollup {
  /// The sum of volume in milliliters.
  ///
  /// Required.
  core.double? millilitersSum;

  /// The user provided unit on the last element.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VOLUME_UNIT_UNSPECIFIED" : Unspecified volume unit.
  /// - "CUP_IMPERIAL" : Cup (imperial)
  /// - "CUP_US" : Cup (US)
  /// - "FLUID_OUNCE_IMPERIAL" : Fluid ounce (imperial)
  /// - "FLUID_OUNCE_US" : Fluid ounce (US)
  /// - "LITER" : Liter
  /// - "MILLILITER" : Milliliter
  /// - "PINT_IMPERIAL" : Pint (imperial)
  /// - "PINT_US" : Pint (US)
  core.String? userProvidedUnitLast;

  VolumeQuantityRollup({this.millilitersSum, this.userProvidedUnitLast});

  VolumeQuantityRollup.fromJson(core.Map json_)
    : this(
        millilitersSum: (json_['millilitersSum'] as core.num?)?.toDouble(),
        userProvidedUnitLast: json_['userProvidedUnitLast'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final millilitersSum = this.millilitersSum;
    final userProvidedUnitLast = this.userProvidedUnitLast;
    return {
      'millilitersSum': ?millilitersSum,
      'userProvidedUnitLast': ?userProvidedUnitLast,
    };
  }
}

/// Body weight measurement.
class Weight {
  /// Standard free-form notes captured at manual logging.
  ///
  /// Optional.
  core.String? notes;

  /// The time at which the weight was measured
  ///
  /// Required.
  ObservationSampleTime? sampleTime;

  /// Weight of a user in grams.
  ///
  /// Required.
  core.double? weightGrams;

  Weight({this.notes, this.sampleTime, this.weightGrams});

  Weight.fromJson(core.Map json_)
    : this(
        notes: json_['notes'] as core.String?,
        sampleTime: json_.containsKey('sampleTime')
            ? ObservationSampleTime.fromJson(
                json_['sampleTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        weightGrams: (json_['weightGrams'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final notes = this.notes;
    final sampleTime = this.sampleTime;
    final weightGrams = this.weightGrams;
    return {
      'notes': ?notes,
      'sampleTime': ?sampleTime,
      'weightGrams': ?weightGrams,
    };
  }
}

/// Represents the result of the rollup of the weight data type.
class WeightRollupValue {
  /// Average weight in grams.
  core.double? weightGramsAvg;

  WeightRollupValue({this.weightGramsAvg});

  WeightRollupValue.fromJson(core.Map json_)
    : this(weightGramsAvg: (json_['weightGramsAvg'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() {
    final weightGramsAvg = this.weightGramsAvg;
    return {'weightGramsAvg': ?weightGramsAvg};
  }
}
