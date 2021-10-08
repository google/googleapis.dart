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

/// Drive Activity API - v2
///
/// Provides a historical view of activity in Google Drive.
///
/// For more information, see <https://developers.google.com/drive/activity/>
///
/// Create an instance of [DriveActivityApi] to access these resources:
///
/// - [ActivityResource]
library driveactivity.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides a historical view of activity in Google Drive.
class DriveActivityApi {
  /// View and add to the activity record of files in your Google Drive
  static const driveActivityScope =
      'https://www.googleapis.com/auth/drive.activity';

  /// View the activity record of files in your Google Drive
  static const driveActivityReadonlyScope =
      'https://www.googleapis.com/auth/drive.activity.readonly';

  final commons.ApiRequester _requester;

  ActivityResource get activity => ActivityResource(_requester);

  DriveActivityApi(http.Client client,
      {core.String rootUrl = 'https://driveactivity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ActivityResource {
  final commons.ApiRequester _requester;

  ActivityResource(commons.ApiRequester client) : _requester = client;

  /// Query past activity in Google Drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryDriveActivityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryDriveActivityResponse> query(
    QueryDriveActivityRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/activity:query';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return QueryDriveActivityResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Information about the action.
class Action {
  /// The actor responsible for this action (or empty if all actors are
  /// responsible).
  Actor? actor;

  /// The type and detailed information about the action.
  ActionDetail? detail;

  /// The target this action affects (or empty if affecting all targets).
  ///
  /// This represents the state of the target immediately after this action
  /// occurred.
  Target? target;

  /// The action occurred over this time range.
  TimeRange? timeRange;

  /// The action occurred at this specific time.
  core.String? timestamp;

  Action({
    this.actor,
    this.detail,
    this.target,
    this.timeRange,
    this.timestamp,
  });

  Action.fromJson(core.Map _json)
      : this(
          actor: _json.containsKey('actor')
              ? Actor.fromJson(
                  _json['actor'] as core.Map<core.String, core.dynamic>)
              : null,
          detail: _json.containsKey('detail')
              ? ActionDetail.fromJson(
                  _json['detail'] as core.Map<core.String, core.dynamic>)
              : null,
          target: _json.containsKey('target')
              ? Target.fromJson(
                  _json['target'] as core.Map<core.String, core.dynamic>)
              : null,
          timeRange: _json.containsKey('timeRange')
              ? TimeRange.fromJson(
                  _json['timeRange'] as core.Map<core.String, core.dynamic>)
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actor != null) 'actor': actor!,
        if (detail != null) 'detail': detail!,
        if (target != null) 'target': target!,
        if (timeRange != null) 'timeRange': timeRange!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// Data describing the type and additional information of an action.
class ActionDetail {
  /// A change about comments was made.
  Comment? comment;

  /// An object was created.
  Create? create;

  /// An object was deleted.
  Delete? delete;

  /// A change happened in data leak prevention status.
  DataLeakPreventionChange? dlpChange;

  /// An object was edited.
  Edit? edit;

  /// An object was moved.
  Move? move;

  /// The permission on an object was changed.
  PermissionChange? permissionChange;

  /// An object was referenced in an application outside of Drive/Docs.
  ApplicationReference? reference;

  /// An object was renamed.
  Rename? rename;

  /// A deleted object was restored.
  Restore? restore;

  /// Settings were changed.
  SettingsChange? settingsChange;

  ActionDetail({
    this.comment,
    this.create,
    this.delete,
    this.dlpChange,
    this.edit,
    this.move,
    this.permissionChange,
    this.reference,
    this.rename,
    this.restore,
    this.settingsChange,
  });

  ActionDetail.fromJson(core.Map _json)
      : this(
          comment: _json.containsKey('comment')
              ? Comment.fromJson(
                  _json['comment'] as core.Map<core.String, core.dynamic>)
              : null,
          create: _json.containsKey('create')
              ? Create.fromJson(
                  _json['create'] as core.Map<core.String, core.dynamic>)
              : null,
          delete: _json.containsKey('delete')
              ? Delete.fromJson(
                  _json['delete'] as core.Map<core.String, core.dynamic>)
              : null,
          dlpChange: _json.containsKey('dlpChange')
              ? DataLeakPreventionChange.fromJson(
                  _json['dlpChange'] as core.Map<core.String, core.dynamic>)
              : null,
          edit: _json.containsKey('edit')
              ? Edit.fromJson(
                  _json['edit'] as core.Map<core.String, core.dynamic>)
              : null,
          move: _json.containsKey('move')
              ? Move.fromJson(
                  _json['move'] as core.Map<core.String, core.dynamic>)
              : null,
          permissionChange: _json.containsKey('permissionChange')
              ? PermissionChange.fromJson(_json['permissionChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reference: _json.containsKey('reference')
              ? ApplicationReference.fromJson(
                  _json['reference'] as core.Map<core.String, core.dynamic>)
              : null,
          rename: _json.containsKey('rename')
              ? Rename.fromJson(
                  _json['rename'] as core.Map<core.String, core.dynamic>)
              : null,
          restore: _json.containsKey('restore')
              ? Restore.fromJson(
                  _json['restore'] as core.Map<core.String, core.dynamic>)
              : null,
          settingsChange: _json.containsKey('settingsChange')
              ? SettingsChange.fromJson(_json['settingsChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comment != null) 'comment': comment!,
        if (create != null) 'create': create!,
        if (delete != null) 'delete': delete!,
        if (dlpChange != null) 'dlpChange': dlpChange!,
        if (edit != null) 'edit': edit!,
        if (move != null) 'move': move!,
        if (permissionChange != null) 'permissionChange': permissionChange!,
        if (reference != null) 'reference': reference!,
        if (rename != null) 'rename': rename!,
        if (restore != null) 'restore': restore!,
        if (settingsChange != null) 'settingsChange': settingsChange!,
      };
}

/// The actor of a Drive activity.
class Actor {
  /// An administrator.
  Administrator? administrator;

  /// An anonymous user.
  AnonymousUser? anonymous;

  /// An account acting on behalf of another.
  Impersonation? impersonation;

  /// A non-user actor (i.e. system triggered).
  SystemEvent? system;

  /// An end user.
  User? user;

  Actor({
    this.administrator,
    this.anonymous,
    this.impersonation,
    this.system,
    this.user,
  });

  Actor.fromJson(core.Map _json)
      : this(
          administrator: _json.containsKey('administrator')
              ? Administrator.fromJson(
                  _json['administrator'] as core.Map<core.String, core.dynamic>)
              : null,
          anonymous: _json.containsKey('anonymous')
              ? AnonymousUser.fromJson(
                  _json['anonymous'] as core.Map<core.String, core.dynamic>)
              : null,
          impersonation: _json.containsKey('impersonation')
              ? Impersonation.fromJson(
                  _json['impersonation'] as core.Map<core.String, core.dynamic>)
              : null,
          system: _json.containsKey('system')
              ? SystemEvent.fromJson(
                  _json['system'] as core.Map<core.String, core.dynamic>)
              : null,
          user: _json.containsKey('user')
              ? User.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (administrator != null) 'administrator': administrator!,
        if (anonymous != null) 'anonymous': anonymous!,
        if (impersonation != null) 'impersonation': impersonation!,
        if (system != null) 'system': system!,
        if (user != null) 'user': user!,
      };
}

/// Empty message representing an administrator.
typedef Administrator = $Empty;

/// Empty message representing an anonymous user or indicating the authenticated
/// user should be anonymized.
typedef AnonymousUser = $Empty;

/// Represents any user (including a logged out user).
typedef Anyone = $Empty;

/// Activity in applications other than Drive.
class ApplicationReference {
  /// The reference type corresponding to this event.
  /// Possible string values are:
  /// - "UNSPECIFIED_REFERENCE_TYPE" : The type is not available.
  /// - "LINK" : The links of one or more Drive items were posted.
  /// - "DISCUSS" : Comments were made regarding a Drive item.
  core.String? type;

  ApplicationReference({
    this.type,
  });

  ApplicationReference.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A comment with an assignment.
class Assignment {
  /// The user to whom the comment was assigned.
  User? assignedUser;

  /// The sub-type of this event.
  /// Possible string values are:
  /// - "SUBTYPE_UNSPECIFIED" : Subtype not available.
  /// - "ADDED" : An assignment was added.
  /// - "DELETED" : An assignment was deleted.
  /// - "REPLY_ADDED" : An assignment reply was added.
  /// - "REPLY_DELETED" : An assignment reply was deleted.
  /// - "RESOLVED" : An assignment was resolved.
  /// - "REOPENED" : A resolved assignment was reopened.
  /// - "REASSIGNED" : An assignment was reassigned.
  core.String? subtype;

  Assignment({
    this.assignedUser,
    this.subtype,
  });

  Assignment.fromJson(core.Map _json)
      : this(
          assignedUser: _json.containsKey('assignedUser')
              ? User.fromJson(
                  _json['assignedUser'] as core.Map<core.String, core.dynamic>)
              : null,
          subtype: _json.containsKey('subtype')
              ? _json['subtype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedUser != null) 'assignedUser': assignedUser!,
        if (subtype != null) 'subtype': subtype!,
      };
}

/// A change about comments on an object.
class Comment {
  /// A change on an assignment.
  Assignment? assignment;

  /// Users who are mentioned in this comment.
  core.List<User>? mentionedUsers;

  /// A change on a regular posted comment.
  Post? post;

  /// A change on a suggestion.
  Suggestion? suggestion;

  Comment({
    this.assignment,
    this.mentionedUsers,
    this.post,
    this.suggestion,
  });

  Comment.fromJson(core.Map _json)
      : this(
          assignment: _json.containsKey('assignment')
              ? Assignment.fromJson(
                  _json['assignment'] as core.Map<core.String, core.dynamic>)
              : null,
          mentionedUsers: _json.containsKey('mentionedUsers')
              ? (_json['mentionedUsers'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          post: _json.containsKey('post')
              ? Post.fromJson(
                  _json['post'] as core.Map<core.String, core.dynamic>)
              : null,
          suggestion: _json.containsKey('suggestion')
              ? Suggestion.fromJson(
                  _json['suggestion'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignment != null) 'assignment': assignment!,
        if (mentionedUsers != null) 'mentionedUsers': mentionedUsers!,
        if (post != null) 'post': post!,
        if (suggestion != null) 'suggestion': suggestion!,
      };
}

/// How the individual activities are consolidated.
///
/// A set of activities may be consolidated into one combined activity if they
/// are related in some way, such as one actor performing the same action on
/// multiple targets, or multiple actors performing the same action on a single
/// target. The strategy defines the rules for which activities are related.
class ConsolidationStrategy {
  /// The individual activities are consolidated using the legacy strategy.
  Legacy? legacy;

  /// The individual activities are not consolidated.
  NoConsolidation? none;

  ConsolidationStrategy({
    this.legacy,
    this.none,
  });

  ConsolidationStrategy.fromJson(core.Map _json)
      : this(
          legacy: _json.containsKey('legacy')
              ? Legacy.fromJson(
                  _json['legacy'] as core.Map<core.String, core.dynamic>)
              : null,
          none: _json.containsKey('none')
              ? NoConsolidation.fromJson(
                  _json['none'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacy != null) 'legacy': legacy!,
        if (none != null) 'none': none!,
      };
}

/// An object was created by copying an existing object.
class Copy {
  /// The original object.
  TargetReference? originalObject;

  Copy({
    this.originalObject,
  });

  Copy.fromJson(core.Map _json)
      : this(
          originalObject: _json.containsKey('originalObject')
              ? TargetReference.fromJson(_json['originalObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// An object was created.
class Create {
  /// If present, indicates the object was created by copying an existing Drive
  /// object.
  Copy? copy;

  /// If present, indicates the object was newly created (e.g. as a blank
  /// document), not derived from a Drive object or external object.
  New? new_;

  /// If present, indicates the object originated externally and was uploaded to
  /// Drive.
  Upload? upload;

  Create({
    this.copy,
    this.new_,
    this.upload,
  });

  Create.fromJson(core.Map _json)
      : this(
          copy: _json.containsKey('copy')
              ? Copy.fromJson(
                  _json['copy'] as core.Map<core.String, core.dynamic>)
              : null,
          new_: _json.containsKey('new')
              ? New.fromJson(
                  _json['new'] as core.Map<core.String, core.dynamic>)
              : null,
          upload: _json.containsKey('upload')
              ? Upload.fromJson(
                  _json['upload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copy != null) 'copy': copy!,
        if (new_ != null) 'new': new_!,
        if (upload != null) 'upload': upload!,
      };
}

/// A change in the object's data leak prevention status.
class DataLeakPreventionChange {
  /// The type of Data Leak Prevention (DLP) change.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An update to the DLP state that is neither FLAGGED
  /// or CLEARED.
  /// - "FLAGGED" : Document has been flagged as containing sensitive content.
  /// - "CLEARED" : Document is no longer flagged as containing sensitive
  /// content.
  core.String? type;

  DataLeakPreventionChange({
    this.type,
  });

  DataLeakPreventionChange.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// An object was deleted.
class Delete {
  /// The type of delete action taken.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Deletion type is not available.
  /// - "TRASH" : An object was put into the trash.
  /// - "PERMANENT_DELETE" : An object was deleted permanently.
  core.String? type;

  Delete({
    this.type,
  });

  Delete.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A user whose account has since been deleted.
typedef DeletedUser = $Empty;

/// Information about a domain.
class Domain {
  /// An opaque string used to identify this domain.
  core.String? legacyId;

  /// The name of the domain, e.g. `google.com`.
  core.String? name;

  Domain({
    this.legacyId,
    this.name,
  });

  Domain.fromJson(core.Map _json)
      : this(
          legacyId: _json.containsKey('legacyId')
              ? _json['legacyId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacyId != null) 'legacyId': legacyId!,
        if (name != null) 'name': name!,
      };
}

/// Information about a shared drive.
class Drive {
  /// The resource name of the shared drive.
  ///
  /// The format is `COLLECTION_ID/DRIVE_ID`. Clients should not assume a
  /// specific collection ID for this resource name.
  core.String? name;

  /// The root of this shared drive.
  DriveItem? root;

  /// The title of the shared drive.
  core.String? title;

  Drive({
    this.name,
    this.root,
    this.title,
  });

  Drive.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          root: _json.containsKey('root')
              ? DriveItem.fromJson(
                  _json['root'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (root != null) 'root': root!,
        if (title != null) 'title': title!,
      };
}

/// A single Drive activity comprising one or more Actions by one or more Actors
/// on one or more Targets.
///
/// Some Action groupings occur spontaneously, such as moving an item into a
/// shared folder triggering a permission change. Other groupings of related
/// Actions, such as multiple Actors editing one item or moving multiple files
/// into a new folder, are controlled by the selection of a
/// ConsolidationStrategy in the QueryDriveActivityRequest.
class DriveActivity {
  /// Details on all actions in this activity.
  core.List<Action>? actions;

  /// All actor(s) responsible for the activity.
  core.List<Actor>? actors;

  /// Key information about the primary action for this activity.
  ///
  /// This is either representative, or the most important, of all actions in
  /// the activity, according to the ConsolidationStrategy in the request.
  ActionDetail? primaryActionDetail;

  /// All Google Drive objects this activity is about (e.g. file, folder,
  /// drive).
  ///
  /// This represents the state of the target immediately after the actions
  /// occurred.
  core.List<Target>? targets;

  /// The activity occurred over this time range.
  TimeRange? timeRange;

  /// The activity occurred at this specific time.
  core.String? timestamp;

  DriveActivity({
    this.actions,
    this.actors,
    this.primaryActionDetail,
    this.targets,
    this.timeRange,
    this.timestamp,
  });

  DriveActivity.fromJson(core.Map _json)
      : this(
          actions: _json.containsKey('actions')
              ? (_json['actions'] as core.List)
                  .map((value) => Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          actors: _json.containsKey('actors')
              ? (_json['actors'] as core.List)
                  .map((value) => Actor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primaryActionDetail: _json.containsKey('primaryActionDetail')
              ? ActionDetail.fromJson(_json['primaryActionDetail']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targets: _json.containsKey('targets')
              ? (_json['targets'] as core.List)
                  .map((value) => Target.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeRange: _json.containsKey('timeRange')
              ? TimeRange.fromJson(
                  _json['timeRange'] as core.Map<core.String, core.dynamic>)
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (actors != null) 'actors': actors!,
        if (primaryActionDetail != null)
          'primaryActionDetail': primaryActionDetail!,
        if (targets != null) 'targets': targets!,
        if (timeRange != null) 'timeRange': timeRange!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// A Drive item which is a file.
typedef DriveFile = $Empty;

/// A Drive item which is a folder.
class DriveFolder {
  /// The type of Drive folder.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The folder type is unknown.
  /// - "MY_DRIVE_ROOT" : The folder is the root of a user's MyDrive.
  /// - "SHARED_DRIVE_ROOT" : The folder is the root of a shared drive.
  /// - "STANDARD_FOLDER" : The folder is a standard, non-root, folder.
  core.String? type;

  DriveFolder({
    this.type,
  });

  DriveFolder.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// A Drive item, such as a file or folder.
class DriveItem {
  /// The Drive item is a file.
  DriveFile? driveFile;

  /// The Drive item is a folder.
  ///
  /// Includes information about the type of folder.
  DriveFolder? driveFolder;

  /// This field is deprecated; please use the `driveFile` field instead.
  File? file;

  /// This field is deprecated; please use the `driveFolder` field instead.
  Folder? folder;

  /// The MIME type of the Drive item.
  ///
  /// See https://developers.google.com/drive/v3/web/mime-types.
  core.String? mimeType;

  /// The target Drive item.
  ///
  /// The format is `items/ITEM_ID`.
  core.String? name;

  /// Information about the owner of this Drive item.
  Owner? owner;

  /// The title of the Drive item.
  core.String? title;

  DriveItem({
    this.driveFile,
    this.driveFolder,
    this.file,
    this.folder,
    this.mimeType,
    this.name,
    this.owner,
    this.title,
  });

  DriveItem.fromJson(core.Map _json)
      : this(
          driveFile: _json.containsKey('driveFile')
              ? DriveFile.fromJson(
                  _json['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          driveFolder: _json.containsKey('driveFolder')
              ? DriveFolder.fromJson(
                  _json['driveFolder'] as core.Map<core.String, core.dynamic>)
              : null,
          file: _json.containsKey('file')
              ? File.fromJson(
                  _json['file'] as core.Map<core.String, core.dynamic>)
              : null,
          folder: _json.containsKey('folder')
              ? Folder.fromJson(
                  _json['folder'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          owner: _json.containsKey('owner')
              ? Owner.fromJson(
                  _json['owner'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (driveFolder != null) 'driveFolder': driveFolder!,
        if (file != null) 'file': file!,
        if (folder != null) 'folder': folder!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (name != null) 'name': name!,
        if (owner != null) 'owner': owner!,
        if (title != null) 'title': title!,
      };
}

/// A lightweight reference to a Drive item, such as a file or folder.
class DriveItemReference {
  /// The Drive item is a file.
  DriveFile? driveFile;

  /// The Drive item is a folder.
  ///
  /// Includes information about the type of folder.
  DriveFolder? driveFolder;

  /// This field is deprecated; please use the `driveFile` field instead.
  File? file;

  /// This field is deprecated; please use the `driveFolder` field instead.
  Folder? folder;

  /// The target Drive item.
  ///
  /// The format is `items/ITEM_ID`.
  core.String? name;

  /// The title of the Drive item.
  core.String? title;

  DriveItemReference({
    this.driveFile,
    this.driveFolder,
    this.file,
    this.folder,
    this.name,
    this.title,
  });

  DriveItemReference.fromJson(core.Map _json)
      : this(
          driveFile: _json.containsKey('driveFile')
              ? DriveFile.fromJson(
                  _json['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          driveFolder: _json.containsKey('driveFolder')
              ? DriveFolder.fromJson(
                  _json['driveFolder'] as core.Map<core.String, core.dynamic>)
              : null,
          file: _json.containsKey('file')
              ? File.fromJson(
                  _json['file'] as core.Map<core.String, core.dynamic>)
              : null,
          folder: _json.containsKey('folder')
              ? Folder.fromJson(
                  _json['folder'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (driveFolder != null) 'driveFolder': driveFolder!,
        if (file != null) 'file': file!,
        if (folder != null) 'folder': folder!,
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// A lightweight reference to a shared drive.
class DriveReference {
  /// The resource name of the shared drive.
  ///
  /// The format is `COLLECTION_ID/DRIVE_ID`. Clients should not assume a
  /// specific collection ID for this resource name.
  core.String? name;

  /// The title of the shared drive.
  core.String? title;

  DriveReference({
    this.name,
    this.title,
  });

  DriveReference.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// An empty message indicating an object was edited.
typedef Edit = $Empty;

/// This item is deprecated; please see `DriveFile` instead.
typedef File = $Empty;

/// A comment on a file.
class FileComment {
  /// The comment in the discussion thread.
  ///
  /// This identifier is an opaque string compatible with the Drive API; see
  /// https://developers.google.com/drive/v3/reference/comments/get
  core.String? legacyCommentId;

  /// The discussion thread to which the comment was added.
  ///
  /// This identifier is an opaque string compatible with the Drive API and
  /// references the first comment in a discussion; see
  /// https://developers.google.com/drive/v3/reference/comments/get
  core.String? legacyDiscussionId;

  /// The link to the discussion thread containing this comment, for example,
  /// `https://docs.google.com/DOCUMENT_ID/edit?disco=THREAD_ID`.
  core.String? linkToDiscussion;

  /// The Drive item containing this comment.
  DriveItem? parent;

  FileComment({
    this.legacyCommentId,
    this.legacyDiscussionId,
    this.linkToDiscussion,
    this.parent,
  });

  FileComment.fromJson(core.Map _json)
      : this(
          legacyCommentId: _json.containsKey('legacyCommentId')
              ? _json['legacyCommentId'] as core.String
              : null,
          legacyDiscussionId: _json.containsKey('legacyDiscussionId')
              ? _json['legacyDiscussionId'] as core.String
              : null,
          linkToDiscussion: _json.containsKey('linkToDiscussion')
              ? _json['linkToDiscussion'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? DriveItem.fromJson(
                  _json['parent'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacyCommentId != null) 'legacyCommentId': legacyCommentId!,
        if (legacyDiscussionId != null)
          'legacyDiscussionId': legacyDiscussionId!,
        if (linkToDiscussion != null) 'linkToDiscussion': linkToDiscussion!,
        if (parent != null) 'parent': parent!,
      };
}

/// This item is deprecated; please see `DriveFolder` instead.
class Folder {
  /// This field is deprecated; please see `DriveFolder.type` instead.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : This item is deprecated; please see
  /// `DriveFolder.Type` instead.
  /// - "MY_DRIVE_ROOT" : This item is deprecated; please see `DriveFolder.Type`
  /// instead.
  /// - "TEAM_DRIVE_ROOT" : This item is deprecated; please see
  /// `DriveFolder.Type` instead.
  /// - "STANDARD_FOLDER" : This item is deprecated; please see
  /// `DriveFolder.Type` instead.
  core.String? type;

  Folder({
    this.type,
  });

  Folder.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Information about a group.
class Group {
  /// The email address of the group.
  core.String? email;

  /// The title of the group.
  core.String? title;

  Group({
    this.email,
    this.title,
  });

  Group.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (title != null) 'title': title!,
      };
}

/// Information about an impersonation, where an admin acts on behalf of an end
/// user.
///
/// Information about the acting admin is not currently available.
class Impersonation {
  /// The impersonated user.
  User? impersonatedUser;

  Impersonation({
    this.impersonatedUser,
  });

  Impersonation.fromJson(core.Map _json)
      : this(
          impersonatedUser: _json.containsKey('impersonatedUser')
              ? User.fromJson(_json['impersonatedUser']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (impersonatedUser != null) 'impersonatedUser': impersonatedUser!,
      };
}

/// A known user.
class KnownUser {
  /// True if this is the user making the request.
  core.bool? isCurrentUser;

  /// The identifier for this user that can be used with the People API to get
  /// more information.
  ///
  /// The format is `people/ACCOUNT_ID`. See
  /// https://developers.google.com/people/.
  core.String? personName;

  KnownUser({
    this.isCurrentUser,
    this.personName,
  });

  KnownUser.fromJson(core.Map _json)
      : this(
          isCurrentUser: _json.containsKey('isCurrentUser')
              ? _json['isCurrentUser'] as core.bool
              : null,
          personName: _json.containsKey('personName')
              ? _json['personName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isCurrentUser != null) 'isCurrentUser': isCurrentUser!,
        if (personName != null) 'personName': personName!,
      };
}

/// A strategy which consolidates activities using the grouping rules from the
/// legacy V1 Activity API.
///
/// Similar actions occurring within a window of time can be grouped across
/// multiple targets (such as moving a set of files at once) or multiple actors
/// (such as several users editing the same item). Grouping rules for this
/// strategy are specific to each type of action.
typedef Legacy = $Empty;

/// An object was moved.
class Move {
  /// The added parent object(s).
  core.List<TargetReference>? addedParents;

  /// The removed parent object(s).
  core.List<TargetReference>? removedParents;

  Move({
    this.addedParents,
    this.removedParents,
  });

  Move.fromJson(core.Map _json)
      : this(
          addedParents: _json.containsKey('addedParents')
              ? (_json['addedParents'] as core.List)
                  .map((value) => TargetReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          removedParents: _json.containsKey('removedParents')
              ? (_json['removedParents'] as core.List)
                  .map((value) => TargetReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedParents != null) 'addedParents': addedParents!,
        if (removedParents != null) 'removedParents': removedParents!,
      };
}

/// An object was created from scratch.
typedef New = $Empty;

/// A strategy which does no consolidation of individual activities.
typedef NoConsolidation = $Empty;

/// Information about the owner of a Drive item.
class Owner {
  /// The domain of the Drive item owner.
  Domain? domain;

  /// The drive that owns the item.
  DriveReference? drive;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDriveReference? teamDrive;

  /// The user that owns the Drive item.
  User? user;

  Owner({
    this.domain,
    this.drive,
    this.teamDrive,
    this.user,
  });

  Owner.fromJson(core.Map _json)
      : this(
          domain: _json.containsKey('domain')
              ? Domain.fromJson(
                  _json['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          drive: _json.containsKey('drive')
              ? DriveReference.fromJson(
                  _json['drive'] as core.Map<core.String, core.dynamic>)
              : null,
          teamDrive: _json.containsKey('teamDrive')
              ? TeamDriveReference.fromJson(
                  _json['teamDrive'] as core.Map<core.String, core.dynamic>)
              : null,
          user: _json.containsKey('user')
              ? User.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (drive != null) 'drive': drive!,
        if (teamDrive != null) 'teamDrive': teamDrive!,
        if (user != null) 'user': user!,
      };
}

/// The permission setting of an object.
class Permission {
  /// If true, the item can be discovered (e.g. in the user's "Shared with me"
  /// collection) without needing a link to the item.
  core.bool? allowDiscovery;

  /// If set, this permission applies to anyone, even logged out users.
  Anyone? anyone;

  /// The domain to whom this permission applies.
  Domain? domain;

  /// The group to whom this permission applies.
  Group? group;

  /// Indicates the
  /// [Google Drive permissions role](https://developers.google.com/drive/web/manage-sharing#roles).
  ///
  /// The role determines a user's ability to read, write, and comment on items.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : The role is not available.
  /// - "OWNER" : A role granting full access.
  /// - "ORGANIZER" : A role granting the ability to manage people and settings.
  /// - "FILE_ORGANIZER" : A role granting the ability to contribute and manage
  /// content.
  /// - "EDITOR" : A role granting the ability to contribute content. This role
  /// is sometimes also known as "writer".
  /// - "COMMENTER" : A role granting the ability to view and comment on
  /// content.
  /// - "VIEWER" : A role granting the ability to view content. This role is
  /// sometimes also known as "reader".
  /// - "PUBLISHED_VIEWER" : A role granting the ability to view content only
  /// after it has been published to the web. This role is sometimes also known
  /// as "published reader". See https://support.google.com/sites/answer/6372880
  /// for more information.
  core.String? role;

  /// The user to whom this permission applies.
  User? user;

  Permission({
    this.allowDiscovery,
    this.anyone,
    this.domain,
    this.group,
    this.role,
    this.user,
  });

  Permission.fromJson(core.Map _json)
      : this(
          allowDiscovery: _json.containsKey('allowDiscovery')
              ? _json['allowDiscovery'] as core.bool
              : null,
          anyone: _json.containsKey('anyone')
              ? Anyone.fromJson(
                  _json['anyone'] as core.Map<core.String, core.dynamic>)
              : null,
          domain: _json.containsKey('domain')
              ? Domain.fromJson(
                  _json['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          group: _json.containsKey('group')
              ? Group.fromJson(
                  _json['group'] as core.Map<core.String, core.dynamic>)
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          user: _json.containsKey('user')
              ? User.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowDiscovery != null) 'allowDiscovery': allowDiscovery!,
        if (anyone != null) 'anyone': anyone!,
        if (domain != null) 'domain': domain!,
        if (group != null) 'group': group!,
        if (role != null) 'role': role!,
        if (user != null) 'user': user!,
      };
}

/// A change of the permission setting on an item.
class PermissionChange {
  /// The set of permissions added by this change.
  core.List<Permission>? addedPermissions;

  /// The set of permissions removed by this change.
  core.List<Permission>? removedPermissions;

  PermissionChange({
    this.addedPermissions,
    this.removedPermissions,
  });

  PermissionChange.fromJson(core.Map _json)
      : this(
          addedPermissions: _json.containsKey('addedPermissions')
              ? (_json['addedPermissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          removedPermissions: _json.containsKey('removedPermissions')
              ? (_json['removedPermissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedPermissions != null) 'addedPermissions': addedPermissions!,
        if (removedPermissions != null)
          'removedPermissions': removedPermissions!,
      };
}

/// A regular posted comment.
class Post {
  /// The sub-type of this event.
  /// Possible string values are:
  /// - "SUBTYPE_UNSPECIFIED" : Subtype not available.
  /// - "ADDED" : A post was added.
  /// - "DELETED" : A post was deleted.
  /// - "REPLY_ADDED" : A reply was added.
  /// - "REPLY_DELETED" : A reply was deleted.
  /// - "RESOLVED" : A posted comment was resolved.
  /// - "REOPENED" : A posted comment was reopened.
  core.String? subtype;

  Post({
    this.subtype,
  });

  Post.fromJson(core.Map _json)
      : this(
          subtype: _json.containsKey('subtype')
              ? _json['subtype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subtype != null) 'subtype': subtype!,
      };
}

/// The request message for querying Drive activity.
class QueryDriveActivityRequest {
  /// Return activities for this Drive folder and all children and descendants.
  ///
  /// The format is `items/ITEM_ID`.
  core.String? ancestorName;

  /// Details on how to consolidate related actions that make up the activity.
  ///
  /// If not set, then related actions are not consolidated.
  ConsolidationStrategy? consolidationStrategy;

  /// The filtering for items returned from this query request.
  ///
  /// The format of the filter string is a sequence of expressions, joined by an
  /// optional "AND", where each expression is of the form "field operator
  /// value". Supported fields: - `time`: Uses numerical operators on date
  /// values either in terms of milliseconds since Jan 1, 1970 or in RFC 3339
  /// format. Examples: - `time > 1452409200000 AND time <= 1492812924310` -
  /// `time >= "2016-01-10T01:02:03-05:00"` - `detail.action_detail_case`: Uses
  /// the "has" operator (:) and either a singular value or a list of allowed
  /// action types enclosed in parentheses. Examples: -
  /// `detail.action_detail_case: RENAME` - `detail.action_detail_case:(CREATE
  /// EDIT)` - `-detail.action_detail_case:MOVE`
  core.String? filter;

  /// Return activities for this Drive item.
  ///
  /// The format is `items/ITEM_ID`.
  core.String? itemName;

  /// The miminum number of activities desired in the response; the server will
  /// attempt to return at least this quanitity.
  ///
  /// The server may also return fewer activities if it has a partial response
  /// ready before the request times out. If not set, a default value is used.
  core.int? pageSize;

  /// The token identifying which page of results to return.
  ///
  /// Set this to the next_page_token value returned from a previous query to
  /// obtain the following page of results. If not set, the first page of
  /// results will be returned.
  core.String? pageToken;

  QueryDriveActivityRequest({
    this.ancestorName,
    this.consolidationStrategy,
    this.filter,
    this.itemName,
    this.pageSize,
    this.pageToken,
  });

  QueryDriveActivityRequest.fromJson(core.Map _json)
      : this(
          ancestorName: _json.containsKey('ancestorName')
              ? _json['ancestorName'] as core.String
              : null,
          consolidationStrategy: _json.containsKey('consolidationStrategy')
              ? ConsolidationStrategy.fromJson(_json['consolidationStrategy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          itemName: _json.containsKey('itemName')
              ? _json['itemName'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestorName != null) 'ancestorName': ancestorName!,
        if (consolidationStrategy != null)
          'consolidationStrategy': consolidationStrategy!,
        if (filter != null) 'filter': filter!,
        if (itemName != null) 'itemName': itemName!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Response message for querying Drive activity.
class QueryDriveActivityResponse {
  /// List of activity requested.
  core.List<DriveActivity>? activities;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  QueryDriveActivityResponse({
    this.activities,
    this.nextPageToken,
  });

  QueryDriveActivityResponse.fromJson(core.Map _json)
      : this(
          activities: _json.containsKey('activities')
              ? (_json['activities'] as core.List)
                  .map((value) => DriveActivity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activities != null) 'activities': activities!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// An object was renamed.
class Rename {
  /// The new title of the drive object.
  core.String? newTitle;

  /// The previous title of the drive object.
  core.String? oldTitle;

  Rename({
    this.newTitle,
    this.oldTitle,
  });

  Rename.fromJson(core.Map _json)
      : this(
          newTitle: _json.containsKey('newTitle')
              ? _json['newTitle'] as core.String
              : null,
          oldTitle: _json.containsKey('oldTitle')
              ? _json['oldTitle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newTitle != null) 'newTitle': newTitle!,
        if (oldTitle != null) 'oldTitle': oldTitle!,
      };
}

/// A deleted object was restored.
class Restore {
  /// The type of restore action taken.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not available.
  /// - "UNTRASH" : An object was restored from the trash.
  core.String? type;

  Restore({
    this.type,
  });

  Restore.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Information about restriction policy changes to a feature.
class RestrictionChange {
  /// The feature which had a change in restriction policy.
  /// Possible string values are:
  /// - "FEATURE_UNSPECIFIED" : The feature which changed restriction settings
  /// was not available.
  /// - "SHARING_OUTSIDE_DOMAIN" : When restricted, this prevents items from
  /// being shared outside the domain.
  /// - "DIRECT_SHARING" : When restricted, this prevents direct sharing of
  /// individual items.
  /// - "ITEM_DUPLICATION" : When restricted, this prevents actions like copy,
  /// download, and print that might result in uncontrolled duplicates of items.
  /// - "DRIVE_FILE_STREAM" : When restricted, this prevents use of Drive File
  /// Stream.
  core.String? feature;

  /// The restriction in place after the change.
  /// Possible string values are:
  /// - "RESTRICTION_UNSPECIFIED" : The type of restriction is not available.
  /// - "UNRESTRICTED" : The feature is available without restriction.
  /// - "FULLY_RESTRICTED" : The use of this feature is fully restricted.
  core.String? newRestriction;

  RestrictionChange({
    this.feature,
    this.newRestriction,
  });

  RestrictionChange.fromJson(core.Map _json)
      : this(
          feature: _json.containsKey('feature')
              ? _json['feature'] as core.String
              : null,
          newRestriction: _json.containsKey('newRestriction')
              ? _json['newRestriction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feature != null) 'feature': feature!,
        if (newRestriction != null) 'newRestriction': newRestriction!,
      };
}

/// Information about settings changes.
class SettingsChange {
  /// The set of changes made to restrictions.
  core.List<RestrictionChange>? restrictionChanges;

  SettingsChange({
    this.restrictionChanges,
  });

  SettingsChange.fromJson(core.Map _json)
      : this(
          restrictionChanges: _json.containsKey('restrictionChanges')
              ? (_json['restrictionChanges'] as core.List)
                  .map((value) => RestrictionChange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restrictionChanges != null)
          'restrictionChanges': restrictionChanges!,
      };
}

/// A suggestion.
class Suggestion {
  /// The sub-type of this event.
  /// Possible string values are:
  /// - "SUBTYPE_UNSPECIFIED" : Subtype not available.
  /// - "ADDED" : A suggestion was added.
  /// - "DELETED" : A suggestion was deleted.
  /// - "REPLY_ADDED" : A suggestion reply was added.
  /// - "REPLY_DELETED" : A suggestion reply was deleted.
  /// - "ACCEPTED" : A suggestion was accepted.
  /// - "REJECTED" : A suggestion was rejected.
  /// - "ACCEPT_DELETED" : An accepted suggestion was deleted.
  /// - "REJECT_DELETED" : A rejected suggestion was deleted.
  core.String? subtype;

  Suggestion({
    this.subtype,
  });

  Suggestion.fromJson(core.Map _json)
      : this(
          subtype: _json.containsKey('subtype')
              ? _json['subtype'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subtype != null) 'subtype': subtype!,
      };
}

/// Event triggered by system operations instead of end users.
class SystemEvent {
  /// The type of the system event that may triggered activity.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The event type is unspecified.
  /// - "USER_DELETION" : The event is a consequence of a user account being
  /// deleted.
  /// - "TRASH_AUTO_PURGE" : The event is due to the system automatically
  /// purging trash.
  core.String? type;

  SystemEvent({
    this.type,
  });

  SystemEvent.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Information about the target of activity.
class Target {
  /// The target is a shared drive.
  Drive? drive;

  /// The target is a Drive item.
  DriveItem? driveItem;

  /// The target is a comment on a Drive file.
  FileComment? fileComment;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDrive? teamDrive;

  Target({
    this.drive,
    this.driveItem,
    this.fileComment,
    this.teamDrive,
  });

  Target.fromJson(core.Map _json)
      : this(
          drive: _json.containsKey('drive')
              ? Drive.fromJson(
                  _json['drive'] as core.Map<core.String, core.dynamic>)
              : null,
          driveItem: _json.containsKey('driveItem')
              ? DriveItem.fromJson(
                  _json['driveItem'] as core.Map<core.String, core.dynamic>)
              : null,
          fileComment: _json.containsKey('fileComment')
              ? FileComment.fromJson(
                  _json['fileComment'] as core.Map<core.String, core.dynamic>)
              : null,
          teamDrive: _json.containsKey('teamDrive')
              ? TeamDrive.fromJson(
                  _json['teamDrive'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drive != null) 'drive': drive!,
        if (driveItem != null) 'driveItem': driveItem!,
        if (fileComment != null) 'fileComment': fileComment!,
        if (teamDrive != null) 'teamDrive': teamDrive!,
      };
}

/// A lightweight reference to the target of activity.
class TargetReference {
  /// The target is a shared drive.
  DriveReference? drive;

  /// The target is a Drive item.
  DriveItemReference? driveItem;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDriveReference? teamDrive;

  TargetReference({
    this.drive,
    this.driveItem,
    this.teamDrive,
  });

  TargetReference.fromJson(core.Map _json)
      : this(
          drive: _json.containsKey('drive')
              ? DriveReference.fromJson(
                  _json['drive'] as core.Map<core.String, core.dynamic>)
              : null,
          driveItem: _json.containsKey('driveItem')
              ? DriveItemReference.fromJson(
                  _json['driveItem'] as core.Map<core.String, core.dynamic>)
              : null,
          teamDrive: _json.containsKey('teamDrive')
              ? TeamDriveReference.fromJson(
                  _json['teamDrive'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drive != null) 'drive': drive!,
        if (driveItem != null) 'driveItem': driveItem!,
        if (teamDrive != null) 'teamDrive': teamDrive!,
      };
}

/// This item is deprecated; please see `Drive` instead.
class TeamDrive {
  /// This field is deprecated; please see `Drive.name` instead.
  core.String? name;

  /// This field is deprecated; please see `Drive.root` instead.
  DriveItem? root;

  /// This field is deprecated; please see `Drive.title` instead.
  core.String? title;

  TeamDrive({
    this.name,
    this.root,
    this.title,
  });

  TeamDrive.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          root: _json.containsKey('root')
              ? DriveItem.fromJson(
                  _json['root'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (root != null) 'root': root!,
        if (title != null) 'title': title!,
      };
}

/// This item is deprecated; please see `DriveReference` instead.
class TeamDriveReference {
  /// This field is deprecated; please see `DriveReference.name` instead.
  core.String? name;

  /// This field is deprecated; please see `DriveReference.title` instead.
  core.String? title;

  TeamDriveReference({
    this.name,
    this.title,
  });

  TeamDriveReference.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// Information about time ranges.
class TimeRange {
  /// The end of the time range.
  core.String? endTime;

  /// The start of the time range.
  core.String? startTime;

  TimeRange({
    this.endTime,
    this.startTime,
  });

  TimeRange.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A user about whom nothing is currently known.
typedef UnknownUser = $Empty;

/// An object was uploaded into Drive.
typedef Upload = $Empty;

/// Information about an end user.
class User {
  /// A user whose account has since been deleted.
  DeletedUser? deletedUser;

  /// A known user.
  KnownUser? knownUser;

  /// A user about whom nothing is currently known.
  UnknownUser? unknownUser;

  User({
    this.deletedUser,
    this.knownUser,
    this.unknownUser,
  });

  User.fromJson(core.Map _json)
      : this(
          deletedUser: _json.containsKey('deletedUser')
              ? DeletedUser.fromJson(
                  _json['deletedUser'] as core.Map<core.String, core.dynamic>)
              : null,
          knownUser: _json.containsKey('knownUser')
              ? KnownUser.fromJson(
                  _json['knownUser'] as core.Map<core.String, core.dynamic>)
              : null,
          unknownUser: _json.containsKey('unknownUser')
              ? UnknownUser.fromJson(
                  _json['unknownUser'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletedUser != null) 'deletedUser': deletedUser!,
        if (knownUser != null) 'knownUser': knownUser!,
        if (unknownUser != null) 'unknownUser': unknownUser!,
      };
}
