// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.groupssettings.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client groupssettings/v1';

/// Manages permission levels and related settings of a group.
class GroupssettingsApi {
  /// View and manage the settings of a G Suite group
  static const AppsGroupsSettingsScope =
      "https://www.googleapis.com/auth/apps.groups.settings";

  final commons.ApiRequester _requester;

  GroupsResourceApi get groups => new GroupsResourceApi(_requester);

  GroupssettingsApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "groups/v1/groups/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class GroupsResourceApi {
  final commons.ApiRequester _requester;

  GroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets one resource by id.
  ///
  /// Request parameters:
  ///
  /// [groupUniqueId] - The group's email address.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Groups].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Groups> get(core.String groupUniqueId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupUniqueId == null) {
      throw new core.ArgumentError("Parameter groupUniqueId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$groupUniqueId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Groups.fromJson(data));
  }

  /// Updates an existing resource. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupUniqueId] - The group's email address.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Groups].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Groups> patch(Groups request, core.String groupUniqueId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (groupUniqueId == null) {
      throw new core.ArgumentError("Parameter groupUniqueId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$groupUniqueId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Groups.fromJson(data));
  }

  /// Updates an existing resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [groupUniqueId] - The group's email address.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Groups].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Groups> update(Groups request, core.String groupUniqueId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (groupUniqueId == null) {
      throw new core.ArgumentError("Parameter groupUniqueId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$groupUniqueId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Groups.fromJson(data));
  }
}

/// JSON template for Group resource
class Groups {
  /// Identifies whether members external to your organization can join the
  /// group. Possible values are:
  /// - true: G Suite users external to your organization can become members of
  /// this group.
  /// - false: Users not belonging to the organization are not allowed to become
  /// members of this group.
  core.String allowExternalMembers;

  /// Deprecated. Allows Google to contact administrator of the group.
  /// - true: Allow Google to contact managers of this group. Occasionally
  /// Google may send updates on the latest features, ask for input on new
  /// features, or ask for permission to highlight your group.
  /// - false: Google can not contact managers of this group.
  core.String allowGoogleCommunication;

  /// Allows posting from web. Possible values are:
  /// - true: Allows any member to post to the group forum.
  /// - false: Members only use Gmail to communicate with the group.
  core.String allowWebPosting;

  /// Allows the group to be archived only. Possible values are:
  /// - true: Group is archived and the group is inactive. New messages to this
  /// group are rejected. The older archived messages are browseable and
  /// searchable.
  /// - If true, the whoCanPostMessage property is set to NONE_CAN_POST.
  /// - If reverted from true to false, whoCanPostMessages is set to
  /// ALL_MANAGERS_CAN_POST.
  /// - false: The group is active and can receive messages.
  /// - When false, updating whoCanPostMessage to NONE_CAN_POST, results in an
  /// error.
  core.String archiveOnly;

  /// Set the content of custom footer text. The maximum number of characters is
  /// 1,000.
  core.String customFooterText;

  /// An email address used when replying to a message if the replyTo property
  /// is set to REPLY_TO_CUSTOM. This address is defined by an account
  /// administrator.
  /// - When the group's ReplyTo property is set to REPLY_TO_CUSTOM, the
  /// customReplyTo property holds a custom email address used when replying to
  /// a message.
  /// - If the group's ReplyTo property is set to REPLY_TO_CUSTOM, the
  /// customReplyTo property must have a text value or an error is returned.
  core.String customReplyTo;

  /// Specifies whether the group has a custom role that's included in one of
  /// the settings being merged. This field is read-only and update/patch
  /// requests to it are ignored. Possible values are:
  /// - true
  /// - false
  core.String customRolesEnabledForSettingsToBeMerged;

  /// When a message is rejected, this is text for the rejection notification
  /// sent to the message's author. By default, this property is empty and has
  /// no value in the API's response body. The maximum notification text size is
  /// 10,000 characters. Note: Requires sendMessageDenyNotification property to
  /// be true.
  core.String defaultMessageDenyNotificationText;

