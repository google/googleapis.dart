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

/// Cloud Pub/Sub API - v1beta1a
///
/// Provides reliable, many-to-many, asynchronous messaging between
/// applications.
///
/// For more information, see <https://cloud.google.com/pubsub/docs>
///
/// Create an instance of [PubsubApi] to access these resources:
///
/// - [SubscriptionsResource]
/// - [TopicsResource]
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

/// Provides reliable, many-to-many, asynchronous messaging between
/// applications.
class PubsubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage Pub/Sub topics and subscriptions
  static const pubsubScope = 'https://www.googleapis.com/auth/pubsub';

  final commons.ApiRequester _requester;

  SubscriptionsResource get subscriptions => SubscriptionsResource(_requester);
  TopicsResource get topics => TopicsResource(_requester);

  PubsubApi(
    http.Client client, {
    core.String rootUrl = 'https://pubsub.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class SubscriptionsResource {
  final commons.ApiRequester _requester;

  SubscriptionsResource(commons.ApiRequester client) : _requester = client;

  /// Acknowledges a particular received message: the Pub/Sub system can remove
  /// the given message from the subscription.
  ///
  /// Acknowledging a message whose Ack deadline has expired may succeed, but
  /// the message could have been already redelivered. Acknowledging a message
  /// more than once will not result in an error. This is only used for messages
  /// received via pull.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    AcknowledgeRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions/acknowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a subscription on a given topic for a given subscriber.
  ///
  /// If the subscription already exists, returns ALREADY_EXISTS. If the
  /// corresponding topic doesn't exist, returns NOT_FOUND. If the name is not
  /// provided in the request, the server will assign a random name for this
  /// subscription on the same project as the topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    Subscription request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an existing subscription.
  ///
  /// All pending messages in the subscription are immediately dropped. Calls to
  /// Pull after deletion will return NOT_FOUND.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The subscription to delete.
  /// Value must have pattern `^.*$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1a/subscriptions/' + core.Uri.encodeFull('$subscription');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration details of a subscription.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The name of the subscription to get.
  /// Value must have pattern `^.*$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1a/subscriptions/' + core.Uri.encodeFull('$subscription');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists matching subscriptions.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of subscriptions to return.
  ///
  /// [pageToken] - The value obtained in the last ListSubscriptionsResponse for
  /// continuation.
  ///
  /// [query] - A valid label query expression.
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
  async.Future<ListSubscriptionsResponse> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies the Ack deadline for a message received from a pull request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    ModifyAckDeadlineRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions/modifyAckDeadline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the PushConfig for a specified subscription.
  ///
  /// This method can be used to suspend the flow of messages to an endpoint by
  /// clearing the PushConfig field in the request. Messages will be accumulated
  /// for delivery even if no push configuration is defined or while the
  /// configuration is modified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    ModifyPushConfigRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions/modifyPushConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pulls a single message from the server.
  ///
  /// If return_immediately is true, and no messages are available in the
  /// subscription, this method returns FAILED_PRECONDITION. The system is free
  /// to return an UNAVAILABLE error if no messages are available in a
  /// reasonable amount of time (to reduce system load).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    PullRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions/pull';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Pulls messages from the server.
  ///
  /// Returns an empty list if there are no messages available in the backlog.
  /// The system is free to return UNAVAILABLE if there are too many pull
  /// requests outstanding for the given subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullBatchResponse> pullBatch(
    PullBatchRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/subscriptions/pullBatch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TopicsResource {
  final commons.ApiRequester _requester;

  TopicsResource(commons.ApiRequester client) : _requester = client;

  /// Creates the given topic with the given name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Topic> create(Topic request, {core.String? $fields}) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/topics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the topic with the given name.
  ///
  /// Returns NOT_FOUND if the topic does not exist. After a topic is deleted, a
  /// new topic may be created with the same name.
  ///
  /// Request parameters:
  ///
  /// [topic] - Name of the topic to delete.
  /// Value must have pattern `^.*$`.
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
  async.Future<Empty> delete(core.String topic, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1a/topics/' + core.Uri.encodeFull('$topic');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration of a topic.
  ///
  /// Since the topic only has the name attribute, this method is only useful to
  /// check the existence of a topic. If other attributes are added in the
  /// future, they will be returned here.
  ///
  /// Request parameters:
  ///
  /// [topic] - The name of the topic to get.
  /// Value must have pattern `^.*$`.
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
  async.Future<Topic> get(core.String topic, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1a/topics/' + core.Uri.encodeFull('$topic');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists matching topics.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of topics to return.
  ///
  /// [pageToken] - The value obtained in the last ListTopicsResponse for
  /// continuation.
  ///
  /// [query] - A valid label query expression.
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
  async.Future<ListTopicsResponse> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Adds a message to the topic.
  ///
  /// Returns NOT_FOUND if the topic does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Empty> publish(
    PublishRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/topics/publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds one or more messages to the topic.
  ///
  /// Returns NOT_FOUND if the topic does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishBatchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishBatchResponse> publishBatch(
    PublishBatchRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1a/topics/publishBatch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PublishBatchResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Request for the Acknowledge method.
class AcknowledgeRequest {
  /// The acknowledgment ID for the message being acknowledged.
  ///
  /// This was returned by the Pub/Sub system in the Pull response.
  core.List<core.String>? ackId;

  /// The subscription whose message is being acknowledged.
  core.String? subscription;

  AcknowledgeRequest({this.ackId, this.subscription});

  AcknowledgeRequest.fromJson(core.Map json_)
    : this(
        ackId:
            (json_['ackId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ackId != null) 'ackId': ackId!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// An empty message that you can re-use to avoid defining duplicated empty
/// messages in your project.
///
/// A typical example is to use it as argument or the return value of a service
/// API. For instance: service Foo { rpc Bar (proto2.Empty) returns
/// (proto2.Empty) { }; }; BEGIN GOOGLE-INTERNAL The difference between this one
/// and net/rpc/empty-message.proto is that 1) The generated message here is in
/// proto2 C++ API. 2) The proto2.Empty has minimum dependencies (no message_set
/// or net/rpc dependencies) END GOOGLE-INTERNAL
typedef Empty = $Empty;

/// A key-value pair applied to a given object.
class Label {
  /// The key of a label is a syntactically valid URL (as per RFC 1738) with the
  /// "scheme" and initial slashes omitted and with the additional restrictions
  /// noted below.
  ///
  /// Each key should be globally unique. The "host" portion is called the
  /// "namespace" and is not necessarily resolvable to a network endpoint.
  /// Instead, the namespace indicates what system or entity defines the
  /// semantics of the label. Namespaces do not restrict the set of objects to
  /// which a label may be associated. Keys are defined by the following
  /// grammar: key = hostname "/" kpath kpath = ksegment *\[ "/" ksegment \]
  /// ksegment = alphadigit | *\[ alphadigit | "-" | "_" | "." \] where
  /// "hostname" and "alphadigit" are defined as in RFC 1738. Example key:
  /// spanner.google.com/universe
  core.String? key;

  /// An integer value.
  core.String? numValue;

  /// A string value.
  core.String? strValue;

  Label({this.key, this.numValue, this.strValue});

  Label.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        numValue: json_['numValue'] as core.String?,
        strValue: json_['strValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (numValue != null) 'numValue': numValue!,
    if (strValue != null) 'strValue': strValue!,
  };
}

/// Response for the ListSubscriptions method.
class ListSubscriptionsResponse {
  /// If not empty, indicates that there are more subscriptions that match the
  /// request and this value should be passed to the next
  /// ListSubscriptionsRequest to continue.
  core.String? nextPageToken;

  /// The subscriptions that match the request.
  core.List<Subscription>? subscription;

  ListSubscriptionsResponse({this.nextPageToken, this.subscription});

  ListSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscription:
            (json_['subscription'] as core.List?)
                ?.map(
                  (value) => Subscription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Response for the ListTopics method.
class ListTopicsResponse {
  /// If not empty, indicates that there are more topics that match the request,
  /// and this value should be passed to the next ListTopicsRequest to continue.
  core.String? nextPageToken;

  /// The resulting topics.
  core.List<Topic>? topic;

  ListTopicsResponse({this.nextPageToken, this.topic});

  ListTopicsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        topic:
            (json_['topic'] as core.List?)
                ?.map(
                  (value) => Topic.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (topic != null) 'topic': topic!,
  };
}

/// Request for the ModifyAckDeadline method.
class ModifyAckDeadlineRequest {
  /// The new ack deadline with respect to the time this request was sent to the
  /// Pub/Sub system.
  ///
  /// Must be \>= 0. For example, if the value is 10, the new ack deadline will
  /// expire 10 seconds after the ModifyAckDeadline call was made. Specifying
  /// zero may immediately make the message available for another pull request.
  core.int? ackDeadlineSeconds;

  /// The acknowledgment ID.
  ///
  /// Either this or ack_ids must be populated, not both.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? ackId;

  /// List of acknowledgment IDs.
  ///
  /// Either this field or ack_id should be populated, not both.
  core.List<core.String>? ackIds;

  /// Next Index: 5 The name of the subscription from which messages are being
  /// pulled.
  core.String? subscription;

  ModifyAckDeadlineRequest({
    this.ackDeadlineSeconds,
    this.ackId,
    this.ackIds,
    this.subscription,
  });

  ModifyAckDeadlineRequest.fromJson(core.Map json_)
    : this(
        ackDeadlineSeconds: json_['ackDeadlineSeconds'] as core.int?,
        ackId: json_['ackId'] as core.String?,
        ackIds:
            (json_['ackIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ackDeadlineSeconds != null) 'ackDeadlineSeconds': ackDeadlineSeconds!,
    if (ackId != null) 'ackId': ackId!,
    if (ackIds != null) 'ackIds': ackIds!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Request for the ModifyPushConfig method.
class ModifyPushConfigRequest {
  /// An empty push_config indicates that the Pub/Sub system should pause
  /// pushing messages from the given subscription.
  PushConfig? pushConfig;

  /// The name of the subscription.
  core.String? subscription;

  ModifyPushConfigRequest({this.pushConfig, this.subscription});

  ModifyPushConfigRequest.fromJson(core.Map json_)
    : this(
        pushConfig:
            json_.containsKey('pushConfig')
                ? PushConfig.fromJson(
                  json_['pushConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pushConfig != null) 'pushConfig': pushConfig!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Request for the PublishBatch method.
class PublishBatchRequest {
  /// The messages to publish.
  core.List<PubsubMessage>? messages;

  /// The messages in the request will be published on this topic.
  core.String? topic;

  PublishBatchRequest({this.messages, this.topic});

  PublishBatchRequest.fromJson(core.Map json_)
    : this(
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => PubsubMessage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messages != null) 'messages': messages!,
    if (topic != null) 'topic': topic!,
  };
}

/// Response for the PublishBatch method.
typedef PublishBatchResponse = $Response01;

/// Request for the Publish method.
class PublishRequest {
  /// The message to publish.
  PubsubMessage? message;

  /// The message in the request will be published on this topic.
  core.String? topic;

  PublishRequest({this.message, this.topic});

  PublishRequest.fromJson(core.Map json_)
    : this(
        message:
            json_.containsKey('message')
                ? PubsubMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
    if (topic != null) 'topic': topic!,
  };
}

/// An event indicating a received message or truncation event.
class PubsubEvent {
  /// Indicates that this subscription has been deleted.
  ///
  /// (Note that pull subscribers will always receive NOT_FOUND in response in
  /// their pull request on the subscription, rather than seeing this boolean.)
  core.bool? deleted;

  /// A received message.
  PubsubMessage? message;

  /// The subscription that received the event.
  core.String? subscription;

  /// Indicates that this subscription has been truncated.
  core.bool? truncated;

  PubsubEvent({this.deleted, this.message, this.subscription, this.truncated});

  PubsubEvent.fromJson(core.Map json_)
    : this(
        deleted: json_['deleted'] as core.bool?,
        message:
            json_.containsKey('message')
                ? PubsubMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscription: json_['subscription'] as core.String?,
        truncated: json_['truncated'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deleted != null) 'deleted': deleted!,
    if (message != null) 'message': message!,
    if (subscription != null) 'subscription': subscription!,
    if (truncated != null) 'truncated': truncated!,
  };
}

/// A message data and its labels.
class PubsubMessage {
  /// The message payload.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Optional list of labels for this message.
  ///
  /// Keys in this collection must be unique.
  core.List<Label>? label;

  /// ID of this message assigned by the server at publication time.
  ///
  /// Guaranteed to be unique within the topic. This value may be read by a
  /// subscriber that receives a PubsubMessage via a Pull call or a push
  /// delivery. It must not be populated by a publisher in a Publish call.
  core.String? messageId;

  /// The time at which the message was published.
  ///
  /// The time is milliseconds since the UNIX epoch.
  core.String? publishTime;

  PubsubMessage({this.data, this.label, this.messageId, this.publishTime});

  PubsubMessage.fromJson(core.Map json_)
    : this(
        data: json_['data'] as core.String?,
        label:
            (json_['label'] as core.List?)
                ?.map(
                  (value) => Label.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        messageId: json_['messageId'] as core.String?,
        publishTime: json_['publishTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (data != null) 'data': data!,
    if (label != null) 'label': label!,
    if (messageId != null) 'messageId': messageId!,
    if (publishTime != null) 'publishTime': publishTime!,
  };
}

/// Request for the PullBatch method.
class PullBatchRequest {
  /// The maximum number of PubsubEvents returned for this request.
  ///
  /// The Pub/Sub system may return fewer than the number of events specified.
  core.int? maxEvents;

  /// If this is specified as true the system will respond immediately even if
  /// it is not able to return a message in the Pull response.
  ///
  /// Otherwise the system is allowed to wait until at least one message is
  /// available rather than returning no messages. The client may cancel the
  /// request if it does not wish to wait any longer for the response.
  core.bool? returnImmediately;

  /// The subscription from which messages should be pulled.
  core.String? subscription;

  PullBatchRequest({this.maxEvents, this.returnImmediately, this.subscription});

  PullBatchRequest.fromJson(core.Map json_)
    : this(
        maxEvents: json_['maxEvents'] as core.int?,
        returnImmediately: json_['returnImmediately'] as core.bool?,
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxEvents != null) 'maxEvents': maxEvents!,
    if (returnImmediately != null) 'returnImmediately': returnImmediately!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Response for the PullBatch method.
class PullBatchResponse {
  /// Received Pub/Sub messages or status events.
  ///
  /// The Pub/Sub system will return zero messages if there are no more messages
  /// available in the backlog. The Pub/Sub system may return fewer than the
  /// max_events requested even if there are more messages available in the
  /// backlog.
  core.List<PullResponse>? pullResponses;

  PullBatchResponse({this.pullResponses});

  PullBatchResponse.fromJson(core.Map json_)
    : this(
        pullResponses:
            (json_['pullResponses'] as core.List?)
                ?.map(
                  (value) => PullResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pullResponses != null) 'pullResponses': pullResponses!,
  };
}

/// Request for the Pull method.
class PullRequest {
  /// If this is specified as true the system will respond immediately even if
  /// it is not able to return a message in the Pull response.
  ///
  /// Otherwise the system is allowed to wait until at least one message is
  /// available rather than returning FAILED_PRECONDITION. The client may cancel
  /// the request if it does not wish to wait any longer for the response.
  core.bool? returnImmediately;

  /// The subscription from which a message should be pulled.
  core.String? subscription;

  PullRequest({this.returnImmediately, this.subscription});

  PullRequest.fromJson(core.Map json_)
    : this(
        returnImmediately: json_['returnImmediately'] as core.bool?,
        subscription: json_['subscription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (returnImmediately != null) 'returnImmediately': returnImmediately!,
    if (subscription != null) 'subscription': subscription!,
  };
}

/// Either a PubsubMessage or a truncation event.
///
/// One of these two must be populated.
class PullResponse {
  /// This ID must be used to acknowledge the received event or message.
  core.String? ackId;

  /// A pubsub message or truncation event.
  PubsubEvent? pubsubEvent;

  PullResponse({this.ackId, this.pubsubEvent});

  PullResponse.fromJson(core.Map json_)
    : this(
        ackId: json_['ackId'] as core.String?,
        pubsubEvent:
            json_.containsKey('pubsubEvent')
                ? PubsubEvent.fromJson(
                  json_['pubsubEvent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ackId != null) 'ackId': ackId!,
    if (pubsubEvent != null) 'pubsubEvent': pubsubEvent!,
  };
}

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// A URL locating the endpoint to which messages should be pushed.
  ///
  /// For example, a Webhook endpoint might use "https://example.com/push".
  core.String? pushEndpoint;

  PushConfig({this.pushEndpoint});

  PushConfig.fromJson(core.Map json_)
    : this(pushEndpoint: json_['pushEndpoint'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pushEndpoint != null) 'pushEndpoint': pushEndpoint!,
  };
}

/// A subscription resource.
class Subscription {
  /// For either push or pull delivery, the value is the maximum time after a
  /// subscriber receives a message before the subscriber should acknowledge or
  /// Nack the message.
  ///
  /// If the Ack deadline for a message passes without an Ack or a Nack, the
  /// Pub/Sub system will eventually redeliver the message. If a subscriber
  /// acknowledges after the deadline, the Pub/Sub system may accept the Ack,
  /// but it is possible that the message has been already delivered again.
  /// Multiple Acks to the message are allowed and will succeed. For push
  /// delivery, this value is used to set the request timeout for the call to
  /// the push endpoint. For pull delivery, this value is used as the initial
  /// value for the Ack deadline. It may be overridden for each message using
  /// its corresponding ack_id with ModifyAckDeadline. While a message is
  /// outstanding (i.e. it has been delivered to a pull subscriber and the
  /// subscriber has not yet Acked or Nacked), the Pub/Sub system will not
  /// deliver that message to another pull subscriber (on a best-effort basis).
  core.int? ackDeadlineSeconds;

  /// Name of the subscription.
  core.String? name;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it.
  PushConfig? pushConfig;

  /// The name of the topic from which this subscription is receiving messages.
  core.String? topic;

  Subscription({
    this.ackDeadlineSeconds,
    this.name,
    this.pushConfig,
    this.topic,
  });

  Subscription.fromJson(core.Map json_)
    : this(
        ackDeadlineSeconds: json_['ackDeadlineSeconds'] as core.int?,
        name: json_['name'] as core.String?,
        pushConfig:
            json_.containsKey('pushConfig')
                ? PushConfig.fromJson(
                  json_['pushConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        topic: json_['topic'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ackDeadlineSeconds != null) 'ackDeadlineSeconds': ackDeadlineSeconds!,
    if (name != null) 'name': name!,
    if (pushConfig != null) 'pushConfig': pushConfig!,
    if (topic != null) 'topic': topic!,
  };
}

/// A topic resource.
class Topic {
  /// Name of the topic.
  core.String? name;

  Topic({this.name});

  Topic.fromJson(core.Map json_) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}
