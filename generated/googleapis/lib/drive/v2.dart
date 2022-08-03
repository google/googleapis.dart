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

/// Drive API - v2
///
/// Manages files in Drive including uploading, downloading, searching,
/// detecting changes, and updating sharing permissions.
///
/// For more information, see <https://developers.google.com/drive/>
///
/// Create an instance of [DriveApi] to access these resources:
///
/// - [AboutResource]
/// - [AppsResource]
/// - [ChangesResource]
/// - [ChannelsResource]
/// - [ChildrenResource]
/// - [CommentsResource]
/// - [DrivesResource]
/// - [FilesResource]
/// - [ParentsResource]
/// - [PermissionsResource]
/// - [PropertiesResource]
/// - [RepliesResource]
/// - [RevisionsResource]
/// - [TeamdrivesResource]
library drive.v2;

import 'dart:async' as async;
import 'dart:convert' as convert_1;
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

/// Manages files in Drive including uploading, downloading, searching,
/// detecting changes, and updating sharing permissions.
class DriveApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, create, and delete its own configuration data in your Google Drive
  static const driveAppdataScope =
      'https://www.googleapis.com/auth/drive.appdata';

  /// View your Google Drive apps
  static const driveAppsReadonlyScope =
      'https://www.googleapis.com/auth/drive.apps.readonly';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// View and manage metadata of files in your Google Drive
  static const driveMetadataScope =
      'https://www.googleapis.com/auth/drive.metadata';

  /// See information about your Google Drive files
  static const driveMetadataReadonlyScope =
      'https://www.googleapis.com/auth/drive.metadata.readonly';

  /// View the photos, videos and albums in your Google Photos
  static const drivePhotosReadonlyScope =
      'https://www.googleapis.com/auth/drive.photos.readonly';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// Modify your Google Apps Script scripts' behavior
  static const driveScriptsScope =
      'https://www.googleapis.com/auth/drive.scripts';

  final commons.ApiRequester _requester;

  AboutResource get about => AboutResource(_requester);
  AppsResource get apps => AppsResource(_requester);
  ChangesResource get changes => ChangesResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  ChildrenResource get children => ChildrenResource(_requester);
  CommentsResource get comments => CommentsResource(_requester);
  DrivesResource get drives => DrivesResource(_requester);
  FilesResource get files => FilesResource(_requester);
  ParentsResource get parents => ParentsResource(_requester);
  PermissionsResource get permissions => PermissionsResource(_requester);
  PropertiesResource get properties => PropertiesResource(_requester);
  RepliesResource get replies => RepliesResource(_requester);
  RevisionsResource get revisions => RevisionsResource(_requester);
  TeamdrivesResource get teamdrives => TeamdrivesResource(_requester);

  DriveApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'drive/v2/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AboutResource {
  final commons.ApiRequester _requester;

  AboutResource(commons.ApiRequester client) : _requester = client;

  /// Gets the information about the current user along with Drive API settings
  ///
  /// Request parameters:
  ///
  /// [includeSubscribed] - Whether to count changes outside the My Drive
  /// hierarchy. When set to false, changes to files such as those in the
  /// Application Data folder or shared files which have not been added to My
  /// Drive will be omitted from the maxChangeIdCount.
  ///
  /// [maxChangeIdCount] - Maximum number of remaining change IDs to count
  ///
  /// [startChangeId] - Change ID to start counting from when calculating number
  /// of remaining change IDs
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [About].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<About> get({
    core.bool? includeSubscribed,
    core.String? maxChangeIdCount,
    core.String? startChangeId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeSubscribed != null)
        'includeSubscribed': ['${includeSubscribed}'],
      if (maxChangeIdCount != null) 'maxChangeIdCount': [maxChangeIdCount],
      if (startChangeId != null) 'startChangeId': [startChangeId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'about';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return About.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AppsResource {
  final commons.ApiRequester _requester;

  AppsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a specific app.
  ///
  /// Request parameters:
  ///
  /// [appId] - The ID of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [App].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<App> get(
    core.String appId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apps/' + commons.escapeVariable('$appId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return App.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a user's installed apps.
  ///
  /// Request parameters:
  ///
  /// [appFilterExtensions] - A comma-separated list of file extensions for open
  /// with filtering. All apps within the given app query scope which can open
  /// any of the given file extensions will be included in the response. If
  /// appFilterMimeTypes are provided as well, the result is a union of the two
  /// resulting app lists.
  ///
  /// [appFilterMimeTypes] - A comma-separated list of MIME types for open with
  /// filtering. All apps within the given app query scope which can open any of
  /// the given MIME types will be included in the response. If
  /// appFilterExtensions are provided as well, the result is a union of the two
  /// resulting app lists.
  ///
  /// [languageCode] - A language or locale code, as defined by BCP 47, with
  /// some extensions from Unicode's LDML format
  /// (http://www.unicode.org/reports/tr35/).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppList> list({
    core.String? appFilterExtensions,
    core.String? appFilterMimeTypes,
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (appFilterExtensions != null)
        'appFilterExtensions': [appFilterExtensions],
      if (appFilterMimeTypes != null)
        'appFilterMimeTypes': [appFilterMimeTypes],
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'apps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AppList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChangesResource {
  final commons.ApiRequester _requester;

  ChangesResource(commons.ApiRequester client) : _requester = client;

  /// Deprecated - Use changes.getStartPageToken and changes.list to retrieve
  /// recent changes.
  ///
  /// Request parameters:
  ///
  /// [changeId] - The ID of the change.
  ///
  /// [driveId] - The shared drive from which the change is returned.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [teamDriveId] - Deprecated use driveId instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Change].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Change> get(
    core.String changeId, {
    core.String? driveId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? teamDriveId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (driveId != null) 'driveId': [driveId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (teamDriveId != null) 'teamDriveId': [teamDriveId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'changes/' + commons.escapeVariable('$changeId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Change.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the starting pageToken for listing future changes.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive for which the starting pageToken
  /// for listing future changes from that shared drive is returned.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [teamDriveId] - Deprecated use driveId instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StartPageToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StartPageToken> getStartPageToken({
    core.String? driveId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? teamDriveId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (driveId != null) 'driveId': [driveId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (teamDriveId != null) 'teamDriveId': [teamDriveId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'changes/startPageToken';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StartPageToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the changes for a user or shared drive.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The shared drive from which changes are returned. If specified
  /// the change IDs will be reflective of the shared drive; use the combined
  /// drive ID and change ID as an identifier.
  ///
  /// [includeCorpusRemovals] - Whether changes should include the file resource
  /// if the file is still accessible by the user at the time of the request,
  /// even when a file was removed from the list of changes and there will be no
  /// further change entries for this file.
  ///
  /// [includeDeleted] - Whether to include changes indicating that items have
  /// been removed from the list of changes, for example by deletion or loss of
  /// access.
  ///
  /// [includeItemsFromAllDrives] - Whether both My Drive and shared drive items
  /// should be included in results.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [includeSubscribed] - Whether to include changes outside the My Drive
  /// hierarchy in the result. When set to false, changes to files such as those
  /// in the Application Data folder or shared files which have not been added
  /// to My Drive are omitted from the result.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [maxResults] - Maximum number of changes to return.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response or to the response from the getStartPageToken method.
  ///
  /// [spaces] - A comma-separated list of spaces to query. Supported values are
  /// 'drive', 'appDataFolder' and 'photos'.
  ///
  /// [startChangeId] - Deprecated - use pageToken instead.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [teamDriveId] - Deprecated use driveId instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChangeList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChangeList> list({
    core.String? driveId,
    core.bool? includeCorpusRemovals,
    core.bool? includeDeleted,
    core.bool? includeItemsFromAllDrives,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? includeSubscribed,
    core.bool? includeTeamDriveItems,
    core.int? maxResults,
    core.String? pageToken,
    core.String? spaces,
    core.String? startChangeId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? teamDriveId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (driveId != null) 'driveId': [driveId],
      if (includeCorpusRemovals != null)
        'includeCorpusRemovals': ['${includeCorpusRemovals}'],
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if (includeItemsFromAllDrives != null)
        'includeItemsFromAllDrives': ['${includeItemsFromAllDrives}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (includeSubscribed != null)
        'includeSubscribed': ['${includeSubscribed}'],
      if (includeTeamDriveItems != null)
        'includeTeamDriveItems': ['${includeTeamDriveItems}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (spaces != null) 'spaces': [spaces],
      if (startChangeId != null) 'startChangeId': [startChangeId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (teamDriveId != null) 'teamDriveId': [teamDriveId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'changes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChangeList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Subscribe to changes for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The shared drive from which changes are returned. If specified
  /// the change IDs will be reflective of the shared drive; use the combined
  /// drive ID and change ID as an identifier.
  ///
  /// [includeCorpusRemovals] - Whether changes should include the file resource
  /// if the file is still accessible by the user at the time of the request,
  /// even when a file was removed from the list of changes and there will be no
  /// further change entries for this file.
  ///
  /// [includeDeleted] - Whether to include changes indicating that items have
  /// been removed from the list of changes, for example by deletion or loss of
  /// access.
  ///
  /// [includeItemsFromAllDrives] - Whether both My Drive and shared drive items
  /// should be included in results.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [includeSubscribed] - Whether to include changes outside the My Drive
  /// hierarchy in the result. When set to false, changes to files such as those
  /// in the Application Data folder or shared files which have not been added
  /// to My Drive are omitted from the result.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [maxResults] - Maximum number of changes to return.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response or to the response from the getStartPageToken method.
  ///
  /// [spaces] - A comma-separated list of spaces to query. Supported values are
  /// 'drive', 'appDataFolder' and 'photos'.
  ///
  /// [startChangeId] - Deprecated - use pageToken instead.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [teamDriveId] - Deprecated use driveId instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request, {
    core.String? driveId,
    core.bool? includeCorpusRemovals,
    core.bool? includeDeleted,
    core.bool? includeItemsFromAllDrives,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? includeSubscribed,
    core.bool? includeTeamDriveItems,
    core.int? maxResults,
    core.String? pageToken,
    core.String? spaces,
    core.String? startChangeId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? teamDriveId,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (driveId != null) 'driveId': [driveId],
      if (includeCorpusRemovals != null)
        'includeCorpusRemovals': ['${includeCorpusRemovals}'],
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if (includeItemsFromAllDrives != null)
        'includeItemsFromAllDrives': ['${includeItemsFromAllDrives}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (includeSubscribed != null)
        'includeSubscribed': ['${includeSubscribed}'],
      if (includeTeamDriveItems != null)
        'includeTeamDriveItems': ['${includeTeamDriveItems}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (spaces != null) 'spaces': [spaces],
      if (startChangeId != null) 'startChangeId': [startChangeId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (teamDriveId != null) 'teamDriveId': [teamDriveId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'changes/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> stop(
    Channel request, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'channels/stop';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class ChildrenResource {
  final commons.ApiRequester _requester;

  ChildrenResource(commons.ApiRequester client) : _requester = client;

  /// Removes a child from a folder.
  ///
  /// Request parameters:
  ///
  /// [folderId] - The ID of the folder.
  ///
  /// [childId] - The ID of the child.
  ///
  /// [enforceSingleParent] - Deprecated. If an item is not in a shared drive
  /// and its last parent is deleted but the item itself is not, the item will
  /// be placed under its owner's root.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String folderId,
    core.String childId, {
    core.bool? enforceSingleParent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$folderId') +
        '/children/' +
        commons.escapeVariable('$childId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a specific child reference.
  ///
  /// Request parameters:
  ///
  /// [folderId] - The ID of the folder.
  ///
  /// [childId] - The ID of the child.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChildReference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChildReference> get(
    core.String folderId,
    core.String childId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$folderId') +
        '/children/' +
        commons.escapeVariable('$childId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChildReference.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a file into a folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [folderId] - The ID of the folder.
  ///
  /// [enforceSingleParent] - Deprecated. Adding files to multiple folders is no
  /// longer supported. Use shortcuts instead.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChildReference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChildReference> insert(
    ChildReference request,
    core.String folderId, {
    core.bool? enforceSingleParent,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$folderId') + '/children';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ChildReference.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a folder's children.
  ///
  /// Request parameters:
  ///
  /// [folderId] - The ID of the folder.
  ///
  /// [maxResults] - Maximum number of children to return.
  ///
  /// [orderBy] - A comma-separated list of sort keys. Valid keys are
  /// 'createdDate', 'folder', 'lastViewedByMeDate', 'modifiedByMeDate',
  /// 'modifiedDate', 'quotaBytesUsed', 'recency', 'sharedWithMeDate',
  /// 'starred', and 'title'. Each key sorts ascending by default, but may be
  /// reversed with the 'desc' modifier. Example usage:
  /// ?orderBy=folder,modifiedDate desc,title. Please note that there is a
  /// current limitation for users with approximately one million files in which
  /// the requested sort order is ignored.
  ///
  /// [pageToken] - Page token for children.
  ///
  /// [q] - Query string for searching children.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChildList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChildList> list(
    core.String folderId, {
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? q,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$folderId') + '/children';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChildList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CommentsResource {
  final commons.ApiRequester _requester;

  CommentsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a comment.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a comment by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [includeDeleted] - If set, this will succeed when retrieving a deleted
  /// comment, and will include any deleted replies.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> get(
    core.String fileId,
    core.String commentId, {
    core.bool? includeDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new comment on the given file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> insert(
    Comment request,
    core.String fileId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/comments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a file's comments.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [includeDeleted] - If set, all comments and replies, including deleted
  /// comments and replies (with content stripped) will be returned.
  ///
  /// [maxResults] - The maximum number of discussions to include in the
  /// response, used for paging.
  /// Value must be between "0" and "100".
  ///
  /// [pageToken] - The continuation token, used to page through large result
  /// sets. To get the next page of results, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [updatedMin] - Only discussions that were updated after this timestamp
  /// will be returned. Formatted as an RFC 3339 timestamp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentList> list(
    core.String fileId, {
    core.bool? includeDeleted,
    core.int? maxResults,
    core.String? pageToken,
    core.String? updatedMin,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (updatedMin != null) 'updatedMin': [updatedMin],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/comments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CommentList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> patch(
    Comment request,
    core.String fileId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> update(
    Comment request,
    core.String fileId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class DrivesResource {
  final commons.ApiRequester _requester;

  DrivesResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a shared drive for which the user is an organizer.
  ///
  /// The shared drive cannot contain any untrashed items.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [allowItemDeletion] - Whether any items inside the shared drive should
  /// also be deleted. This option is only supported when useDomainAdminAccess
  /// is also set to true.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if they are an
  /// administrator of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String driveId, {
    core.bool? allowItemDeletion,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowItemDeletion != null)
        'allowItemDeletion': ['${allowItemDeletion}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'drives/' + commons.escapeVariable('$driveId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a shared drive's metadata by ID.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if they are an
  /// administrator of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Drive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Drive> get(
    core.String driveId, {
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'drives/' + commons.escapeVariable('$driveId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Drive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Hides a shared drive from the default view.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Drive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Drive> hide(
    core.String driveId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'drives/' + commons.escapeVariable('$driveId') + '/hide';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Drive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new shared drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [requestId] - An ID, such as a random UUID, which uniquely identifies this
  /// user's request for idempotent creation of a shared drive. A repeated
  /// request by the same user and with the same request ID will avoid creating
  /// duplicates by attempting to create the same shared drive. If the shared
  /// drive already exists a 409 error will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Drive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Drive> insert(
    Drive request,
    core.String requestId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'drives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Drive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the user's shared drives.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of shared drives to return per page.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - Page token for shared drives.
  ///
  /// [q] - Query string for searching shared drives.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then all shared drives of the domain in which the requester
  /// is an administrator are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DriveList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DriveList> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? q,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'drives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DriveList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a shared drive to the default view.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Drive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Drive> unhide(
    core.String driveId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'drives/' + commons.escapeVariable('$driveId') + '/unhide';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Drive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata for a shared drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if they are an
  /// administrator of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Drive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Drive> update(
    Drive request,
    core.String driveId, {
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'drives/' + commons.escapeVariable('$driveId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Drive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FilesResource {
  final commons.ApiRequester _requester;

  FilesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a copy of the specified file.
  ///
  /// Folders cannot be copied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to copy.
  ///
  /// [convert] - Whether to convert this file to the corresponding Docs Editors
  /// format.
  ///
  /// [enforceSingleParent] - Deprecated. Copying files into multiple folders is
  /// no longer supported. Use shortcuts instead.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [ocr] - Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
  ///
  /// [ocrLanguage] - If ocr is true, hints at the language to use. Valid values
  /// are BCP 47 codes.
  ///
  /// [pinned] - Whether to pin the head revision of the new copy. A file can
  /// have a maximum of 200 pinned revisions.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [timedTextLanguage] - The language of the timed text.
  ///
  /// [timedTextTrackName] - The timed text track name.
  ///
  /// [visibility] - The visibility of the new file. This parameter is only
  /// relevant when the source is not a native Google Doc and convert=false.
  /// Possible string values are:
  /// - "DEFAULT" : The visibility of the new file is determined by the user's
  /// default visibility/sharing policies.
  /// - "PRIVATE" : The new file will be visible to only the owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> copy(
    File request,
    core.String fileId, {
    core.bool? convert,
    core.bool? enforceSingleParent,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? ocr,
    core.String? ocrLanguage,
    core.bool? pinned,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? timedTextLanguage,
    core.String? timedTextTrackName,
    core.String? visibility,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (convert != null) 'convert': ['${convert}'],
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (ocr != null) 'ocr': ['${ocr}'],
      if (ocrLanguage != null) 'ocrLanguage': [ocrLanguage],
      if (pinned != null) 'pinned': ['${pinned}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (timedTextLanguage != null) 'timedTextLanguage': [timedTextLanguage],
      if (timedTextTrackName != null)
        'timedTextTrackName': [timedTextTrackName],
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/copy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a file by ID.
  ///
  /// Skips the trash. The currently authenticated user must own the file or be
  /// an organizer on the parent for shared drive files.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to delete.
  ///
  /// [enforceSingleParent] - Deprecated. If an item is not in a shared drive
  /// and its last parent is deleted but the item itself is not, the item will
  /// be placed under its owner's root.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId, {
    core.bool? enforceSingleParent,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Permanently deletes all of the user's trashed files.
  ///
  /// Request parameters:
  ///
  /// [enforceSingleParent] - Deprecated. If an item is not in a shared drive
  /// and its last parent is deleted but the item itself is not, the item will
  /// be placed under its owner's root.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> emptyTrash({
    core.bool? enforceSingleParent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'files/trash';

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Exports a Google Workspace document to the requested MIME type and returns
  /// exported byte content.
  ///
  /// Note that the exported content is limited to 10MB.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [mimeType] - The MIME type of the format requested for this export.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> export(
    core.String fileId,
    core.String mimeType, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'mimeType': [mimeType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/export';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return response_ as commons.Media;
    }
  }

  /// Generates a set of file IDs which can be provided in insert or copy
  /// requests.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of IDs to return.
  /// Value must be between "1" and "1000".
  ///
  /// [space] - The space in which the IDs can be used to create new files.
  /// Supported values are 'drive' and 'appDataFolder'. (Default: 'drive')
  ///
  /// [type] - The type of items which the IDs can be used for. Supported values
  /// are 'files' and 'shortcuts'. Note that 'shortcuts' are only supported in
  /// the drive 'space'. (Default: 'files')
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GeneratedIds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GeneratedIds> generateIds({
    core.int? maxResults,
    core.String? space,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (space != null) 'space': [space],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'files/generateIds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GeneratedIds.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a file's metadata or content by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file in question.
  ///
  /// [acknowledgeAbuse] - Whether the user is acknowledging the risk of
  /// downloading known malware or other abusive files.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [projection] - This parameter is deprecated and has no function.
  /// Possible string values are:
  /// - "BASIC" : Deprecated
  /// - "FULL" : Deprecated
  ///
  /// [revisionId] - Specifies the Revision ID that should be downloaded.
  /// Ignored unless alt=media is specified.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [updateViewedDate] - Deprecated: Use files.update with
  /// modifiedDateBehavior=noChange, updateViewedDate=true and an empty request
  /// body.
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
  /// - [File] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String fileId, {
    core.bool? acknowledgeAbuse,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.String? projection,
    core.String? revisionId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? updateViewedDate,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (acknowledgeAbuse != null) 'acknowledgeAbuse': ['${acknowledgeAbuse}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (projection != null) 'projection': [projection],
      if (revisionId != null) 'revisionId': [revisionId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (updateViewedDate != null) 'updateViewedDate': ['${updateViewedDate}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Insert a new file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [convert] - Whether to convert this file to the corresponding Docs Editors
  /// format.
  ///
  /// [enforceSingleParent] - Deprecated. Creating files in multiple folders is
  /// no longer supported.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [ocr] - Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
  ///
  /// [ocrLanguage] - If ocr is true, hints at the language to use. Valid values
  /// are BCP 47 codes.
  ///
  /// [pinned] - Whether to pin the head revision of the uploaded file. A file
  /// can have a maximum of 200 pinned revisions.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [timedTextLanguage] - The language of the timed text.
  ///
  /// [timedTextTrackName] - The timed text track name.
  ///
  /// [useContentAsIndexableText] - Whether to use the content as indexable
  /// text.
  ///
  /// [visibility] - The visibility of the new file. This parameter is only
  /// relevant when convert=false.
  /// Possible string values are:
  /// - "DEFAULT" : The visibility of the new file is determined by the user's
  /// default visibility/sharing policies.
  /// - "PRIVATE" : The new file will be visible to only the owner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> insert(
    File request, {
    core.bool? convert,
    core.bool? enforceSingleParent,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? ocr,
    core.String? ocrLanguage,
    core.bool? pinned,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? timedTextLanguage,
    core.String? timedTextTrackName,
    core.bool? useContentAsIndexableText,
    core.String? visibility,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (convert != null) 'convert': ['${convert}'],
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (ocr != null) 'ocr': ['${ocr}'],
      if (ocrLanguage != null) 'ocrLanguage': [ocrLanguage],
      if (pinned != null) 'pinned': ['${pinned}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (timedTextLanguage != null) 'timedTextLanguage': [timedTextLanguage],
      if (timedTextTrackName != null)
        'timedTextTrackName': [timedTextTrackName],
      if (useContentAsIndexableText != null)
        'useContentAsIndexableText': ['${useContentAsIndexableText}'],
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'files';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/drive/v2/files';
    } else {
      url_ = '/upload/drive/v2/files';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the user's files.
  ///
  /// Request parameters:
  ///
  /// [corpora] - Groupings of files to which the query applies. Supported
  /// groupings are: 'user' (files created by, opened by, or shared directly
  /// with the user), 'drive' (files in the specified shared drive as indicated
  /// by the 'driveId'), 'domain' (files shared to the user's domain), and
  /// 'allDrives' (A combination of 'user' and 'drive' for all drives where the
  /// user is a member). When able, use 'user' or 'drive', instead of
  /// 'allDrives', for efficiency.
  ///
  /// [corpus] - The body of items (files/documents) to which the query applies.
  /// Deprecated: use 'corpora' instead.
  /// Possible string values are:
  /// - "DEFAULT" : The items that the user has accessed.
  /// - "DOMAIN" : Items shared to the user's domain.
  ///
  /// [driveId] - ID of the shared drive to search.
  ///
  /// [includeItemsFromAllDrives] - Whether both My Drive and shared drive items
  /// should be included in results.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [maxResults] - The maximum number of files to return per page. Partial or
  /// empty result pages are possible even before the end of the files list has
  /// been reached.
  ///
  /// [orderBy] - A comma-separated list of sort keys. Valid keys are
  /// 'createdDate', 'folder', 'lastViewedByMeDate', 'modifiedByMeDate',
  /// 'modifiedDate', 'quotaBytesUsed', 'recency', 'sharedWithMeDate',
  /// 'starred', 'title', and 'title_natural'. Each key sorts ascending by
  /// default, but may be reversed with the 'desc' modifier. Example usage:
  /// ?orderBy=folder,modifiedDate desc,title. Please note that there is a
  /// current limitation for users with approximately one million files in which
  /// the requested sort order is ignored.
  ///
  /// [pageToken] - Page token for files.
  ///
  /// [projection] - This parameter is deprecated and has no function.
  /// Possible string values are:
  /// - "BASIC" : Deprecated
  /// - "FULL" : Deprecated
  ///
  /// [q] - Query string for searching files.
  ///
  /// [spaces] - A comma-separated list of spaces to query. Supported values are
  /// 'drive' and 'appDataFolder'.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [teamDriveId] - Deprecated use driveId instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FileList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FileList> list({
    core.String? corpora,
    core.String? corpus,
    core.String? driveId,
    core.bool? includeItemsFromAllDrives,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? includeTeamDriveItems,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? projection,
    core.String? q,
    core.String? spaces,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? teamDriveId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (corpora != null) 'corpora': [corpora],
      if (corpus != null) 'corpus': [corpus],
      if (driveId != null) 'driveId': [driveId],
      if (includeItemsFromAllDrives != null)
        'includeItemsFromAllDrives': ['${includeItemsFromAllDrives}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (includeTeamDriveItems != null)
        'includeTeamDriveItems': ['${includeTeamDriveItems}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (projection != null) 'projection': [projection],
      if (q != null) 'q': [q],
      if (spaces != null) 'spaces': [spaces],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (teamDriveId != null) 'teamDriveId': [teamDriveId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FileList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the labels on a file.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [maxResults] - The maximum number of labels to return per page. When not
  /// set, this defaults to 100.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LabelList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LabelList> listLabels(
    core.String fileId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/listLabels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LabelList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the set of labels on a file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file for which the labels are modified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ModifyLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ModifyLabelsResponse> modifyLabels(
    ModifyLabelsRequest request,
    core.String fileId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/modifyLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModifyLabelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a file's metadata and/or content.
  ///
  /// When calling this method, only populate fields in the request that you
  /// want to modify. When updating fields, some fields might change
  /// automatically, such as modifiedDate. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to update.
  ///
  /// [addParents] - Comma-separated list of parent IDs to add.
  ///
  /// [convert] - This parameter is deprecated and has no function.
  ///
  /// [enforceSingleParent] - Deprecated. Adding files to multiple folders is no
  /// longer supported. Use shortcuts instead.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [modifiedDateBehavior] - Determines the behavior in which modifiedDate is
  /// updated. This overrides setModifiedDate.
  /// Possible string values are:
  /// - "fromBody" : Set modifiedDate to the value provided in the body of the
  /// request. No change if no value was provided.
  /// - "fromBodyIfNeeded" : Set modifiedDate to the value provided in the body
  /// of the request depending on other contents of the update.
  /// - "fromBodyOrNow" : Set modifiedDate to the value provided in the body of
  /// the request, or to the current time if no value was provided.
  /// - "noChange" : Maintain the previous value of modifiedDate.
  /// - "now" : Set modifiedDate to the current time.
  /// - "nowIfNeeded" : Set modifiedDate to the current time depending on
  /// contents of the update.
  ///
  /// [newRevision] - Whether a blob upload should create a new revision. If
  /// false, the blob data in the current head revision is replaced. If true or
  /// not set, a new blob is created as head revision, and previous unpinned
  /// revisions are preserved for a short period of time. Pinned revisions are
  /// stored indefinitely, using additional storage quota, up to a maximum of
  /// 200 revisions. For details on how revisions are retained, see the Drive
  /// Help Center. Note that this field is ignored if there is no payload in the
  /// request.
  ///
  /// [ocr] - Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
  ///
  /// [ocrLanguage] - If ocr is true, hints at the language to use. Valid values
  /// are BCP 47 codes.
  ///
  /// [pinned] - Whether to pin the new revision. A file can have a maximum of
  /// 200 pinned revisions. Note that this field is ignored if there is no
  /// payload in the request.
  ///
  /// [removeParents] - Comma-separated list of parent IDs to remove.
  ///
  /// [setModifiedDate] - Whether to set the modified date using the value
  /// supplied in the request body. Setting this field to true is equivalent to
  /// modifiedDateBehavior=fromBodyOrNow, and false is equivalent to
  /// modifiedDateBehavior=now. To prevent any changes to the modified date set
  /// modifiedDateBehavior=noChange.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [timedTextLanguage] - The language of the timed text.
  ///
  /// [timedTextTrackName] - The timed text track name.
  ///
  /// [updateViewedDate] - Whether to update the view date after successfully
  /// updating the file.
  ///
  /// [useContentAsIndexableText] - Whether to use the content as indexable
  /// text.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> patch(
    File request,
    core.String fileId, {
    core.String? addParents,
    core.bool? convert,
    core.bool? enforceSingleParent,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.String? modifiedDateBehavior,
    core.bool? newRevision,
    core.bool? ocr,
    core.String? ocrLanguage,
    core.bool? pinned,
    core.String? removeParents,
    core.bool? setModifiedDate,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? timedTextLanguage,
    core.String? timedTextTrackName,
    core.bool? updateViewedDate,
    core.bool? useContentAsIndexableText,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (addParents != null) 'addParents': [addParents],
      if (convert != null) 'convert': ['${convert}'],
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (modifiedDateBehavior != null)
        'modifiedDateBehavior': [modifiedDateBehavior],
      if (newRevision != null) 'newRevision': ['${newRevision}'],
      if (ocr != null) 'ocr': ['${ocr}'],
      if (ocrLanguage != null) 'ocrLanguage': [ocrLanguage],
      if (pinned != null) 'pinned': ['${pinned}'],
      if (removeParents != null) 'removeParents': [removeParents],
      if (setModifiedDate != null) 'setModifiedDate': ['${setModifiedDate}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (timedTextLanguage != null) 'timedTextLanguage': [timedTextLanguage],
      if (timedTextTrackName != null)
        'timedTextTrackName': [timedTextTrackName],
      if (updateViewedDate != null) 'updateViewedDate': ['${updateViewedDate}'],
      if (useContentAsIndexableText != null)
        'useContentAsIndexableText': ['${useContentAsIndexableText}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Set the file's updated time to the current server time.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to update.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> touch(
    core.String fileId, {
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/touch';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves a file to the trash.
  ///
  /// The currently authenticated user must own the file or be at least a
  /// fileOrganizer on the parent for shared drive files. Only the owner may
  /// trash a file. The trashed item is excluded from all files.list responses
  /// returned for any user who does not own the file. However, all users with
  /// access to the file can see the trashed item metadata in an API response.
  /// All users with access can copy, download, export, and share the file.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to trash.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> trash(
    core.String fileId, {
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/trash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a file from the trash.
  ///
  /// The currently authenticated user must own the file or be at least a
  /// fileOrganizer on the parent for shared drive files. Only the owner may
  /// untrash a file.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to untrash.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> untrash(
    core.String fileId, {
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/untrash';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a file's metadata and/or content.
  ///
  /// When calling this method, only populate fields in the request that you
  /// want to modify. When updating fields, some fields might be changed
  /// automatically, such as modifiedDate. This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file to update.
  ///
  /// [addParents] - Comma-separated list of parent IDs to add.
  ///
  /// [convert] - This parameter is deprecated and has no function.
  ///
  /// [enforceSingleParent] - Deprecated. Adding files to multiple folders is no
  /// longer supported. Use shortcuts instead.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [modifiedDateBehavior] - Determines the behavior in which modifiedDate is
  /// updated. This overrides setModifiedDate.
  /// Possible string values are:
  /// - "fromBody" : Set modifiedDate to the value provided in the body of the
  /// request. No change if no value was provided.
  /// - "fromBodyIfNeeded" : Set modifiedDate to the value provided in the body
  /// of the request depending on other contents of the update.
  /// - "fromBodyOrNow" : Set modifiedDate to the value provided in the body of
  /// the request, or to the current time if no value was provided.
  /// - "noChange" : Maintain the previous value of modifiedDate.
  /// - "now" : Set modifiedDate to the current time.
  /// - "nowIfNeeded" : Set modifiedDate to the current time depending on
  /// contents of the update.
  ///
  /// [newRevision] - Whether a blob upload should create a new revision. If
  /// false, the blob data in the current head revision is replaced. If true or
  /// not set, a new blob is created as head revision, and previous unpinned
  /// revisions are preserved for a short period of time. Pinned revisions are
  /// stored indefinitely, using additional storage quota, up to a maximum of
  /// 200 revisions. For details on how revisions are retained, see the Drive
  /// Help Center. Note that this field is ignored if there is no payload in the
  /// request.
  ///
  /// [ocr] - Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.
  ///
  /// [ocrLanguage] - If ocr is true, hints at the language to use. Valid values
  /// are BCP 47 codes.
  ///
  /// [pinned] - Whether to pin the new revision. A file can have a maximum of
  /// 200 pinned revisions. Note that this field is ignored if there is no
  /// payload in the request.
  ///
  /// [removeParents] - Comma-separated list of parent IDs to remove.
  ///
  /// [setModifiedDate] - Whether to set the modified date using the value
  /// supplied in the request body. Setting this field to true is equivalent to
  /// modifiedDateBehavior=fromBodyOrNow, and false is equivalent to
  /// modifiedDateBehavior=now. To prevent any changes to the modified date set
  /// modifiedDateBehavior=noChange.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [timedTextLanguage] - The language of the timed text.
  ///
  /// [timedTextTrackName] - The timed text track name.
  ///
  /// [updateViewedDate] - Whether to update the view date after successfully
  /// updating the file.
  ///
  /// [useContentAsIndexableText] - Whether to use the content as indexable
  /// text.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> update(
    File request,
    core.String fileId, {
    core.String? addParents,
    core.bool? convert,
    core.bool? enforceSingleParent,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.String? modifiedDateBehavior,
    core.bool? newRevision,
    core.bool? ocr,
    core.String? ocrLanguage,
    core.bool? pinned,
    core.String? removeParents,
    core.bool? setModifiedDate,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? timedTextLanguage,
    core.String? timedTextTrackName,
    core.bool? updateViewedDate,
    core.bool? useContentAsIndexableText,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (addParents != null) 'addParents': [addParents],
      if (convert != null) 'convert': ['${convert}'],
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (modifiedDateBehavior != null)
        'modifiedDateBehavior': [modifiedDateBehavior],
      if (newRevision != null) 'newRevision': ['${newRevision}'],
      if (ocr != null) 'ocr': ['${ocr}'],
      if (ocrLanguage != null) 'ocrLanguage': [ocrLanguage],
      if (pinned != null) 'pinned': ['${pinned}'],
      if (removeParents != null) 'removeParents': [removeParents],
      if (setModifiedDate != null) 'setModifiedDate': ['${setModifiedDate}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (timedTextLanguage != null) 'timedTextLanguage': [timedTextLanguage],
      if (timedTextTrackName != null)
        'timedTextTrackName': [timedTextTrackName],
      if (updateViewedDate != null) 'updateViewedDate': ['${updateViewedDate}'],
      if (useContentAsIndexableText != null)
        'useContentAsIndexableText': ['${useContentAsIndexableText}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'files/' + commons.escapeVariable('$fileId');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ = '/resumable/upload/drive/v2/files/' +
          commons.escapeVariable('$fileId');
    } else {
      url_ = '/upload/drive/v2/files/' + commons.escapeVariable('$fileId');
    }

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Subscribes to changes to a file.
  ///
  /// While you can establish a channel for changes to a file on a shared drive,
  /// a change to a shared drive file won't create a notification.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file in question.
  ///
  /// [acknowledgeAbuse] - Whether the user is acknowledging the risk of
  /// downloading known malware or other abusive files.
  ///
  /// [includeLabels] - A comma-separated list of IDs of labels to include in
  /// the labelInfo part of the response.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [projection] - This parameter is deprecated and has no function.
  /// Possible string values are:
  /// - "BASIC" : Deprecated
  /// - "FULL" : Deprecated
  ///
  /// [revisionId] - Specifies the Revision ID that should be downloaded.
  /// Ignored unless alt=media is specified.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [updateViewedDate] - Deprecated: Use files.update with
  /// modifiedDateBehavior=noChange, updateViewedDate=true and an empty request
  /// body.
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
  /// - [Channel] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> watch(
    Channel request,
    core.String fileId, {
    core.bool? acknowledgeAbuse,
    core.String? includeLabels,
    core.String? includePermissionsForView,
    core.String? projection,
    core.String? revisionId,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? updateViewedDate,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (acknowledgeAbuse != null) 'acknowledgeAbuse': ['${acknowledgeAbuse}'],
      if (includeLabels != null) 'includeLabels': [includeLabels],
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (projection != null) 'projection': [projection],
      if (revisionId != null) 'revisionId': [revisionId],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (updateViewedDate != null) 'updateViewedDate': ['${updateViewedDate}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }
}

class ParentsResource {
  final commons.ApiRequester _requester;

  ParentsResource(commons.ApiRequester client) : _requester = client;

  /// Removes a parent from a file.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [parentId] - The ID of the parent.
  ///
  /// [enforceSingleParent] - Deprecated. If an item is not in a shared drive
  /// and its last parent is deleted but the item itself is not, the item will
  /// be placed under its owner's root.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String parentId, {
    core.bool? enforceSingleParent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/parents/' +
        commons.escapeVariable('$parentId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a specific parent reference.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [parentId] - The ID of the parent.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParentReference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParentReference> get(
    core.String fileId,
    core.String parentId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/parents/' +
        commons.escapeVariable('$parentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ParentReference.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds a parent folder for a file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [enforceSingleParent] - Deprecated. Adding files to multiple folders is no
  /// longer supported. Use shortcuts instead.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParentReference].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParentReference> insert(
    ParentReference request,
    core.String fileId, {
    core.bool? enforceSingleParent,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/parents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ParentReference.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a file's parents.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParentList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParentList> list(
    core.String fileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/parents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ParentList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PermissionsResource {
  final commons.ApiRequester _requester;

  PermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a permission from a file or shared drive.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [permissionId] - The ID for the permission.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String permissionId, {
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a permission by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [permissionId] - The ID for the permission.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permission> get(
    core.String fileId,
    core.String permissionId, {
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Permission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permission ID for an email address.
  ///
  /// Request parameters:
  ///
  /// [email] - The email address for which to return a permission ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PermissionId].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PermissionId> getIdForEmail(
    core.String email, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'permissionIds/' + commons.escapeVariable('$email');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PermissionId.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a permission for a file or shared drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [emailMessage] - A plain text custom message to include in notification
  /// emails.
  ///
  /// [enforceSingleParent] - Deprecated. See moveToNewOwnersRoot for details.
  ///
  /// [moveToNewOwnersRoot] - This parameter will only take effect if the item
  /// is not in a shared drive and the request is attempting to transfer the
  /// ownership of the item. If set to true, the item will be moved to the new
  /// owner's My Drive root folder and all prior parents removed. If set to
  /// false, parents are not changed.
  ///
  /// [sendNotificationEmails] - Whether to send notification emails when
  /// sharing to users or groups. This parameter is ignored and an email is sent
  /// if the role is owner.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permission> insert(
    Permission request,
    core.String fileId, {
    core.String? emailMessage,
    core.bool? enforceSingleParent,
    core.bool? moveToNewOwnersRoot,
    core.bool? sendNotificationEmails,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (emailMessage != null) 'emailMessage': [emailMessage],
      if (enforceSingleParent != null)
        'enforceSingleParent': ['${enforceSingleParent}'],
      if (moveToNewOwnersRoot != null)
        'moveToNewOwnersRoot': ['${moveToNewOwnersRoot}'],
      if (sendNotificationEmails != null)
        'sendNotificationEmails': ['${sendNotificationEmails}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Permission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a file's or shared drive's permissions.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [includePermissionsForView] - Specifies which additional view's
  /// permissions to include in the response. Only 'published' is supported.
  ///
  /// [maxResults] - The maximum number of permissions to return per page. When
  /// not set for files in a shared drive, at most 100 results will be returned.
  /// When not set for files that are not in a shared drive, the entire list
  /// will be returned.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PermissionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PermissionList> list(
    core.String fileId, {
    core.String? includePermissionsForView,
    core.int? maxResults,
    core.String? pageToken,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includePermissionsForView != null)
        'includePermissionsForView': [includePermissionsForView],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PermissionList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a permission using patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [permissionId] - The ID for the permission.
  ///
  /// [removeExpiration] - Whether to remove the expiration date.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [transferOwnership] - Whether changing a role to 'owner' downgrades the
  /// current owners to writers. Does nothing if the specified role is not
  /// 'owner'.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permission> patch(
    Permission request,
    core.String fileId,
    core.String permissionId, {
    core.bool? removeExpiration,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? transferOwnership,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (removeExpiration != null) 'removeExpiration': ['${removeExpiration}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (transferOwnership != null)
        'transferOwnership': ['${transferOwnership}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Permission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a permission.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file or shared drive.
  ///
  /// [permissionId] - The ID for the permission.
  ///
  /// [removeExpiration] - Whether to remove the expiration date.
  ///
  /// [supportsAllDrives] - Whether the requesting application supports both My
  /// Drives and shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [transferOwnership] - Whether to transfer ownership to the specified user
  /// and downgrade the current owner to a writer. This parameter is required as
  /// an acknowledgement of the side effect. File owners can only transfer
  /// ownership of files existing on My Drive. Files existing in a shared drive
  /// are owned by the organization that owns that shared drive. Ownership
  /// transfers are not supported for files and folders in shared drives.
  /// Organizers of a shared drive can move items from that shared drive into
  /// their My Drive which transfers the ownership to them.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if the file ID
  /// parameter refers to a shared drive and the requester is an administrator
  /// of the domain to which the shared drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permission> update(
    Permission request,
    core.String fileId,
    core.String permissionId, {
    core.bool? removeExpiration,
    core.bool? supportsAllDrives,
    core.bool? supportsTeamDrives,
    core.bool? transferOwnership,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (removeExpiration != null) 'removeExpiration': ['${removeExpiration}'],
      if (supportsAllDrives != null)
        'supportsAllDrives': ['${supportsAllDrives}'],
      if (supportsTeamDrives != null)
        'supportsTeamDrives': ['${supportsTeamDrives}'],
      if (transferOwnership != null)
        'transferOwnership': ['${transferOwnership}'],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/permissions/' +
        commons.escapeVariable('$permissionId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Permission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a property.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [propertyKey] - The key of the property.
  ///
  /// [visibility] - The visibility of the property.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String propertyKey, {
    core.String? visibility,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/properties/' +
        commons.escapeVariable('$propertyKey');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a property by its key.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [propertyKey] - The key of the property.
  ///
  /// [visibility] - The visibility of the property.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Property].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Property> get(
    core.String fileId,
    core.String propertyKey, {
    core.String? visibility,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/properties/' +
        commons.escapeVariable('$propertyKey');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Property.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds a property to a file, or updates it if it already exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Property].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Property> insert(
    Property request,
    core.String fileId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/properties';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Property.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a file's properties.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PropertyList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PropertyList> list(
    core.String fileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/properties';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PropertyList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [propertyKey] - The key of the property.
  ///
  /// [visibility] - The visibility of the property. Allowed values are PRIVATE
  /// and PUBLIC. (Default: PRIVATE)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Property].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Property> patch(
    Property request,
    core.String fileId,
    core.String propertyKey, {
    core.String? visibility,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/properties/' +
        commons.escapeVariable('$propertyKey');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Property.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [propertyKey] - The key of the property.
  ///
  /// [visibility] - The visibility of the property. Allowed values are PRIVATE
  /// and PUBLIC. (Default: PRIVATE)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Property].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Property> update(
    Property request,
    core.String fileId,
    core.String propertyKey, {
    core.String? visibility,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/properties/' +
        commons.escapeVariable('$propertyKey');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Property.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class RepliesResource {
  final commons.ApiRequester _requester;

  RepliesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a reply.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [replyId] - The ID of the reply.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String commentId,
    core.String replyId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies/' +
        commons.escapeVariable('$replyId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a reply.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [replyId] - The ID of the reply.
  ///
  /// [includeDeleted] - If set, this will succeed when retrieving a deleted
  /// reply.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentReply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentReply> get(
    core.String fileId,
    core.String commentId,
    core.String replyId, {
    core.bool? includeDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies/' +
        commons.escapeVariable('$replyId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CommentReply.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new reply to the given comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentReply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentReply> insert(
    CommentReply request,
    core.String fileId,
    core.String commentId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommentReply.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all of the replies to a comment.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [includeDeleted] - If set, all replies, including deleted replies (with
  /// content stripped) will be returned.
  ///
  /// [maxResults] - The maximum number of replies to include in the response,
  /// used for paging.
  /// Value must be between "0" and "100".
  ///
  /// [pageToken] - The continuation token, used to page through large result
  /// sets. To get the next page of results, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentReplyList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentReplyList> list(
    core.String fileId,
    core.String commentId, {
    core.bool? includeDeleted,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeDeleted != null) 'includeDeleted': ['${includeDeleted}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CommentReplyList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing reply.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [replyId] - The ID of the reply.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentReply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentReply> patch(
    CommentReply request,
    core.String fileId,
    core.String commentId,
    core.String replyId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies/' +
        commons.escapeVariable('$replyId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CommentReply.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing reply.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [replyId] - The ID of the reply.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommentReply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommentReply> update(
    CommentReply request,
    core.String fileId,
    core.String commentId,
    core.String replyId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/comments/' +
        commons.escapeVariable('$commentId') +
        '/replies/' +
        commons.escapeVariable('$replyId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CommentReply.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RevisionsResource {
  final commons.ApiRequester _requester;

  RevisionsResource(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a file version.
  ///
  /// You can only delete revisions for files with binary content, like images
  /// or videos. Revisions for other files, like Google Docs or Sheets, and the
  /// last remaining file version can't be deleted.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [revisionId] - The ID of the revision.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String fileId,
    core.String revisionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/revisions/' +
        commons.escapeVariable('$revisionId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a specific revision.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [revisionId] - The ID of the revision.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> get(
    core.String fileId,
    core.String revisionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/revisions/' +
        commons.escapeVariable('$revisionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a file's revisions.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [maxResults] - Maximum number of revisions to return.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - Page token for revisions. To get the next page of results,
  /// set this parameter to the value of "nextPageToken" from the previous
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevisionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevisionList> list(
    core.String fileId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' + commons.escapeVariable('$fileId') + '/revisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RevisionList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file.
  ///
  /// [revisionId] - The ID for the revision.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> patch(
    Revision request,
    core.String fileId,
    core.String revisionId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/revisions/' +
        commons.escapeVariable('$revisionId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a revision.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID for the file.
  ///
  /// [revisionId] - The ID for the revision.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Revision].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Revision> update(
    Revision request,
    core.String fileId,
    core.String revisionId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'files/' +
        commons.escapeVariable('$fileId') +
        '/revisions/' +
        commons.escapeVariable('$revisionId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Revision.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TeamdrivesResource {
  final commons.ApiRequester _requester;

  TeamdrivesResource(commons.ApiRequester client) : _requester = client;

  /// Deprecated use drives.delete instead.
  ///
  /// Request parameters:
  ///
  /// [teamDriveId] - The ID of the Team Drive
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String teamDriveId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'teamdrives/' + commons.escapeVariable('$teamDriveId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deprecated use drives.get instead.
  ///
  /// Request parameters:
  ///
  /// [teamDriveId] - The ID of the Team Drive
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if they are an
  /// administrator of the domain to which the Team Drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TeamDrive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TeamDrive> get(
    core.String teamDriveId, {
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'teamdrives/' + commons.escapeVariable('$teamDriveId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TeamDrive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deprecated use drives.insert instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [requestId] - An ID, such as a random UUID, which uniquely identifies this
  /// user's request for idempotent creation of a Team Drive. A repeated request
  /// by the same user and with the same request ID will avoid creating
  /// duplicates by attempting to create the same Team Drive. If the Team Drive
  /// already exists a 409 error will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TeamDrive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TeamDrive> insert(
    TeamDrive request,
    core.String requestId, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'teamdrives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TeamDrive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deprecated use drives.list instead.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of Team Drives to return.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - Page token for Team Drives.
  ///
  /// [q] - Query string for searching Team Drives.
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then all Team Drives of the domain in which the requester is
  /// an administrator are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TeamDriveList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TeamDriveList> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? q,
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (q != null) 'q': [q],
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'teamdrives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TeamDriveList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deprecated use drives.update instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [teamDriveId] - The ID of the Team Drive
  ///
  /// [useDomainAdminAccess] - Issue the request as a domain administrator; if
  /// set to true, then the requester will be granted access if they are an
  /// administrator of the domain to which the Team Drive belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TeamDrive].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TeamDrive> update(
    TeamDrive request,
    core.String teamDriveId, {
    core.bool? useDomainAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useDomainAdminAccess != null)
        'useDomainAdminAccess': ['${useDomainAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'teamdrives/' + commons.escapeVariable('$teamDriveId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return TeamDrive.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AboutAdditionalRoleInfoRoleSets {
  /// The supported additional roles with the primary role.
  core.List<core.String>? additionalRoles;

  /// A primary permission role.
  core.String? primaryRole;

  AboutAdditionalRoleInfoRoleSets({
    this.additionalRoles,
    this.primaryRole,
  });

  AboutAdditionalRoleInfoRoleSets.fromJson(core.Map json_)
      : this(
          additionalRoles: json_.containsKey('additionalRoles')
              ? (json_['additionalRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          primaryRole: json_.containsKey('primaryRole')
              ? json_['primaryRole'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalRoles != null) 'additionalRoles': additionalRoles!,
        if (primaryRole != null) 'primaryRole': primaryRole!,
      };
}

class AboutAdditionalRoleInfo {
  /// The supported additional roles per primary role.
  core.List<AboutAdditionalRoleInfoRoleSets>? roleSets;

  /// The content type that this additional role info applies to.
  core.String? type;

  AboutAdditionalRoleInfo({
    this.roleSets,
    this.type,
  });

  AboutAdditionalRoleInfo.fromJson(core.Map json_)
      : this(
          roleSets: json_.containsKey('roleSets')
              ? (json_['roleSets'] as core.List)
                  .map((value) => AboutAdditionalRoleInfoRoleSets.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (roleSets != null) 'roleSets': roleSets!,
        if (type != null) 'type': type!,
      };
}

class AboutDriveThemes {
  /// A link to this theme's background image.
  core.String? backgroundImageLink;

  /// The color of this theme as an RGB hex string.
  core.String? colorRgb;

  /// The ID of the theme.
  core.String? id;

  AboutDriveThemes({
    this.backgroundImageLink,
    this.colorRgb,
    this.id,
  });

  AboutDriveThemes.fromJson(core.Map json_)
      : this(
          backgroundImageLink: json_.containsKey('backgroundImageLink')
              ? json_['backgroundImageLink'] as core.String
              : null,
          colorRgb: json_.containsKey('colorRgb')
              ? json_['colorRgb'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundImageLink != null)
          'backgroundImageLink': backgroundImageLink!,
        if (colorRgb != null) 'colorRgb': colorRgb!,
        if (id != null) 'id': id!,
      };
}

class AboutExportFormats {
  /// The content type to convert from.
  core.String? source;

  /// The possible content types to convert to.
  core.List<core.String>? targets;

  AboutExportFormats({
    this.source,
    this.targets,
  });

  AboutExportFormats.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          targets: json_.containsKey('targets')
              ? (json_['targets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (targets != null) 'targets': targets!,
      };
}

class AboutFeatures {
  /// The name of the feature.
  core.String? featureName;

  /// The request limit rate for this feature, in queries per second.
  core.double? featureRate;

  AboutFeatures({
    this.featureName,
    this.featureRate,
  });

  AboutFeatures.fromJson(core.Map json_)
      : this(
          featureName: json_.containsKey('featureName')
              ? json_['featureName'] as core.String
              : null,
          featureRate: json_.containsKey('featureRate')
              ? (json_['featureRate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (featureName != null) 'featureName': featureName!,
        if (featureRate != null) 'featureRate': featureRate!,
      };
}

class AboutImportFormats {
  /// The imported file's content type to convert from.
  core.String? source;

  /// The possible content types to convert to.
  core.List<core.String>? targets;

  AboutImportFormats({
    this.source,
    this.targets,
  });

  AboutImportFormats.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          targets: json_.containsKey('targets')
              ? (json_['targets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (targets != null) 'targets': targets!,
      };
}

class AboutMaxUploadSizes {
  /// The max upload size for this type.
  core.String? size;

  /// The file type.
  core.String? type;

  AboutMaxUploadSizes({
    this.size,
    this.type,
  });

  AboutMaxUploadSizes.fromJson(core.Map json_)
      : this(
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

class AboutQuotaBytesByService {
  /// The storage quota bytes used by the service.
  core.String? bytesUsed;

  /// The service's name, e.g. DRIVE, GMAIL, or PHOTOS.
  core.String? serviceName;

  AboutQuotaBytesByService({
    this.bytesUsed,
    this.serviceName,
  });

  AboutQuotaBytesByService.fromJson(core.Map json_)
      : this(
          bytesUsed: json_.containsKey('bytesUsed')
              ? json_['bytesUsed'] as core.String
              : null,
          serviceName: json_.containsKey('serviceName')
              ? json_['serviceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesUsed != null) 'bytesUsed': bytesUsed!,
        if (serviceName != null) 'serviceName': serviceName!,
      };
}

class AboutTeamDriveThemes {
  /// Deprecated - use driveThemes/backgroundImageLink instead.
  core.String? backgroundImageLink;

  /// Deprecated - use driveThemes/colorRgb instead.
  core.String? colorRgb;

  /// Deprecated - use driveThemes/id instead.
  core.String? id;

  AboutTeamDriveThemes({
    this.backgroundImageLink,
    this.colorRgb,
    this.id,
  });

  AboutTeamDriveThemes.fromJson(core.Map json_)
      : this(
          backgroundImageLink: json_.containsKey('backgroundImageLink')
              ? json_['backgroundImageLink'] as core.String
              : null,
          colorRgb: json_.containsKey('colorRgb')
              ? json_['colorRgb'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundImageLink != null)
          'backgroundImageLink': backgroundImageLink!,
        if (colorRgb != null) 'colorRgb': colorRgb!,
        if (id != null) 'id': id!,
      };
}

/// An item with user information and settings.
class About {
  /// Information about supported additional roles per file type.
  ///
  /// The most specific type takes precedence.
  core.List<AboutAdditionalRoleInfo>? additionalRoleInfo;

  /// Whether the user can create shared drives.
  core.bool? canCreateDrives;

  /// Deprecated - use canCreateDrives instead.
  core.bool? canCreateTeamDrives;

  /// The domain sharing policy for the current user.
  ///
  /// Possible values are:
  /// - allowed
  /// - allowedWithWarning
  /// - incomingOnly
  /// - disallowed
  core.String? domainSharingPolicy;

  /// A list of themes that are supported for shared drives.
  core.List<AboutDriveThemes>? driveThemes;

  /// The ETag of the item.
  core.String? etag;

  /// The allowable export formats.
  core.List<AboutExportFormats>? exportFormats;

  /// List of additional features enabled on this account.
  core.List<AboutFeatures>? features;

  /// The palette of allowable folder colors as RGB hex strings.
  core.List<core.String>? folderColorPalette;

  /// The allowable import formats.
  core.List<AboutImportFormats>? importFormats;

  /// A boolean indicating whether the authenticated app is installed by the
  /// authenticated user.
  core.bool? isCurrentAppInstalled;

  /// This is always drive#about.
  core.String? kind;

  /// The user's language or locale code, as defined by BCP 47, with some
  /// extensions from Unicode's LDML format
  /// (http://www.unicode.org/reports/tr35/).
  core.String? languageCode;

  /// The largest change id.
  core.String? largestChangeId;

  /// List of max upload sizes for each file type.
  ///
  /// The most specific type takes precedence.
  core.List<AboutMaxUploadSizes>? maxUploadSizes;

  /// The name of the current user.
  core.String? name;

  /// The current user's ID as visible in the permissions collection.
  core.String? permissionId;

  /// The amount of storage quota used by different Google services.
  core.List<AboutQuotaBytesByService>? quotaBytesByService;

  /// The total number of quota bytes.
  ///
  /// This is only relevant when quotaType is LIMITED.
  core.String? quotaBytesTotal;

  /// The number of quota bytes used by Google Drive.
  core.String? quotaBytesUsed;

  /// The number of quota bytes used by all Google apps (Drive, Picasa, etc.).
  core.String? quotaBytesUsedAggregate;

  /// The number of quota bytes used by trashed items.
  core.String? quotaBytesUsedInTrash;

  /// The type of the user's storage quota.
  ///
  /// Possible values are:
  /// - LIMITED
  /// - UNLIMITED
  core.String? quotaType;

  /// The number of remaining change ids, limited to no more than 2500.
  core.String? remainingChangeIds;

  /// The id of the root folder.
  core.String? rootFolderId;

  /// A link back to this item.
  core.String? selfLink;

  /// Deprecated - use driveThemes instead.
  core.List<AboutTeamDriveThemes>? teamDriveThemes;

  /// The authenticated user.
  User? user;

  About({
    this.additionalRoleInfo,
    this.canCreateDrives,
    this.canCreateTeamDrives,
    this.domainSharingPolicy,
    this.driveThemes,
    this.etag,
    this.exportFormats,
    this.features,
    this.folderColorPalette,
    this.importFormats,
    this.isCurrentAppInstalled,
    this.kind,
    this.languageCode,
    this.largestChangeId,
    this.maxUploadSizes,
    this.name,
    this.permissionId,
    this.quotaBytesByService,
    this.quotaBytesTotal,
    this.quotaBytesUsed,
    this.quotaBytesUsedAggregate,
    this.quotaBytesUsedInTrash,
    this.quotaType,
    this.remainingChangeIds,
    this.rootFolderId,
    this.selfLink,
    this.teamDriveThemes,
    this.user,
  });

  About.fromJson(core.Map json_)
      : this(
          additionalRoleInfo: json_.containsKey('additionalRoleInfo')
              ? (json_['additionalRoleInfo'] as core.List)
                  .map((value) => AboutAdditionalRoleInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          canCreateDrives: json_.containsKey('canCreateDrives')
              ? json_['canCreateDrives'] as core.bool
              : null,
          canCreateTeamDrives: json_.containsKey('canCreateTeamDrives')
              ? json_['canCreateTeamDrives'] as core.bool
              : null,
          domainSharingPolicy: json_.containsKey('domainSharingPolicy')
              ? json_['domainSharingPolicy'] as core.String
              : null,
          driveThemes: json_.containsKey('driveThemes')
              ? (json_['driveThemes'] as core.List)
                  .map((value) => AboutDriveThemes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          exportFormats: json_.containsKey('exportFormats')
              ? (json_['exportFormats'] as core.List)
                  .map((value) => AboutExportFormats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => AboutFeatures.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          folderColorPalette: json_.containsKey('folderColorPalette')
              ? (json_['folderColorPalette'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          importFormats: json_.containsKey('importFormats')
              ? (json_['importFormats'] as core.List)
                  .map((value) => AboutImportFormats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          isCurrentAppInstalled: json_.containsKey('isCurrentAppInstalled')
              ? json_['isCurrentAppInstalled'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          largestChangeId: json_.containsKey('largestChangeId')
              ? json_['largestChangeId'] as core.String
              : null,
          maxUploadSizes: json_.containsKey('maxUploadSizes')
              ? (json_['maxUploadSizes'] as core.List)
                  .map((value) => AboutMaxUploadSizes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          permissionId: json_.containsKey('permissionId')
              ? json_['permissionId'] as core.String
              : null,
          quotaBytesByService: json_.containsKey('quotaBytesByService')
              ? (json_['quotaBytesByService'] as core.List)
                  .map((value) => AboutQuotaBytesByService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quotaBytesTotal: json_.containsKey('quotaBytesTotal')
              ? json_['quotaBytesTotal'] as core.String
              : null,
          quotaBytesUsed: json_.containsKey('quotaBytesUsed')
              ? json_['quotaBytesUsed'] as core.String
              : null,
          quotaBytesUsedAggregate: json_.containsKey('quotaBytesUsedAggregate')
              ? json_['quotaBytesUsedAggregate'] as core.String
              : null,
          quotaBytesUsedInTrash: json_.containsKey('quotaBytesUsedInTrash')
              ? json_['quotaBytesUsedInTrash'] as core.String
              : null,
          quotaType: json_.containsKey('quotaType')
              ? json_['quotaType'] as core.String
              : null,
          remainingChangeIds: json_.containsKey('remainingChangeIds')
              ? json_['remainingChangeIds'] as core.String
              : null,
          rootFolderId: json_.containsKey('rootFolderId')
              ? json_['rootFolderId'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          teamDriveThemes: json_.containsKey('teamDriveThemes')
              ? (json_['teamDriveThemes'] as core.List)
                  .map((value) => AboutTeamDriveThemes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          user: json_.containsKey('user')
              ? User.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalRoleInfo != null)
          'additionalRoleInfo': additionalRoleInfo!,
        if (canCreateDrives != null) 'canCreateDrives': canCreateDrives!,
        if (canCreateTeamDrives != null)
          'canCreateTeamDrives': canCreateTeamDrives!,
        if (domainSharingPolicy != null)
          'domainSharingPolicy': domainSharingPolicy!,
        if (driveThemes != null) 'driveThemes': driveThemes!,
        if (etag != null) 'etag': etag!,
        if (exportFormats != null) 'exportFormats': exportFormats!,
        if (features != null) 'features': features!,
        if (folderColorPalette != null)
          'folderColorPalette': folderColorPalette!,
        if (importFormats != null) 'importFormats': importFormats!,
        if (isCurrentAppInstalled != null)
          'isCurrentAppInstalled': isCurrentAppInstalled!,
        if (kind != null) 'kind': kind!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (largestChangeId != null) 'largestChangeId': largestChangeId!,
        if (maxUploadSizes != null) 'maxUploadSizes': maxUploadSizes!,
        if (name != null) 'name': name!,
        if (permissionId != null) 'permissionId': permissionId!,
        if (quotaBytesByService != null)
          'quotaBytesByService': quotaBytesByService!,
        if (quotaBytesTotal != null) 'quotaBytesTotal': quotaBytesTotal!,
        if (quotaBytesUsed != null) 'quotaBytesUsed': quotaBytesUsed!,
        if (quotaBytesUsedAggregate != null)
          'quotaBytesUsedAggregate': quotaBytesUsedAggregate!,
        if (quotaBytesUsedInTrash != null)
          'quotaBytesUsedInTrash': quotaBytesUsedInTrash!,
        if (quotaType != null) 'quotaType': quotaType!,
        if (remainingChangeIds != null)
          'remainingChangeIds': remainingChangeIds!,
        if (rootFolderId != null) 'rootFolderId': rootFolderId!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (teamDriveThemes != null) 'teamDriveThemes': teamDriveThemes!,
        if (user != null) 'user': user!,
      };
}

class AppIcons {
  /// Category of the icon.
  ///
  /// Allowed values are:
  /// - application - icon for the application
  /// - document - icon for a file associated with the app
  /// - documentShared - icon for a shared file associated with the app
  core.String? category;

  /// URL for the icon.
  core.String? iconUrl;

  /// Size of the icon.
  ///
  /// Represented as the maximum of the width and height.
  core.int? size;

  AppIcons({
    this.category,
    this.iconUrl,
    this.size,
  });

  AppIcons.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          iconUrl: json_.containsKey('iconUrl')
              ? json_['iconUrl'] as core.String
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (size != null) 'size': size!,
      };
}

/// The apps resource provides a list of the apps that a user has installed,
/// with information about each app's supported MIME types, file extensions, and
/// other details.
class App {
  /// Whether the app is authorized to access data on the user's Drive.
  core.bool? authorized;

  /// The template url to create a new file with this app in a given folder.
  ///
  /// The template will contain {folderId} to be replaced by the folder to
  /// create the new file in.
  core.String? createInFolderTemplate;

  /// The url to create a new file with this app.
  core.String? createUrl;

  /// Whether the app has drive-wide scope.
  ///
  /// An app with drive-wide scope can access all files in the user's drive.
  core.bool? hasDriveWideScope;

  /// The various icons for the app.
  core.List<AppIcons>? icons;

  /// The ID of the app.
  core.String? id;

  /// Whether the app is installed.
  core.bool? installed;

  /// This is always drive#app.
  core.String? kind;

  /// A long description of the app.
  core.String? longDescription;

  /// The name of the app.
  core.String? name;

  /// The type of object this app creates (e.g. Chart).
  ///
  /// If empty, the app name should be used instead.
  core.String? objectType;

  /// The template url for opening files with this app.
  ///
  /// The template will contain {ids} and/or {exportIds} to be replaced by the
  /// actual file ids. See Open Files for the full documentation.
  core.String? openUrlTemplate;

  /// The list of primary file extensions.
  core.List<core.String>? primaryFileExtensions;

  /// The list of primary mime types.
  core.List<core.String>? primaryMimeTypes;

  /// The ID of the product listing for this app.
  core.String? productId;

  /// A link to the product listing for this app.
  core.String? productUrl;

  /// The list of secondary file extensions.
  core.List<core.String>? secondaryFileExtensions;

  /// The list of secondary mime types.
  core.List<core.String>? secondaryMimeTypes;

  /// A short description of the app.
  core.String? shortDescription;

  /// Whether this app supports creating new objects.
  core.bool? supportsCreate;

  /// Whether this app supports importing from Docs Editors.
  core.bool? supportsImport;

  /// Whether this app supports opening more than one file.
  core.bool? supportsMultiOpen;

  /// Whether this app supports creating new files when offline.
  core.bool? supportsOfflineCreate;

  /// Whether the app is selected as the default handler for the types it
  /// supports.
  core.bool? useByDefault;

  App({
    this.authorized,
    this.createInFolderTemplate,
    this.createUrl,
    this.hasDriveWideScope,
    this.icons,
    this.id,
    this.installed,
    this.kind,
    this.longDescription,
    this.name,
    this.objectType,
    this.openUrlTemplate,
    this.primaryFileExtensions,
    this.primaryMimeTypes,
    this.productId,
    this.productUrl,
    this.secondaryFileExtensions,
    this.secondaryMimeTypes,
    this.shortDescription,
    this.supportsCreate,
    this.supportsImport,
    this.supportsMultiOpen,
    this.supportsOfflineCreate,
    this.useByDefault,
  });

  App.fromJson(core.Map json_)
      : this(
          authorized: json_.containsKey('authorized')
              ? json_['authorized'] as core.bool
              : null,
          createInFolderTemplate: json_.containsKey('createInFolderTemplate')
              ? json_['createInFolderTemplate'] as core.String
              : null,
          createUrl: json_.containsKey('createUrl')
              ? json_['createUrl'] as core.String
              : null,
          hasDriveWideScope: json_.containsKey('hasDriveWideScope')
              ? json_['hasDriveWideScope'] as core.bool
              : null,
          icons: json_.containsKey('icons')
              ? (json_['icons'] as core.List)
                  .map((value) => AppIcons.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          installed: json_.containsKey('installed')
              ? json_['installed'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          longDescription: json_.containsKey('longDescription')
              ? json_['longDescription'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          objectType: json_.containsKey('objectType')
              ? json_['objectType'] as core.String
              : null,
          openUrlTemplate: json_.containsKey('openUrlTemplate')
              ? json_['openUrlTemplate'] as core.String
              : null,
          primaryFileExtensions: json_.containsKey('primaryFileExtensions')
              ? (json_['primaryFileExtensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          primaryMimeTypes: json_.containsKey('primaryMimeTypes')
              ? (json_['primaryMimeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productId: json_.containsKey('productId')
              ? json_['productId'] as core.String
              : null,
          productUrl: json_.containsKey('productUrl')
              ? json_['productUrl'] as core.String
              : null,
          secondaryFileExtensions: json_.containsKey('secondaryFileExtensions')
              ? (json_['secondaryFileExtensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          secondaryMimeTypes: json_.containsKey('secondaryMimeTypes')
              ? (json_['secondaryMimeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shortDescription: json_.containsKey('shortDescription')
              ? json_['shortDescription'] as core.String
              : null,
          supportsCreate: json_.containsKey('supportsCreate')
              ? json_['supportsCreate'] as core.bool
              : null,
          supportsImport: json_.containsKey('supportsImport')
              ? json_['supportsImport'] as core.bool
              : null,
          supportsMultiOpen: json_.containsKey('supportsMultiOpen')
              ? json_['supportsMultiOpen'] as core.bool
              : null,
          supportsOfflineCreate: json_.containsKey('supportsOfflineCreate')
              ? json_['supportsOfflineCreate'] as core.bool
              : null,
          useByDefault: json_.containsKey('useByDefault')
              ? json_['useByDefault'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorized != null) 'authorized': authorized!,
        if (createInFolderTemplate != null)
          'createInFolderTemplate': createInFolderTemplate!,
        if (createUrl != null) 'createUrl': createUrl!,
        if (hasDriveWideScope != null) 'hasDriveWideScope': hasDriveWideScope!,
        if (icons != null) 'icons': icons!,
        if (id != null) 'id': id!,
        if (installed != null) 'installed': installed!,
        if (kind != null) 'kind': kind!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (name != null) 'name': name!,
        if (objectType != null) 'objectType': objectType!,
        if (openUrlTemplate != null) 'openUrlTemplate': openUrlTemplate!,
        if (primaryFileExtensions != null)
          'primaryFileExtensions': primaryFileExtensions!,
        if (primaryMimeTypes != null) 'primaryMimeTypes': primaryMimeTypes!,
        if (productId != null) 'productId': productId!,
        if (productUrl != null) 'productUrl': productUrl!,
        if (secondaryFileExtensions != null)
          'secondaryFileExtensions': secondaryFileExtensions!,
        if (secondaryMimeTypes != null)
          'secondaryMimeTypes': secondaryMimeTypes!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (supportsCreate != null) 'supportsCreate': supportsCreate!,
        if (supportsImport != null) 'supportsImport': supportsImport!,
        if (supportsMultiOpen != null) 'supportsMultiOpen': supportsMultiOpen!,
        if (supportsOfflineCreate != null)
          'supportsOfflineCreate': supportsOfflineCreate!,
        if (useByDefault != null) 'useByDefault': useByDefault!,
      };
}

/// A list of third-party applications which the user has installed or given
/// access to Google Drive.
class AppList {
  /// List of app IDs that the user has specified to use by default.
  ///
  /// The list is in reverse-priority order (lowest to highest).
  core.List<core.String>? defaultAppIds;

  /// The ETag of the list.
  core.String? etag;

  /// The list of apps.
  core.List<App>? items;

  /// This is always drive#appList.
  core.String? kind;

  /// A link back to this list.
  core.String? selfLink;

  AppList({
    this.defaultAppIds,
    this.etag,
    this.items,
    this.kind,
    this.selfLink,
  });

  AppList.fromJson(core.Map json_)
      : this(
          defaultAppIds: json_.containsKey('defaultAppIds')
              ? (json_['defaultAppIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => App.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultAppIds != null) 'defaultAppIds': defaultAppIds!,
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// Representation of a change to a file or shared drive.
class Change {
  /// The type of the change.
  ///
  /// Possible values are file and drive.
  core.String? changeType;

  /// Whether the file or shared drive has been removed from this list of
  /// changes, for example by deletion or loss of access.
  core.bool? deleted;

  /// The updated state of the shared drive.
  ///
  /// Present if the changeType is drive, the user is still a member of the
  /// shared drive, and the shared drive has not been deleted.
  Drive? drive;

  /// The ID of the shared drive associated with this change.
  core.String? driveId;

  /// The updated state of the file.
  ///
  /// Present if the type is file and the file has not been removed from this
  /// list of changes.
  File? file;

  /// The ID of the file associated with this change.
  core.String? fileId;

  /// The ID of the change.
  core.String? id;

  /// This is always drive#change.
  core.String? kind;

  /// The time of this modification.
  core.DateTime? modificationDate;

  /// A link back to this change.
  core.String? selfLink;

  /// Deprecated - use drive instead.
  TeamDrive? teamDrive;

  /// Deprecated - use driveId instead.
  core.String? teamDriveId;

  /// Deprecated - use changeType instead.
  core.String? type;

  Change({
    this.changeType,
    this.deleted,
    this.drive,
    this.driveId,
    this.file,
    this.fileId,
    this.id,
    this.kind,
    this.modificationDate,
    this.selfLink,
    this.teamDrive,
    this.teamDriveId,
    this.type,
  });

  Change.fromJson(core.Map json_)
      : this(
          changeType: json_.containsKey('changeType')
              ? json_['changeType'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          drive: json_.containsKey('drive')
              ? Drive.fromJson(
                  json_['drive'] as core.Map<core.String, core.dynamic>)
              : null,
          driveId: json_.containsKey('driveId')
              ? json_['driveId'] as core.String
              : null,
          file: json_.containsKey('file')
              ? File.fromJson(
                  json_['file'] as core.Map<core.String, core.dynamic>)
              : null,
          fileId: json_.containsKey('fileId')
              ? json_['fileId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          modificationDate: json_.containsKey('modificationDate')
              ? core.DateTime.parse(json_['modificationDate'] as core.String)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          teamDrive: json_.containsKey('teamDrive')
              ? TeamDrive.fromJson(
                  json_['teamDrive'] as core.Map<core.String, core.dynamic>)
              : null,
          teamDriveId: json_.containsKey('teamDriveId')
              ? json_['teamDriveId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeType != null) 'changeType': changeType!,
        if (deleted != null) 'deleted': deleted!,
        if (drive != null) 'drive': drive!,
        if (driveId != null) 'driveId': driveId!,
        if (file != null) 'file': file!,
        if (fileId != null) 'fileId': fileId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (modificationDate != null)
          'modificationDate': modificationDate!.toUtc().toIso8601String(),
        if (selfLink != null) 'selfLink': selfLink!,
        if (teamDrive != null) 'teamDrive': teamDrive!,
        if (teamDriveId != null) 'teamDriveId': teamDriveId!,
        if (type != null) 'type': type!,
      };
}

/// A list of changes for a user.
class ChangeList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of changes.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<Change>? items;

  /// This is always drive#changeList.
  core.String? kind;

  /// The current largest change ID.
  core.String? largestChangeId;

  /// The starting page token for future changes.
  ///
  /// This will be present only if the end of the current changes list has been
  /// reached.
  core.String? newStartPageToken;

  /// A link to the next page of changes.
  core.String? nextLink;

  /// The page token for the next page of changes.
  ///
  /// This will be absent if the end of the changes list has been reached. If
  /// the token is rejected for any reason, it should be discarded, and
  /// pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  ChangeList({
    this.etag,
    this.items,
    this.kind,
    this.largestChangeId,
    this.newStartPageToken,
    this.nextLink,
    this.nextPageToken,
    this.selfLink,
  });

  ChangeList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Change.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          largestChangeId: json_.containsKey('largestChangeId')
              ? json_['largestChangeId'] as core.String
              : null,
          newStartPageToken: json_.containsKey('newStartPageToken')
              ? json_['newStartPageToken'] as core.String
              : null,
          nextLink: json_.containsKey('nextLink')
              ? json_['nextLink'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (largestChangeId != null) 'largestChangeId': largestChangeId!,
        if (newStartPageToken != null) 'newStartPageToken': newStartPageToken!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// An notification channel used to watch for resource changes.
typedef Channel = $Channel;

/// A list of children of a file.
class ChildList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of children.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<ChildReference>? items;

  /// This is always drive#childList.
  core.String? kind;

  /// A link to the next page of children.
  core.String? nextLink;

  /// The page token for the next page of children.
  ///
  /// This will be absent if the end of the children list has been reached. If
  /// the token is rejected for any reason, it should be discarded, and
  /// pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  ChildList({
    this.etag,
    this.items,
    this.kind,
    this.nextLink,
    this.nextPageToken,
    this.selfLink,
  });

  ChildList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ChildReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextLink: json_.containsKey('nextLink')
              ? json_['nextLink'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A reference to a folder's child.
class ChildReference {
  /// A link to the child.
  core.String? childLink;

  /// The ID of the child.
  core.String? id;

  /// This is always drive#childReference.
  core.String? kind;

  /// A link back to this reference.
  core.String? selfLink;

  ChildReference({
    this.childLink,
    this.id,
    this.kind,
    this.selfLink,
  });

  ChildReference.fromJson(core.Map json_)
      : this(
          childLink: json_.containsKey('childLink')
              ? json_['childLink'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childLink != null) 'childLink': childLink!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// The context of the file which is being commented on.
class CommentContext {
  /// The MIME type of the context snippet.
  core.String? type;

  /// Data representation of the segment of the file being commented on.
  ///
  /// In the case of a text file for example, this would be the actual text that
  /// the comment is about.
  core.String? value;

  CommentContext({
    this.type,
    this.value,
  });

  CommentContext.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A comment on a file in Google Drive.
class Comment {
  /// A region of the document represented as a JSON string.
  ///
  /// For details on defining anchor properties, refer to Add comments and
  /// replies.
  core.String? anchor;

  /// The author of the comment.
  ///
  /// The author's email address and permission ID will not be populated.
  User? author;

  /// The ID of the comment.
  core.String? commentId;

  /// The plain text content used to create this comment.
  ///
  /// This is not HTML safe and should only be used as a starting point to make
  /// edits to a comment's content.
  core.String? content;

  /// The context of the file which is being commented on.
  CommentContext? context;

  /// The date when this comment was first created.
  core.DateTime? createdDate;

  /// Whether this comment has been deleted.
  ///
  /// If a comment has been deleted the content will be cleared and this will
  /// only represent a comment that once existed.
  core.bool? deleted;

  /// The file which this comment is addressing.
  core.String? fileId;

  /// The title of the file which this comment is addressing.
  core.String? fileTitle;

  /// HTML formatted content for this comment.
  core.String? htmlContent;

  /// This is always drive#comment.
  core.String? kind;

  /// The date when this comment or any of its replies were last modified.
  core.DateTime? modifiedDate;

  /// Replies to this post.
  core.List<CommentReply>? replies;

  /// A link back to this comment.
  core.String? selfLink;

  /// The status of this comment.
  ///
  /// Status can be changed by posting a reply to a comment with the desired
  /// status.
  /// - "open" - The comment is still open.
  /// - "resolved" - The comment has been resolved by one of its replies.
  core.String? status;

  Comment({
    this.anchor,
    this.author,
    this.commentId,
    this.content,
    this.context,
    this.createdDate,
    this.deleted,
    this.fileId,
    this.fileTitle,
    this.htmlContent,
    this.kind,
    this.modifiedDate,
    this.replies,
    this.selfLink,
    this.status,
  });

  Comment.fromJson(core.Map json_)
      : this(
          anchor: json_.containsKey('anchor')
              ? json_['anchor'] as core.String
              : null,
          author: json_.containsKey('author')
              ? User.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>)
              : null,
          commentId: json_.containsKey('commentId')
              ? json_['commentId'] as core.String
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          context: json_.containsKey('context')
              ? CommentContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          createdDate: json_.containsKey('createdDate')
              ? core.DateTime.parse(json_['createdDate'] as core.String)
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          fileId: json_.containsKey('fileId')
              ? json_['fileId'] as core.String
              : null,
          fileTitle: json_.containsKey('fileTitle')
              ? json_['fileTitle'] as core.String
              : null,
          htmlContent: json_.containsKey('htmlContent')
              ? json_['htmlContent'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          modifiedDate: json_.containsKey('modifiedDate')
              ? core.DateTime.parse(json_['modifiedDate'] as core.String)
              : null,
          replies: json_.containsKey('replies')
              ? (json_['replies'] as core.List)
                  .map((value) => CommentReply.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anchor != null) 'anchor': anchor!,
        if (author != null) 'author': author!,
        if (commentId != null) 'commentId': commentId!,
        if (content != null) 'content': content!,
        if (context != null) 'context': context!,
        if (createdDate != null)
          'createdDate': createdDate!.toUtc().toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (fileId != null) 'fileId': fileId!,
        if (fileTitle != null) 'fileTitle': fileTitle!,
        if (htmlContent != null) 'htmlContent': htmlContent!,
        if (kind != null) 'kind': kind!,
        if (modifiedDate != null)
          'modifiedDate': modifiedDate!.toUtc().toIso8601String(),
        if (replies != null) 'replies': replies!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
      };
}

/// A list of comments on a file in Google Drive.
class CommentList {
  /// The list of comments.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<Comment>? items;

  /// This is always drive#commentList.
  core.String? kind;

  /// A link to the next page of comments.
  core.String? nextLink;

  /// The page token for the next page of comments.
  ///
  /// This will be absent if the end of the comments list has been reached. If
  /// the token is rejected for any reason, it should be discarded, and
  /// pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  CommentList({
    this.items,
    this.kind,
    this.nextLink,
    this.nextPageToken,
    this.selfLink,
  });

  CommentList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextLink: json_.containsKey('nextLink')
              ? json_['nextLink'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A comment on a file in Google Drive.
class CommentReply {
  /// The author of the reply.
  ///
  /// The author's email address and permission ID will not be populated.
  User? author;

  /// The plain text content used to create this reply.
  ///
  /// This is not HTML safe and should only be used as a starting point to make
  /// edits to a reply's content. This field is required on inserts if no verb
  /// is specified (resolve/reopen).
  core.String? content;

  /// The date when this reply was first created.
  core.DateTime? createdDate;

  /// Whether this reply has been deleted.
  ///
  /// If a reply has been deleted the content will be cleared and this will only
  /// represent a reply that once existed.
  core.bool? deleted;

  /// HTML formatted content for this reply.
  core.String? htmlContent;

  /// This is always drive#commentReply.
  core.String? kind;

  /// The date when this reply was last modified.
  core.DateTime? modifiedDate;

  /// The ID of the reply.
  core.String? replyId;

  /// The action this reply performed to the parent comment.
  ///
  /// When creating a new reply this is the action to be perform to the parent
  /// comment. Possible values are:
  /// - "resolve" - To resolve a comment.
  /// - "reopen" - To reopen (un-resolve) a comment.
  core.String? verb;

  CommentReply({
    this.author,
    this.content,
    this.createdDate,
    this.deleted,
    this.htmlContent,
    this.kind,
    this.modifiedDate,
    this.replyId,
    this.verb,
  });

  CommentReply.fromJson(core.Map json_)
      : this(
          author: json_.containsKey('author')
              ? User.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>)
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          createdDate: json_.containsKey('createdDate')
              ? core.DateTime.parse(json_['createdDate'] as core.String)
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          htmlContent: json_.containsKey('htmlContent')
              ? json_['htmlContent'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          modifiedDate: json_.containsKey('modifiedDate')
              ? core.DateTime.parse(json_['modifiedDate'] as core.String)
              : null,
          replyId: json_.containsKey('replyId')
              ? json_['replyId'] as core.String
              : null,
          verb: json_.containsKey('verb') ? json_['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (content != null) 'content': content!,
        if (createdDate != null)
          'createdDate': createdDate!.toUtc().toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (htmlContent != null) 'htmlContent': htmlContent!,
        if (kind != null) 'kind': kind!,
        if (modifiedDate != null)
          'modifiedDate': modifiedDate!.toUtc().toIso8601String(),
        if (replyId != null) 'replyId': replyId!,
        if (verb != null) 'verb': verb!,
      };
}

/// A list of replies to a comment on a file in Google Drive.
class CommentReplyList {
  /// The list of replies.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<CommentReply>? items;

  /// This is always drive#commentReplyList.
  core.String? kind;

  /// A link to the next page of replies.
  core.String? nextLink;

  /// The page token for the next page of replies.
  ///
  /// This will be absent if the end of the replies list has been reached. If
  /// the token is rejected for any reason, it should be discarded, and
  /// pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  CommentReplyList({
    this.items,
    this.kind,
    this.nextLink,
    this.nextPageToken,
    this.selfLink,
  });

  CommentReplyList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => CommentReply.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextLink: json_.containsKey('nextLink')
              ? json_['nextLink'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A restriction for accessing the content of the file.
class ContentRestriction {
  /// Whether the content of the file is read-only.
  ///
  /// If a file is read-only, a new revision of the file may not be added,
  /// comments may not be added or modified, and the title of the file may not
  /// be modified.
  core.bool? readOnly;

  /// Reason for why the content of the file is restricted.
  ///
  /// This is only mutable on requests that also set readOnly=true.
  core.String? reason;

  /// The user who set the content restriction.
  ///
  /// Only populated if readOnly is true.
  User? restrictingUser;

  /// The time at which the content restriction was set (formatted RFC 3339
  /// timestamp).
  ///
  /// Only populated if readOnly is true.
  core.DateTime? restrictionDate;

  /// The type of the content restriction.
  ///
  /// Currently the only possible value is globalContentRestriction.
  core.String? type;

  ContentRestriction({
    this.readOnly,
    this.reason,
    this.restrictingUser,
    this.restrictionDate,
    this.type,
  });

  ContentRestriction.fromJson(core.Map json_)
      : this(
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          restrictingUser: json_.containsKey('restrictingUser')
              ? User.fromJson(json_['restrictingUser']
                  as core.Map<core.String, core.dynamic>)
              : null,
          restrictionDate: json_.containsKey('restrictionDate')
              ? core.DateTime.parse(json_['restrictionDate'] as core.String)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readOnly != null) 'readOnly': readOnly!,
        if (reason != null) 'reason': reason!,
        if (restrictingUser != null) 'restrictingUser': restrictingUser!,
        if (restrictionDate != null)
          'restrictionDate': restrictionDate!.toUtc().toIso8601String(),
        if (type != null) 'type': type!,
      };
}

/// An image file and cropping parameters from which a background image for this
/// shared drive is set.
///
/// This is a write only field; it can only be set on drive.drives.update
/// requests that don't set themeId. When specified, all fields of the
/// backgroundImageFile must be set.
class DriveBackgroundImageFile {
  /// The ID of an image file in Google Drive to use for the background image.
  core.String? id;

  /// The width of the cropped image in the closed range of 0 to 1.
  ///
  /// This value represents the width of the cropped image divided by the width
  /// of the entire image. The height is computed by applying a width to height
  /// aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels
  /// wide and 144 pixels high.
  core.double? width;

  /// The X coordinate of the upper left corner of the cropping area in the
  /// background image.
  ///
  /// This is a value in the closed range of 0 to 1. This value represents the
  /// horizontal distance from the left side of the entire image to the left
  /// side of the cropping area divided by the width of the entire image.
  core.double? xCoordinate;

  /// The Y coordinate of the upper left corner of the cropping area in the
  /// background image.
  ///
  /// This is a value in the closed range of 0 to 1. This value represents the
  /// vertical distance from the top side of the entire image to the top side of
  /// the cropping area divided by the height of the entire image.
  core.double? yCoordinate;

  DriveBackgroundImageFile({
    this.id,
    this.width,
    this.xCoordinate,
    this.yCoordinate,
  });

  DriveBackgroundImageFile.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          width: json_.containsKey('width')
              ? (json_['width'] as core.num).toDouble()
              : null,
          xCoordinate: json_.containsKey('xCoordinate')
              ? (json_['xCoordinate'] as core.num).toDouble()
              : null,
          yCoordinate: json_.containsKey('yCoordinate')
              ? (json_['yCoordinate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (width != null) 'width': width!,
        if (xCoordinate != null) 'xCoordinate': xCoordinate!,
        if (yCoordinate != null) 'yCoordinate': yCoordinate!,
      };
}

/// Capabilities the current user has on this shared drive.
class DriveCapabilities {
  /// Whether the current user can add children to folders in this shared drive.
  core.bool? canAddChildren;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this shared drive.
  core.bool? canChangeCopyRequiresWriterPermissionRestriction;

  /// Whether the current user can change the domainUsersOnly restriction of
  /// this shared drive.
  core.bool? canChangeDomainUsersOnlyRestriction;

  /// Whether the current user can change the background of this shared drive.
  core.bool? canChangeDriveBackground;

  /// Whether the current user can change the driveMembersOnly restriction of
  /// this shared drive.
  core.bool? canChangeDriveMembersOnlyRestriction;

  /// Whether the current user can comment on files in this shared drive.
  core.bool? canComment;

  /// Whether the current user can copy files in this shared drive.
  core.bool? canCopy;

  /// Whether the current user can delete children from folders in this shared
  /// drive.
  core.bool? canDeleteChildren;

  /// Whether the current user can delete this shared drive.
  ///
  /// Attempting to delete the shared drive may still fail if there are
  /// untrashed items inside the shared drive.
  core.bool? canDeleteDrive;

  /// Whether the current user can download files in this shared drive.
  core.bool? canDownload;

  /// Whether the current user can edit files in this shared drive
  core.bool? canEdit;

  /// Whether the current user can list the children of folders in this shared
  /// drive.
  core.bool? canListChildren;

  /// Whether the current user can add members to this shared drive or remove
  /// them or change their role.
  core.bool? canManageMembers;

  /// Whether the current user can read the revisions resource of files in this
  /// shared drive.
  core.bool? canReadRevisions;

  /// Whether the current user can rename files or folders in this shared drive.
  core.bool? canRename;

  /// Whether the current user can rename this shared drive.
  core.bool? canRenameDrive;

  /// Whether the current user can reset the shared drive restrictions to
  /// defaults.
  core.bool? canResetDriveRestrictions;

  /// Whether the current user can share files or folders in this shared drive.
  core.bool? canShare;

  /// Whether the current user can trash children from folders in this shared
  /// drive.
  core.bool? canTrashChildren;

  DriveCapabilities({
    this.canAddChildren,
    this.canChangeCopyRequiresWriterPermissionRestriction,
    this.canChangeDomainUsersOnlyRestriction,
    this.canChangeDriveBackground,
    this.canChangeDriveMembersOnlyRestriction,
    this.canComment,
    this.canCopy,
    this.canDeleteChildren,
    this.canDeleteDrive,
    this.canDownload,
    this.canEdit,
    this.canListChildren,
    this.canManageMembers,
    this.canReadRevisions,
    this.canRename,
    this.canRenameDrive,
    this.canResetDriveRestrictions,
    this.canShare,
    this.canTrashChildren,
  });

  DriveCapabilities.fromJson(core.Map json_)
      : this(
          canAddChildren: json_.containsKey('canAddChildren')
              ? json_['canAddChildren'] as core.bool
              : null,
          canChangeCopyRequiresWriterPermissionRestriction: json_.containsKey(
                  'canChangeCopyRequiresWriterPermissionRestriction')
              ? json_['canChangeCopyRequiresWriterPermissionRestriction']
                  as core.bool
              : null,
          canChangeDomainUsersOnlyRestriction:
              json_.containsKey('canChangeDomainUsersOnlyRestriction')
                  ? json_['canChangeDomainUsersOnlyRestriction'] as core.bool
                  : null,
          canChangeDriveBackground:
              json_.containsKey('canChangeDriveBackground')
                  ? json_['canChangeDriveBackground'] as core.bool
                  : null,
          canChangeDriveMembersOnlyRestriction:
              json_.containsKey('canChangeDriveMembersOnlyRestriction')
                  ? json_['canChangeDriveMembersOnlyRestriction'] as core.bool
                  : null,
          canComment: json_.containsKey('canComment')
              ? json_['canComment'] as core.bool
              : null,
          canCopy: json_.containsKey('canCopy')
              ? json_['canCopy'] as core.bool
              : null,
          canDeleteChildren: json_.containsKey('canDeleteChildren')
              ? json_['canDeleteChildren'] as core.bool
              : null,
          canDeleteDrive: json_.containsKey('canDeleteDrive')
              ? json_['canDeleteDrive'] as core.bool
              : null,
          canDownload: json_.containsKey('canDownload')
              ? json_['canDownload'] as core.bool
              : null,
          canEdit: json_.containsKey('canEdit')
              ? json_['canEdit'] as core.bool
              : null,
          canListChildren: json_.containsKey('canListChildren')
              ? json_['canListChildren'] as core.bool
              : null,
          canManageMembers: json_.containsKey('canManageMembers')
              ? json_['canManageMembers'] as core.bool
              : null,
          canReadRevisions: json_.containsKey('canReadRevisions')
              ? json_['canReadRevisions'] as core.bool
              : null,
          canRename: json_.containsKey('canRename')
              ? json_['canRename'] as core.bool
              : null,
          canRenameDrive: json_.containsKey('canRenameDrive')
              ? json_['canRenameDrive'] as core.bool
              : null,
          canResetDriveRestrictions:
              json_.containsKey('canResetDriveRestrictions')
                  ? json_['canResetDriveRestrictions'] as core.bool
                  : null,
          canShare: json_.containsKey('canShare')
              ? json_['canShare'] as core.bool
              : null,
          canTrashChildren: json_.containsKey('canTrashChildren')
              ? json_['canTrashChildren'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canAddChildren != null) 'canAddChildren': canAddChildren!,
        if (canChangeCopyRequiresWriterPermissionRestriction != null)
          'canChangeCopyRequiresWriterPermissionRestriction':
              canChangeCopyRequiresWriterPermissionRestriction!,
        if (canChangeDomainUsersOnlyRestriction != null)
          'canChangeDomainUsersOnlyRestriction':
              canChangeDomainUsersOnlyRestriction!,
        if (canChangeDriveBackground != null)
          'canChangeDriveBackground': canChangeDriveBackground!,
        if (canChangeDriveMembersOnlyRestriction != null)
          'canChangeDriveMembersOnlyRestriction':
              canChangeDriveMembersOnlyRestriction!,
        if (canComment != null) 'canComment': canComment!,
        if (canCopy != null) 'canCopy': canCopy!,
        if (canDeleteChildren != null) 'canDeleteChildren': canDeleteChildren!,
        if (canDeleteDrive != null) 'canDeleteDrive': canDeleteDrive!,
        if (canDownload != null) 'canDownload': canDownload!,
        if (canEdit != null) 'canEdit': canEdit!,
        if (canListChildren != null) 'canListChildren': canListChildren!,
        if (canManageMembers != null) 'canManageMembers': canManageMembers!,
        if (canReadRevisions != null) 'canReadRevisions': canReadRevisions!,
        if (canRename != null) 'canRename': canRename!,
        if (canRenameDrive != null) 'canRenameDrive': canRenameDrive!,
        if (canResetDriveRestrictions != null)
          'canResetDriveRestrictions': canResetDriveRestrictions!,
        if (canShare != null) 'canShare': canShare!,
        if (canTrashChildren != null) 'canTrashChildren': canTrashChildren!,
      };
}

/// A set of restrictions that apply to this shared drive or items inside this
/// shared drive.
class DriveRestrictions {
  /// Whether administrative privileges on this shared drive are required to
  /// modify restrictions.
  core.bool? adminManagedRestrictions;

  /// Whether the options to copy, print, or download files inside this shared
  /// drive, should be disabled for readers and commenters.
  ///
  /// When this restriction is set to true, it will override the similarly named
  /// field to true for any file inside this shared drive.
  core.bool? copyRequiresWriterPermission;

  /// Whether access to this shared drive and items inside this shared drive is
  /// restricted to users of the domain to which this shared drive belongs.
  ///
  /// This restriction may be overridden by other sharing policies controlled
  /// outside of this shared drive.
  core.bool? domainUsersOnly;

  /// Whether access to items inside this shared drive is restricted to its
  /// members.
  core.bool? driveMembersOnly;

  DriveRestrictions({
    this.adminManagedRestrictions,
    this.copyRequiresWriterPermission,
    this.domainUsersOnly,
    this.driveMembersOnly,
  });

  DriveRestrictions.fromJson(core.Map json_)
      : this(
          adminManagedRestrictions:
              json_.containsKey('adminManagedRestrictions')
                  ? json_['adminManagedRestrictions'] as core.bool
                  : null,
          copyRequiresWriterPermission:
              json_.containsKey('copyRequiresWriterPermission')
                  ? json_['copyRequiresWriterPermission'] as core.bool
                  : null,
          domainUsersOnly: json_.containsKey('domainUsersOnly')
              ? json_['domainUsersOnly'] as core.bool
              : null,
          driveMembersOnly: json_.containsKey('driveMembersOnly')
              ? json_['driveMembersOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminManagedRestrictions != null)
          'adminManagedRestrictions': adminManagedRestrictions!,
        if (copyRequiresWriterPermission != null)
          'copyRequiresWriterPermission': copyRequiresWriterPermission!,
        if (domainUsersOnly != null) 'domainUsersOnly': domainUsersOnly!,
        if (driveMembersOnly != null) 'driveMembersOnly': driveMembersOnly!,
      };
}

/// Representation of a shared drive.
class Drive {
  /// An image file and cropping parameters from which a background image for
  /// this shared drive is set.
  ///
  /// This is a write only field; it can only be set on drive.drives.update
  /// requests that don't set themeId. When specified, all fields of the
  /// backgroundImageFile must be set.
  DriveBackgroundImageFile? backgroundImageFile;

  /// A short-lived link to this shared drive's background image.
  core.String? backgroundImageLink;

  /// Capabilities the current user has on this shared drive.
  DriveCapabilities? capabilities;

  /// The color of this shared drive as an RGB hex string.
  ///
  /// It can only be set on a drive.drives.update request that does not set
  /// themeId.
  core.String? colorRgb;

  /// The time at which the shared drive was created (RFC 3339 date-time).
  core.DateTime? createdDate;

  /// Whether the shared drive is hidden from default view.
  core.bool? hidden;

  /// The ID of this shared drive which is also the ID of the top level folder
  /// of this shared drive.
  core.String? id;

  /// This is always drive#drive
  core.String? kind;

  /// The name of this shared drive.
  core.String? name;

  /// The organizational unit of this shared drive.
  ///
  /// This field is only populated on drives.list responses when the
  /// useDomainAdminAccess parameter is set to true.
  core.String? orgUnitId;

  /// A set of restrictions that apply to this shared drive or items inside this
  /// shared drive.
  DriveRestrictions? restrictions;

  /// The ID of the theme from which the background image and color will be set.
  ///
  /// The set of possible driveThemes can be retrieved from a drive.about.get
  /// response. When not specified on a drive.drives.insert request, a random
  /// theme is chosen from which the background image and color are set. This is
  /// a write-only field; it can only be set on requests that don't set colorRgb
  /// or backgroundImageFile.
  core.String? themeId;

  Drive({
    this.backgroundImageFile,
    this.backgroundImageLink,
    this.capabilities,
    this.colorRgb,
    this.createdDate,
    this.hidden,
    this.id,
    this.kind,
    this.name,
    this.orgUnitId,
    this.restrictions,
    this.themeId,
  });

  Drive.fromJson(core.Map json_)
      : this(
          backgroundImageFile: json_.containsKey('backgroundImageFile')
              ? DriveBackgroundImageFile.fromJson(json_['backgroundImageFile']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backgroundImageLink: json_.containsKey('backgroundImageLink')
              ? json_['backgroundImageLink'] as core.String
              : null,
          capabilities: json_.containsKey('capabilities')
              ? DriveCapabilities.fromJson(
                  json_['capabilities'] as core.Map<core.String, core.dynamic>)
              : null,
          colorRgb: json_.containsKey('colorRgb')
              ? json_['colorRgb'] as core.String
              : null,
          createdDate: json_.containsKey('createdDate')
              ? core.DateTime.parse(json_['createdDate'] as core.String)
              : null,
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          restrictions: json_.containsKey('restrictions')
              ? DriveRestrictions.fromJson(
                  json_['restrictions'] as core.Map<core.String, core.dynamic>)
              : null,
          themeId: json_.containsKey('themeId')
              ? json_['themeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundImageFile != null)
          'backgroundImageFile': backgroundImageFile!,
        if (backgroundImageLink != null)
          'backgroundImageLink': backgroundImageLink!,
        if (capabilities != null) 'capabilities': capabilities!,
        if (colorRgb != null) 'colorRgb': colorRgb!,
        if (createdDate != null)
          'createdDate': createdDate!.toUtc().toIso8601String(),
        if (hidden != null) 'hidden': hidden!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (restrictions != null) 'restrictions': restrictions!,
        if (themeId != null) 'themeId': themeId!,
      };
}

/// A list of shared drives.
class DriveList {
  /// The list of shared drives.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<Drive>? items;

  /// This is always drive#driveList
  core.String? kind;

  /// The page token for the next page of shared drives.
  ///
  /// This will be absent if the end of the list has been reached. If the token
  /// is rejected for any reason, it should be discarded, and pagination should
  /// be restarted from the first page of results.
  core.String? nextPageToken;

  DriveList({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  DriveList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Drive.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Capabilities the current user has on this file.
///
/// Each capability corresponds to a fine-grained action that a user may take.
class FileCapabilities {
  /// Whether the current user is the pending owner of the file.
  ///
  /// Not populated for shared drive files.
  core.bool? canAcceptOwnership;

  /// Whether the current user can add children to this folder.
  ///
  /// This is always false when the item is not a folder.
  core.bool? canAddChildren;

  /// Whether the current user can add a folder from another drive (different
  /// shared drive or My Drive) to this folder.
  ///
  /// This is false when the item is not a folder. Only populated for items in
  /// shared drives.
  core.bool? canAddFolderFromAnotherDrive;

  /// Whether the current user can add a parent for the item without removing an
  /// existing parent in the same request.
  ///
  /// Not populated for shared drive files.
  core.bool? canAddMyDriveParent;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this file.
  core.bool? canChangeCopyRequiresWriterPermission;

  /// Deprecated
  core.bool? canChangeRestrictedDownload;

  /// Whether the current user can change the securityUpdateEnabled field on
  /// link share metadata.
  core.bool? canChangeSecurityUpdateEnabled;

  /// Whether the current user can comment on this file.
  core.bool? canComment;

  /// Whether the current user can copy this file.
  ///
  /// For an item in a shared drive, whether the current user can copy
  /// non-folder descendants of this item, or this item itself if it is not a
  /// folder.
  core.bool? canCopy;

  /// Whether the current user can delete this file.
  core.bool? canDelete;

  /// Whether the current user can delete children of this folder.
  ///
  /// This is false when the item is not a folder. Only populated for items in
  /// shared drives.
  core.bool? canDeleteChildren;

  /// Whether the current user can download this file.
  core.bool? canDownload;

  /// Whether the current user can edit this file.
  ///
  /// Other factors may limit the type of changes a user can make to a file. For
  /// example, see canChangeCopyRequiresWriterPermission or canModifyContent.
  core.bool? canEdit;

  /// Whether the current user can list the children of this folder.
  ///
  /// This is always false when the item is not a folder.
  core.bool? canListChildren;

  /// Whether the current user can modify the content of this file.
  core.bool? canModifyContent;

  /// Whether the current user can modify restrictions on content of this file.
  core.bool? canModifyContentRestriction;

  /// Whether the current user can modify the labels on this file.
  core.bool? canModifyLabels;

  /// Whether the current user can move children of this folder outside of the
  /// shared drive.
  ///
  /// This is false when the item is not a folder. Only populated for items in
  /// shared drives.
  core.bool? canMoveChildrenOutOfDrive;

  /// Deprecated - use canMoveChildrenOutOfDrive instead.
  core.bool? canMoveChildrenOutOfTeamDrive;

  /// Whether the current user can move children of this folder within this
  /// drive.
  ///
  /// This is false when the item is not a folder. Note that a request to move
  /// the child may still fail depending on the current user's access to the
  /// child and to the destination folder.
  core.bool? canMoveChildrenWithinDrive;

  /// Deprecated - use canMoveChildrenWithinDrive instead.
  core.bool? canMoveChildrenWithinTeamDrive;

  /// Deprecated - use canMoveItemOutOfDrive instead.
  core.bool? canMoveItemIntoTeamDrive;

  /// Whether the current user can move this item outside of this drive by
  /// changing its parent.
  ///
  /// Note that a request to change the parent of the item may still fail
  /// depending on the new parent that is being added.
  core.bool? canMoveItemOutOfDrive;

  /// Deprecated - use canMoveItemOutOfDrive instead.
  core.bool? canMoveItemOutOfTeamDrive;

  /// Whether the current user can move this item within this drive.
  ///
  /// Note that a request to change the parent of the item may still fail
  /// depending on the new parent that is being added and the parent that is
  /// being removed.
  core.bool? canMoveItemWithinDrive;

  /// Deprecated - use canMoveItemWithinDrive instead.
  core.bool? canMoveItemWithinTeamDrive;

  /// Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.
  core.bool? canMoveTeamDriveItem;

  /// Whether the current user can read the shared drive to which this file
  /// belongs.
  ///
  /// Only populated for items in shared drives.
  core.bool? canReadDrive;

  /// Whether the current user can read the labels on this file.
  core.bool? canReadLabels;

  /// Whether the current user can read the revisions resource of this file.
  ///
  /// For a shared drive item, whether revisions of non-folder descendants of
  /// this item, or this item itself if it is not a folder, can be read.
  core.bool? canReadRevisions;

  /// Deprecated - use canReadDrive instead.
  core.bool? canReadTeamDrive;

  /// Whether the current user can remove children from this folder.
  ///
  /// This is always false when the item is not a folder. For a folder in a
  /// shared drive, use canDeleteChildren or canTrashChildren instead.
  core.bool? canRemoveChildren;

  /// Whether the current user can remove a parent from the item without adding
  /// another parent in the same request.
  ///
  /// Not populated for shared drive files.
  core.bool? canRemoveMyDriveParent;

  /// Whether the current user can rename this file.
  core.bool? canRename;

  /// Whether the current user can modify the sharing settings for this file.
  core.bool? canShare;

  /// Whether the current user can move this file to trash.
  core.bool? canTrash;

  /// Whether the current user can trash children of this folder.
  ///
  /// This is false when the item is not a folder. Only populated for items in
  /// shared drives.
  core.bool? canTrashChildren;

  /// Whether the current user can restore this file from trash.
  core.bool? canUntrash;

  FileCapabilities({
    this.canAcceptOwnership,
    this.canAddChildren,
    this.canAddFolderFromAnotherDrive,
    this.canAddMyDriveParent,
    this.canChangeCopyRequiresWriterPermission,
    this.canChangeRestrictedDownload,
    this.canChangeSecurityUpdateEnabled,
    this.canComment,
    this.canCopy,
    this.canDelete,
    this.canDeleteChildren,
    this.canDownload,
    this.canEdit,
    this.canListChildren,
    this.canModifyContent,
    this.canModifyContentRestriction,
    this.canModifyLabels,
    this.canMoveChildrenOutOfDrive,
    this.canMoveChildrenOutOfTeamDrive,
    this.canMoveChildrenWithinDrive,
    this.canMoveChildrenWithinTeamDrive,
    this.canMoveItemIntoTeamDrive,
    this.canMoveItemOutOfDrive,
    this.canMoveItemOutOfTeamDrive,
    this.canMoveItemWithinDrive,
    this.canMoveItemWithinTeamDrive,
    this.canMoveTeamDriveItem,
    this.canReadDrive,
    this.canReadLabels,
    this.canReadRevisions,
    this.canReadTeamDrive,
    this.canRemoveChildren,
    this.canRemoveMyDriveParent,
    this.canRename,
    this.canShare,
    this.canTrash,
    this.canTrashChildren,
    this.canUntrash,
  });

  FileCapabilities.fromJson(core.Map json_)
      : this(
          canAcceptOwnership: json_.containsKey('canAcceptOwnership')
              ? json_['canAcceptOwnership'] as core.bool
              : null,
          canAddChildren: json_.containsKey('canAddChildren')
              ? json_['canAddChildren'] as core.bool
              : null,
          canAddFolderFromAnotherDrive:
              json_.containsKey('canAddFolderFromAnotherDrive')
                  ? json_['canAddFolderFromAnotherDrive'] as core.bool
                  : null,
          canAddMyDriveParent: json_.containsKey('canAddMyDriveParent')
              ? json_['canAddMyDriveParent'] as core.bool
              : null,
          canChangeCopyRequiresWriterPermission:
              json_.containsKey('canChangeCopyRequiresWriterPermission')
                  ? json_['canChangeCopyRequiresWriterPermission'] as core.bool
                  : null,
          canChangeRestrictedDownload:
              json_.containsKey('canChangeRestrictedDownload')
                  ? json_['canChangeRestrictedDownload'] as core.bool
                  : null,
          canChangeSecurityUpdateEnabled:
              json_.containsKey('canChangeSecurityUpdateEnabled')
                  ? json_['canChangeSecurityUpdateEnabled'] as core.bool
                  : null,
          canComment: json_.containsKey('canComment')
              ? json_['canComment'] as core.bool
              : null,
          canCopy: json_.containsKey('canCopy')
              ? json_['canCopy'] as core.bool
              : null,
          canDelete: json_.containsKey('canDelete')
              ? json_['canDelete'] as core.bool
              : null,
          canDeleteChildren: json_.containsKey('canDeleteChildren')
              ? json_['canDeleteChildren'] as core.bool
              : null,
          canDownload: json_.containsKey('canDownload')
              ? json_['canDownload'] as core.bool
              : null,
          canEdit: json_.containsKey('canEdit')
              ? json_['canEdit'] as core.bool
              : null,
          canListChildren: json_.containsKey('canListChildren')
              ? json_['canListChildren'] as core.bool
              : null,
          canModifyContent: json_.containsKey('canModifyContent')
              ? json_['canModifyContent'] as core.bool
              : null,
          canModifyContentRestriction:
              json_.containsKey('canModifyContentRestriction')
                  ? json_['canModifyContentRestriction'] as core.bool
                  : null,
          canModifyLabels: json_.containsKey('canModifyLabels')
              ? json_['canModifyLabels'] as core.bool
              : null,
          canMoveChildrenOutOfDrive:
              json_.containsKey('canMoveChildrenOutOfDrive')
                  ? json_['canMoveChildrenOutOfDrive'] as core.bool
                  : null,
          canMoveChildrenOutOfTeamDrive:
              json_.containsKey('canMoveChildrenOutOfTeamDrive')
                  ? json_['canMoveChildrenOutOfTeamDrive'] as core.bool
                  : null,
          canMoveChildrenWithinDrive:
              json_.containsKey('canMoveChildrenWithinDrive')
                  ? json_['canMoveChildrenWithinDrive'] as core.bool
                  : null,
          canMoveChildrenWithinTeamDrive:
              json_.containsKey('canMoveChildrenWithinTeamDrive')
                  ? json_['canMoveChildrenWithinTeamDrive'] as core.bool
                  : null,
          canMoveItemIntoTeamDrive:
              json_.containsKey('canMoveItemIntoTeamDrive')
                  ? json_['canMoveItemIntoTeamDrive'] as core.bool
                  : null,
          canMoveItemOutOfDrive: json_.containsKey('canMoveItemOutOfDrive')
              ? json_['canMoveItemOutOfDrive'] as core.bool
              : null,
          canMoveItemOutOfTeamDrive:
              json_.containsKey('canMoveItemOutOfTeamDrive')
                  ? json_['canMoveItemOutOfTeamDrive'] as core.bool
                  : null,
          canMoveItemWithinDrive: json_.containsKey('canMoveItemWithinDrive')
              ? json_['canMoveItemWithinDrive'] as core.bool
              : null,
          canMoveItemWithinTeamDrive:
              json_.containsKey('canMoveItemWithinTeamDrive')
                  ? json_['canMoveItemWithinTeamDrive'] as core.bool
                  : null,
          canMoveTeamDriveItem: json_.containsKey('canMoveTeamDriveItem')
              ? json_['canMoveTeamDriveItem'] as core.bool
              : null,
          canReadDrive: json_.containsKey('canReadDrive')
              ? json_['canReadDrive'] as core.bool
              : null,
          canReadLabels: json_.containsKey('canReadLabels')
              ? json_['canReadLabels'] as core.bool
              : null,
          canReadRevisions: json_.containsKey('canReadRevisions')
              ? json_['canReadRevisions'] as core.bool
              : null,
          canReadTeamDrive: json_.containsKey('canReadTeamDrive')
              ? json_['canReadTeamDrive'] as core.bool
              : null,
          canRemoveChildren: json_.containsKey('canRemoveChildren')
              ? json_['canRemoveChildren'] as core.bool
              : null,
          canRemoveMyDriveParent: json_.containsKey('canRemoveMyDriveParent')
              ? json_['canRemoveMyDriveParent'] as core.bool
              : null,
          canRename: json_.containsKey('canRename')
              ? json_['canRename'] as core.bool
              : null,
          canShare: json_.containsKey('canShare')
              ? json_['canShare'] as core.bool
              : null,
          canTrash: json_.containsKey('canTrash')
              ? json_['canTrash'] as core.bool
              : null,
          canTrashChildren: json_.containsKey('canTrashChildren')
              ? json_['canTrashChildren'] as core.bool
              : null,
          canUntrash: json_.containsKey('canUntrash')
              ? json_['canUntrash'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canAcceptOwnership != null)
          'canAcceptOwnership': canAcceptOwnership!,
        if (canAddChildren != null) 'canAddChildren': canAddChildren!,
        if (canAddFolderFromAnotherDrive != null)
          'canAddFolderFromAnotherDrive': canAddFolderFromAnotherDrive!,
        if (canAddMyDriveParent != null)
          'canAddMyDriveParent': canAddMyDriveParent!,
        if (canChangeCopyRequiresWriterPermission != null)
          'canChangeCopyRequiresWriterPermission':
              canChangeCopyRequiresWriterPermission!,
        if (canChangeRestrictedDownload != null)
          'canChangeRestrictedDownload': canChangeRestrictedDownload!,
        if (canChangeSecurityUpdateEnabled != null)
          'canChangeSecurityUpdateEnabled': canChangeSecurityUpdateEnabled!,
        if (canComment != null) 'canComment': canComment!,
        if (canCopy != null) 'canCopy': canCopy!,
        if (canDelete != null) 'canDelete': canDelete!,
        if (canDeleteChildren != null) 'canDeleteChildren': canDeleteChildren!,
        if (canDownload != null) 'canDownload': canDownload!,
        if (canEdit != null) 'canEdit': canEdit!,
        if (canListChildren != null) 'canListChildren': canListChildren!,
        if (canModifyContent != null) 'canModifyContent': canModifyContent!,
        if (canModifyContentRestriction != null)
          'canModifyContentRestriction': canModifyContentRestriction!,
        if (canModifyLabels != null) 'canModifyLabels': canModifyLabels!,
        if (canMoveChildrenOutOfDrive != null)
          'canMoveChildrenOutOfDrive': canMoveChildrenOutOfDrive!,
        if (canMoveChildrenOutOfTeamDrive != null)
          'canMoveChildrenOutOfTeamDrive': canMoveChildrenOutOfTeamDrive!,
        if (canMoveChildrenWithinDrive != null)
          'canMoveChildrenWithinDrive': canMoveChildrenWithinDrive!,
        if (canMoveChildrenWithinTeamDrive != null)
          'canMoveChildrenWithinTeamDrive': canMoveChildrenWithinTeamDrive!,
        if (canMoveItemIntoTeamDrive != null)
          'canMoveItemIntoTeamDrive': canMoveItemIntoTeamDrive!,
        if (canMoveItemOutOfDrive != null)
          'canMoveItemOutOfDrive': canMoveItemOutOfDrive!,
        if (canMoveItemOutOfTeamDrive != null)
          'canMoveItemOutOfTeamDrive': canMoveItemOutOfTeamDrive!,
        if (canMoveItemWithinDrive != null)
          'canMoveItemWithinDrive': canMoveItemWithinDrive!,
        if (canMoveItemWithinTeamDrive != null)
          'canMoveItemWithinTeamDrive': canMoveItemWithinTeamDrive!,
        if (canMoveTeamDriveItem != null)
          'canMoveTeamDriveItem': canMoveTeamDriveItem!,
        if (canReadDrive != null) 'canReadDrive': canReadDrive!,
        if (canReadLabels != null) 'canReadLabels': canReadLabels!,
        if (canReadRevisions != null) 'canReadRevisions': canReadRevisions!,
        if (canReadTeamDrive != null) 'canReadTeamDrive': canReadTeamDrive!,
        if (canRemoveChildren != null) 'canRemoveChildren': canRemoveChildren!,
        if (canRemoveMyDriveParent != null)
          'canRemoveMyDriveParent': canRemoveMyDriveParent!,
        if (canRename != null) 'canRename': canRename!,
        if (canShare != null) 'canShare': canShare!,
        if (canTrash != null) 'canTrash': canTrash!,
        if (canTrashChildren != null) 'canTrashChildren': canTrashChildren!,
        if (canUntrash != null) 'canUntrash': canUntrash!,
      };
}

/// Geographic location information stored in the image.
class FileImageMediaMetadataLocation {
  /// The altitude stored in the image.
  core.double? altitude;

  /// The latitude stored in the image.
  core.double? latitude;

  /// The longitude stored in the image.
  core.double? longitude;

  FileImageMediaMetadataLocation({
    this.altitude,
    this.latitude,
    this.longitude,
  });

  FileImageMediaMetadataLocation.fromJson(core.Map json_)
      : this(
          altitude: json_.containsKey('altitude')
              ? (json_['altitude'] as core.num).toDouble()
              : null,
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altitude != null) 'altitude': altitude!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// Metadata about image media.
///
/// This will only be present for image types, and its contents will depend on
/// what can be parsed from the image content.
class FileImageMediaMetadata {
  /// The aperture used to create the photo (f-number).
  core.double? aperture;

  /// The make of the camera used to create the photo.
  core.String? cameraMake;

  /// The model of the camera used to create the photo.
  core.String? cameraModel;

  /// The color space of the photo.
  core.String? colorSpace;

  /// The date and time the photo was taken (EXIF format timestamp).
  core.String? date;

  /// The exposure bias of the photo (APEX value).
  core.double? exposureBias;

  /// The exposure mode used to create the photo.
  core.String? exposureMode;

  /// The length of the exposure, in seconds.
  core.double? exposureTime;

  /// Whether a flash was used to create the photo.
  core.bool? flashUsed;

  /// The focal length used to create the photo, in millimeters.
  core.double? focalLength;

  /// The height of the image in pixels.
  core.int? height;

  /// The ISO speed used to create the photo.
  core.int? isoSpeed;

  /// The lens used to create the photo.
  core.String? lens;

  /// Geographic location information stored in the image.
  FileImageMediaMetadataLocation? location;

  /// The smallest f-number of the lens at the focal length used to create the
  /// photo (APEX value).
  core.double? maxApertureValue;

  /// The metering mode used to create the photo.
  core.String? meteringMode;

  /// The number of clockwise 90 degree rotations applied from the image's
  /// original orientation.
  core.int? rotation;

  /// The type of sensor used to create the photo.
  core.String? sensor;

  /// The distance to the subject of the photo, in meters.
  core.int? subjectDistance;

  /// The white balance mode used to create the photo.
  core.String? whiteBalance;

  /// The width of the image in pixels.
  core.int? width;

  FileImageMediaMetadata({
    this.aperture,
    this.cameraMake,
    this.cameraModel,
    this.colorSpace,
    this.date,
    this.exposureBias,
    this.exposureMode,
    this.exposureTime,
    this.flashUsed,
    this.focalLength,
    this.height,
    this.isoSpeed,
    this.lens,
    this.location,
    this.maxApertureValue,
    this.meteringMode,
    this.rotation,
    this.sensor,
    this.subjectDistance,
    this.whiteBalance,
    this.width,
  });

  FileImageMediaMetadata.fromJson(core.Map json_)
      : this(
          aperture: json_.containsKey('aperture')
              ? (json_['aperture'] as core.num).toDouble()
              : null,
          cameraMake: json_.containsKey('cameraMake')
              ? json_['cameraMake'] as core.String
              : null,
          cameraModel: json_.containsKey('cameraModel')
              ? json_['cameraModel'] as core.String
              : null,
          colorSpace: json_.containsKey('colorSpace')
              ? json_['colorSpace'] as core.String
              : null,
          date: json_.containsKey('date') ? json_['date'] as core.String : null,
          exposureBias: json_.containsKey('exposureBias')
              ? (json_['exposureBias'] as core.num).toDouble()
              : null,
          exposureMode: json_.containsKey('exposureMode')
              ? json_['exposureMode'] as core.String
              : null,
          exposureTime: json_.containsKey('exposureTime')
              ? (json_['exposureTime'] as core.num).toDouble()
              : null,
          flashUsed: json_.containsKey('flashUsed')
              ? json_['flashUsed'] as core.bool
              : null,
          focalLength: json_.containsKey('focalLength')
              ? (json_['focalLength'] as core.num).toDouble()
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          isoSpeed: json_.containsKey('isoSpeed')
              ? json_['isoSpeed'] as core.int
              : null,
          lens: json_.containsKey('lens') ? json_['lens'] as core.String : null,
          location: json_.containsKey('location')
              ? FileImageMediaMetadataLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          maxApertureValue: json_.containsKey('maxApertureValue')
              ? (json_['maxApertureValue'] as core.num).toDouble()
              : null,
          meteringMode: json_.containsKey('meteringMode')
              ? json_['meteringMode'] as core.String
              : null,
          rotation: json_.containsKey('rotation')
              ? json_['rotation'] as core.int
              : null,
          sensor: json_.containsKey('sensor')
              ? json_['sensor'] as core.String
              : null,
          subjectDistance: json_.containsKey('subjectDistance')
              ? json_['subjectDistance'] as core.int
              : null,
          whiteBalance: json_.containsKey('whiteBalance')
              ? json_['whiteBalance'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aperture != null) 'aperture': aperture!,
        if (cameraMake != null) 'cameraMake': cameraMake!,
        if (cameraModel != null) 'cameraModel': cameraModel!,
        if (colorSpace != null) 'colorSpace': colorSpace!,
        if (date != null) 'date': date!,
        if (exposureBias != null) 'exposureBias': exposureBias!,
        if (exposureMode != null) 'exposureMode': exposureMode!,
        if (exposureTime != null) 'exposureTime': exposureTime!,
        if (flashUsed != null) 'flashUsed': flashUsed!,
        if (focalLength != null) 'focalLength': focalLength!,
        if (height != null) 'height': height!,
        if (isoSpeed != null) 'isoSpeed': isoSpeed!,
        if (lens != null) 'lens': lens!,
        if (location != null) 'location': location!,
        if (maxApertureValue != null) 'maxApertureValue': maxApertureValue!,
        if (meteringMode != null) 'meteringMode': meteringMode!,
        if (rotation != null) 'rotation': rotation!,
        if (sensor != null) 'sensor': sensor!,
        if (subjectDistance != null) 'subjectDistance': subjectDistance!,
        if (whiteBalance != null) 'whiteBalance': whiteBalance!,
        if (width != null) 'width': width!,
      };
}

/// Indexable text attributes for the file (can only be written)
class FileIndexableText {
  /// The text to be indexed for this file.
  core.String? text;

  FileIndexableText({
    this.text,
  });

  FileIndexableText.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// An overview of the labels on the file.
class FileLabelInfo {
  /// The set of labels on the file as requested by the label IDs in the
  /// includeLabels parameter.
  ///
  /// By default, no labels are returned.
  core.List<Label>? labels;

  FileLabelInfo({
    this.labels,
  });

  FileLabelInfo.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// A group of labels for the file.
class FileLabels {
  /// Deprecated.
  core.bool? hidden;

  /// Whether the file has been modified by this user.
  core.bool? modified;

  /// Deprecated - use copyRequiresWriterPermission instead.
  core.bool? restricted;

  /// Whether this file is starred by the user.
  core.bool? starred;

  /// Whether the file has been trashed, either explicitly or from a trashed
  /// parent folder.
  ///
  /// Only the owner may trash a file. The trashed item is excluded from all
  /// files.list responses returned for any user who does not own the file.
  /// However, all users with access to the file can see the trashed item
  /// metadata in an API response. All users with access can copy, download,
  /// export, and share the file.
  core.bool? trashed;

  /// Whether this file has been viewed by this user.
  core.bool? viewed;

  FileLabels({
    this.hidden,
    this.modified,
    this.restricted,
    this.starred,
    this.trashed,
    this.viewed,
  });

  FileLabels.fromJson(core.Map json_)
      : this(
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          modified: json_.containsKey('modified')
              ? json_['modified'] as core.bool
              : null,
          restricted: json_.containsKey('restricted')
              ? json_['restricted'] as core.bool
              : null,
          starred: json_.containsKey('starred')
              ? json_['starred'] as core.bool
              : null,
          trashed: json_.containsKey('trashed')
              ? json_['trashed'] as core.bool
              : null,
          viewed:
              json_.containsKey('viewed') ? json_['viewed'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hidden != null) 'hidden': hidden!,
        if (modified != null) 'modified': modified!,
        if (restricted != null) 'restricted': restricted!,
        if (starred != null) 'starred': starred!,
        if (trashed != null) 'trashed': trashed!,
        if (viewed != null) 'viewed': viewed!,
      };
}

/// Contains details about the link URLs that clients are using to refer to this
/// item.
class FileLinkShareMetadata {
  /// Whether the file is eligible for security update.
  core.bool? securityUpdateEligible;

  /// Whether the security update is enabled for this file.
  core.bool? securityUpdateEnabled;

  FileLinkShareMetadata({
    this.securityUpdateEligible,
    this.securityUpdateEnabled,
  });

  FileLinkShareMetadata.fromJson(core.Map json_)
      : this(
          securityUpdateEligible: json_.containsKey('securityUpdateEligible')
              ? json_['securityUpdateEligible'] as core.bool
              : null,
          securityUpdateEnabled: json_.containsKey('securityUpdateEnabled')
              ? json_['securityUpdateEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (securityUpdateEligible != null)
          'securityUpdateEligible': securityUpdateEligible!,
        if (securityUpdateEnabled != null)
          'securityUpdateEnabled': securityUpdateEnabled!,
      };
}

/// Shortcut file details.
///
/// Only populated for shortcut files, which have the mimeType field set to
/// application/vnd.google-apps.shortcut.
class FileShortcutDetails {
  /// The ID of the file that this shortcut points to.
  core.String? targetId;

  /// The MIME type of the file that this shortcut points to.
  ///
  /// The value of this field is a snapshot of the target's MIME type, captured
  /// when the shortcut is created.
  core.String? targetMimeType;

  /// The ResourceKey for the target file.
  core.String? targetResourceKey;

  FileShortcutDetails({
    this.targetId,
    this.targetMimeType,
    this.targetResourceKey,
  });

  FileShortcutDetails.fromJson(core.Map json_)
      : this(
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          targetMimeType: json_.containsKey('targetMimeType')
              ? json_['targetMimeType'] as core.String
              : null,
          targetResourceKey: json_.containsKey('targetResourceKey')
              ? json_['targetResourceKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetId != null) 'targetId': targetId!,
        if (targetMimeType != null) 'targetMimeType': targetMimeType!,
        if (targetResourceKey != null) 'targetResourceKey': targetResourceKey!,
      };
}

/// A thumbnail for the file.
///
/// This will only be used if a standard thumbnail cannot be generated.
class FileThumbnail {
  /// The URL-safe Base64 encoded bytes of the thumbnail image.
  ///
  /// It should conform to RFC 4648 section 5.
  core.String? image;
  core.List<core.int> get imageAsBytes => convert_1.base64.decode(image!);

  set imageAsBytes(core.List<core.int> bytes_) {
    image = convert_1.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The MIME type of the thumbnail.
  core.String? mimeType;

  FileThumbnail({
    this.image,
    this.mimeType,
  });

  FileThumbnail.fromJson(core.Map json_)
      : this(
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Metadata about video media.
///
/// This will only be present for video types.
class FileVideoMediaMetadata {
  /// The duration of the video in milliseconds.
  core.String? durationMillis;

  /// The height of the video in pixels.
  core.int? height;

  /// The width of the video in pixels.
  core.int? width;

  FileVideoMediaMetadata({
    this.durationMillis,
    this.height,
    this.width,
  });

  FileVideoMediaMetadata.fromJson(core.Map json_)
      : this(
          durationMillis: json_.containsKey('durationMillis')
              ? json_['durationMillis'] as core.String
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (durationMillis != null) 'durationMillis': durationMillis!,
        if (height != null) 'height': height!,
        if (width != null) 'width': width!,
      };
}

/// The metadata for a file.
class File {
  /// A link for opening the file in a relevant Google editor or viewer.
  core.String? alternateLink;

  /// Whether this file is in the Application Data folder.
  core.bool? appDataContents;

  /// Deprecated: use capabilities/canComment.
  core.bool? canComment;

  /// Deprecated: use capabilities/canReadRevisions.
  core.bool? canReadRevisions;

  /// Capabilities the current user has on this file.
  ///
  /// Each capability corresponds to a fine-grained action that a user may take.
  FileCapabilities? capabilities;

  /// Restrictions for accessing the content of the file.
  ///
  /// Only populated if such a restriction exists.
  core.List<ContentRestriction>? contentRestrictions;

  /// Whether the options to copy, print, or download this file, should be
  /// disabled for readers and commenters.
  core.bool? copyRequiresWriterPermission;

  /// Deprecated: use capabilities/canCopy.
  core.bool? copyable;

  /// Create time for this file (formatted RFC 3339 timestamp).
  core.DateTime? createdDate;

  /// A link to open this file with the user's default app for this file.
  ///
  /// Only populated when the drive.apps.readonly scope is used.
  core.String? defaultOpenWithLink;

  /// A short description of the file.
  core.String? description;

  /// Short lived download URL for the file.
  ///
  /// This field is only populated for files with content stored in Google
  /// Drive; it is not populated for Docs Editors or shortcut files.
  core.String? downloadUrl;

  /// ID of the shared drive the file resides in.
  ///
  /// Only populated for items in shared drives.
  core.String? driveId;

  /// Deprecated: use capabilities/canEdit.
  core.bool? editable;

  /// A link for embedding the file.
  core.String? embedLink;

  /// ETag of the file.
  core.String? etag;

  /// Whether this file has been explicitly trashed, as opposed to recursively
  /// trashed.
  core.bool? explicitlyTrashed;

  /// Links for exporting Docs Editors files to specific formats.
  core.Map<core.String, core.String>? exportLinks;

  /// The final component of fullFileExtension with trailing text that does not
  /// appear to be part of the extension removed.
  ///
  /// This field is only populated for files with content stored in Google
  /// Drive; it is not populated for Docs Editors or shortcut files.
  core.String? fileExtension;

  /// The size of the file in bytes.
  ///
  /// This field is populated for files with content stored in Google Drive and
  /// for files in Docs Editors; it is not populated for shortcut files.
  core.String? fileSize;

  /// Folder color as an RGB hex string if the file is a folder or a shortcut to
  /// a folder.
  ///
  /// The list of supported colors is available in the folderColorPalette field
  /// of the About resource. If an unsupported color is specified, it will be
  /// changed to the closest color in the palette.
  core.String? folderColorRgb;

  /// The full file extension; extracted from the title.
  ///
  /// May contain multiple concatenated extensions, such as "tar.gz". Removing
  /// an extension from the title does not clear this field; however, changing
  /// the extension on the title does update this field. This field is only
  /// populated for files with content stored in Google Drive; it is not
  /// populated for Docs Editors or shortcut files.
  core.String? fullFileExtension;

  /// Whether there are permissions directly on this file.
  ///
  /// This field is only populated for items in shared drives.
  core.bool? hasAugmentedPermissions;

  /// Whether this file has a thumbnail.
  ///
  /// This does not indicate whether the requesting app has access to the
  /// thumbnail. To check access, look for the presence of the thumbnailLink
  /// field.
  core.bool? hasThumbnail;

  /// The ID of the file's head revision.
  ///
  /// This field is only populated for files with content stored in Google
  /// Drive; it is not populated for Docs Editors or shortcut files.
  core.String? headRevisionId;

  /// A link to the file's icon.
  core.String? iconLink;

  /// The ID of the file.
  core.String? id;

  /// Metadata about image media.
  ///
  /// This will only be present for image types, and its contents will depend on
  /// what can be parsed from the image content.
  FileImageMediaMetadata? imageMediaMetadata;

  /// Indexable text attributes for the file (can only be written)
  FileIndexableText? indexableText;

  /// Whether the file was created or opened by the requesting app.
  core.bool? isAppAuthorized;

  /// The type of file.
  ///
  /// This is always drive#file.
  core.String? kind;

  /// An overview of the labels on the file.
  FileLabelInfo? labelInfo;

  /// A group of labels for the file.
  FileLabels? labels;

  /// The last user to modify this file.
  User? lastModifyingUser;

  /// Name of the last user to modify this file.
  core.String? lastModifyingUserName;

  /// Last time this file was viewed by the user (formatted RFC 3339 timestamp).
  core.DateTime? lastViewedByMeDate;

  /// Contains details about the link URLs that clients are using to refer to
  /// this item.
  FileLinkShareMetadata? linkShareMetadata;

  /// Deprecated.
  core.DateTime? markedViewedByMeDate;

  /// An MD5 checksum for the content of this file.
  ///
  /// This field is only populated for files with content stored in Google
  /// Drive; it is not populated for Docs Editors or shortcut files.
  core.String? md5Checksum;

  /// The MIME type of the file.
  ///
  /// This is only mutable on update when uploading new content. This field can
  /// be left blank, and the mimetype will be determined from the uploaded
  /// content's MIME type.
  core.String? mimeType;

  /// Last time this file was modified by the user (formatted RFC 3339
  /// timestamp).
  ///
  /// Note that setting modifiedDate will also update the modifiedByMe date for
  /// the user which set the date.
  core.DateTime? modifiedByMeDate;

  /// Last time this file was modified by anyone (formatted RFC 3339 timestamp).
  ///
  /// This is only mutable on update when the setModifiedDate parameter is set.
  core.DateTime? modifiedDate;

  /// A map of the id of each of the user's apps to a link to open this file
  /// with that app.
  ///
  /// Only populated when the drive.apps.readonly scope is used.
  core.Map<core.String, core.String>? openWithLinks;

  /// The original filename of the uploaded content if available, or else the
  /// original value of the title field.
  ///
  /// This is only available for files with binary content in Google Drive.
  core.String? originalFilename;

  /// Whether the file is owned by the current user.
  ///
  /// Not populated for items in shared drives.
  core.bool? ownedByMe;

  /// Name(s) of the owner(s) of this file.
  ///
  /// Not populated for items in shared drives.
  core.List<core.String>? ownerNames;

  /// The owner of this file.
  ///
  /// Only certain legacy files may have more than one owner. This field isn't
  /// populated for items in shared drives.
  core.List<User>? owners;

  /// Collection of parent folders which contain this file.
  /// If not specified as part of an insert request, the file will be placed
  /// directly in the user's My Drive folder.
  ///
  /// If not specified as part of a copy request, the file will inherit any
  /// discoverable parents of the source file. Update requests can also use the
  /// addParents and removeParents parameters to modify the parents list.
  core.List<ParentReference>? parents;

  /// List of permission IDs for users with access to this file.
  core.List<core.String>? permissionIds;

  /// The list of permissions for users with access to this file.
  ///
  /// Not populated for items in shared drives.
  core.List<Permission>? permissions;

  /// The list of properties.
  core.List<Property>? properties;

  /// The number of quota bytes used by this file.
  core.String? quotaBytesUsed;

  /// A key needed to access the item via a shared link.
  core.String? resourceKey;

  /// A link back to this file.
  core.String? selfLink;

  /// Deprecated: use capabilities/canShare.
  core.bool? shareable;

  /// Whether the file has been shared.
  ///
  /// Not populated for items in shared drives.
  core.bool? shared;

  /// Time at which this file was shared with the user (formatted RFC 3339
  /// timestamp).
  core.DateTime? sharedWithMeDate;

  /// User that shared the item with the current user, if available.
  User? sharingUser;

  /// Shortcut file details.
  ///
  /// Only populated for shortcut files, which have the mimeType field set to
  /// application/vnd.google-apps.shortcut.
  FileShortcutDetails? shortcutDetails;

  /// The list of spaces which contain the file.
  ///
  /// Supported values are 'drive', 'appDataFolder' and 'photos'.
  core.List<core.String>? spaces;

  /// Deprecated - use driveId instead.
  core.String? teamDriveId;

  /// A thumbnail for the file.
  ///
  /// This will only be used if a standard thumbnail cannot be generated.
  FileThumbnail? thumbnail;

  /// A short-lived link to the file's thumbnail.
  ///
  /// Typically lasts on the order of hours. Only populated when the requesting
  /// app can access the file's content. If the file isn't shared publicly, the
  /// URL returned in Files.thumbnailLink must be fetched using a credentialed
  /// request.
  core.String? thumbnailLink;

  /// The thumbnail version for use in thumbnail cache invalidation.
  core.String? thumbnailVersion;

  /// The title of this file.
  ///
  /// Note that for immutable items such as the top level folders of shared
  /// drives, My Drive root folder, and Application Data folder the title is
  /// constant.
  core.String? title;

  /// The time that the item was trashed (formatted RFC 3339 timestamp).
  ///
  /// Only populated for items in shared drives.
  core.DateTime? trashedDate;

  /// If the file has been explicitly trashed, the user who trashed it.
  ///
  /// Only populated for items in shared drives.
  User? trashingUser;

  /// The permissions for the authenticated user on this file.
  Permission? userPermission;

  /// A monotonically increasing version number for the file.
  ///
  /// This reflects every change made to the file on the server, even those not
  /// visible to the requesting user.
  core.String? version;

  /// Metadata about video media.
  ///
  /// This will only be present for video types.
  FileVideoMediaMetadata? videoMediaMetadata;

  /// A link for downloading the content of the file in a browser using cookie
  /// based authentication.
  ///
  /// In cases where the content is shared publicly, the content can be
  /// downloaded without any credentials.
  core.String? webContentLink;

  /// A link only available on public folders for viewing their static web
  /// assets (HTML, CSS, JS, etc) via Google Drive's Website Hosting.
  core.String? webViewLink;

  /// Whether writers can share the document with other users.
  ///
  /// Not populated for items in shared drives.
  core.bool? writersCanShare;

  File({
    this.alternateLink,
    this.appDataContents,
    this.canComment,
    this.canReadRevisions,
    this.capabilities,
    this.contentRestrictions,
    this.copyRequiresWriterPermission,
    this.copyable,
    this.createdDate,
    this.defaultOpenWithLink,
    this.description,
    this.downloadUrl,
    this.driveId,
    this.editable,
    this.embedLink,
    this.etag,
    this.explicitlyTrashed,
    this.exportLinks,
    this.fileExtension,
    this.fileSize,
    this.folderColorRgb,
    this.fullFileExtension,
    this.hasAugmentedPermissions,
    this.hasThumbnail,
    this.headRevisionId,
    this.iconLink,
    this.id,
    this.imageMediaMetadata,
    this.indexableText,
    this.isAppAuthorized,
    this.kind,
    this.labelInfo,
    this.labels,
    this.lastModifyingUser,
    this.lastModifyingUserName,
    this.lastViewedByMeDate,
    this.linkShareMetadata,
    this.markedViewedByMeDate,
    this.md5Checksum,
    this.mimeType,
    this.modifiedByMeDate,
    this.modifiedDate,
    this.openWithLinks,
    this.originalFilename,
    this.ownedByMe,
    this.ownerNames,
    this.owners,
    this.parents,
    this.permissionIds,
    this.permissions,
    this.properties,
    this.quotaBytesUsed,
    this.resourceKey,
    this.selfLink,
    this.shareable,
    this.shared,
    this.sharedWithMeDate,
    this.sharingUser,
    this.shortcutDetails,
    this.spaces,
    this.teamDriveId,
    this.thumbnail,
    this.thumbnailLink,
    this.thumbnailVersion,
    this.title,
    this.trashedDate,
    this.trashingUser,
    this.userPermission,
    this.version,
    this.videoMediaMetadata,
    this.webContentLink,
    this.webViewLink,
    this.writersCanShare,
  });

  File.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          appDataContents: json_.containsKey('appDataContents')
              ? json_['appDataContents'] as core.bool
              : null,
          canComment: json_.containsKey('canComment')
              ? json_['canComment'] as core.bool
              : null,
          canReadRevisions: json_.containsKey('canReadRevisions')
              ? json_['canReadRevisions'] as core.bool
              : null,
          capabilities: json_.containsKey('capabilities')
              ? FileCapabilities.fromJson(
                  json_['capabilities'] as core.Map<core.String, core.dynamic>)
              : null,
          contentRestrictions: json_.containsKey('contentRestrictions')
              ? (json_['contentRestrictions'] as core.List)
                  .map((value) => ContentRestriction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          copyRequiresWriterPermission:
              json_.containsKey('copyRequiresWriterPermission')
                  ? json_['copyRequiresWriterPermission'] as core.bool
                  : null,
          copyable: json_.containsKey('copyable')
              ? json_['copyable'] as core.bool
              : null,
          createdDate: json_.containsKey('createdDate')
              ? core.DateTime.parse(json_['createdDate'] as core.String)
              : null,
          defaultOpenWithLink: json_.containsKey('defaultOpenWithLink')
              ? json_['defaultOpenWithLink'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
          driveId: json_.containsKey('driveId')
              ? json_['driveId'] as core.String
              : null,
          editable: json_.containsKey('editable')
              ? json_['editable'] as core.bool
              : null,
          embedLink: json_.containsKey('embedLink')
              ? json_['embedLink'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          explicitlyTrashed: json_.containsKey('explicitlyTrashed')
              ? json_['explicitlyTrashed'] as core.bool
              : null,
          exportLinks: json_.containsKey('exportLinks')
              ? (json_['exportLinks'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          fileExtension: json_.containsKey('fileExtension')
              ? json_['fileExtension'] as core.String
              : null,
          fileSize: json_.containsKey('fileSize')
              ? json_['fileSize'] as core.String
              : null,
          folderColorRgb: json_.containsKey('folderColorRgb')
              ? json_['folderColorRgb'] as core.String
              : null,
          fullFileExtension: json_.containsKey('fullFileExtension')
              ? json_['fullFileExtension'] as core.String
              : null,
          hasAugmentedPermissions: json_.containsKey('hasAugmentedPermissions')
              ? json_['hasAugmentedPermissions'] as core.bool
              : null,
          hasThumbnail: json_.containsKey('hasThumbnail')
              ? json_['hasThumbnail'] as core.bool
              : null,
          headRevisionId: json_.containsKey('headRevisionId')
              ? json_['headRevisionId'] as core.String
              : null,
          iconLink: json_.containsKey('iconLink')
              ? json_['iconLink'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          imageMediaMetadata: json_.containsKey('imageMediaMetadata')
              ? FileImageMediaMetadata.fromJson(json_['imageMediaMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          indexableText: json_.containsKey('indexableText')
              ? FileIndexableText.fromJson(
                  json_['indexableText'] as core.Map<core.String, core.dynamic>)
              : null,
          isAppAuthorized: json_.containsKey('isAppAuthorized')
              ? json_['isAppAuthorized'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labelInfo: json_.containsKey('labelInfo')
              ? FileLabelInfo.fromJson(
                  json_['labelInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? FileLabels.fromJson(
                  json_['labels'] as core.Map<core.String, core.dynamic>)
              : null,
          lastModifyingUser: json_.containsKey('lastModifyingUser')
              ? User.fromJson(json_['lastModifyingUser']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastModifyingUserName: json_.containsKey('lastModifyingUserName')
              ? json_['lastModifyingUserName'] as core.String
              : null,
          lastViewedByMeDate: json_.containsKey('lastViewedByMeDate')
              ? core.DateTime.parse(json_['lastViewedByMeDate'] as core.String)
              : null,
          linkShareMetadata: json_.containsKey('linkShareMetadata')
              ? FileLinkShareMetadata.fromJson(json_['linkShareMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          markedViewedByMeDate: json_.containsKey('markedViewedByMeDate')
              ? core.DateTime.parse(
                  json_['markedViewedByMeDate'] as core.String)
              : null,
          md5Checksum: json_.containsKey('md5Checksum')
              ? json_['md5Checksum'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          modifiedByMeDate: json_.containsKey('modifiedByMeDate')
              ? core.DateTime.parse(json_['modifiedByMeDate'] as core.String)
              : null,
          modifiedDate: json_.containsKey('modifiedDate')
              ? core.DateTime.parse(json_['modifiedDate'] as core.String)
              : null,
          openWithLinks: json_.containsKey('openWithLinks')
              ? (json_['openWithLinks'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          originalFilename: json_.containsKey('originalFilename')
              ? json_['originalFilename'] as core.String
              : null,
          ownedByMe: json_.containsKey('ownedByMe')
              ? json_['ownedByMe'] as core.bool
              : null,
          ownerNames: json_.containsKey('ownerNames')
              ? (json_['ownerNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          owners: json_.containsKey('owners')
              ? (json_['owners'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parents: json_.containsKey('parents')
              ? (json_['parents'] as core.List)
                  .map((value) => ParentReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          permissionIds: json_.containsKey('permissionIds')
              ? (json_['permissionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) => Property.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quotaBytesUsed: json_.containsKey('quotaBytesUsed')
              ? json_['quotaBytesUsed'] as core.String
              : null,
          resourceKey: json_.containsKey('resourceKey')
              ? json_['resourceKey'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          shareable: json_.containsKey('shareable')
              ? json_['shareable'] as core.bool
              : null,
          shared:
              json_.containsKey('shared') ? json_['shared'] as core.bool : null,
          sharedWithMeDate: json_.containsKey('sharedWithMeDate')
              ? core.DateTime.parse(json_['sharedWithMeDate'] as core.String)
              : null,
          sharingUser: json_.containsKey('sharingUser')
              ? User.fromJson(
                  json_['sharingUser'] as core.Map<core.String, core.dynamic>)
              : null,
          shortcutDetails: json_.containsKey('shortcutDetails')
              ? FileShortcutDetails.fromJson(json_['shortcutDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spaces: json_.containsKey('spaces')
              ? (json_['spaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          teamDriveId: json_.containsKey('teamDriveId')
              ? json_['teamDriveId'] as core.String
              : null,
          thumbnail: json_.containsKey('thumbnail')
              ? FileThumbnail.fromJson(
                  json_['thumbnail'] as core.Map<core.String, core.dynamic>)
              : null,
          thumbnailLink: json_.containsKey('thumbnailLink')
              ? json_['thumbnailLink'] as core.String
              : null,
          thumbnailVersion: json_.containsKey('thumbnailVersion')
              ? json_['thumbnailVersion'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          trashedDate: json_.containsKey('trashedDate')
              ? core.DateTime.parse(json_['trashedDate'] as core.String)
              : null,
          trashingUser: json_.containsKey('trashingUser')
              ? User.fromJson(
                  json_['trashingUser'] as core.Map<core.String, core.dynamic>)
              : null,
          userPermission: json_.containsKey('userPermission')
              ? Permission.fromJson(json_['userPermission']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          videoMediaMetadata: json_.containsKey('videoMediaMetadata')
              ? FileVideoMediaMetadata.fromJson(json_['videoMediaMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webContentLink: json_.containsKey('webContentLink')
              ? json_['webContentLink'] as core.String
              : null,
          webViewLink: json_.containsKey('webViewLink')
              ? json_['webViewLink'] as core.String
              : null,
          writersCanShare: json_.containsKey('writersCanShare')
              ? json_['writersCanShare'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (appDataContents != null) 'appDataContents': appDataContents!,
        if (canComment != null) 'canComment': canComment!,
        if (canReadRevisions != null) 'canReadRevisions': canReadRevisions!,
        if (capabilities != null) 'capabilities': capabilities!,
        if (contentRestrictions != null)
          'contentRestrictions': contentRestrictions!,
        if (copyRequiresWriterPermission != null)
          'copyRequiresWriterPermission': copyRequiresWriterPermission!,
        if (copyable != null) 'copyable': copyable!,
        if (createdDate != null)
          'createdDate': createdDate!.toUtc().toIso8601String(),
        if (defaultOpenWithLink != null)
          'defaultOpenWithLink': defaultOpenWithLink!,
        if (description != null) 'description': description!,
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (driveId != null) 'driveId': driveId!,
        if (editable != null) 'editable': editable!,
        if (embedLink != null) 'embedLink': embedLink!,
        if (etag != null) 'etag': etag!,
        if (explicitlyTrashed != null) 'explicitlyTrashed': explicitlyTrashed!,
        if (exportLinks != null) 'exportLinks': exportLinks!,
        if (fileExtension != null) 'fileExtension': fileExtension!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (folderColorRgb != null) 'folderColorRgb': folderColorRgb!,
        if (fullFileExtension != null) 'fullFileExtension': fullFileExtension!,
        if (hasAugmentedPermissions != null)
          'hasAugmentedPermissions': hasAugmentedPermissions!,
        if (hasThumbnail != null) 'hasThumbnail': hasThumbnail!,
        if (headRevisionId != null) 'headRevisionId': headRevisionId!,
        if (iconLink != null) 'iconLink': iconLink!,
        if (id != null) 'id': id!,
        if (imageMediaMetadata != null)
          'imageMediaMetadata': imageMediaMetadata!,
        if (indexableText != null) 'indexableText': indexableText!,
        if (isAppAuthorized != null) 'isAppAuthorized': isAppAuthorized!,
        if (kind != null) 'kind': kind!,
        if (labelInfo != null) 'labelInfo': labelInfo!,
        if (labels != null) 'labels': labels!,
        if (lastModifyingUser != null) 'lastModifyingUser': lastModifyingUser!,
        if (lastModifyingUserName != null)
          'lastModifyingUserName': lastModifyingUserName!,
        if (lastViewedByMeDate != null)
          'lastViewedByMeDate': lastViewedByMeDate!.toUtc().toIso8601String(),
        if (linkShareMetadata != null) 'linkShareMetadata': linkShareMetadata!,
        if (markedViewedByMeDate != null)
          'markedViewedByMeDate':
              markedViewedByMeDate!.toUtc().toIso8601String(),
        if (md5Checksum != null) 'md5Checksum': md5Checksum!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (modifiedByMeDate != null)
          'modifiedByMeDate': modifiedByMeDate!.toUtc().toIso8601String(),
        if (modifiedDate != null)
          'modifiedDate': modifiedDate!.toUtc().toIso8601String(),
        if (openWithLinks != null) 'openWithLinks': openWithLinks!,
        if (originalFilename != null) 'originalFilename': originalFilename!,
        if (ownedByMe != null) 'ownedByMe': ownedByMe!,
        if (ownerNames != null) 'ownerNames': ownerNames!,
        if (owners != null) 'owners': owners!,
        if (parents != null) 'parents': parents!,
        if (permissionIds != null) 'permissionIds': permissionIds!,
        if (permissions != null) 'permissions': permissions!,
        if (properties != null) 'properties': properties!,
        if (quotaBytesUsed != null) 'quotaBytesUsed': quotaBytesUsed!,
        if (resourceKey != null) 'resourceKey': resourceKey!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (shareable != null) 'shareable': shareable!,
        if (shared != null) 'shared': shared!,
        if (sharedWithMeDate != null)
          'sharedWithMeDate': sharedWithMeDate!.toUtc().toIso8601String(),
        if (sharingUser != null) 'sharingUser': sharingUser!,
        if (shortcutDetails != null) 'shortcutDetails': shortcutDetails!,
        if (spaces != null) 'spaces': spaces!,
        if (teamDriveId != null) 'teamDriveId': teamDriveId!,
        if (thumbnail != null) 'thumbnail': thumbnail!,
        if (thumbnailLink != null) 'thumbnailLink': thumbnailLink!,
        if (thumbnailVersion != null) 'thumbnailVersion': thumbnailVersion!,
        if (title != null) 'title': title!,
        if (trashedDate != null)
          'trashedDate': trashedDate!.toUtc().toIso8601String(),
        if (trashingUser != null) 'trashingUser': trashingUser!,
        if (userPermission != null) 'userPermission': userPermission!,
        if (version != null) 'version': version!,
        if (videoMediaMetadata != null)
          'videoMediaMetadata': videoMediaMetadata!,
        if (webContentLink != null) 'webContentLink': webContentLink!,
        if (webViewLink != null) 'webViewLink': webViewLink!,
        if (writersCanShare != null) 'writersCanShare': writersCanShare!,
      };
}

/// A list of files.
class FileList {
  /// The ETag of the list.
  core.String? etag;

  /// Whether the search process was incomplete.
  ///
  /// If true, then some search results may be missing, since all documents were
  /// not searched. This may occur when searching multiple drives with the
  /// "allDrives" corpora, but all corpora could not be searched. When this
  /// happens, it is suggested that clients narrow their query by choosing a
  /// different corpus such as "default" or "drive".
  core.bool? incompleteSearch;

  /// The list of files.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<File>? items;

  /// This is always drive#fileList.
  core.String? kind;

  /// A link to the next page of files.
  core.String? nextLink;

  /// The page token for the next page of files.
  ///
  /// This will be absent if the end of the files list has been reached. If the
  /// token is rejected for any reason, it should be discarded, and pagination
  /// should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  FileList({
    this.etag,
    this.incompleteSearch,
    this.items,
    this.kind,
    this.nextLink,
    this.nextPageToken,
    this.selfLink,
  });

  FileList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          incompleteSearch: json_.containsKey('incompleteSearch')
              ? json_['incompleteSearch'] as core.bool
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => File.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextLink: json_.containsKey('nextLink')
              ? json_['nextLink'] as core.String
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (incompleteSearch != null) 'incompleteSearch': incompleteSearch!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A list of generated IDs which can be provided in insert requests
class GeneratedIds {
  /// The IDs generated for the requesting user in the specified space.
  core.List<core.String>? ids;

  /// This is always drive#generatedIds
  core.String? kind;

  /// The type of file that can be created with these IDs.
  core.String? space;

  GeneratedIds({
    this.ids,
    this.kind,
    this.space,
  });

  GeneratedIds.fromJson(core.Map json_)
      : this(
          ids: json_.containsKey('ids')
              ? (json_['ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          space:
              json_.containsKey('space') ? json_['space'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ids != null) 'ids': ids!,
        if (kind != null) 'kind': kind!,
        if (space != null) 'space': space!,
      };
}

/// Representation of a label and its fields.
class Label {
  /// A map of the label's fields keyed by the field ID.
  core.Map<core.String, LabelField>? fields;

  /// The ID of the label.
  core.String? id;

  /// This is always drive#label
  core.String? kind;

  /// The revision ID of the label.
  core.String? revisionId;

  Label({
    this.fields,
    this.id,
    this.kind,
    this.revisionId,
  });

  Label.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    LabelField.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Representation of a label field.
class LabelField {
  /// Only present if valueType is dateString.
  ///
  /// RFC 3339 formatted date: YYYY-MM-DD.
  core.List<core.DateTime>? dateString;

  /// The identifier of this field.
  core.String? id;

  /// Only present if valueType is integer.
  core.List<core.String>? integer;

  /// This is always drive#labelField.
  core.String? kind;

  /// Only present if valueType is selection.
  core.List<core.String>? selection;

  /// Only present if valueType is text.
  core.List<core.String>? text;

  /// Only present if valueType is user.
  core.List<User>? user;

  /// The field type.
  ///
  /// While new values may be supported in the future, the following are
  /// currently allowed:
  /// - dateString
  /// - integer
  /// - selection
  /// - text
  /// - user
  core.String? valueType;

  LabelField({
    this.dateString,
    this.id,
    this.integer,
    this.kind,
    this.selection,
    this.text,
    this.user,
    this.valueType,
  });

  LabelField.fromJson(core.Map json_)
      : this(
          dateString: json_.containsKey('dateString')
              ? (json_['dateString'] as core.List)
                  .map((value) => core.DateTime.parse(value as core.String))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          integer: json_.containsKey('integer')
              ? (json_['integer'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selection: json_.containsKey('selection')
              ? (json_['selection'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          text: json_.containsKey('text')
              ? (json_['text'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          user: json_.containsKey('user')
              ? (json_['user'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateString != null)
          'dateString': dateString!
              .map((value) =>
                  "${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}")
              .toList(),
        if (id != null) 'id': id!,
        if (integer != null) 'integer': integer!,
        if (kind != null) 'kind': kind!,
        if (selection != null) 'selection': selection!,
        if (text != null) 'text': text!,
        if (user != null) 'user': user!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// A modification to a label's field.
class LabelFieldModification {
  /// The ID of the field to be modified.
  core.String? fieldId;

  /// This is always drive#labelFieldModification.
  core.String? kind;

  /// Replaces a dateString field with these new values.
  ///
  /// The values must be strings in the RFC 3339 full-date format: YYYY-MM-DD.
  core.List<core.DateTime>? setDateValues;

  /// Replaces an integer field with these new values.
  core.List<core.String>? setIntegerValues;

  /// Replaces a selection field with these new values.
  core.List<core.String>? setSelectionValues;

  /// Replaces a text field with these new values.
  core.List<core.String>? setTextValues;

  /// Replaces a user field with these new values.
  ///
  /// The values must be valid email addresses.
  core.List<core.String>? setUserValues;

  /// Unsets the values for this field.
  core.bool? unsetValues;

  LabelFieldModification({
    this.fieldId,
    this.kind,
    this.setDateValues,
    this.setIntegerValues,
    this.setSelectionValues,
    this.setTextValues,
    this.setUserValues,
    this.unsetValues,
  });

  LabelFieldModification.fromJson(core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          setDateValues: json_.containsKey('setDateValues')
              ? (json_['setDateValues'] as core.List)
                  .map((value) => core.DateTime.parse(value as core.String))
                  .toList()
              : null,
          setIntegerValues: json_.containsKey('setIntegerValues')
              ? (json_['setIntegerValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          setSelectionValues: json_.containsKey('setSelectionValues')
              ? (json_['setSelectionValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          setTextValues: json_.containsKey('setTextValues')
              ? (json_['setTextValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          setUserValues: json_.containsKey('setUserValues')
              ? (json_['setUserValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          unsetValues: json_.containsKey('unsetValues')
              ? json_['unsetValues'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (kind != null) 'kind': kind!,
        if (setDateValues != null)
          'setDateValues': setDateValues!
              .map((value) =>
                  "${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}")
              .toList(),
        if (setIntegerValues != null) 'setIntegerValues': setIntegerValues!,
        if (setSelectionValues != null)
          'setSelectionValues': setSelectionValues!,
        if (setTextValues != null) 'setTextValues': setTextValues!,
        if (setUserValues != null) 'setUserValues': setUserValues!,
        if (unsetValues != null) 'unsetValues': unsetValues!,
      };
}

/// A list of labels.
class LabelList {
  /// The list of labels.
  core.List<Label>? items;

  /// This is always drive#labelList
  core.String? kind;

  /// The page token for the next page of labels.
  ///
  /// This field will be absent if the end of the list has been reached. If the
  /// token is rejected for any reason, it should be discarded, and pagination
  /// should be restarted from the first page of results.
  core.String? nextPageToken;

  LabelList({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  LabelList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A modification to a label on a file.
///
/// A LabelModification can be used to apply a label to a file, update an
/// existing label on a file, or remove a label from a file.
class LabelModification {
  /// The list of modifications to this label's fields.
  core.List<LabelFieldModification>? fieldModifications;

  /// This is always drive#labelModification.
  core.String? kind;

  /// The ID of the label to modify.
  core.String? labelId;

  /// If true, the label will be removed from the file.
  core.bool? removeLabel;

  LabelModification({
    this.fieldModifications,
    this.kind,
    this.labelId,
    this.removeLabel,
  });

  LabelModification.fromJson(core.Map json_)
      : this(
          fieldModifications: json_.containsKey('fieldModifications')
              ? (json_['fieldModifications'] as core.List)
                  .map((value) => LabelFieldModification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labelId: json_.containsKey('labelId')
              ? json_['labelId'] as core.String
              : null,
          removeLabel: json_.containsKey('removeLabel')
              ? json_['removeLabel'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldModifications != null)
          'fieldModifications': fieldModifications!,
        if (kind != null) 'kind': kind!,
        if (labelId != null) 'labelId': labelId!,
        if (removeLabel != null) 'removeLabel': removeLabel!,
      };
}

/// A request to modify the set of labels on a file.
///
/// This request may contain many modifications that will either all succeed or
/// all fail transactionally.
class ModifyLabelsRequest {
  /// This is always drive#modifyLabelsRequest
  core.String? kind;

  /// The list of modifications to apply to the labels on the file.
  core.List<LabelModification>? labelModifications;

  ModifyLabelsRequest({
    this.kind,
    this.labelModifications,
  });

  ModifyLabelsRequest.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labelModifications: json_.containsKey('labelModifications')
              ? (json_['labelModifications'] as core.List)
                  .map((value) => LabelModification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (labelModifications != null)
          'labelModifications': labelModifications!,
      };
}

/// Response to a ModifyLabels request.
///
/// This contains only those labels which were added or updated by the request.
class ModifyLabelsResponse {
  /// This is always drive#modifyLabelsResponse
  core.String? kind;

  /// The list of labels which were added or updated by the request.
  core.List<Label>? modifiedLabels;

  ModifyLabelsResponse({
    this.kind,
    this.modifiedLabels,
  });

  ModifyLabelsResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          modifiedLabels: json_.containsKey('modifiedLabels')
              ? (json_['modifiedLabels'] as core.List)
                  .map((value) => Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (modifiedLabels != null) 'modifiedLabels': modifiedLabels!,
      };
}

/// A list of a file's parents.
class ParentList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of parents.
  core.List<ParentReference>? items;

  /// This is always drive#parentList.
  core.String? kind;

  /// A link back to this list.
  core.String? selfLink;

  ParentList({
    this.etag,
    this.items,
    this.kind,
    this.selfLink,
  });

  ParentList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ParentReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A reference to a file's parent.
class ParentReference {
  /// The ID of the parent.
  core.String? id;

  /// Whether or not the parent is the root folder.
  core.bool? isRoot;

  /// This is always drive#parentReference.
  core.String? kind;

  /// A link to the parent.
  core.String? parentLink;

  /// A link back to this reference.
  core.String? selfLink;

  ParentReference({
    this.id,
    this.isRoot,
    this.kind,
    this.parentLink,
    this.selfLink,
  });

  ParentReference.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          isRoot:
              json_.containsKey('isRoot') ? json_['isRoot'] as core.bool : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          parentLink: json_.containsKey('parentLink')
              ? json_['parentLink'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (isRoot != null) 'isRoot': isRoot!,
        if (kind != null) 'kind': kind!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

class PermissionPermissionDetails {
  /// Additional roles for this user.
  ///
  /// Only commenter is currently possible, though more may be supported in the
  /// future.
  core.List<core.String>? additionalRoles;

  /// Whether this permission is inherited.
  ///
  /// This field is always populated. This is an output-only field.
  core.bool? inherited;

  /// The ID of the item from which this permission is inherited.
  ///
  /// This is an output-only field.
  core.String? inheritedFrom;

  /// The permission type for this user.
  ///
  /// While new values may be added in future, the following are currently
  /// possible:
  /// - file
  /// - member
  core.String? permissionType;

  /// The primary role for this user.
  ///
  /// While new values may be added in the future, the following are currently
  /// possible:
  /// - organizer
  /// - fileOrganizer
  /// - writer
  /// - reader
  core.String? role;

  PermissionPermissionDetails({
    this.additionalRoles,
    this.inherited,
    this.inheritedFrom,
    this.permissionType,
    this.role,
  });

  PermissionPermissionDetails.fromJson(core.Map json_)
      : this(
          additionalRoles: json_.containsKey('additionalRoles')
              ? (json_['additionalRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inherited: json_.containsKey('inherited')
              ? json_['inherited'] as core.bool
              : null,
          inheritedFrom: json_.containsKey('inheritedFrom')
              ? json_['inheritedFrom'] as core.String
              : null,
          permissionType: json_.containsKey('permissionType')
              ? json_['permissionType'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalRoles != null) 'additionalRoles': additionalRoles!,
        if (inherited != null) 'inherited': inherited!,
        if (inheritedFrom != null) 'inheritedFrom': inheritedFrom!,
        if (permissionType != null) 'permissionType': permissionType!,
        if (role != null) 'role': role!,
      };
}

class PermissionTeamDrivePermissionDetails {
  /// Deprecated - use permissionDetails/additionalRoles instead.
  core.List<core.String>? additionalRoles;

  /// Deprecated - use permissionDetails/inherited instead.
  core.bool? inherited;

  /// Deprecated - use permissionDetails/inheritedFrom instead.
  core.String? inheritedFrom;

  /// Deprecated - use permissionDetails/role instead.
  core.String? role;

  /// Deprecated - use permissionDetails/permissionType instead.
  core.String? teamDrivePermissionType;

  PermissionTeamDrivePermissionDetails({
    this.additionalRoles,
    this.inherited,
    this.inheritedFrom,
    this.role,
    this.teamDrivePermissionType,
  });

  PermissionTeamDrivePermissionDetails.fromJson(core.Map json_)
      : this(
          additionalRoles: json_.containsKey('additionalRoles')
              ? (json_['additionalRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inherited: json_.containsKey('inherited')
              ? json_['inherited'] as core.bool
              : null,
          inheritedFrom: json_.containsKey('inheritedFrom')
              ? json_['inheritedFrom'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          teamDrivePermissionType: json_.containsKey('teamDrivePermissionType')
              ? json_['teamDrivePermissionType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalRoles != null) 'additionalRoles': additionalRoles!,
        if (inherited != null) 'inherited': inherited!,
        if (inheritedFrom != null) 'inheritedFrom': inheritedFrom!,
        if (role != null) 'role': role!,
        if (teamDrivePermissionType != null)
          'teamDrivePermissionType': teamDrivePermissionType!,
      };
}

/// A permission for a file.
class Permission {
  /// Additional roles for this user.
  ///
  /// Only commenter is currently allowed, though more may be supported in the
  /// future.
  core.List<core.String>? additionalRoles;

  /// Deprecated.
  core.String? authKey;

  /// Whether the account associated with this permission has been deleted.
  ///
  /// This field only pertains to user and group permissions.
  core.bool? deleted;

  /// The domain name of the entity this permission refers to.
  ///
  /// This is an output-only field which is present when the permission type is
  /// user, group or domain.
  core.String? domain;

  /// The email address of the user or group this permission refers to.
  ///
  /// This is an output-only field which is present when the permission type is
  /// user or group.
  core.String? emailAddress;

  /// The ETag of the permission.
  core.String? etag;

  /// The time at which this permission will expire (RFC 3339 date-time).
  ///
  /// Expiration dates have the following restrictions:
  /// - They cannot be set on shared drive items
  /// - They can only be set on user and group permissions
  /// - The date must be in the future
  /// - The date cannot be more than a year in the future
  /// - The date can only be set on drive.permissions.update or
  /// drive.permissions.patch requests
  core.DateTime? expirationDate;

  /// The ID of the user this permission refers to, and identical to the
  /// permissionId in the About and Files resources.
  ///
  /// When making a drive.permissions.insert request, exactly one of the id or
  /// value fields must be specified unless the permission type is anyone, in
  /// which case both id and value are ignored.
  core.String? id;

  /// This is always drive#permission.
  core.String? kind;

  /// The name for this permission.
  core.String? name;

  /// Whether the account associated with this permission is a pending owner.
  ///
  /// Only populated for user type permissions for files that are not in a
  /// shared drive.
  core.bool? pendingOwner;

  /// Details of whether the permissions on this shared drive item are inherited
  /// or directly on this item.
  ///
  /// This is an output-only field which is present only for shared drive items.
  core.List<PermissionPermissionDetails>? permissionDetails;

  /// A link to the profile photo, if available.
  core.String? photoLink;

  /// The primary role for this user.
  ///
  /// While new values may be supported in the future, the following are
  /// currently allowed:
  /// - owner
  /// - organizer
  /// - fileOrganizer
  /// - writer
  /// - reader
  core.String? role;

  /// A link back to this permission.
  core.String? selfLink;

  /// Deprecated - use permissionDetails instead.
  core.List<PermissionTeamDrivePermissionDetails>? teamDrivePermissionDetails;

  /// The account type.
  ///
  /// Allowed values are:
  /// - user
  /// - group
  /// - domain
  /// - anyone
  core.String? type;

  /// The email address or domain name for the entity.
  ///
  /// This is used during inserts and is not populated in responses. When making
  /// a drive.permissions.insert request, exactly one of the id or value fields
  /// must be specified unless the permission type is anyone, in which case both
  /// id and value are ignored.
  core.String? value;

  /// Indicates the view for this permission.
  ///
  /// Only populated for permissions that belong to a view. published is the
  /// only supported value.
  core.String? view;

  /// Whether the link is required for this permission.
  core.bool? withLink;

  Permission({
    this.additionalRoles,
    this.authKey,
    this.deleted,
    this.domain,
    this.emailAddress,
    this.etag,
    this.expirationDate,
    this.id,
    this.kind,
    this.name,
    this.pendingOwner,
    this.permissionDetails,
    this.photoLink,
    this.role,
    this.selfLink,
    this.teamDrivePermissionDetails,
    this.type,
    this.value,
    this.view,
    this.withLink,
  });

  Permission.fromJson(core.Map json_)
      : this(
          additionalRoles: json_.containsKey('additionalRoles')
              ? (json_['additionalRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          authKey: json_.containsKey('authKey')
              ? json_['authKey'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expirationDate: json_.containsKey('expirationDate')
              ? core.DateTime.parse(json_['expirationDate'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingOwner: json_.containsKey('pendingOwner')
              ? json_['pendingOwner'] as core.bool
              : null,
          permissionDetails: json_.containsKey('permissionDetails')
              ? (json_['permissionDetails'] as core.List)
                  .map((value) => PermissionPermissionDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          photoLink: json_.containsKey('photoLink')
              ? json_['photoLink'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          teamDrivePermissionDetails: json_
                  .containsKey('teamDrivePermissionDetails')
              ? (json_['teamDrivePermissionDetails'] as core.List)
                  .map((value) => PermissionTeamDrivePermissionDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
          withLink: json_.containsKey('withLink')
              ? json_['withLink'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalRoles != null) 'additionalRoles': additionalRoles!,
        if (authKey != null) 'authKey': authKey!,
        if (deleted != null) 'deleted': deleted!,
        if (domain != null) 'domain': domain!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (etag != null) 'etag': etag!,
        if (expirationDate != null)
          'expirationDate': expirationDate!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (pendingOwner != null) 'pendingOwner': pendingOwner!,
        if (permissionDetails != null) 'permissionDetails': permissionDetails!,
        if (photoLink != null) 'photoLink': photoLink!,
        if (role != null) 'role': role!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (teamDrivePermissionDetails != null)
          'teamDrivePermissionDetails': teamDrivePermissionDetails!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
        if (view != null) 'view': view!,
        if (withLink != null) 'withLink': withLink!,
      };
}

/// An ID for a user or group as seen in Permission items.
class PermissionId {
  /// The permission ID.
  core.String? id;

  /// This is always drive#permissionId.
  core.String? kind;

  PermissionId({
    this.id,
    this.kind,
  });

  PermissionId.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
      };
}

/// A list of permissions associated with a file.
class PermissionList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of permissions.
  core.List<Permission>? items;

  /// This is always drive#permissionList.
  core.String? kind;

  /// The page token for the next page of permissions.
  ///
  /// This field will be absent if the end of the permissions list has been
  /// reached. If the token is rejected for any reason, it should be discarded,
  /// and pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  PermissionList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.selfLink,
  });

  PermissionList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A key-value pair attached to a file that is either public or private to an
/// application.
/// The following limits apply to file properties:
/// - Maximum of 100 properties total per file
/// - Maximum of 30 private properties per app
/// - Maximum of 30 public properties
/// - Maximum of 124 bytes size limit on (key + value) string in UTF-8 encoding
/// for a single property.
class Property {
  /// ETag of the property.
  core.String? etag;

  /// The key of this property.
  core.String? key;

  /// This is always drive#property.
  core.String? kind;

  /// The link back to this property.
  core.String? selfLink;

  /// The value of this property.
  core.String? value;

  /// The visibility of this property.
  ///
  /// Allowed values are PRIVATE and PUBLIC. (Default: PRIVATE). Private
  /// properties can only be retrieved using an authenticated request. An
  /// authenticated request uses an access token obtained with a OAuth 2 client
  /// ID. You cannot use an API key to retrieve private properties.
  core.String? visibility;

  Property({
    this.etag,
    this.key,
    this.kind,
    this.selfLink,
    this.value,
    this.visibility,
  });

  Property.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (key != null) 'key': key!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (value != null) 'value': value!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// A collection of properties, key-value pairs that are either public or
/// private to an application.
class PropertyList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of properties.
  core.List<Property>? items;

  /// This is always drive#propertyList.
  core.String? kind;

  /// The link back to this list.
  core.String? selfLink;

  PropertyList({
    this.etag,
    this.items,
    this.kind,
    this.selfLink,
  });

  PropertyList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Property.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A revision of a file.
class Revision {
  core.String? downloadUrl;

  /// The ETag of the revision.
  core.String? etag;

  /// Links for exporting Docs Editors files to specific formats.
  core.Map<core.String, core.String>? exportLinks;

  /// The size of the revision in bytes.
  ///
  /// This will only be populated on files with content stored in Drive.
  core.String? fileSize;

  /// The ID of the revision.
  core.String? id;

  /// This is always drive#revision.
  core.String? kind;

  /// The last user to modify this revision.
  User? lastModifyingUser;

  /// Name of the last user to modify this revision.
  core.String? lastModifyingUserName;

  /// An MD5 checksum for the content of this revision.
  ///
  /// This will only be populated on files with content stored in Drive.
  core.String? md5Checksum;

  /// The MIME type of the revision.
  core.String? mimeType;

  /// Last time this revision was modified (formatted RFC 3339 timestamp).
  core.DateTime? modifiedDate;

  /// The original filename when this revision was created.
  ///
  /// This will only be populated on files with content stored in Drive.
  core.String? originalFilename;

  /// Whether this revision is pinned to prevent automatic purging.
  ///
  /// If not set, the revision is automatically purged 30 days after newer
  /// content is uploaded. This field can only be modified on files with content
  /// stored in Drive, excluding Docs Editors files. Revisions can also be
  /// pinned when they are created through the drive.files.insert/update/copy by
  /// using the pinned query parameter. Pinned revisions are stored indefinitely
  /// using additional storage quota, up to a maximum of 200 revisions.
  core.bool? pinned;

  /// Whether subsequent revisions will be automatically republished.
  ///
  /// This is only populated and can only be modified for Docs Editors files.
  core.bool? publishAuto;

  /// Whether this revision is published.
  ///
  /// This is only populated and can only be modified for Docs Editors files.
  core.bool? published;

  /// A link to the published revision.
  ///
  /// This is only populated for Google Sites files.
  core.String? publishedLink;

  /// Whether this revision is published outside the domain.
  ///
  /// This is only populated and can only be modified for Docs Editors files.
  core.bool? publishedOutsideDomain;

  /// A link back to this revision.
  core.String? selfLink;

  Revision({
    this.downloadUrl,
    this.etag,
    this.exportLinks,
    this.fileSize,
    this.id,
    this.kind,
    this.lastModifyingUser,
    this.lastModifyingUserName,
    this.md5Checksum,
    this.mimeType,
    this.modifiedDate,
    this.originalFilename,
    this.pinned,
    this.publishAuto,
    this.published,
    this.publishedLink,
    this.publishedOutsideDomain,
    this.selfLink,
  });

  Revision.fromJson(core.Map json_)
      : this(
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          exportLinks: json_.containsKey('exportLinks')
              ? (json_['exportLinks'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          fileSize: json_.containsKey('fileSize')
              ? json_['fileSize'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifyingUser: json_.containsKey('lastModifyingUser')
              ? User.fromJson(json_['lastModifyingUser']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastModifyingUserName: json_.containsKey('lastModifyingUserName')
              ? json_['lastModifyingUserName'] as core.String
              : null,
          md5Checksum: json_.containsKey('md5Checksum')
              ? json_['md5Checksum'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          modifiedDate: json_.containsKey('modifiedDate')
              ? core.DateTime.parse(json_['modifiedDate'] as core.String)
              : null,
          originalFilename: json_.containsKey('originalFilename')
              ? json_['originalFilename'] as core.String
              : null,
          pinned:
              json_.containsKey('pinned') ? json_['pinned'] as core.bool : null,
          publishAuto: json_.containsKey('publishAuto')
              ? json_['publishAuto'] as core.bool
              : null,
          published: json_.containsKey('published')
              ? json_['published'] as core.bool
              : null,
          publishedLink: json_.containsKey('publishedLink')
              ? json_['publishedLink'] as core.String
              : null,
          publishedOutsideDomain: json_.containsKey('publishedOutsideDomain')
              ? json_['publishedOutsideDomain'] as core.bool
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (etag != null) 'etag': etag!,
        if (exportLinks != null) 'exportLinks': exportLinks!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifyingUser != null) 'lastModifyingUser': lastModifyingUser!,
        if (lastModifyingUserName != null)
          'lastModifyingUserName': lastModifyingUserName!,
        if (md5Checksum != null) 'md5Checksum': md5Checksum!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (modifiedDate != null)
          'modifiedDate': modifiedDate!.toUtc().toIso8601String(),
        if (originalFilename != null) 'originalFilename': originalFilename!,
        if (pinned != null) 'pinned': pinned!,
        if (publishAuto != null) 'publishAuto': publishAuto!,
        if (published != null) 'published': published!,
        if (publishedLink != null) 'publishedLink': publishedLink!,
        if (publishedOutsideDomain != null)
          'publishedOutsideDomain': publishedOutsideDomain!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A list of revisions of a file.
class RevisionList {
  /// The ETag of the list.
  core.String? etag;

  /// The list of revisions.
  ///
  /// If nextPageToken is populated, then this list may be incomplete and an
  /// additional page of results should be fetched.
  core.List<Revision>? items;

  /// This is always drive#revisionList.
  core.String? kind;

  /// The page token for the next page of revisions.
  ///
  /// This field will be absent if the end of the revisions list has been
  /// reached. If the token is rejected for any reason, it should be discarded
  /// and pagination should be restarted from the first page of results.
  core.String? nextPageToken;

  /// A link back to this list.
  core.String? selfLink;

  RevisionList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.selfLink,
  });

  RevisionList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Revision.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

typedef StartPageToken = $StartPageToken;

/// An image file and cropping parameters from which a background image for this
/// Team Drive is set.
///
/// This is a write only field; it can only be set on drive.teamdrives.update
/// requests that don't set themeId. When specified, all fields of the
/// backgroundImageFile must be set.
class TeamDriveBackgroundImageFile {
  /// The ID of an image file in Drive to use for the background image.
  core.String? id;

  /// The width of the cropped image in the closed range of 0 to 1.
  ///
  /// This value represents the width of the cropped image divided by the width
  /// of the entire image. The height is computed by applying a width to height
  /// aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels
  /// wide and 144 pixels high.
  core.double? width;

  /// The X coordinate of the upper left corner of the cropping area in the
  /// background image.
  ///
  /// This is a value in the closed range of 0 to 1. This value represents the
  /// horizontal distance from the left side of the entire image to the left
  /// side of the cropping area divided by the width of the entire image.
  core.double? xCoordinate;

  /// The Y coordinate of the upper left corner of the cropping area in the
  /// background image.
  ///
  /// This is a value in the closed range of 0 to 1. This value represents the
  /// vertical distance from the top side of the entire image to the top side of
  /// the cropping area divided by the height of the entire image.
  core.double? yCoordinate;

  TeamDriveBackgroundImageFile({
    this.id,
    this.width,
    this.xCoordinate,
    this.yCoordinate,
  });

  TeamDriveBackgroundImageFile.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          width: json_.containsKey('width')
              ? (json_['width'] as core.num).toDouble()
              : null,
          xCoordinate: json_.containsKey('xCoordinate')
              ? (json_['xCoordinate'] as core.num).toDouble()
              : null,
          yCoordinate: json_.containsKey('yCoordinate')
              ? (json_['yCoordinate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (width != null) 'width': width!,
        if (xCoordinate != null) 'xCoordinate': xCoordinate!,
        if (yCoordinate != null) 'yCoordinate': yCoordinate!,
      };
}

/// Capabilities the current user has on this Team Drive.
class TeamDriveCapabilities {
  /// Whether the current user can add children to folders in this Team Drive.
  core.bool? canAddChildren;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this Team Drive.
  core.bool? canChangeCopyRequiresWriterPermissionRestriction;

  /// Whether the current user can change the domainUsersOnly restriction of
  /// this Team Drive.
  core.bool? canChangeDomainUsersOnlyRestriction;

  /// Whether the current user can change the background of this Team Drive.
  core.bool? canChangeTeamDriveBackground;

  /// Whether the current user can change the teamMembersOnly restriction of
  /// this Team Drive.
  core.bool? canChangeTeamMembersOnlyRestriction;

  /// Whether the current user can comment on files in this Team Drive.
  core.bool? canComment;

  /// Whether the current user can copy files in this Team Drive.
  core.bool? canCopy;

  /// Whether the current user can delete children from folders in this Team
  /// Drive.
  core.bool? canDeleteChildren;

  /// Whether the current user can delete this Team Drive.
  ///
  /// Attempting to delete the Team Drive may still fail if there are untrashed
  /// items inside the Team Drive.
  core.bool? canDeleteTeamDrive;

  /// Whether the current user can download files in this Team Drive.
  core.bool? canDownload;

  /// Whether the current user can edit files in this Team Drive
  core.bool? canEdit;

  /// Whether the current user can list the children of folders in this Team
  /// Drive.
  core.bool? canListChildren;

  /// Whether the current user can add members to this Team Drive or remove them
  /// or change their role.
  core.bool? canManageMembers;

  /// Whether the current user can read the revisions resource of files in this
  /// Team Drive.
  core.bool? canReadRevisions;

  /// Deprecated - use canDeleteChildren or canTrashChildren instead.
  core.bool? canRemoveChildren;

  /// Whether the current user can rename files or folders in this Team Drive.
  core.bool? canRename;

  /// Whether the current user can rename this Team Drive.
  core.bool? canRenameTeamDrive;

  /// Whether the current user can reset the Team Drive restrictions to
  /// defaults.
  core.bool? canResetTeamDriveRestrictions;

  /// Whether the current user can share files or folders in this Team Drive.
  core.bool? canShare;

  /// Whether the current user can trash children from folders in this Team
  /// Drive.
  core.bool? canTrashChildren;

  TeamDriveCapabilities({
    this.canAddChildren,
    this.canChangeCopyRequiresWriterPermissionRestriction,
    this.canChangeDomainUsersOnlyRestriction,
    this.canChangeTeamDriveBackground,
    this.canChangeTeamMembersOnlyRestriction,
    this.canComment,
    this.canCopy,
    this.canDeleteChildren,
    this.canDeleteTeamDrive,
    this.canDownload,
    this.canEdit,
    this.canListChildren,
    this.canManageMembers,
    this.canReadRevisions,
    this.canRemoveChildren,
    this.canRename,
    this.canRenameTeamDrive,
    this.canResetTeamDriveRestrictions,
    this.canShare,
    this.canTrashChildren,
  });

  TeamDriveCapabilities.fromJson(core.Map json_)
      : this(
          canAddChildren: json_.containsKey('canAddChildren')
              ? json_['canAddChildren'] as core.bool
              : null,
          canChangeCopyRequiresWriterPermissionRestriction: json_.containsKey(
                  'canChangeCopyRequiresWriterPermissionRestriction')
              ? json_['canChangeCopyRequiresWriterPermissionRestriction']
                  as core.bool
              : null,
          canChangeDomainUsersOnlyRestriction:
              json_.containsKey('canChangeDomainUsersOnlyRestriction')
                  ? json_['canChangeDomainUsersOnlyRestriction'] as core.bool
                  : null,
          canChangeTeamDriveBackground:
              json_.containsKey('canChangeTeamDriveBackground')
                  ? json_['canChangeTeamDriveBackground'] as core.bool
                  : null,
          canChangeTeamMembersOnlyRestriction:
              json_.containsKey('canChangeTeamMembersOnlyRestriction')
                  ? json_['canChangeTeamMembersOnlyRestriction'] as core.bool
                  : null,
          canComment: json_.containsKey('canComment')
              ? json_['canComment'] as core.bool
              : null,
          canCopy: json_.containsKey('canCopy')
              ? json_['canCopy'] as core.bool
              : null,
          canDeleteChildren: json_.containsKey('canDeleteChildren')
              ? json_['canDeleteChildren'] as core.bool
              : null,
          canDeleteTeamDrive: json_.containsKey('canDeleteTeamDrive')
              ? json_['canDeleteTeamDrive'] as core.bool
              : null,
          canDownload: json_.containsKey('canDownload')
              ? json_['canDownload'] as core.bool
              : null,
          canEdit: json_.containsKey('canEdit')
              ? json_['canEdit'] as core.bool
              : null,
          canListChildren: json_.containsKey('canListChildren')
              ? json_['canListChildren'] as core.bool
              : null,
          canManageMembers: json_.containsKey('canManageMembers')
              ? json_['canManageMembers'] as core.bool
              : null,
          canReadRevisions: json_.containsKey('canReadRevisions')
              ? json_['canReadRevisions'] as core.bool
              : null,
          canRemoveChildren: json_.containsKey('canRemoveChildren')
              ? json_['canRemoveChildren'] as core.bool
              : null,
          canRename: json_.containsKey('canRename')
              ? json_['canRename'] as core.bool
              : null,
          canRenameTeamDrive: json_.containsKey('canRenameTeamDrive')
              ? json_['canRenameTeamDrive'] as core.bool
              : null,
          canResetTeamDriveRestrictions:
              json_.containsKey('canResetTeamDriveRestrictions')
                  ? json_['canResetTeamDriveRestrictions'] as core.bool
                  : null,
          canShare: json_.containsKey('canShare')
              ? json_['canShare'] as core.bool
              : null,
          canTrashChildren: json_.containsKey('canTrashChildren')
              ? json_['canTrashChildren'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canAddChildren != null) 'canAddChildren': canAddChildren!,
        if (canChangeCopyRequiresWriterPermissionRestriction != null)
          'canChangeCopyRequiresWriterPermissionRestriction':
              canChangeCopyRequiresWriterPermissionRestriction!,
        if (canChangeDomainUsersOnlyRestriction != null)
          'canChangeDomainUsersOnlyRestriction':
              canChangeDomainUsersOnlyRestriction!,
        if (canChangeTeamDriveBackground != null)
          'canChangeTeamDriveBackground': canChangeTeamDriveBackground!,
        if (canChangeTeamMembersOnlyRestriction != null)
          'canChangeTeamMembersOnlyRestriction':
              canChangeTeamMembersOnlyRestriction!,
        if (canComment != null) 'canComment': canComment!,
        if (canCopy != null) 'canCopy': canCopy!,
        if (canDeleteChildren != null) 'canDeleteChildren': canDeleteChildren!,
        if (canDeleteTeamDrive != null)
          'canDeleteTeamDrive': canDeleteTeamDrive!,
        if (canDownload != null) 'canDownload': canDownload!,
        if (canEdit != null) 'canEdit': canEdit!,
        if (canListChildren != null) 'canListChildren': canListChildren!,
        if (canManageMembers != null) 'canManageMembers': canManageMembers!,
        if (canReadRevisions != null) 'canReadRevisions': canReadRevisions!,
        if (canRemoveChildren != null) 'canRemoveChildren': canRemoveChildren!,
        if (canRename != null) 'canRename': canRename!,
        if (canRenameTeamDrive != null)
          'canRenameTeamDrive': canRenameTeamDrive!,
        if (canResetTeamDriveRestrictions != null)
          'canResetTeamDriveRestrictions': canResetTeamDriveRestrictions!,
        if (canShare != null) 'canShare': canShare!,
        if (canTrashChildren != null) 'canTrashChildren': canTrashChildren!,
      };
}

/// A set of restrictions that apply to this Team Drive or items inside this
/// Team Drive.
class TeamDriveRestrictions {
  /// Whether administrative privileges on this Team Drive are required to
  /// modify restrictions.
  core.bool? adminManagedRestrictions;

  /// Whether the options to copy, print, or download files inside this Team
  /// Drive, should be disabled for readers and commenters.
  ///
  /// When this restriction is set to true, it will override the similarly named
  /// field to true for any file inside this Team Drive.
  core.bool? copyRequiresWriterPermission;

  /// Whether access to this Team Drive and items inside this Team Drive is
  /// restricted to users of the domain to which this Team Drive belongs.
  ///
  /// This restriction may be overridden by other sharing policies controlled
  /// outside of this Team Drive.
  core.bool? domainUsersOnly;

  /// Whether access to items inside this Team Drive is restricted to members of
  /// this Team Drive.
  core.bool? teamMembersOnly;

  TeamDriveRestrictions({
    this.adminManagedRestrictions,
    this.copyRequiresWriterPermission,
    this.domainUsersOnly,
    this.teamMembersOnly,
  });

  TeamDriveRestrictions.fromJson(core.Map json_)
      : this(
          adminManagedRestrictions:
              json_.containsKey('adminManagedRestrictions')
                  ? json_['adminManagedRestrictions'] as core.bool
                  : null,
          copyRequiresWriterPermission:
              json_.containsKey('copyRequiresWriterPermission')
                  ? json_['copyRequiresWriterPermission'] as core.bool
                  : null,
          domainUsersOnly: json_.containsKey('domainUsersOnly')
              ? json_['domainUsersOnly'] as core.bool
              : null,
          teamMembersOnly: json_.containsKey('teamMembersOnly')
              ? json_['teamMembersOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminManagedRestrictions != null)
          'adminManagedRestrictions': adminManagedRestrictions!,
        if (copyRequiresWriterPermission != null)
          'copyRequiresWriterPermission': copyRequiresWriterPermission!,
        if (domainUsersOnly != null) 'domainUsersOnly': domainUsersOnly!,
        if (teamMembersOnly != null) 'teamMembersOnly': teamMembersOnly!,
      };
}

/// Deprecated: use the drive collection instead.
class TeamDrive {
  /// An image file and cropping parameters from which a background image for
  /// this Team Drive is set.
  ///
  /// This is a write only field; it can only be set on drive.teamdrives.update
  /// requests that don't set themeId. When specified, all fields of the
  /// backgroundImageFile must be set.
  TeamDriveBackgroundImageFile? backgroundImageFile;

  /// A short-lived link to this Team Drive's background image.
  core.String? backgroundImageLink;

  /// Capabilities the current user has on this Team Drive.
  TeamDriveCapabilities? capabilities;

  /// The color of this Team Drive as an RGB hex string.
  ///
  /// It can only be set on a drive.teamdrives.update request that does not set
  /// themeId.
  core.String? colorRgb;

  /// The time at which the Team Drive was created (RFC 3339 date-time).
  core.DateTime? createdDate;

  /// The ID of this Team Drive which is also the ID of the top level folder of
  /// this Team Drive.
  core.String? id;

  /// This is always drive#teamDrive
  core.String? kind;

  /// The name of this Team Drive.
  core.String? name;

  /// The organizational unit of this shared drive.
  ///
  /// This field is only populated on drives.list responses when the
  /// useDomainAdminAccess parameter is set to true.
  core.String? orgUnitId;

  /// A set of restrictions that apply to this Team Drive or items inside this
  /// Team Drive.
  TeamDriveRestrictions? restrictions;

  /// The ID of the theme from which the background image and color will be set.
  ///
  /// The set of possible teamDriveThemes can be retrieved from a
  /// drive.about.get response. When not specified on a drive.teamdrives.insert
  /// request, a random theme is chosen from which the background image and
  /// color are set. This is a write-only field; it can only be set on requests
  /// that don't set colorRgb or backgroundImageFile.
  core.String? themeId;

  TeamDrive({
    this.backgroundImageFile,
    this.backgroundImageLink,
    this.capabilities,
    this.colorRgb,
    this.createdDate,
    this.id,
    this.kind,
    this.name,
    this.orgUnitId,
    this.restrictions,
    this.themeId,
  });

  TeamDrive.fromJson(core.Map json_)
      : this(
          backgroundImageFile: json_.containsKey('backgroundImageFile')
              ? TeamDriveBackgroundImageFile.fromJson(
                  json_['backgroundImageFile']
                      as core.Map<core.String, core.dynamic>)
              : null,
          backgroundImageLink: json_.containsKey('backgroundImageLink')
              ? json_['backgroundImageLink'] as core.String
              : null,
          capabilities: json_.containsKey('capabilities')
              ? TeamDriveCapabilities.fromJson(
                  json_['capabilities'] as core.Map<core.String, core.dynamic>)
              : null,
          colorRgb: json_.containsKey('colorRgb')
              ? json_['colorRgb'] as core.String
              : null,
          createdDate: json_.containsKey('createdDate')
              ? core.DateTime.parse(json_['createdDate'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgUnitId: json_.containsKey('orgUnitId')
              ? json_['orgUnitId'] as core.String
              : null,
          restrictions: json_.containsKey('restrictions')
              ? TeamDriveRestrictions.fromJson(
                  json_['restrictions'] as core.Map<core.String, core.dynamic>)
              : null,
          themeId: json_.containsKey('themeId')
              ? json_['themeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundImageFile != null)
          'backgroundImageFile': backgroundImageFile!,
        if (backgroundImageLink != null)
          'backgroundImageLink': backgroundImageLink!,
        if (capabilities != null) 'capabilities': capabilities!,
        if (colorRgb != null) 'colorRgb': colorRgb!,
        if (createdDate != null)
          'createdDate': createdDate!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
        if (restrictions != null) 'restrictions': restrictions!,
        if (themeId != null) 'themeId': themeId!,
      };
}

/// A list of Team Drives.
class TeamDriveList {
  /// The list of Team Drives.
  core.List<TeamDrive>? items;

  /// This is always drive#teamDriveList
  core.String? kind;

  /// The page token for the next page of Team Drives.
  core.String? nextPageToken;

  TeamDriveList({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  TeamDriveList.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => TeamDrive.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The user's profile picture.
class UserPicture {
  /// A URL that points to a profile picture of this user.
  core.String? url;

  UserPicture({
    this.url,
  });

  UserPicture.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Information about a Drive user.
class User {
  /// A plain text displayable name for this user.
  core.String? displayName;

  /// The email address of the user.
  core.String? emailAddress;

  /// Whether this user is the same as the authenticated user for whom the
  /// request was made.
  core.bool? isAuthenticatedUser;

  /// This is always drive#user.
  core.String? kind;

  /// The user's ID as visible in the permissions collection.
  core.String? permissionId;

  /// The user's profile picture.
  UserPicture? picture;

  User({
    this.displayName,
    this.emailAddress,
    this.isAuthenticatedUser,
    this.kind,
    this.permissionId,
    this.picture,
  });

  User.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          isAuthenticatedUser: json_.containsKey('isAuthenticatedUser')
              ? json_['isAuthenticatedUser'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          permissionId: json_.containsKey('permissionId')
              ? json_['permissionId'] as core.String
              : null,
          picture: json_.containsKey('picture')
              ? UserPicture.fromJson(
                  json_['picture'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (isAuthenticatedUser != null)
          'isAuthenticatedUser': isAuthenticatedUser!,
        if (kind != null) 'kind': kind!,
        if (permissionId != null) 'permissionId': permissionId!,
        if (picture != null) 'picture': picture!,
      };
}