  /// Description of the group. This property value may be an empty string if no
  /// group description has been entered. If entered, the maximum group
  /// description is no more than 300 characters.
  core.String description;

  /// The group's email address. This property can be updated using the
  /// Directory API. Note: Only a group owner can change a group's email
  /// address. A group manager can't do this.
  /// When you change your group's address using the Directory API or the
  /// control panel, you are changing the address your subscribers use to send
  /// email and the web address people use to access your group. People can't
  /// reach your group by visiting the old address.
  core.String email;

  /// Specifies whether a collaborative inbox will remain turned on for the
  /// group. Possible values are:
  /// - true
  /// - false
  core.String enableCollaborativeInbox;

  /// Indicates if favorite replies should be displayed above other replies.
  /// - true: Favorite replies will be displayed above other replies.
  /// - false: Favorite replies will not be displayed above other replies.
  core.String favoriteRepliesOnTop;

  /// Whether to include custom footer. Possible values are:
  /// - true
  /// - false
  core.String includeCustomFooter;

  /// Enables the group to be included in the Global Address List. For more
  /// information, see the help center. Possible values are:
  /// - true: Group is included in the Global Address List.
  /// - false: Group is not included in the Global Address List.
  core.String includeInGlobalAddressList;

  /// Allows the Group contents to be archived. Possible values are:
  /// - true: Archive messages sent to the group.
  /// - false: Do not keep an archive of messages sent to this group. If false,
  /// previously archived messages remain in the archive.
  core.String isArchived;

  /// The type of the resource. It is always groupsSettings#groups.
  core.String kind;

  /// Deprecated. The maximum size of a message is 25Mb.
  core.int maxMessageBytes;

  /// Enables members to post messages as the group. Possible values are:
  /// - true: Group member can post messages using the group's email address
  /// instead of their own email address. Message appear to originate from the
  /// group itself. Note: When true, any message moderation settings on
  /// individual users or new members do not apply to posts made on behalf of
  /// the group.
  /// - false: Members can not post in behalf of the group's email address.
  core.String membersCanPostAsTheGroup;

  /// Deprecated. The default message display font always has a value of
  /// "DEFAULT_FONT".
  core.String messageDisplayFont;

  /// Moderation level of incoming messages. Possible values are:
  /// - MODERATE_ALL_MESSAGES: All messages are sent to the group owner's email
  /// address for approval. If approved, the message is sent to the group.
  /// - MODERATE_NON_MEMBERS: All messages from non group members are sent to
  /// the group owner's email address for approval. If approved, the message is
  /// sent to the group.
  /// - MODERATE_NEW_MEMBERS: All messages from new members are sent to the
  /// group owner's email address for approval. If approved, the message is sent
  /// to the group.
  /// - MODERATE_NONE: No moderator approval is required. Messages are delivered
  /// directly to the group. Note: When the whoCanPostMessage is set to
  /// ANYONE_CAN_POST, we recommend the messageModerationLevel be set to
  /// MODERATE_NON_MEMBERS to protect the group from possible spam.
  /// When memberCanPostAsTheGroup is true, any message moderation settings on
  /// individual users or new members will not apply to posts made on behalf of
  /// the group.
  core.String messageModerationLevel;

  /// Name of the group, which has a maximum size of 75 characters.
  core.String name;

  /// The primary language for group. For a group's primary language use the
  /// language tags from the G Suite languages found at G Suite Email Settings
  /// API Email Language Tags.
  core.String primaryLanguage;

  /// Specifies who receives the default reply. Possible values are:
  /// - REPLY_TO_CUSTOM: For replies to messages, use the group's custom email
  /// address.
  /// When the group's ReplyTo property is set to REPLY_TO_CUSTOM, the
  /// customReplyTo property holds the custom email address used when replying
  /// to a message. If the group's ReplyTo property is set to REPLY_TO_CUSTOM,
  /// the customReplyTo property must have a value. Otherwise an error is
  /// returned.
  ///
  /// - REPLY_TO_SENDER: The reply sent to author of message.
  /// - REPLY_TO_LIST: This reply message is sent to the group.
  /// - REPLY_TO_OWNER: The reply is sent to the owner(s) of the group. This
  /// does not include the group's managers.
  /// - REPLY_TO_IGNORE: Group users individually decide where the message reply
  /// is sent.
  /// - REPLY_TO_MANAGERS: This reply message is sent to the group's managers,
  /// which includes all managers and the group owner.
  core.String replyTo;

