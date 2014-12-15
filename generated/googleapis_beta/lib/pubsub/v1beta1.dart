library googleapis_beta.pubsub.v1beta1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * Provides reliable, many-to-many, asynchronous messaging between applications.
 */
class PubsubApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage Pub/Sub topics and subscriptions */
  static const PubsubScope = "https://www.googleapis.com/auth/pubsub";


  final common_internal.ApiRequester _requester;

  SubscriptionsResourceApi get subscriptions => new SubscriptionsResourceApi(_requester);
  TopicsResourceApi get topics => new TopicsResourceApi(_requester);

  PubsubApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "pubsub/v1beta1/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class SubscriptionsResourceApi {
  final common_internal.ApiRequester _requester;

  SubscriptionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Acknowledges a particular received message: the Pub/Sub system can remove
   * the given message from the subscription. Acknowledging a message whose Ack
   * deadline has expired may succeed, but the message could have been already
   * redelivered. Acknowledging a message more than once will not result in an
   * error. This is only used for messages received via pull.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future acknowledge(AcknowledgeRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _downloadOptions = null;

    _url = 'subscriptions/acknowledge';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Creates a subscription on a given topic for a given subscriber. If the
   * subscription already exists, returns ALREADY_EXISTS. If the corresponding
   * topic doesn't exist, returns NOT_FOUND.
   *
   * If the name is not provided in the request, the server will assign a random
   * name for this subscription on the same project as the topic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Subscription].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Subscription> create(Subscription request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'subscriptions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Deletes an existing subscription. All pending messages in the subscription
   * are immediately dropped. Calls to Pull after deletion will return
   * NOT_FOUND.
   *
   * Request parameters:
   *
   * [subscription] - The subscription to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }

    _downloadOptions = null;

    _url = 'subscriptions/' + common_internal.Escaper.ecapeVariableReserved('$subscription');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the configuration details of a subscription.
   *
   * Request parameters:
   *
   * [subscription] - The name of the subscription to get.
   *
   * Completes with a [Subscription].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Subscription> get(core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = 'subscriptions/' + common_internal.Escaper.ecapeVariableReserved('$subscription');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /**
   * Lists matching subscriptions.
   *
   * Request parameters:
   *
   * [maxResults] - Maximum number of subscriptions to return.
   *
   * [pageToken] - The value obtained in the last ListSubscriptionsResponse for
   * continuation.
   *
   * [query] - A valid label query expression.
   *
   * Completes with a [ListSubscriptionsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListSubscriptionsResponse> list({core.int maxResults, core.String pageToken, core.String query}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }


    _url = 'subscriptions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSubscriptionsResponse.fromJson(data));
  }

  /**
   * Modifies the Ack deadline for a message received from a pull request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future modifyAckDeadline(ModifyAckDeadlineRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _downloadOptions = null;

    _url = 'subscriptions/modifyAckDeadline';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Modifies the PushConfig for a specified subscription. This method can be
   * used to suspend the flow of messages to an end point by clearing the
   * PushConfig field in the request. Messages will be accumulated for delivery
   * even if no push configuration is defined or while the configuration is
   * modified.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future modifyPushConfig(ModifyPushConfigRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _downloadOptions = null;

    _url = 'subscriptions/modifyPushConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Pulls a single message from the server. If return_immediately is true, and
   * no messages are available in the subscription, this method returns
   * FAILED_PRECONDITION. The system is free to return an UNAVAILABLE error if
   * no messages are available in a reasonable amount of time (to reduce system
   * load).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [PullResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PullResponse> pull(PullRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'subscriptions/pull';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PullResponse.fromJson(data));
  }

  /**
   * Pulls messages from the server. Returns an empty list if there are no
   * messages available in the backlog. The system is free to return UNAVAILABLE
   * if there too many pull requests outstanding for a given subscription.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [PullBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PullBatchResponse> pullBatch(PullBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'subscriptions/pullBatch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PullBatchResponse.fromJson(data));
  }

}


/** Not documented yet. */
class TopicsResourceApi {
  final common_internal.ApiRequester _requester;

  TopicsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates the given topic with the given name.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Topic].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Topic> create(Topic request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'topics';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }

  /**
   * Deletes the topic with the given name. All subscriptions to this topic are
   * also deleted. Returns NOT_FOUND if the topic does not exist. After a topic
   * is deleted, a new topic may be created with the same name.
   *
   * Request parameters:
   *
   * [topic] - Name of the topic to delete.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String topic) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }

    _downloadOptions = null;

    _url = 'topics/' + common_internal.Escaper.ecapeVariableReserved('$topic');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets the configuration of a topic. Since the topic only has the name
   * attribute, this method is only useful to check the existence of a topic. If
   * other attributes are added in the future, they will be returned here.
   *
   * Request parameters:
   *
   * [topic] - The name of the topic to get.
   *
   * Completes with a [Topic].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Topic> get(core.String topic) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }


    _url = 'topics/' + common_internal.Escaper.ecapeVariableReserved('$topic');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }

  /**
   * Lists matching topics.
   *
   * Request parameters:
   *
   * [maxResults] - Maximum number of topics to return.
   *
   * [pageToken] - The value obtained in the last ListTopicsResponse for
   * continuation.
   *
   * [query] - A valid label query expression.
   *
   * Completes with a [ListTopicsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTopicsResponse> list({core.int maxResults, core.String pageToken, core.String query}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }


    _url = 'topics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTopicsResponse.fromJson(data));
  }

  /**
   * Adds a message to the topic. Returns NOT_FOUND if the topic does not exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future publish(PublishRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _downloadOptions = null;

    _url = 'topics/publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Adds one or more messages to the topic. Returns NOT_FOUND if the topic does
   * not exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [PublishBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishBatchResponse> publishBatch(PublishBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'topics/publishBatch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishBatchResponse.fromJson(data));
  }

}



/** Request for the Acknowledge method. */
class AcknowledgeRequest {
  /**
   * The Ack ID for the message being acknowledged. This was returned by the
   * Pub/Sub system in the Pull response.
   */
  core.List<core.String> ackId;

  /** The subscription whose message is being acknowledged. */
  core.String subscription;


  AcknowledgeRequest();

  AcknowledgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ackId")) {
      ackId = _json["ackId"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackId != null) {
      _json["ackId"] = ackId;
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    return _json;
  }
}


/** A key-value pair applied to a given object. */
class Label {
  /**
   * The key of a label is a syntactically valid URL (as per RFC 1738) with the
   * "scheme" and initial slashes omitted and with the additional restrictions
   * noted below. Each key should be globally unique. The "host" portion is
   * called the "namespace" and is not necessarily resolvable to a network
   * endpoint. Instead, the namespace indicates what system or entity defines
   * the semantics of the label. Namespaces do not restrict the set of objects
   * to which a label may be associated.
   *
   * Keys are defined by the following grammar:
   *
   * key = hostname "/" kpath kpath = ksegment *[ "/" ksegment ] ksegment =
   * alphadigit | *[ alphadigit | "-" | "_" | "." ]
   *
   * where "hostname" and "alphadigit" are defined as in RFC 1738.
   *
   * Example key: spanner.google.com/universe
   */
  core.String key;

  /** An integer value. */
  core.String numValue;

  /** A string value. */
  core.String strValue;


  Label();

  Label.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("numValue")) {
      numValue = _json["numValue"];
    }
    if (_json.containsKey("strValue")) {
      strValue = _json["strValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (numValue != null) {
      _json["numValue"] = numValue;
    }
    if (strValue != null) {
      _json["strValue"] = strValue;
    }
    return _json;
  }
}


