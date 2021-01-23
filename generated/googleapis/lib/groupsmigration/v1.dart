// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
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

library googleapis.groupsmigration.v1;

import 'dart:core' as core;
import 'dart:async' as async;

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

const userAgent = 'dart-api-client groupsmigration/v1';

/// The Groups Migration API allows domain administrators to archive emails into
/// Google groups.
class GroupsmigrationApi {
  /// Manage messages in groups on your domain
  static const appsGroupsMigrationScope =
      'https://www.googleapis.com/auth/apps.groups.migration';

  final commons.ApiRequester _requester;

  ArchiveResourceApi get archive => ArchiveResourceApi(_requester);

  GroupsmigrationApi(http.Client client,
      {core.String rootUrl = 'https://groupsmigration.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ArchiveResourceApi {
  final commons.ApiRequester _requester;

  ArchiveResourceApi(commons.ApiRequester client) : _requester = client;

  /// Inserts a new mail into the archive of the Google group.
  ///
  /// Request parameters:
  ///
  /// [groupId] - The group ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Groups].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Groups> insert(
    core.String groupId, {
    core.String $fields,
    commons.Media uploadMedia,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (groupId == null) {
      throw core.ArgumentError('Parameter groupId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _uploadMedia = uploadMedia;

    _uploadOptions = commons.UploadOptions.Default;
    if (_uploadMedia == null) {
      _url = 'groups/v1/groups/' +
          commons.Escaper.ecapeVariable('$groupId') +
          '/archive';
    } else {
      _url = '/upload/groups/v1/groups/' +
          commons.Escaper.ecapeVariable('$groupId') +
          '/archive';
    }

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Groups.fromJson(data));
  }
}

/// JSON response template for groups migration API.
class Groups {
  /// The kind of insert resource this is.
  core.String kind;

  /// The status of the insert request.
  core.String responseCode;

  Groups();

  Groups.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('responseCode')) {
      responseCode = _json['responseCode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (responseCode != null) {
      _json['responseCode'] = responseCode;
    }
    return _json;
  }
}
