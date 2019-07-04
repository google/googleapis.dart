// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.drive.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

const core.String USER_AGENT = 'dart-api-client drive/v3';

/// Manages files in Drive including uploading, downloading, searching,
/// detecting changes, and updating sharing permissions.
class DriveApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const DriveScope = "https://www.googleapis.com/auth/drive";

  /// View and manage its own configuration data in your Google Drive
  static const DriveAppdataScope =
      "https://www.googleapis.com/auth/drive.appdata";

  /// View and manage Google Drive files and folders that you have opened or
  /// created with this app
  static const DriveFileScope = "https://www.googleapis.com/auth/drive.file";

  /// View and manage metadata of files in your Google Drive
  static const DriveMetadataScope =
      "https://www.googleapis.com/auth/drive.metadata";

  /// View metadata for files in your Google Drive
  static const DriveMetadataReadonlyScope =
      "https://www.googleapis.com/auth/drive.metadata.readonly";

  /// View the photos, videos and albums in your Google Photos
  static const DrivePhotosReadonlyScope =
      "https://www.googleapis.com/auth/drive.photos.readonly";

  /// See and download all your Google Drive files
  static const DriveReadonlyScope =
      "https://www.googleapis.com/auth/drive.readonly";

  /// Modify your Google Apps Script scripts' behavior
  static const DriveScriptsScope =
      "https://www.googleapis.com/auth/drive.scripts";

  final commons.ApiRequester _requester;

  AboutResourceApi get about => new AboutResourceApi(_requester);
  ChangesResourceApi get changes => new ChangesResourceApi(_requester);
  ChannelsResourceApi get channels => new ChannelsResourceApi(_requester);
  CommentsResourceApi get comments => new CommentsResourceApi(_requester);
  DrivesResourceApi get drives => new DrivesResourceApi(_requester);
  FilesResourceApi get files => new FilesResourceApi(_requester);
  PermissionsResourceApi get permissions =>
      new PermissionsResourceApi(_requester);
  RepliesResourceApi get replies => new RepliesResourceApi(_requester);
  RevisionsResourceApi get revisions => new RevisionsResourceApi(_requester);
  TeamdrivesResourceApi get teamdrives => new TeamdrivesResourceApi(_requester);

  DriveApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "drive/v3/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AboutResourceApi {
  final commons.ApiRequester _requester;

  AboutResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets information about the user, the user's Drive, and system
  /// capabilities.
  ///
  /// Request parameters:
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
  async.Future<About> get({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'about';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new About.fromJson(data));
  }
}

class ChangesResourceApi {
  final commons.ApiRequester _requester;

  ChangesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the starting pageToken for listing future changes.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive for which the starting pageToken
  /// for listing future changes from that shared drive will be returned.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<StartPageToken> getStartPageToken(
      {core.String driveId,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String teamDriveId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (driveId != null) {
      _queryParams["driveId"] = [driveId];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (teamDriveId != null) {
      _queryParams["teamDriveId"] = [teamDriveId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'changes/startPageToken';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StartPageToken.fromJson(data));
  }

  /// Lists the changes for a user or shared drive.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response or to the response from the getStartPageToken method.
  ///
  /// [driveId] - The shared drive from which changes will be returned. If
  /// specified the change IDs will be reflective of the shared drive; use the
  /// combined drive ID and change ID as an identifier.
  ///
  /// [includeCorpusRemovals] - Whether changes should include the file resource
  /// if the file is still accessible by the user at the time of the request,
  /// even when a file was removed from the list of changes and there will be no
  /// further change entries for this file.
  ///
  /// [includeItemsFromAllDrives] - Deprecated - Whether both My Drive and
  /// shared drive items should be included in results. This parameter will only
  /// be effective until June 1, 2020. Afterwards shared drive items will be
  /// included in the results.
  ///
  /// [includeRemoved] - Whether to include changes indicating that items have
  /// been removed from the list of changes, for example by deletion or loss of
  /// access.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [pageSize] - The maximum number of changes to return per page.
  /// Value must be between "1" and "1000".
  ///
  /// [restrictToMyDrive] - Whether to restrict the results to changes inside
  /// the My Drive hierarchy. This omits changes to files such as those in the
  /// Application Data folder or shared files which have not been added to My
  /// Drive.
  ///
  /// [spaces] - A comma-separated list of spaces to query within the user
  /// corpus. Supported values are 'drive', 'appDataFolder' and 'photos'.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<ChangeList> list(core.String pageToken,
      {core.String driveId,
      core.bool includeCorpusRemovals,
      core.bool includeItemsFromAllDrives,
      core.bool includeRemoved,
      core.bool includeTeamDriveItems,
      core.int pageSize,
      core.bool restrictToMyDrive,
      core.String spaces,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String teamDriveId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken == null) {
      throw new core.ArgumentError("Parameter pageToken is required.");
    }
    _queryParams["pageToken"] = [pageToken];
    if (driveId != null) {
      _queryParams["driveId"] = [driveId];
    }
    if (includeCorpusRemovals != null) {
      _queryParams["includeCorpusRemovals"] = ["${includeCorpusRemovals}"];
    }
    if (includeItemsFromAllDrives != null) {
      _queryParams["includeItemsFromAllDrives"] = [
        "${includeItemsFromAllDrives}"
      ];
    }
    if (includeRemoved != null) {
      _queryParams["includeRemoved"] = ["${includeRemoved}"];
    }
    if (includeTeamDriveItems != null) {
      _queryParams["includeTeamDriveItems"] = ["${includeTeamDriveItems}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (restrictToMyDrive != null) {
      _queryParams["restrictToMyDrive"] = ["${restrictToMyDrive}"];
    }
    if (spaces != null) {
      _queryParams["spaces"] = [spaces];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (teamDriveId != null) {
      _queryParams["teamDriveId"] = [teamDriveId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'changes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ChangeList.fromJson(data));
  }

  /// Subscribes to changes for a user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response or to the response from the getStartPageToken method.
  ///
  /// [driveId] - The shared drive from which changes will be returned. If
  /// specified the change IDs will be reflective of the shared drive; use the
  /// combined drive ID and change ID as an identifier.
  ///
  /// [includeCorpusRemovals] - Whether changes should include the file resource
  /// if the file is still accessible by the user at the time of the request,
  /// even when a file was removed from the list of changes and there will be no
  /// further change entries for this file.
  ///
  /// [includeItemsFromAllDrives] - Deprecated - Whether both My Drive and
  /// shared drive items should be included in results. This parameter will only
  /// be effective until June 1, 2020. Afterwards shared drive items will be
  /// included in the results.
  ///
  /// [includeRemoved] - Whether to include changes indicating that items have
  /// been removed from the list of changes, for example by deletion or loss of
  /// access.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [pageSize] - The maximum number of changes to return per page.
  /// Value must be between "1" and "1000".
  ///
  /// [restrictToMyDrive] - Whether to restrict the results to changes inside
  /// the My Drive hierarchy. This omits changes to files such as those in the
  /// Application Data folder or shared files which have not been added to My
  /// Drive.
  ///
  /// [spaces] - A comma-separated list of spaces to query within the user
  /// corpus. Supported values are 'drive', 'appDataFolder' and 'photos'.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<Channel> watch(Channel request, core.String pageToken,
      {core.String driveId,
      core.bool includeCorpusRemovals,
      core.bool includeItemsFromAllDrives,
      core.bool includeRemoved,
      core.bool includeTeamDriveItems,
      core.int pageSize,
      core.bool restrictToMyDrive,
      core.String spaces,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String teamDriveId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (pageToken == null) {
      throw new core.ArgumentError("Parameter pageToken is required.");
    }
    _queryParams["pageToken"] = [pageToken];
    if (driveId != null) {
      _queryParams["driveId"] = [driveId];
    }
    if (includeCorpusRemovals != null) {
      _queryParams["includeCorpusRemovals"] = ["${includeCorpusRemovals}"];
    }
    if (includeItemsFromAllDrives != null) {
      _queryParams["includeItemsFromAllDrives"] = [
        "${includeItemsFromAllDrives}"
      ];
    }
    if (includeRemoved != null) {
      _queryParams["includeRemoved"] = ["${includeRemoved}"];
    }
    if (includeTeamDriveItems != null) {
      _queryParams["includeTeamDriveItems"] = ["${includeTeamDriveItems}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (restrictToMyDrive != null) {
      _queryParams["restrictToMyDrive"] = ["${restrictToMyDrive}"];
    }
    if (spaces != null) {
      _queryParams["spaces"] = [spaces];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (teamDriveId != null) {
      _queryParams["teamDriveId"] = [teamDriveId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'changes/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }
}

class ChannelsResourceApi {
  final commons.ApiRequester _requester;

  ChannelsResourceApi(commons.ApiRequester client) : _requester = client;

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
  async.Future stop(Channel request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'channels/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class CommentsResourceApi {
  final commons.ApiRequester _requester;

  CommentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new comment on a file.
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
  async.Future<Comment> create(Comment request, core.String fileId,
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
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/comments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Comment.fromJson(data));
  }

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
  async.Future delete(core.String fileId, core.String commentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a comment by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [includeDeleted] - Whether to return deleted comments. Deleted comments
  /// will not include their original content.
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
  async.Future<Comment> get(core.String fileId, core.String commentId,
      {core.bool includeDeleted, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (includeDeleted != null) {
      _queryParams["includeDeleted"] = ["${includeDeleted}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Comment.fromJson(data));
  }

  /// Lists a file's comments.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [includeDeleted] - Whether to include deleted comments. Deleted comments
  /// will not include their original content.
  ///
  /// [pageSize] - The maximum number of comments to return per page.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [startModifiedTime] - The minimum value of 'modifiedTime' for the result
  /// comments (RFC 3339 date-time).
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
  async.Future<CommentList> list(core.String fileId,
      {core.bool includeDeleted,
      core.int pageSize,
      core.String pageToken,
      core.String startModifiedTime,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (includeDeleted != null) {
      _queryParams["includeDeleted"] = ["${includeDeleted}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startModifiedTime != null) {
      _queryParams["startModifiedTime"] = [startModifiedTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/comments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CommentList.fromJson(data));
  }

  /// Updates a comment with patch semantics.
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
      Comment request, core.String fileId, core.String commentId,
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
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Comment.fromJson(data));
  }
}

class DrivesResourceApi {
  final commons.ApiRequester _requester;

  DrivesResourceApi(commons.ApiRequester client) : _requester = client;

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
  async.Future<Drive> create(Drive request, core.String requestId,
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
    if (requestId == null) {
      throw new core.ArgumentError("Parameter requestId is required.");
    }
    _queryParams["requestId"] = [requestId];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Drive.fromJson(data));
  }

  /// Permanently deletes a shared drive for which the user is an organizer. The
  /// shared drive cannot contain any untrashed items.
  ///
  /// Request parameters:
  ///
  /// [driveId] - The ID of the shared drive.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future delete(core.String driveId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (driveId == null) {
      throw new core.ArgumentError("Parameter driveId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'drives/' + commons.Escaper.ecapeVariable('$driveId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  async.Future<Drive> get(core.String driveId,
      {core.bool useDomainAdminAccess, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (driveId == null) {
      throw new core.ArgumentError("Parameter driveId is required.");
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives/' + commons.Escaper.ecapeVariable('$driveId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Drive.fromJson(data));
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
  async.Future<Drive> hide(core.String driveId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (driveId == null) {
      throw new core.ArgumentError("Parameter driveId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives/' + commons.Escaper.ecapeVariable('$driveId') + '/hide';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Drive.fromJson(data));
  }

  /// Lists the user's shared drives.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of shared drives to return.
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
  async.Future<DriveList> list(
      {core.int pageSize,
      core.String pageToken,
      core.String q,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DriveList.fromJson(data));
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
  async.Future<Drive> unhide(core.String driveId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (driveId == null) {
      throw new core.ArgumentError("Parameter driveId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives/' + commons.Escaper.ecapeVariable('$driveId') + '/unhide';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Drive.fromJson(data));
  }

  /// Updates the metadate for a shared drive.
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
  async.Future<Drive> update(Drive request, core.String driveId,
      {core.bool useDomainAdminAccess, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (driveId == null) {
      throw new core.ArgumentError("Parameter driveId is required.");
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'drives/' + commons.Escaper.ecapeVariable('$driveId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Drive.fromJson(data));
  }
}

class FilesResourceApi {
  final commons.ApiRequester _requester;

  FilesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a copy of a file and applies any requested updates with patch
  /// semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [ignoreDefaultVisibility] - Whether to ignore the domain's default
  /// visibility settings for the created file. Domain administrators can choose
  /// to make all uploaded files visible to the domain by default; this
  /// parameter bypasses that behavior for the request. Permissions are still
  /// inherited from parent folders.
  ///
  /// [keepRevisionForever] - Whether to set the 'keepForever' field in the new
  /// head revision. This is only applicable to files with binary content in
  /// Google Drive.
  ///
  /// [ocrLanguage] - A language hint for OCR processing during image import
  /// (ISO 639-1 code).
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<File> copy(File request, core.String fileId,
      {core.bool ignoreDefaultVisibility,
      core.bool keepRevisionForever,
      core.String ocrLanguage,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (ignoreDefaultVisibility != null) {
      _queryParams["ignoreDefaultVisibility"] = ["${ignoreDefaultVisibility}"];
    }
    if (keepRevisionForever != null) {
      _queryParams["keepRevisionForever"] = ["${keepRevisionForever}"];
    }
    if (ocrLanguage != null) {
      _queryParams["ocrLanguage"] = [ocrLanguage];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/copy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new File.fromJson(data));
  }

  /// Creates a new file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [ignoreDefaultVisibility] - Whether to ignore the domain's default
  /// visibility settings for the created file. Domain administrators can choose
  /// to make all uploaded files visible to the domain by default; this
  /// parameter bypasses that behavior for the request. Permissions are still
  /// inherited from parent folders.
  ///
  /// [keepRevisionForever] - Whether to set the 'keepForever' field in the new
  /// head revision. This is only applicable to files with binary content in
  /// Google Drive.
  ///
  /// [ocrLanguage] - A language hint for OCR processing during image import
  /// (ISO 639-1 code).
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useContentAsIndexableText] - Whether to use the uploaded content as
  /// indexable text.
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
  async.Future<File> create(File request,
      {core.bool ignoreDefaultVisibility,
      core.bool keepRevisionForever,
      core.String ocrLanguage,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool useContentAsIndexableText,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (ignoreDefaultVisibility != null) {
      _queryParams["ignoreDefaultVisibility"] = ["${ignoreDefaultVisibility}"];
    }
    if (keepRevisionForever != null) {
      _queryParams["keepRevisionForever"] = ["${keepRevisionForever}"];
    }
    if (ocrLanguage != null) {
      _queryParams["ocrLanguage"] = [ocrLanguage];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (useContentAsIndexableText != null) {
      _queryParams["useContentAsIndexableText"] = [
        "${useContentAsIndexableText}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'files';
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/drive/v3/files';
    } else {
      _url = '/upload/drive/v3/files';
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new File.fromJson(data));
  }

  /// Permanently deletes a file owned by the user without moving it to the
  /// trash. If the file belongs to a shared drive the user must be an organizer
  /// on the parent. If the target is a folder, all descendants owned by the
  /// user are also deleted.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future delete(core.String fileId,
      {core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Permanently deletes all of the user's trashed files.
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
  async.Future emptyTrash({core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/trash';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Exports a Google Doc to the requested MIME type and returns the exported
  /// content. Please note that the exported content is limited to 10MB.
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
  async.Future export(core.String fileId, core.String mimeType,
      {core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (mimeType == null) {
      throw new core.ArgumentError("Parameter mimeType is required.");
    }
    _queryParams["mimeType"] = [mimeType];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/export';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => null);
    } else {
      return _response;
    }
  }

  /// Generates a set of file IDs which can be provided in create or copy
  /// requests.
  ///
  /// Request parameters:
  ///
  /// [count] - The number of IDs to return.
  /// Value must be between "1" and "1000".
  ///
  /// [space] - The space in which the IDs can be used to create new files.
  /// Supported values are 'drive' and 'appDataFolder'.
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
  async.Future<GeneratedIds> generateIds(
      {core.int count, core.String space, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (count != null) {
      _queryParams["count"] = ["${count}"];
    }
    if (space != null) {
      _queryParams["space"] = [space];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/generateIds';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GeneratedIds.fromJson(data));
  }

  /// Gets a file's metadata or content by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [acknowledgeAbuse] - Whether the user is acknowledging the risk of
  /// downloading known malware or other abusive files. This is only applicable
  /// when alt=media.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
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
  async.Future get(core.String fileId,
      {core.bool acknowledgeAbuse,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (acknowledgeAbuse != null) {
      _queryParams["acknowledgeAbuse"] = ["${acknowledgeAbuse}"];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new File.fromJson(data));
    } else {
      return _response;
    }
  }

  /// Lists or searches files.
  ///
  /// Request parameters:
  ///
  /// [corpora] - Bodies of items (files/documents) to which the query applies.
  /// Supported bodies are 'user', 'domain', 'drive' and 'allDrives'. Prefer
  /// 'user' or 'drive' to 'allDrives' for efficiency.
  ///
  /// [corpus] - The source of files to list. Deprecated: use 'corpora' instead.
  /// Possible string values are:
  /// - "domain" : Files shared to the user's domain.
  /// - "user" : Files owned by or shared to the user.
  ///
  /// [driveId] - ID of the shared drive to search.
  ///
  /// [includeItemsFromAllDrives] - Deprecated - Whether both My Drive and
  /// shared drive items should be included in results. This parameter will only
  /// be effective until June 1, 2020. Afterwards shared drive items will be
  /// included in the results.
  ///
  /// [includeTeamDriveItems] - Deprecated use includeItemsFromAllDrives
  /// instead.
  ///
  /// [orderBy] - A comma-separated list of sort keys. Valid keys are
  /// 'createdTime', 'folder', 'modifiedByMeTime', 'modifiedTime', 'name',
  /// 'name_natural', 'quotaBytesUsed', 'recency', 'sharedWithMeTime',
  /// 'starred', and 'viewedByMeTime'. Each key sorts ascending by default, but
  /// may be reversed with the 'desc' modifier. Example usage:
  /// ?orderBy=folder,modifiedTime desc,name. Please note that there is a
  /// current limitation for users with approximately one million files in which
  /// the requested sort order is ignored.
  ///
  /// [pageSize] - The maximum number of files to return per page. Partial or
  /// empty result pages are possible even before the end of the files list has
  /// been reached.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [q] - A query for filtering the file results. See the "Search for Files"
  /// guide for supported syntax.
  ///
  /// [spaces] - A comma-separated list of spaces to query within the corpus.
  /// Supported values are 'drive', 'appDataFolder' and 'photos'.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<FileList> list(
      {core.String corpora,
      core.String corpus,
      core.String driveId,
      core.bool includeItemsFromAllDrives,
      core.bool includeTeamDriveItems,
      core.String orderBy,
      core.int pageSize,
      core.String pageToken,
      core.String q,
      core.String spaces,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String teamDriveId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (corpora != null) {
      _queryParams["corpora"] = [corpora];
    }
    if (corpus != null) {
      _queryParams["corpus"] = [corpus];
    }
    if (driveId != null) {
      _queryParams["driveId"] = [driveId];
    }
    if (includeItemsFromAllDrives != null) {
      _queryParams["includeItemsFromAllDrives"] = [
        "${includeItemsFromAllDrives}"
      ];
    }
    if (includeTeamDriveItems != null) {
      _queryParams["includeTeamDriveItems"] = ["${includeTeamDriveItems}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if (spaces != null) {
      _queryParams["spaces"] = [spaces];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (teamDriveId != null) {
      _queryParams["teamDriveId"] = [teamDriveId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FileList.fromJson(data));
  }

  /// Updates a file's metadata and/or content with patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [addParents] - A comma-separated list of parent IDs to add.
  ///
  /// [keepRevisionForever] - Whether to set the 'keepForever' field in the new
  /// head revision. This is only applicable to files with binary content in
  /// Google Drive.
  ///
  /// [ocrLanguage] - A language hint for OCR processing during image import
  /// (ISO 639-1 code).
  ///
  /// [removeParents] - A comma-separated list of parent IDs to remove.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [useContentAsIndexableText] - Whether to use the uploaded content as
  /// indexable text.
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
  async.Future<File> update(File request, core.String fileId,
      {core.String addParents,
      core.bool keepRevisionForever,
      core.String ocrLanguage,
      core.String removeParents,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool useContentAsIndexableText,
      core.String $fields,
      commons.UploadOptions uploadOptions = commons.UploadOptions.Default,
      commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (addParents != null) {
      _queryParams["addParents"] = [addParents];
    }
    if (keepRevisionForever != null) {
      _queryParams["keepRevisionForever"] = ["${keepRevisionForever}"];
    }
    if (ocrLanguage != null) {
      _queryParams["ocrLanguage"] = [ocrLanguage];
    }
    if (removeParents != null) {
      _queryParams["removeParents"] = [removeParents];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (useContentAsIndexableText != null) {
      _queryParams["useContentAsIndexableText"] = [
        "${useContentAsIndexableText}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;
    _uploadOptions = uploadOptions;

    if (_uploadMedia == null) {
      _url = 'files/' + commons.Escaper.ecapeVariable('$fileId');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/drive/v3/files/' +
          commons.Escaper.ecapeVariable('$fileId');
    } else {
      _url =
          '/upload/drive/v3/files/' + commons.Escaper.ecapeVariable('$fileId');
    }

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new File.fromJson(data));
  }

  /// Subscribes to changes to a file
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [acknowledgeAbuse] - Whether the user is acknowledging the risk of
  /// downloading known malware or other abusive files. This is only applicable
  /// when alt=media.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
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
  async.Future watch(Channel request, core.String fileId,
      {core.bool acknowledgeAbuse,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (acknowledgeAbuse != null) {
      _queryParams["acknowledgeAbuse"] = ["${acknowledgeAbuse}"];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Channel.fromJson(data));
    } else {
      return _response;
    }
  }
}

class PermissionsResourceApi {
  final commons.ApiRequester _requester;

  PermissionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a permission for a file or shared drive.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file or shared drive.
  ///
  /// [emailMessage] - A plain text custom message to include in the
  /// notification email.
  ///
  /// [sendNotificationEmail] - Whether to send a notification email when
  /// sharing to users or groups. This defaults to true for users and groups,
  /// and is not allowed for other requests. It must not be disabled for
  /// ownership transfers.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [transferOwnership] - Whether to transfer ownership to the specified user
  /// and downgrade the current owner to a writer. This parameter is required as
  /// an acknowledgement of the side effect.
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
  async.Future<Permission> create(Permission request, core.String fileId,
      {core.String emailMessage,
      core.bool sendNotificationEmail,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool transferOwnership,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (emailMessage != null) {
      _queryParams["emailMessage"] = [emailMessage];
    }
    if (sendNotificationEmail != null) {
      _queryParams["sendNotificationEmail"] = ["${sendNotificationEmail}"];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (transferOwnership != null) {
      _queryParams["transferOwnership"] = ["${transferOwnership}"];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/permissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Permission.fromJson(data));
  }

  /// Deletes a permission.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file or shared drive.
  ///
  /// [permissionId] - The ID of the permission.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future delete(core.String fileId, core.String permissionId,
      {core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/permissions/' +
        commons.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a permission by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [permissionId] - The ID of the permission.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<Permission> get(core.String fileId, core.String permissionId,
      {core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/permissions/' +
        commons.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Permission.fromJson(data));
  }

  /// Lists a file's or shared drive's permissions.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file or shared drive.
  ///
  /// [pageSize] - The maximum number of permissions to return per page. When
  /// not set for files in a shared drive, at most 100 results will be returned.
  /// When not set for files that are not in a shared drive, the entire list
  /// will be returned.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
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
  async.Future<PermissionList> list(core.String fileId,
      {core.int pageSize,
      core.String pageToken,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/permissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PermissionList.fromJson(data));
  }

  /// Updates a permission with patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file or shared drive.
  ///
  /// [permissionId] - The ID of the permission.
  ///
  /// [removeExpiration] - Whether to remove the expiration date.
  ///
  /// [supportsAllDrives] - Deprecated - Whether the requesting application
  /// supports both My Drives and shared drives. This parameter will only be
  /// effective until June 1, 2020. Afterwards all applications are assumed to
  /// support shared drives.
  ///
  /// [supportsTeamDrives] - Deprecated use supportsAllDrives instead.
  ///
  /// [transferOwnership] - Whether to transfer ownership to the specified user
  /// and downgrade the current owner to a writer. This parameter is required as
  /// an acknowledgement of the side effect.
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
      Permission request, core.String fileId, core.String permissionId,
      {core.bool removeExpiration,
      core.bool supportsAllDrives,
      core.bool supportsTeamDrives,
      core.bool transferOwnership,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }
    if (removeExpiration != null) {
      _queryParams["removeExpiration"] = ["${removeExpiration}"];
    }
    if (supportsAllDrives != null) {
      _queryParams["supportsAllDrives"] = ["${supportsAllDrives}"];
    }
    if (supportsTeamDrives != null) {
      _queryParams["supportsTeamDrives"] = ["${supportsTeamDrives}"];
    }
    if (transferOwnership != null) {
      _queryParams["transferOwnership"] = ["${transferOwnership}"];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/permissions/' +
        commons.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Permission.fromJson(data));
  }
}

class RepliesResourceApi {
  final commons.ApiRequester _requester;

  RepliesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new reply to a comment.
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
  /// Completes with a [Reply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reply> create(
      Reply request, core.String fileId, core.String commentId,
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
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/replies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Reply.fromJson(data));
  }

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
  async.Future delete(
      core.String fileId, core.String commentId, core.String replyId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (replyId == null) {
      throw new core.ArgumentError("Parameter replyId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/replies/' +
        commons.Escaper.ecapeVariable('$replyId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a reply by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [replyId] - The ID of the reply.
  ///
  /// [includeDeleted] - Whether to return deleted replies. Deleted replies will
  /// not include their original content.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reply> get(
      core.String fileId, core.String commentId, core.String replyId,
      {core.bool includeDeleted, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (replyId == null) {
      throw new core.ArgumentError("Parameter replyId is required.");
    }
    if (includeDeleted != null) {
      _queryParams["includeDeleted"] = ["${includeDeleted}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/replies/' +
        commons.Escaper.ecapeVariable('$replyId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Reply.fromJson(data));
  }

  /// Lists a comment's replies.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [commentId] - The ID of the comment.
  ///
  /// [includeDeleted] - Whether to include deleted replies. Deleted replies
  /// will not include their original content.
  ///
  /// [pageSize] - The maximum number of replies to return per page.
  /// Value must be between "1" and "100".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplyList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplyList> list(core.String fileId, core.String commentId,
      {core.bool includeDeleted,
      core.int pageSize,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (includeDeleted != null) {
      _queryParams["includeDeleted"] = ["${includeDeleted}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/replies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReplyList.fromJson(data));
  }

  /// Updates a reply with patch semantics.
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
  /// Completes with a [Reply].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reply> update(Reply request, core.String fileId,
      core.String commentId, core.String replyId,
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
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (commentId == null) {
      throw new core.ArgumentError("Parameter commentId is required.");
    }
    if (replyId == null) {
      throw new core.ArgumentError("Parameter replyId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/comments/' +
        commons.Escaper.ecapeVariable('$commentId') +
        '/replies/' +
        commons.Escaper.ecapeVariable('$replyId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Reply.fromJson(data));
  }
}

class RevisionsResourceApi {
  final commons.ApiRequester _requester;

  RevisionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Permanently deletes a file version. You can only delete revisions for
  /// files with binary content in Google Drive, like images or videos.
  /// Revisions for other files, like Google Docs or Sheets, and the last
  /// remaining file version can't be deleted.
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
  async.Future delete(core.String fileId, core.String revisionId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (revisionId == null) {
      throw new core.ArgumentError("Parameter revisionId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/revisions/' +
        commons.Escaper.ecapeVariable('$revisionId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Gets a revision's metadata or content by ID.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [revisionId] - The ID of the revision.
  ///
  /// [acknowledgeAbuse] - Whether the user is acknowledging the risk of
  /// downloading known malware or other abusive files. This is only applicable
  /// when alt=media.
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
  /// - [Revision] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future get(core.String fileId, core.String revisionId,
      {core.bool acknowledgeAbuse,
      core.String $fields,
      commons.DownloadOptions downloadOptions =
          commons.DownloadOptions.Metadata}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (revisionId == null) {
      throw new core.ArgumentError("Parameter revisionId is required.");
    }
    if (acknowledgeAbuse != null) {
      _queryParams["acknowledgeAbuse"] = ["${acknowledgeAbuse}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = downloadOptions;

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/revisions/' +
        commons.Escaper.ecapeVariable('$revisionId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Revision.fromJson(data));
    } else {
      return _response;
    }
  }

  /// Lists a file's revisions.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [pageSize] - The maximum number of revisions to return per page.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of 'nextPageToken' from the previous
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
  async.Future<RevisionList> list(core.String fileId,
      {core.int pageSize, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' + commons.Escaper.ecapeVariable('$fileId') + '/revisions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RevisionList.fromJson(data));
  }

  /// Updates a revision with patch semantics.
  ///
  /// [request] - The metadata request object.
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
  async.Future<Revision> update(
      Revision request, core.String fileId, core.String revisionId,
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
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }
    if (revisionId == null) {
      throw new core.ArgumentError("Parameter revisionId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'files/' +
        commons.Escaper.ecapeVariable('$fileId') +
        '/revisions/' +
        commons.Escaper.ecapeVariable('$revisionId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Revision.fromJson(data));
  }
}

class TeamdrivesResourceApi {
  final commons.ApiRequester _requester;

  TeamdrivesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Deprecated use drives.create instead.
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
  async.Future<TeamDrive> create(TeamDrive request, core.String requestId,
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
    if (requestId == null) {
      throw new core.ArgumentError("Parameter requestId is required.");
    }
    _queryParams["requestId"] = [requestId];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'teamdrives';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TeamDrive.fromJson(data));
  }

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
  async.Future delete(core.String teamDriveId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (teamDriveId == null) {
      throw new core.ArgumentError("Parameter teamDriveId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = 'teamdrives/' + commons.Escaper.ecapeVariable('$teamDriveId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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
  async.Future<TeamDrive> get(core.String teamDriveId,
      {core.bool useDomainAdminAccess, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (teamDriveId == null) {
      throw new core.ArgumentError("Parameter teamDriveId is required.");
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'teamdrives/' + commons.Escaper.ecapeVariable('$teamDriveId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TeamDrive.fromJson(data));
  }

  /// Deprecated use drives.list instead.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of Team Drives to return.
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
  async.Future<TeamDriveList> list(
      {core.int pageSize,
      core.String pageToken,
      core.String q,
      core.bool useDomainAdminAccess,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (q != null) {
      _queryParams["q"] = [q];
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'teamdrives';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TeamDriveList.fromJson(data));
  }

  /// Deprecated use drives.update instead
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
  async.Future<TeamDrive> update(TeamDrive request, core.String teamDriveId,
      {core.bool useDomainAdminAccess, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (teamDriveId == null) {
      throw new core.ArgumentError("Parameter teamDriveId is required.");
    }
    if (useDomainAdminAccess != null) {
      _queryParams["useDomainAdminAccess"] = ["${useDomainAdminAccess}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'teamdrives/' + commons.Escaper.ecapeVariable('$teamDriveId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TeamDrive.fromJson(data));
  }
}

class AboutDriveThemes {
  /// A link to this theme's background image.
  core.String backgroundImageLink;

  /// The color of this theme as an RGB hex string.
  core.String colorRgb;

  /// The ID of the theme.
  core.String id;

  AboutDriveThemes();

  AboutDriveThemes.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundImageLink")) {
      backgroundImageLink = _json["backgroundImageLink"];
    }
    if (_json.containsKey("colorRgb")) {
      colorRgb = _json["colorRgb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundImageLink != null) {
      _json["backgroundImageLink"] = backgroundImageLink;
    }
    if (colorRgb != null) {
      _json["colorRgb"] = colorRgb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// The user's storage quota limits and usage. All fields are measured in bytes.
class AboutStorageQuota {
  /// The usage limit, if applicable. This will not be present if the user has
  /// unlimited storage.
  core.String limit;

  /// The total usage across all services.
  core.String usage;

  /// The usage by all files in Google Drive.
  core.String usageInDrive;

  /// The usage by trashed files in Google Drive.
  core.String usageInDriveTrash;

  AboutStorageQuota();

  AboutStorageQuota.fromJson(core.Map _json) {
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("usage")) {
      usage = _json["usage"];
    }
    if (_json.containsKey("usageInDrive")) {
      usageInDrive = _json["usageInDrive"];
    }
    if (_json.containsKey("usageInDriveTrash")) {
      usageInDriveTrash = _json["usageInDriveTrash"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (usage != null) {
      _json["usage"] = usage;
    }
    if (usageInDrive != null) {
      _json["usageInDrive"] = usageInDrive;
    }
    if (usageInDriveTrash != null) {
      _json["usageInDriveTrash"] = usageInDriveTrash;
    }
    return _json;
  }
}

class AboutTeamDriveThemes {
  /// Deprecated - use driveThemes/backgroundImageLink instead.
  core.String backgroundImageLink;

  /// Deprecated - use driveThemes/colorRgb instead.
  core.String colorRgb;

  /// Deprecated - use driveThemes/id instead.
  core.String id;

  AboutTeamDriveThemes();

  AboutTeamDriveThemes.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundImageLink")) {
      backgroundImageLink = _json["backgroundImageLink"];
    }
    if (_json.containsKey("colorRgb")) {
      colorRgb = _json["colorRgb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundImageLink != null) {
      _json["backgroundImageLink"] = backgroundImageLink;
    }
    if (colorRgb != null) {
      _json["colorRgb"] = colorRgb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// Information about the user, the user's Drive, and system capabilities.
class About {
  /// Whether the user has installed the requesting app.
  core.bool appInstalled;

  /// Whether the user can create shared drives.
  core.bool canCreateDrives;

  /// Deprecated - use canCreateDrives instead.
  core.bool canCreateTeamDrives;

  /// A list of themes that are supported for shared drives.
  core.List<AboutDriveThemes> driveThemes;

  /// A map of source MIME type to possible targets for all supported exports.
  core.Map<core.String, core.List<core.String>> exportFormats;

  /// The currently supported folder colors as RGB hex strings.
  core.List<core.String> folderColorPalette;

  /// A map of source MIME type to possible targets for all supported imports.
  core.Map<core.String, core.List<core.String>> importFormats;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#about".
  core.String kind;

  /// A map of maximum import sizes by MIME type, in bytes.
  core.Map<core.String, core.String> maxImportSizes;

  /// The maximum upload size in bytes.
  core.String maxUploadSize;

  /// The user's storage quota limits and usage. All fields are measured in
  /// bytes.
  AboutStorageQuota storageQuota;

  /// Deprecated - use driveThemes instead.
  core.List<AboutTeamDriveThemes> teamDriveThemes;

  /// The authenticated user.
  User user;

  About();

  About.fromJson(core.Map _json) {
    if (_json.containsKey("appInstalled")) {
      appInstalled = _json["appInstalled"];
    }
    if (_json.containsKey("canCreateDrives")) {
      canCreateDrives = _json["canCreateDrives"];
    }
    if (_json.containsKey("canCreateTeamDrives")) {
      canCreateTeamDrives = _json["canCreateTeamDrives"];
    }
    if (_json.containsKey("driveThemes")) {
      driveThemes = (_json["driveThemes"] as core.List)
          .map<AboutDriveThemes>(
              (value) => new AboutDriveThemes.fromJson(value))
          .toList();
    }
    if (_json.containsKey("exportFormats")) {
      exportFormats = commons.mapMap<core.List, core.List<core.String>>(
          _json["exportFormats"].cast<core.String, core.List>(),
          (core.List item) => (item as core.List).cast<core.String>());
    }
    if (_json.containsKey("folderColorPalette")) {
      folderColorPalette =
          (_json["folderColorPalette"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("importFormats")) {
      importFormats = commons.mapMap<core.List, core.List<core.String>>(
          _json["importFormats"].cast<core.String, core.List>(),
          (core.List item) => (item as core.List).cast<core.String>());
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maxImportSizes")) {
      maxImportSizes = (_json["maxImportSizes"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("maxUploadSize")) {
      maxUploadSize = _json["maxUploadSize"];
    }
    if (_json.containsKey("storageQuota")) {
      storageQuota = new AboutStorageQuota.fromJson(_json["storageQuota"]);
    }
    if (_json.containsKey("teamDriveThemes")) {
      teamDriveThemes = (_json["teamDriveThemes"] as core.List)
          .map<AboutTeamDriveThemes>(
              (value) => new AboutTeamDriveThemes.fromJson(value))
          .toList();
    }
    if (_json.containsKey("user")) {
      user = new User.fromJson(_json["user"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appInstalled != null) {
      _json["appInstalled"] = appInstalled;
    }
    if (canCreateDrives != null) {
      _json["canCreateDrives"] = canCreateDrives;
    }
    if (canCreateTeamDrives != null) {
      _json["canCreateTeamDrives"] = canCreateTeamDrives;
    }
    if (driveThemes != null) {
      _json["driveThemes"] =
          driveThemes.map((value) => (value).toJson()).toList();
    }
    if (exportFormats != null) {
      _json["exportFormats"] = exportFormats;
    }
    if (folderColorPalette != null) {
      _json["folderColorPalette"] = folderColorPalette;
    }
    if (importFormats != null) {
      _json["importFormats"] = importFormats;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maxImportSizes != null) {
      _json["maxImportSizes"] = maxImportSizes;
    }
    if (maxUploadSize != null) {
      _json["maxUploadSize"] = maxUploadSize;
    }
    if (storageQuota != null) {
      _json["storageQuota"] = (storageQuota).toJson();
    }
    if (teamDriveThemes != null) {
      _json["teamDriveThemes"] =
          teamDriveThemes.map((value) => (value).toJson()).toList();
    }
    if (user != null) {
      _json["user"] = (user).toJson();
    }
    return _json;
  }
}

/// A change to a file or shared drive.
class Change {
  /// The type of the change. Possible values are file and drive.
  core.String changeType;

  /// The updated state of the shared drive. Present if the changeType is drive,
  /// the user is still a member of the shared drive, and the shared drive has
  /// not been deleted.
  Drive drive;

  /// The ID of the shared drive associated with this change.
  core.String driveId;

  /// The updated state of the file. Present if the type is file and the file
  /// has not been removed from this list of changes.
  File file;

  /// The ID of the file which has changed.
  core.String fileId;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#change".
  core.String kind;

  /// Whether the file or shared drive has been removed from this list of
  /// changes, for example by deletion or loss of access.
  core.bool removed;

  /// Deprecated - use drive instead.
  TeamDrive teamDrive;

  /// Deprecated - use driveId instead.
  core.String teamDriveId;

  /// The time of this change (RFC 3339 date-time).
  core.DateTime time;

  /// Deprecated - use changeType instead.
  core.String type;

  Change();

  Change.fromJson(core.Map _json) {
    if (_json.containsKey("changeType")) {
      changeType = _json["changeType"];
    }
    if (_json.containsKey("drive")) {
      drive = new Drive.fromJson(_json["drive"]);
    }
    if (_json.containsKey("driveId")) {
      driveId = _json["driveId"];
    }
    if (_json.containsKey("file")) {
      file = new File.fromJson(_json["file"]);
    }
    if (_json.containsKey("fileId")) {
      fileId = _json["fileId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("removed")) {
      removed = _json["removed"];
    }
    if (_json.containsKey("teamDrive")) {
      teamDrive = new TeamDrive.fromJson(_json["teamDrive"]);
    }
    if (_json.containsKey("teamDriveId")) {
      teamDriveId = _json["teamDriveId"];
    }
    if (_json.containsKey("time")) {
      time = core.DateTime.parse(_json["time"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeType != null) {
      _json["changeType"] = changeType;
    }
    if (drive != null) {
      _json["drive"] = (drive).toJson();
    }
    if (driveId != null) {
      _json["driveId"] = driveId;
    }
    if (file != null) {
      _json["file"] = (file).toJson();
    }
    if (fileId != null) {
      _json["fileId"] = fileId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (removed != null) {
      _json["removed"] = removed;
    }
    if (teamDrive != null) {
      _json["teamDrive"] = (teamDrive).toJson();
    }
    if (teamDriveId != null) {
      _json["teamDriveId"] = teamDriveId;
    }
    if (time != null) {
      _json["time"] = (time).toIso8601String();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A list of changes for a user.
class ChangeList {
  /// The list of changes. If nextPageToken is populated, then this list may be
  /// incomplete and an additional page of results should be fetched.
  core.List<Change> changes;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#changeList".
  core.String kind;

  /// The starting page token for future changes. This will be present only if
  /// the end of the current changes list has been reached.
  core.String newStartPageToken;

  /// The page token for the next page of changes. This will be absent if the
  /// end of the changes list has been reached. If the token is rejected for any
  /// reason, it should be discarded, and pagination should be restarted from
  /// the first page of results.
  core.String nextPageToken;

  ChangeList();

  ChangeList.fromJson(core.Map _json) {
    if (_json.containsKey("changes")) {
      changes = (_json["changes"] as core.List)
          .map<Change>((value) => new Change.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("newStartPageToken")) {
      newStartPageToken = _json["newStartPageToken"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changes != null) {
      _json["changes"] = changes.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (newStartPageToken != null) {
      _json["newStartPageToken"] = newStartPageToken;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds. Optional.
  core.String expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String kind;

  /// Additional parameters controlling delivery channel behavior. Optional.
  core.Map<core.String, core.String> params;

  /// A Boolean value to indicate whether payload is wanted. Optional.
  core.bool payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  /// Stable across different API versions.
  core.String resourceId;

  /// A version-specific identifier for the watched resource.
  core.String resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel. Optional.
  core.String token;

  /// The type of delivery mechanism used for this channel.
  core.String type;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The file content to which the comment refers, typically within the anchor
/// region. For a text file, for example, this would be the text at the location
/// of the comment.
class CommentQuotedFileContent {
  /// The MIME type of the quoted content.
  core.String mimeType;

  /// The quoted content itself. This is interpreted as plain text if set
  /// through the API.
  core.String value;

  CommentQuotedFileContent();

  CommentQuotedFileContent.fromJson(core.Map _json) {
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A comment on a file.
class Comment {
  /// A region of the document represented as a JSON string. See anchor
  /// documentation for details on how to define and interpret anchor
  /// properties.
  core.String anchor;

  /// The user who created the comment.
  User author;

  /// The plain text content of the comment. This field is used for setting the
  /// content, while htmlContent should be displayed.
  core.String content;

  /// The time at which the comment was created (RFC 3339 date-time).
  core.DateTime createdTime;

  /// Whether the comment has been deleted. A deleted comment has no content.
  core.bool deleted;

  /// The content of the comment with HTML formatting.
  core.String htmlContent;

  /// The ID of the comment.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#comment".
  core.String kind;

  /// The last time the comment or any of its replies was modified (RFC 3339
  /// date-time).
  core.DateTime modifiedTime;

  /// The file content to which the comment refers, typically within the anchor
  /// region. For a text file, for example, this would be the text at the
  /// location of the comment.
  CommentQuotedFileContent quotedFileContent;

  /// The full list of replies to the comment in chronological order.
  core.List<Reply> replies;

  /// Whether the comment has been resolved by one of its replies.
  core.bool resolved;

  Comment();

  Comment.fromJson(core.Map _json) {
    if (_json.containsKey("anchor")) {
      anchor = _json["anchor"];
    }
    if (_json.containsKey("author")) {
      author = new User.fromJson(_json["author"]);
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("createdTime")) {
      createdTime = core.DateTime.parse(_json["createdTime"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("htmlContent")) {
      htmlContent = _json["htmlContent"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("modifiedTime")) {
      modifiedTime = core.DateTime.parse(_json["modifiedTime"]);
    }
    if (_json.containsKey("quotedFileContent")) {
      quotedFileContent =
          new CommentQuotedFileContent.fromJson(_json["quotedFileContent"]);
    }
    if (_json.containsKey("replies")) {
      replies = (_json["replies"] as core.List)
          .map<Reply>((value) => new Reply.fromJson(value))
          .toList();
    }
    if (_json.containsKey("resolved")) {
      resolved = _json["resolved"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (anchor != null) {
      _json["anchor"] = anchor;
    }
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (createdTime != null) {
      _json["createdTime"] = (createdTime).toIso8601String();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (htmlContent != null) {
      _json["htmlContent"] = htmlContent;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (modifiedTime != null) {
      _json["modifiedTime"] = (modifiedTime).toIso8601String();
    }
    if (quotedFileContent != null) {
      _json["quotedFileContent"] = (quotedFileContent).toJson();
    }
    if (replies != null) {
      _json["replies"] = replies.map((value) => (value).toJson()).toList();
    }
    if (resolved != null) {
      _json["resolved"] = resolved;
    }
    return _json;
  }
}

/// A list of comments on a file.
class CommentList {
  /// The list of comments. If nextPageToken is populated, then this list may be
  /// incomplete and an additional page of results should be fetched.
  core.List<Comment> comments;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#commentList".
  core.String kind;

  /// The page token for the next page of comments. This will be absent if the
  /// end of the comments list has been reached. If the token is rejected for
  /// any reason, it should be discarded, and pagination should be restarted
  /// from the first page of results.
  core.String nextPageToken;

  CommentList();

  CommentList.fromJson(core.Map _json) {
    if (_json.containsKey("comments")) {
      comments = (_json["comments"] as core.List)
          .map<Comment>((value) => new Comment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (comments != null) {
      _json["comments"] = comments.map((value) => (value).toJson()).toList();
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

/// An image file and cropping parameters from which a background image for this
/// shared drive is set. This is a write only field; it can only be set on
/// drive.drives.update requests that don't set themeId. When specified, all
/// fields of the backgroundImageFile must be set.
class DriveBackgroundImageFile {
  /// The ID of an image file in Google Drive to use for the background image.
  core.String id;

  /// The width of the cropped image in the closed range of 0 to 1. This value
  /// represents the width of the cropped image divided by the width of the
  /// entire image. The height is computed by applying a width to height aspect
  /// ratio of 80 to 9. The resulting image must be at least 1280 pixels wide
  /// and 144 pixels high.
  core.double width;

  /// The X coordinate of the upper left corner of the cropping area in the
  /// background image. This is a value in the closed range of 0 to 1. This
  /// value represents the horizontal distance from the left side of the entire
  /// image to the left side of the cropping area divided by the width of the
  /// entire image.
  core.double xCoordinate;

  /// The Y coordinate of the upper left corner of the cropping area in the
  /// background image. This is a value in the closed range of 0 to 1. This
  /// value represents the vertical distance from the top side of the entire
  /// image to the top side of the cropping area divided by the height of the
  /// entire image.
  core.double yCoordinate;

  DriveBackgroundImageFile();

  DriveBackgroundImageFile.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"].toDouble();
    }
    if (_json.containsKey("xCoordinate")) {
      xCoordinate = _json["xCoordinate"].toDouble();
    }
    if (_json.containsKey("yCoordinate")) {
      yCoordinate = _json["yCoordinate"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (width != null) {
      _json["width"] = width;
    }
    if (xCoordinate != null) {
      _json["xCoordinate"] = xCoordinate;
    }
    if (yCoordinate != null) {
      _json["yCoordinate"] = yCoordinate;
    }
    return _json;
  }
}

/// Capabilities the current user has on this shared drive.
class DriveCapabilities {
  /// Whether the current user can add children to folders in this shared drive.
  core.bool canAddChildren;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this shared drive.
  core.bool canChangeCopyRequiresWriterPermissionRestriction;

  /// Whether the current user can change the domainUsersOnly restriction of
  /// this shared drive.
  core.bool canChangeDomainUsersOnlyRestriction;

  /// Whether the current user can change the background of this shared drive.
  core.bool canChangeDriveBackground;

  /// Whether the current user can change the driveMembersOnly restriction of
  /// this shared drive.
  core.bool canChangeDriveMembersOnlyRestriction;

  /// Whether the current user can comment on files in this shared drive.
  core.bool canComment;

  /// Whether the current user can copy files in this shared drive.
  core.bool canCopy;

  /// Whether the current user can delete children from folders in this shared
  /// drive.
  core.bool canDeleteChildren;

  /// Whether the current user can delete this shared drive. Attempting to
  /// delete the shared drive may still fail if there are untrashed items inside
  /// the shared drive.
  core.bool canDeleteDrive;

  /// Whether the current user can download files in this shared drive.
  core.bool canDownload;

  /// Whether the current user can edit files in this shared drive
  core.bool canEdit;

  /// Whether the current user can list the children of folders in this shared
  /// drive.
  core.bool canListChildren;

  /// Whether the current user can add members to this shared drive or remove
  /// them or change their role.
  core.bool canManageMembers;

  /// Whether the current user can read the revisions resource of files in this
  /// shared drive.
  core.bool canReadRevisions;

  /// Whether the current user can rename files or folders in this shared drive.
  core.bool canRename;

  /// Whether the current user can rename this shared drive.
  core.bool canRenameDrive;

  /// Whether the current user can share files or folders in this shared drive.
  core.bool canShare;

  /// Whether the current user can trash children from folders in this shared
  /// drive.
  core.bool canTrashChildren;

  DriveCapabilities();

  DriveCapabilities.fromJson(core.Map _json) {
    if (_json.containsKey("canAddChildren")) {
      canAddChildren = _json["canAddChildren"];
    }
    if (_json.containsKey("canChangeCopyRequiresWriterPermissionRestriction")) {
      canChangeCopyRequiresWriterPermissionRestriction =
          _json["canChangeCopyRequiresWriterPermissionRestriction"];
    }
    if (_json.containsKey("canChangeDomainUsersOnlyRestriction")) {
      canChangeDomainUsersOnlyRestriction =
          _json["canChangeDomainUsersOnlyRestriction"];
    }
    if (_json.containsKey("canChangeDriveBackground")) {
      canChangeDriveBackground = _json["canChangeDriveBackground"];
    }
    if (_json.containsKey("canChangeDriveMembersOnlyRestriction")) {
      canChangeDriveMembersOnlyRestriction =
          _json["canChangeDriveMembersOnlyRestriction"];
    }
    if (_json.containsKey("canComment")) {
      canComment = _json["canComment"];
    }
    if (_json.containsKey("canCopy")) {
      canCopy = _json["canCopy"];
    }
    if (_json.containsKey("canDeleteChildren")) {
      canDeleteChildren = _json["canDeleteChildren"];
    }
    if (_json.containsKey("canDeleteDrive")) {
      canDeleteDrive = _json["canDeleteDrive"];
    }
    if (_json.containsKey("canDownload")) {
      canDownload = _json["canDownload"];
    }
    if (_json.containsKey("canEdit")) {
      canEdit = _json["canEdit"];
    }
    if (_json.containsKey("canListChildren")) {
      canListChildren = _json["canListChildren"];
    }
    if (_json.containsKey("canManageMembers")) {
      canManageMembers = _json["canManageMembers"];
    }
    if (_json.containsKey("canReadRevisions")) {
      canReadRevisions = _json["canReadRevisions"];
    }
    if (_json.containsKey("canRename")) {
      canRename = _json["canRename"];
    }
    if (_json.containsKey("canRenameDrive")) {
      canRenameDrive = _json["canRenameDrive"];
    }
    if (_json.containsKey("canShare")) {
      canShare = _json["canShare"];
    }
    if (_json.containsKey("canTrashChildren")) {
      canTrashChildren = _json["canTrashChildren"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canAddChildren != null) {
      _json["canAddChildren"] = canAddChildren;
    }
    if (canChangeCopyRequiresWriterPermissionRestriction != null) {
      _json["canChangeCopyRequiresWriterPermissionRestriction"] =
          canChangeCopyRequiresWriterPermissionRestriction;
    }
    if (canChangeDomainUsersOnlyRestriction != null) {
      _json["canChangeDomainUsersOnlyRestriction"] =
          canChangeDomainUsersOnlyRestriction;
    }
    if (canChangeDriveBackground != null) {
      _json["canChangeDriveBackground"] = canChangeDriveBackground;
    }
    if (canChangeDriveMembersOnlyRestriction != null) {
      _json["canChangeDriveMembersOnlyRestriction"] =
          canChangeDriveMembersOnlyRestriction;
    }
    if (canComment != null) {
      _json["canComment"] = canComment;
    }
    if (canCopy != null) {
      _json["canCopy"] = canCopy;
    }
    if (canDeleteChildren != null) {
      _json["canDeleteChildren"] = canDeleteChildren;
    }
    if (canDeleteDrive != null) {
      _json["canDeleteDrive"] = canDeleteDrive;
    }
    if (canDownload != null) {
      _json["canDownload"] = canDownload;
    }
    if (canEdit != null) {
      _json["canEdit"] = canEdit;
    }
    if (canListChildren != null) {
      _json["canListChildren"] = canListChildren;
    }
    if (canManageMembers != null) {
      _json["canManageMembers"] = canManageMembers;
    }
    if (canReadRevisions != null) {
      _json["canReadRevisions"] = canReadRevisions;
    }
    if (canRename != null) {
      _json["canRename"] = canRename;
    }
    if (canRenameDrive != null) {
      _json["canRenameDrive"] = canRenameDrive;
    }
    if (canShare != null) {
      _json["canShare"] = canShare;
    }
    if (canTrashChildren != null) {
      _json["canTrashChildren"] = canTrashChildren;
    }
    return _json;
  }
}

/// A set of restrictions that apply to this shared drive or items inside this
/// shared drive.
class DriveRestrictions {
  /// Whether administrative privileges on this shared drive are required to
  /// modify restrictions.
  core.bool adminManagedRestrictions;

  /// Whether the options to copy, print, or download files inside this shared
  /// drive, should be disabled for readers and commenters. When this
  /// restriction is set to true, it will override the similarly named field to
  /// true for any file inside this shared drive.
  core.bool copyRequiresWriterPermission;

  /// Whether access to this shared drive and items inside this shared drive is
  /// restricted to users of the domain to which this shared drive belongs. This
  /// restriction may be overridden by other sharing policies controlled outside
  /// of this shared drive.
  core.bool domainUsersOnly;

  /// Whether access to items inside this shared drive is restricted to its
  /// members.
  core.bool driveMembersOnly;

  DriveRestrictions();

  DriveRestrictions.fromJson(core.Map _json) {
    if (_json.containsKey("adminManagedRestrictions")) {
      adminManagedRestrictions = _json["adminManagedRestrictions"];
    }
    if (_json.containsKey("copyRequiresWriterPermission")) {
      copyRequiresWriterPermission = _json["copyRequiresWriterPermission"];
    }
    if (_json.containsKey("domainUsersOnly")) {
      domainUsersOnly = _json["domainUsersOnly"];
    }
    if (_json.containsKey("driveMembersOnly")) {
      driveMembersOnly = _json["driveMembersOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adminManagedRestrictions != null) {
      _json["adminManagedRestrictions"] = adminManagedRestrictions;
    }
    if (copyRequiresWriterPermission != null) {
      _json["copyRequiresWriterPermission"] = copyRequiresWriterPermission;
    }
    if (domainUsersOnly != null) {
      _json["domainUsersOnly"] = domainUsersOnly;
    }
    if (driveMembersOnly != null) {
      _json["driveMembersOnly"] = driveMembersOnly;
    }
    return _json;
  }
}

/// Representation of a shared drive.
class Drive {
  /// An image file and cropping parameters from which a background image for
  /// this shared drive is set. This is a write only field; it can only be set
  /// on drive.drives.update requests that don't set themeId. When specified,
  /// all fields of the backgroundImageFile must be set.
  DriveBackgroundImageFile backgroundImageFile;

  /// A short-lived link to this shared drive's background image.
  core.String backgroundImageLink;

  /// Capabilities the current user has on this shared drive.
  DriveCapabilities capabilities;

  /// The color of this shared drive as an RGB hex string. It can only be set on
  /// a drive.drives.update request that does not set themeId.
  core.String colorRgb;

  /// The time at which the shared drive was created (RFC 3339 date-time).
  core.DateTime createdTime;

  /// Whether the shared drive is hidden from default view.
  core.bool hidden;

  /// The ID of this shared drive which is also the ID of the top level folder
  /// of this shared drive.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#drive".
  core.String kind;

  /// The name of this shared drive.
  core.String name;

  /// A set of restrictions that apply to this shared drive or items inside this
  /// shared drive.
  DriveRestrictions restrictions;

  /// The ID of the theme from which the background image and color will be set.
  /// The set of possible driveThemes can be retrieved from a drive.about.get
  /// response. When not specified on a drive.drives.create request, a random
  /// theme is chosen from which the background image and color are set. This is
  /// a write-only field; it can only be set on requests that don't set colorRgb
  /// or backgroundImageFile.
  core.String themeId;

  Drive();

  Drive.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundImageFile")) {
      backgroundImageFile =
          new DriveBackgroundImageFile.fromJson(_json["backgroundImageFile"]);
    }
    if (_json.containsKey("backgroundImageLink")) {
      backgroundImageLink = _json["backgroundImageLink"];
    }
    if (_json.containsKey("capabilities")) {
      capabilities = new DriveCapabilities.fromJson(_json["capabilities"]);
    }
    if (_json.containsKey("colorRgb")) {
      colorRgb = _json["colorRgb"];
    }
    if (_json.containsKey("createdTime")) {
      createdTime = core.DateTime.parse(_json["createdTime"]);
    }
    if (_json.containsKey("hidden")) {
      hidden = _json["hidden"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = new DriveRestrictions.fromJson(_json["restrictions"]);
    }
    if (_json.containsKey("themeId")) {
      themeId = _json["themeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundImageFile != null) {
      _json["backgroundImageFile"] = (backgroundImageFile).toJson();
    }
    if (backgroundImageLink != null) {
      _json["backgroundImageLink"] = backgroundImageLink;
    }
    if (capabilities != null) {
      _json["capabilities"] = (capabilities).toJson();
    }
    if (colorRgb != null) {
      _json["colorRgb"] = colorRgb;
    }
    if (createdTime != null) {
      _json["createdTime"] = (createdTime).toIso8601String();
    }
    if (hidden != null) {
      _json["hidden"] = hidden;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (restrictions != null) {
      _json["restrictions"] = (restrictions).toJson();
    }
    if (themeId != null) {
      _json["themeId"] = themeId;
    }
    return _json;
  }
}

/// A list of shared drives.
class DriveList {
  /// The list of shared drives. If nextPageToken is populated, then this list
  /// may be incomplete and an additional page of results should be fetched.
  core.List<Drive> drives;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#driveList".
  core.String kind;

  /// The page token for the next page of shared drives. This will be absent if
  /// the end of the list has been reached. If the token is rejected for any
  /// reason, it should be discarded, and pagination should be restarted from
  /// the first page of results.
  core.String nextPageToken;

  DriveList();

  DriveList.fromJson(core.Map _json) {
    if (_json.containsKey("drives")) {
      drives = (_json["drives"] as core.List)
          .map<Drive>((value) => new Drive.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (drives != null) {
      _json["drives"] = drives.map((value) => (value).toJson()).toList();
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

/// Capabilities the current user has on this file. Each capability corresponds
/// to a fine-grained action that a user may take.
class FileCapabilities {
  /// Whether the current user can add children to this folder. This is always
  /// false when the item is not a folder.
  core.bool canAddChildren;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this file.
  core.bool canChangeCopyRequiresWriterPermission;

  /// Deprecated
  core.bool canChangeViewersCanCopyContent;

  /// Whether the current user can comment on this file.
  core.bool canComment;

  /// Whether the current user can copy this file. For an item in a shared
  /// drive, whether the current user can copy non-folder descendants of this
  /// item, or this item itself if it is not a folder.
  core.bool canCopy;

  /// Whether the current user can delete this file.
  core.bool canDelete;

  /// Whether the current user can delete children of this folder. This is false
  /// when the item is not a folder. Only populated for items in shared drives.
  core.bool canDeleteChildren;

  /// Whether the current user can download this file.
  core.bool canDownload;

  /// Whether the current user can edit this file.
  core.bool canEdit;

  /// Whether the current user can list the children of this folder. This is
  /// always false when the item is not a folder.
  core.bool canListChildren;

  /// Whether the current user can move children of this folder outside of the
  /// shared drive. This is false when the item is not a folder. Only populated
  /// for items in shared drives.
  core.bool canMoveChildrenOutOfDrive;

  /// Deprecated - use canMoveChildrenOutOfDrive instead.
  core.bool canMoveChildrenOutOfTeamDrive;

  /// Whether the current user can move children of this folder within the
  /// shared drive. This is false when the item is not a folder. Only populated
  /// for items in shared drives.
  core.bool canMoveChildrenWithinDrive;

  /// Deprecated - use canMoveChildrenWithinDrive instead.
  core.bool canMoveChildrenWithinTeamDrive;

  /// Deprecated - use canMoveItemOutOfDrive instead.
  core.bool canMoveItemIntoTeamDrive;

  /// Whether the current user can move this item outside of this drive by
  /// changing its parent. Note that a request to change the parent of the item
  /// may still fail depending on the new parent that is being added.
  core.bool canMoveItemOutOfDrive;

  /// Deprecated - use canMoveItemOutOfDrive instead.
  core.bool canMoveItemOutOfTeamDrive;

  /// Whether the current user can move this item within this shared drive. Note
  /// that a request to change the parent of the item may still fail depending
  /// on the new parent that is being added. Only populated for items in shared
  /// drives.
  core.bool canMoveItemWithinDrive;

  /// Deprecated - use canMoveItemWithinDrive instead.
  core.bool canMoveItemWithinTeamDrive;

  /// Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.
  core.bool canMoveTeamDriveItem;

  /// Whether the current user can read the shared drive to which this file
  /// belongs. Only populated for items in shared drives.
  core.bool canReadDrive;

  /// Whether the current user can read the revisions resource of this file. For
  /// a shared drive item, whether revisions of non-folder descendants of this
  /// item, or this item itself if it is not a folder, can be read.
  core.bool canReadRevisions;

  /// Deprecated - use canReadDrive instead.
  core.bool canReadTeamDrive;

  /// Whether the current user can remove children from this folder. This is
  /// always false when the item is not a folder. For a folder in a shared
  /// drive, use canDeleteChildren or canTrashChildren instead.
  core.bool canRemoveChildren;

  /// Whether the current user can rename this file.
  core.bool canRename;

  /// Whether the current user can modify the sharing settings for this file.
  core.bool canShare;

  /// Whether the current user can move this file to trash.
  core.bool canTrash;

  /// Whether the current user can trash children of this folder. This is false
  /// when the item is not a folder. Only populated for items in shared drives.
  core.bool canTrashChildren;

  /// Whether the current user can restore this file from trash.
  core.bool canUntrash;

  FileCapabilities();

  FileCapabilities.fromJson(core.Map _json) {
    if (_json.containsKey("canAddChildren")) {
      canAddChildren = _json["canAddChildren"];
    }
    if (_json.containsKey("canChangeCopyRequiresWriterPermission")) {
      canChangeCopyRequiresWriterPermission =
          _json["canChangeCopyRequiresWriterPermission"];
    }
    if (_json.containsKey("canChangeViewersCanCopyContent")) {
      canChangeViewersCanCopyContent = _json["canChangeViewersCanCopyContent"];
    }
    if (_json.containsKey("canComment")) {
      canComment = _json["canComment"];
    }
    if (_json.containsKey("canCopy")) {
      canCopy = _json["canCopy"];
    }
    if (_json.containsKey("canDelete")) {
      canDelete = _json["canDelete"];
    }
    if (_json.containsKey("canDeleteChildren")) {
      canDeleteChildren = _json["canDeleteChildren"];
    }
    if (_json.containsKey("canDownload")) {
      canDownload = _json["canDownload"];
    }
    if (_json.containsKey("canEdit")) {
      canEdit = _json["canEdit"];
    }
    if (_json.containsKey("canListChildren")) {
      canListChildren = _json["canListChildren"];
    }
    if (_json.containsKey("canMoveChildrenOutOfDrive")) {
      canMoveChildrenOutOfDrive = _json["canMoveChildrenOutOfDrive"];
    }
    if (_json.containsKey("canMoveChildrenOutOfTeamDrive")) {
      canMoveChildrenOutOfTeamDrive = _json["canMoveChildrenOutOfTeamDrive"];
    }
    if (_json.containsKey("canMoveChildrenWithinDrive")) {
      canMoveChildrenWithinDrive = _json["canMoveChildrenWithinDrive"];
    }
    if (_json.containsKey("canMoveChildrenWithinTeamDrive")) {
      canMoveChildrenWithinTeamDrive = _json["canMoveChildrenWithinTeamDrive"];
    }
    if (_json.containsKey("canMoveItemIntoTeamDrive")) {
      canMoveItemIntoTeamDrive = _json["canMoveItemIntoTeamDrive"];
    }
    if (_json.containsKey("canMoveItemOutOfDrive")) {
      canMoveItemOutOfDrive = _json["canMoveItemOutOfDrive"];
    }
    if (_json.containsKey("canMoveItemOutOfTeamDrive")) {
      canMoveItemOutOfTeamDrive = _json["canMoveItemOutOfTeamDrive"];
    }
    if (_json.containsKey("canMoveItemWithinDrive")) {
      canMoveItemWithinDrive = _json["canMoveItemWithinDrive"];
    }
    if (_json.containsKey("canMoveItemWithinTeamDrive")) {
      canMoveItemWithinTeamDrive = _json["canMoveItemWithinTeamDrive"];
    }
    if (_json.containsKey("canMoveTeamDriveItem")) {
      canMoveTeamDriveItem = _json["canMoveTeamDriveItem"];
    }
    if (_json.containsKey("canReadDrive")) {
      canReadDrive = _json["canReadDrive"];
    }
    if (_json.containsKey("canReadRevisions")) {
      canReadRevisions = _json["canReadRevisions"];
    }
    if (_json.containsKey("canReadTeamDrive")) {
      canReadTeamDrive = _json["canReadTeamDrive"];
    }
    if (_json.containsKey("canRemoveChildren")) {
      canRemoveChildren = _json["canRemoveChildren"];
    }
    if (_json.containsKey("canRename")) {
      canRename = _json["canRename"];
    }
    if (_json.containsKey("canShare")) {
      canShare = _json["canShare"];
    }
    if (_json.containsKey("canTrash")) {
      canTrash = _json["canTrash"];
    }
    if (_json.containsKey("canTrashChildren")) {
      canTrashChildren = _json["canTrashChildren"];
    }
    if (_json.containsKey("canUntrash")) {
      canUntrash = _json["canUntrash"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canAddChildren != null) {
      _json["canAddChildren"] = canAddChildren;
    }
    if (canChangeCopyRequiresWriterPermission != null) {
      _json["canChangeCopyRequiresWriterPermission"] =
          canChangeCopyRequiresWriterPermission;
    }
    if (canChangeViewersCanCopyContent != null) {
      _json["canChangeViewersCanCopyContent"] = canChangeViewersCanCopyContent;
    }
    if (canComment != null) {
      _json["canComment"] = canComment;
    }
    if (canCopy != null) {
      _json["canCopy"] = canCopy;
    }
    if (canDelete != null) {
      _json["canDelete"] = canDelete;
    }
    if (canDeleteChildren != null) {
      _json["canDeleteChildren"] = canDeleteChildren;
    }
    if (canDownload != null) {
      _json["canDownload"] = canDownload;
    }
    if (canEdit != null) {
      _json["canEdit"] = canEdit;
    }
    if (canListChildren != null) {
      _json["canListChildren"] = canListChildren;
    }
    if (canMoveChildrenOutOfDrive != null) {
      _json["canMoveChildrenOutOfDrive"] = canMoveChildrenOutOfDrive;
    }
    if (canMoveChildrenOutOfTeamDrive != null) {
      _json["canMoveChildrenOutOfTeamDrive"] = canMoveChildrenOutOfTeamDrive;
    }
    if (canMoveChildrenWithinDrive != null) {
      _json["canMoveChildrenWithinDrive"] = canMoveChildrenWithinDrive;
    }
    if (canMoveChildrenWithinTeamDrive != null) {
      _json["canMoveChildrenWithinTeamDrive"] = canMoveChildrenWithinTeamDrive;
    }
    if (canMoveItemIntoTeamDrive != null) {
      _json["canMoveItemIntoTeamDrive"] = canMoveItemIntoTeamDrive;
    }
    if (canMoveItemOutOfDrive != null) {
      _json["canMoveItemOutOfDrive"] = canMoveItemOutOfDrive;
    }
    if (canMoveItemOutOfTeamDrive != null) {
      _json["canMoveItemOutOfTeamDrive"] = canMoveItemOutOfTeamDrive;
    }
    if (canMoveItemWithinDrive != null) {
      _json["canMoveItemWithinDrive"] = canMoveItemWithinDrive;
    }
    if (canMoveItemWithinTeamDrive != null) {
      _json["canMoveItemWithinTeamDrive"] = canMoveItemWithinTeamDrive;
    }
    if (canMoveTeamDriveItem != null) {
      _json["canMoveTeamDriveItem"] = canMoveTeamDriveItem;
    }
    if (canReadDrive != null) {
      _json["canReadDrive"] = canReadDrive;
    }
    if (canReadRevisions != null) {
      _json["canReadRevisions"] = canReadRevisions;
    }
    if (canReadTeamDrive != null) {
      _json["canReadTeamDrive"] = canReadTeamDrive;
    }
    if (canRemoveChildren != null) {
      _json["canRemoveChildren"] = canRemoveChildren;
    }
    if (canRename != null) {
      _json["canRename"] = canRename;
    }
    if (canShare != null) {
      _json["canShare"] = canShare;
    }
    if (canTrash != null) {
      _json["canTrash"] = canTrash;
    }
    if (canTrashChildren != null) {
      _json["canTrashChildren"] = canTrashChildren;
    }
    if (canUntrash != null) {
      _json["canUntrash"] = canUntrash;
    }
    return _json;
  }
}

/// A thumbnail for the file. This will only be used if Google Drive cannot
/// generate a standard thumbnail.
class FileContentHintsThumbnail {
  /// The thumbnail data encoded with URL-safe Base64 (RFC 4648 section 5).
  core.String image;
  core.List<core.int> get imageAsBytes {
    return convert.base64.decode(image);
  }

  set imageAsBytes(core.List<core.int> _bytes) {
    image =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The MIME type of the thumbnail.
  core.String mimeType;

  FileContentHintsThumbnail();

  FileContentHintsThumbnail.fromJson(core.Map _json) {
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (image != null) {
      _json["image"] = image;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// Additional information about the content of the file. These fields are never
/// populated in responses.
class FileContentHints {
  /// Text to be indexed for the file to improve fullText queries. This is
  /// limited to 128KB in length and may contain HTML elements.
  core.String indexableText;

  /// A thumbnail for the file. This will only be used if Google Drive cannot
  /// generate a standard thumbnail.
  FileContentHintsThumbnail thumbnail;

  FileContentHints();

  FileContentHints.fromJson(core.Map _json) {
    if (_json.containsKey("indexableText")) {
      indexableText = _json["indexableText"];
    }
    if (_json.containsKey("thumbnail")) {
      thumbnail = new FileContentHintsThumbnail.fromJson(_json["thumbnail"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (indexableText != null) {
      _json["indexableText"] = indexableText;
    }
    if (thumbnail != null) {
      _json["thumbnail"] = (thumbnail).toJson();
    }
    return _json;
  }
}

/// Geographic location information stored in the image.
class FileImageMediaMetadataLocation {
  /// The altitude stored in the image.
  core.double altitude;

  /// The latitude stored in the image.
  core.double latitude;

  /// The longitude stored in the image.
  core.double longitude;

  FileImageMediaMetadataLocation();

  FileImageMediaMetadataLocation.fromJson(core.Map _json) {
    if (_json.containsKey("altitude")) {
      altitude = _json["altitude"].toDouble();
    }
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"].toDouble();
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (altitude != null) {
      _json["altitude"] = altitude;
    }
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/// Additional metadata about image media, if available.
class FileImageMediaMetadata {
  /// The aperture used to create the photo (f-number).
  core.double aperture;

  /// The make of the camera used to create the photo.
  core.String cameraMake;

  /// The model of the camera used to create the photo.
  core.String cameraModel;

  /// The color space of the photo.
  core.String colorSpace;

  /// The exposure bias of the photo (APEX value).
  core.double exposureBias;

  /// The exposure mode used to create the photo.
  core.String exposureMode;

  /// The length of the exposure, in seconds.
  core.double exposureTime;

  /// Whether a flash was used to create the photo.
  core.bool flashUsed;

  /// The focal length used to create the photo, in millimeters.
  core.double focalLength;

  /// The height of the image in pixels.
  core.int height;

  /// The ISO speed used to create the photo.
  core.int isoSpeed;

  /// The lens used to create the photo.
  core.String lens;

  /// Geographic location information stored in the image.
  FileImageMediaMetadataLocation location;

  /// The smallest f-number of the lens at the focal length used to create the
  /// photo (APEX value).
  core.double maxApertureValue;

  /// The metering mode used to create the photo.
  core.String meteringMode;

  /// The rotation in clockwise degrees from the image's original orientation.
  core.int rotation;

  /// The type of sensor used to create the photo.
  core.String sensor;

  /// The distance to the subject of the photo, in meters.
  core.int subjectDistance;

  /// The date and time the photo was taken (EXIF DateTime).
  core.String time;

  /// The white balance mode used to create the photo.
  core.String whiteBalance;

  /// The width of the image in pixels.
  core.int width;

  FileImageMediaMetadata();

  FileImageMediaMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("aperture")) {
      aperture = _json["aperture"].toDouble();
    }
    if (_json.containsKey("cameraMake")) {
      cameraMake = _json["cameraMake"];
    }
    if (_json.containsKey("cameraModel")) {
      cameraModel = _json["cameraModel"];
    }
    if (_json.containsKey("colorSpace")) {
      colorSpace = _json["colorSpace"];
    }
    if (_json.containsKey("exposureBias")) {
      exposureBias = _json["exposureBias"].toDouble();
    }
    if (_json.containsKey("exposureMode")) {
      exposureMode = _json["exposureMode"];
    }
    if (_json.containsKey("exposureTime")) {
      exposureTime = _json["exposureTime"].toDouble();
    }
    if (_json.containsKey("flashUsed")) {
      flashUsed = _json["flashUsed"];
    }
    if (_json.containsKey("focalLength")) {
      focalLength = _json["focalLength"].toDouble();
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("isoSpeed")) {
      isoSpeed = _json["isoSpeed"];
    }
    if (_json.containsKey("lens")) {
      lens = _json["lens"];
    }
    if (_json.containsKey("location")) {
      location = new FileImageMediaMetadataLocation.fromJson(_json["location"]);
    }
    if (_json.containsKey("maxApertureValue")) {
      maxApertureValue = _json["maxApertureValue"].toDouble();
    }
    if (_json.containsKey("meteringMode")) {
      meteringMode = _json["meteringMode"];
    }
    if (_json.containsKey("rotation")) {
      rotation = _json["rotation"];
    }
    if (_json.containsKey("sensor")) {
      sensor = _json["sensor"];
    }
    if (_json.containsKey("subjectDistance")) {
      subjectDistance = _json["subjectDistance"];
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
    if (_json.containsKey("whiteBalance")) {
      whiteBalance = _json["whiteBalance"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aperture != null) {
      _json["aperture"] = aperture;
    }
    if (cameraMake != null) {
      _json["cameraMake"] = cameraMake;
    }
    if (cameraModel != null) {
      _json["cameraModel"] = cameraModel;
    }
    if (colorSpace != null) {
      _json["colorSpace"] = colorSpace;
    }
    if (exposureBias != null) {
      _json["exposureBias"] = exposureBias;
    }
    if (exposureMode != null) {
      _json["exposureMode"] = exposureMode;
    }
    if (exposureTime != null) {
      _json["exposureTime"] = exposureTime;
    }
    if (flashUsed != null) {
      _json["flashUsed"] = flashUsed;
    }
    if (focalLength != null) {
      _json["focalLength"] = focalLength;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (isoSpeed != null) {
      _json["isoSpeed"] = isoSpeed;
    }
    if (lens != null) {
      _json["lens"] = lens;
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (maxApertureValue != null) {
      _json["maxApertureValue"] = maxApertureValue;
    }
    if (meteringMode != null) {
      _json["meteringMode"] = meteringMode;
    }
    if (rotation != null) {
      _json["rotation"] = rotation;
    }
    if (sensor != null) {
      _json["sensor"] = sensor;
    }
    if (subjectDistance != null) {
      _json["subjectDistance"] = subjectDistance;
    }
    if (time != null) {
      _json["time"] = time;
    }
    if (whiteBalance != null) {
      _json["whiteBalance"] = whiteBalance;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Additional metadata about video media. This may not be available immediately
/// upon upload.
class FileVideoMediaMetadata {
  /// The duration of the video in milliseconds.
  core.String durationMillis;

  /// The height of the video in pixels.
  core.int height;

  /// The width of the video in pixels.
  core.int width;

  FileVideoMediaMetadata();

  FileVideoMediaMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("durationMillis")) {
      durationMillis = _json["durationMillis"];
    }
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (durationMillis != null) {
      _json["durationMillis"] = durationMillis;
    }
    if (height != null) {
      _json["height"] = height;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// The metadata for a file.
class File {
  /// A collection of arbitrary key-value pairs which are private to the
  /// requesting app.
  /// Entries with null values are cleared in update and copy requests.
  core.Map<core.String, core.String> appProperties;

  /// Capabilities the current user has on this file. Each capability
  /// corresponds to a fine-grained action that a user may take.
  FileCapabilities capabilities;

  /// Additional information about the content of the file. These fields are
  /// never populated in responses.
  FileContentHints contentHints;

  /// Whether the options to copy, print, or download this file, should be
  /// disabled for readers and commenters.
  core.bool copyRequiresWriterPermission;

  /// The time at which the file was created (RFC 3339 date-time).
  core.DateTime createdTime;

  /// A short description of the file.
  core.String description;

  /// ID of the shared drive the file resides in. Only populated for items in
  /// shared drives.
  core.String driveId;

  /// Whether the file has been explicitly trashed, as opposed to recursively
  /// trashed from a parent folder.
  core.bool explicitlyTrashed;

  /// Links for exporting Google Docs to specific formats.
  core.Map<core.String, core.String> exportLinks;

  /// The final component of fullFileExtension. This is only available for files
  /// with binary content in Google Drive.
  core.String fileExtension;

  /// The color for a folder as an RGB hex string. The supported colors are
  /// published in the folderColorPalette field of the About resource.
  /// If an unsupported color is specified, the closest color in the palette
  /// will be used instead.
  core.String folderColorRgb;

  /// The full file extension extracted from the name field. May contain
  /// multiple concatenated extensions, such as "tar.gz". This is only available
  /// for files with binary content in Google Drive.
  /// This is automatically updated when the name field changes, however it is
  /// not cleared if the new name does not contain a valid extension.
  core.String fullFileExtension;

  /// Whether any users are granted file access directly on this file. This
  /// field is only populated for shared drive files.
  core.bool hasAugmentedPermissions;

  /// Whether this file has a thumbnail. This does not indicate whether the
  /// requesting app has access to the thumbnail. To check access, look for the
  /// presence of the thumbnailLink field.
  core.bool hasThumbnail;

  /// The ID of the file's head revision. This is currently only available for
  /// files with binary content in Google Drive.
  core.String headRevisionId;

  /// A static, unauthenticated link to the file's icon.
  core.String iconLink;

  /// The ID of the file.
  core.String id;

  /// Additional metadata about image media, if available.
  FileImageMediaMetadata imageMediaMetadata;

  /// Whether the file was created or opened by the requesting app.
  core.bool isAppAuthorized;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#file".
  core.String kind;

  /// The last user to modify the file.
  User lastModifyingUser;

  /// The MD5 checksum for the content of the file. This is only applicable to
  /// files with binary content in Google Drive.
  core.String md5Checksum;

  /// The MIME type of the file.
  /// Google Drive will attempt to automatically detect an appropriate value
  /// from uploaded content if no value is provided. The value cannot be changed
  /// unless a new revision is uploaded.
  /// If a file is created with a Google Doc MIME type, the uploaded content
  /// will be imported if possible. The supported import formats are published
  /// in the About resource.
  core.String mimeType;

  /// Whether the file has been modified by this user.
  core.bool modifiedByMe;

  /// The last time the file was modified by the user (RFC 3339 date-time).
  core.DateTime modifiedByMeTime;

  /// The last time the file was modified by anyone (RFC 3339 date-time).
  /// Note that setting modifiedTime will also update modifiedByMeTime for the
  /// user.
  core.DateTime modifiedTime;

  /// The name of the file. This is not necessarily unique within a folder. Note
  /// that for immutable items such as the top level folders of shared drives,
  /// My Drive root folder, and Application Data folder the name is constant.
  core.String name;

  /// The original filename of the uploaded content if available, or else the
  /// original value of the name field. This is only available for files with
  /// binary content in Google Drive.
  core.String originalFilename;

  /// Whether the user owns the file. Not populated for items in shared drives.
  core.bool ownedByMe;

  /// The owners of the file. Currently, only certain legacy files may have more
  /// than one owner. Not populated for items in shared drives.
  core.List<User> owners;

  /// The IDs of the parent folders which contain the file.
  /// If not specified as part of a create request, the file will be placed
  /// directly in the user's My Drive folder. If not specified as part of a copy
  /// request, the file will inherit any discoverable parents of the source
  /// file. Update requests must use the addParents and removeParents parameters
  /// to modify the parents list.
  core.List<core.String> parents;

  /// List of permission IDs for users with access to this file.
  core.List<core.String> permissionIds;

  /// The full list of permissions for the file. This is only available if the
  /// requesting user can share the file. Not populated for items in shared
  /// drives.
  core.List<Permission> permissions;

  /// A collection of arbitrary key-value pairs which are visible to all apps.
  /// Entries with null values are cleared in update and copy requests.
  core.Map<core.String, core.String> properties;

  /// The number of storage quota bytes used by the file. This includes the head
  /// revision as well as previous revisions with keepForever enabled.
  core.String quotaBytesUsed;

  /// Whether the file has been shared. Not populated for items in shared
  /// drives.
  core.bool shared;

  /// The time at which the file was shared with the user, if applicable (RFC
  /// 3339 date-time).
  core.DateTime sharedWithMeTime;

  /// The user who shared the file with the requesting user, if applicable.
  User sharingUser;

  /// The size of the file's content in bytes. This is only applicable to files
  /// with binary content in Google Drive.
  core.String size;

  /// The list of spaces which contain the file. The currently supported values
  /// are 'drive', 'appDataFolder' and 'photos'.
  core.List<core.String> spaces;

  /// Whether the user has starred the file.
  core.bool starred;

  /// Deprecated - use driveId instead.
  core.String teamDriveId;

  /// A short-lived link to the file's thumbnail, if available. Typically lasts
  /// on the order of hours. Only populated when the requesting app can access
  /// the file's content.
  core.String thumbnailLink;

  /// The thumbnail version for use in thumbnail cache invalidation.
  core.String thumbnailVersion;

  /// Whether the file has been trashed, either explicitly or from a trashed
  /// parent folder. Only the owner may trash a file, and other users cannot see
  /// files in the owner's trash.
  core.bool trashed;

  /// The time that the item was trashed (RFC 3339 date-time). Only populated
  /// for items in shared drives.
  core.DateTime trashedTime;

  /// If the file has been explicitly trashed, the user who trashed it. Only
  /// populated for items in shared drives.
  User trashingUser;

  /// A monotonically increasing version number for the file. This reflects
  /// every change made to the file on the server, even those not visible to the
  /// user.
  core.String version;

  /// Additional metadata about video media. This may not be available
  /// immediately upon upload.
  FileVideoMediaMetadata videoMediaMetadata;

  /// Whether the file has been viewed by this user.
  core.bool viewedByMe;

  /// The last time the file was viewed by the user (RFC 3339 date-time).
  core.DateTime viewedByMeTime;

  /// Deprecated - use copyRequiresWriterPermission instead.
  core.bool viewersCanCopyContent;

  /// A link for downloading the content of the file in a browser. This is only
  /// available for files with binary content in Google Drive.
  core.String webContentLink;

  /// A link for opening the file in a relevant Google editor or viewer in a
  /// browser.
  core.String webViewLink;

  /// Whether users with only writer permission can modify the file's
  /// permissions. Not populated for items in shared drives.
  core.bool writersCanShare;

  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("appProperties")) {
      appProperties =
          (_json["appProperties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("capabilities")) {
      capabilities = new FileCapabilities.fromJson(_json["capabilities"]);
    }
    if (_json.containsKey("contentHints")) {
      contentHints = new FileContentHints.fromJson(_json["contentHints"]);
    }
    if (_json.containsKey("copyRequiresWriterPermission")) {
      copyRequiresWriterPermission = _json["copyRequiresWriterPermission"];
    }
    if (_json.containsKey("createdTime")) {
      createdTime = core.DateTime.parse(_json["createdTime"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("driveId")) {
      driveId = _json["driveId"];
    }
    if (_json.containsKey("explicitlyTrashed")) {
      explicitlyTrashed = _json["explicitlyTrashed"];
    }
    if (_json.containsKey("exportLinks")) {
      exportLinks =
          (_json["exportLinks"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fileExtension")) {
      fileExtension = _json["fileExtension"];
    }
    if (_json.containsKey("folderColorRgb")) {
      folderColorRgb = _json["folderColorRgb"];
    }
    if (_json.containsKey("fullFileExtension")) {
      fullFileExtension = _json["fullFileExtension"];
    }
    if (_json.containsKey("hasAugmentedPermissions")) {
      hasAugmentedPermissions = _json["hasAugmentedPermissions"];
    }
    if (_json.containsKey("hasThumbnail")) {
      hasThumbnail = _json["hasThumbnail"];
    }
    if (_json.containsKey("headRevisionId")) {
      headRevisionId = _json["headRevisionId"];
    }
    if (_json.containsKey("iconLink")) {
      iconLink = _json["iconLink"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("imageMediaMetadata")) {
      imageMediaMetadata =
          new FileImageMediaMetadata.fromJson(_json["imageMediaMetadata"]);
    }
    if (_json.containsKey("isAppAuthorized")) {
      isAppAuthorized = _json["isAppAuthorized"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModifyingUser")) {
      lastModifyingUser = new User.fromJson(_json["lastModifyingUser"]);
    }
    if (_json.containsKey("md5Checksum")) {
      md5Checksum = _json["md5Checksum"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("modifiedByMe")) {
      modifiedByMe = _json["modifiedByMe"];
    }
    if (_json.containsKey("modifiedByMeTime")) {
      modifiedByMeTime = core.DateTime.parse(_json["modifiedByMeTime"]);
    }
    if (_json.containsKey("modifiedTime")) {
      modifiedTime = core.DateTime.parse(_json["modifiedTime"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("originalFilename")) {
      originalFilename = _json["originalFilename"];
    }
    if (_json.containsKey("ownedByMe")) {
      ownedByMe = _json["ownedByMe"];
    }
    if (_json.containsKey("owners")) {
      owners = (_json["owners"] as core.List)
          .map<User>((value) => new User.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parents")) {
      parents = (_json["parents"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("permissionIds")) {
      permissionIds = (_json["permissionIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List)
          .map<Permission>((value) => new Permission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("quotaBytesUsed")) {
      quotaBytesUsed = _json["quotaBytesUsed"];
    }
    if (_json.containsKey("shared")) {
      shared = _json["shared"];
    }
    if (_json.containsKey("sharedWithMeTime")) {
      sharedWithMeTime = core.DateTime.parse(_json["sharedWithMeTime"]);
    }
    if (_json.containsKey("sharingUser")) {
      sharingUser = new User.fromJson(_json["sharingUser"]);
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("spaces")) {
      spaces = (_json["spaces"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("starred")) {
      starred = _json["starred"];
    }
    if (_json.containsKey("teamDriveId")) {
      teamDriveId = _json["teamDriveId"];
    }
    if (_json.containsKey("thumbnailLink")) {
      thumbnailLink = _json["thumbnailLink"];
    }
    if (_json.containsKey("thumbnailVersion")) {
      thumbnailVersion = _json["thumbnailVersion"];
    }
    if (_json.containsKey("trashed")) {
      trashed = _json["trashed"];
    }
    if (_json.containsKey("trashedTime")) {
      trashedTime = core.DateTime.parse(_json["trashedTime"]);
    }
    if (_json.containsKey("trashingUser")) {
      trashingUser = new User.fromJson(_json["trashingUser"]);
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("videoMediaMetadata")) {
      videoMediaMetadata =
          new FileVideoMediaMetadata.fromJson(_json["videoMediaMetadata"]);
    }
    if (_json.containsKey("viewedByMe")) {
      viewedByMe = _json["viewedByMe"];
    }
    if (_json.containsKey("viewedByMeTime")) {
      viewedByMeTime = core.DateTime.parse(_json["viewedByMeTime"]);
    }
    if (_json.containsKey("viewersCanCopyContent")) {
      viewersCanCopyContent = _json["viewersCanCopyContent"];
    }
    if (_json.containsKey("webContentLink")) {
      webContentLink = _json["webContentLink"];
    }
    if (_json.containsKey("webViewLink")) {
      webViewLink = _json["webViewLink"];
    }
    if (_json.containsKey("writersCanShare")) {
      writersCanShare = _json["writersCanShare"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appProperties != null) {
      _json["appProperties"] = appProperties;
    }
    if (capabilities != null) {
      _json["capabilities"] = (capabilities).toJson();
    }
    if (contentHints != null) {
      _json["contentHints"] = (contentHints).toJson();
    }
    if (copyRequiresWriterPermission != null) {
      _json["copyRequiresWriterPermission"] = copyRequiresWriterPermission;
    }
    if (createdTime != null) {
      _json["createdTime"] = (createdTime).toIso8601String();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (driveId != null) {
      _json["driveId"] = driveId;
    }
    if (explicitlyTrashed != null) {
      _json["explicitlyTrashed"] = explicitlyTrashed;
    }
    if (exportLinks != null) {
      _json["exportLinks"] = exportLinks;
    }
    if (fileExtension != null) {
      _json["fileExtension"] = fileExtension;
    }
    if (folderColorRgb != null) {
      _json["folderColorRgb"] = folderColorRgb;
    }
    if (fullFileExtension != null) {
      _json["fullFileExtension"] = fullFileExtension;
    }
    if (hasAugmentedPermissions != null) {
      _json["hasAugmentedPermissions"] = hasAugmentedPermissions;
    }
    if (hasThumbnail != null) {
      _json["hasThumbnail"] = hasThumbnail;
    }
    if (headRevisionId != null) {
      _json["headRevisionId"] = headRevisionId;
    }
    if (iconLink != null) {
      _json["iconLink"] = iconLink;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (imageMediaMetadata != null) {
      _json["imageMediaMetadata"] = (imageMediaMetadata).toJson();
    }
    if (isAppAuthorized != null) {
      _json["isAppAuthorized"] = isAppAuthorized;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModifyingUser != null) {
      _json["lastModifyingUser"] = (lastModifyingUser).toJson();
    }
    if (md5Checksum != null) {
      _json["md5Checksum"] = md5Checksum;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (modifiedByMe != null) {
      _json["modifiedByMe"] = modifiedByMe;
    }
    if (modifiedByMeTime != null) {
      _json["modifiedByMeTime"] = (modifiedByMeTime).toIso8601String();
    }
    if (modifiedTime != null) {
      _json["modifiedTime"] = (modifiedTime).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (originalFilename != null) {
      _json["originalFilename"] = originalFilename;
    }
    if (ownedByMe != null) {
      _json["ownedByMe"] = ownedByMe;
    }
    if (owners != null) {
      _json["owners"] = owners.map((value) => (value).toJson()).toList();
    }
    if (parents != null) {
      _json["parents"] = parents;
    }
    if (permissionIds != null) {
      _json["permissionIds"] = permissionIds;
    }
    if (permissions != null) {
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    if (quotaBytesUsed != null) {
      _json["quotaBytesUsed"] = quotaBytesUsed;
    }
    if (shared != null) {
      _json["shared"] = shared;
    }
    if (sharedWithMeTime != null) {
      _json["sharedWithMeTime"] = (sharedWithMeTime).toIso8601String();
    }
    if (sharingUser != null) {
      _json["sharingUser"] = (sharingUser).toJson();
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (spaces != null) {
      _json["spaces"] = spaces;
    }
    if (starred != null) {
      _json["starred"] = starred;
    }
    if (teamDriveId != null) {
      _json["teamDriveId"] = teamDriveId;
    }
    if (thumbnailLink != null) {
      _json["thumbnailLink"] = thumbnailLink;
    }
    if (thumbnailVersion != null) {
      _json["thumbnailVersion"] = thumbnailVersion;
    }
    if (trashed != null) {
      _json["trashed"] = trashed;
    }
    if (trashedTime != null) {
      _json["trashedTime"] = (trashedTime).toIso8601String();
    }
    if (trashingUser != null) {
      _json["trashingUser"] = (trashingUser).toJson();
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (videoMediaMetadata != null) {
      _json["videoMediaMetadata"] = (videoMediaMetadata).toJson();
    }
    if (viewedByMe != null) {
      _json["viewedByMe"] = viewedByMe;
    }
    if (viewedByMeTime != null) {
      _json["viewedByMeTime"] = (viewedByMeTime).toIso8601String();
    }
    if (viewersCanCopyContent != null) {
      _json["viewersCanCopyContent"] = viewersCanCopyContent;
    }
    if (webContentLink != null) {
      _json["webContentLink"] = webContentLink;
    }
    if (webViewLink != null) {
      _json["webViewLink"] = webViewLink;
    }
    if (writersCanShare != null) {
      _json["writersCanShare"] = writersCanShare;
    }
    return _json;
  }
}

/// A list of files.
class FileList {
  /// The list of files. If nextPageToken is populated, then this list may be
  /// incomplete and an additional page of results should be fetched.
  core.List<File> files;

  /// Whether the search process was incomplete. If true, then some search
  /// results may be missing, since all documents were not searched. This may
  /// occur when searching multiple drives with the "allDrives" corpora, but all
  /// corpora could not be searched. When this happens, it is suggested that
  /// clients narrow their query by choosing a different corpus such as "user"
  /// or "drive".
  core.bool incompleteSearch;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#fileList".
  core.String kind;

  /// The page token for the next page of files. This will be absent if the end
  /// of the files list has been reached. If the token is rejected for any
  /// reason, it should be discarded, and pagination should be restarted from
  /// the first page of results.
  core.String nextPageToken;

  FileList();

  FileList.fromJson(core.Map _json) {
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.List)
          .map<File>((value) => new File.fromJson(value))
          .toList();
    }
    if (_json.containsKey("incompleteSearch")) {
      incompleteSearch = _json["incompleteSearch"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    if (incompleteSearch != null) {
      _json["incompleteSearch"] = incompleteSearch;
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

/// A list of generated file IDs which can be provided in create requests.
class GeneratedIds {
  /// The IDs generated for the requesting user in the specified space.
  core.List<core.String> ids;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#generatedIds".
  core.String kind;

  /// The type of file that can be created with these IDs.
  core.String space;

  GeneratedIds();

  GeneratedIds.fromJson(core.Map _json) {
    if (_json.containsKey("ids")) {
      ids = (_json["ids"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("space")) {
      space = _json["space"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ids != null) {
      _json["ids"] = ids;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (space != null) {
      _json["space"] = space;
    }
    return _json;
  }
}

class PermissionPermissionDetails {
  /// Whether this permission is inherited. This field is always populated. This
  /// is an output-only field.
  core.bool inherited;

  /// The ID of the item from which this permission is inherited. This is an
  /// output-only field and is only populated for members of the shared drive.
  core.String inheritedFrom;

  /// The permission type for this user. While new values may be added in
  /// future, the following are currently possible:
  /// - file
  /// - member
  core.String permissionType;

  /// The primary role for this user. While new values may be added in the
  /// future, the following are currently possible:
  /// - organizer
  /// - fileOrganizer
  /// - writer
  /// - commenter
  /// - reader
  core.String role;

  PermissionPermissionDetails();

  PermissionPermissionDetails.fromJson(core.Map _json) {
    if (_json.containsKey("inherited")) {
      inherited = _json["inherited"];
    }
    if (_json.containsKey("inheritedFrom")) {
      inheritedFrom = _json["inheritedFrom"];
    }
    if (_json.containsKey("permissionType")) {
      permissionType = _json["permissionType"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inherited != null) {
      _json["inherited"] = inherited;
    }
    if (inheritedFrom != null) {
      _json["inheritedFrom"] = inheritedFrom;
    }
    if (permissionType != null) {
      _json["permissionType"] = permissionType;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

class PermissionTeamDrivePermissionDetails {
  /// Deprecated - use permissionDetails/inherited instead.
  core.bool inherited;

  /// Deprecated - use permissionDetails/inheritedFrom instead.
  core.String inheritedFrom;

  /// Deprecated - use permissionDetails/role instead.
  core.String role;

  /// Deprecated - use permissionDetails/permissionType instead.
  core.String teamDrivePermissionType;

  PermissionTeamDrivePermissionDetails();

  PermissionTeamDrivePermissionDetails.fromJson(core.Map _json) {
    if (_json.containsKey("inherited")) {
      inherited = _json["inherited"];
    }
    if (_json.containsKey("inheritedFrom")) {
      inheritedFrom = _json["inheritedFrom"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("teamDrivePermissionType")) {
      teamDrivePermissionType = _json["teamDrivePermissionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inherited != null) {
      _json["inherited"] = inherited;
    }
    if (inheritedFrom != null) {
      _json["inheritedFrom"] = inheritedFrom;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (teamDrivePermissionType != null) {
      _json["teamDrivePermissionType"] = teamDrivePermissionType;
    }
    return _json;
  }
}

/// A permission for a file. A permission grants a user, group, domain or the
/// world access to a file or a folder hierarchy.
class Permission {
  /// Whether the permission allows the file to be discovered through search.
  /// This is only applicable for permissions of type domain or anyone.
  core.bool allowFileDiscovery;

  /// Whether the account associated with this permission has been deleted. This
  /// field only pertains to user and group permissions.
  core.bool deleted;

  /// A displayable name for users, groups or domains.
  core.String displayName;

  /// The domain to which this permission refers.
  core.String domain;

  /// The email address of the user or group to which this permission refers.
  core.String emailAddress;

  /// The time at which this permission will expire (RFC 3339 date-time).
  /// Expiration times have the following restrictions:
  /// - They can only be set on user and group permissions
  /// - The time must be in the future
  /// - The time cannot be more than a year in the future
  core.DateTime expirationTime;

  /// The ID of this permission. This is a unique identifier for the grantee,
  /// and is published in User resources as permissionId.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#permission".
  core.String kind;

  /// Details of whether the permissions on this shared drive item are inherited
  /// or directly on this item. This is an output-only field which is present
  /// only for shared drive items.
  core.List<PermissionPermissionDetails> permissionDetails;

  /// A link to the user's profile photo, if available.
  core.String photoLink;

  /// The role granted by this permission. While new values may be supported in
  /// the future, the following are currently allowed:
  /// - owner
  /// - organizer
  /// - fileOrganizer
  /// - writer
  /// - commenter
  /// - reader
  core.String role;

  /// Deprecated - use permissionDetails instead.
  core.List<PermissionTeamDrivePermissionDetails> teamDrivePermissionDetails;

  /// The type of the grantee. Valid values are:
  /// - user
  /// - group
  /// - domain
  /// - anyone
  core.String type;

  Permission();

  Permission.fromJson(core.Map _json) {
    if (_json.containsKey("allowFileDiscovery")) {
      allowFileDiscovery = _json["allowFileDiscovery"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("expirationTime")) {
      expirationTime = core.DateTime.parse(_json["expirationTime"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("permissionDetails")) {
      permissionDetails = (_json["permissionDetails"] as core.List)
          .map<PermissionPermissionDetails>(
              (value) => new PermissionPermissionDetails.fromJson(value))
          .toList();
    }
    if (_json.containsKey("photoLink")) {
      photoLink = _json["photoLink"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("teamDrivePermissionDetails")) {
      teamDrivePermissionDetails =
          (_json["teamDrivePermissionDetails"] as core.List)
              .map<PermissionTeamDrivePermissionDetails>((value) =>
                  new PermissionTeamDrivePermissionDetails.fromJson(value))
              .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowFileDiscovery != null) {
      _json["allowFileDiscovery"] = allowFileDiscovery;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (expirationTime != null) {
      _json["expirationTime"] = (expirationTime).toIso8601String();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (permissionDetails != null) {
      _json["permissionDetails"] =
          permissionDetails.map((value) => (value).toJson()).toList();
    }
    if (photoLink != null) {
      _json["photoLink"] = photoLink;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (teamDrivePermissionDetails != null) {
      _json["teamDrivePermissionDetails"] =
          teamDrivePermissionDetails.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A list of permissions for a file.
class PermissionList {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#permissionList".
  core.String kind;

  /// The page token for the next page of permissions. This field will be absent
  /// if the end of the permissions list has been reached. If the token is
  /// rejected for any reason, it should be discarded, and pagination should be
  /// restarted from the first page of results.
  core.String nextPageToken;

  /// The list of permissions. If nextPageToken is populated, then this list may
  /// be incomplete and an additional page of results should be fetched.
  core.List<Permission> permissions;

  PermissionList();

  PermissionList.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List)
          .map<Permission>((value) => new Permission.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (permissions != null) {
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A reply to a comment on a file.
class Reply {
  /// The action the reply performed to the parent comment. Valid values are:
  /// - resolve
  /// - reopen
  core.String action;

  /// The user who created the reply.
  User author;

  /// The plain text content of the reply. This field is used for setting the
  /// content, while htmlContent should be displayed. This is required on
  /// creates if no action is specified.
  core.String content;

  /// The time at which the reply was created (RFC 3339 date-time).
  core.DateTime createdTime;

  /// Whether the reply has been deleted. A deleted reply has no content.
  core.bool deleted;

  /// The content of the reply with HTML formatting.
  core.String htmlContent;

  /// The ID of the reply.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#reply".
  core.String kind;

  /// The last time the reply was modified (RFC 3339 date-time).
  core.DateTime modifiedTime;

  Reply();

  Reply.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("author")) {
      author = new User.fromJson(_json["author"]);
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("createdTime")) {
      createdTime = core.DateTime.parse(_json["createdTime"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("htmlContent")) {
      htmlContent = _json["htmlContent"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("modifiedTime")) {
      modifiedTime = core.DateTime.parse(_json["modifiedTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (author != null) {
      _json["author"] = (author).toJson();
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (createdTime != null) {
      _json["createdTime"] = (createdTime).toIso8601String();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (htmlContent != null) {
      _json["htmlContent"] = htmlContent;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (modifiedTime != null) {
      _json["modifiedTime"] = (modifiedTime).toIso8601String();
    }
    return _json;
  }
}

/// A list of replies to a comment on a file.
class ReplyList {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#replyList".
  core.String kind;

  /// The page token for the next page of replies. This will be absent if the
  /// end of the replies list has been reached. If the token is rejected for any
  /// reason, it should be discarded, and pagination should be restarted from
  /// the first page of results.
  core.String nextPageToken;

  /// The list of replies. If nextPageToken is populated, then this list may be
  /// incomplete and an additional page of results should be fetched.
  core.List<Reply> replies;

  ReplyList();

  ReplyList.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("replies")) {
      replies = (_json["replies"] as core.List)
          .map<Reply>((value) => new Reply.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (replies != null) {
      _json["replies"] = replies.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The metadata for a revision to a file.
class Revision {
  /// Links for exporting Google Docs to specific formats.
  core.Map<core.String, core.String> exportLinks;

  /// The ID of the revision.
  core.String id;

  /// Whether to keep this revision forever, even if it is no longer the head
  /// revision. If not set, the revision will be automatically purged 30 days
  /// after newer content is uploaded. This can be set on a maximum of 200
  /// revisions for a file.
  /// This field is only applicable to files with binary content in Drive.
  core.bool keepForever;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#revision".
  core.String kind;

  /// The last user to modify this revision.
  User lastModifyingUser;

  /// The MD5 checksum of the revision's content. This is only applicable to
  /// files with binary content in Drive.
  core.String md5Checksum;

  /// The MIME type of the revision.
  core.String mimeType;

  /// The last time the revision was modified (RFC 3339 date-time).
  core.DateTime modifiedTime;

  /// The original filename used to create this revision. This is only
  /// applicable to files with binary content in Drive.
  core.String originalFilename;

  /// Whether subsequent revisions will be automatically republished. This is
  /// only applicable to Google Docs.
  core.bool publishAuto;

  /// Whether this revision is published. This is only applicable to Google
  /// Docs.
  core.bool published;

  /// Whether this revision is published outside the domain. This is only
  /// applicable to Google Docs.
  core.bool publishedOutsideDomain;

  /// The size of the revision's content in bytes. This is only applicable to
  /// files with binary content in Drive.
  core.String size;

  Revision();

  Revision.fromJson(core.Map _json) {
    if (_json.containsKey("exportLinks")) {
      exportLinks =
          (_json["exportLinks"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("keepForever")) {
      keepForever = _json["keepForever"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModifyingUser")) {
      lastModifyingUser = new User.fromJson(_json["lastModifyingUser"]);
    }
    if (_json.containsKey("md5Checksum")) {
      md5Checksum = _json["md5Checksum"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("modifiedTime")) {
      modifiedTime = core.DateTime.parse(_json["modifiedTime"]);
    }
    if (_json.containsKey("originalFilename")) {
      originalFilename = _json["originalFilename"];
    }
    if (_json.containsKey("publishAuto")) {
      publishAuto = _json["publishAuto"];
    }
    if (_json.containsKey("published")) {
      published = _json["published"];
    }
    if (_json.containsKey("publishedOutsideDomain")) {
      publishedOutsideDomain = _json["publishedOutsideDomain"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportLinks != null) {
      _json["exportLinks"] = exportLinks;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (keepForever != null) {
      _json["keepForever"] = keepForever;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModifyingUser != null) {
      _json["lastModifyingUser"] = (lastModifyingUser).toJson();
    }
    if (md5Checksum != null) {
      _json["md5Checksum"] = md5Checksum;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (modifiedTime != null) {
      _json["modifiedTime"] = (modifiedTime).toIso8601String();
    }
    if (originalFilename != null) {
      _json["originalFilename"] = originalFilename;
    }
    if (publishAuto != null) {
      _json["publishAuto"] = publishAuto;
    }
    if (published != null) {
      _json["published"] = published;
    }
    if (publishedOutsideDomain != null) {
      _json["publishedOutsideDomain"] = publishedOutsideDomain;
    }
    if (size != null) {
      _json["size"] = size;
    }
    return _json;
  }
}

/// A list of revisions of a file.
class RevisionList {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#revisionList".
  core.String kind;

  /// The page token for the next page of revisions. This will be absent if the
  /// end of the revisions list has been reached. If the token is rejected for
  /// any reason, it should be discarded, and pagination should be restarted
  /// from the first page of results.
  core.String nextPageToken;

  /// The list of revisions. If nextPageToken is populated, then this list may
  /// be incomplete and an additional page of results should be fetched.
  core.List<Revision> revisions;

  RevisionList();

  RevisionList.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("revisions")) {
      revisions = (_json["revisions"] as core.List)
          .map<Revision>((value) => new Revision.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (revisions != null) {
      _json["revisions"] = revisions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class StartPageToken {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#startPageToken".
  core.String kind;

  /// The starting page token for listing changes.
  core.String startPageToken;

  StartPageToken();

  StartPageToken.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("startPageToken")) {
      startPageToken = _json["startPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (startPageToken != null) {
      _json["startPageToken"] = startPageToken;
    }
    return _json;
  }
}

/// An image file and cropping parameters from which a background image for this
/// Team Drive is set. This is a write only field; it can only be set on
/// drive.teamdrives.update requests that don't set themeId. When specified, all
/// fields of the backgroundImageFile must be set.
class TeamDriveBackgroundImageFile {
  /// The ID of an image file in Drive to use for the background image.
  core.String id;

  /// The width of the cropped image in the closed range of 0 to 1. This value
  /// represents the width of the cropped image divided by the width of the
  /// entire image. The height is computed by applying a width to height aspect
  /// ratio of 80 to 9. The resulting image must be at least 1280 pixels wide
  /// and 144 pixels high.
  core.double width;

  /// The X coordinate of the upper left corner of the cropping area in the
  /// background image. This is a value in the closed range of 0 to 1. This
  /// value represents the horizontal distance from the left side of the entire
  /// image to the left side of the cropping area divided by the width of the
  /// entire image.
  core.double xCoordinate;

  /// The Y coordinate of the upper left corner of the cropping area in the
  /// background image. This is a value in the closed range of 0 to 1. This
  /// value represents the vertical distance from the top side of the entire
  /// image to the top side of the cropping area divided by the height of the
  /// entire image.
  core.double yCoordinate;

  TeamDriveBackgroundImageFile();

  TeamDriveBackgroundImageFile.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"].toDouble();
    }
    if (_json.containsKey("xCoordinate")) {
      xCoordinate = _json["xCoordinate"].toDouble();
    }
    if (_json.containsKey("yCoordinate")) {
      yCoordinate = _json["yCoordinate"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (width != null) {
      _json["width"] = width;
    }
    if (xCoordinate != null) {
      _json["xCoordinate"] = xCoordinate;
    }
    if (yCoordinate != null) {
      _json["yCoordinate"] = yCoordinate;
    }
    return _json;
  }
}

/// Capabilities the current user has on this Team Drive.
class TeamDriveCapabilities {
  /// Whether the current user can add children to folders in this Team Drive.
  core.bool canAddChildren;

  /// Whether the current user can change the copyRequiresWriterPermission
  /// restriction of this Team Drive.
  core.bool canChangeCopyRequiresWriterPermissionRestriction;

  /// Whether the current user can change the domainUsersOnly restriction of
  /// this Team Drive.
  core.bool canChangeDomainUsersOnlyRestriction;

  /// Whether the current user can change the background of this Team Drive.
  core.bool canChangeTeamDriveBackground;

  /// Whether the current user can change the teamMembersOnly restriction of
  /// this Team Drive.
  core.bool canChangeTeamMembersOnlyRestriction;

  /// Whether the current user can comment on files in this Team Drive.
  core.bool canComment;

  /// Whether the current user can copy files in this Team Drive.
  core.bool canCopy;

  /// Whether the current user can delete children from folders in this Team
  /// Drive.
  core.bool canDeleteChildren;

  /// Whether the current user can delete this Team Drive. Attempting to delete
  /// the Team Drive may still fail if there are untrashed items inside the Team
  /// Drive.
  core.bool canDeleteTeamDrive;

  /// Whether the current user can download files in this Team Drive.
  core.bool canDownload;

  /// Whether the current user can edit files in this Team Drive
  core.bool canEdit;

  /// Whether the current user can list the children of folders in this Team
  /// Drive.
  core.bool canListChildren;

  /// Whether the current user can add members to this Team Drive or remove them
  /// or change their role.
  core.bool canManageMembers;

  /// Whether the current user can read the revisions resource of files in this
  /// Team Drive.
  core.bool canReadRevisions;

  /// Deprecated - use canDeleteChildren or canTrashChildren instead.
  core.bool canRemoveChildren;

  /// Whether the current user can rename files or folders in this Team Drive.
  core.bool canRename;

  /// Whether the current user can rename this Team Drive.
  core.bool canRenameTeamDrive;

  /// Whether the current user can share files or folders in this Team Drive.
  core.bool canShare;

  /// Whether the current user can trash children from folders in this Team
  /// Drive.
  core.bool canTrashChildren;

  TeamDriveCapabilities();

  TeamDriveCapabilities.fromJson(core.Map _json) {
    if (_json.containsKey("canAddChildren")) {
      canAddChildren = _json["canAddChildren"];
    }
    if (_json.containsKey("canChangeCopyRequiresWriterPermissionRestriction")) {
      canChangeCopyRequiresWriterPermissionRestriction =
          _json["canChangeCopyRequiresWriterPermissionRestriction"];
    }
    if (_json.containsKey("canChangeDomainUsersOnlyRestriction")) {
      canChangeDomainUsersOnlyRestriction =
          _json["canChangeDomainUsersOnlyRestriction"];
    }
    if (_json.containsKey("canChangeTeamDriveBackground")) {
      canChangeTeamDriveBackground = _json["canChangeTeamDriveBackground"];
    }
    if (_json.containsKey("canChangeTeamMembersOnlyRestriction")) {
      canChangeTeamMembersOnlyRestriction =
          _json["canChangeTeamMembersOnlyRestriction"];
    }
    if (_json.containsKey("canComment")) {
      canComment = _json["canComment"];
    }
    if (_json.containsKey("canCopy")) {
      canCopy = _json["canCopy"];
    }
    if (_json.containsKey("canDeleteChildren")) {
      canDeleteChildren = _json["canDeleteChildren"];
    }
    if (_json.containsKey("canDeleteTeamDrive")) {
      canDeleteTeamDrive = _json["canDeleteTeamDrive"];
    }
    if (_json.containsKey("canDownload")) {
      canDownload = _json["canDownload"];
    }
    if (_json.containsKey("canEdit")) {
      canEdit = _json["canEdit"];
    }
    if (_json.containsKey("canListChildren")) {
      canListChildren = _json["canListChildren"];
    }
    if (_json.containsKey("canManageMembers")) {
      canManageMembers = _json["canManageMembers"];
    }
    if (_json.containsKey("canReadRevisions")) {
      canReadRevisions = _json["canReadRevisions"];
    }
    if (_json.containsKey("canRemoveChildren")) {
      canRemoveChildren = _json["canRemoveChildren"];
    }
    if (_json.containsKey("canRename")) {
      canRename = _json["canRename"];
    }
    if (_json.containsKey("canRenameTeamDrive")) {
      canRenameTeamDrive = _json["canRenameTeamDrive"];
    }
    if (_json.containsKey("canShare")) {
      canShare = _json["canShare"];
    }
    if (_json.containsKey("canTrashChildren")) {
      canTrashChildren = _json["canTrashChildren"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canAddChildren != null) {
      _json["canAddChildren"] = canAddChildren;
    }
    if (canChangeCopyRequiresWriterPermissionRestriction != null) {
      _json["canChangeCopyRequiresWriterPermissionRestriction"] =
          canChangeCopyRequiresWriterPermissionRestriction;
    }
    if (canChangeDomainUsersOnlyRestriction != null) {
      _json["canChangeDomainUsersOnlyRestriction"] =
          canChangeDomainUsersOnlyRestriction;
    }
    if (canChangeTeamDriveBackground != null) {
      _json["canChangeTeamDriveBackground"] = canChangeTeamDriveBackground;
    }
    if (canChangeTeamMembersOnlyRestriction != null) {
      _json["canChangeTeamMembersOnlyRestriction"] =
          canChangeTeamMembersOnlyRestriction;
    }
    if (canComment != null) {
      _json["canComment"] = canComment;
    }
    if (canCopy != null) {
      _json["canCopy"] = canCopy;
    }
    if (canDeleteChildren != null) {
      _json["canDeleteChildren"] = canDeleteChildren;
    }
    if (canDeleteTeamDrive != null) {
      _json["canDeleteTeamDrive"] = canDeleteTeamDrive;
    }
    if (canDownload != null) {
      _json["canDownload"] = canDownload;
    }
    if (canEdit != null) {
      _json["canEdit"] = canEdit;
    }
    if (canListChildren != null) {
      _json["canListChildren"] = canListChildren;
    }
    if (canManageMembers != null) {
      _json["canManageMembers"] = canManageMembers;
    }
    if (canReadRevisions != null) {
      _json["canReadRevisions"] = canReadRevisions;
    }
    if (canRemoveChildren != null) {
      _json["canRemoveChildren"] = canRemoveChildren;
    }
    if (canRename != null) {
      _json["canRename"] = canRename;
    }
    if (canRenameTeamDrive != null) {
      _json["canRenameTeamDrive"] = canRenameTeamDrive;
    }
    if (canShare != null) {
      _json["canShare"] = canShare;
    }
    if (canTrashChildren != null) {
      _json["canTrashChildren"] = canTrashChildren;
    }
    return _json;
  }
}

/// A set of restrictions that apply to this Team Drive or items inside this
/// Team Drive.
class TeamDriveRestrictions {
  /// Whether administrative privileges on this Team Drive are required to
  /// modify restrictions.
  core.bool adminManagedRestrictions;

  /// Whether the options to copy, print, or download files inside this Team
  /// Drive, should be disabled for readers and commenters. When this
  /// restriction is set to true, it will override the similarly named field to
  /// true for any file inside this Team Drive.
  core.bool copyRequiresWriterPermission;

  /// Whether access to this Team Drive and items inside this Team Drive is
  /// restricted to users of the domain to which this Team Drive belongs. This
  /// restriction may be overridden by other sharing policies controlled outside
  /// of this Team Drive.
  core.bool domainUsersOnly;

  /// Whether access to items inside this Team Drive is restricted to members of
  /// this Team Drive.
  core.bool teamMembersOnly;

  TeamDriveRestrictions();

  TeamDriveRestrictions.fromJson(core.Map _json) {
    if (_json.containsKey("adminManagedRestrictions")) {
      adminManagedRestrictions = _json["adminManagedRestrictions"];
    }
    if (_json.containsKey("copyRequiresWriterPermission")) {
      copyRequiresWriterPermission = _json["copyRequiresWriterPermission"];
    }
    if (_json.containsKey("domainUsersOnly")) {
      domainUsersOnly = _json["domainUsersOnly"];
    }
    if (_json.containsKey("teamMembersOnly")) {
      teamMembersOnly = _json["teamMembersOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adminManagedRestrictions != null) {
      _json["adminManagedRestrictions"] = adminManagedRestrictions;
    }
    if (copyRequiresWriterPermission != null) {
      _json["copyRequiresWriterPermission"] = copyRequiresWriterPermission;
    }
    if (domainUsersOnly != null) {
      _json["domainUsersOnly"] = domainUsersOnly;
    }
    if (teamMembersOnly != null) {
      _json["teamMembersOnly"] = teamMembersOnly;
    }
    return _json;
  }
}

/// Deprecated: use the drive collection instead.
class TeamDrive {
  /// An image file and cropping parameters from which a background image for
  /// this Team Drive is set. This is a write only field; it can only be set on
  /// drive.teamdrives.update requests that don't set themeId. When specified,
  /// all fields of the backgroundImageFile must be set.
  TeamDriveBackgroundImageFile backgroundImageFile;

  /// A short-lived link to this Team Drive's background image.
  core.String backgroundImageLink;

  /// Capabilities the current user has on this Team Drive.
  TeamDriveCapabilities capabilities;

  /// The color of this Team Drive as an RGB hex string. It can only be set on a
  /// drive.teamdrives.update request that does not set themeId.
  core.String colorRgb;

  /// The time at which the Team Drive was created (RFC 3339 date-time).
  core.DateTime createdTime;

  /// The ID of this Team Drive which is also the ID of the top level folder of
  /// this Team Drive.
  core.String id;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#teamDrive".
  core.String kind;

  /// The name of this Team Drive.
  core.String name;

  /// A set of restrictions that apply to this Team Drive or items inside this
  /// Team Drive.
  TeamDriveRestrictions restrictions;

  /// The ID of the theme from which the background image and color will be set.
  /// The set of possible teamDriveThemes can be retrieved from a
  /// drive.about.get response. When not specified on a drive.teamdrives.create
  /// request, a random theme is chosen from which the background image and
  /// color are set. This is a write-only field; it can only be set on requests
  /// that don't set colorRgb or backgroundImageFile.
  core.String themeId;

  TeamDrive();

  TeamDrive.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundImageFile")) {
      backgroundImageFile = new TeamDriveBackgroundImageFile.fromJson(
          _json["backgroundImageFile"]);
    }
    if (_json.containsKey("backgroundImageLink")) {
      backgroundImageLink = _json["backgroundImageLink"];
    }
    if (_json.containsKey("capabilities")) {
      capabilities = new TeamDriveCapabilities.fromJson(_json["capabilities"]);
    }
    if (_json.containsKey("colorRgb")) {
      colorRgb = _json["colorRgb"];
    }
    if (_json.containsKey("createdTime")) {
      createdTime = core.DateTime.parse(_json["createdTime"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = new TeamDriveRestrictions.fromJson(_json["restrictions"]);
    }
    if (_json.containsKey("themeId")) {
      themeId = _json["themeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundImageFile != null) {
      _json["backgroundImageFile"] = (backgroundImageFile).toJson();
    }
    if (backgroundImageLink != null) {
      _json["backgroundImageLink"] = backgroundImageLink;
    }
    if (capabilities != null) {
      _json["capabilities"] = (capabilities).toJson();
    }
    if (colorRgb != null) {
      _json["colorRgb"] = colorRgb;
    }
    if (createdTime != null) {
      _json["createdTime"] = (createdTime).toIso8601String();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (restrictions != null) {
      _json["restrictions"] = (restrictions).toJson();
    }
    if (themeId != null) {
      _json["themeId"] = themeId;
    }
    return _json;
  }
}

/// A list of Team Drives.
class TeamDriveList {
  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#teamDriveList".
  core.String kind;

  /// The page token for the next page of Team Drives. This will be absent if
  /// the end of the Team Drives list has been reached. If the token is rejected
  /// for any reason, it should be discarded, and pagination should be restarted
  /// from the first page of results.
  core.String nextPageToken;

  /// The list of Team Drives. If nextPageToken is populated, then this list may
  /// be incomplete and an additional page of results should be fetched.
  core.List<TeamDrive> teamDrives;

  TeamDriveList();

  TeamDriveList.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("teamDrives")) {
      teamDrives = (_json["teamDrives"] as core.List)
          .map<TeamDrive>((value) => new TeamDrive.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (teamDrives != null) {
      _json["teamDrives"] =
          teamDrives.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Information about a Drive user.
class User {
  /// A plain text displayable name for this user.
  core.String displayName;

  /// The email address of the user. This may not be present in certain contexts
  /// if the user has not made their email address visible to the requester.
  core.String emailAddress;

  /// Identifies what kind of resource this is. Value: the fixed string
  /// "drive#user".
  core.String kind;

  /// Whether this user is the requesting user.
  core.bool me;

  /// The user's ID as visible in Permission resources.
  core.String permissionId;

  /// A link to the user's profile photo, if available.
  core.String photoLink;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("me")) {
      me = _json["me"];
    }
    if (_json.containsKey("permissionId")) {
      permissionId = _json["permissionId"];
    }
    if (_json.containsKey("photoLink")) {
      photoLink = _json["photoLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (me != null) {
      _json["me"] = me;
    }
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    if (photoLink != null) {
      _json["photoLink"] = photoLink;
    }
    return _json;
  }
}