/** Response for the ListSubscriptions method. */
class ListSubscriptionsResponse {
  /**
   * If not empty, indicates that there are more subscriptions that match the
   * request and this value should be passed to the next
   * ListSubscriptionsRequest to continue.
   */
  core.String nextPageToken;

  /** The subscriptions that match the request. */
  core.List<Subscription> subscription;


  ListSubscriptionsResponse();

  ListSubscriptionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"].map((value) => new Subscription.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (subscription != null) {
      _json["subscription"] = subscription.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Response for the ListTopics method. */
class ListTopicsResponse {
  /**
   * If not empty, indicates that there are more topics that match the request,
   * and this value should be passed to the next ListTopicsRequest to continue.
   */
  core.String nextPageToken;

  /** The resulting topics. */
  core.List<Topic> topic;


  ListTopicsResponse();

  ListTopicsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"].map((value) => new Topic.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (topic != null) {
      _json["topic"] = topic.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Request for the ModifyAckDeadline method. */
class ModifyAckDeadlineRequest {
  /** The new Ack deadline. Must be >= 0. */
  core.int ackDeadlineSeconds;

  /** The Ack ID. */
  core.String ackId;

  /** The name of the subscription from which messages are being pulled. */
  core.String subscription;


  ModifyAckDeadlineRequest();

  ModifyAckDeadlineRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ackDeadlineSeconds")) {
      ackDeadlineSeconds = _json["ackDeadlineSeconds"];
    }
    if (_json.containsKey("ackId")) {
      ackId = _json["ackId"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackDeadlineSeconds != null) {
      _json["ackDeadlineSeconds"] = ackDeadlineSeconds;
    }
    if (ackId != null) {
      _json["ackId"] = ackId;
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    return _json;
  }
}


/** Request for the ModifyPushConfig method. */
class ModifyPushConfigRequest {
  /**
   * An empty push_config indicates that the Pub/Sub system should pause pushing
   * messages from the given subscription.
   */
  PushConfig pushConfig;

  /** The name of the subscription. */
  core.String subscription;


  ModifyPushConfigRequest();

  ModifyPushConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey("pushConfig")) {
      pushConfig = new PushConfig.fromJson(_json["pushConfig"]);
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pushConfig != null) {
      _json["pushConfig"] = (pushConfig).toJson();
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    return _json;
  }
}


/** Request for the PublishBatch method. */
class PublishBatchRequest {
  /** The messages to publish. */
  core.List<PubsubMessage> messages;

  /** The messages in the request will be published on this topic. */
  core.String topic;


  PublishBatchRequest();

  PublishBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("messages")) {
      messages = _json["messages"].map((value) => new PubsubMessage.fromJson(value)).toList();
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}


/** Response for the PublishBatch method. */
class PublishBatchResponse {
  /**
   * The server-assigned ID of each published message, in the same order as the
   * messages in the request. IDs are guaranteed to be unique within the topic.
   */
  core.List<core.String> messageIds;


  PublishBatchResponse();

  PublishBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("messageIds")) {
      messageIds = _json["messageIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (messageIds != null) {
      _json["messageIds"] = messageIds;
    }
    return _json;
  }
}


/** Request for the Publish method. */
class PublishRequest {
  /** The message to publish. */
  PubsubMessage message;

  /** The message in the request will be published on this topic. */
  core.String topic;


  PublishRequest();

  PublishRequest.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new PubsubMessage.fromJson(_json["message"]);
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}


/** An event indicating a received message or truncation event. */
class PubsubEvent {
  /**
   * Indicates that this subscription has been deleted. (Note that pull
   * subscribers will always receive NOT_FOUND in response in their pull request
   * on the subscription, rather than seeing this boolean.)
   */
  core.bool deleted;

  /** A received message. */
  PubsubMessage message;

  /** The subscription that received the event. */
  core.String subscription;

  /** Indicates that this subscription has been truncated. */
  core.bool truncated;


  PubsubEvent();

