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

  PubsubApi(http.Client client, {core.String rootUrl: "https://pubsub.googleapis.com/", core.String servicePath: ""}) :
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
   * [subscription] - The subscription whose message is being acknowledged.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription') + ':acknowledge';

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
   * [name] - The name of the subscription. It must have the format >
   * `"projects/
   * /subscriptions/"` for Google > Cloud Pub/Sub API v1beta2. > `subscription`
   * must start with a letter, and contain only > letters ([A-Za-z]), numbers
   * ([0-9], dashes (-), underscores (_), > periods (.), tildes (~), plus (+) or
   * percent signs (%). It must be > between 3 and 255 characters in length, and
   * cannot begin with the > string goog.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * [subscription] - The subscription to delete.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription');

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
   * [subscription] - The name of the subscription to get.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Subscription].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription');

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
   * Gets the access control policy for a resource. May be empty if no such
   * policy or resource exists.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being requested.
   * Usually some path like projects/{project}.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists matching subscriptions.
   *
   * Request parameters:
   *
   * [project] - The name of the cloud project that subscriptions belong to.
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageSize] - Maximum number of subscriptions to return.
   *
   * [pageToken] - The value returned by the last ListSubscriptionsResponse;
   * indicates that this is a continuation of a prior ListSubscriptions call,
   * and that the system should return the next page of data.
   *
   * Completes with a [ListSubscriptionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$project') + '/subscriptions';

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
   * [subscription] - The name of the subscription.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription') + ':modifyAckDeadline';

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
   * [subscription] - The name of the subscription.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription') + ':modifyPushConfig';

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
   * [subscription] - The subscription from which messages should be pulled.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [PullResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$subscription') + ':pull';

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
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being specified.
   * Usually some path like projects/{project}/zones/{zone}/disks/{disk}.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy detail is being
   * requested. Usually some path like projects/{project}.
   * Value must have pattern "^projects/[^/] * / subscriptions/[^/]*$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
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
   * [name] - The name of the topic. It must have the format > `"projects/
   * /topics/"` for Google Cloud Pub/Sub > API v1beta2. > `topic` must start
   * with a letter, and contain only > letters ([A-Za-z]), numbers ([0-9],
   * dashes (-), underscores (_), > periods (.), tildes (~), plus (+) or percent
   * signs (%). It must be > between 3 and 255 characters in length, and cannot
   * begin with the > string goog.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [Topic].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * [topic] - Name of the topic to delete.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic');

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
   * [topic] - The name of the topic to get.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [Topic].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic');

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
   * Gets the access control policy for a resource. May be empty if no such
   * policy or resource exists.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being requested.
   * Usually some path like projects/{project}.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists matching topics.
   *
   * Request parameters:
   *
   * [project] - The name of the cloud project that topics belong to.
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageSize] - Maximum number of topics to return.
   *
   * [pageToken] - The value returned by the last ListTopicsResponse; indicates
   * that this is a continuation of a prior ListTopics call, and that the system
   * should return the next page of data.
   *
   * Completes with a [ListTopicsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$project') + '/topics';

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
   * [topic] - The messages in the request will be published on this topic.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [PublishResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic') + ':publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishResponse.fromJson(data));
  }

  /**
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy is being specified.
   * Usually some path like projects/{project}/zones/{zone}/disks/{disk}.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which policy detail is being
   * requested. Usually some path like projects/{project}.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
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
   * [topic] - The name of the topic that subscriptions are attached to.
   * Value must have pattern "^projects/[^/] * / topics/[^/]*$".
   *
   * [pageSize] - Maximum number of subscription names to return.
   *
   * [pageToken] - The value returned by the last
   * ListTopicSubscriptionsResponse; indicates that this is a continuation of a
   * prior ListTopicSubscriptions call, and that the system should return the
   * next page of data.
   *
   * Completes with a [ListTopicSubscriptionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$topic') + '/subscriptions';

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



/** Request for the Acknowledge method. */
class AcknowledgeRequest {
  /**
   * The acknowledgment ID for the messages being acknowledged that was returned
   * by the Pub/Sub system in the Pull response. Must not be empty.
   */
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

/**
 * Associates members of various types with roles. See below for details of the
 * various objects that can be included as members.
 */
class Binding {
  /**
   * Format of member entries: 1. * Matches any requesting principal (users,
   * service accounts or anonymous). 2. user:{emailid} A google user account
   * using an email address. For example alice@gmail.com, joe@example.com 3.
   * serviceAccount:{emailid} An service account email. 4. group:{emailid} A
   * google group with an email address. For example auth-ti-cloud@google.com 5.
   * domain:{domain} A Google Apps domain name. For example google.com,
   * example.com
   */
  core.List<core.String> members;
  /**
   * The name of the role to which the members should be bound. Examples:
   * "roles/viewer", "roles/editor", "roles/owner". Required
   */
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/** Description of a change to a policy. */
class ChangeDescription {
  /** Human-readable summary of the change. */
  core.String summary;

  ChangeDescription();

  ChangeDescription.fromJson(core.Map _json) {
    if (_json.containsKey("summary")) {
      summary = _json["summary"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (summary != null) {
      _json["summary"] = summary;
    }
    return _json;
  }
}

/** Write a Cloud Audit log */
class CloudAuditOptions {

  CloudAuditOptions();

  CloudAuditOptions.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** A condition to be met. */
class Condition {
  /**
   * Trusted attributes supplied by the IAM system.
   * Possible string values are:
   * - "NO_ATTR" : A NO_ATTR.
   * - "AUTHORITY" : A AUTHORITY.
   * - "ATTRIBUTION" : A ATTRIBUTION.
   */
  core.String iam;
  /**
   * An operator to apply the subject with.
   * Possible string values are:
   * - "NO_OP" : A NO_OP.
   * - "EQUALS" : A EQUALS.
   * - "NOT_EQUALS" : A NOT_EQUALS.
   * - "IN" : A IN.
   * - "NOT_IN" : A NOT_IN.
   * - "DISCHARGED" : A DISCHARGED.
   */
  core.String op;
  /** Trusted attributes discharged by the service. */
  core.String svc;
  /**
   * Trusted attributes supplied by any service that owns resources and uses the
   * IAM system for access control.
   * Possible string values are:
   * - "NO_ATTR" : A NO_ATTR.
   * - "REGION" : A REGION.
   * - "SERVICE" : A SERVICE.
   * - "NAME" : A NAME.
   * - "IP" : A IP.
   */
  core.String sys;
  /** The object of the condition. Exactly one of these must be set. */
  core.String value;
  /** The objects of the condition. This is mutually exclusive with 'value'. */
  core.List<core.String> values;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("iam")) {
      iam = _json["iam"];
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
    if (_json.containsKey("svc")) {
      svc = _json["svc"];
    }
    if (_json.containsKey("sys")) {
      sys = _json["sys"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("values")) {
      values = _json["values"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (iam != null) {
      _json["iam"] = iam;
    }
    if (op != null) {
      _json["op"] = op;
    }
    if (svc != null) {
      _json["svc"] = svc;
    }
    if (sys != null) {
      _json["sys"] = sys;
    }
    if (value != null) {
      _json["value"] = value;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/** Options for counters */
class CounterOptions {
  /** The field value to attribute. */
  core.String field;
  /** The metric to update. */
  core.String metric;

  CounterOptions();

  CounterOptions.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (field != null) {
      _json["field"] = field;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    return _json;
  }
}

/** Write a Data Access (Gin) log */
class DataAccessOptions {

  DataAccessOptions();

  DataAccessOptions.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Response for the ListSubscriptions method. */
class ListSubscriptionsResponse {
  /**
   * If not empty, indicates that there may be more subscriptions that match the
   * request; this value should be passed in a new ListSubscriptionsRequest to
   * get more subscriptions.
   */
  core.String nextPageToken;
  /** The subscriptions that match the request. */
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

/** Response for the ListTopicSubscriptions method. */
class ListTopicSubscriptionsResponse {
  /**
   * If not empty, indicates that there may be more subscriptions that match the
   * request; this value should be passed in a new ListTopicSubscriptionsRequest
   * to get more subscriptions.
   */
  core.String nextPageToken;
  /** The names of the subscriptions that match the request. */
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

/** Response for the ListTopics method. */
class ListTopicsResponse {
  /**
   * If not empty, indicates that there may be more topics that match the
   * request; this value should be passed in a new ListTopicsRequest.
   */
  core.String nextPageToken;
  /** The resulting topics. */
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

/**
 * Specifies what kind of log the caller must write Increment a streamz counter
 * with the specified metric and field names. Metric names should start with a
 * '/', generally be lowercase-only, and end in "_count". Field names should not
 * contain an initial slash. The actual exported metric names will have
 * "/iam/policy" prepended. Field names correspond to IAM request parameters and
 * field values are their respective values. At present only "iam_principal",
 * corresponding to IAMContext.principal, is supported. Examples: counter {
 * metric: "/debug_access_count" field: "iam_principal" } ==> increment counter
 * /iam/policy/backend_debug_access_count {iam_principal=[value of
 * IAMContext.principal]} At this time we do not support: * multiple field names
 * (though this may be supported in the future) * decrementing the counter *
 * incrementing it by anything other than 1
 */
class LogConfig {
  /** Cloud audit options. */
  CloudAuditOptions cloudAudit;
  /** Counter options. */
  CounterOptions counter;
  /** Data access options. */
  DataAccessOptions dataAccess;

  LogConfig();

  LogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cloudAudit")) {
      cloudAudit = new CloudAuditOptions.fromJson(_json["cloudAudit"]);
    }
    if (_json.containsKey("counter")) {
      counter = new CounterOptions.fromJson(_json["counter"]);
    }
    if (_json.containsKey("dataAccess")) {
      dataAccess = new DataAccessOptions.fromJson(_json["dataAccess"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cloudAudit != null) {
      _json["cloudAudit"] = (cloudAudit).toJson();
    }
    if (counter != null) {
      _json["counter"] = (counter).toJson();
    }
    if (dataAccess != null) {
      _json["dataAccess"] = (dataAccess).toJson();
    }
    return _json;
  }
}

/** Request for the ModifyAckDeadline method. */
class ModifyAckDeadlineRequest {
  /**
   * The new ack deadline with respect to the time this request was sent to the
   * Pub/Sub system. Must be >= 0. For example, if the value is 10, the new ack
   * deadline will expire 10 seconds after the ModifyAckDeadline call was made.
   * Specifying zero may immediately make the message available for another pull
   * request.
   */
  core.int ackDeadlineSeconds;
  /** The acknowledgment ID. */
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

/** Request for the ModifyPushConfig method. */
class ModifyPushConfigRequest {
  /**
   * The push configuration for future deliveries. An empty pushConfig indicates
   * that the Pub/Sub system should stop pushing messages from the given
   * subscription and allow messages to be pulled and acknowledged - effectively
   * pausing the subscription if Pull is not called.
   */
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

/**
 * # Overview The `Policy` defines an access control policy language. It can be
 * used to define policies that can be attached to resources like files,
 * folders, VMs, etc. # Policy structure A `Policy` consists of a list of
 * bindings. A `Binding` binds a set of members to a role, where the members can
 * include user accounts, user groups, user domains, and service accounts. A
 * role is a named set of permissions, defined by the IAM system. The definition
 * of a role is outside the policy. A permission check involves determining the
 * roles that include the specified permission, and then determining if the
 * principal specified by the check is a member of a binding to at least one of
 * these roles. The membership check is recursive when a group is bound to a
 * role. Policy examples: ``` { "bindings": [ { "role": "roles/owner",
 * "members": [ "user:mike@example.com", "group::admins@example.com",
 * "domain:google.com",
 * "serviceAccount:frontend@example.iam.gserviceaccounts.com"] }, { "role":
 * "roles/viewer", "members": ["user:sean@example.com"] } ] } ```
 */
class Policy {
  /**
   * It is an error to specify multiple bindings for the same role. It is an
   * error to specify a binding with no members.
   */
  core.List<Binding> bindings;
  /** Can be used to perform a read-modify-write. */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  core.List<Rule> rules;
  /**
   * The policy language version. The version of the policy itself is
   * represented by the etag. The current version is 0.
   */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("rules")) {
      rules = _json["rules"].map((value) => new Rule.fromJson(value)).toList();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/** Request for the Publish method. */
class PublishRequest {
  /** The messages to publish. */
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

/** Response for the Publish method. */
class PublishResponse {
  /**
   * The server-assigned ID of each published message, in the same order as the
   * messages in the request. IDs are guaranteed to be unique within the topic.
   */
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

/** A message data and its attributes. */
class PubsubMessage {
  /** Optional attributes for this message. */
  core.Map<core.String, core.String> attributes;
  /**
   * The message payload. For JSON requests, the value of this field must be
   * base64-encoded.
   */
  core.String data;
  core.List<core.int> get dataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * ID of this message assigned by the server at publication time. Guaranteed
   * to be unique within the topic. This value may be read by a subscriber that
   * receives a PubsubMessage via a Pull call or a push delivery. It must not be
   * populated by a publisher in a Publish call.
   */
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

/** Request for the Pull method. */
class PullRequest {
  /**
   * The maximum number of messages returned for this request. The Pub/Sub
   * system may return fewer than the number specified.
   */
  core.int maxMessages;
  /**
   * If this is specified as true the system will respond immediately even if it
   * is not able to return a message in the Pull response. Otherwise the system
   * is allowed to wait until at least one message is available rather than
   * returning no messages. The client may cancel the request if it does not
   * wish to wait any longer for the response.
   */
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

/** Response for the Pull method. */
class PullResponse {
  /**
   * Received Pub/Sub messages. The Pub/Sub system will return zero messages if
   * there are no more available in the backlog. The Pub/Sub system may return
   * fewer than the maxMessages requested even if there are more messages
   * available in the backlog.
   */
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

/** Configuration for a push delivery endpoint. */
class PushConfig {
  /**
   * Endpoint configuration attributes. Every endpoint has a set of API
   * supported attributes that can be used to control different aspects of the
   * message delivery. The currently supported attribute is `x-goog-version`,
   * which you can use to change the format of the push message. This attribute
   * indicates the version of the data expected by the endpoint. This controls
   * the shape of the envelope (i.e. its fields and metadata). The endpoint
   * version is based on the version of the Pub/Sub API. If not present during
   * the CreateSubscription call, it will default to the version of the API used
   * to make such call. If not present during a ModifyPushConfig call, its value
   * will not be changed. GetSubscription calls will always return a valid
   * version, even if the subscription was created without this attribute. The
   * possible values for this attribute are: * `v1beta1`: uses the push format
   * defined in the v1beta1 Pub/Sub API. * `v1beta2`: uses the push format
   * defined in the v1beta2 Pub/Sub API.
   */
  core.Map<core.String, core.String> attributes;
  /**
   * A URL locating the endpoint to which messages should be pushed. For
   * example, a Webhook endpoint might use "https://example.com/push".
   */
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

/** A message and its corresponding acknowledgment ID. */
class ReceivedMessage {
  /** This ID can be used to acknowledge the received message. */
  core.String ackId;
  /** The message. */
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

/** A rule to be applied in a Policy. */
class Rule {
  /**
   * Required
   * Possible string values are:
   * - "NO_ACTION" : A NO_ACTION.
   * - "ALLOW" : A ALLOW.
   * - "ALLOW_WITH_LOG" : A ALLOW_WITH_LOG.
   * - "DENY" : A DENY.
   * - "DENY_WITH_LOG" : A DENY_WITH_LOG.
   * - "LOG" : A LOG.
   */
  core.String action;
  /** Additional restrictions that must be met */
  core.List<Condition> conditions;
  /** Human-readable description of the rule. */
  core.String description;
  /**
   * The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in this set of
   * entries.
   */
  core.List<core.String> in_;
  /**
   * The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
   * that match the LOG action.
   */
  core.List<LogConfig> logConfig;
  /**
   * The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is not in this set of
   * entries. The formation for in and not_in entries is the same as members in
   * a Binding above.
   */
  core.List<core.String> notIn;
  /**
   * A permission is a string of form '..' (e.g., 'storage.buckets.list'). A
   * value of '*' matches all permissions, and a verb part of '*' (e.g.,
   * 'storage.buckets.*') matches all verbs.
   */
  core.List<core.String> permissions;

  Rule();

  Rule.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("conditions")) {
      conditions = _json["conditions"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("in")) {
      in_ = _json["in"];
    }
    if (_json.containsKey("logConfig")) {
      logConfig = _json["logConfig"].map((value) => new LogConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("notIn")) {
      notIn = _json["notIn"];
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (action != null) {
      _json["action"] = action;
    }
    if (conditions != null) {
      _json["conditions"] = conditions.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (in_ != null) {
      _json["in"] = in_;
    }
    if (logConfig != null) {
      _json["logConfig"] = logConfig.map((value) => (value).toJson()).toList();
    }
    if (notIn != null) {
      _json["notIn"] = notIn;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /** Description of the change. */
  ChangeDescription changeDescription;
  /**
   * REQUIRED: The complete policy to be applied to the 'resource'. The size of
   * the policy is limited to a few 10s of KB. An empty policy is in general a
   * valid policy but certain services (like Projects) might reject them.
   */
  Policy policy;
  /**
   * If true the SetPolicy call returns only after it is guaranteed that a
   * subsequent CheckPolicy call will observe the new policy. NOTE: We may
   * support this guarantee only for policy changes that broaden access.
   */
  core.bool wait;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("changeDescription")) {
      changeDescription = new ChangeDescription.fromJson(_json["changeDescription"]);
    }
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("wait")) {
      wait = _json["wait"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (changeDescription != null) {
      _json["changeDescription"] = (changeDescription).toJson();
    }
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (wait != null) {
      _json["wait"] = wait;
    }
    return _json;
  }
}

/** A subscription resource. */
class Subscription {
  /**
   * This value is the maximum time after a subscriber receives a message before
   * the subscriber should acknowledge the message. After message delivery but
   * before the ack deadline expires and before the message is acknowledged, it
   * is an outstanding message and will not be delivered again during that time
   * (on a best-effort basis). For pull delivery this value is used as the
   * initial value for the ack deadline. It may be overridden for each message
   * using its corresponding ack_id by calling ModifyAckDeadline. For push
   * delivery, this value is also used to set the request timeout for the call
   * to the push endpoint. If the subscriber never acknowledges the message, the
   * Pub/Sub system will eventually redeliver the message. If this parameter is
   * not set, the default value of 60 seconds is used.
   */
  core.int ackDeadlineSeconds;
  /**
   * The name of the subscription. It must have the format > `"projects/
   * /subscriptions/"` for Google > Cloud Pub/Sub API v1beta2. > `subscription`
   * must start with a letter, and contain only > letters ([A-Za-z]), numbers
   * ([0-9], dashes (-), underscores (_), > periods (.), tildes (~), plus (+) or
   * percent signs (%). It must be > between 3 and 255 characters in length, and
   * cannot begin with the > string goog.
   */
  core.String name;
  /**
   * If push delivery is used with this subscription, this field is used to
   * configure it. An empty pushConfig signifies that the subscriber will pull
   * and ack messages using API methods.
   */
  PushConfig pushConfig;
  /**
   * The name of the topic from which this subscription is receiving messages.
   * This will be present if and only if the subscription has not been detached
   * from its topic.
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

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * The set of permissions to check for the 'resource'. Permissions with
   * wildcards (such as '*' or 'storage.*') are not allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Response message for `TestIamPermissions` method. */
class TestIamPermissionsResponse {
  /**
   * A subset of `TestPermissionsRequest.permissions` that the caller is
   * allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** A topic resource. */
class Topic {
  /**
   * The name of the topic. It must have the format > `"projects/
   * /topics/"` for Google Cloud Pub/Sub > API v1beta2. > `topic` must start
   * with a letter, and contain only > letters ([A-Za-z]), numbers ([0-9],
   * dashes (-), underscores (_), > periods (.), tildes (~), plus (+) or percent
   * signs (%). It must be > between 3 and 255 characters in length, and cannot
   * begin with the > string goog.
   */
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
