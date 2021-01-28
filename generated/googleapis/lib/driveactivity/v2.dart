// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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

/// Drive Activity API - v2
///
/// Provides a historical view of activity in Google Drive.
///
/// For more information, see <https://developers.google.com/drive/activity/>
library driveactivity.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  ActivityResourceApi get activity => ActivityResourceApi(_requester);

  DriveActivityApi(http.Client client,
      {core.String rootUrl = 'https://driveactivity.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ActivityResourceApi {
  final commons.ApiRequester _requester;

  ActivityResourceApi(commons.ApiRequester client) : _requester = client;

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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/activity:query';

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
      (data) => QueryDriveActivityResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Information about the action.
class Action {
  /// The actor responsible for this action (or empty if all actors are
  /// responsible).
  Actor actor;

  /// The type and detailed information about the action.
  ActionDetail detail;

  /// The target this action affects (or empty if affecting all targets). This
  /// represents the state of the target immediately after this action occurred.
  Target target;

  /// The action occurred over this time range.
  TimeRange timeRange;

  /// The action occurred at this specific time.
  core.String timestamp;

  Action();

  Action.fromJson(core.Map _json) {
    if (_json.containsKey('actor')) {
      actor =
          Actor.fromJson(_json['actor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('detail')) {
      detail = ActionDetail.fromJson(
          _json['detail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('target')) {
      target = Target.fromJson(
          _json['target'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timeRange')) {
      timeRange = TimeRange.fromJson(
          _json['timeRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actor != null) {
      _json['actor'] = actor.toJson();
    }
    if (detail != null) {
      _json['detail'] = detail.toJson();
    }
    if (target != null) {
      _json['target'] = target.toJson();
    }
    if (timeRange != null) {
      _json['timeRange'] = timeRange.toJson();
    }
    if (timestamp != null) {
      _json['timestamp'] = timestamp;
    }
    return _json;
  }
}

/// Data describing the type and additional information of an action.
class ActionDetail {
  /// A change about comments was made.
  Comment comment;

  /// An object was created.
  Create create;

  /// An object was deleted.
  Delete delete;

  /// A change happened in data leak prevention status.
  DataLeakPreventionChange dlpChange;

  /// An object was edited.
  Edit edit;

  /// An object was moved.
  Move move;

  /// The permission on an object was changed.
  PermissionChange permissionChange;

  /// An object was referenced in an application outside of Drive/Docs.
  ApplicationReference reference;

  /// An object was renamed.
  Rename rename;

  /// A deleted object was restored.
  Restore restore;

  /// Settings were changed.
  SettingsChange settingsChange;

  ActionDetail();

  ActionDetail.fromJson(core.Map _json) {
    if (_json.containsKey('comment')) {
      comment = Comment.fromJson(
          _json['comment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('create')) {
      create = Create.fromJson(
          _json['create'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('delete')) {
      delete = Delete.fromJson(
          _json['delete'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dlpChange')) {
      dlpChange = DataLeakPreventionChange.fromJson(
          _json['dlpChange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('edit')) {
      edit =
          Edit.fromJson(_json['edit'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('move')) {
      move =
          Move.fromJson(_json['move'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('permissionChange')) {
      permissionChange = PermissionChange.fromJson(
          _json['permissionChange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('reference')) {
      reference = ApplicationReference.fromJson(
          _json['reference'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rename')) {
      rename = Rename.fromJson(
          _json['rename'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('restore')) {
      restore = Restore.fromJson(
          _json['restore'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('settingsChange')) {
      settingsChange = SettingsChange.fromJson(
          _json['settingsChange'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (comment != null) {
      _json['comment'] = comment.toJson();
    }
    if (create != null) {
      _json['create'] = create.toJson();
    }
    if (delete != null) {
      _json['delete'] = delete.toJson();
    }
    if (dlpChange != null) {
      _json['dlpChange'] = dlpChange.toJson();
    }
    if (edit != null) {
      _json['edit'] = edit.toJson();
    }
    if (move != null) {
      _json['move'] = move.toJson();
    }
    if (permissionChange != null) {
      _json['permissionChange'] = permissionChange.toJson();
    }
    if (reference != null) {
      _json['reference'] = reference.toJson();
    }
    if (rename != null) {
      _json['rename'] = rename.toJson();
    }
    if (restore != null) {
      _json['restore'] = restore.toJson();
    }
    if (settingsChange != null) {
      _json['settingsChange'] = settingsChange.toJson();
    }
    return _json;
  }
}

/// The actor of a Drive activity.
class Actor {
  /// An administrator.
  Administrator administrator;

  /// An anonymous user.
  AnonymousUser anonymous;

  /// An account acting on behalf of another.
  Impersonation impersonation;

  /// A non-user actor (i.e. system triggered).
  SystemEvent system;

  /// An end user.
  User user;

  Actor();

  Actor.fromJson(core.Map _json) {
    if (_json.containsKey('administrator')) {
      administrator = Administrator.fromJson(
          _json['administrator'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('anonymous')) {
      anonymous = AnonymousUser.fromJson(
          _json['anonymous'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('impersonation')) {
      impersonation = Impersonation.fromJson(
          _json['impersonation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('system')) {
      system = SystemEvent.fromJson(
          _json['system'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('user')) {
      user =
          User.fromJson(_json['user'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (administrator != null) {
      _json['administrator'] = administrator.toJson();
    }
    if (anonymous != null) {
      _json['anonymous'] = anonymous.toJson();
    }
    if (impersonation != null) {
      _json['impersonation'] = impersonation.toJson();
    }
    if (system != null) {
      _json['system'] = system.toJson();
    }
    if (user != null) {
      _json['user'] = user.toJson();
    }
    return _json;
  }
}

/// Empty message representing an administrator.
class Administrator {
  Administrator();

  Administrator.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Empty message representing an anonymous user or indicating the authenticated
/// user should be anonymized.
class AnonymousUser {
  AnonymousUser();

  AnonymousUser.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Represents any user (including a logged out user).
class Anyone {
  Anyone();

  Anyone.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Activity in applications other than Drive.
class ApplicationReference {
  /// The reference type corresponding to this event.
  /// Possible string values are:
  /// - "UNSPECIFIED_REFERENCE_TYPE" : The type is not available.
  /// - "LINK" : The links of one or more Drive items were posted.
  /// - "DISCUSS" : Comments were made regarding a Drive item.
  core.String type;

  ApplicationReference();

  ApplicationReference.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A comment with an assignment.
class Assignment {
  /// The user to whom the comment was assigned.
  User assignedUser;

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
  core.String subtype;

  Assignment();

  Assignment.fromJson(core.Map _json) {
    if (_json.containsKey('assignedUser')) {
      assignedUser = User.fromJson(
          _json['assignedUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('subtype')) {
      subtype = _json['subtype'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (assignedUser != null) {
      _json['assignedUser'] = assignedUser.toJson();
    }
    if (subtype != null) {
      _json['subtype'] = subtype;
    }
    return _json;
  }
}

/// A change about comments on an object.
class Comment {
  /// A change on an assignment.
  Assignment assignment;

  /// Users who are mentioned in this comment.
  core.List<User> mentionedUsers;

  /// A change on a regular posted comment.
  Post post;

  /// A change on a suggestion.
  Suggestion suggestion;

  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey('assignment')) {
      assignment = Assignment.fromJson(
          _json['assignment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mentionedUsers')) {
      mentionedUsers = (_json['mentionedUsers'] as core.List)
          .map<User>((value) =>
              User.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('post')) {
      post =
          Post.fromJson(_json['post'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('suggestion')) {
      suggestion = Suggestion.fromJson(
          _json['suggestion'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (assignment != null) {
      _json['assignment'] = assignment.toJson();
    }
    if (mentionedUsers != null) {
      _json['mentionedUsers'] =
          mentionedUsers.map((value) => value.toJson()).toList();
    }
    if (post != null) {
      _json['post'] = post.toJson();
    }
    if (suggestion != null) {
      _json['suggestion'] = suggestion.toJson();
    }
    return _json;
  }
}

/// How the individual activities are consolidated. A set of activities may be
/// consolidated into one combined activity if they are related in some way,
/// such as one actor performing the same action on multiple targets, or
/// multiple actors performing the same action on a single target. The strategy
/// defines the rules for which activities are related.
class ConsolidationStrategy {
  /// The individual activities are consolidated using the legacy strategy.
  Legacy legacy;

  /// The individual activities are not consolidated.
  NoConsolidation none;

  ConsolidationStrategy();

  ConsolidationStrategy.fromJson(core.Map _json) {
    if (_json.containsKey('legacy')) {
      legacy = Legacy.fromJson(
          _json['legacy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('none')) {
      none = NoConsolidation.fromJson(
          _json['none'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (legacy != null) {
      _json['legacy'] = legacy.toJson();
    }
    if (none != null) {
      _json['none'] = none.toJson();
    }
    return _json;
  }
}

/// An object was created by copying an existing object.
class Copy {
  /// The the original object.
  TargetReference originalObject;

  Copy();

  Copy.fromJson(core.Map _json) {
    if (_json.containsKey('originalObject')) {
      originalObject = TargetReference.fromJson(
          _json['originalObject'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (originalObject != null) {
      _json['originalObject'] = originalObject.toJson();
    }
    return _json;
  }
}

/// An object was created.
class Create {
  /// If present, indicates the object was created by copying an existing Drive
  /// object.
  Copy copy;

  /// If present, indicates the object was newly created (e.g. as a blank
  /// document), not derived from a Drive object or external object.
  New new_;

  /// If present, indicates the object originated externally and was uploaded to
  /// Drive.
  Upload upload;

  Create();

  Create.fromJson(core.Map _json) {
    if (_json.containsKey('copy')) {
      copy =
          Copy.fromJson(_json['copy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('new')) {
      new_ = New.fromJson(_json['new'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('upload')) {
      upload = Upload.fromJson(
          _json['upload'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (copy != null) {
      _json['copy'] = copy.toJson();
    }
    if (new_ != null) {
      _json['new'] = new_.toJson();
    }
    if (upload != null) {
      _json['upload'] = upload.toJson();
    }
    return _json;
  }
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
  core.String type;

  DataLeakPreventionChange();

  DataLeakPreventionChange.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// An object was deleted.
class Delete {
  /// The type of delete action taken.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Deletion type is not available.
  /// - "TRASH" : An object was put into the trash.
  /// - "PERMANENT_DELETE" : An object was deleted permanently.
  core.String type;

  Delete();

  Delete.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A user whose account has since been deleted.
class DeletedUser {
  DeletedUser();

  DeletedUser.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Information about a domain.
class Domain {
  /// An opaque string used to identify this domain.
  core.String legacyId;

  /// The name of the domain, e.g. "google.com".
  core.String name;

  Domain();

  Domain.fromJson(core.Map _json) {
    if (_json.containsKey('legacyId')) {
      legacyId = _json['legacyId'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (legacyId != null) {
      _json['legacyId'] = legacyId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Information about a shared drive.
class Drive {
  /// The resource name of the shared drive. The format is
  /// "COLLECTION_ID/DRIVE_ID". Clients should not assume a specific collection
  /// ID for this resource name.
  core.String name;

  /// The root of this shared drive.
  DriveItem root;

  /// The title of the shared drive.
  core.String title;

  Drive();

  Drive.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('root')) {
      root = DriveItem.fromJson(
          _json['root'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (root != null) {
      _json['root'] = root.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A single Drive activity comprising one or more Actions by one or more Actors
/// on one or more Targets. Some Action groupings occur spontaneously, such as
/// moving an item into a shared folder triggering a permission change. Other
/// groupings of related Actions, such as multiple Actors editing one item or
/// moving multiple files into a new folder, are controlled by the selection of
/// a ConsolidationStrategy in the QueryDriveActivityRequest.
class DriveActivity {
  /// Details on all actions in this activity.
  core.List<Action> actions;

  /// All actor(s) responsible for the activity.
  core.List<Actor> actors;

  /// Key information about the primary action for this activity. This is either
  /// representative, or the most important, of all actions in the activity,
  /// according to the ConsolidationStrategy in the request.
  ActionDetail primaryActionDetail;

  /// All Google Drive objects this activity is about (e.g. file, folder,
  /// drive). This represents the state of the target immediately after the
  /// actions occurred.
  core.List<Target> targets;

  /// The activity occurred over this time range.
  TimeRange timeRange;

  /// The activity occurred at this specific time.
  core.String timestamp;

  DriveActivity();

  DriveActivity.fromJson(core.Map _json) {
    if (_json.containsKey('actions')) {
      actions = (_json['actions'] as core.List)
          .map<Action>((value) =>
              Action.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('actors')) {
      actors = (_json['actors'] as core.List)
          .map<Actor>((value) =>
              Actor.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('primaryActionDetail')) {
      primaryActionDetail = ActionDetail.fromJson(
          _json['primaryActionDetail'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('targets')) {
      targets = (_json['targets'] as core.List)
          .map<Target>((value) =>
              Target.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('timeRange')) {
      timeRange = TimeRange.fromJson(
          _json['timeRange'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actions != null) {
      _json['actions'] = actions.map((value) => value.toJson()).toList();
    }
    if (actors != null) {
      _json['actors'] = actors.map((value) => value.toJson()).toList();
    }
    if (primaryActionDetail != null) {
      _json['primaryActionDetail'] = primaryActionDetail.toJson();
    }
    if (targets != null) {
      _json['targets'] = targets.map((value) => value.toJson()).toList();
    }
    if (timeRange != null) {
      _json['timeRange'] = timeRange.toJson();
    }
    if (timestamp != null) {
      _json['timestamp'] = timestamp;
    }
    return _json;
  }
}

/// A Drive item which is a file.
class DriveFile {
  DriveFile();

  DriveFile.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A Drive item which is a folder.
class DriveFolder {
  /// The type of Drive folder.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The folder type is unknown.
  /// - "MY_DRIVE_ROOT" : The folder is the root of a user's MyDrive.
  /// - "SHARED_DRIVE_ROOT" : The folder is the root of a shared drive.
  /// - "STANDARD_FOLDER" : The folder is a standard, non-root, folder.
  core.String type;

  DriveFolder();

  DriveFolder.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A Drive item, such as a file or folder.
class DriveItem {
  /// The Drive item is a file.
  DriveFile driveFile;

  /// The Drive item is a folder. Includes information about the type of folder.
  DriveFolder driveFolder;

  /// This field is deprecated; please use the `driveFile` field instead.
  File file;

  /// This field is deprecated; please use the `driveFolder` field instead.
  Folder folder;

  /// The MIME type of the Drive item. See
  /// https://developers.google.com/drive/v3/web/mime-types.
  core.String mimeType;

  /// The target Drive item. The format is "items/ITEM_ID".
  core.String name;

  /// Information about the owner of this Drive item.
  Owner owner;

  /// The title of the Drive item.
  core.String title;

  DriveItem();

  DriveItem.fromJson(core.Map _json) {
    if (_json.containsKey('driveFile')) {
      driveFile = DriveFile.fromJson(
          _json['driveFile'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('driveFolder')) {
      driveFolder = DriveFolder.fromJson(
          _json['driveFolder'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('file')) {
      file =
          File.fromJson(_json['file'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('folder')) {
      folder = Folder.fromJson(
          _json['folder'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('owner')) {
      owner =
          Owner.fromJson(_json['owner'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (driveFile != null) {
      _json['driveFile'] = driveFile.toJson();
    }
    if (driveFolder != null) {
      _json['driveFolder'] = driveFolder.toJson();
    }
    if (file != null) {
      _json['file'] = file.toJson();
    }
    if (folder != null) {
      _json['folder'] = folder.toJson();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (owner != null) {
      _json['owner'] = owner.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A lightweight reference to a Drive item, such as a file or folder.
class DriveItemReference {
  /// The Drive item is a file.
  DriveFile driveFile;

  /// The Drive item is a folder. Includes information about the type of folder.
  DriveFolder driveFolder;

  /// This field is deprecated; please use the `driveFile` field instead.
  File file;

  /// This field is deprecated; please use the `driveFolder` field instead.
  Folder folder;

  /// The target Drive item. The format is "items/ITEM_ID".
  core.String name;

  /// The title of the Drive item.
  core.String title;

  DriveItemReference();

  DriveItemReference.fromJson(core.Map _json) {
    if (_json.containsKey('driveFile')) {
      driveFile = DriveFile.fromJson(
          _json['driveFile'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('driveFolder')) {
      driveFolder = DriveFolder.fromJson(
          _json['driveFolder'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('file')) {
      file =
          File.fromJson(_json['file'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('folder')) {
      folder = Folder.fromJson(
          _json['folder'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (driveFile != null) {
      _json['driveFile'] = driveFile.toJson();
    }
    if (driveFolder != null) {
      _json['driveFolder'] = driveFolder.toJson();
    }
    if (file != null) {
      _json['file'] = file.toJson();
    }
    if (folder != null) {
      _json['folder'] = folder.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// A lightweight reference to a shared drive.
class DriveReference {
  /// The resource name of the shared drive. The format is
  /// "COLLECTION_ID/DRIVE_ID". Clients should not assume a specific collection
  /// ID for this resource name.
  core.String name;

  /// The title of the shared drive.
  core.String title;

  DriveReference();

  DriveReference.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// An empty message indicating an object was edited.
class Edit {
  Edit();

  Edit.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// This item is deprecated; please see `DriveFile` instead.
class File {
  File();

  File.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A comment on a file.
class FileComment {
  /// The comment in the discussion thread. This identifier is an opaque string
  /// compatible with the Drive API; see
  /// https://developers.google.com/drive/v3/reference/comments/get
  core.String legacyCommentId;

  /// The discussion thread to which the comment was added. This identifier is
  /// an opaque string compatible with the Drive API and references the first
  /// comment in a discussion; see
  /// https://developers.google.com/drive/v3/reference/comments/get
  core.String legacyDiscussionId;

  /// The link to the discussion thread containing this comment, for example,
  /// "https://docs.google.com/DOCUMENT_ID/edit?disco=THREAD_ID".
  core.String linkToDiscussion;

  /// The Drive item containing this comment.
  DriveItem parent;

  FileComment();

  FileComment.fromJson(core.Map _json) {
    if (_json.containsKey('legacyCommentId')) {
      legacyCommentId = _json['legacyCommentId'] as core.String;
    }
    if (_json.containsKey('legacyDiscussionId')) {
      legacyDiscussionId = _json['legacyDiscussionId'] as core.String;
    }
    if (_json.containsKey('linkToDiscussion')) {
      linkToDiscussion = _json['linkToDiscussion'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = DriveItem.fromJson(
          _json['parent'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (legacyCommentId != null) {
      _json['legacyCommentId'] = legacyCommentId;
    }
    if (legacyDiscussionId != null) {
      _json['legacyDiscussionId'] = legacyDiscussionId;
    }
    if (linkToDiscussion != null) {
      _json['linkToDiscussion'] = linkToDiscussion;
    }
    if (parent != null) {
      _json['parent'] = parent.toJson();
    }
    return _json;
  }
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
  core.String type;

  Folder();

  Folder.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Information about a group.
class Group {
  /// The email address of the group.
  core.String email;

  /// The title of the group.
  core.String title;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (email != null) {
      _json['email'] = email;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Information about an impersonation, where an admin acts on behalf of an end
/// user. Information about the acting admin is not currently available.
class Impersonation {
  /// The impersonated user.
  User impersonatedUser;

  Impersonation();

  Impersonation.fromJson(core.Map _json) {
    if (_json.containsKey('impersonatedUser')) {
      impersonatedUser = User.fromJson(
          _json['impersonatedUser'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (impersonatedUser != null) {
      _json['impersonatedUser'] = impersonatedUser.toJson();
    }
    return _json;
  }
}

/// A known user.
class KnownUser {
  /// True if this is the user making the request.
  core.bool isCurrentUser;

  /// The identifier for this user that can be used with the People API to get
  /// more information. The format is "people/ACCOUNT_ID". See
  /// https://developers.google.com/people/.
  core.String personName;

  KnownUser();

  KnownUser.fromJson(core.Map _json) {
    if (_json.containsKey('isCurrentUser')) {
      isCurrentUser = _json['isCurrentUser'] as core.bool;
    }
    if (_json.containsKey('personName')) {
      personName = _json['personName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (isCurrentUser != null) {
      _json['isCurrentUser'] = isCurrentUser;
    }
    if (personName != null) {
      _json['personName'] = personName;
    }
    return _json;
  }
}

/// A strategy which consolidates activities using the grouping rules from the
/// legacy V1 Activity API. Similar actions occurring within a window of time
/// can be grouped across multiple targets (such as moving a set of files at
/// once) or multiple actors (such as several users editing the same item).
/// Grouping rules for this strategy are specific to each type of action.
class Legacy {
  Legacy();

  Legacy.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// An object was moved.
class Move {
  /// The added parent object(s).
  core.List<TargetReference> addedParents;

  /// The removed parent object(s).
  core.List<TargetReference> removedParents;

  Move();

  Move.fromJson(core.Map _json) {
    if (_json.containsKey('addedParents')) {
      addedParents = (_json['addedParents'] as core.List)
          .map<TargetReference>((value) => TargetReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('removedParents')) {
      removedParents = (_json['removedParents'] as core.List)
          .map<TargetReference>((value) => TargetReference.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addedParents != null) {
      _json['addedParents'] =
          addedParents.map((value) => value.toJson()).toList();
    }
    if (removedParents != null) {
      _json['removedParents'] =
          removedParents.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An object was created from scratch.
class New {
  New();

  New.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A strategy which does no consolidation of individual activities.
class NoConsolidation {
  NoConsolidation();

  NoConsolidation.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Information about the owner of a Drive item.
class Owner {
  /// The domain of the Drive item owner.
  Domain domain;

  /// The drive that owns the item.
  DriveReference drive;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDriveReference teamDrive;

  /// The user that owns the Drive item.
  User user;

  Owner();

  Owner.fromJson(core.Map _json) {
    if (_json.containsKey('domain')) {
      domain = Domain.fromJson(
          _json['domain'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('drive')) {
      drive = DriveReference.fromJson(
          _json['drive'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('teamDrive')) {
      teamDrive = TeamDriveReference.fromJson(
          _json['teamDrive'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('user')) {
      user =
          User.fromJson(_json['user'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domain != null) {
      _json['domain'] = domain.toJson();
    }
    if (drive != null) {
      _json['drive'] = drive.toJson();
    }
    if (teamDrive != null) {
      _json['teamDrive'] = teamDrive.toJson();
    }
    if (user != null) {
      _json['user'] = user.toJson();
    }
    return _json;
  }
}

/// The permission setting of an object.
class Permission {
  /// If true, the item can be discovered (e.g. in the user's "Shared with me"
  /// collection) without needing a link to the item.
  core.bool allowDiscovery;

  /// If set, this permission applies to anyone, even logged out users.
  Anyone anyone;

  /// The domain to whom this permission applies.
  Domain domain;

  /// The group to whom this permission applies.
  Group group;

  /// Indicates the Google Drive permissions role. The role determines a user's
  /// ability to read, write, and comment on items.
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
  core.String role;

  /// The user to whom this permission applies.
  User user;

  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey('allowDiscovery')) {
      allowDiscovery = _json['allowDiscovery'] as core.bool;
    }
    if (_json.containsKey('anyone')) {
      anyone = Anyone.fromJson(
          _json['anyone'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('domain')) {
      domain = Domain.fromJson(
          _json['domain'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('group')) {
      group =
          Group.fromJson(_json['group'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
    if (_json.containsKey('user')) {
      user =
          User.fromJson(_json['user'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (allowDiscovery != null) {
      _json['allowDiscovery'] = allowDiscovery;
    }
    if (anyone != null) {
      _json['anyone'] = anyone.toJson();
    }
    if (domain != null) {
      _json['domain'] = domain.toJson();
    }
    if (group != null) {
      _json['group'] = group.toJson();
    }
    if (role != null) {
      _json['role'] = role;
    }
    if (user != null) {
      _json['user'] = user.toJson();
    }
    return _json;
  }
}

/// A change of the permission setting on an item.
class PermissionChange {
  /// The set of permissions added by this change.
  core.List<Permission> addedPermissions;

  /// The set of permissions removed by this change.
  core.List<Permission> removedPermissions;

  PermissionChange();

  PermissionChange.fromJson(core.Map _json) {
    if (_json.containsKey('addedPermissions')) {
      addedPermissions = (_json['addedPermissions'] as core.List)
          .map<Permission>((value) =>
              Permission.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('removedPermissions')) {
      removedPermissions = (_json['removedPermissions'] as core.List)
          .map<Permission>((value) =>
              Permission.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addedPermissions != null) {
      _json['addedPermissions'] =
          addedPermissions.map((value) => value.toJson()).toList();
    }
    if (removedPermissions != null) {
      _json['removedPermissions'] =
          removedPermissions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
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
  core.String subtype;

  Post();

  Post.fromJson(core.Map _json) {
    if (_json.containsKey('subtype')) {
      subtype = _json['subtype'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (subtype != null) {
      _json['subtype'] = subtype;
    }
    return _json;
  }
}

/// The request message for querying Drive activity.
class QueryDriveActivityRequest {
  /// Return activities for this Drive folder and all children and descendants.
  /// The format is "items/ITEM_ID".
  core.String ancestorName;

  /// Details on how to consolidate related actions that make up the activity.
  /// If not set, then related actions are not consolidated.
  ConsolidationStrategy consolidationStrategy;

  /// The filtering for items returned from this query request. The format of
  /// the filter string is a sequence of expressions, joined by an optional
  /// "AND", where each expression is of the form "field operator value".
  /// Supported fields: - time: Uses numerical operators on date values either
  /// in terms of milliseconds since Jan 1, 1970 or in RFC 3339 format.
  /// Examples: - time > 1452409200000 AND time <= 1492812924310 - time >=
  /// "2016-01-10T01:02:03-05:00" - detail.action_detail_case: Uses the "has"
  /// operator (:) and either a singular value or a list of allowed action types
  /// enclosed in parentheses. Examples: - detail.action_detail_case: RENAME -
  /// detail.action_detail_case:(CREATE EDIT) - -detail.action_detail_case:MOVE
  core.String filter;

  /// Return activities for this Drive item. The format is "items/ITEM_ID".
  core.String itemName;

  /// The miminum number of activities desired in the response; the server will
  /// attempt to return at least this quanitity. The server may also return
  /// fewer activities if it has a partial response ready before the request
  /// times out. If not set, a default value is used.
  core.int pageSize;

  /// The token identifying which page of results to return. Set this to the
  /// next_page_token value returned from a previous query to obtain the
  /// following page of results. If not set, the first page of results will be
  /// returned.
  core.String pageToken;

  QueryDriveActivityRequest();

  QueryDriveActivityRequest.fromJson(core.Map _json) {
    if (_json.containsKey('ancestorName')) {
      ancestorName = _json['ancestorName'] as core.String;
    }
    if (_json.containsKey('consolidationStrategy')) {
      consolidationStrategy = ConsolidationStrategy.fromJson(
          _json['consolidationStrategy']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('itemName')) {
      itemName = _json['itemName'] as core.String;
    }
    if (_json.containsKey('pageSize')) {
      pageSize = _json['pageSize'] as core.int;
    }
    if (_json.containsKey('pageToken')) {
      pageToken = _json['pageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (ancestorName != null) {
      _json['ancestorName'] = ancestorName;
    }
    if (consolidationStrategy != null) {
      _json['consolidationStrategy'] = consolidationStrategy.toJson();
    }
    if (filter != null) {
      _json['filter'] = filter;
    }
    if (itemName != null) {
      _json['itemName'] = itemName;
    }
    if (pageSize != null) {
      _json['pageSize'] = pageSize;
    }
    if (pageToken != null) {
      _json['pageToken'] = pageToken;
    }
    return _json;
  }
}

/// Response message for querying Drive activity.
class QueryDriveActivityResponse {
  /// List of activity requested.
  core.List<DriveActivity> activities;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  QueryDriveActivityResponse();

  QueryDriveActivityResponse.fromJson(core.Map _json) {
    if (_json.containsKey('activities')) {
      activities = (_json['activities'] as core.List)
          .map<DriveActivity>((value) => DriveActivity.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (activities != null) {
      _json['activities'] = activities.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// An object was renamed.
class Rename {
  /// The new title of the drive object.
  core.String newTitle;

  /// The previous title of the drive object.
  core.String oldTitle;

  Rename();

  Rename.fromJson(core.Map _json) {
    if (_json.containsKey('newTitle')) {
      newTitle = _json['newTitle'] as core.String;
    }
    if (_json.containsKey('oldTitle')) {
      oldTitle = _json['oldTitle'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (newTitle != null) {
      _json['newTitle'] = newTitle;
    }
    if (oldTitle != null) {
      _json['oldTitle'] = oldTitle;
    }
    return _json;
  }
}

/// A deleted object was restored.
class Restore {
  /// The type of restore action taken.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not available.
  /// - "UNTRASH" : An object was restored from the trash.
  core.String type;

  Restore();

  Restore.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
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
  core.String feature;

  /// The restriction in place after the change.
  /// Possible string values are:
  /// - "RESTRICTION_UNSPECIFIED" : The type of restriction is not available.
  /// - "UNRESTRICTED" : The feature is available without restriction.
  /// - "FULLY_RESTRICTED" : The use of this feature is fully restricted.
  core.String newRestriction;

  RestrictionChange();

  RestrictionChange.fromJson(core.Map _json) {
    if (_json.containsKey('feature')) {
      feature = _json['feature'] as core.String;
    }
    if (_json.containsKey('newRestriction')) {
      newRestriction = _json['newRestriction'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (feature != null) {
      _json['feature'] = feature;
    }
    if (newRestriction != null) {
      _json['newRestriction'] = newRestriction;
    }
    return _json;
  }
}

/// Information about settings changes.
class SettingsChange {
  /// The set of changes made to restrictions.
  core.List<RestrictionChange> restrictionChanges;

  SettingsChange();

  SettingsChange.fromJson(core.Map _json) {
    if (_json.containsKey('restrictionChanges')) {
      restrictionChanges = (_json['restrictionChanges'] as core.List)
          .map<RestrictionChange>((value) => RestrictionChange.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (restrictionChanges != null) {
      _json['restrictionChanges'] =
          restrictionChanges.map((value) => value.toJson()).toList();
    }
    return _json;
  }
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
  core.String subtype;

  Suggestion();

  Suggestion.fromJson(core.Map _json) {
    if (_json.containsKey('subtype')) {
      subtype = _json['subtype'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (subtype != null) {
      _json['subtype'] = subtype;
    }
    return _json;
  }
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
  core.String type;

  SystemEvent();

  SystemEvent.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Information about the target of activity.
class Target {
  /// The target is a shared drive.
  Drive drive;

  /// The target is a Drive item.
  DriveItem driveItem;

  /// The target is a comment on a Drive file.
  FileComment fileComment;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDrive teamDrive;

  Target();

  Target.fromJson(core.Map _json) {
    if (_json.containsKey('drive')) {
      drive =
          Drive.fromJson(_json['drive'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('driveItem')) {
      driveItem = DriveItem.fromJson(
          _json['driveItem'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fileComment')) {
      fileComment = FileComment.fromJson(
          _json['fileComment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('teamDrive')) {
      teamDrive = TeamDrive.fromJson(
          _json['teamDrive'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (drive != null) {
      _json['drive'] = drive.toJson();
    }
    if (driveItem != null) {
      _json['driveItem'] = driveItem.toJson();
    }
    if (fileComment != null) {
      _json['fileComment'] = fileComment.toJson();
    }
    if (teamDrive != null) {
      _json['teamDrive'] = teamDrive.toJson();
    }
    return _json;
  }
}

/// A lightweight reference to the target of activity.
class TargetReference {
  /// The target is a shared drive.
  DriveReference drive;

  /// The target is a Drive item.
  DriveItemReference driveItem;

  /// This field is deprecated; please use the `drive` field instead.
  TeamDriveReference teamDrive;

  TargetReference();

  TargetReference.fromJson(core.Map _json) {
    if (_json.containsKey('drive')) {
      drive = DriveReference.fromJson(
          _json['drive'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('driveItem')) {
      driveItem = DriveItemReference.fromJson(
          _json['driveItem'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('teamDrive')) {
      teamDrive = TeamDriveReference.fromJson(
          _json['teamDrive'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (drive != null) {
      _json['drive'] = drive.toJson();
    }
    if (driveItem != null) {
      _json['driveItem'] = driveItem.toJson();
    }
    if (teamDrive != null) {
      _json['teamDrive'] = teamDrive.toJson();
    }
    return _json;
  }
}

/// This item is deprecated; please see `Drive` instead.
class TeamDrive {
  /// This field is deprecated; please see `Drive.name` instead.
  core.String name;

  /// This field is deprecated; please see `Drive.root` instead.
  DriveItem root;

  /// This field is deprecated; please see `Drive.title` instead.
  core.String title;

  TeamDrive();

  TeamDrive.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('root')) {
      root = DriveItem.fromJson(
          _json['root'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (root != null) {
      _json['root'] = root.toJson();
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// This item is deprecated; please see `DriveReference` instead.
class TeamDriveReference {
  /// This field is deprecated; please see `DriveReference.name` instead.
  core.String name;

  /// This field is deprecated; please see `DriveReference.title` instead.
  core.String title;

  TeamDriveReference();

  TeamDriveReference.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Information about time ranges.
class TimeRange {
  /// The end of the time range.
  core.String endTime;

  /// The start of the time range.
  core.String startTime;

  TimeRange();

  TimeRange.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// A user about whom nothing is currently known.
class UnknownUser {
  UnknownUser();

  UnknownUser.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// An object was uploaded into Drive.
class Upload {
  Upload();

  Upload.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Information about an end user.
class User {
  /// A user whose account has since been deleted.
  DeletedUser deletedUser;

  /// A known user.
  KnownUser knownUser;

  /// A user about whom nothing is currently known.
  UnknownUser unknownUser;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('deletedUser')) {
      deletedUser = DeletedUser.fromJson(
          _json['deletedUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('knownUser')) {
      knownUser = KnownUser.fromJson(
          _json['knownUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('unknownUser')) {
      unknownUser = UnknownUser.fromJson(
          _json['unknownUser'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deletedUser != null) {
      _json['deletedUser'] = deletedUser.toJson();
    }
    if (knownUser != null) {
      _json['knownUser'] = knownUser.toJson();
    }
    if (unknownUser != null) {
      _json['unknownUser'] = unknownUser.toJson();
    }
    return _json;
  }
}
