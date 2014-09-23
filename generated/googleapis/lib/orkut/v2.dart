library googleapis.orkut.v2;

import "dart:core" as core;
import "dart:collection" as collection_1;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/**
 * Lets you manage activities, comments and badges in Orkut. More stuff coming
 * in time.
 */
class OrkutApi {
  /** Manage your Orkut activity */
  static const OrkutScope = "https://www.googleapis.com/auth/orkut";

  /** View your Orkut data */
  static const OrkutReadonlyScope = "https://www.googleapis.com/auth/orkut.readonly";


  final common_internal.ApiRequester _requester;

  AclResourceApi get acl => new AclResourceApi(_requester);
  ActivitiesResourceApi get activities => new ActivitiesResourceApi(_requester);
  ActivityVisibilityResourceApi get activityVisibility => new ActivityVisibilityResourceApi(_requester);
  BadgesResourceApi get badges => new BadgesResourceApi(_requester);
  CommentsResourceApi get comments => new CommentsResourceApi(_requester);
  CommunitiesResourceApi get communities => new CommunitiesResourceApi(_requester);
  CommunityFollowResourceApi get communityFollow => new CommunityFollowResourceApi(_requester);
  CommunityMembersResourceApi get communityMembers => new CommunityMembersResourceApi(_requester);
  CommunityMessagesResourceApi get communityMessages => new CommunityMessagesResourceApi(_requester);
  CommunityPollCommentsResourceApi get communityPollComments => new CommunityPollCommentsResourceApi(_requester);
  CommunityPollVotesResourceApi get communityPollVotes => new CommunityPollVotesResourceApi(_requester);
  CommunityPollsResourceApi get communityPolls => new CommunityPollsResourceApi(_requester);
  CommunityRelatedResourceApi get communityRelated => new CommunityRelatedResourceApi(_requester);
  CommunityTopicsResourceApi get communityTopics => new CommunityTopicsResourceApi(_requester);
  CountersResourceApi get counters => new CountersResourceApi(_requester);
  ScrapsResourceApi get scraps => new ScrapsResourceApi(_requester);

  OrkutApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "orkut/v2/");
}


/** Not documented yet. */
class AclResourceApi {
  final common_internal.ApiRequester _requester;

  AclResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Excludes an element from the ACL of the activity.
   *
   * Request parameters:
   *
   * [activityId] - ID of the activity.
   *
   * [userId] - ID of the user to be removed from the activity.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String activityId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _downloadOptions = null;

    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/acl/' + common_internal.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}


/** Not documented yet. */
class ActivitiesResourceApi {
  final common_internal.ApiRequester _requester;

  ActivitiesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes an existing activity, if the access controls allow it.
   *
   * Request parameters:
   *
   * [activityId] - ID of the activity to remove.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String activityId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }

    _downloadOptions = null;

    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId');

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
   * Retrieves a list of activities.
   *
   * Request parameters:
   *
   * [userId] - The ID of the user whose activities will be listed. Can be me to
   * refer to the viewer (i.e. the authenticated user).
   *
   * [collection] - The collection of activities to list.
   * Possible string values are:
   * - "all" : All activities created by the specified user that the
   * authenticated user is authorized to view.
   * - "scraps" : The specified user's scrapbook.
   * - "stream" : The specified user's stream feed, intended for consumption.
   * This includes activities posted by people that the user is following, and
   * activities in which the user has been mentioned.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of activities to include in the response.
   * Value must be between "1" and "100".
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [ActivityList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ActivityList> list(core.String userId, core.String collection, {core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (collection == null) {
      throw new core.ArgumentError("Parameter collection is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'people/' + common_internal.Escaper.ecapeVariable('$userId') + '/activities/' + common_internal.Escaper.ecapeVariable('$collection');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ActivityList.fromJson(data));
  }

}


/** Not documented yet. */
class ActivityVisibilityResourceApi {
  final common_internal.ApiRequester _requester;

  ActivityVisibilityResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the visibility of an existing activity.
   *
   * Request parameters:
   *
   * [activityId] - ID of the activity to get the visibility.
   *
   * Completes with a [Visibility].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Visibility> get(core.String activityId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }


    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/visibility';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Visibility.fromJson(data));
  }

  /**
   * Updates the visibility of an existing activity. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [activityId] - ID of the activity.
   *
   * Completes with a [Visibility].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Visibility> patch(Visibility request, core.String activityId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }


    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/visibility';

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Visibility.fromJson(data));
  }

  /**
   * Updates the visibility of an existing activity.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [activityId] - ID of the activity.
   *
   * Completes with a [Visibility].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Visibility> update(Visibility request, core.String activityId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }


    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/visibility';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Visibility.fromJson(data));
  }

}


/** Not documented yet. */
class BadgesResourceApi {
  final common_internal.ApiRequester _requester;

  BadgesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a badge from a user.
   *
   * Request parameters:
   *
   * [userId] - The ID of the user whose badges will be listed. Can be me to
   * refer to caller.
   *
   * [badgeId] - The ID of the badge that will be retrieved.
   *
   * Completes with a [Badge].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Badge> get(core.String userId, core.String badgeId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (badgeId == null) {
      throw new core.ArgumentError("Parameter badgeId is required.");
    }


    _url = 'people/' + common_internal.Escaper.ecapeVariable('$userId') + '/badges/' + common_internal.Escaper.ecapeVariable('$badgeId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Badge.fromJson(data));
  }

  /**
   * Retrieves the list of visible badges of a user.
   *
   * Request parameters:
   *
   * [userId] - The id of the user whose badges will be listed. Can be me to
   * refer to caller.
   *
   * Completes with a [BadgeList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<BadgeList> list(core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = 'people/' + common_internal.Escaper.ecapeVariable('$userId') + '/badges';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BadgeList.fromJson(data));
  }

}


/** Not documented yet. */
class CommentsResourceApi {
  final common_internal.ApiRequester _requester;

  CommentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes an existing comment.
   *
   * Request parameters:
   *
   * [commentId] - ID of the comment to remove.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String commentId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }

    _downloadOptions = null;

    _url = 'comments/' + common_internal.Escaper.ecapeVariable('$commentId');

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
   * Retrieves an existing comment.
   *
   * Request parameters:
   *
   * [commentId] - ID of the comment to get.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [Comment].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Comment> get(core.String commentId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'comments/' + common_internal.Escaper.ecapeVariable('$commentId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Comment.fromJson(data));
  }

  /**
   * Inserts a new comment to an activity.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [activityId] - The ID of the activity to contain the new comment.
   *
   * Completes with a [Comment].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Comment> insert(Comment request, core.String activityId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }


    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/comments';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Comment.fromJson(data));
  }

  /**
   * Retrieves a list of comments, possibly filtered.
   *
   * Request parameters:
   *
   * [activityId] - The ID of the activity containing the comments.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of activities to include in the response.
   *
   * [orderBy] - Sort search results.
   * Possible string values are:
   * - "ascending" : Use ascending sort order.
   * - "descending" : Use descending sort order.
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommentList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommentList> list(core.String activityId, {core.String hl, core.int maxResults, core.String orderBy, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (activityId == null) {
      throw new core.ArgumentError("Parameter activityId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'activities/' + common_internal.Escaper.ecapeVariable('$activityId') + '/comments';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommentList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunitiesResourceApi {
  final common_internal.ApiRequester _requester;

  CommunitiesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the basic information (aka. profile) of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community to get.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [Community].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Community> get(core.int communityId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Community.fromJson(data));
  }

  /**
   * Retrieves the list of communities the current user is a member of.
   *
   * Request parameters:
   *
   * [userId] - The ID of the user whose communities will be listed. Can be me
   * to refer to caller.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of communities to include in the
   * response.
   *
   * [orderBy] - How to order the communities by.
   * Possible string values are:
   * - "id" : Returns the communities sorted by a fixed, natural order.
   * - "ranked" : Returns the communities ranked accordingly to how they are
   * displayed on the orkut web application.
   *
   * Completes with a [CommunityList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityList> list(core.String userId, {core.String hl, core.int maxResults, core.String orderBy}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }


    _url = 'people/' + common_internal.Escaper.ecapeVariable('$userId') + '/communities';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityFollowResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityFollowResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Removes a user from the followers of a community.
   *
   * Request parameters:
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.int communityId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _downloadOptions = null;

    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/followers/' + common_internal.Escaper.ecapeVariable('$userId');

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
   * Adds a user as a follower of a community.
   *
   * Request parameters:
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * Completes with a [CommunityMembers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMembers> insert(core.int communityId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/followers/' + common_internal.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMembers.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityMembersResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityMembersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Makes the user leave a community.
   *
   * Request parameters:
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.int communityId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _downloadOptions = null;

    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/members/' + common_internal.Escaper.ecapeVariable('$userId');

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
   * Retrieves the relationship between a user and a community.
   *
   * Request parameters:
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [CommunityMembers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMembers> get(core.int communityId, core.String userId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/members/' + common_internal.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMembers.fromJson(data));
  }

  /**
   * Makes the user join a community.
   *
   * Request parameters:
   *
   * [communityId] - ID of the community.
   *
   * [userId] - ID of the user.
   *
   * Completes with a [CommunityMembers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMembers> insert(core.int communityId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/members/' + common_internal.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMembers.fromJson(data));
  }

  /**
   * Lists members of a community. Use the pagination tokens to retrieve the
   * full list; do not rely on the member count available in the community
   * profile information to know when to stop iterating, as that count may be
   * approximate.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose members will be listed.
   *
   * [friendsOnly] - Whether to list only community members who are friends of
   * the user.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of members to include in the response.
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommunityMembersList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMembersList> list(core.int communityId, {core.bool friendsOnly, core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (friendsOnly != null) {
      _queryParams["friendsOnly"] = ["${friendsOnly}"];
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/members';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMembersList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityMessagesResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityMessagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Moves a message of the community to the trash folder.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose message will be moved to the
   * trash folder.
   *
   * [topicId] - The ID of the topic whose message will be moved to the trash
   * folder.
   *
   * [messageId] - The ID of the message to be moved to the trash folder.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.int communityId, core.String topicId, core.String messageId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (topicId == null) {
      throw new core.ArgumentError("Parameter topicId is required.");
    }
    if (messageId == null) {
      throw new core.ArgumentError("Parameter messageId is required.");
    }

    _downloadOptions = null;

    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics/' + common_internal.Escaper.ecapeVariable('$topicId') + '/messages/' + common_internal.Escaper.ecapeVariable('$messageId');

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
   * Adds a message to a given community topic.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community the message should be added to.
   *
   * [topicId] - The ID of the topic the message should be added to.
   *
   * Completes with a [CommunityMessage].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMessage> insert(CommunityMessage request, core.int communityId, core.String topicId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (topicId == null) {
      throw new core.ArgumentError("Parameter topicId is required.");
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics/' + common_internal.Escaper.ecapeVariable('$topicId') + '/messages';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMessage.fromJson(data));
  }

  /**
   * Retrieves the messages of a topic of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community which messages will be listed.
   *
   * [topicId] - The ID of the topic which messages will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of messages to include in the response.
   * Value must be between "1" and "100".
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommunityMessageList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityMessageList> list(core.int communityId, core.String topicId, {core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (topicId == null) {
      throw new core.ArgumentError("Parameter topicId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics/' + common_internal.Escaper.ecapeVariable('$topicId') + '/messages';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityMessageList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityPollCommentsResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityPollCommentsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Adds a comment on a community poll.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose poll is being commented.
   *
   * [pollId] - The ID of the poll being commented.
   *
   * Completes with a [CommunityPollComment].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityPollComment> insert(CommunityPollComment request, core.int communityId, core.String pollId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (pollId == null) {
      throw new core.ArgumentError("Parameter pollId is required.");
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/polls/' + common_internal.Escaper.ecapeVariable('$pollId') + '/comments';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityPollComment.fromJson(data));
  }

  /**
   * Retrieves the comments of a community poll.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose poll is having its comments
   * listed.
   *
   * [pollId] - The ID of the community whose polls will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of comments to include in the response.
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommunityPollCommentList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityPollCommentList> list(core.int communityId, core.String pollId, {core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (pollId == null) {
      throw new core.ArgumentError("Parameter pollId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/polls/' + common_internal.Escaper.ecapeVariable('$pollId') + '/comments';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityPollCommentList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityPollVotesResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityPollVotesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Votes on a community poll.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose poll is being voted.
   *
   * [pollId] - The ID of the poll being voted.
   *
   * Completes with a [CommunityPollVote].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityPollVote> insert(CommunityPollVote request, core.int communityId, core.String pollId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (pollId == null) {
      throw new core.ArgumentError("Parameter pollId is required.");
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/polls/' + common_internal.Escaper.ecapeVariable('$pollId') + '/votes';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityPollVote.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityPollsResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityPollsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves one specific poll of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community for whose poll will be retrieved.
   *
   * [pollId] - The ID of the poll to get.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [CommunityPoll].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityPoll> get(core.int communityId, core.String pollId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (pollId == null) {
      throw new core.ArgumentError("Parameter pollId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/polls/' + common_internal.Escaper.ecapeVariable('$pollId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityPoll.fromJson(data));
  }

  /**
   * Retrieves the polls of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community which polls will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of polls to include in the response.
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommunityPollList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityPollList> list(core.int communityId, {core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/polls';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityPollList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityRelatedResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityRelatedResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the communities related to another one.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose related communities will be
   * listed.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [CommunityList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityList> list(core.int communityId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/related';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityList.fromJson(data));
  }

}


/** Not documented yet. */
class CommunityTopicsResourceApi {
  final common_internal.ApiRequester _requester;

  CommunityTopicsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Moves a topic of the community to the trash folder.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose topic will be moved to the
   * trash folder.
   *
   * [topicId] - The ID of the topic to be moved to the trash folder.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.int communityId, core.String topicId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (topicId == null) {
      throw new core.ArgumentError("Parameter topicId is required.");
    }

    _downloadOptions = null;

    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics/' + common_internal.Escaper.ecapeVariable('$topicId');

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
   * Retrieves a topic of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community whose topic will be retrieved.
   *
   * [topicId] - The ID of the topic to get.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * Completes with a [CommunityTopic].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityTopic> get(core.int communityId, core.String topicId, {core.String hl}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (topicId == null) {
      throw new core.ArgumentError("Parameter topicId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics/' + common_internal.Escaper.ecapeVariable('$topicId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityTopic.fromJson(data));
  }

  /**
   * Adds a topic to a given community.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community the topic should be added to.
   *
   * [isShout] - Whether this topic is a shout.
   *
   * Completes with a [CommunityTopic].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityTopic> insert(CommunityTopic request, core.int communityId, {core.bool isShout}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (isShout != null) {
      _queryParams["isShout"] = ["${isShout}"];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityTopic.fromJson(data));
  }

  /**
   * Retrieves the topics of a community.
   *
   * Request parameters:
   *
   * [communityId] - The ID of the community which topics will be listed.
   *
   * [hl] - Specifies the interface language (host language) of your user
   * interface.
   *
   * [maxResults] - The maximum number of topics to include in the response.
   * Value must be between "1" and "100".
   *
   * [pageToken] - A continuation token that allows pagination.
   *
   * Completes with a [CommunityTopicList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CommunityTopicList> list(core.int communityId, {core.String hl, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (communityId == null) {
      throw new core.ArgumentError("Parameter communityId is required.");
    }
    if (hl != null) {
      _queryParams["hl"] = [hl];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'communities/' + common_internal.Escaper.ecapeVariable('$communityId') + '/topics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommunityTopicList.fromJson(data));
  }

}


/** Not documented yet. */
class CountersResourceApi {
  final common_internal.ApiRequester _requester;

  CountersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the counters of a user.
   *
   * Request parameters:
   *
   * [userId] - The ID of the user whose counters will be listed. Can be me to
   * refer to caller.
   *
   * Completes with a [Counters].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Counters> list(core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }


    _url = 'people/' + common_internal.Escaper.ecapeVariable('$userId') + '/counters';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Counters.fromJson(data));
  }

}


/** Not documented yet. */
class ScrapsResourceApi {
  final common_internal.ApiRequester _requester;

  ScrapsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new scrap.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Activity].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Activity> insert(Activity request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'activities/scraps';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Activity.fromJson(data));
  }

}



/** Not documented yet. */
class AclItems {
  /**
   * The ID of the entity. For entities of type "person" or "circle", this is
   * the ID of the resource. For other types, this will be unset.
   */
  core.String id;

  /** The type of entity to whom access is granted. */
  core.String type;


  AclItems();

  AclItems.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class Acl {
  /** Human readable description of the access granted. */
  core.String description;

  /** The list of ACL entries. */
  core.List<AclItems> items;

  /** Identifies this resource as an access control list. Value: "orkut#acl" */
  core.String kind;

  /** The total count of participants of the parent resource. */
  core.int totalParticipants;


  Acl();

  Acl.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new AclItems.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("totalParticipants")) {
      totalParticipants = _json["totalParticipants"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (totalParticipants != null) {
      _json["totalParticipants"] = totalParticipants;
    }
    return _json;
  }
}


/** Comments in reply to this activity. */
class ActivityObjectReplies {
  /** The list of comments. */
  core.List<Comment> items;

  /** Total number of comments. */
  core.String totalItems;

  /** URL for the collection of comments in reply to this activity. */
  core.String url;


  ActivityObjectReplies();

  ActivityObjectReplies.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Comment.fromJson(value)).toList();
    }
    if (_json.containsKey("totalItems")) {
      totalItems = _json["totalItems"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (totalItems != null) {
      _json["totalItems"] = totalItems;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** The activity's object. */
class ActivityObject {
  /**
   * The HTML-formatted content, suitable for display. When updating an
   * activity's content, post the changes to this property, using the value of
   * originalContent as a starting point. If the update is successful, the
   * server adds HTML formatting and responds with this formatted content.
   */
  core.String content;

  /** The list of additional items. */
  core.List<OrkutActivityobjectsResource> items;

  /**
   * The type of the object affected by the activity. Clients can use this
   * information to style the rendered activity object differently depending on
   * the content.
   */
  core.String objectType;

  /** Comments in reply to this activity. */
  ActivityObjectReplies replies;


  ActivityObject();

  ActivityObject.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new OrkutActivityobjectsResource.fromJson(value)).toList();
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("replies")) {
      replies = new ActivityObjectReplies.fromJson(_json["replies"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (content != null) {
      _json["content"] = content;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (replies != null) {
      _json["replies"] = (replies).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class Activity {
  /** Identifies who has access to see this activity. */
  Acl access;

  /** The person who performed the activity. */
  OrkutAuthorResource actor;

  /** The ID for the activity. */
  core.String id;

  /** The kind of activity. Always orkut#activity. */
  core.String kind;

  /** Links to resources related to this activity. */
  core.List<OrkutLinkResource> links;

  /** The activity's object. */
  ActivityObject object;

  /** The time at which the activity was initially published. */
  core.DateTime published;

  /** Title of the activity. */
  core.String title;

  /** The time at which the activity was last updated. */
  core.DateTime updated;

  /**
   * This activity's verb, indicating what action was performed. Possible values
   * are:
   * - add - User added new content to profile or album, e.g. video, photo.
   * - post - User publish content to the stream, e.g. status, scrap.
   * - update - User commented on an activity.
   * - make-friend - User added a new friend.
   * - birthday - User has a birthday.
   */
  core.String verb;


  Activity();

  Activity.fromJson(core.Map _json) {
    if (_json.containsKey("access")) {
      access = new Acl.fromJson(_json["access"]);
    }
    if (_json.containsKey("actor")) {
      actor = new OrkutAuthorResource.fromJson(_json["actor"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("object")) {
      object = new ActivityObject.fromJson(_json["object"]);
    }
    if (_json.containsKey("published")) {
      published = core.DateTime.parse(_json["published"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("updated")) {
      updated = core.DateTime.parse(_json["updated"]);
    }
    if (_json.containsKey("verb")) {
      verb = _json["verb"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (access != null) {
      _json["access"] = (access).toJson();
    }
    if (actor != null) {
      _json["actor"] = (actor).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (object != null) {
      _json["object"] = (object).toJson();
    }
    if (published != null) {
      _json["published"] = (published).toIso8601String();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updated != null) {
      _json["updated"] = (updated).toIso8601String();
    }
    if (verb != null) {
      _json["verb"] = verb;
    }
    return _json;
  }
}


/** Not documented yet. */
class ActivityList {
  /** List of activities retrieved. */
  core.List<Activity> items;

  /**
   * Identifies this resource as a collection of activities. Value:
   * "orkut#activityList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in activities.list request to get
   * the next page, if there are more to retrieve.
   */
  core.String nextPageToken;


  ActivityList();

  ActivityList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Activity.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class Badge {
  /** The URL for the 64x64 badge logo. */
  core.String badgeLargeLogo;

  /** The URL for the 24x24 badge logo. */
  core.String badgeSmallLogo;

  /** The name of the badge, suitable for display. */
  core.String caption;

  /** The description for the badge, suitable for display. */
  core.String description;

  /** The unique ID for the badge. */
  core.String id;

  /** Identifies this resource as a badge. Value: "orkut#badge" */
  core.String kind;

  /** The URL for the 32x32 badge sponsor logo. */
  core.String sponsorLogo;

  /** The name of the badge sponsor, suitable for display. */
  core.String sponsorName;

  /** The URL for the badge sponsor. */
  core.String sponsorUrl;


  Badge();

  Badge.fromJson(core.Map _json) {
    if (_json.containsKey("badgeLargeLogo")) {
      badgeLargeLogo = _json["badgeLargeLogo"];
    }
    if (_json.containsKey("badgeSmallLogo")) {
      badgeSmallLogo = _json["badgeSmallLogo"];
    }
    if (_json.containsKey("caption")) {
      caption = _json["caption"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("sponsorLogo")) {
      sponsorLogo = _json["sponsorLogo"];
    }
    if (_json.containsKey("sponsorName")) {
      sponsorName = _json["sponsorName"];
    }
    if (_json.containsKey("sponsorUrl")) {
      sponsorUrl = _json["sponsorUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (badgeLargeLogo != null) {
      _json["badgeLargeLogo"] = badgeLargeLogo;
    }
    if (badgeSmallLogo != null) {
      _json["badgeSmallLogo"] = badgeSmallLogo;
    }
    if (caption != null) {
      _json["caption"] = caption;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (sponsorLogo != null) {
      _json["sponsorLogo"] = sponsorLogo;
    }
    if (sponsorName != null) {
      _json["sponsorName"] = sponsorName;
    }
    if (sponsorUrl != null) {
      _json["sponsorUrl"] = sponsorUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class BadgeList {
  /** List of badges retrieved. */
  core.List<Badge> items;

  /**
   * Identifies this resource as a collection of badges. Value:
   * "orkut#badgeList"
   */
  core.String kind;


  BadgeList();

  BadgeList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Badge.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Link to the original activity where this comment was posted. */
class CommentInReplyTo {
  /** Link to the post on activity stream being commented. */
  core.String href;

  /** Unique identifier of the post on activity stream being commented. */
  core.String ref;

  /**
   * Relationship between the comment and the post on activity stream being
   * commented. Always inReplyTo.
   */
  core.String rel;

  /** Type of the post on activity stream being commented. Always text/html. */
  core.String type;


  CommentInReplyTo();

  CommentInReplyTo.fromJson(core.Map _json) {
    if (_json.containsKey("href")) {
      href = _json["href"];
    }
    if (_json.containsKey("ref")) {
      ref = _json["ref"];
    }
    if (_json.containsKey("rel")) {
      rel = _json["rel"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (href != null) {
      _json["href"] = href;
    }
    if (ref != null) {
      _json["ref"] = ref;
    }
    if (rel != null) {
      _json["rel"] = rel;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class Comment {
  /** The person who posted the comment. */
  OrkutAuthorResource actor;

  /** The content of the comment in text/html */
  core.String content;

  /** The unique ID for the comment. */
  core.String id;

  /** Link to the original activity where this comment was posted. */
  CommentInReplyTo inReplyTo;

  /** Identifies this resource as a comment. Value: "orkut#comment" */
  core.String kind;

  /** List of resources for the comment. */
  core.List<OrkutLinkResource> links;

  /** The time the comment was initially published, in RFC 3339 format. */
  core.DateTime published;


  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey("actor")) {
      actor = new OrkutAuthorResource.fromJson(_json["actor"]);
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("inReplyTo")) {
      inReplyTo = new CommentInReplyTo.fromJson(_json["inReplyTo"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("published")) {
      published = core.DateTime.parse(_json["published"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actor != null) {
      _json["actor"] = (actor).toJson();
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (inReplyTo != null) {
      _json["inReplyTo"] = (inReplyTo).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (published != null) {
      _json["published"] = (published).toIso8601String();
    }
    return _json;
  }
}


/** Not documented yet. */
class CommentList {
  /** List of comments retrieved. */
  core.List<Comment> items;

  /**
   * Identifies this resource as a collection of comments. Value:
   * "orkut#commentList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in comments.list request to get the
   * next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in comments.list request to get the
   * previous page, if there are more to retrieve.
   */
  core.String previousPageToken;


  CommentList();

  CommentList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Comment.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class Community {
  /** The category of the community. */
  core.String category;

  /** The co-owners of the community. */
  core.List<OrkutAuthorResource> coOwners;

  /** The time the community was created, in RFC 3339 format. */
  core.DateTime creationDate;

  /** The description of the community. */
  core.String description;

  /** The id of the community. */
  core.int id;

  /** Identifies this resource as a community. Value: "orkut#community" */
  core.String kind;

  /** The official language of the community. */
  core.String language;

  /** List of resources for the community. */
  core.List<OrkutLinkResource> links;

  /** The location of the community. */
  core.String location;

  /**
   * The number of users who are part of the community. This number may be
   * approximate, so do not rely on it for iteration.
   */
  core.int memberCount;

  /** The list of moderators of the community. */
  core.List<OrkutAuthorResource> moderators;

  /** The name of the community. */
  core.String name;

  /** The person who owns the community. */
  OrkutAuthorResource owner;

  /** The photo of the community. */
  core.String photoUrl;


  Community();

  Community.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("co_owners")) {
      coOwners = _json["co_owners"].map((value) => new OrkutAuthorResource.fromJson(value)).toList();
    }
    if (_json.containsKey("creation_date")) {
      creationDate = core.DateTime.parse(_json["creation_date"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("member_count")) {
      memberCount = _json["member_count"];
    }
    if (_json.containsKey("moderators")) {
      moderators = _json["moderators"].map((value) => new OrkutAuthorResource.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("owner")) {
      owner = new OrkutAuthorResource.fromJson(_json["owner"]);
    }
    if (_json.containsKey("photo_url")) {
      photoUrl = _json["photo_url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (category != null) {
      _json["category"] = category;
    }
    if (coOwners != null) {
      _json["co_owners"] = coOwners.map((value) => (value).toJson()).toList();
    }
    if (creationDate != null) {
      _json["creation_date"] = (creationDate).toIso8601String();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (memberCount != null) {
      _json["member_count"] = memberCount;
    }
    if (moderators != null) {
      _json["moderators"] = moderators.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (owner != null) {
      _json["owner"] = (owner).toJson();
    }
    if (photoUrl != null) {
      _json["photo_url"] = photoUrl;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityList {
  /** List of communities retrieved. */
  core.List<Community> items;

  /**
   * Identifies this resource as a collection of communities. Value:
   * "orkut#communityList"
   */
  core.String kind;


  CommunityList();

  CommunityList.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Community.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityMembers {
  /** Status and permissions of the user related to the community. */
  CommunityMembershipStatus communityMembershipStatus;

  /** Kind of this item. Always orkut#communityMembers. */
  core.String kind;

  /** Description of the community member. */
  OrkutActivitypersonResource person;


  CommunityMembers();

  CommunityMembers.fromJson(core.Map _json) {
    if (_json.containsKey("communityMembershipStatus")) {
      communityMembershipStatus = new CommunityMembershipStatus.fromJson(_json["communityMembershipStatus"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("person")) {
      person = new OrkutActivitypersonResource.fromJson(_json["person"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (communityMembershipStatus != null) {
      _json["communityMembershipStatus"] = (communityMembershipStatus).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (person != null) {
      _json["person"] = (person).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityMembersList {
  /**
   * The value of pageToken query parameter in community_members.list request to
   * get the first page.
   */
  core.String firstPageToken;

  /** List of community members retrieved. */
  core.List<CommunityMembers> items;

  /** Kind of this item. Always orkut#communityMembersList. */
  core.String kind;

  /**
   * The value of pageToken query parameter in community_members.list request to
   * get the last page.
   */
  core.String lastPageToken;

  /**
   * The value of pageToken query parameter in community_members.list request to
   * get the next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in community_members.list request to
   * get the previous page, if there are more to retrieve.
   */
  core.String prevPageToken;


  CommunityMembersList();

  CommunityMembersList.fromJson(core.Map _json) {
    if (_json.containsKey("firstPageToken")) {
      firstPageToken = _json["firstPageToken"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CommunityMembers.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastPageToken")) {
      lastPageToken = _json["lastPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstPageToken != null) {
      _json["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastPageToken != null) {
      _json["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityMembershipStatus {
  /** Whether the user can create a poll in this community. */
  core.bool canCreatePoll;

  /** Whether the user can create a topic in this community. */
  core.bool canCreateTopic;

  /** Whether the user can perform a shout operation in this community. */
  core.bool canShout;

  /** Whether the session user is a community co-owner. */
  core.bool isCoOwner;

  /** Whether the user is following this community. */
  core.bool isFollowing;

  /** Whether the session user is a community moderator. */
  core.bool isModerator;

  /** Whether the session user is the community owner. */
  core.bool isOwner;

  /** Whether the restore operation is available for the community. */
  core.bool isRestoreAvailable;

  /** Whether the take-back operation is available for the community. */
  core.bool isTakebackAvailable;

  /** Kind of this item. Always orkut#communityMembershipStatus. */
  core.String kind;

  /** The status of the current link between the community and the user. */
  core.String status;


  CommunityMembershipStatus();

  CommunityMembershipStatus.fromJson(core.Map _json) {
    if (_json.containsKey("canCreatePoll")) {
      canCreatePoll = _json["canCreatePoll"];
    }
    if (_json.containsKey("canCreateTopic")) {
      canCreateTopic = _json["canCreateTopic"];
    }
    if (_json.containsKey("canShout")) {
      canShout = _json["canShout"];
    }
    if (_json.containsKey("isCoOwner")) {
      isCoOwner = _json["isCoOwner"];
    }
    if (_json.containsKey("isFollowing")) {
      isFollowing = _json["isFollowing"];
    }
    if (_json.containsKey("isModerator")) {
      isModerator = _json["isModerator"];
    }
    if (_json.containsKey("isOwner")) {
      isOwner = _json["isOwner"];
    }
    if (_json.containsKey("isRestoreAvailable")) {
      isRestoreAvailable = _json["isRestoreAvailable"];
    }
    if (_json.containsKey("isTakebackAvailable")) {
      isTakebackAvailable = _json["isTakebackAvailable"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (canCreatePoll != null) {
      _json["canCreatePoll"] = canCreatePoll;
    }
    if (canCreateTopic != null) {
      _json["canCreateTopic"] = canCreateTopic;
    }
    if (canShout != null) {
      _json["canShout"] = canShout;
    }
    if (isCoOwner != null) {
      _json["isCoOwner"] = isCoOwner;
    }
    if (isFollowing != null) {
      _json["isFollowing"] = isFollowing;
    }
    if (isModerator != null) {
      _json["isModerator"] = isModerator;
    }
    if (isOwner != null) {
      _json["isOwner"] = isOwner;
    }
    if (isRestoreAvailable != null) {
      _json["isRestoreAvailable"] = isRestoreAvailable;
    }
    if (isTakebackAvailable != null) {
      _json["isTakebackAvailable"] = isTakebackAvailable;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityMessage {
  /**
   * The timestamp of the date when the message was added, in RFC 3339 format.
   */
  core.DateTime addedDate;

  /** The creator of the message. If ommited, the message is annonimous. */
  OrkutAuthorResource author;

  /** The body of the message. */
  core.String body;

  /** The ID of the message. */
  core.String id;

  /**
   * Whether this post was marked as spam by the viewer, when he/she is not the
   * community owner or one of its moderators.
   */
  core.bool isSpam;

  /**
   * Identifies this resource as a community message. Value:
   * "orkut#communityMessage"
   */
  core.String kind;

  /** List of resources for the community message. */
  core.List<OrkutLinkResource> links;

  /** The subject of the message. */
  core.String subject;


  CommunityMessage();

  CommunityMessage.fromJson(core.Map _json) {
    if (_json.containsKey("addedDate")) {
      addedDate = core.DateTime.parse(_json["addedDate"]);
    }
    if (_json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(_json["author"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isSpam")) {
      isSpam = _json["isSpam"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addedDate != null) {
      _json["addedDate"] = (addedDate).toIso8601String();
    }
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (isSpam != null) {
      _json["isSpam"] = isSpam;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityMessageList {
  /**
   * The value of pageToken query parameter in community_messages.list request
   * to get the first page.
   */
  core.String firstPageToken;

  /** List of messages retrieved. */
  core.List<CommunityMessage> items;

  /**
   * Identifies this resource as a collection of community messages. Value:
   * "orkut#communityMessageList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in community_messages.list request
   * to get the last page.
   */
  core.String lastPageToken;

  /**
   * The value of pageToken query parameter in community_messages.list request
   * to get the next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in community_messages.list request
   * to get the previous page, if there are more to retrieve.
   */
  core.String prevPageToken;


  CommunityMessageList();

  CommunityMessageList.fromJson(core.Map _json) {
    if (_json.containsKey("firstPageToken")) {
      firstPageToken = _json["firstPageToken"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CommunityMessage.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastPageToken")) {
      lastPageToken = _json["lastPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstPageToken != null) {
      _json["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastPageToken != null) {
      _json["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    return _json;
  }
}


/** The image representing the poll. Field is omitted if no image exists. */
class CommunityPollImage {
  /** A URL that points to an image of the poll. */
  core.String url;


  CommunityPollImage();

  CommunityPollImage.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityPoll {
  /** The person who created the poll. */
  OrkutAuthorResource author;

  /** The ID of the community. */
  core.int communityId;

  /** The date of creation of this poll */
  core.DateTime creationTime;

  /** The poll description. */
  core.String description;

  /** The ending date of this poll or empty if the poll doesn't have one. */
  core.DateTime endingTime;

  /** Whether the user has voted on this poll. */
  core.bool hasVoted;

  /** The poll ID. */
  core.String id;

  /** The image representing the poll. Field is omitted if no image exists. */
  CommunityPollImage image;

  /**
   * Whether the poll is not expired if there is an expiration date. A poll is
   * open (that is, not closed for voting) if it either is not expired or
   * doesn't have an expiration date at all. Note that just because a poll is
   * open, it doesn't mean that the requester can vote on it.
   */
  core.bool isClosed;

  /** Whether this poll allows voting for more than one option. */
  core.bool isMultipleAnswers;

  /**
   * Whether this poll is still opened for voting. A poll is open for voting if
   * it is not closed, the user has not yet voted on it and the user has the
   * permission to do so, which happens if he/she is either a community member
   * or the poll is open for everybody.
   */
  core.bool isOpenForVoting;

  /**
   * Whether this poll is restricted for members only. If a poll is open but the
   * user can't vote on it, it's been restricted to members only. This
   * information is important to tell this case apart from the one where the
   * user can't vote simply because the poll is already closed.
   */
  core.bool isRestricted;

  /**
   * Whether the user has marked this poll as spam. This only affects the poll
   * for this user, not globally.
   */
  core.bool isSpam;

  /** If user has already voted, whether his vote is publicly visible. */
  core.bool isUsersVotePublic;

  /** Whether non-members of the community can vote on the poll. */
  core.bool isVotingAllowedForNonMembers;

  /**
   * Identifies this resource as a community poll. Value: "orkut#communityPoll"
   */
  core.String kind;

  /** The date of the last update of this poll. */
  core.DateTime lastUpdate;

  /** List of resources for the community poll. */
  core.List<OrkutLinkResource> links;

  /** List of options of this poll. */
  core.List<OrkutCommunitypolloptionResource> options;

  /** The poll question. */
  core.String question;

  /** The total number of votes this poll has received. */
  core.int totalNumberOfVotes;

  /** List of options the user has voted on, if there are any. */
  core.List<core.int> votedOptions;


  CommunityPoll();

  CommunityPoll.fromJson(core.Map _json) {
    if (_json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(_json["author"]);
    }
    if (_json.containsKey("communityId")) {
      communityId = _json["communityId"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = core.DateTime.parse(_json["creationTime"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endingTime")) {
      endingTime = core.DateTime.parse(_json["endingTime"]);
    }
    if (_json.containsKey("hasVoted")) {
      hasVoted = _json["hasVoted"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("image")) {
      image = new CommunityPollImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("isClosed")) {
      isClosed = _json["isClosed"];
    }
    if (_json.containsKey("isMultipleAnswers")) {
      isMultipleAnswers = _json["isMultipleAnswers"];
    }
    if (_json.containsKey("isOpenForVoting")) {
      isOpenForVoting = _json["isOpenForVoting"];
    }
    if (_json.containsKey("isRestricted")) {
      isRestricted = _json["isRestricted"];
    }
    if (_json.containsKey("isSpam")) {
      isSpam = _json["isSpam"];
    }
    if (_json.containsKey("isUsersVotePublic")) {
      isUsersVotePublic = _json["isUsersVotePublic"];
    }
    if (_json.containsKey("isVotingAllowedForNonMembers")) {
      isVotingAllowedForNonMembers = _json["isVotingAllowedForNonMembers"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastUpdate")) {
      lastUpdate = core.DateTime.parse(_json["lastUpdate"]);
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("options")) {
      options = _json["options"].map((value) => new OrkutCommunitypolloptionResource.fromJson(value)).toList();
    }
    if (_json.containsKey("question")) {
      question = _json["question"];
    }
    if (_json.containsKey("totalNumberOfVotes")) {
      totalNumberOfVotes = _json["totalNumberOfVotes"];
    }
    if (_json.containsKey("votedOptions")) {
      votedOptions = _json["votedOptions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (communityId != null) {
      _json["communityId"] = communityId;
    }
    if (creationTime != null) {
      _json["creationTime"] = (creationTime).toIso8601String();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endingTime != null) {
      _json["endingTime"] = (endingTime).toIso8601String();
    }
    if (hasVoted != null) {
      _json["hasVoted"] = hasVoted;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (isClosed != null) {
      _json["isClosed"] = isClosed;
    }
    if (isMultipleAnswers != null) {
      _json["isMultipleAnswers"] = isMultipleAnswers;
    }
    if (isOpenForVoting != null) {
      _json["isOpenForVoting"] = isOpenForVoting;
    }
    if (isRestricted != null) {
      _json["isRestricted"] = isRestricted;
    }
    if (isSpam != null) {
      _json["isSpam"] = isSpam;
    }
    if (isUsersVotePublic != null) {
      _json["isUsersVotePublic"] = isUsersVotePublic;
    }
    if (isVotingAllowedForNonMembers != null) {
      _json["isVotingAllowedForNonMembers"] = isVotingAllowedForNonMembers;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastUpdate != null) {
      _json["lastUpdate"] = (lastUpdate).toIso8601String();
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (question != null) {
      _json["question"] = question;
    }
    if (totalNumberOfVotes != null) {
      _json["totalNumberOfVotes"] = totalNumberOfVotes;
    }
    if (votedOptions != null) {
      _json["votedOptions"] = votedOptions;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityPollComment {
  /** The date when the message was added, in RFC 3339 format. */
  core.DateTime addedDate;

  /** The creator of the comment. */
  OrkutAuthorResource author;

  /** The body of the message. */
  core.String body;

  /** The ID of the comment. */
  core.int id;

  /**
   * Identifies this resource as a community poll comment. Value:
   * "orkut#communityPollComment"
   */
  core.String kind;


  CommunityPollComment();

  CommunityPollComment.fromJson(core.Map _json) {
    if (_json.containsKey("addedDate")) {
      addedDate = core.DateTime.parse(_json["addedDate"]);
    }
    if (_json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(_json["author"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addedDate != null) {
      _json["addedDate"] = (addedDate).toIso8601String();
    }
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityPollCommentList {
  /**
   * The value of pageToken query parameter in community_poll_comments.list
   * request to get the first page.
   */
  core.String firstPageToken;

  /** List of community poll comments retrieved. */
  core.List<CommunityPollComment> items;

  /**
   * Identifies this resource as a collection of community poll comments. Value:
   * "orkut#CommunityPollCommentList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in community_poll_comments.list
   * request to get the last page.
   */
  core.String lastPageToken;

  /**
   * The value of pageToken query parameter in community_poll_comments.list
   * request to get the next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in community_poll_comments.list
   * request to get the previous page, if there are more to retrieve.
   */
  core.String prevPageToken;


  CommunityPollCommentList();

  CommunityPollCommentList.fromJson(core.Map _json) {
    if (_json.containsKey("firstPageToken")) {
      firstPageToken = _json["firstPageToken"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CommunityPollComment.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastPageToken")) {
      lastPageToken = _json["lastPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstPageToken != null) {
      _json["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastPageToken != null) {
      _json["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityPollList {
  /**
   * The value of pageToken query parameter in community_polls.list request to
   * get the first page.
   */
  core.String firstPageToken;

  /** List of community polls retrieved. */
  core.List<CommunityPoll> items;

  /**
   * Identifies this resource as a collection of community polls. Value:
   * "orkut#communityPollList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in community_polls.list request to
   * get the last page.
   */
  core.String lastPageToken;

  /**
   * The value of pageToken query parameter in community_polls.list request to
   * get the next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in community_polls.list request to
   * get the previous page, if there are more to retrieve.
   */
  core.String prevPageToken;


  CommunityPollList();

  CommunityPollList.fromJson(core.Map _json) {
    if (_json.containsKey("firstPageToken")) {
      firstPageToken = _json["firstPageToken"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CommunityPoll.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastPageToken")) {
      lastPageToken = _json["lastPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstPageToken != null) {
      _json["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastPageToken != null) {
      _json["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityPollVote {
  /** Whether this vote is visible to other users or not. */
  core.bool isVotevisible;

  /**
   * Identifies this resource as a community poll vote. Value:
   * "orkut#communityPollVote"
   */
  core.String kind;

  /** The ids of the voted options. */
  core.List<core.int> optionIds;


  CommunityPollVote();

  CommunityPollVote.fromJson(core.Map _json) {
    if (_json.containsKey("isVotevisible")) {
      isVotevisible = _json["isVotevisible"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("optionIds")) {
      optionIds = _json["optionIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isVotevisible != null) {
      _json["isVotevisible"] = isVotevisible;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (optionIds != null) {
      _json["optionIds"] = optionIds;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityTopic {
  /** The creator of the topic. */
  OrkutAuthorResource author;

  /** The body of the topic. */
  core.String body;

  /** The ID of the topic. */
  core.String id;

  /** Whether the topic is closed for new messages. */
  core.bool isClosed;

  /**
   * Identifies this resource as a community topic. Value:
   * "orkut#communityTopic"
   */
  core.String kind;

  /** The timestamp of the last update, in RFC 3339 format. */
  core.DateTime lastUpdate;

  /** Snippet of the last message posted on this topic. */
  core.String latestMessageSnippet;

  /** List of resources for the community. */
  core.List<OrkutLinkResource> links;

  /** Most recent messages. */
  core.List<CommunityMessage> messages;

  /** The total number of replies this topic has received. */
  core.int numberOfReplies;

  /** The title of the topic. */
  core.String title;


  CommunityTopic();

  CommunityTopic.fromJson(core.Map _json) {
    if (_json.containsKey("author")) {
      author = new OrkutAuthorResource.fromJson(_json["author"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isClosed")) {
      isClosed = _json["isClosed"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastUpdate")) {
      lastUpdate = core.DateTime.parse(_json["lastUpdate"]);
    }
    if (_json.containsKey("latestMessageSnippet")) {
      latestMessageSnippet = _json["latestMessageSnippet"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("messages")) {
      messages = _json["messages"].map((value) => new CommunityMessage.fromJson(value)).toList();
    }
    if (_json.containsKey("numberOfReplies")) {
      numberOfReplies = _json["numberOfReplies"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (isClosed != null) {
      _json["isClosed"] = isClosed;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastUpdate != null) {
      _json["lastUpdate"] = (lastUpdate).toIso8601String();
    }
    if (latestMessageSnippet != null) {
      _json["latestMessageSnippet"] = latestMessageSnippet;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (numberOfReplies != null) {
      _json["numberOfReplies"] = numberOfReplies;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Not documented yet. */
class CommunityTopicList {
  /**
   * The value of pageToken query parameter in community_topic.list request to
   * get the first page.
   */
  core.String firstPageToken;

  /** List of topics retrieved. */
  core.List<CommunityTopic> items;

  /**
   * Identifies this resource as a collection of community topics. Value:
   * "orkut#communityTopicList"
   */
  core.String kind;

  /**
   * The value of pageToken query parameter in community_topic.list request to
   * get the last page.
   */
  core.String lastPageToken;

  /**
   * The value of pageToken query parameter in community_topic.list request to
   * get the next page, if there are more to retrieve.
   */
  core.String nextPageToken;

  /**
   * The value of pageToken query parameter in community_topic.list request to
   * get the previous page, if there are more to retrieve.
   */
  core.String prevPageToken;


  CommunityTopicList();

  CommunityTopicList.fromJson(core.Map _json) {
    if (_json.containsKey("firstPageToken")) {
      firstPageToken = _json["firstPageToken"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CommunityTopic.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastPageToken")) {
      lastPageToken = _json["lastPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("prevPageToken")) {
      prevPageToken = _json["prevPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (firstPageToken != null) {
      _json["firstPageToken"] = firstPageToken;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastPageToken != null) {
      _json["lastPageToken"] = lastPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (prevPageToken != null) {
      _json["prevPageToken"] = prevPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class Counters {
  /** List of counters retrieved. */
  core.List<OrkutCounterResource> items;

  /**
   * Identifies this resource as a collection of counters. Value:
   * "orkut#counters"
   */
  core.String kind;


  Counters();

  Counters.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new OrkutCounterResource.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class OrkutActivityobjectsResource {
  /**
   * The community which is related with this activity, e.g. a joined community.
   */
  Community community;

  /**
   * The HTML-formatted content, suitable for display. When updating an
   * activity's content, post the changes to this property, using the value of
   * originalContent as a starting point. If the update is successful, the
   * server adds HTML formatting and responds with this formatted content.
   */
  core.String content;

  /** The title of the object. */
  core.String displayName;

  /** The ID for the object. */
  core.String id;

  /** Links to other resources related to this object. */
  core.List<OrkutLinkResource> links;

  /** The object type. */
  core.String objectType;

  /** The person who is related with this activity, e.g. an Added User. */
  OrkutActivitypersonResource person;


  OrkutActivityobjectsResource();

  OrkutActivityobjectsResource.fromJson(core.Map _json) {
    if (_json.containsKey("community")) {
      community = new Community.fromJson(_json["community"]);
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("person")) {
      person = new OrkutActivitypersonResource.fromJson(_json["person"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (community != null) {
      _json["community"] = (community).toJson();
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (person != null) {
      _json["person"] = (person).toJson();
    }
    return _json;
  }
}


/**
 * The person's profile photo. This is adapted from Google+ and was originaly
 * introduced as extra OpenSocial convenience fields.
 */
class OrkutActivitypersonResourceImage {
  /** The URL of the person's profile photo. */
  core.String url;


  OrkutActivitypersonResourceImage();

  OrkutActivitypersonResourceImage.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/**
 * An object that encapsulates the individual components of a person's name.
 */
class OrkutActivitypersonResourceName {
  /** The family name (last name) of this person. */
  core.String familyName;

  /** The given name (first name) of this person. */
  core.String givenName;


  OrkutActivitypersonResourceName();

  OrkutActivitypersonResourceName.fromJson(core.Map _json) {
    if (_json.containsKey("familyName")) {
      familyName = _json["familyName"];
    }
    if (_json.containsKey("givenName")) {
      givenName = _json["givenName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (familyName != null) {
      _json["familyName"] = familyName;
    }
    if (givenName != null) {
      _json["givenName"] = givenName;
    }
    return _json;
  }
}


/** Not documented yet. */
class OrkutActivitypersonResource {
  /** The person's date of birth, represented as YYYY-MM-DD. */
  core.String birthday;

  /** The person's gender. Values include "male", "female", and "other". */
  core.String gender;

  /** The person's opensocial ID. */
  core.String id;

  /**
   * The person's profile photo. This is adapted from Google+ and was originaly
   * introduced as extra OpenSocial convenience fields.
   */
  OrkutActivitypersonResourceImage image;

  /**
   * An object that encapsulates the individual components of a person's name.
   */
  OrkutActivitypersonResourceName name;

  /**
   * The person's profile url. This is adapted from Google+ and was originaly
   * introduced as extra OpenSocial convenience fields.
   */
  core.String url;


  OrkutActivitypersonResource();

  OrkutActivitypersonResource.fromJson(core.Map _json) {
    if (_json.containsKey("birthday")) {
      birthday = _json["birthday"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("image")) {
      image = new OrkutActivitypersonResourceImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("name")) {
      name = new OrkutActivitypersonResourceName.fromJson(_json["name"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (birthday != null) {
      _json["birthday"] = birthday;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (name != null) {
      _json["name"] = (name).toJson();
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Image data about the author. */
class OrkutAuthorResourceImage {
  /** A URL that points to a thumbnail photo of the author. */
  core.String url;


  OrkutAuthorResourceImage();

  OrkutAuthorResourceImage.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Not documented yet. */
class OrkutAuthorResource {
  /** The name of the author, suitable for display. */
  core.String displayName;

  /**
   * Unique identifier of the person who posted the comment. This is the
   * person's OpenSocial ID.
   */
  core.String id;

  /** Image data about the author. */
  OrkutAuthorResourceImage image;

  /** The URL of the author who posted the comment [not yet implemented] */
  core.String url;


  OrkutAuthorResource();

  OrkutAuthorResource.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("image")) {
      image = new OrkutAuthorResourceImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Image data about the poll option. Field is omitted if no image exists. */
class OrkutCommunitypolloptionResourceImage {
  /** A URL that points to an image of the poll question. */
  core.String url;


  OrkutCommunitypolloptionResourceImage();

  OrkutCommunitypolloptionResourceImage.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Not documented yet. */
class OrkutCommunitypolloptionResource {
  /** The option description. */
  core.String description;

  /** Image data about the poll option. Field is omitted if no image exists. */
  OrkutCommunitypolloptionResourceImage image;

  /** The total number of votes that this option received. */
  core.int numberOfVotes;

  /** The poll option ID */
  core.int optionId;


  OrkutCommunitypolloptionResource();

  OrkutCommunitypolloptionResource.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("image")) {
      image = new OrkutCommunitypolloptionResourceImage.fromJson(_json["image"]);
    }
    if (_json.containsKey("numberOfVotes")) {
      numberOfVotes = _json["numberOfVotes"];
    }
    if (_json.containsKey("optionId")) {
      optionId = _json["optionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (numberOfVotes != null) {
      _json["numberOfVotes"] = numberOfVotes;
    }
    if (optionId != null) {
      _json["optionId"] = optionId;
    }
    return _json;
  }
}


/** Not documented yet. */
class OrkutCounterResource {
  /** Link to the collection being counted. */
  OrkutLinkResource link;

  /**
   * The name of the counted collection. Currently supported collections are:
   * - scraps - The scraps of the user.
   * - photos - The photos of the user.
   * - videos - The videos of the user.
   * - pendingTestimonials - The pending testimonials of the user.
   */
  core.String name;

  /** The number of resources on the counted collection. */
  core.int total;


  OrkutCounterResource();

  OrkutCounterResource.fromJson(core.Map _json) {
    if (_json.containsKey("link")) {
      link = new OrkutLinkResource.fromJson(_json["link"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("total")) {
      total = _json["total"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (link != null) {
      _json["link"] = (link).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (total != null) {
      _json["total"] = total;
    }
    return _json;
  }
}


/** Links to resources related to the parent object. */
class OrkutLinkResource {
  /** URL of the link. */
  core.String href;

  /** Relation between the resource and the parent object. */
  core.String rel;

  /** Title of the link. */
  core.String title;

  /** Media type of the link. */
  core.String type;


  OrkutLinkResource();

  OrkutLinkResource.fromJson(core.Map _json) {
    if (_json.containsKey("href")) {
      href = _json["href"];
    }
    if (_json.containsKey("rel")) {
      rel = _json["rel"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (href != null) {
      _json["href"] = href;
    }
    if (rel != null) {
      _json["rel"] = rel;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class Visibility {
  /**
   * Identifies this resource as a visibility item. Value: "orkut#visibility"
   */
  core.String kind;

  /** List of resources for the visibility item. */
  core.List<OrkutLinkResource> links;

  /**
   * The visibility of the resource. Possible values are:
   * - default: not hidden by the user
   * - hidden: hidden
   */
  core.String visibility;


  Visibility();

  Visibility.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new OrkutLinkResource.fromJson(value)).toList();
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}