  /// Allows a member to be notified if the member's message to the group is
  /// denied by the group owner. Possible values are:
  /// - true: When a message is rejected, send the deny message notification to
  /// the message author.
  /// The defaultMessageDenyNotificationText property is dependent on the
  /// sendMessageDenyNotification property being true.
  ///
  /// - false: When a message is rejected, no notification is sent.
  core.String sendMessageDenyNotification;

  /// Deprecated. This is merged into the new whoCanDiscoverGroup setting.
  /// Allows the group to be visible in the Groups Directory. Possible values
  /// are:
  /// - true: All groups in the account are listed in the Groups directory.
  /// - false: All groups in the account are not listed in the directory.
  core.String showInGroupDirectory;

  /// Specifies moderation levels for messages detected as spam. Possible values
  /// are:
  /// - ALLOW: Post the message to the group.
  /// - MODERATE: Send the message to the moderation queue. This is the default.
  /// - SILENTLY_MODERATE: Send the message to the moderation queue, but do not
  /// send notification to moderators.
  /// - REJECT: Immediately reject the message.
  core.String spamModerationLevel;

  /// Deprecated. This is merged into the new whoCanModerateMembers setting.
  /// Permissions to add members. Possible values are:
  /// - ALL_MEMBERS_CAN_ADD: Managers and members can directly add new members.
  /// - ALL_MANAGERS_CAN_ADD: Only managers can directly add new members. this
  /// includes the group's owner.
  /// - ALL_OWNERS_CAN_ADD: Only owners can directly add new members.
  /// - NONE_CAN_ADD: No one can directly add new members.
  core.String whoCanAdd;

  /// Deprecated. This functionality is no longer supported in the Google Groups
  /// UI. The value is always "NONE".
  core.String whoCanAddReferences;

  /// Specifies who can approve members who ask to join groups. This permission
  /// will be deprecated once it is merged into the new whoCanModerateMembers
  /// setting. Possible values are:
  /// - ALL_MEMBERS_CAN_APPROVE
  /// - ALL_MANAGERS_CAN_APPROVE
  /// - ALL_OWNERS_CAN_APPROVE
  /// - NONE_CAN_APPROVE
  core.String whoCanApproveMembers;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can approve pending messages in the moderation queue.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanApproveMessages;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to assign topics in a forum to another user. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanAssignTopics;

  /// Specifies who can moderate metadata. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanAssistContent;

  /// Specifies who can deny membership to users. This permission will be
  /// deprecated once it is merged into the new whoCanModerateMembers setting.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanBanUsers;

