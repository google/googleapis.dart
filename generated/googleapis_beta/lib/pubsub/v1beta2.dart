// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.pubsub.v1beta2;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client pubsub/v1beta2';

/**
 * Provides reliable, many-to-many, asynchronous messaging between applications.
 */
class PubsubApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage Pub/Sub topics and subscriptions */
  static const PubsubScope = "https://www.googleapis.com/auth/pubsub";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  PubsubApi(http.Client client, {core.String rootUrl: "https://pubsub.googleapis.com/", core.String servicePath: "v1beta2/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSubscriptionsResourceApi get subscriptions => new ProjectsSubscriptionsResourceApi(_requester);
  ProjectsTopicsResourceApi get topics => new ProjectsTopicsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsSubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSubscriptionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Acknowledges the messages associated with the ack tokens in the
   * AcknowledgeRequest. The Pub/Sub system can remove the relevant messages
   * from the subscription. Acknowledging a message whose ack deadline has
   * expired may succeed, but such a message may be redelivered later.
   * Acknowledging a message more than once will not result in an error.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> acknowledge(AcknowledgeRequest request, core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription') + ':acknowledge';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Creates a subscription to a given topic for a given subscriber. If the
   * subscription already exists, returns ALREADY_EXISTS. If the corresponding
   * topic doesn't exist, returns NOT_FOUND. If the name is not provided in the
   * request, the server will assign a random name for this subscription on the
   * same project as the topic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - null
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Subscription> create(Subscription request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
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
   * NOT_FOUND. After a subscription is deleted, a new one may be created with
   * the same name, but the new one has no association with the old
   * subscription, or its topic unless the same topic is specified.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> delete(core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the configuration details of a subscription.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription');

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
   * [project] - null
   *
   * [pageSize] - null
   *
   * [pageToken] - null
   *
   * Completes with a [ListSubscriptionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListSubscriptionsResponse> list(core.String project, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = commons.Escaper.ecapeVariableReserved('$project') + '/subscriptions';

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
   * Modifies the ack deadline for a specific message. This method is useful to
   * indicate that more time is needed to process a message by the subscriber,
   * or to make the message available for redelivery if the processing was
   * interrupted.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> modifyAckDeadline(ModifyAckDeadlineRequest request, core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription') + ':modifyAckDeadline';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Modifies the PushConfig for a specified subscription. This may be used to
   * change a push subscription to a pull one (signified by an empty PushConfig)
   * or vice versa, or change the endpoint URL and other attributes of a push
   * subscription. Messages will accumulate for delivery continuously through
   * the call regardless of changes to the PushConfig.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> modifyPushConfig(ModifyPushConfigRequest request, core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription') + ':modifyPushConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Pulls messages from the server. Returns an empty list if there are no
   * messages available in the backlog. The server may return UNAVAILABLE if
   * there are too many concurrent pull requests pending for the given
   * subscription.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [subscription] - null
   *
   * Completes with a [PullResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PullResponse> pull(PullRequest request, core.String subscription) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (subscription == null) {
      throw new core.ArgumentError("Parameter subscription is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$subscription') + ':pull';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PullResponse.fromJson(data));
  }

}


class ProjectsTopicsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTopicsSubscriptionsResourceApi get subscriptions => new ProjectsTopicsSubscriptionsResourceApi(_requester);

  ProjectsTopicsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates the given topic with the given name.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - null
   *
   * Completes with a [Topic].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Topic> create(Topic request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }

  /**
   * Deletes the topic with the given name. Returns NOT_FOUND if the topic does
   * not exist. After a topic is deleted, a new topic may be created with the
   * same name; this is an entirely new topic with none of the old configuration
   * or subscriptions. Existing subscriptions to this topic are not deleted.
   *
   * Request parameters:
   *
   * [topic] - null
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> delete(core.String topic) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$topic');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the configuration of a topic.
   *
   * Request parameters:
   *
   * [topic] - null
   *
   * Completes with a [Topic].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
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
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$topic');

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
   * [project] - null
   *
   * [pageSize] - null
   *
   * [pageToken] - null
   *
   * Completes with a [ListTopicsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTopicsResponse> list(core.String project, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = commons.Escaper.ecapeVariableReserved('$project') + '/topics';

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
   * Adds one or more messages to the topic. Returns NOT_FOUND if the topic does
   * not exist.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [topic] - null
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishResponse> publish(PublishRequest request, core.String topic) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }


    _url = commons.Escaper.ecapeVariableReserved('$topic') + ':publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

}


class ProjectsTopicsSubscriptionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTopicsSubscriptionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the name of the subscriptions for this topic.
   *
   * Request parameters:
   *
   * [topic] - null
   *
   * [pageSize] - null
   *
   * [pageToken] - null
   *
   * Completes with a [ListTopicSubscriptionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTopicSubscriptionsResponse> list(core.String topic, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (topic == null) {
      throw new core.ArgumentError("Parameter topic is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = commons.Escaper.ecapeVariableReserved('$topic') + '/subscriptions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTopicSubscriptionsResponse.fromJson(data));
  }

}



class AcknowledgeRequest {
  core.List<core.String> ackIds;


  AcknowledgeRequest();

  AcknowledgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ackIds")) {
      ackIds = _json["ackIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackIds != null) {
      _json["ackIds"] = ackIds;
    }
    return _json;
  }
}


class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


class ListSubscriptionsResponse {
  core.String nextPageToken;

  core.List<Subscription> subscriptions;


  ListSubscriptionsResponse();

  ListSubscriptionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("subscriptions")) {
      subscriptions = _json["subscriptions"].map((value) => new Subscription.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (subscriptions != null) {
      _json["subscriptions"] = subscriptions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


class ListTopicSubscriptionsResponse {
  core.String nextPageToken;

  core.List<core.String> subscriptions;


  ListTopicSubscriptionsResponse();

  ListTopicSubscriptionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("subscriptions")) {
      subscriptions = _json["subscriptions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (subscriptions != null) {
      _json["subscriptions"] = subscriptions;
    }
    return _json;
  }
}


class ListTopicsResponse {
  core.String nextPageToken;

  core.List<Topic> topics;


  ListTopicsResponse();

  ListTopicsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("topics")) {
      topics = _json["topics"].map((value) => new Topic.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (topics != null) {
      _json["topics"] = topics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


class ModifyAckDeadlineRequest {
  core.int ackDeadlineSeconds;

  core.String ackId;


  ModifyAckDeadlineRequest();

  ModifyAckDeadlineRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ackDeadlineSeconds")) {
      ackDeadlineSeconds = _json["ackDeadlineSeconds"];
    }
    if (_json.containsKey("ackId")) {
      ackId = _json["ackId"];
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
    return _json;
  }
}


class ModifyPushConfigRequest {
  PushConfig pushConfig;


  ModifyPushConfigRequest();

  ModifyPushConfigRequest.fromJson(core.Map _json) {
    if (_json.containsKey("pushConfig")) {
      pushConfig = new PushConfig.fromJson(_json["pushConfig"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pushConfig != null) {
      _json["pushConfig"] = (pushConfig).toJson();
    }
    return _json;
  }
}


class PublishRequest {
  core.List<PubsubMessage> messages;


  PublishRequest();

  PublishRequest.fromJson(core.Map _json) {
    if (_json.containsKey("messages")) {
      messages = _json["messages"].map((value) => new PubsubMessage.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


class PublishResponse {
  core.List<core.String> messageIds;


  PublishResponse();

  PublishResponse.fromJson(core.Map _json) {
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


class PubsubMessage {
  core.Map<core.String, core.String> attributes;

  core.String data;

  core.List<core.int> get dataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  core.String messageId;


  PubsubMessage();

  PubsubMessage.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = _json["attributes"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributes != null) {
      _json["attributes"] = attributes;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    return _json;
  }
}


class PullRequest {
  core.int maxMessages;

  core.bool returnImmediately;


  PullRequest();

  PullRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxMessages")) {
      maxMessages = _json["maxMessages"];
    }
    if (_json.containsKey("returnImmediately")) {
      returnImmediately = _json["returnImmediately"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxMessages != null) {
      _json["maxMessages"] = maxMessages;
    }
    if (returnImmediately != null) {
      _json["returnImmediately"] = returnImmediately;
    }
    return _json;
  }
}


class PullResponse {
  core.List<ReceivedMessage> receivedMessages;


  PullResponse();

  PullResponse.fromJson(core.Map _json) {
    if (_json.containsKey("receivedMessages")) {
      receivedMessages = _json["receivedMessages"].map((value) => new ReceivedMessage.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (receivedMessages != null) {
      _json["receivedMessages"] = receivedMessages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


class PushConfig {
  core.Map<core.String, core.String> attributes;

  core.String pushEndpoint;


  PushConfig();

  PushConfig.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = _json["attributes"];
    }
    if (_json.containsKey("pushEndpoint")) {
      pushEndpoint = _json["pushEndpoint"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributes != null) {
      _json["attributes"] = attributes;
    }
    if (pushEndpoint != null) {
      _json["pushEndpoint"] = pushEndpoint;
    }
    return _json;
  }
}


class ReceivedMessage {
  core.String ackId;

  PubsubMessage message;


  ReceivedMessage();

  ReceivedMessage.fromJson(core.Map _json) {
    if (_json.containsKey("ackId")) {
      ackId = _json["ackId"];
    }
    if (_json.containsKey("message")) {
      message = new PubsubMessage.fromJson(_json["message"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ackId != null) {
      _json["ackId"] = ackId;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}


class Subscription {
  core.int ackDeadlineSeconds;

  core.String name;

  PushConfig pushConfig;

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


class Topic {
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