  PubsubEvent.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("message")) {
      message = new PubsubMessage.fromJson(_json["message"]);
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
    if (_json.containsKey("truncated")) {
      truncated = _json["truncated"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    if (truncated != null) {
      _json["truncated"] = truncated;
    }
    return _json;
  }
}


/** A message data and its labels. */
class PubsubMessage {
  /** The message payload. */
  core.String data;

  core.List<core.int> get dataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  /**
   * Optional list of labels for this message. Keys in this collection must be
   * unique.
   */
  core.List<Label> label;

  /**
   * ID of this message assigned by the server at publication time. Guaranteed
   * to be unique within the topic. This value may be read by a subscriber that
   * receives a PubsubMessage via a Pull call or a push delivery. It must not be
   * populated by a publisher in a Publish call.
   */
  core.String messageId;


  PubsubMessage();

  PubsubMessage.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("label")) {
      label = _json["label"].map((value) => new Label.fromJson(value)).toList();
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (data != null) {
      _json["data"] = data;
    }
    if (label != null) {
      _json["label"] = label.map((value) => (value).toJson()).toList();
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    return _json;
  }
}


/** Request for the PullBatch method. */
class PullBatchRequest {
  /**
   * The maximum number of PubsubEvents returned for this request. The Pub/Sub
   * system may return fewer than the number of events specified.
   */
  core.int maxEvents;

  /**
   * If this is specified as true the system will respond immediately even if it
   * is not able to return a message in the Pull response. Otherwise the system
   * is allowed to wait until at least one message is available rather than
   * returning no messages. The client may cancel the request if it does not
   * wish to wait any longer for the response.
   */
  core.bool returnImmediately;

  /** The subscription from which messages should be pulled. */
  core.String subscription;


  PullBatchRequest();

  PullBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxEvents")) {
      maxEvents = _json["maxEvents"];
    }
    if (_json.containsKey("returnImmediately")) {
      returnImmediately = _json["returnImmediately"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxEvents != null) {
      _json["maxEvents"] = maxEvents;
    }
    if (returnImmediately != null) {
      _json["returnImmediately"] = returnImmediately;
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    return _json;
  }
}


/** Response for the PullBatch method. */
class PullBatchResponse {
  /**
   * Received Pub/Sub messages or status events. The Pub/Sub system will return
   * zero messages if there are no more messages available in the backlog. The
   * Pub/Sub system may return fewer than the max_events requested even if there
   * are more messages available in the backlog.
   */
  core.List<PullResponse> pullResponses;


  PullBatchResponse();

  PullBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("pullResponses")) {
      pullResponses = _json["pullResponses"].map((value) => new PullResponse.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pullResponses != null) {
      _json["pullResponses"] = pullResponses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Request for the Pull method. */
class PullRequest {
  /**
   * If this is specified as true the system will respond immediately even if it
   * is not able to return a message in the Pull response. Otherwise the system
   * is allowed to wait until at least one message is available rather than
   * returning FAILED_PRECONDITION. The client may cancel the request if it does
   * not wish to wait any longer for the response.
   */
  core.bool returnImmediately;

  /** The subscription from which a message should be pulled. */
  core.String subscription;


  PullRequest();

  PullRequest.fromJson(core.Map _json) {
    if (_json.containsKey("returnImmediately")) {
      returnImmediately = _json["returnImmediately"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (returnImmediately != null) {
      _json["returnImmediately"] = returnImmediately;
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    return _json;
  }
}


/**
 * Either a PubsubMessage or a truncation event. One of these two must be
 * populated.
 */
class PullResponse {
  /** This ID must be used to acknowledge the received event or message. */
  core.String ackId;

  /** A pubsub message or truncation event. */
  PubsubEvent pubsubEvent;


  PullResponse();

  PullResponse.fromJson(core.Map _json) {
    if (_json.containsKey("ackId")) {
      ackId = _json["ackId"];
    }
    if (_json.containsKey("pubsubEvent")) {
      pubsubEvent = new PubsubEvent.fromJson(_json["pubsubEvent"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackId != null) {
      _json["ackId"] = ackId;
    }
    if (pubsubEvent != null) {
      _json["pubsubEvent"] = (pubsubEvent).toJson();
    }
    return _json;
  }
}


/** Configuration for a push delivery endpoint. */
class PushConfig {
  /**
   * A URL locating the endpoint to which messages should be pushed. For
   * example, a Webhook endpoint might use "https://example.com/push".
   */
  core.String pushEndpoint;


  PushConfig();

  PushConfig.fromJson(core.Map _json) {
    if (_json.containsKey("pushEndpoint")) {
      pushEndpoint = _json["pushEndpoint"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pushEndpoint != null) {
      _json["pushEndpoint"] = pushEndpoint;
    }
    return _json;
  }
}


/** A subscription resource. */
class Subscription {
  /**
   * For either push or pull delivery, the value is the maximum time after a
   * subscriber receives a message before the subscriber should acknowledge or
   * Nack the message. If the Ack deadline for a message passes without an Ack
   * or a Nack, the Pub/Sub system will eventually redeliver the message. If a
   * subscriber acknowledges after the deadline, the Pub/Sub system may accept
   * the Ack, but it is possible that the message has been already delivered
   * again. Multiple Acks to the message are allowed and will succeed.
   *
   * For push delivery, this value is used to set the request timeout for the
   * call to the push endpoint.
   *
   * For pull delivery, this value is used as the initial value for the Ack
   * deadline. It may be overridden for a specific pull request (message) with
   * ModifyAckDeadline. While a message is outstanding (i.e. it has been
   * delivered to a pull subscriber and the subscriber has not yet Acked or
   * Nacked), the Pub/Sub system will not deliver that message to another pull
   * subscriber (on a best-effort basis).
   */
  core.int ackDeadlineSeconds;

  /** Name of the subscription. */
  core.String name;

  /**
   * If push delivery is used with this subscription, this field is used to
   * configure it.
   */
  PushConfig pushConfig;

  /**
   * The name of the topic from which this subscription is receiving messages.
   */
  core.String topic;


  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey("ackDeadlineSeconds")) {
      ackDeadlineSeconds = _json["ackDeadlineSeconds"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pushConfig")) {
      pushConfig = new PushConfig.fromJson(_json["pushConfig"]);
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackDeadlineSeconds != null) {
      _json["ackDeadlineSeconds"] = ackDeadlineSeconds;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pushConfig != null) {
      _json["pushConfig"] = (pushConfig).toJson();
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}


/** A topic resource. */
class Topic {
  /** Name of the topic. */
  core.String name;


  Topic();

  Topic.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


