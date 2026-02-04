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

/// Groups Settings API - v1
///
/// Manages permission levels and related settings of a group.
///
/// For more information, see
/// <https://developers.google.com/google-apps/groups-settings/get_started>
///
/// Create an instance of [GroupssettingsApi] to access these resources:
///
/// - [GroupsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages permission levels and related settings of a group.
class GroupssettingsApi {
  /// View and manage the settings of a G Suite group
  static const appsGroupsSettingsScope =
      'https://www.googleapis.com/auth/apps.groups.settings';

  final commons.ApiRequester _requester;

  GroupsResource get groups => GroupsResource(_requester);

  GroupssettingsApi(
    http.Client client, {
    core.String rootUrl = 'https://www.googleapis.com/',
    core.String servicePath = 'groups/v1/groups/',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class GroupsResource {
  final commons.ApiRequester _requester;

  GroupsResource(commons.ApiRequester client) : _requester = client;

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
  async.Future<Groups> get(
    core.String groupUniqueId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = commons.escapeVariable('$groupUniqueId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Groups.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing resource.
  ///
  /// This method supports patch semantics.
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
  async.Future<Groups> patch(
    Groups request,
    core.String groupUniqueId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = commons.escapeVariable('$groupUniqueId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Groups.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Groups> update(
    Groups request,
    core.String groupUniqueId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = commons.escapeVariable('$groupUniqueId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Groups.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// JSON template for Group resource
class Groups {
  /// Identifies whether members external to your organization can join the
  /// group.
  ///
  /// Possible values are:
  /// - true: G Suite users external to your organization can become members of
  /// this group.
  /// - false: Users not belonging to the organization are not allowed to become
  /// members of this group.
  core.String? allowExternalMembers;

  /// Allows Google to contact administrator of the group.
  ///
  ///
  /// - true: Allow Google to contact managers of this group. Occasionally
  /// Google may send updates on the latest features, ask for input on new
  /// features, or ask for permission to highlight your group.
  /// - false: Google can not contact managers of this group.
  ///
  /// Deprecated.
  core.String? allowGoogleCommunication;

  /// Allows posting from web.
  ///
  /// Possible values are:
  /// - true: Allows any member to post to the group forum.
  /// - false: Members only use Gmail to communicate with the group.
  core.String? allowWebPosting;

  /// Allows the group to be archived only.
  ///
  /// Possible values are:
  /// - true: Group is archived and the group is inactive. New messages to this
  /// group are rejected. The older archived messages are browseable and
  /// searchable.
  /// - If true, the whoCanPostMessage property is set to NONE_CAN_POST.
  /// - If reverted from true to false, whoCanPostMessages is set to
  /// ALL_MANAGERS_CAN_POST.
  /// - false: The group is active and can receive messages.
  /// - When false, updating whoCanPostMessage to NONE_CAN_POST, results in an
  /// error.
  core.String? archiveOnly;

  /// Set the content of custom footer text.
  ///
  /// The maximum number of characters is 1,000.
  core.String? customFooterText;

  /// An email address used when replying to a message if the replyTo property
  /// is set to REPLY_TO_CUSTOM.
  ///
  /// This address is defined by an account administrator.
  /// - When the group's ReplyTo property is set to REPLY_TO_CUSTOM, the
  /// customReplyTo property holds a custom email address used when replying to
  /// a message.
  /// - If the group's ReplyTo property is set to REPLY_TO_CUSTOM, the
  /// customReplyTo property must have a text value or an error is returned.
  core.String? customReplyTo;

  /// Specifies whether the group has a custom role that's included in one of
  /// the settings being merged.
  ///
  /// This field is read-only and update/patch requests to it are ignored.
  /// Possible values are:
  /// - true
  /// - false
  core.String? customRolesEnabledForSettingsToBeMerged;

  /// When a message is rejected, this is text for the rejection notification
  /// sent to the message's author.
  ///
  /// By default, this property is empty and has no value in the API's response
  /// body. The maximum notification text size is 10,000 characters. Note:
  /// Requires sendMessageDenyNotification property to be true.
  core.String? defaultMessageDenyNotificationText;

  /// Default sender for members who can post messages as the group.
  ///
  /// Possible values are: - `DEFAULT_SELF`: By default messages will be sent
  /// from the user - `GROUP`: By default messages will be sent from the group
  core.String? defaultSender;

  /// Description of the group.
  ///
  /// This property value may be an empty string if no group description has
  /// been entered. If entered, the maximum group description is no more than
  /// 300 characters.
  core.String? description;

  /// The group's email address.
  ///
  /// This property can be updated using the Directory API. Note: Only a group
  /// owner can change a group's email address. A group manager can't do this.
  /// When you change your group's address using the Directory API or the
  /// control panel, you are changing the address your subscribers use to send
  /// email and the web address people use to access your group. People can't
  /// reach your group by visiting the old address.
  core.String? email;

  /// Specifies whether a collaborative inbox will remain turned on for the
  /// group.
  ///
  /// Possible values are:
  /// - true
  /// - false
  core.String? enableCollaborativeInbox;

  /// Indicates if favorite replies should be displayed above other replies.
  ///
  ///
  /// - true: Favorite replies will be displayed above other replies.
  /// - false: Favorite replies will not be displayed above other replies.
  core.String? favoriteRepliesOnTop;

  /// Whether to include custom footer.
  ///
  /// Possible values are:
  /// - true
  /// - false
  core.String? includeCustomFooter;

  /// Enables the group to be included in the Global Address List.
  ///
  /// For more information, see the help center. Possible values are:
  /// - true: Group is included in the Global Address List.
  /// - false: Group is not included in the Global Address List.
  core.String? includeInGlobalAddressList;

  /// Allows the Group contents to be archived.
  ///
  /// Possible values are:
  /// - true: Archive messages sent to the group.
  /// - false: Do not keep an archive of messages sent to this group. If false,
  /// previously archived messages remain in the archive.
  core.String? isArchived;

  /// The type of the resource.
  ///
  /// It is always groupsSettings#groups.
  core.String? kind;

  /// The maximum size of a message is 25Mb.
  ///
  /// Deprecated.
  core.int? maxMessageBytes;

  /// Enables members to post messages as the group.
  ///
  /// Possible values are:
  /// - true: Group member can post messages using the group's email address
  /// instead of their own email address. Message appear to originate from the
  /// group itself. Note: When true, any message moderation settings on
  /// individual users or new members do not apply to posts made on behalf of
  /// the group.
  /// - false: Members can not post in behalf of the group's email address.
  core.String? membersCanPostAsTheGroup;

  /// The default message display font always has a value of "DEFAULT_FONT".
  ///
  /// Deprecated.
  core.String? messageDisplayFont;

  /// Moderation level of incoming messages.
  ///
  /// Possible values are:
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
  core.String? messageModerationLevel;

  /// Name of the group, which has a maximum size of 75 characters.
  core.String? name;

  /// The primary language for group.
  ///
  /// For a group's primary language use the language tags from the G Suite
  /// languages found at G Suite Email Settings API Email Language Tags.
  core.String? primaryLanguage;

  /// Specifies who receives the default reply.
  ///
  /// Possible values are:
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
  core.String? replyTo;

  /// Allows a member to be notified if the member's message to the group is
  /// denied by the group owner.
  ///
  /// Possible values are:
  /// - true: When a message is rejected, send the deny message notification to
  /// the message author.
  /// The defaultMessageDenyNotificationText property is dependent on the
  /// sendMessageDenyNotification property being true.
  ///
  /// - false: When a message is rejected, no notification is sent.
  core.String? sendMessageDenyNotification;

  /// This is merged into the new whoCanDiscoverGroup setting.
  ///
  /// Allows the group to be visible in the Groups Directory. Possible values
  /// are:
  /// - true: All groups in the account are listed in the Groups directory.
  /// - false: All groups in the account are not listed in the directory.
  ///
  /// Deprecated.
  core.String? showInGroupDirectory;

  /// Specifies moderation levels for messages detected as spam.
  ///
  /// Possible values are:
  /// - ALLOW: Post the message to the group.
  /// - MODERATE: Send the message to the moderation queue. This is the default.
  /// - SILENTLY_MODERATE: Send the message to the moderation queue, but do not
  /// send notification to moderators.
  /// - REJECT: Immediately reject the message.
  core.String? spamModerationLevel;

  /// This is merged into the new whoCanModerateMembers setting.
  ///
  /// Permissions to add members. Possible values are:
  /// - ALL_MEMBERS_CAN_ADD: Managers and members can directly add new members.
  /// - ALL_MANAGERS_CAN_ADD: Only managers can directly add new members. this
  /// includes the group's owner.
  /// - ALL_OWNERS_CAN_ADD: Only owners can directly add new members.
  /// - NONE_CAN_ADD: No one can directly add new members.
  ///
  /// Deprecated.
  core.String? whoCanAdd;

  /// This functionality is no longer supported in the Google Groups UI.
  ///
  /// The value is always "NONE".
  ///
  /// Deprecated.
  core.String? whoCanAddReferences;

  /// Specifies who can approve members who ask to join groups.
  ///
  /// This permission will be deprecated once it is merged into the new
  /// whoCanModerateMembers setting. Possible values are:
  /// - ALL_MEMBERS_CAN_APPROVE
  /// - ALL_MANAGERS_CAN_APPROVE
  /// - ALL_OWNERS_CAN_APPROVE
  /// - NONE_CAN_APPROVE
  core.String? whoCanApproveMembers;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can approve pending messages in the moderation queue.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanApproveMessages;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to assign topics in a forum to another user. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanAssignTopics;

  /// Specifies who can moderate metadata.
  ///
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  core.String? whoCanAssistContent;

  /// Specifies who can deny membership to users.
  ///
  /// This permission will be deprecated once it is merged into the new
  /// whoCanModerateMembers setting. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String? whoCanBanUsers;

  /// Permission to contact owner of the group via web UI.
  ///
  /// Possible values are:
  /// - ALL_IN_DOMAIN_CAN_CONTACT
  /// - ALL_MANAGERS_CAN_CONTACT
  /// - ALL_MEMBERS_CAN_CONTACT
  /// - ANYONE_CAN_CONTACT
  /// - ALL_OWNERS_CAN_CONTACT
  core.String? whoCanContactOwner;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can delete replies to topics. (Authors can always delete
  /// their own posts). Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanDeleteAnyPost;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can delete topics. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanDeleteTopics;

  /// Specifies the set of users for whom this group is discoverable.
  ///
  /// Possible values are:
  /// - ANYONE_CAN_DISCOVER
  /// - ALL_IN_DOMAIN_CAN_DISCOVER
  /// - ALL_MEMBERS_CAN_DISCOVER
  core.String? whoCanDiscoverGroup;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to enter free form tags for topics in a forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanEnterFreeFormTags;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can hide posts by reporting them as abuse. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanHideAbuse;

  /// This is merged into the new whoCanModerateMembers setting.
  ///
  /// Permissions to invite new members. Possible values are:
  /// - ALL_MEMBERS_CAN_INVITE: Managers and members can invite a new member
  /// candidate.
  /// - ALL_MANAGERS_CAN_INVITE: Only managers can invite a new member. This
  /// includes the group's owner.
  /// - ALL_OWNERS_CAN_INVITE: Only owners can invite a new member.
  /// - NONE_CAN_INVITE: No one can invite a new member candidate.
  ///
  /// Deprecated.
  core.String? whoCanInvite;

  /// Permission to join group.
  ///
  /// Possible values are:
  /// - ANYONE_CAN_JOIN: Any Internet user who is outside your domain can access
  /// your Google Groups service and view the list of groups in your Groups
  /// directory. Warning: Group owners can add external addresses, outside of
  /// the domain to their groups. They can also allow people outside your domain
  /// to join their groups. If you later disable this option, any external
  /// addresses already added to users' groups remain in those groups.
  /// - ALL_IN_DOMAIN_CAN_JOIN: Anyone in the account domain can join. This
  /// includes accounts with multiple domains.
  /// - INVITED_CAN_JOIN: Candidates for membership can be invited to join.
  /// - CAN_REQUEST_TO_JOIN: Non members can request an invitation to join.
  core.String? whoCanJoin;

  /// Permission to leave the group.
  ///
  /// Possible values are:
  /// - ALL_MANAGERS_CAN_LEAVE
  /// - ALL_MEMBERS_CAN_LEAVE
  /// - NONE_CAN_LEAVE
  core.String? whoCanLeaveGroup;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can prevent users from posting replies to topics. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanLockTopics;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can make topics appear at the top of the topic list.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMakeTopicsSticky;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to mark a topic as a duplicate of another topic. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMarkDuplicate;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to mark any other user's post as a favorite reply. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMarkFavoriteReplyOnAnyTopic;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to mark a post for a topic they started as a favorite reply.
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMarkFavoriteReplyOnOwnTopic;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to mark a topic as not needing a response. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMarkNoResponseNeeded;

  /// Specifies who can moderate content.
  ///
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String? whoCanModerateContent;

  /// Specifies who can manage members.
  ///
  /// Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  core.String? whoCanModerateMembers;

  /// This is merged into the new whoCanModerateMembers setting.
  ///
  /// Specifies who can change group members' roles. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanModifyMembers;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to change tags and categories. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanModifyTagsAndCategories;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can move topics into the group or forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMoveTopicsIn;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can move topics out of the group or forum. Possible values
  /// are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanMoveTopicsOut;

  /// This is merged into the new whoCanModerateContent setting.
  ///
  /// Specifies who can post announcements, a special topic type. Possible
  /// values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanPostAnnouncements;

  /// Permissions to post messages.
  ///
  /// Possible values are:
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
  core.String? whoCanPostMessage;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to take topics in a forum. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanTakeTopics;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to unassign any topic in a forum. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanUnassignTopic;

  /// This is merged into the new whoCanAssistContent setting.
  ///
  /// Permission to unmark any post from a favorite reply. Possible values are:
  /// - ALL_MEMBERS
  /// - OWNERS_AND_MANAGERS
  /// - MANAGERS_ONLY
  /// - OWNERS_ONLY
  /// - NONE
  ///
  /// Deprecated.
  core.String? whoCanUnmarkFavoriteReplyOnAnyTopic;

  /// Permissions to view group messages.
  ///
  /// Possible values are:
  /// - ANYONE_CAN_VIEW: Any Internet user can view the group's messages.
  /// - ALL_IN_DOMAIN_CAN_VIEW: Anyone in your account can view this group's
  /// messages.
  /// - ALL_MEMBERS_CAN_VIEW: All group members can view the group's messages.
  /// - ALL_MANAGERS_CAN_VIEW: Any group manager can view this group's messages.
  core.String? whoCanViewGroup;

  /// Permissions to view membership.
  ///
  /// Possible values are:
  /// - ALL_IN_DOMAIN_CAN_VIEW: Anyone in the account can view the group members
  /// list.
  /// If a group already has external members, those members can still send
  /// email to this group.
  ///
  /// - ALL_MEMBERS_CAN_VIEW: The group members can view the group members list.
  /// - ALL_MANAGERS_CAN_VIEW: The group managers can view group members list.
  core.String? whoCanViewMembership;

  Groups({
    this.allowExternalMembers,
    this.allowGoogleCommunication,
    this.allowWebPosting,
    this.archiveOnly,
    this.customFooterText,
    this.customReplyTo,
    this.customRolesEnabledForSettingsToBeMerged,
    this.defaultMessageDenyNotificationText,
    this.defaultSender,
    this.description,
    this.email,
    this.enableCollaborativeInbox,
    this.favoriteRepliesOnTop,
    this.includeCustomFooter,
    this.includeInGlobalAddressList,
    this.isArchived,
    this.kind,
    this.maxMessageBytes,
    this.membersCanPostAsTheGroup,
    this.messageDisplayFont,
    this.messageModerationLevel,
    this.name,
    this.primaryLanguage,
    this.replyTo,
    this.sendMessageDenyNotification,
    this.showInGroupDirectory,
    this.spamModerationLevel,
    this.whoCanAdd,
    this.whoCanAddReferences,
    this.whoCanApproveMembers,
    this.whoCanApproveMessages,
    this.whoCanAssignTopics,
    this.whoCanAssistContent,
    this.whoCanBanUsers,
    this.whoCanContactOwner,
    this.whoCanDeleteAnyPost,
    this.whoCanDeleteTopics,
    this.whoCanDiscoverGroup,
    this.whoCanEnterFreeFormTags,
    this.whoCanHideAbuse,
    this.whoCanInvite,
    this.whoCanJoin,
    this.whoCanLeaveGroup,
    this.whoCanLockTopics,
    this.whoCanMakeTopicsSticky,
    this.whoCanMarkDuplicate,
    this.whoCanMarkFavoriteReplyOnAnyTopic,
    this.whoCanMarkFavoriteReplyOnOwnTopic,
    this.whoCanMarkNoResponseNeeded,
    this.whoCanModerateContent,
    this.whoCanModerateMembers,
    this.whoCanModifyMembers,
    this.whoCanModifyTagsAndCategories,
    this.whoCanMoveTopicsIn,
    this.whoCanMoveTopicsOut,
    this.whoCanPostAnnouncements,
    this.whoCanPostMessage,
    this.whoCanTakeTopics,
    this.whoCanUnassignTopic,
    this.whoCanUnmarkFavoriteReplyOnAnyTopic,
    this.whoCanViewGroup,
    this.whoCanViewMembership,
  });

  Groups.fromJson(core.Map json_)
    : this(
        allowExternalMembers: json_['allowExternalMembers'] as core.String?,
        allowGoogleCommunication:
            json_['allowGoogleCommunication'] as core.String?,
        allowWebPosting: json_['allowWebPosting'] as core.String?,
        archiveOnly: json_['archiveOnly'] as core.String?,
        customFooterText: json_['customFooterText'] as core.String?,
        customReplyTo: json_['customReplyTo'] as core.String?,
        customRolesEnabledForSettingsToBeMerged:
            json_['customRolesEnabledForSettingsToBeMerged'] as core.String?,
        defaultMessageDenyNotificationText:
            json_['defaultMessageDenyNotificationText'] as core.String?,
        defaultSender: json_['default_sender'] as core.String?,
        description: json_['description'] as core.String?,
        email: json_['email'] as core.String?,
        enableCollaborativeInbox:
            json_['enableCollaborativeInbox'] as core.String?,
        favoriteRepliesOnTop: json_['favoriteRepliesOnTop'] as core.String?,
        includeCustomFooter: json_['includeCustomFooter'] as core.String?,
        includeInGlobalAddressList:
            json_['includeInGlobalAddressList'] as core.String?,
        isArchived: json_['isArchived'] as core.String?,
        kind: json_['kind'] as core.String?,
        maxMessageBytes: json_['maxMessageBytes'] as core.int?,
        membersCanPostAsTheGroup:
            json_['membersCanPostAsTheGroup'] as core.String?,
        messageDisplayFont: json_['messageDisplayFont'] as core.String?,
        messageModerationLevel: json_['messageModerationLevel'] as core.String?,
        name: json_['name'] as core.String?,
        primaryLanguage: json_['primaryLanguage'] as core.String?,
        replyTo: json_['replyTo'] as core.String?,
        sendMessageDenyNotification:
            json_['sendMessageDenyNotification'] as core.String?,
        showInGroupDirectory: json_['showInGroupDirectory'] as core.String?,
        spamModerationLevel: json_['spamModerationLevel'] as core.String?,
        whoCanAdd: json_['whoCanAdd'] as core.String?,
        whoCanAddReferences: json_['whoCanAddReferences'] as core.String?,
        whoCanApproveMembers: json_['whoCanApproveMembers'] as core.String?,
        whoCanApproveMessages: json_['whoCanApproveMessages'] as core.String?,
        whoCanAssignTopics: json_['whoCanAssignTopics'] as core.String?,
        whoCanAssistContent: json_['whoCanAssistContent'] as core.String?,
        whoCanBanUsers: json_['whoCanBanUsers'] as core.String?,
        whoCanContactOwner: json_['whoCanContactOwner'] as core.String?,
        whoCanDeleteAnyPost: json_['whoCanDeleteAnyPost'] as core.String?,
        whoCanDeleteTopics: json_['whoCanDeleteTopics'] as core.String?,
        whoCanDiscoverGroup: json_['whoCanDiscoverGroup'] as core.String?,
        whoCanEnterFreeFormTags:
            json_['whoCanEnterFreeFormTags'] as core.String?,
        whoCanHideAbuse: json_['whoCanHideAbuse'] as core.String?,
        whoCanInvite: json_['whoCanInvite'] as core.String?,
        whoCanJoin: json_['whoCanJoin'] as core.String?,
        whoCanLeaveGroup: json_['whoCanLeaveGroup'] as core.String?,
        whoCanLockTopics: json_['whoCanLockTopics'] as core.String?,
        whoCanMakeTopicsSticky: json_['whoCanMakeTopicsSticky'] as core.String?,
        whoCanMarkDuplicate: json_['whoCanMarkDuplicate'] as core.String?,
        whoCanMarkFavoriteReplyOnAnyTopic:
            json_['whoCanMarkFavoriteReplyOnAnyTopic'] as core.String?,
        whoCanMarkFavoriteReplyOnOwnTopic:
            json_['whoCanMarkFavoriteReplyOnOwnTopic'] as core.String?,
        whoCanMarkNoResponseNeeded:
            json_['whoCanMarkNoResponseNeeded'] as core.String?,
        whoCanModerateContent: json_['whoCanModerateContent'] as core.String?,
        whoCanModerateMembers: json_['whoCanModerateMembers'] as core.String?,
        whoCanModifyMembers: json_['whoCanModifyMembers'] as core.String?,
        whoCanModifyTagsAndCategories:
            json_['whoCanModifyTagsAndCategories'] as core.String?,
        whoCanMoveTopicsIn: json_['whoCanMoveTopicsIn'] as core.String?,
        whoCanMoveTopicsOut: json_['whoCanMoveTopicsOut'] as core.String?,
        whoCanPostAnnouncements:
            json_['whoCanPostAnnouncements'] as core.String?,
        whoCanPostMessage: json_['whoCanPostMessage'] as core.String?,
        whoCanTakeTopics: json_['whoCanTakeTopics'] as core.String?,
        whoCanUnassignTopic: json_['whoCanUnassignTopic'] as core.String?,
        whoCanUnmarkFavoriteReplyOnAnyTopic:
            json_['whoCanUnmarkFavoriteReplyOnAnyTopic'] as core.String?,
        whoCanViewGroup: json_['whoCanViewGroup'] as core.String?,
        whoCanViewMembership: json_['whoCanViewMembership'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowExternalMembers = this.allowExternalMembers;
    final allowGoogleCommunication = this.allowGoogleCommunication;
    final allowWebPosting = this.allowWebPosting;
    final archiveOnly = this.archiveOnly;
    final customFooterText = this.customFooterText;
    final customReplyTo = this.customReplyTo;
    final customRolesEnabledForSettingsToBeMerged =
        this.customRolesEnabledForSettingsToBeMerged;
    final defaultMessageDenyNotificationText =
        this.defaultMessageDenyNotificationText;
    final defaultSender = this.defaultSender;
    final description = this.description;
    final email = this.email;
    final enableCollaborativeInbox = this.enableCollaborativeInbox;
    final favoriteRepliesOnTop = this.favoriteRepliesOnTop;
    final includeCustomFooter = this.includeCustomFooter;
    final includeInGlobalAddressList = this.includeInGlobalAddressList;
    final isArchived = this.isArchived;
    final kind = this.kind;
    final maxMessageBytes = this.maxMessageBytes;
    final membersCanPostAsTheGroup = this.membersCanPostAsTheGroup;
    final messageDisplayFont = this.messageDisplayFont;
    final messageModerationLevel = this.messageModerationLevel;
    final name = this.name;
    final primaryLanguage = this.primaryLanguage;
    final replyTo = this.replyTo;
    final sendMessageDenyNotification = this.sendMessageDenyNotification;
    final showInGroupDirectory = this.showInGroupDirectory;
    final spamModerationLevel = this.spamModerationLevel;
    final whoCanAdd = this.whoCanAdd;
    final whoCanAddReferences = this.whoCanAddReferences;
    final whoCanApproveMembers = this.whoCanApproveMembers;
    final whoCanApproveMessages = this.whoCanApproveMessages;
    final whoCanAssignTopics = this.whoCanAssignTopics;
    final whoCanAssistContent = this.whoCanAssistContent;
    final whoCanBanUsers = this.whoCanBanUsers;
    final whoCanContactOwner = this.whoCanContactOwner;
    final whoCanDeleteAnyPost = this.whoCanDeleteAnyPost;
    final whoCanDeleteTopics = this.whoCanDeleteTopics;
    final whoCanDiscoverGroup = this.whoCanDiscoverGroup;
    final whoCanEnterFreeFormTags = this.whoCanEnterFreeFormTags;
    final whoCanHideAbuse = this.whoCanHideAbuse;
    final whoCanInvite = this.whoCanInvite;
    final whoCanJoin = this.whoCanJoin;
    final whoCanLeaveGroup = this.whoCanLeaveGroup;
    final whoCanLockTopics = this.whoCanLockTopics;
    final whoCanMakeTopicsSticky = this.whoCanMakeTopicsSticky;
    final whoCanMarkDuplicate = this.whoCanMarkDuplicate;
    final whoCanMarkFavoriteReplyOnAnyTopic =
        this.whoCanMarkFavoriteReplyOnAnyTopic;
    final whoCanMarkFavoriteReplyOnOwnTopic =
        this.whoCanMarkFavoriteReplyOnOwnTopic;
    final whoCanMarkNoResponseNeeded = this.whoCanMarkNoResponseNeeded;
    final whoCanModerateContent = this.whoCanModerateContent;
    final whoCanModerateMembers = this.whoCanModerateMembers;
    final whoCanModifyMembers = this.whoCanModifyMembers;
    final whoCanModifyTagsAndCategories = this.whoCanModifyTagsAndCategories;
    final whoCanMoveTopicsIn = this.whoCanMoveTopicsIn;
    final whoCanMoveTopicsOut = this.whoCanMoveTopicsOut;
    final whoCanPostAnnouncements = this.whoCanPostAnnouncements;
    final whoCanPostMessage = this.whoCanPostMessage;
    final whoCanTakeTopics = this.whoCanTakeTopics;
    final whoCanUnassignTopic = this.whoCanUnassignTopic;
    final whoCanUnmarkFavoriteReplyOnAnyTopic =
        this.whoCanUnmarkFavoriteReplyOnAnyTopic;
    final whoCanViewGroup = this.whoCanViewGroup;
    final whoCanViewMembership = this.whoCanViewMembership;
    return {
      'allowExternalMembers': ?allowExternalMembers,
      'allowGoogleCommunication': ?allowGoogleCommunication,
      'allowWebPosting': ?allowWebPosting,
      'archiveOnly': ?archiveOnly,
      'customFooterText': ?customFooterText,
      'customReplyTo': ?customReplyTo,
      'customRolesEnabledForSettingsToBeMerged':
          ?customRolesEnabledForSettingsToBeMerged,
      'defaultMessageDenyNotificationText': ?defaultMessageDenyNotificationText,
      'default_sender': ?defaultSender,
      'description': ?description,
      'email': ?email,
      'enableCollaborativeInbox': ?enableCollaborativeInbox,
      'favoriteRepliesOnTop': ?favoriteRepliesOnTop,
      'includeCustomFooter': ?includeCustomFooter,
      'includeInGlobalAddressList': ?includeInGlobalAddressList,
      'isArchived': ?isArchived,
      'kind': ?kind,
      'maxMessageBytes': ?maxMessageBytes,
      'membersCanPostAsTheGroup': ?membersCanPostAsTheGroup,
      'messageDisplayFont': ?messageDisplayFont,
      'messageModerationLevel': ?messageModerationLevel,
      'name': ?name,
      'primaryLanguage': ?primaryLanguage,
      'replyTo': ?replyTo,
      'sendMessageDenyNotification': ?sendMessageDenyNotification,
      'showInGroupDirectory': ?showInGroupDirectory,
      'spamModerationLevel': ?spamModerationLevel,
      'whoCanAdd': ?whoCanAdd,
      'whoCanAddReferences': ?whoCanAddReferences,
      'whoCanApproveMembers': ?whoCanApproveMembers,
      'whoCanApproveMessages': ?whoCanApproveMessages,
      'whoCanAssignTopics': ?whoCanAssignTopics,
      'whoCanAssistContent': ?whoCanAssistContent,
      'whoCanBanUsers': ?whoCanBanUsers,
      'whoCanContactOwner': ?whoCanContactOwner,
      'whoCanDeleteAnyPost': ?whoCanDeleteAnyPost,
      'whoCanDeleteTopics': ?whoCanDeleteTopics,
      'whoCanDiscoverGroup': ?whoCanDiscoverGroup,
      'whoCanEnterFreeFormTags': ?whoCanEnterFreeFormTags,
      'whoCanHideAbuse': ?whoCanHideAbuse,
      'whoCanInvite': ?whoCanInvite,
      'whoCanJoin': ?whoCanJoin,
      'whoCanLeaveGroup': ?whoCanLeaveGroup,
      'whoCanLockTopics': ?whoCanLockTopics,
      'whoCanMakeTopicsSticky': ?whoCanMakeTopicsSticky,
      'whoCanMarkDuplicate': ?whoCanMarkDuplicate,
      'whoCanMarkFavoriteReplyOnAnyTopic': ?whoCanMarkFavoriteReplyOnAnyTopic,
      'whoCanMarkFavoriteReplyOnOwnTopic': ?whoCanMarkFavoriteReplyOnOwnTopic,
      'whoCanMarkNoResponseNeeded': ?whoCanMarkNoResponseNeeded,
      'whoCanModerateContent': ?whoCanModerateContent,
      'whoCanModerateMembers': ?whoCanModerateMembers,
      'whoCanModifyMembers': ?whoCanModifyMembers,
      'whoCanModifyTagsAndCategories': ?whoCanModifyTagsAndCategories,
      'whoCanMoveTopicsIn': ?whoCanMoveTopicsIn,
      'whoCanMoveTopicsOut': ?whoCanMoveTopicsOut,
      'whoCanPostAnnouncements': ?whoCanPostAnnouncements,
      'whoCanPostMessage': ?whoCanPostMessage,
      'whoCanTakeTopics': ?whoCanTakeTopics,
      'whoCanUnassignTopic': ?whoCanUnassignTopic,
      'whoCanUnmarkFavoriteReplyOnAnyTopic':
          ?whoCanUnmarkFavoriteReplyOnAnyTopic,
      'whoCanViewGroup': ?whoCanViewGroup,
      'whoCanViewMembership': ?whoCanViewMembership,
    };
  }
}
