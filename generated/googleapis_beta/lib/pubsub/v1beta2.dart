// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.pubsub.v1beta2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client pubsub/v1beta2';

/// Provides reliable, many-to-many, asynchronous messaging between
/// applications.
class PubsubApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage Pub/Sub topics and subscriptions
  static const pubsubScope = 'https://www.googleapis.com/auth/pubsub';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  PubsubApi(http.Client client,
      {core.String rootUrl = 'https://pubsub.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSubscriptionsResourceApi get subscriptions =>
      ProjectsSubscriptionsResourceApi(_requester);
  ProjectsTopicsResourceApi get topics => ProjectsTopicsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsSubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSubscriptionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Acknowledges the messages associated with the `ack_ids` in the
  /// `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages
  /// from the subscription. Acknowledging a message whose ack deadline has
  /// expired may succeed, but such a message may be redelivered later.
  /// Acknowledging a message more than once will not result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The subscription whose message is being acknowledged.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
  async.Future<Empty> acknowledge(
    AcknowledgeRequest request,
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$subscription') +
        ':acknowledge';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a subscription to a given topic. If the subscription already
  /// exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't
  /// exist, returns `NOT_FOUND`. If the name is not provided in the request,
  /// the server will assign a random name for this subscription on the same
  /// project as the topic. Note that for REST API requests, you must specify a
  /// name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the subscription. It must have the format
  /// `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must
  /// start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> create(
    Subscription request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Subscription.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes an existing subscription. All pending messages in the subscription
  /// are immediately dropped. Calls to `Pull` after deletion will return
  /// `NOT_FOUND`. After a subscription is deleted, a new one may be created
  /// with the same name, but the new one has no association with the old
  /// subscription, or its topic unless the same topic is specified.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The subscription to delete.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the configuration details of a subscription.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The name of the subscription to get.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Subscription.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists matching subscriptions.
  ///
  /// Request parameters:
  ///
  /// [project] - The name of the cloud project that subscriptions belong to.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Maximum number of subscriptions to return.
  ///
  /// [pageToken] - The value returned by the last `ListSubscriptionsResponse`;
  /// indicates that this is a continuation of a prior `ListSubscriptions` call,
  /// and that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list(
    core.String project, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        '/subscriptions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListSubscriptionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Modifies the ack deadline for a specific message. This method is useful to
  /// indicate that more time is needed to process a message by the subscriber,
  /// or to make the message available for redelivery if the processing was
  /// interrupted. Note that this does not modify the subscription-level
  /// `ackDeadlineSeconds` used for subsequent messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The name of the subscription.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
  async.Future<Empty> modifyAckDeadline(
    ModifyAckDeadlineRequest request,
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$subscription') +
        ':modifyAckDeadline';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Modifies the `PushConfig` for a specified subscription. This may be used
  /// to change a push subscription to a pull one (signified by an empty
  /// `PushConfig`) or vice versa, or change the endpoint URL and other
  /// attributes of a push subscription. Messages will accumulate for delivery
  /// continuously through the call regardless of changes to the `PushConfig`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The name of the subscription.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
  async.Future<Empty> modifyPushConfig(
    ModifyPushConfigRequest request,
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$subscription') +
        ':modifyPushConfig';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Pulls messages from the server. Returns an empty list if there are no
  /// messages available in the backlog. The server may return `UNAVAILABLE` if
  /// there are too many concurrent pull requests pending for the given
  /// subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The subscription from which messages should be pulled.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullResponse> pull(
    PullRequest request,
    core.String subscription, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (subscription == null) {
      throw core.ArgumentError('Parameter subscription is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$subscription') +
        ':pull';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          PullResponse.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and
  /// `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/subscriptions/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsTopicsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTopicsSubscriptionsResourceApi get subscriptions =>
      ProjectsTopicsSubscriptionsResourceApi(_requester);

  ProjectsTopicsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates the given topic with the given name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the topic. It must have the format
  /// `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter,
  /// and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
  /// underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent
  /// signs (`%`). It must be between 3 and 255 characters in length, and it
  /// must not start with `"goog"`.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
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
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Topic.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the topic with the given name. Returns `NOT_FOUND` if the topic
  /// does not exist. After a topic is deleted, a new topic may be created with
  /// the same name; this is an entirely new topic with none of the old
  /// configuration or subscriptions. Existing subscriptions to this topic are
  /// not deleted, but their `topic` field is set to `_deleted-topic_`.
  ///
  /// Request parameters:
  ///
  /// [topic] - Name of the topic to delete.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
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
    core.String topic, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (topic == null) {
      throw core.ArgumentError('Parameter topic is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the configuration of a topic.
  ///
  /// Request parameters:
  ///
  /// [topic] - The name of the topic to get.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
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
    core.String topic, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (topic == null) {
      throw core.ArgumentError('Parameter topic is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Topic.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists matching topics.
  ///
  /// Request parameters:
  ///
  /// [project] - The name of the cloud project that topics belong to.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Maximum number of topics to return.
  ///
  /// [pageToken] - The value returned by the last `ListTopicsResponse`;
  /// indicates that this is a continuation of a prior `ListTopics` call, and
  /// that the system should return the next page of data.
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
    core.String project, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        '/topics';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListTopicsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic
  /// does not exist. The message payload must not be empty; it must contain
  /// either a non-empty data field, or at least one attribute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [topic] - The messages in the request will be published on this topic.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishResponse> publish(
    PublishRequest request,
    core.String topic, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (topic == null) {
      throw core.ArgumentError('Parameter topic is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$topic') +
        ':publish';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          PublishResponse.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and
  /// `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsTopicsSubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTopicsSubscriptionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the name of the subscriptions for this topic.
  ///
  /// Request parameters:
  ///
  /// [topic] - The name of the topic that subscriptions are attached to.
  /// Value must have pattern "^projects/[^/]+/topics/[^/]+$".
  ///
  /// [pageSize] - Maximum number of subscription names to return.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListTopicSubscriptionsResponse`; indicates that this is a continuation of
  /// a prior `ListTopicSubscriptions` call, and that the system should return
  /// the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicSubscriptionsResponse> list(
    core.String topic, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (topic == null) {
      throw core.ArgumentError('Parameter topic is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$topic') +
        '/subscriptions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListTopicSubscriptionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Request for the Acknowledge method.
class AcknowledgeRequest {
  /// The acknowledgment ID for the messages being acknowledged that was
  /// returned by the Pub/Sub system in the `Pull` response. Must not be empty.
  core.List<core.String> ackIds;

  AcknowledgeRequest();

  AcknowledgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('ackIds')) {
      ackIds = (_json['ackIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ackIds != null) {
      _json['ackIds'] = ackIds;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// A client-specified ID for this binding. Expected to be globally unique to
  /// support the internal bindings-by-ID API.
  core.String bindingId;

  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
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
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('bindingId')) {
      bindingId = _json['bindingId'] as core.String;
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindingId != null) {
      _json['bindingId'] = bindingId;
    }
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
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
class Expr {
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Response for the `ListSubscriptions` method.
class ListSubscriptionsResponse {
  /// If not empty, indicates that there may be more subscriptions that match
  /// the request; this value should be passed in a new
  /// `ListSubscriptionsRequest` to get more subscriptions.
  core.String nextPageToken;

  /// The subscriptions that match the request.
  core.List<Subscription> subscriptions;

  ListSubscriptionsResponse();

  ListSubscriptionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('subscriptions')) {
      subscriptions = (_json['subscriptions'] as core.List)
          .map<Subscription>((value) => Subscription.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (subscriptions != null) {
      _json['subscriptions'] =
          subscriptions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `ListTopicSubscriptions` method.
class ListTopicSubscriptionsResponse {
  /// If not empty, indicates that there may be more subscriptions that match
  /// the request; this value should be passed in a new
  /// `ListTopicSubscriptionsRequest` to get more subscriptions.
  core.String nextPageToken;

  /// The names of the subscriptions that match the request.
  core.List<core.String> subscriptions;

  ListTopicSubscriptionsResponse();

  ListTopicSubscriptionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('subscriptions')) {
      subscriptions = (_json['subscriptions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (subscriptions != null) {
      _json['subscriptions'] = subscriptions;
    }
    return _json;
  }
}

/// Response for the `ListTopics` method.
class ListTopicsResponse {
  /// If not empty, indicates that there may be more topics that match the
  /// request; this value should be passed in a new `ListTopicsRequest`.
  core.String nextPageToken;

  /// The resulting topics.
  core.List<Topic> topics;

  ListTopicsResponse();

  ListTopicsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('topics')) {
      topics = (_json['topics'] as core.List)
          .map<Topic>((value) =>
              Topic.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (topics != null) {
      _json['topics'] = topics.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request for the ModifyAckDeadline method.
class ModifyAckDeadlineRequest {
  /// The new ack deadline with respect to the time this request was sent to the
  /// Pub/Sub system. Must be >= 0. For example, if the value is 10, the new ack
  /// deadline will expire 10 seconds after the `ModifyAckDeadline` call was
  /// made. Specifying zero may immediately make the message available for
  /// another pull request.
  core.int ackDeadlineSeconds;

  /// The acknowledgment ID. Either this or ack_ids must be populated, but not
  /// both.
  core.String ackId;

  /// List of acknowledgment IDs.
  core.List<core.String> ackIds;

  ModifyAckDeadlineRequest();

  ModifyAckDeadlineRequest.fromJson(core.Map _json) {
    if (_json.containsKey('ackDeadlineSeconds')) {
      ackDeadlineSeconds = _json['ackDeadlineSeconds'] as core.int;
    }
    if (_json.containsKey('ackId')) {
      ackId = _json['ackId'] as core.String;
    }
    if (_json.containsKey('ackIds')) {
      ackIds = (_json['ackIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ackDeadlineSeconds != null) {
      _json['ackDeadlineSeconds'] = ackDeadlineSeconds;
    }
    if (ackId != null) {
      _json['ackId'] = ackId;
    }
    if (ackIds != null) {
      _json['ackIds'] = ackIds;
    }
    return _json;
  }
}

/// Request for the ModifyPushConfig method.
class ModifyPushConfigRequest {
  /// The push configuration for future deliveries. An empty `pushConfig`
  /// indicates that the Pub/Sub system should stop pushing messages from the
  /// given subscription and allow messages to be pulled and acknowledged -
  /// effectively pausing the subscription if `Pull` is not called.
  PushConfig pushConfig;

  ModifyPushConfigRequest();

  ModifyPushConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey('pushConfig')) {
      pushConfig = PushConfig.fromJson(
          _json['pushConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pushConfig != null) {
      _json['pushConfig'] = pushConfig.toJson();
    }
    return _json;
  }
}

/// Contains information needed for generating an [OpenID Connect
/// token](https://developers.google.com/identity/protocols/OpenIDConnect).
class OidcToken {
  /// Audience to be used when generating OIDC token. The audience claim
  /// identifies the recipients that the JWT is intended for. The audience value
  /// is a single case-sensitive string. Having multiple values (array) for the
  /// audience field is not supported. More info about the OIDC JWT token
  /// audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if
  /// not specified, the Push endpoint URL will be used.
  core.String audience;

  /// [Service account
  /// email](https://cloud.google.com/iam/docs/service-accounts) to be used for
  /// generating the OIDC token. The caller (for CreateSubscription,
  /// UpdateSubscription, and ModifyPushConfig RPCs) must have the
  /// iam.serviceAccounts.actAs permission for the service account.
  core.String serviceAccountEmail;

  OidcToken();

  OidcToken.fromJson(core.Map _json) {
    if (_json.containsKey('audience')) {
      audience = _json['audience'] as core.String;
    }
    if (_json.containsKey('serviceAccountEmail')) {
      serviceAccountEmail = _json['serviceAccountEmail'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (audience != null) {
      _json['audience'] = audience;
    }
    if (serviceAccountEmail != null) {
      _json['serviceAccountEmail'] = serviceAccountEmail;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Request for the Publish method.
class PublishRequest {
  /// The messages to publish.
  core.List<PubsubMessage> messages;

  PublishRequest();

  PublishRequest.fromJson(core.Map _json) {
    if (_json.containsKey('messages')) {
      messages = (_json['messages'] as core.List)
          .map<PubsubMessage>((value) => PubsubMessage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (messages != null) {
      _json['messages'] = messages.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `Publish` method.
class PublishResponse {
  /// The server-assigned ID of each published message, in the same order as the
  /// messages in the request. IDs are guaranteed to be unique within the topic.
  core.List<core.String> messageIds;

  PublishResponse();

  PublishResponse.fromJson(core.Map _json) {
    if (_json.containsKey('messageIds')) {
      messageIds = (_json['messageIds'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (messageIds != null) {
      _json['messageIds'] = messageIds;
    }
    return _json;
  }
}

/// A message data and its attributes. The message payload must not be empty; it
/// must contain either a non-empty data field, or at least one attribute.
class PubsubMessage {
  /// Optional attributes for this message.
  core.Map<core.String, core.String> attributes;

  /// The message payload. For JSON requests, the value of this field must be
  /// [base64-encoded](https://tools.ietf.org/html/rfc4648).
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// ID of this message, assigned by the server when the message is published.
  /// Guaranteed to be unique within the topic. This value may be read by a
  /// subscriber that receives a `PubsubMessage` via a `Pull` call or a push
  /// delivery. It must not be populated by the publisher in a `Publish` call.
  core.String messageId;

  /// The time at which the message was published, populated by the server when
  /// it receives the `Publish` call. It must not be populated by the publisher
  /// in a `Publish` call.
  core.String publishTime;

  PubsubMessage();

  PubsubMessage.fromJson(core.Map _json) {
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('publishTime')) {
      publishTime = _json['publishTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attributes != null) {
      _json['attributes'] = attributes;
    }
    if (data != null) {
      _json['data'] = data;
    }
    if (messageId != null) {
      _json['messageId'] = messageId;
    }
    if (publishTime != null) {
      _json['publishTime'] = publishTime;
    }
    return _json;
  }
}

/// Request for the `Pull` method.
class PullRequest {
  /// The maximum number of messages returned for this request. The Pub/Sub
  /// system may return fewer than the number specified.
  core.int maxMessages;

  /// Optional. If this is specified as true the system will respond immediately
  /// even if it is not able to return a message in the `Pull` response.
  /// Otherwise the system is allowed to wait until at least one message is
  /// available rather than returning no messages. The client may cancel the
  /// request if it does not wish to wait any longer for the response. Warning:
  /// setting this field to `true` is discouraged because it adversely impacts
  /// the performance of `Pull` operations. We recommend that users do not set
  /// this field.
  core.bool returnImmediately;

  PullRequest();

  PullRequest.fromJson(core.Map _json) {
    if (_json.containsKey('maxMessages')) {
      maxMessages = _json['maxMessages'] as core.int;
    }
    if (_json.containsKey('returnImmediately')) {
      returnImmediately = _json['returnImmediately'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (maxMessages != null) {
      _json['maxMessages'] = maxMessages;
    }
    if (returnImmediately != null) {
      _json['returnImmediately'] = returnImmediately;
    }
    return _json;
  }
}

/// Response for the `Pull` method.
class PullResponse {
  /// Received Pub/Sub messages. The Pub/Sub system will return zero messages if
  /// there are no more available in the backlog. The Pub/Sub system may return
  /// fewer than the `maxMessages` requested even if there are more messages
  /// available in the backlog.
  core.List<ReceivedMessage> receivedMessages;

  PullResponse();

  PullResponse.fromJson(core.Map _json) {
    if (_json.containsKey('receivedMessages')) {
      receivedMessages = (_json['receivedMessages'] as core.List)
          .map<ReceivedMessage>((value) => ReceivedMessage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (receivedMessages != null) {
      _json['receivedMessages'] =
          receivedMessages.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// Endpoint configuration attributes. Every endpoint has a set of API
  /// supported attributes that can be used to control different aspects of the
  /// message delivery. The currently supported attribute is `x-goog-version`,
  /// which you can use to change the format of the push message. This attribute
  /// indicates the version of the data expected by the endpoint. This controls
  /// the shape of the envelope (i.e. its fields and metadata). The endpoint
  /// version is based on the version of the Pub/Sub API. If not present during
  /// the `CreateSubscription` call, it will default to the version of the API
  /// used to make such call. If not present during a `ModifyPushConfig` call,
  /// its value will not be changed. `GetSubscription` calls will always return
  /// a valid version, even if the subscription was created without this
  /// attribute. The possible values for this attribute are: * `v1beta1`: uses
  /// the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`:
  /// uses the push format defined in the v1 Pub/Sub API.
  core.Map<core.String, core.String> attributes;

  /// If specified, Pub/Sub will generate and attach an OIDC JWT token as an
  /// `Authorization` header in the HTTP request for every pushed message.
  OidcToken oidcToken;

  /// A URL locating the endpoint to which messages should be pushed. For
  /// example, a Webhook endpoint might use "https://example.com/push".
  core.String pushEndpoint;

  PushConfig();

  PushConfig.fromJson(core.Map _json) {
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('oidcToken')) {
      oidcToken = OidcToken.fromJson(
          _json['oidcToken'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pushEndpoint')) {
      pushEndpoint = _json['pushEndpoint'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attributes != null) {
      _json['attributes'] = attributes;
    }
    if (oidcToken != null) {
      _json['oidcToken'] = oidcToken.toJson();
    }
    if (pushEndpoint != null) {
      _json['pushEndpoint'] = pushEndpoint;
    }
    return _json;
  }
}

/// A message and its corresponding acknowledgment ID.
class ReceivedMessage {
  /// This ID can be used to acknowledge the received message.
  core.String ackId;

  /// The message.
  PubsubMessage message;

  ReceivedMessage();

  ReceivedMessage.fromJson(core.Map _json) {
    if (_json.containsKey('ackId')) {
      ackId = _json['ackId'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = PubsubMessage.fromJson(
          _json['message'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ackId != null) {
      _json['ackId'] = ackId;
    }
    if (message != null) {
      _json['message'] = message.toJson();
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

/// A subscription resource.
class Subscription {
  /// This value is the maximum time after a subscriber receives a message
  /// before the subscriber should acknowledge the message. After message
  /// delivery but before the ack deadline expires and before the message is
  /// acknowledged, it is an outstanding message and will not be delivered again
  /// during that time (on a best-effort basis). For pull subscriptions, this
  /// value is used as the initial value for the ack deadline. To override this
  /// value for a given message, call `ModifyAckDeadline` with the corresponding
  /// `ack_id` if using pull. The maximum custom deadline you can specify is 600
  /// seconds (10 minutes). For push delivery, this value is also used to set
  /// the request timeout for the call to the push endpoint. If the subscriber
  /// never acknowledges the message, the Pub/Sub system will eventually
  /// redeliver the message. If this parameter is 0, a default value of 10
  /// seconds is used.
  core.int ackDeadlineSeconds;

  /// The name of the subscription. It must have the format
  /// `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must
  /// start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  core.String name;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it. An empty `pushConfig` signifies that the subscriber will
  /// pull and ack messages using API methods.
  PushConfig pushConfig;

  /// The name of the topic from which this subscription is receiving messages.
  /// The value of this field will be `_deleted-topic_` if the topic has been
  /// deleted.
  core.String topic;

  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey('ackDeadlineSeconds')) {
      ackDeadlineSeconds = _json['ackDeadlineSeconds'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('pushConfig')) {
      pushConfig = PushConfig.fromJson(
          _json['pushConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('topic')) {
      topic = _json['topic'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ackDeadlineSeconds != null) {
      _json['ackDeadlineSeconds'] = ackDeadlineSeconds;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (pushConfig != null) {
      _json['pushConfig'] = pushConfig.toJson();
    }
    if (topic != null) {
      _json['topic'] = topic;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// A topic resource.
class Topic {
  /// The name of the topic. It must have the format
  /// `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter,
  /// and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
  /// underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent
  /// signs (`%`). It must be between 3 and 255 characters in length, and it
  /// must not start with `"goog"`.
  core.String name;

  Topic();

  Topic.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}
