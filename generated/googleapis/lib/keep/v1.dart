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

/// Google Keep API - v1
///
/// The Google Keep API is used in an enterprise environment to manage Google
/// Keep content and resolve issues identified by cloud security software.
///
/// For more information, see <https://developers.google.com/keep/api>
///
/// Create an instance of [KeepApi] to access these resources:
///
/// - [MediaResource]
/// - [NotesResource]
///   - [NotesPermissionsResource]
library keep.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// The Google Keep API is used in an enterprise environment to manage Google
/// Keep content and resolve issues identified by cloud security software.
class KeepApi {
  /// See, edit, create and permanently delete all your Google Keep data
  static const keepScope = 'https://www.googleapis.com/auth/keep';

  /// View all your Google Keep data
  static const keepReadonlyScope =
      'https://www.googleapis.com/auth/keep.readonly';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);
  NotesResource get notes => NotesResource(_requester);

  KeepApi(http.Client client,
      {core.String rootUrl = 'https://keep.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Gets an attachment.
  ///
  /// To download attachment media via REST requires the alt=media query
  /// parameter. Returns a 400 bad request error if attachment media is not
  /// available in the requested MIME type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the attachment.
  /// Value must have pattern `^notes/\[^/\]+/attachments/\[^/\]+$`.
  ///
  /// [mimeType] - The IANA MIME type format requested. The requested MIME type
  /// must be one specified in the attachment.mime_type. Required when
  /// downloading attachment media and ignored otherwise.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Attachment] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String name, {
    core.String? mimeType,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mimeType != null) 'mimeType': [mimeType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Attachment.fromJson(
          response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }
}

class NotesResource {
  final commons.ApiRequester _requester;

  NotesPermissionsResource get permissions =>
      NotesPermissionsResource(_requester);

  NotesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Note].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Note> create(
    Note request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/notes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a note.
  ///
  /// Caller must have the `OWNER` role on the note to delete. Deleting a note
  /// removes the resource immediately and cannot be undone. Any collaborators
  /// will lose access to the note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the note to delete.
  /// Value must have pattern `^notes/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern `^notes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Note].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Note> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notes.
  ///
  /// Every list call returns a page of results with `page_size` as the upper
  /// bound of returned items. A `page_size` of zero allows the server to choose
  /// the upper bound. The ListNotesResponse contains at most `page_size`
  /// entries. If there are more things left to list, it provides a
  /// `next_page_token` value. (Page tokens are opaque values.) To get the next
  /// page of results, copy the result's `next_page_token` into the next
  /// request's `page_token`. Repeat until the `next_page_token` returned with a
  /// page of results is empty. ListNotes return consistent results in the face
  /// of concurrent changes, or signals that it cannot with an ABORTED error.
  ///
  /// Request parameters:
  ///
  /// [filter] - Filter for list results. If no filter is supplied, the
  /// `trashed` filter is applied by default. Valid fields to filter by are:
  /// `create_time`, `update_time`, `trash_time`, and `trashed`. Filter syntax
  /// follows the [Google AIP filtering spec](https://aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return.
  ///
  /// [pageToken] - The previous page's `next_page_token` field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotesResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class NotesPermissionsResource {
  final commons.ApiRequester _requester;

  NotesPermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates one or more permissions on the note.
  ///
  /// Only permissions with the `WRITER` role may be created. If adding any
  /// permission fails, then the entire request fails and no changes are made.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource shared by all Permissions being created.
  /// Format: `notes/{note}` If this is set, the parent field in the
  /// CreatePermission messages must either be empty or match this field.
  /// Value must have pattern `^notes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreatePermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreatePermissionsResponse> batchCreate(
    BatchCreatePermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/permissions:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreatePermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes one or more permissions on the note.
  ///
  /// The specified entities will immediately lose access. A permission with the
  /// `OWNER` role can't be removed. If removing a permission fails, then the
  /// entire request fails and no changes are made. Returns a 400 bad request
  /// error if a specified permission does not exist on the note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource shared by all permissions being deleted.
  /// Format: `notes/{note}` If this is set, the parent of all of the
  /// permissions specified in the DeletePermissionRequest messages must match
  /// this field.
  /// Value must have pattern `^notes/\[^/\]+$`.
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
  async.Future<Empty> batchDelete(
    BatchDeletePermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/permissions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An attachment to a note.
class Attachment {
  /// The MIME types (IANA media types) in which the attachment is available.
  core.List<core.String>? mimeType;

  /// The resource name;
  core.String? name;

  Attachment({
    this.mimeType,
    this.name,
  });

  Attachment.fromJson(core.Map json_)
      : this(
          mimeType: json_.containsKey('mimeType')
              ? (json_['mimeType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (name != null) 'name': name!,
      };
}

/// The request to add one or more permissions on the note.
///
/// Currently, only the `WRITER` role may be specified. If adding a permission
/// fails, then the entire request fails and no changes are made.
class BatchCreatePermissionsRequest {
  /// The request message specifying the resources to create.
  core.List<CreatePermissionRequest>? requests;

  BatchCreatePermissionsRequest({
    this.requests,
  });

  BatchCreatePermissionsRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => CreatePermissionRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// The response for creating permissions on a note.
class BatchCreatePermissionsResponse {
  /// Permissions created.
  core.List<Permission>? permissions;

  BatchCreatePermissionsResponse({
    this.permissions,
  });

  BatchCreatePermissionsResponse.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// The request to remove one or more permissions from a note.
///
/// A permission with the `OWNER` role can't be removed. If removing a
/// permission fails, then the entire request fails and no changes are made.
/// Returns a 400 bad request error if a specified permission does not exist on
/// the note.
class BatchDeletePermissionsRequest {
  /// The names of the permissions to delete.
  ///
  /// Format: `notes/{note}/permissions/{permission}`
  ///
  /// Required.
  core.List<core.String>? names;

  BatchDeletePermissionsRequest({
    this.names,
  });

  BatchDeletePermissionsRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// The request to add a single permission on the note.
class CreatePermissionRequest {
  /// The parent note where this permission will be created.
  ///
  /// Format: `notes/{note}`
  ///
  /// Required.
  core.String? parent;

  /// The permission to create.
  ///
  /// One of Permission.email, User.email or Group.email must be supplied.
  ///
  /// Required.
  Permission? permission;

  CreatePermissionRequest({
    this.parent,
    this.permission,
  });

  CreatePermissionRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          permission: json_.containsKey('permission')
              ? Permission.fromJson(
                  json_['permission'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (permission != null) 'permission': permission!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Describes a single Google Family.
typedef Family = $Empty;

/// Describes a single Group.
class Group {
  /// The group email.
  core.String? email;

  Group({
    this.email,
  });

  Group.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// The list of items for a single list note.
class ListContent {
  /// The items in the list.
  ///
  /// The number of items must be less than 1,000.
  core.List<ListItem>? listItems;

  ListContent({
    this.listItems,
  });

  ListContent.fromJson(core.Map json_)
      : this(
          listItems: json_.containsKey('listItems')
              ? (json_['listItems'] as core.List)
                  .map((value) => ListItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listItems != null) 'listItems': listItems!,
      };
}

/// A single list item in a note's list.
class ListItem {
  /// Whether this item has been checked off or not.
  core.bool? checked;

  /// If set, list of list items nested under this list item.
  ///
  /// Only one level of nesting is allowed.
  core.List<ListItem>? childListItems;

  /// The text of this item.
  ///
  /// Length must be less than 1,000 characters.
  TextContent? text;

  ListItem({
    this.checked,
    this.childListItems,
    this.text,
  });

  ListItem.fromJson(core.Map json_)
      : this(
          checked: json_.containsKey('checked')
              ? json_['checked'] as core.bool
              : null,
          childListItems: json_.containsKey('childListItems')
              ? (json_['childListItems'] as core.List)
                  .map((value) => ListItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          text: json_.containsKey('text')
              ? TextContent.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checked != null) 'checked': checked!,
        if (childListItems != null) 'childListItems': childListItems!,
        if (text != null) 'text': text!,
      };
}

/// The response when listing a page of notes.
class ListNotesResponse {
  /// Next page's `page_token` field.
  core.String? nextPageToken;

  /// A page of notes.
  core.List<Note>? notes;

  ListNotesResponse({
    this.nextPageToken,
    this.notes,
  });

  ListNotesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          notes: json_.containsKey('notes')
              ? (json_['notes'] as core.List)
                  .map((value) => Note.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (notes != null) 'notes': notes!,
      };
}

/// A single note.
class Note {
  /// The attachments attached to this note.
  ///
  /// Output only.
  core.List<Attachment>? attachments;

  /// The body of the note.
  Section? body;

  /// When this note was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of this note.
  ///
  /// See general note on identifiers in KeepService.
  ///
  /// Output only.
  core.String? name;

  /// The list of permissions set on the note.
  ///
  /// Contains at least one entry for the note owner.
  ///
  /// Output only.
  core.List<Permission>? permissions;

  /// The title of the note.
  ///
  /// Length must be less than 1,000 characters.
  core.String? title;

  /// When this note was trashed.
  ///
  /// If `trashed`, the note is eventually deleted. If the note is not trashed,
  /// this field is not set (and the trashed field is `false`).
  ///
  /// Output only.
  core.String? trashTime;

  /// `true` if this note has been trashed.
  ///
  /// If trashed, the note is eventually deleted.
  ///
  /// Output only.
  core.bool? trashed;

  /// When this note was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Note({
    this.attachments,
    this.body,
    this.createTime,
    this.name,
    this.permissions,
    this.title,
    this.trashTime,
    this.trashed,
    this.updateTime,
  });

  Note.fromJson(core.Map json_)
      : this(
          attachments: json_.containsKey('attachments')
              ? (json_['attachments'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          body: json_.containsKey('body')
              ? Section.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          trashTime: json_.containsKey('trashTime')
              ? json_['trashTime'] as core.String
              : null,
          trashed: json_.containsKey('trashed')
              ? json_['trashed'] as core.bool
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachments != null) 'attachments': attachments!,
        if (body != null) 'body': body!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (permissions != null) 'permissions': permissions!,
        if (title != null) 'title': title!,
        if (trashTime != null) 'trashTime': trashTime!,
        if (trashed != null) 'trashed': trashed!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single permission on the note.
///
/// Associates a `member` with a `role`.
class Permission {
  /// Whether this member has been deleted.
  ///
  /// If the member is recovered, this value is set to false and the recovered
  /// member retains the role on the note.
  ///
  /// Output only.
  core.bool? deleted;

  /// The email associated with the member.
  ///
  /// If set on create, the `email` field in the `User` or `Group` message must
  /// either be empty or match this field. On read, may be unset if the member
  /// does not have an associated email.
  core.String? email;

  /// The Google Family to which this role applies.
  ///
  /// Output only.
  Family? family;

  /// The group to which this role applies.
  ///
  /// Output only.
  Group? group;

  /// The resource name.
  ///
  /// Output only.
  core.String? name;

  /// The role granted by this permission.
  ///
  /// The role determines the entity’s ability to read, write, and share notes.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : An undefined role.
  /// - "OWNER" : A role granting full access. This role cannot be added or
  /// removed. Defined by the creator of the note.
  /// - "WRITER" : A role granting the ability to contribute content and modify
  /// note permissions.
  core.String? role;

  /// The user to whom this role applies.
  ///
  /// Output only.
  User? user;

  Permission({
    this.deleted,
    this.email,
    this.family,
    this.group,
    this.name,
    this.role,
    this.user,
  });

  Permission.fromJson(core.Map json_)
      : this(
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          family: json_.containsKey('family')
              ? Family.fromJson(
                  json_['family'] as core.Map<core.String, core.dynamic>)
              : null,
          group: json_.containsKey('group')
              ? Group.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          user: json_.containsKey('user')
              ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
        if (email != null) 'email': email!,
        if (family != null) 'family': family!,
        if (group != null) 'group': group!,
        if (name != null) 'name': name!,
        if (role != null) 'role': role!,
        if (user != null) 'user': user!,
      };
}

/// The content of the note.
class Section {
  /// Used if this section's content is a list.
  ListContent? list;

  /// Used if this section's content is a block of text.
  ///
  /// The length of the text content must be less than 20,000 characters.
  TextContent? text;

  Section({
    this.list,
    this.text,
  });

  Section.fromJson(core.Map json_)
      : this(
          list: json_.containsKey('list')
              ? ListContent.fromJson(
                  json_['list'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextContent.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (list != null) 'list': list!,
        if (text != null) 'text': text!,
      };
}

/// The block of text for a single text section or list item.
class TextContent {
  /// The text of the note.
  ///
  /// The limits on this vary with the specific field using this type.
  core.String? text;

  TextContent({
    this.text,
  });

  TextContent.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Describes a single user.
class User {
  /// The user's email.
  core.String? email;

  User({
    this.email,
  });

  User.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}