  /// Permission to contact owner of the group via web UI. Possible values are:
  /// - ALL_IN_DOMAIN_CAN_CONTACT
  /// - ALL_MANAGERS_CAN_CONTACT
  /// - ALL_MEMBERS_CAN_CONTACT
  /// - ANYONE_CAN_CONTACT
  core.String whoCanContactOwner;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can delete replies to topics. (Authors can always delete
  /// their own posts). Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanDeleteAnyPost;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can delete topics. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanDeleteTopics;

  /// Specifies the set of users for whom this group is discoverable. Possible
  /// values are:
  /// - ANYONE_CAN_DISCOVER
  /// - ALL_IN_DOMAIN_CAN_DISCOVER
  /// - ALL_MEMBERS_CAN_DISCOVER
  core.String whoCanDiscoverGroup;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to enter free form tags for topics in a forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanEnterFreeFormTags;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can hide posts by reporting them as abuse. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanHideAbuse;

  /// Deprecated. This is merged into the new whoCanModerateMembers setting.
  /// Permissions to invite new members. Possible values are:
  /// - ALL_MEMBERS_CAN_INVITE: Managers and members can invite a new member
  /// candidate.
  /// - ALL_MANAGERS_CAN_INVITE: Only managers can invite a new member. This
  /// includes the group's owner.
  /// - ALL_OWNERS_CAN_INVITE: Only owners can invite a new member.
  /// - NONE_CAN_INVITE: No one can invite a new member candidate.
  core.String whoCanInvite;

  /// Permission to join group. Possible values are:
  /// - ANYONE_CAN_JOIN: Anyone in the account domain can join. This includes
  /// accounts with multiple domains.
  /// - ALL_IN_DOMAIN_CAN_JOIN: Any Internet user who is outside your domain can
  /// access your Google Groups service and view the list of groups in your
  /// Groups directory. Warning: Group owners can add external addresses,
  /// outside of the domain to their groups. They can also allow people outside
  /// your domain to join their groups. If you later disable this option, any
  /// external addresses already added to users' groups remain in those groups.
  /// - INVITED_CAN_JOIN: Candidates for membership can be invited to join.
  /// - CAN_REQUEST_TO_JOIN: Non members can request an invitation to join.
  core.String whoCanJoin;

  /// Permission to leave the group. Possible values are:
  /// - ALL_MANAGERS_CAN_LEAVE
  /// - ALL_MEMBERS_CAN_LEAVE
  /// - NONE_CAN_LEAVE
  core.String whoCanLeaveGroup;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can prevent users from posting replies to topics. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanLockTopics;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can make topics appear at the top of the topic list.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMakeTopicsSticky;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to mark a topic as a duplicate of another topic. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMarkDuplicate;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to mark any other user's post as a favorite reply. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMarkFavoriteReplyOnAnyTopic;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to mark a post for a topic they started as a favorite reply.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMarkFavoriteReplyOnOwnTopic;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to mark a topic as not needing a response. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMarkNoResponseNeeded;

  /// Specifies who can moderate content. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanModerateContent;

  /// Specifies who can manage members. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanModerateMembers;

  /// Deprecated. This is merged into the new whoCanModerateMembers setting.
  /// Specifies who can change group members' roles. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanModifyMembers;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to change tags and categories. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanModifyTagsAndCategories;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can move topics into the group or forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMoveTopicsIn;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can move topics out of the group or forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanMoveTopicsOut;

  /// Deprecated. This is merged into the new whoCanModerateContent setting.
  /// Specifies who can post announcements, a special topic type. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanPostAnnouncements;

  /// Permissions to post messages. Possible values are:
  /// - NONE_CAN_POST: The group is disabled and archived. No one can post a
  /// message to this group.
  /// - When archiveOnly is false, updating whoCanPostMessage to NONE_CAN_POST,
  /// results in an error.
  /// - If archiveOnly is reverted from true to false, whoCanPostMessages is set
  /// to ALL_MANAGERS_CAN_POST.
  /// - ALL_MANAGERS_CAN_POST: Managers, including group owners, can post
  /// messages.
  /// - ALL_MEMBERS_CAN_POST: Any group member can post a message.
  /// - ALL_OWNERS_CAN_POST: Only group owners can post a message.
  /// - ALL_IN_DOMAIN_CAN_POST: Anyone in the account can post a message.
  /// - ANYONE_CAN_POST: Any Internet user who outside your account can access
  /// your Google Groups service and post a message. Note: When
  /// whoCanPostMessage is set to ANYONE_CAN_POST, we recommend the
  /// messageModerationLevel be set to MODERATE_NON_MEMBERS to protect the group
  /// from possible spam.
  core.String whoCanPostMessage;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to take topics in a forum. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanTakeTopics;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to unassign any topic in a forum. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanUnassignTopic;

  /// Deprecated. This is merged into the new whoCanAssistContent setting.
  /// Permission to unmark any post from a favorite reply. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String whoCanUnmarkFavoriteReplyOnAnyTopic;

  /// Permissions to view group messages. Possible values are:
  /// - ANYONE_CAN_VIEW: Any Internet user can view the group's messages.
  /// - ALL_IN_DOMAIN_CAN_VIEW: Anyone in your account can view this group's
  /// messages.
  /// - ALL_MEMBERS_CAN_VIEW: All group members can view the group's messages.
  /// - ALL_MANAGERS_CAN_VIEW: Any group manager can view this group's messages.
  core.String whoCanViewGroup;

  /// Permissions to view membership. Possible values are:
  /// - ALL_IN_DOMAIN_CAN_VIEW: Anyone in the account can view the group members
  /// list.
  /// If a group already has external members, those members can still send
  /// email to this group.
  ///
  /// - ALL_MEMBERS_CAN_VIEW: The group members can view the group members list.
  /// - ALL_MANAGERS_CAN_VIEW: The group managers can view group members list.
  core.String whoCanViewMembership;

  Groups();

  Groups.fromJson(core.Map _json) {
    if (_json.containsKey("allowExternalMembers")) {
      allowExternalMembers = _json["allowExternalMembers"];
    }
    if (_json.containsKey("allowGoogleCommunication")) {
      allowGoogleCommunication = _json["allowGoogleCommunication"];
    }
    if (_json.containsKey("allowWebPosting")) {
      allowWebPosting = _json["allowWebPosting"];
    }
    if (_json.containsKey("archiveOnly")) {
      archiveOnly = _json["archiveOnly"];
    }
    if (_json.containsKey("customFooterText")) {
      customFooterText = _json["customFooterText"];
    }
    if (_json.containsKey("customReplyTo")) {
      customReplyTo = _json["customReplyTo"];
    }
    if (_json.containsKey("customRolesEnabledForSettingsToBeMerged")) {
      customRolesEnabledForSettingsToBeMerged =
          _json["customRolesEnabledForSettingsToBeMerged"];
    }
    if (_json.containsKey("defaultMessageDenyNotificationText")) {
      defaultMessageDenyNotificationText =
          _json["defaultMessageDenyNotificationText"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("enableCollaborativeInbox")) {
      enableCollaborativeInbox = _json["enableCollaborativeInbox"];
    }
    if (_json.containsKey("favoriteRepliesOnTop")) {
      favoriteRepliesOnTop = _json["favoriteRepliesOnTop"];
    }
    if (_json.containsKey("includeCustomFooter")) {
      includeCustomFooter = _json["includeCustomFooter"];
    }
    if (_json.containsKey("includeInGlobalAddressList")) {
      includeInGlobalAddressList = _json["includeInGlobalAddressList"];
    }
    if (_json.containsKey("isArchived")) {
      isArchived = _json["isArchived"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maxMessageBytes")) {
      maxMessageBytes = _json["maxMessageBytes"];
    }
    if (_json.containsKey("membersCanPostAsTheGroup")) {
      membersCanPostAsTheGroup = _json["membersCanPostAsTheGroup"];
    }
    if (_json.containsKey("messageDisplayFont")) {
      messageDisplayFont = _json["messageDisplayFont"];
    }
    if (_json.containsKey("messageModerationLevel")) {
      messageModerationLevel = _json["messageModerationLevel"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("primaryLanguage")) {
      primaryLanguage = _json["primaryLanguage"];
    }
    if (_json.containsKey("replyTo")) {
      replyTo = _json["replyTo"];
    }
    if (_json.containsKey("sendMessageDenyNotification")) {
      sendMessageDenyNotification = _json["sendMessageDenyNotification"];
    }
    if (_json.containsKey("showInGroupDirectory")) {
      showInGroupDirectory = _json["showInGroupDirectory"];
    }
    if (_json.containsKey("spamModerationLevel")) {
      spamModerationLevel = _json["spamModerationLevel"];
    }
    if (_json.containsKey("whoCanAdd")) {
      whoCanAdd = _json["whoCanAdd"];
    }
    if (_json.containsKey("whoCanAddReferences")) {
      whoCanAddReferences = _json["whoCanAddReferences"];
    }
    if (_json.containsKey("whoCanApproveMembers")) {
      whoCanApproveMembers = _json["whoCanApproveMembers"];
    }
    if (_json.containsKey("whoCanApproveMessages")) {
      whoCanApproveMessages = _json["whoCanApproveMessages"];
    }
    if (_json.containsKey("whoCanAssignTopics")) {
      whoCanAssignTopics = _json["whoCanAssignTopics"];
    }
    if (_json.containsKey("whoCanAssistContent")) {
      whoCanAssistContent = _json["whoCanAssistContent"];
    }
    if (_json.containsKey("whoCanBanUsers")) {
      whoCanBanUsers = _json["whoCanBanUsers"];
    }
    if (_json.containsKey("whoCanContactOwner")) {
      whoCanContactOwner = _json["whoCanContactOwner"];
    }
    if (_json.containsKey("whoCanDeleteAnyPost")) {
      whoCanDeleteAnyPost = _json["whoCanDeleteAnyPost"];
    }
    if (_json.containsKey("whoCanDeleteTopics")) {
      whoCanDeleteTopics = _json["whoCanDeleteTopics"];
    }
    if (_json.containsKey("whoCanDiscoverGroup")) {
      whoCanDiscoverGroup = _json["whoCanDiscoverGroup"];
    }
    if (_json.containsKey("whoCanEnterFreeFormTags")) {
      whoCanEnterFreeFormTags = _json["whoCanEnterFreeFormTags"];
    }
    if (_json.containsKey("whoCanHideAbuse")) {
      whoCanHideAbuse = _json["whoCanHideAbuse"];
    }
    if (_json.containsKey("whoCanInvite")) {
      whoCanInvite = _json["whoCanInvite"];
    }
    if (_json.containsKey("whoCanJoin")) {
      whoCanJoin = _json["whoCanJoin"];
    }
    if (_json.containsKey("whoCanLeaveGroup")) {
      whoCanLeaveGroup = _json["whoCanLeaveGroup"];
    }
    if (_json.containsKey("whoCanLockTopics")) {
      whoCanLockTopics = _json["whoCanLockTopics"];
    }
    if (_json.containsKey("whoCanMakeTopicsSticky")) {
      whoCanMakeTopicsSticky = _json["whoCanMakeTopicsSticky"];
    }
    if (_json.containsKey("whoCanMarkDuplicate")) {
      whoCanMarkDuplicate = _json["whoCanMarkDuplicate"];
    }
    if (_json.containsKey("whoCanMarkFavoriteReplyOnAnyTopic")) {
      whoCanMarkFavoriteReplyOnAnyTopic =
          _json["whoCanMarkFavoriteReplyOnAnyTopic"];
    }
    if (_json.containsKey("whoCanMarkFavoriteReplyOnOwnTopic")) {
      whoCanMarkFavoriteReplyOnOwnTopic =
          _json["whoCanMarkFavoriteReplyOnOwnTopic"];
    }
    if (_json.containsKey("whoCanMarkNoResponseNeeded")) {
      whoCanMarkNoResponseNeeded = _json["whoCanMarkNoResponseNeeded"];
    }
    if (_json.containsKey("whoCanModerateContent")) {
      whoCanModerateContent = _json["whoCanModerateContent"];
    }
    if (_json.containsKey("whoCanModerateMembers")) {
      whoCanModerateMembers = _json["whoCanModerateMembers"];
    }
    if (_json.containsKey("whoCanModifyMembers")) {
      whoCanModifyMembers = _json["whoCanModifyMembers"];
    }
    if (_json.containsKey("whoCanModifyTagsAndCategories")) {
      whoCanModifyTagsAndCategories = _json["whoCanModifyTagsAndCategories"];
    }
    if (_json.containsKey("whoCanMoveTopicsIn")) {
      whoCanMoveTopicsIn = _json["whoCanMoveTopicsIn"];
    }
    if (_json.containsKey("whoCanMoveTopicsOut")) {
      whoCanMoveTopicsOut = _json["whoCanMoveTopicsOut"];
    }
    if (_json.containsKey("whoCanPostAnnouncements")) {
      whoCanPostAnnouncements = _json["whoCanPostAnnouncements"];
    }
    if (_json.containsKey("whoCanPostMessage")) {
      whoCanPostMessage = _json["whoCanPostMessage"];
    }
    if (_json.containsKey("whoCanTakeTopics")) {
      whoCanTakeTopics = _json["whoCanTakeTopics"];
    }
    if (_json.containsKey("whoCanUnassignTopic")) {
      whoCanUnassignTopic = _json["whoCanUnassignTopic"];
    }
    if (_json.containsKey("whoCanUnmarkFavoriteReplyOnAnyTopic")) {
      whoCanUnmarkFavoriteReplyOnAnyTopic =
          _json["whoCanUnmarkFavoriteReplyOnAnyTopic"];
    }
    if (_json.containsKey("whoCanViewGroup")) {
      whoCanViewGroup = _json["whoCanViewGroup"];
    }
    if (_json.containsKey("whoCanViewMembership")) {
      whoCanViewMembership = _json["whoCanViewMembership"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowExternalMembers != null) {
      _json["allowExternalMembers"] = allowExternalMembers;
    }
    if (allowGoogleCommunication != null) {
      _json["allowGoogleCommunication"] = allowGoogleCommunication;
    }
    if (allowWebPosting != null) {
      _json["allowWebPosting"] = allowWebPosting;
    }
    if (archiveOnly != null) {
      _json["archiveOnly"] = archiveOnly;
    }
    if (customFooterText != null) {
      _json["customFooterText"] = customFooterText;
    }
    if (customReplyTo != null) {
      _json["customReplyTo"] = customReplyTo;
    }
    if (customRolesEnabledForSettingsToBeMerged != null) {
      _json["customRolesEnabledForSettingsToBeMerged"] =
          customRolesEnabledForSettingsToBeMerged;
    }
    if (defaultMessageDenyNotificationText != null) {
      _json["defaultMessageDenyNotificationText"] =
          defaultMessageDenyNotificationText;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (enableCollaborativeInbox != null) {
      _json["enableCollaborativeInbox"] = enableCollaborativeInbox;
    }
    if (favoriteRepliesOnTop != null) {
      _json["favoriteRepliesOnTop"] = favoriteRepliesOnTop;
    }
    if (includeCustomFooter != null) {
      _json["includeCustomFooter"] = includeCustomFooter;
    }
    if (includeInGlobalAddressList != null) {
      _json["includeInGlobalAddressList"] = includeInGlobalAddressList;
    }
    if (isArchived != null) {
      _json["isArchived"] = isArchived;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maxMessageBytes != null) {
      _json["maxMessageBytes"] = maxMessageBytes;
    }
    if (membersCanPostAsTheGroup != null) {
      _json["membersCanPostAsTheGroup"] = membersCanPostAsTheGroup;
    }
    if (messageDisplayFont != null) {
      _json["messageDisplayFont"] = messageDisplayFont;
    }
    if (messageModerationLevel != null) {
      _json["messageModerationLevel"] = messageModerationLevel;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (primaryLanguage != null) {
      _json["primaryLanguage"] = primaryLanguage;
    }
    if (replyTo != null) {
      _json["replyTo"] = replyTo;
    }
    if (sendMessageDenyNotification != null) {
      _json["sendMessageDenyNotification"] = sendMessageDenyNotification;
    }
    if (showInGroupDirectory != null) {
      _json["showInGroupDirectory"] = showInGroupDirectory;
    }
    if (spamModerationLevel != null) {
      _json["spamModerationLevel"] = spamModerationLevel;
    }
    if (whoCanAdd != null) {
      _json["whoCanAdd"] = whoCanAdd;
    }
    if (whoCanAddReferences != null) {
      _json["whoCanAddReferences"] = whoCanAddReferences;
    }
    if (whoCanApproveMembers != null) {
      _json["whoCanApproveMembers"] = whoCanApproveMembers;
    }
    if (whoCanApproveMessages != null) {
      _json["whoCanApproveMessages"] = whoCanApproveMessages;
    }
    if (whoCanAssignTopics != null) {
      _json["whoCanAssignTopics"] = whoCanAssignTopics;
    }
    if (whoCanAssistContent != null) {
      _json["whoCanAssistContent"] = whoCanAssistContent;
    }
    if (whoCanBanUsers != null) {
      _json["whoCanBanUsers"] = whoCanBanUsers;
    }
    if (whoCanContactOwner != null) {
      _json["whoCanContactOwner"] = whoCanContactOwner;
    }
    if (whoCanDeleteAnyPost != null) {
      _json["whoCanDeleteAnyPost"] = whoCanDeleteAnyPost;
    }
    if (whoCanDeleteTopics != null) {
      _json["whoCanDeleteTopics"] = whoCanDeleteTopics;
    }
    if (whoCanDiscoverGroup != null) {
      _json["whoCanDiscoverGroup"] = whoCanDiscoverGroup;
    }
    if (whoCanEnterFreeFormTags != null) {
      _json["whoCanEnterFreeFormTags"] = whoCanEnterFreeFormTags;
    }
    if (whoCanHideAbuse != null) {
      _json["whoCanHideAbuse"] = whoCanHideAbuse;
    }
    if (whoCanInvite != null) {
      _json["whoCanInvite"] = whoCanInvite;
    }
    if (whoCanJoin != null) {
      _json["whoCanJoin"] = whoCanJoin;
    }
    if (whoCanLeaveGroup != null) {
      _json["whoCanLeaveGroup"] = whoCanLeaveGroup;
    }
    if (whoCanLockTopics != null) {
      _json["whoCanLockTopics"] = whoCanLockTopics;
    }
    if (whoCanMakeTopicsSticky != null) {
      _json["whoCanMakeTopicsSticky"] = whoCanMakeTopicsSticky;
    }
    if (whoCanMarkDuplicate != null) {
      _json["whoCanMarkDuplicate"] = whoCanMarkDuplicate;
    }
    if (whoCanMarkFavoriteReplyOnAnyTopic != null) {
      _json["whoCanMarkFavoriteReplyOnAnyTopic"] =
          whoCanMarkFavoriteReplyOnAnyTopic;
    }
    if (whoCanMarkFavoriteReplyOnOwnTopic != null) {
      _json["whoCanMarkFavoriteReplyOnOwnTopic"] =
          whoCanMarkFavoriteReplyOnOwnTopic;
    }
    if (whoCanMarkNoResponseNeeded != null) {
      _json["whoCanMarkNoResponseNeeded"] = whoCanMarkNoResponseNeeded;
    }
    if (whoCanModerateContent != null) {
      _json["whoCanModerateContent"] = whoCanModerateContent;
    }
    if (whoCanModerateMembers != null) {
      _json["whoCanModerateMembers"] = whoCanModerateMembers;
    }
    if (whoCanModifyMembers != null) {
      _json["whoCanModifyMembers"] = whoCanModifyMembers;
    }
    if (whoCanModifyTagsAndCategories != null) {
      _json["whoCanModifyTagsAndCategories"] = whoCanModifyTagsAndCategories;
    }
    if (whoCanMoveTopicsIn != null) {
      _json["whoCanMoveTopicsIn"] = whoCanMoveTopicsIn;
    }
    if (whoCanMoveTopicsOut != null) {
      _json["whoCanMoveTopicsOut"] = whoCanMoveTopicsOut;
    }
    if (whoCanPostAnnouncements != null) {
      _json["whoCanPostAnnouncements"] = whoCanPostAnnouncements;
    }
    if (whoCanPostMessage != null) {
      _json["whoCanPostMessage"] = whoCanPostMessage;
    }
    if (whoCanTakeTopics != null) {
      _json["whoCanTakeTopics"] = whoCanTakeTopics;
    }
    if (whoCanUnassignTopic != null) {
      _json["whoCanUnassignTopic"] = whoCanUnassignTopic;
    }
    if (whoCanUnmarkFavoriteReplyOnAnyTopic != null) {
      _json["whoCanUnmarkFavoriteReplyOnAnyTopic"] =
          whoCanUnmarkFavoriteReplyOnAnyTopic;
    }
    if (whoCanViewGroup != null) {
      _json["whoCanViewGroup"] = whoCanViewGroup;
    }
    if (whoCanViewMembership != null) {
      _json["whoCanViewMembership"] = whoCanViewMembership;
    }
    return _json;
  }
}
