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

/// Container Analysis API - v1beta1
///
/// An implementation of the Grafeas API, which stores, and enables querying and
/// retrieval of critical metadata about all of your software artifacts.
///
/// For more information, see
/// <https://cloud.google.com/container-analysis/api/reference/rest/>
///
/// Create an instance of [ContainerAnalysisApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsNotesResource]
///     - [ProjectsNotesOccurrencesResource]
///   - [ProjectsOccurrencesResource]
///   - [ProjectsScanConfigsResource]
library containeranalysis.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// An implementation of the Grafeas API, which stores, and enables querying and
/// retrieval of critical metadata about all of your software artifacts.
class ContainerAnalysisApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContainerAnalysisApi(http.Client client,
      {core.String rootUrl = 'https://containeranalysis.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsNotesResource get notes => ProjectsNotesResource(_requester);
  ProjectsOccurrencesResource get occurrences =>
      ProjectsOccurrencesResource(_requester);
  ProjectsScanConfigsResource get scanConfigs =>
      ProjectsScanConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsNotesResource {
  final commons.ApiRequester _requester;

  ProjectsNotesOccurrencesResource get occurrences =>
      ProjectsNotesOccurrencesResource(_requester);

  ProjectsNotesResource(commons.ApiRequester client) : _requester = client;

  /// Creates new notes in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the notes are to be created.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateNotesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateNotesResponse> batchCreate(
    BatchCreateNotesRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return BatchCreateNotesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the note is to be created.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [noteId] - Required. The ID to use for this note.
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
    Note request,
    core.String parent, {
    core.String noteId,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (noteId != null) {
      _queryParams['noteId'] = [noteId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Note.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Note.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a note or an occurrence resource.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively. The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists notes for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list notes for in the form
  /// of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of notes to return in the list. Must be positive. Max
  /// allowed page size is 1000. If not specified, page size defaults to 20.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
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
  async.Future<ListNotesResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/notes';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListNotesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [updateMask] - The fields to update.
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
  async.Future<Note> patch(
    Note request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Note.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified note or occurrence.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or an occurrence, respectively. The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence.
  ///
  /// Requires list permission on the project (for example,
  /// `containeranalysis.notes.list`). The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsNotesOccurrencesResource {
  final commons.ApiRequester _requester;

  ProjectsNotesOccurrencesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists occurrences referencing the specified note.
  ///
  /// Provider projects can use this method to get all occurrences across
  /// consumer projects referencing the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note to list occurrences for in the
  /// form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of occurrences to return in the list.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNoteOccurrencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNoteOccurrencesResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/occurrences';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListNoteOccurrencesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOccurrencesResource {
  final commons.ApiRequester _requester;

  ProjectsOccurrencesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates new occurrences in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the occurrences are to be created.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateOccurrencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateOccurrencesResponse> batchCreate(
    BatchCreateOccurrencesRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return BatchCreateOccurrencesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the occurrence is to be created.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Occurrence].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Occurrence> create(
    Occurrence request,
    core.String parent, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Occurrence.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified occurrence.
  ///
  /// For example, use this method to delete an occurrence when the occurrence
  /// is no longer applicable for the given resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified occurrence.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Occurrence].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Occurrence> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Occurrence.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a note or an occurrence resource.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively. The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the note attached to the specified occurrence.
  ///
  /// Consumer projects can use this method to get a note that belongs to a
  /// provider project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
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
  async.Future<Note> getNotes(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + '/notes';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Note.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a summary of the number and severity of occurrences.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to get a vulnerability
  /// summary for in the form of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VulnerabilityOccurrencesSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VulnerabilityOccurrencesSummary> getVulnerabilitySummary(
    core.String parent, {
    core.String filter,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences:vulnerabilitySummary';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return VulnerabilityOccurrencesSummary.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists occurrences for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list occurrences for in
  /// the form of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of occurrences to return in the list. Must be
  /// positive. Max allowed page size is 1000. If not specified, page size
  /// defaults to 20.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOccurrencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOccurrencesResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/occurrences';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListOccurrencesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
  ///
  /// [updateMask] - The fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Occurrence].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Occurrence> patch(
    Occurrence request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Occurrence.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified note or occurrence.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or an occurrence, respectively. The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence.
  ///
  /// Requires list permission on the project (for example,
  /// `containeranalysis.notes.list`). The resource takes the format
  /// `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern `^projects/\[^/\]+/occurrences/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the specified scan configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanConfig> get(
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ScanConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists scan configurations for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list scan configurations
  /// for in the form of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Required. The filter expression.
  ///
  /// [pageSize] - The number of scan configs to return in the list.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScanConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScanConfigsResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/scanConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ListScanConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified scan configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ScanConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ScanConfig> update(
    ScanConfig request,
    core.String name, {
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return ScanConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// An alias to a repo revision.
class AliasContext {
  /// The alias kind.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown.
  /// - "FIXED" : Git tag.
  /// - "MOVABLE" : Git branch.
  /// - "OTHER" : Used to specify non-standard aliases. For example, if a Git
  /// repo has a ref named "refs/foo/bar".
  core.String kind;

  /// The alias name.
  core.String name;

  AliasContext();

  AliasContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Artifact describes a build product.
class Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
  /// container.
  core.String checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest
  /// like `gcr.io/projectID/imagename@sha256:123456`.
  core.String id;

  /// Related artifact names.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. Note that a single
  /// Artifact ID can have multiple names, for example if two tags are applied
  /// to one image.
  core.List<core.String> names;

  Artifact();

  Artifact.fromJson(core.Map _json) {
    if (_json.containsKey('checksum')) {
      checksum = _json['checksum'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('names')) {
      names = (_json['names'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (checksum != null) {
      _json['checksum'] = checksum;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (names != null) {
      _json['names'] = names;
    }
    return _json;
  }
}

/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  core.String sha256;

  ArtifactHashes();

  ArtifactHashes.fromJson(core.Map _json) {
    if (_json.containsKey('sha256')) {
      sha256 = _json['sha256'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (sha256 != null) {
      _json['sha256'] = sha256;
    }
    return _json;
  }
}

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  core.List<core.String> artifactRule;

  ArtifactRule();

  ArtifactRule.fromJson(core.Map _json) {
    if (_json.containsKey('artifactRule')) {
      artifactRule = (_json['artifactRule'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (artifactRule != null) {
      _json['artifactRule'] = artifactRule;
    }
    return _json;
  }
}

/// Occurrence that represents a single "attestation".
///
/// The authenticity of an attestation can be verified using the attached
/// signature. If the verifier trusts the public key of the signer, then
/// verifying the signature is sufficient to establish trust. In this
/// circumstance, the authority to which this attestation is attached is
/// primarily useful for look-up (how to find this attestation if you already
/// know the authority and artifact to be verified) and intent (which authority
/// was this attestation intended to sign for).
class Attestation {
  GenericSignedAttestation genericSignedAttestation;

  /// A PGP signed attestation.
  PgpSignedAttestation pgpSignedAttestation;

  Attestation();

  Attestation.fromJson(core.Map _json) {
    if (_json.containsKey('genericSignedAttestation')) {
      genericSignedAttestation = GenericSignedAttestation.fromJson(
          _json['genericSignedAttestation']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pgpSignedAttestation')) {
      pgpSignedAttestation = PgpSignedAttestation.fromJson(
          _json['pgpSignedAttestation'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (genericSignedAttestation != null) {
      _json['genericSignedAttestation'] = genericSignedAttestation.toJson();
    }
    if (pgpSignedAttestation != null) {
      _json['pgpSignedAttestation'] = pgpSignedAttestation.toJson();
    }
    return _json;
  }
}

/// Note kind that represents a logical attestation "role" or "authority".
///
/// For example, an organization might have one `Authority` for "QA" and one for
/// "build". This note is intended to act strictly as a grouping mechanism for
/// the attached occurrences (Attestations). This grouping mechanism also
/// provides a security boundary, since IAM ACLs gate the ability for a
/// principle to attach an occurrence to a given note. It also provides a single
/// point of lookup to find all attached attestation occurrences, even if they
/// don't all live in the same project.
class Authority {
  /// Hint hints at the purpose of the attestation authority.
  Hint hint;

  Authority();

  Authority.fromJson(core.Map _json) {
    if (_json.containsKey('hint')) {
      hint =
          Hint.fromJson(_json['hint'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hint != null) {
      _json['hint'] = hint.toJson();
    }
    return _json;
  }
}

/// Basis describes the base image portion (Note) of the DockerImage
/// relationship.
///
/// Linked occurrences are derived from this or an equivalent image via: FROM Or
/// an equivalent reference, e.g. a tag of the resource_url.
class Basis {
  /// The fingerprint of the base image.
  ///
  /// Required. Immutable.
  Fingerprint fingerprint;

  /// The resource_url for the resource representing the basis of associated
  /// occurrence images.
  ///
  /// Required. Immutable.
  core.String resourceUrl;

  Basis();

  Basis.fromJson(core.Map _json) {
    if (_json.containsKey('fingerprint')) {
      fingerprint = Fingerprint.fromJson(
          _json['fingerprint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceUrl')) {
      resourceUrl = _json['resourceUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fingerprint != null) {
      _json['fingerprint'] = fingerprint.toJson();
    }
    if (resourceUrl != null) {
      _json['resourceUrl'] = resourceUrl;
    }
    return _json;
  }
}

/// Request to create notes in batch.
class BatchCreateNotesRequest {
  /// The notes to create, the key is expected to be the note ID.
  ///
  /// Max allowed length is 1000.
  ///
  /// Required.
  core.Map<core.String, Note> notes;

  BatchCreateNotesRequest();

  BatchCreateNotesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('notes')) {
      notes = (_json['notes'] as core.Map).cast<core.String, core.Map>().map(
            (key, item) => core.MapEntry(
              key,
              Note.fromJson(item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (notes != null) {
      _json['notes'] =
          notes.map((key, item) => core.MapEntry(key, item.toJson()));
    }
    return _json;
  }
}

/// Response for creating notes in batch.
class BatchCreateNotesResponse {
  /// The notes that were created.
  core.List<Note> notes;

  BatchCreateNotesResponse();

  BatchCreateNotesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('notes')) {
      notes = (_json['notes'] as core.List)
          .map<Note>((value) =>
              Note.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (notes != null) {
      _json['notes'] = notes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Request to create occurrences in batch.
class BatchCreateOccurrencesRequest {
  /// The occurrences to create.
  ///
  /// Max allowed length is 1000.
  ///
  /// Required.
  core.List<Occurrence> occurrences;

  BatchCreateOccurrencesRequest();

  BatchCreateOccurrencesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('occurrences')) {
      occurrences = (_json['occurrences'] as core.List)
          .map<Occurrence>((value) =>
              Occurrence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (occurrences != null) {
      _json['occurrences'] =
          occurrences.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for creating occurrences in batch.
class BatchCreateOccurrencesResponse {
  /// The occurrences that were created.
  core.List<Occurrence> occurrences;

  BatchCreateOccurrencesResponse();

  BatchCreateOccurrencesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('occurrences')) {
      occurrences = (_json['occurrences'] as core.List)
          .map<Occurrence>((value) =>
              Occurrence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (occurrences != null) {
      _json['occurrences'] =
          occurrences.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in the build details occurrence.
class Build {
  /// Version of the builder which produced this build.
  ///
  /// Required. Immutable.
  core.String builderVersion;

  /// Signature of the build in occurrences pointing to this build note
  /// containing build details.
  BuildSignature signature;

  Build();

  Build.fromJson(core.Map _json) {
    if (_json.containsKey('builderVersion')) {
      builderVersion = _json['builderVersion'] as core.String;
    }
    if (_json.containsKey('signature')) {
      signature = BuildSignature.fromJson(
          _json['signature'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (builderVersion != null) {
      _json['builderVersion'] = builderVersion;
    }
    if (signature != null) {
      _json['signature'] = signature.toJson();
    }
    return _json;
  }
}

/// Provenance of a build.
///
/// Contains all information needed to verify the full details about the build
/// from source to completion.
class BuildProvenance {
  /// Special options applied to this build.
  ///
  /// This is a catch-all field where build providers can enter any desired
  /// additional details.
  core.Map<core.String, core.String> buildOptions;

  /// Version string of the builder at the time this build was executed.
  core.String builderVersion;

  /// Output of the build.
  core.List<Artifact> builtArtifacts;

  /// Commands requested by the build.
  core.List<Command> commands;

  /// Time at which the build was created.
  core.String createTime;

  /// E-mail address of the user who initiated this build.
  ///
  /// Note that this was the user's e-mail address at the time the build was
  /// initiated; this address may not represent the same end-user for all time.
  core.String creator;

  /// Time at which execution of the build was finished.
  core.String endTime;

  /// Unique identifier of the build.
  ///
  /// Required.
  core.String id;

  /// URI where any logs for this provenance were written.
  core.String logsUri;

  /// ID of the project.
  core.String projectId;

  /// Details of the Source input to the build.
  Source sourceProvenance;

  /// Time at which execution of the build was started.
  core.String startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  core.String triggerId;

  BuildProvenance();

  BuildProvenance.fromJson(core.Map _json) {
    if (_json.containsKey('buildOptions')) {
      buildOptions = (_json['buildOptions'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('builderVersion')) {
      builderVersion = _json['builderVersion'] as core.String;
    }
    if (_json.containsKey('builtArtifacts')) {
      builtArtifacts = (_json['builtArtifacts'] as core.List)
          .map<Artifact>((value) =>
              Artifact.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('commands')) {
      commands = (_json['commands'] as core.List)
          .map<Command>((value) =>
              Command.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('creator')) {
      creator = _json['creator'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('logsUri')) {
      logsUri = _json['logsUri'] as core.String;
    }
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('sourceProvenance')) {
      sourceProvenance = Source.fromJson(
          _json['sourceProvenance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('triggerId')) {
      triggerId = _json['triggerId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (buildOptions != null) {
      _json['buildOptions'] = buildOptions;
    }
    if (builderVersion != null) {
      _json['builderVersion'] = builderVersion;
    }
    if (builtArtifacts != null) {
      _json['builtArtifacts'] =
          builtArtifacts.map((value) => value.toJson()).toList();
    }
    if (commands != null) {
      _json['commands'] = commands.map((value) => value.toJson()).toList();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (creator != null) {
      _json['creator'] = creator;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (logsUri != null) {
      _json['logsUri'] = logsUri;
    }
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (sourceProvenance != null) {
      _json['sourceProvenance'] = sourceProvenance.toJson();
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (triggerId != null) {
      _json['triggerId'] = triggerId;
    }
    return _json;
  }
}

/// Message encapsulating the signature of the verified build.
class BuildSignature {
  /// An ID for the key used to sign.
  ///
  /// This could be either an ID for the key stored in `public_key` (such as the
  /// ID or fingerprint for a PGP key, or the CN for a cert), or a reference to
  /// an external key (such as a reference to a key in Cloud Key Management
  /// Service).
  core.String keyId;

  /// The type of the key, either stored in `public_key` or referenced in
  /// `key_id`.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : `KeyType` is not set.
  /// - "PGP_ASCII_ARMORED" : `PGP ASCII Armored` public key.
  /// - "PKIX_PEM" : `PKIX PEM` public key.
  core.String keyType;

  /// Public key of the builder which can be used to verify that the related
  /// findings are valid and unchanged.
  ///
  /// If `key_type` is empty, this defaults to PEM encoded public keys. This
  /// field may be empty if `key_id` references an external key. For Cloud Build
  /// based signatures, this is a PEM encoded public key. To verify the Cloud
  /// Build signature, place the contents of this field into a file
  /// (public.pem). The signature field is base64-decoded into its binary
  /// representation in signature.bin, and the provenance bytes from
  /// `BuildDetails` are base64-decoded into a binary representation in
  /// signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify
  /// public.pem -signature signature.bin signed.bin`
  core.String publicKey;

  /// Signature of the related `BuildProvenance`.
  ///
  /// In JSON, this is base-64 encoded.
  ///
  /// Required.
  core.String signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  BuildSignature();

  BuildSignature.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
    if (_json.containsKey('keyType')) {
      keyType = _json['keyType'] as core.String;
    }
    if (_json.containsKey('publicKey')) {
      publicKey = _json['publicKey'] as core.String;
    }
    if (_json.containsKey('signature')) {
      signature = _json['signature'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (keyType != null) {
      _json['keyType'] = keyType;
    }
    if (publicKey != null) {
      _json['publicKey'] = publicKey;
    }
    if (signature != null) {
      _json['signature'] = signature;
    }
    return _json;
  }
}

/// Defines an object for the byproducts field in in-toto links.
///
/// The suggested fields are "stderr", "stdout", and "return-value".
class ByProducts {
  core.Map<core.String, core.String> customValues;

  ByProducts();

  ByProducts.fromJson(core.Map _json) {
    if (_json.containsKey('customValues')) {
      customValues = (_json['customValues'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (customValues != null) {
      _json['customValues'] = customValues;
    }
    return _json;
  }
}

/// Common Vulnerability Scoring System version 3.
///
/// For details, see https://www.first.org/cvss/specification-document
class CVSSv3 {
  ///
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED"
  /// - "ATTACK_COMPLEXITY_LOW"
  /// - "ATTACK_COMPLEXITY_HIGH"
  core.String attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability
  /// that are constant over time and across user environments.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED"
  /// - "ATTACK_VECTOR_NETWORK"
  /// - "ATTACK_VECTOR_ADJACENT"
  /// - "ATTACK_VECTOR_LOCAL"
  /// - "ATTACK_VECTOR_PHYSICAL"
  core.String attackVector;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double baseScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String confidentialityImpact;
  core.double exploitabilityScore;
  core.double impactScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String integrityImpact;

  ///
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED"
  /// - "PRIVILEGES_REQUIRED_NONE"
  /// - "PRIVILEGES_REQUIRED_LOW"
  /// - "PRIVILEGES_REQUIRED_HIGH"
  core.String privilegesRequired;

  ///
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED"
  /// - "SCOPE_UNCHANGED"
  /// - "SCOPE_CHANGED"
  core.String scope;

  ///
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED"
  /// - "USER_INTERACTION_NONE"
  /// - "USER_INTERACTION_REQUIRED"
  core.String userInteraction;

  CVSSv3();

  CVSSv3.fromJson(core.Map _json) {
    if (_json.containsKey('attackComplexity')) {
      attackComplexity = _json['attackComplexity'] as core.String;
    }
    if (_json.containsKey('attackVector')) {
      attackVector = _json['attackVector'] as core.String;
    }
    if (_json.containsKey('availabilityImpact')) {
      availabilityImpact = _json['availabilityImpact'] as core.String;
    }
    if (_json.containsKey('baseScore')) {
      baseScore = (_json['baseScore'] as core.num).toDouble();
    }
    if (_json.containsKey('confidentialityImpact')) {
      confidentialityImpact = _json['confidentialityImpact'] as core.String;
    }
    if (_json.containsKey('exploitabilityScore')) {
      exploitabilityScore =
          (_json['exploitabilityScore'] as core.num).toDouble();
    }
    if (_json.containsKey('impactScore')) {
      impactScore = (_json['impactScore'] as core.num).toDouble();
    }
    if (_json.containsKey('integrityImpact')) {
      integrityImpact = _json['integrityImpact'] as core.String;
    }
    if (_json.containsKey('privilegesRequired')) {
      privilegesRequired = _json['privilegesRequired'] as core.String;
    }
    if (_json.containsKey('scope')) {
      scope = _json['scope'] as core.String;
    }
    if (_json.containsKey('userInteraction')) {
      userInteraction = _json['userInteraction'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attackComplexity != null) {
      _json['attackComplexity'] = attackComplexity;
    }
    if (attackVector != null) {
      _json['attackVector'] = attackVector;
    }
    if (availabilityImpact != null) {
      _json['availabilityImpact'] = availabilityImpact;
    }
    if (baseScore != null) {
      _json['baseScore'] = baseScore;
    }
    if (confidentialityImpact != null) {
      _json['confidentialityImpact'] = confidentialityImpact;
    }
    if (exploitabilityScore != null) {
      _json['exploitabilityScore'] = exploitabilityScore;
    }
    if (impactScore != null) {
      _json['impactScore'] = impactScore;
    }
    if (integrityImpact != null) {
      _json['integrityImpact'] = integrityImpact;
    }
    if (privilegesRequired != null) {
      _json['privilegesRequired'] = privilegesRequired;
    }
    if (scope != null) {
      _json['scope'] = scope;
    }
    if (userInteraction != null) {
      _json['userInteraction'] = userInteraction;
    }
    return _json;
  }
}

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext aliasContext;

  /// The ID of the repo.
  RepoId repoId;

  /// A revision ID.
  core.String revisionId;

  CloudRepoSourceContext();

  CloudRepoSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey('aliasContext')) {
      aliasContext = AliasContext.fromJson(
          _json['aliasContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('repoId')) {
      repoId = RepoId.fromJson(
          _json['repoId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aliasContext != null) {
      _json['aliasContext'] = aliasContext.toJson();
    }
    if (repoId != null) {
      _json['repoId'] = repoId.toJson();
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    return _json;
  }
}

/// Command describes a step performed as part of the build pipeline.
class Command {
  /// Command-line arguments used when executing this command.
  core.List<core.String> args;

  /// Working directory (relative to project source root) used when running this
  /// command.
  core.String dir;

  /// Environment variables set before running this command.
  core.List<core.String> env;

  /// Optional unique identifier for this command, used in wait_for to reference
  /// this command as a dependency.
  core.String id;

  /// Name of the command, as presented on the command line, or if the command
  /// is packaged as a Docker container, as presented to `docker pull`.
  ///
  /// Required.
  core.String name;

  /// The ID(s) of the command(s) that this command depends on.
  core.List<core.String> waitFor;

  Command();

  Command.fromJson(core.Map _json) {
    if (_json.containsKey('args')) {
      args = (_json['args'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('dir')) {
      dir = _json['dir'] as core.String;
    }
    if (_json.containsKey('env')) {
      env = (_json['env'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('waitFor')) {
      waitFor = (_json['waitFor'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (args != null) {
      _json['args'] = args;
    }
    if (dir != null) {
      _json['dir'] = dir;
    }
    if (env != null) {
      _json['env'] = env;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (waitFor != null) {
      _json['waitFor'] = waitFor;
    }
    return _json;
  }
}

/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Resource URI for the artifact being deployed.
  ///
  /// Required.
  core.List<core.String> resourceUri;

  Deployable();

  Deployable.fromJson(core.Map _json) {
    if (_json.containsKey('resourceUri')) {
      resourceUri = (_json['resourceUri'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceUri != null) {
      _json['resourceUri'] = resourceUri;
    }
    return _json;
  }
}

/// The period during which some deployable was active in a runtime.
class Deployment {
  /// Address of the runtime element hosting this deployment.
  core.String address;

  /// Configuration used to create this deployment.
  core.String config;

  /// Beginning of the lifetime of this deployment.
  ///
  /// Required.
  core.String deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown.
  /// - "GKE" : Google Container Engine.
  /// - "FLEX" : Google App Engine: Flexible Environment.
  /// - "CUSTOM" : Custom user-defined platform.
  core.String platform;

  /// Resource URI for the artifact being deployed taken from the deployable
  /// field with the same name.
  ///
  /// Output only.
  core.List<core.String> resourceUri;

  /// End of the lifetime of this deployment.
  core.String undeployTime;

  /// Identity of the user that triggered this deployment.
  core.String userEmail;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey('address')) {
      address = _json['address'] as core.String;
    }
    if (_json.containsKey('config')) {
      config = _json['config'] as core.String;
    }
    if (_json.containsKey('deployTime')) {
      deployTime = _json['deployTime'] as core.String;
    }
    if (_json.containsKey('platform')) {
      platform = _json['platform'] as core.String;
    }
    if (_json.containsKey('resourceUri')) {
      resourceUri = (_json['resourceUri'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('undeployTime')) {
      undeployTime = _json['undeployTime'] as core.String;
    }
    if (_json.containsKey('userEmail')) {
      userEmail = _json['userEmail'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (address != null) {
      _json['address'] = address;
    }
    if (config != null) {
      _json['config'] = config;
    }
    if (deployTime != null) {
      _json['deployTime'] = deployTime;
    }
    if (platform != null) {
      _json['platform'] = platform;
    }
    if (resourceUri != null) {
      _json['resourceUri'] = resourceUri;
    }
    if (undeployTime != null) {
      _json['undeployTime'] = undeployTime;
    }
    if (userEmail != null) {
      _json['userEmail'] = userEmail;
    }
    return _json;
  }
}

/// Derived describes the derived image portion (Occurrence) of the DockerImage
/// relationship.
///
/// This image would be produced from a Dockerfile with FROM .
class Derived {
  /// This contains the base image URL for the derived image occurrence.
  ///
  /// Output only.
  core.String baseResourceUrl;

  /// The number of layers by which this image differs from the associated image
  /// basis.
  ///
  /// Output only.
  core.int distance;

  /// The fingerprint of the derived image.
  ///
  /// Required.
  Fingerprint fingerprint;

  /// This contains layer-specific metadata, if populated it has length
  /// "distance" and is ordered with \[distance\] being the layer immediately
  /// following the base image and \[1\] being the final layer.
  core.List<Layer> layerInfo;

  Derived();

  Derived.fromJson(core.Map _json) {
    if (_json.containsKey('baseResourceUrl')) {
      baseResourceUrl = _json['baseResourceUrl'] as core.String;
    }
    if (_json.containsKey('distance')) {
      distance = _json['distance'] as core.int;
    }
    if (_json.containsKey('fingerprint')) {
      fingerprint = Fingerprint.fromJson(
          _json['fingerprint'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('layerInfo')) {
      layerInfo = (_json['layerInfo'] as core.List)
          .map<Layer>((value) =>
              Layer.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (baseResourceUrl != null) {
      _json['baseResourceUrl'] = baseResourceUrl;
    }
    if (distance != null) {
      _json['distance'] = distance;
    }
    if (fingerprint != null) {
      _json['fingerprint'] = fingerprint.toJson();
    }
    if (layerInfo != null) {
      _json['layerInfo'] = layerInfo.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Identifies all appearances of this vulnerability in the package for a
/// specific distro/location.
///
/// For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2
class Detail {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which
  /// the vulnerability manifests.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  ///
  /// Required.
  core.String cpeUri;

  /// A vendor-specific description of this note.
  core.String description;

  /// The fix for this specific package version.
  VulnerabilityLocation fixedLocation;

  /// Whether this detail is obsolete.
  ///
  /// Occurrences are expected not to point to obsolete details.
  core.bool isObsolete;

  /// The max version of the package in which the vulnerability exists.
  Version maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  Version minAffectedVersion;

  /// The name of the package where the vulnerability was found.
  ///
  /// Required.
  core.String package;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc).
  core.String packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  core.String severityName;

  /// The source from which the information in this Detail was obtained.
  core.String source;

  /// The time this information was last changed at the source.
  ///
  /// This is an upstream timestamp from the underlying information source -
  /// e.g. Ubuntu security tracker.
  core.String sourceUpdateTime;

  Detail();

  Detail.fromJson(core.Map _json) {
    if (_json.containsKey('cpeUri')) {
      cpeUri = _json['cpeUri'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('fixedLocation')) {
      fixedLocation = VulnerabilityLocation.fromJson(
          _json['fixedLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('isObsolete')) {
      isObsolete = _json['isObsolete'] as core.bool;
    }
    if (_json.containsKey('maxAffectedVersion')) {
      maxAffectedVersion = Version.fromJson(
          _json['maxAffectedVersion'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('minAffectedVersion')) {
      minAffectedVersion = Version.fromJson(
          _json['minAffectedVersion'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('package')) {
      package = _json['package'] as core.String;
    }
    if (_json.containsKey('packageType')) {
      packageType = _json['packageType'] as core.String;
    }
    if (_json.containsKey('severityName')) {
      severityName = _json['severityName'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = _json['source'] as core.String;
    }
    if (_json.containsKey('sourceUpdateTime')) {
      sourceUpdateTime = _json['sourceUpdateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpeUri != null) {
      _json['cpeUri'] = cpeUri;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (fixedLocation != null) {
      _json['fixedLocation'] = fixedLocation.toJson();
    }
    if (isObsolete != null) {
      _json['isObsolete'] = isObsolete;
    }
    if (maxAffectedVersion != null) {
      _json['maxAffectedVersion'] = maxAffectedVersion.toJson();
    }
    if (minAffectedVersion != null) {
      _json['minAffectedVersion'] = minAffectedVersion.toJson();
    }
    if (package != null) {
      _json['package'] = package;
    }
    if (packageType != null) {
      _json['packageType'] = packageType;
    }
    if (severityName != null) {
      _json['severityName'] = severityName;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (sourceUpdateTime != null) {
      _json['sourceUpdateTime'] = sourceUpdateTime;
    }
    return _json;
  }
}

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  ///
  /// Required.
  Attestation attestation;

  Details();

  Details.fromJson(core.Map _json) {
    if (_json.containsKey('attestation')) {
      attestation = Attestation.fromJson(
          _json['attestation'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attestation != null) {
      _json['attestation'] = attestation.toJson();
    }
    return _json;
  }
}

/// Provides information about the analysis status of a discovered resource.
class Discovered {
  /// The status of discovery for the resource.
  /// Possible string values are:
  /// - "ANALYSIS_STATUS_UNSPECIFIED" : Unknown.
  /// - "PENDING" : Resource is known but no action has been taken yet.
  /// - "SCANNING" : Resource is being analyzed.
  /// - "FINISHED_SUCCESS" : Analysis has finished successfully.
  /// - "FINISHED_FAILED" : Analysis has finished unsuccessfully, the analysis
  /// itself is in a bad state.
  /// - "FINISHED_UNSUPPORTED" : The resource is known not to be supported
  core.String analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user.
  ///
  /// The LocalizedMessage is output only and populated by the API.
  Status analysisStatusError;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown.
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String continuousAnalysis;

  /// The last time continuous analysis was done for this resource.
  ///
  /// Deprecated, do not use.
  core.String lastAnalysisTime;

  Discovered();

  Discovered.fromJson(core.Map _json) {
    if (_json.containsKey('analysisStatus')) {
      analysisStatus = _json['analysisStatus'] as core.String;
    }
    if (_json.containsKey('analysisStatusError')) {
      analysisStatusError = Status.fromJson(
          _json['analysisStatusError'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('continuousAnalysis')) {
      continuousAnalysis = _json['continuousAnalysis'] as core.String;
    }
    if (_json.containsKey('lastAnalysisTime')) {
      lastAnalysisTime = _json['lastAnalysisTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (analysisStatus != null) {
      _json['analysisStatus'] = analysisStatus;
    }
    if (analysisStatusError != null) {
      _json['analysisStatusError'] = analysisStatusError.toJson();
    }
    if (continuousAnalysis != null) {
      _json['continuousAnalysis'] = continuousAnalysis;
    }
    if (lastAnalysisTime != null) {
      _json['lastAnalysisTime'] = lastAnalysisTime;
    }
    return _json;
  }
}

/// A note that indicates a type of analysis a provider would perform.
///
/// This note exists in a provider's project. A `Discovery` occurrence is
/// created in a consumer's project at the start of analysis.
class Discovery {
  /// The kind of analysis that is handled by this discovery.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Default value. This value is unused.
  /// - "VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD" : The note and occurrence assert build provenance.
  /// - "IMAGE" : This represents an image basis relationship.
  /// - "PACKAGE" : This represents a package installed via a package manager.
  /// - "DEPLOYMENT" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION" : This represents a logical "role" that can attest to
  /// artifacts.
  /// - "INTOTO" : This represents an in-toto link.
  core.String analysisKind;

  Discovery();

  Discovery.fromJson(core.Map _json) {
    if (_json.containsKey('analysisKind')) {
      analysisKind = _json['analysisKind'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (analysisKind != null) {
      _json['analysisKind'] = analysisKind;
    }
    return _json;
  }
}

/// This represents a particular channel of distribution for a given package.
///
/// E.g., Debian's jessie-backports dpkg mirror.
class Distribution {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture.
  /// - "X86" : X86 architecture.
  /// - "X64" : X64 architecture.
  core.String architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// Required.
  core.String cpeUri;

  /// The distribution channel-specific description of this package.
  core.String description;

  /// The latest available version of this package in this distribution channel.
  Version latestVersion;

  /// A freeform string denoting the maintainer of this package.
  core.String maintainer;

  /// The distribution channel-specific homepage for this package.
  core.String url;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey('architecture')) {
      architecture = _json['architecture'] as core.String;
    }
    if (_json.containsKey('cpeUri')) {
      cpeUri = _json['cpeUri'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('latestVersion')) {
      latestVersion = Version.fromJson(
          _json['latestVersion'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maintainer')) {
      maintainer = _json['maintainer'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (architecture != null) {
      _json['architecture'] = architecture;
    }
    if (cpeUri != null) {
      _json['cpeUri'] = cpeUri;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (latestVersion != null) {
      _json['latestVersion'] = latestVersion.toJson();
    }
    if (maintainer != null) {
      _json['maintainer'] = maintainer;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Defines an object for the environment field in in-toto links.
///
/// The suggested fields are "variables", "filesystem", and "workdir".
class Environment {
  core.Map<core.String, core.String> customValues;

  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey('customValues')) {
      customValues = (_json['customValues'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (customValues != null) {
      _json['customValues'] = customValues;
    }
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Container message for hashes of byte content of files, used in source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
  ///
  /// Required.
  core.List<Hash> fileHash;

  FileHashes();

  FileHashes.fromJson(core.Map _json) {
    if (_json.containsKey('fileHash')) {
      fileHash = (_json['fileHash'] as core.List)
          .map<Hash>((value) =>
              Hash.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fileHash != null) {
      _json['fileHash'] = fileHash.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  ///
  /// Required.
  core.String v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  ///
  /// Required.
  core.List<core.String> v2Blob;

  /// The name of the image's v2 blobs computed via: \[bottom\] := v2_blobbottom
  /// := sha256(v2_blob\[N\] + " " + v2_name\[N+1\]) Only the name of the final
  /// blob is kept.
  ///
  /// Output only.
  core.String v2Name;

  Fingerprint();

  Fingerprint.fromJson(core.Map _json) {
    if (_json.containsKey('v1Name')) {
      v1Name = _json['v1Name'] as core.String;
    }
    if (_json.containsKey('v2Blob')) {
      v2Blob = (_json['v2Blob'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('v2Name')) {
      v2Name = _json['v2Name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (v1Name != null) {
      _json['v1Name'] = v1Name;
    }
    if (v2Blob != null) {
      _json['v2Blob'] = v2Blob;
    }
    if (v2Name != null) {
      _json['v2Name'] = v2Name;
    }
    return _json;
  }
}

/// Per resource and severity counts of fixable and total vulnerabilities.
class FixableTotalByDigest {
  /// The number of fixable vulnerabilities associated with this resource.
  core.String fixableCount;

  /// The affected resource.
  Resource resource;

  /// The severity for this count.
  ///
  /// SEVERITY_UNSPECIFIED indicates total across all severities.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String severity;

  /// The total number of vulnerabilities associated with this resource.
  core.String totalCount;

  FixableTotalByDigest();

  FixableTotalByDigest.fromJson(core.Map _json) {
    if (_json.containsKey('fixableCount')) {
      fixableCount = _json['fixableCount'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = Resource.fromJson(
          _json['resource'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('totalCount')) {
      totalCount = _json['totalCount'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fixableCount != null) {
      _json['fixableCount'] = fixableCount;
    }
    if (resource != null) {
      _json['resource'] = resource.toJson();
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (totalCount != null) {
      _json['totalCount'] = totalCount;
    }
    return _json;
  }
}

/// An attestation wrapper that uses the Grafeas `Signature` message.
///
/// This attestation must define the `serialized_payload` that the `signatures`
/// verify and any metadata necessary to interpret that plaintext. The
/// signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed.
  ///
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of
  /// that type (for example by validating a JSON schema).
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : `ContentType` is not set.
  /// - "SIMPLE_SIGNING_JSON" : Atomic format attestation signature. See
  /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
  /// The payload extracted in `plaintext` is a JSON blob conforming to the
  /// linked schema.
  core.String contentType;

  /// The serialized payload that is verified by one or more `signatures`.
  ///
  /// The encoding and semantic meaning of this payload must match what is set
  /// in `content_type`.
  core.String serializedPayload;
  core.List<core.int> get serializedPayloadAsBytes =>
      convert.base64.decode(serializedPayload);

  set serializedPayloadAsBytes(core.List<core.int> _bytes) {
    serializedPayload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// One or more signatures over `serialized_payload`.
  ///
  /// Verifier implementations should consider this attestation message verified
  /// if at least one `signature` verifies `serialized_payload`. See `Signature`
  /// in common.proto for more details on signature structure and verification.
  core.List<Signature> signatures;

  GenericSignedAttestation();

  GenericSignedAttestation.fromJson(core.Map _json) {
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'] as core.String;
    }
    if (_json.containsKey('serializedPayload')) {
      serializedPayload = _json['serializedPayload'] as core.String;
    }
    if (_json.containsKey('signatures')) {
      signatures = (_json['signatures'] as core.List)
          .map<Signature>((value) =>
              Signature.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (serializedPayload != null) {
      _json['serializedPayload'] = serializedPayload;
    }
    if (signatures != null) {
      _json['signatures'] = signatures.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext aliasContext;

  /// The full project name within the host.
  ///
  /// Projects may be nested, so "project/subproject" is a valid project name.
  /// The "repo name" is the hostURI/project.
  core.String gerritProject;

  /// The URI of a running Gerrit instance.
  core.String hostUri;

  /// A revision (commit) ID.
  core.String revisionId;

  GerritSourceContext();

  GerritSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey('aliasContext')) {
      aliasContext = AliasContext.fromJson(
          _json['aliasContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gerritProject')) {
      gerritProject = _json['gerritProject'] as core.String;
    }
    if (_json.containsKey('hostUri')) {
      hostUri = _json['hostUri'] as core.String;
    }
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (aliasContext != null) {
      _json['aliasContext'] = aliasContext.toJson();
    }
    if (gerritProject != null) {
      _json['gerritProject'] = gerritProject;
    }
    if (hostUri != null) {
      _json['hostUri'] = hostUri;
    }
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions options;

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('options')) {
      options = GetPolicyOptions.fromJson(
          _json['options'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (options != null) {
      _json['options'] = options.toJson();
    }
    return _json;
  }
}

/// Encapsulates settings provided to GetIamPolicy.
class GetPolicyOptions {
  /// The policy format version to be returned.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional bindings must specify
  /// version 3. Policies without any conditional bindings may specify any valid
  /// value or leave the field unset. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int requestedPolicyVersion;

  GetPolicyOptions();

  GetPolicyOptions.fromJson(core.Map _json) {
    if (_json.containsKey('requestedPolicyVersion')) {
      requestedPolicyVersion = _json['requestedPolicyVersion'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (requestedPolicyVersion != null) {
      _json['requestedPolicyVersion'] = requestedPolicyVersion;
    }
    return _json;
  }
}

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
class GitSourceContext {
  /// Git commit hash.
  core.String revisionId;

  /// Git repository URL.
  core.String url;

  GitSourceContext();

  GitSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey('revisionId')) {
      revisionId = _json['revisionId'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (revisionId != null) {
      _json['revisionId'] = revisionId;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Metadata for all operations used and required for all operations that
/// created by Container Analysis Providers
class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata {
  /// The time this operation was created.
  ///
  /// Output only.
  core.String createTime;

  /// The time that this operation was marked completed or failed.
  ///
  /// Output only.
  core.String endTime;

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata();

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    return _json;
  }
}

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetails {
  /// The actual provenance for the build.
  ///
  /// Required.
  BuildProvenance provenance;

  /// Serialized JSON representation of the provenance, used in generating the
  /// build signature in the corresponding build note.
  ///
  /// After verifying the signature, `provenance_bytes` can be unmarshalled and
  /// compared to the provenance to confirm that it is unchanged. A
  /// base64-encoded string representation of the provenance bytes is used for
  /// the signature in order to interoperate with openssl which expects this
  /// format for signature verification. The serialized form is captured both to
  /// avoid ambiguity in how the provenance is marshalled to json as well to
  /// prevent incompatibilities with future changes.
  core.String provenanceBytes;

  GrafeasV1beta1BuildDetails();

  GrafeasV1beta1BuildDetails.fromJson(core.Map _json) {
    if (_json.containsKey('provenance')) {
      provenance = BuildProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenanceBytes')) {
      provenanceBytes = _json['provenanceBytes'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    if (provenanceBytes != null) {
      _json['provenanceBytes'] = provenanceBytes;
    }
    return _json;
  }
}

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Deployment history for the resource.
  ///
  /// Required.
  Deployment deployment;

  GrafeasV1beta1DeploymentDetails();

  GrafeasV1beta1DeploymentDetails.fromJson(core.Map _json) {
    if (_json.containsKey('deployment')) {
      deployment = Deployment.fromJson(
          _json['deployment'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deployment != null) {
      _json['deployment'] = deployment.toJson();
    }
    return _json;
  }
}

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Analysis status for the discovered resource.
  ///
  /// Required.
  Discovered discovered;

  GrafeasV1beta1DiscoveryDetails();

  GrafeasV1beta1DiscoveryDetails.fromJson(core.Map _json) {
    if (_json.containsKey('discovered')) {
      discovered = Discovered.fromJson(
          _json['discovered'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (discovered != null) {
      _json['discovered'] = discovered.toJson();
    }
    return _json;
  }
}

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// The child image derived from the base image.
  ///
  /// Required. Immutable.
  Derived derivedImage;

  GrafeasV1beta1ImageDetails();

  GrafeasV1beta1ImageDetails.fromJson(core.Map _json) {
    if (_json.containsKey('derivedImage')) {
      derivedImage = Derived.fromJson(
          _json['derivedImage'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (derivedImage != null) {
      _json['derivedImage'] = derivedImage.toJson();
    }
    return _json;
  }
}

class GrafeasV1beta1IntotoArtifact {
  ArtifactHashes hashes;
  core.String resourceUri;

  GrafeasV1beta1IntotoArtifact();

  GrafeasV1beta1IntotoArtifact.fromJson(core.Map _json) {
    if (_json.containsKey('hashes')) {
      hashes = ArtifactHashes.fromJson(
          _json['hashes'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceUri')) {
      resourceUri = _json['resourceUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hashes != null) {
      _json['hashes'] = hashes.toJson();
    }
    if (resourceUri != null) {
      _json['resourceUri'] = resourceUri;
    }
    return _json;
  }
}

/// This corresponds to a signed in-toto link - it is made up of one or more
/// signatures and the in-toto link itself.
///
/// This is used for occurrences of a Grafeas in-toto note.
class GrafeasV1beta1IntotoDetails {
  core.List<GrafeasV1beta1IntotoSignature> signatures;
  Link signed;

  GrafeasV1beta1IntotoDetails();

  GrafeasV1beta1IntotoDetails.fromJson(core.Map _json) {
    if (_json.containsKey('signatures')) {
      signatures = (_json['signatures'] as core.List)
          .map<GrafeasV1beta1IntotoSignature>((value) =>
              GrafeasV1beta1IntotoSignature.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('signed')) {
      signed =
          Link.fromJson(_json['signed'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (signatures != null) {
      _json['signatures'] = signatures.map((value) => value.toJson()).toList();
    }
    if (signed != null) {
      _json['signed'] = signed.toJson();
    }
    return _json;
  }
}

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignature {
  core.String keyid;
  core.String sig;

  GrafeasV1beta1IntotoSignature();

  GrafeasV1beta1IntotoSignature.fromJson(core.Map _json) {
    if (_json.containsKey('keyid')) {
      keyid = _json['keyid'] as core.String;
    }
    if (_json.containsKey('sig')) {
      sig = _json['sig'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyid != null) {
      _json['keyid'] = keyid;
    }
    if (sig != null) {
      _json['sig'] = sig;
    }
    return _json;
  }
}

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Where the package was installed.
  ///
  /// Required.
  Installation installation;

  GrafeasV1beta1PackageDetails();

  GrafeasV1beta1PackageDetails.fromJson(core.Map _json) {
    if (_json.containsKey('installation')) {
      installation = Installation.fromJson(
          _json['installation'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (installation != null) {
      _json['installation'] = installation.toJson();
    }
    return _json;
  }
}

/// Details of a vulnerability Occurrence.
class GrafeasV1beta1VulnerabilityDetails {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0-10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double cvssScore;

  /// The distro assigned severity for this vulnerability when it is available,
  /// and note provider assigned severity when distro has not yet assigned a
  /// severity for this vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String effectiveSeverity;

  /// A detailed description of this vulnerability.
  ///
  /// Output only.
  core.String longDescription;

  /// The set of affected locations and their fixes (if available) within the
  /// associated resource.
  ///
  /// Required.
  core.List<PackageIssue> packageIssue;

  /// URLs related to this vulnerability.
  ///
  /// Output only.
  core.List<RelatedUrl> relatedUrls;

  /// The note provider assigned Severity of the vulnerability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String severity;

  /// A one sentence description of this vulnerability.
  ///
  /// Output only.
  core.String shortDescription;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc)
  core.String type;

  GrafeasV1beta1VulnerabilityDetails();

  GrafeasV1beta1VulnerabilityDetails.fromJson(core.Map _json) {
    if (_json.containsKey('cvssScore')) {
      cvssScore = (_json['cvssScore'] as core.num).toDouble();
    }
    if (_json.containsKey('effectiveSeverity')) {
      effectiveSeverity = _json['effectiveSeverity'] as core.String;
    }
    if (_json.containsKey('longDescription')) {
      longDescription = _json['longDescription'] as core.String;
    }
    if (_json.containsKey('packageIssue')) {
      packageIssue = (_json['packageIssue'] as core.List)
          .map<PackageIssue>((value) => PackageIssue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('relatedUrls')) {
      relatedUrls = (_json['relatedUrls'] as core.List)
          .map<RelatedUrl>((value) =>
              RelatedUrl.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('shortDescription')) {
      shortDescription = _json['shortDescription'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cvssScore != null) {
      _json['cvssScore'] = cvssScore;
    }
    if (effectiveSeverity != null) {
      _json['effectiveSeverity'] = effectiveSeverity;
    }
    if (longDescription != null) {
      _json['longDescription'] = longDescription;
    }
    if (packageIssue != null) {
      _json['packageIssue'] =
          packageIssue.map((value) => value.toJson()).toList();
    }
    if (relatedUrls != null) {
      _json['relatedUrls'] =
          relatedUrls.map((value) => value.toJson()).toList();
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (shortDescription != null) {
      _json['shortDescription'] = shortDescription;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : Unknown.
  /// - "SHA256" : A SHA-256 hash.
  core.String type;

  /// The hash value.
  ///
  /// Required.
  core.String value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash();

  Hash.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// This submessage provides human-readable hints about the purpose of the
/// authority.
///
/// Because the name of a note acts as its resource reference, it is important
/// to disambiguate the canonical name of the Note (which might be a UUID for
/// security purposes) from "readable" names more suitable for debug output.
/// Note that these hints should not be used to look up authorities in security
/// sensitive contexts, such as when looking up attestations to verify.
class Hint {
  /// The human readable name of this attestation authority, for example "qa".
  ///
  /// Required.
  core.String humanReadableName;

  Hint();

  Hint.fromJson(core.Map _json) {
    if (_json.containsKey('humanReadableName')) {
      humanReadableName = _json['humanReadableName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (humanReadableName != null) {
      _json['humanReadableName'] = humanReadableName;
    }
    return _json;
  }
}

/// This contains the fields corresponding to the definition of a software
/// supply chain step in an in-toto layout.
///
/// This information goes into a Grafeas note.
class InToto {
  /// This field contains the expected command used to perform the step.
  core.List<core.String> expectedCommand;

  /// The following fields contain in-toto artifact rules identifying the
  /// artifacts that enter this supply chain step, and exit the supply chain
  /// step, i.e. materials and products of the step.
  core.List<ArtifactRule> expectedMaterials;
  core.List<ArtifactRule> expectedProducts;

  /// This field contains the public keys that can be used to verify the
  /// signatures on the step metadata.
  core.List<SigningKey> signingKeys;

  /// This field identifies the name of the step in the supply chain.
  core.String stepName;

  /// This field contains a value that indicates the minimum number of keys that
  /// need to be used to sign the step's in-toto link.
  core.String threshold;

  InToto();

  InToto.fromJson(core.Map _json) {
    if (_json.containsKey('expectedCommand')) {
      expectedCommand = (_json['expectedCommand'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('expectedMaterials')) {
      expectedMaterials = (_json['expectedMaterials'] as core.List)
          .map<ArtifactRule>((value) => ArtifactRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('expectedProducts')) {
      expectedProducts = (_json['expectedProducts'] as core.List)
          .map<ArtifactRule>((value) => ArtifactRule.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('signingKeys')) {
      signingKeys = (_json['signingKeys'] as core.List)
          .map<SigningKey>((value) =>
              SigningKey.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('stepName')) {
      stepName = _json['stepName'] as core.String;
    }
    if (_json.containsKey('threshold')) {
      threshold = _json['threshold'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (expectedCommand != null) {
      _json['expectedCommand'] = expectedCommand;
    }
    if (expectedMaterials != null) {
      _json['expectedMaterials'] =
          expectedMaterials.map((value) => value.toJson()).toList();
    }
    if (expectedProducts != null) {
      _json['expectedProducts'] =
          expectedProducts.map((value) => value.toJson()).toList();
    }
    if (signingKeys != null) {
      _json['signingKeys'] =
          signingKeys.map((value) => value.toJson()).toList();
    }
    if (stepName != null) {
      _json['stepName'] = stepName;
    }
    if (threshold != null) {
      _json['threshold'] = threshold;
    }
    return _json;
  }
}

/// This represents how a particular software package may be installed on a
/// system.
class Installation {
  /// All of the places within the filesystem versions of this package have been
  /// found.
  ///
  /// Required.
  core.List<Location> location;

  /// The name of the installed package.
  ///
  /// Output only.
  core.String name;

  Installation();

  Installation.fromJson(core.Map _json) {
    if (_json.containsKey('location')) {
      location = (_json['location'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (location != null) {
      _json['location'] = location.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

class KnowledgeBase {
  /// The KB name (generally of the form KB\[0-9\]+ i.e. KB123456).
  core.String name;

  /// A link to the KB in the Windows update catalog -
  /// https://www.catalog.update.microsoft.com/
  core.String url;

  KnowledgeBase();

  KnowledgeBase.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DIRECTIVE_UNSPECIFIED" : Default value for unsupported/missing
  /// directive.
  /// - "MAINTAINER" : https://docs.docker.com/engine/reference/builder/
  /// - "RUN" : https://docs.docker.com/engine/reference/builder/
  /// - "CMD" : https://docs.docker.com/engine/reference/builder/
  /// - "LABEL" : https://docs.docker.com/engine/reference/builder/
  /// - "EXPOSE" : https://docs.docker.com/engine/reference/builder/
  /// - "ENV" : https://docs.docker.com/engine/reference/builder/
  /// - "ADD" : https://docs.docker.com/engine/reference/builder/
  /// - "COPY" : https://docs.docker.com/engine/reference/builder/
  /// - "ENTRYPOINT" : https://docs.docker.com/engine/reference/builder/
  /// - "VOLUME" : https://docs.docker.com/engine/reference/builder/
  /// - "USER" : https://docs.docker.com/engine/reference/builder/
  /// - "WORKDIR" : https://docs.docker.com/engine/reference/builder/
  /// - "ARG" : https://docs.docker.com/engine/reference/builder/
  /// - "ONBUILD" : https://docs.docker.com/engine/reference/builder/
  /// - "STOPSIGNAL" : https://docs.docker.com/engine/reference/builder/
  /// - "HEALTHCHECK" : https://docs.docker.com/engine/reference/builder/
  /// - "SHELL" : https://docs.docker.com/engine/reference/builder/
  core.String directive;

  Layer();

  Layer.fromJson(core.Map _json) {
    if (_json.containsKey('arguments')) {
      arguments = _json['arguments'] as core.String;
    }
    if (_json.containsKey('directive')) {
      directive = _json['directive'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (arguments != null) {
      _json['arguments'] = arguments;
    }
    if (directive != null) {
      _json['directive'] = directive;
    }
    return _json;
  }
}

/// This corresponds to an in-toto link.
class Link {
  /// ByProducts are data generated as part of a software supply chain step, but
  /// are not the actual result of the step.
  ByProducts byproducts;

  /// This field contains the full command executed for the step.
  ///
  /// This can also be empty if links are generated for operations that aren't
  /// directly mapped to a specific command. Each term in the command is an
  /// independent string in the list. An example of a command in the in-toto
  /// metadata field is: "command": \["git", "clone",
  /// "https://github.com/in-toto/demo-project.git"\]
  core.List<core.String> command;

  /// This is a field that can be used to capture information about the
  /// environment.
  ///
  /// It is suggested for this field to contain information that details
  /// environment variables, filesystem information, and the present working
  /// directory. The recommended structure of this field is: "environment": {
  /// "custom_values": { "variables": "", "filesystem": "", "workdir": "", "":
  /// "..." } }
  Environment environment;

  /// Materials are the supply chain artifacts that go into the step and are
  /// used for the operation performed.
  ///
  /// The key of the map is the path of the artifact and the structure contains
  /// the recorded hash information. An example is: "materials": \[ {
  /// "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } \]
  core.List<GrafeasV1beta1IntotoArtifact> materials;

  /// Products are the supply chain artifacts generated as a result of the step.
  ///
  /// The structure is identical to that of materials.
  core.List<GrafeasV1beta1IntotoArtifact> products;

  Link();

  Link.fromJson(core.Map _json) {
    if (_json.containsKey('byproducts')) {
      byproducts = ByProducts.fromJson(
          _json['byproducts'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('command')) {
      command = (_json['command'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('environment')) {
      environment = Environment.fromJson(
          _json['environment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('materials')) {
      materials = (_json['materials'] as core.List)
          .map<GrafeasV1beta1IntotoArtifact>((value) =>
              GrafeasV1beta1IntotoArtifact.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('products')) {
      products = (_json['products'] as core.List)
          .map<GrafeasV1beta1IntotoArtifact>((value) =>
              GrafeasV1beta1IntotoArtifact.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (byproducts != null) {
      _json['byproducts'] = byproducts.toJson();
    }
    if (command != null) {
      _json['command'] = command;
    }
    if (environment != null) {
      _json['environment'] = environment.toJson();
    }
    if (materials != null) {
      _json['materials'] = materials.map((value) => value.toJson()).toList();
    }
    if (products != null) {
      _json['products'] = products.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing occurrences for a note.
class ListNoteOccurrencesResponse {
  /// Token to provide to skip to a particular spot in the list.
  core.String nextPageToken;

  /// The occurrences attached to the specified note.
  core.List<Occurrence> occurrences;

  ListNoteOccurrencesResponse();

  ListNoteOccurrencesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('occurrences')) {
      occurrences = (_json['occurrences'] as core.List)
          .map<Occurrence>((value) =>
              Occurrence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (occurrences != null) {
      _json['occurrences'] =
          occurrences.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing notes.
class ListNotesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String nextPageToken;

  /// The notes requested.
  core.List<Note> notes;

  ListNotesResponse();

  ListNotesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('notes')) {
      notes = (_json['notes'] as core.List)
          .map<Note>((value) =>
              Note.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (notes != null) {
      _json['notes'] = notes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing occurrences.
class ListOccurrencesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String nextPageToken;

  /// The occurrences requested.
  core.List<Occurrence> occurrences;

  ListOccurrencesResponse();

  ListOccurrencesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('occurrences')) {
      occurrences = (_json['occurrences'] as core.List)
          .map<Occurrence>((value) =>
              Occurrence.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (occurrences != null) {
      _json['occurrences'] =
          occurrences.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for listing scan configurations.
class ListScanConfigsResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String nextPageToken;

  /// The scan configurations requested.
  core.List<ScanConfig> scanConfigs;

  ListScanConfigsResponse();

  ListScanConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('scanConfigs')) {
      scanConfigs = (_json['scanConfigs'] as core.List)
          .map<ScanConfig>((value) =>
              ScanConfig.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (scanConfigs != null) {
      _json['scanConfigs'] =
          scanConfigs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// An occurrence of a particular package installation found within a system's
/// filesystem.
///
/// E.g., glibc was found in `/var/lib/dpkg/status`.
class Location {
  /// The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// Required.
  core.String cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String path;

  /// The version installed at this location.
  Version version;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('cpeUri')) {
      cpeUri = _json['cpeUri'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = Version.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpeUri != null) {
      _json['cpeUri'] = cpeUri;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (version != null) {
      _json['version'] = version.toJson();
    }
    return _json;
  }
}

/// A type of analysis that can be done for a resource.
class Note {
  /// A note describing an attestation role.
  Authority attestationAuthority;

  /// A note describing a base image.
  Basis baseImage;

  /// A note describing build provenance for a verifiable build.
  Build build;

  /// The time this note was created.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String createTime;

  /// A note describing something that can be deployed.
  Deployable deployable;

  /// A note describing the initial analysis of a resource.
  Discovery discovery;

  /// Time of expiration for this note.
  ///
  /// Empty if note does not expire.
  core.String expirationTime;

  /// A note describing an in-toto link.
  InToto intoto;

  /// The type of analysis.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Default value. This value is unused.
  /// - "VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD" : The note and occurrence assert build provenance.
  /// - "IMAGE" : This represents an image basis relationship.
  /// - "PACKAGE" : This represents a package installed via a package manager.
  /// - "DEPLOYMENT" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION" : This represents a logical "role" that can attest to
  /// artifacts.
  /// - "INTOTO" : This represents an in-toto link.
  core.String kind;

  /// A detailed description of this note.
  core.String longDescription;

  /// The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// Output only.
  core.String name;

  /// A note describing a package hosted by various package managers.
  Package package;

  /// Other notes related to this note.
  core.List<core.String> relatedNoteNames;

  /// URLs associated with this note.
  core.List<RelatedUrl> relatedUrl;

  /// A one sentence description of this note.
  core.String shortDescription;

  /// The time this note was last updated.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String updateTime;

  /// A note describing a package vulnerability.
  Vulnerability vulnerability;

  Note();

  Note.fromJson(core.Map _json) {
    if (_json.containsKey('attestationAuthority')) {
      attestationAuthority = Authority.fromJson(
          _json['attestationAuthority'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('baseImage')) {
      baseImage = Basis.fromJson(
          _json['baseImage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('build')) {
      build =
          Build.fromJson(_json['build'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deployable')) {
      deployable = Deployable.fromJson(
          _json['deployable'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('discovery')) {
      discovery = Discovery.fromJson(
          _json['discovery'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('expirationTime')) {
      expirationTime = _json['expirationTime'] as core.String;
    }
    if (_json.containsKey('intoto')) {
      intoto = InToto.fromJson(
          _json['intoto'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('longDescription')) {
      longDescription = _json['longDescription'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('package')) {
      package = Package.fromJson(
          _json['package'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('relatedNoteNames')) {
      relatedNoteNames = (_json['relatedNoteNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('relatedUrl')) {
      relatedUrl = (_json['relatedUrl'] as core.List)
          .map<RelatedUrl>((value) =>
              RelatedUrl.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('shortDescription')) {
      shortDescription = _json['shortDescription'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('vulnerability')) {
      vulnerability = Vulnerability.fromJson(
          _json['vulnerability'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attestationAuthority != null) {
      _json['attestationAuthority'] = attestationAuthority.toJson();
    }
    if (baseImage != null) {
      _json['baseImage'] = baseImage.toJson();
    }
    if (build != null) {
      _json['build'] = build.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (deployable != null) {
      _json['deployable'] = deployable.toJson();
    }
    if (discovery != null) {
      _json['discovery'] = discovery.toJson();
    }
    if (expirationTime != null) {
      _json['expirationTime'] = expirationTime;
    }
    if (intoto != null) {
      _json['intoto'] = intoto.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (longDescription != null) {
      _json['longDescription'] = longDescription;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (package != null) {
      _json['package'] = package.toJson();
    }
    if (relatedNoteNames != null) {
      _json['relatedNoteNames'] = relatedNoteNames;
    }
    if (relatedUrl != null) {
      _json['relatedUrl'] = relatedUrl.map((value) => value.toJson()).toList();
    }
    if (shortDescription != null) {
      _json['shortDescription'] = shortDescription;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (vulnerability != null) {
      _json['vulnerability'] = vulnerability.toJson();
    }
    return _json;
  }
}

/// An instance of an analysis type that has been found on a resource.
class Occurrence {
  /// Describes an attestation of an artifact.
  Details attestation;

  /// Describes a verifiable build.
  GrafeasV1beta1BuildDetails build;

  /// The time this occurrence was created.
  ///
  /// Output only.
  core.String createTime;

  /// Describes the deployment of an artifact on a runtime.
  GrafeasV1beta1DeploymentDetails deployment;

  /// Describes how this resource derives from the basis in the associated note.
  GrafeasV1beta1ImageDetails derivedImage;

  /// Describes when a resource was discovered.
  GrafeasV1beta1DiscoveryDetails discovered;

  /// Describes the installation of a package on the linked resource.
  GrafeasV1beta1PackageDetails installation;

  /// Describes a specific in-toto link.
  GrafeasV1beta1IntotoDetails intoto;

  /// This explicitly denotes which of the occurrence details are specified.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Default value. This value is unused.
  /// - "VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD" : The note and occurrence assert build provenance.
  /// - "IMAGE" : This represents an image basis relationship.
  /// - "PACKAGE" : This represents a package installed via a package manager.
  /// - "DEPLOYMENT" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION" : This represents a logical "role" that can attest to
  /// artifacts.
  /// - "INTOTO" : This represents an in-toto link.
  core.String kind;

  /// The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  ///
  /// Output only.
  core.String name;

  /// The analysis note associated with this occurrence, in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Required. Immutable.
  core.String noteName;

  /// A description of actions that can be taken to remedy the note.
  core.String remediation;

  /// The resource for which the occurrence applies.
  ///
  /// Required. Immutable.
  Resource resource;

  /// The time this occurrence was last updated.
  ///
  /// Output only.
  core.String updateTime;

  /// Describes a security vulnerability.
  GrafeasV1beta1VulnerabilityDetails vulnerability;

  Occurrence();

  Occurrence.fromJson(core.Map _json) {
    if (_json.containsKey('attestation')) {
      attestation = Details.fromJson(
          _json['attestation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('build')) {
      build = GrafeasV1beta1BuildDetails.fromJson(
          _json['build'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('deployment')) {
      deployment = GrafeasV1beta1DeploymentDetails.fromJson(
          _json['deployment'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('derivedImage')) {
      derivedImage = GrafeasV1beta1ImageDetails.fromJson(
          _json['derivedImage'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('discovered')) {
      discovered = GrafeasV1beta1DiscoveryDetails.fromJson(
          _json['discovered'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('installation')) {
      installation = GrafeasV1beta1PackageDetails.fromJson(
          _json['installation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('intoto')) {
      intoto = GrafeasV1beta1IntotoDetails.fromJson(
          _json['intoto'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('noteName')) {
      noteName = _json['noteName'] as core.String;
    }
    if (_json.containsKey('remediation')) {
      remediation = _json['remediation'] as core.String;
    }
    if (_json.containsKey('resource')) {
      resource = Resource.fromJson(
          _json['resource'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('vulnerability')) {
      vulnerability = GrafeasV1beta1VulnerabilityDetails.fromJson(
          _json['vulnerability'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (attestation != null) {
      _json['attestation'] = attestation.toJson();
    }
    if (build != null) {
      _json['build'] = build.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (deployment != null) {
      _json['deployment'] = deployment.toJson();
    }
    if (derivedImage != null) {
      _json['derivedImage'] = derivedImage.toJson();
    }
    if (discovered != null) {
      _json['discovered'] = discovered.toJson();
    }
    if (installation != null) {
      _json['installation'] = installation.toJson();
    }
    if (intoto != null) {
      _json['intoto'] = intoto.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (noteName != null) {
      _json['noteName'] = noteName;
    }
    if (remediation != null) {
      _json['remediation'] = remediation;
    }
    if (resource != null) {
      _json['resource'] = resource.toJson();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (vulnerability != null) {
      _json['vulnerability'] = vulnerability.toJson();
    }
    return _json;
  }
}

/// This represents a particular package that is distributed over various
/// channels.
///
/// E.g., glibc (aka libc6) is distributed by many, at various versions.
class Package {
  /// The various channels by which a package is distributed.
  core.List<Distribution> distribution;

  /// The name of the package.
  ///
  /// Required. Immutable.
  core.String name;

  Package();

  Package.fromJson(core.Map _json) {
    if (_json.containsKey('distribution')) {
      distribution = (_json['distribution'] as core.List)
          .map<Distribution>((value) => Distribution.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (distribution != null) {
      _json['distribution'] =
          distribution.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// This message wraps a location affected by a vulnerability and its associated
/// fix (if one is available).
class PackageIssue {
  /// The location of the vulnerability.
  ///
  /// Required.
  VulnerabilityLocation affectedLocation;

  /// The location of the available fix for vulnerability.
  VulnerabilityLocation fixedLocation;

  /// Deprecated, use Details.effective_severity instead The severity (e.g.,
  /// distro assigned severity) for this vulnerability.
  core.String severityName;

  PackageIssue();

  PackageIssue.fromJson(core.Map _json) {
    if (_json.containsKey('affectedLocation')) {
      affectedLocation = VulnerabilityLocation.fromJson(
          _json['affectedLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fixedLocation')) {
      fixedLocation = VulnerabilityLocation.fromJson(
          _json['fixedLocation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('severityName')) {
      severityName = _json['severityName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (affectedLocation != null) {
      _json['affectedLocation'] = affectedLocation.toJson();
    }
    if (fixedLocation != null) {
      _json['fixedLocation'] = fixedLocation.toJson();
    }
    if (severityName != null) {
      _json['severityName'] = severityName;
    }
    return _json;
  }
}

/// An attestation wrapper with a PGP-compatible signature.
///
/// This message only supports `ATTACHED` signatures, where the payload that is
/// signed is included alongside the signature itself in the same file.
class PgpSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed.
  ///
  /// The verifier must ensure that the provided type is one that the verifier
  /// supports, and that the attestation payload is a valid instantiation of
  /// that type (for example by validating a JSON schema).
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : `ContentType` is not set.
  /// - "SIMPLE_SIGNING_JSON" : Atomic format attestation signature. See
  /// https://github.com/containers/image/blob/8a5d2f82a6e3263290c8e0276c3e0f64e77723e7/docs/atomic-signature.md
  /// The payload extracted from `signature` is a JSON blob conforming to the
  /// linked schema.
  core.String contentType;

  /// The cryptographic fingerprint of the key used to generate the signature,
  /// as output by, e.g. `gpg --list-keys`.
  ///
  /// This should be the version 4, full 160-bit fingerprint, expressed as a 40
  /// character hexidecimal string. See
  /// https://tools.ietf.org/html/rfc4880#section-12.2 for details.
  /// Implementations may choose to acknowledge "LONG", "SHORT", or other
  /// abbreviated key IDs, but only the full fingerprint is guaranteed to work.
  /// In gpg, the full fingerprint can be retrieved from the `fpr` field
  /// returned when calling --list-keys with --with-colons. For example: ``` gpg
  /// --with-colons --with-fingerprint --force-v4-certs \ --list-keys
  /// attester@example.com tru::1:1513631572:0:3:1:5 pub:......
  /// fpr:::::::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB: ``` Above, the
  /// fingerprint is `24FF6481B76AC91E66A00AC657A93A81EF3AE6FB`.
  core.String pgpKeyId;

  /// The raw content of the signature, as output by GNU Privacy Guard (GPG) or
  /// equivalent.
  ///
  /// Since this message only supports attached signatures, the payload that was
  /// signed must be attached. While the signature format supported is dependent
  /// on the verification implementation, currently only ASCII-armored
  /// (`--armor` to gpg), non-clearsigned (`--sign` rather than `--clearsign` to
  /// gpg) are supported. Concretely, `gpg --sign --armor --output=signature.gpg
  /// payload.json` will create the signature content expected in this field in
  /// `signature.gpg` for the `payload.json` attestation payload.
  ///
  /// Required.
  core.String signature;

  PgpSignedAttestation();

  PgpSignedAttestation.fromJson(core.Map _json) {
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'] as core.String;
    }
    if (_json.containsKey('pgpKeyId')) {
      pgpKeyId = _json['pgpKeyId'] as core.String;
    }
    if (_json.containsKey('signature')) {
      signature = _json['signature'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentType != null) {
      _json['contentType'] = contentType;
    }
    if (pgpKeyId != null) {
      _json['pgpKeyId'] = pgpKeyId;
    }
    if (signature != null) {
      _json['signature'] = signature;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
class ProjectRepoId {
  /// The ID of the project.
  core.String projectId;

  /// The name of the repo.
  ///
  /// Leave empty for the default repo.
  core.String repoName;

  ProjectRepoId();

  ProjectRepoId.fromJson(core.Map _json) {
    if (_json.containsKey('projectId')) {
      projectId = _json['projectId'] as core.String;
    }
    if (_json.containsKey('repoName')) {
      repoName = _json['repoName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (projectId != null) {
      _json['projectId'] = projectId;
    }
    if (repoName != null) {
      _json['repoName'] = repoName;
    }
    return _json;
  }
}

/// Metadata for any related URL information.
class RelatedUrl {
  /// Label to describe usage of the URL.
  core.String label;

  /// Specific URL associated with the resource.
  core.String url;

  RelatedUrl();

  RelatedUrl.fromJson(core.Map _json) {
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (label != null) {
      _json['label'] = label;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  ProjectRepoId projectRepoId;

  /// A server-assigned, globally unique identifier.
  core.String uid;

  RepoId();

  RepoId.fromJson(core.Map _json) {
    if (_json.containsKey('projectRepoId')) {
      projectRepoId = ProjectRepoId.fromJson(
          _json['projectRepoId'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('uid')) {
      uid = _json['uid'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (projectRepoId != null) {
      _json['projectRepoId'] = projectRepoId.toJson();
    }
    if (uid != null) {
      _json['uid'] = uid;
    }
    return _json;
  }
}

/// An entity that can have metadata.
///
/// For example, a Docker image.
class Resource {
  /// Deprecated, do not use.
  ///
  /// Use uri instead. The hash of the resource content. For example, the Docker
  /// digest.
  Hash contentHash;

  /// Deprecated, do not use.
  ///
  /// Use uri instead. The name of the resource. For example, the name of a
  /// Docker image - "Debian".
  core.String name;

  /// The unique URI of the resource.
  ///
  /// For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ///
  /// Required.
  core.String uri;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey('contentHash')) {
      contentHash = Hash.fromJson(
          _json['contentHash'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contentHash != null) {
      _json['contentHash'] = contentHash.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// A scan configuration specifies whether Cloud components in a project have a
/// particular type of analysis being run.
///
/// For example, it can configure whether vulnerability scanning is being done
/// on Docker images or not.
class ScanConfig {
  /// The time this scan config was created.
  ///
  /// Output only.
  core.String createTime;

  /// A human-readable description of what the scan configuration does.
  ///
  /// Output only.
  core.String description;

  /// Whether the scan is enabled.
  core.bool enabled;

  /// The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  ///
  /// Output only.
  core.String name;

  /// The time this scan config was last updated.
  ///
  /// Output only.
  core.String updateTime;

  ScanConfig();

  ScanConfig.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    return _json;
  }
}

/// Verifiers (e.g. Kritis implementations) MUST verify signatures with respect
/// to the trust anchors defined in policy (e.g. a Kritis policy).
///
/// Typically this means that the verifier has been configured with a map from
/// `public_key_id` to public key material (and any required parameters, e.g.
/// signing algorithm). In particular, verification implementations MUST NOT
/// treat the signature `public_key_id` as anything more than a key lookup hint.
/// The `public_key_id` DOES NOT validate or authenticate a public key; it only
/// provides a mechanism for quickly selecting a public key ALREADY CONFIGURED
/// on the verifier through a trusted channel. Verification implementations MUST
/// reject signatures in any of the following circumstances: * The
/// `public_key_id` is not recognized by the verifier. * The public key that
/// `public_key_id` refers to does not verify the signature with respect to the
/// payload. The `signature` contents SHOULD NOT be "attached" (where the
/// payload is included with the serialized `signature` bytes). Verifiers MUST
/// ignore any "attached" payload and only verify signatures with respect to
/// explicitly provided payload (e.g. a `payload` field on the proto message
/// that holds this Signature, or the canonical serialization of the proto
/// message that holds this signature).
class Signature {
  /// The identifier for the public key that verifies this signature.
  ///
  /// * The `public_key_id` is required. * The `public_key_id` SHOULD be an
  /// RFC3986 conformant URI. * When possible, the `public_key_id` SHOULD be an
  /// immutable reference, such as a cryptographic digest. Examples of valid
  /// `public_key_id`s: OpenPGP V4 public key fingerprint: *
  /// "openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA" See
  /// https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more
  /// details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest
  /// of the DER serialization): *
  /// "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU" *
  /// "nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
  core.String publicKeyId;

  /// The content of the signature, an opaque bytestring.
  ///
  /// The payload that this signature verifies MUST be unambiguously provided
  /// with the Signature during verification. A wrapper message might provide
  /// the payload explicitly. Alternatively, a message might have a canonical
  /// serialization that can always be unambiguously computed to derive the
  /// payload.
  core.String signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Signature();

  Signature.fromJson(core.Map _json) {
    if (_json.containsKey('publicKeyId')) {
      publicKeyId = _json['publicKeyId'] as core.String;
    }
    if (_json.containsKey('signature')) {
      signature = _json['signature'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (publicKeyId != null) {
      _json['publicKeyId'] = publicKeyId;
    }
    if (signature != null) {
      _json['signature'] = signature;
    }
    return _json;
  }
}

/// This defines the format used to record keys used in the software supply
/// chain.
///
/// An in-toto link is attested using one or more keys defined in the in-toto
/// layout. An example of this is: { "key_id":
/// "776a00e29f3559e0141b3b096f696abc6cfb0c657ab40f441132b345b0...", "key_type":
/// "rsa", "public_key_value": "-----BEGIN PUBLIC
/// KEY-----\nMIIBojANBgkqhkiG9w0B...", "key_scheme": "rsassa-pss-sha256" } The
/// format for in-toto's key definition can be found in section 4.2 of the
/// in-toto specification.
class SigningKey {
  /// key_id is an identifier for the signing key.
  core.String keyId;

  /// This field contains the corresponding signature scheme.
  ///
  /// Eg: "rsassa-pss-sha256".
  core.String keyScheme;

  /// This field identifies the specific signing method.
  ///
  /// Eg: "rsa", "ed25519", and "ecdsa".
  core.String keyType;

  /// This field contains the actual public key.
  core.String publicKeyValue;

  SigningKey();

  SigningKey.fromJson(core.Map _json) {
    if (_json.containsKey('keyId')) {
      keyId = _json['keyId'] as core.String;
    }
    if (_json.containsKey('keyScheme')) {
      keyScheme = _json['keyScheme'] as core.String;
    }
    if (_json.containsKey('keyType')) {
      keyType = _json['keyType'] as core.String;
    }
    if (_json.containsKey('publicKeyValue')) {
      publicKeyValue = _json['publicKeyValue'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (keyId != null) {
      _json['keyId'] = keyId;
    }
    if (keyScheme != null) {
      _json['keyScheme'] = keyScheme;
    }
    if (keyType != null) {
      _json['keyType'] = keyType;
    }
    if (publicKeyValue != null) {
      _json['publicKeyValue'] = publicKeyValue;
    }
    return _json;
  }
}

/// Source describes the location of the source used for the build.
class Source {
  /// If provided, some of the source code used for the build may be found in
  /// these locations, in the case where the source repository had multiple
  /// remotes or submodules.
  ///
  /// This list will not include the context specified in the context field.
  core.List<SourceContext> additionalContexts;

  /// If provided, the input binary artifacts for the build came from this
  /// location.
  core.String artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  SourceContext context;

  /// Hash(es) of the build source, which can be used to verify that the
  /// original source integrity was maintained in the build.
  ///
  /// The keys to this map are file paths used as build source and the values
  /// contain the hash values for those files. If the build source came in a
  /// single package such as a gzipped tarfile (.tar.gz), the FileHash will be
  /// for the single path to that file.
  core.Map<core.String, FileHashes> fileHashes;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey('additionalContexts')) {
      additionalContexts = (_json['additionalContexts'] as core.List)
          .map<SourceContext>((value) => SourceContext.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('artifactStorageSourceUri')) {
      artifactStorageSourceUri =
          _json['artifactStorageSourceUri'] as core.String;
    }
    if (_json.containsKey('context')) {
      context = SourceContext.fromJson(
          _json['context'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fileHashes')) {
      fileHashes = (_json['fileHashes'] as core.Map)
          .cast<core.String, core.Map>()
          .map(
            (key, item) => core.MapEntry(
              key,
              FileHashes.fromJson(item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (additionalContexts != null) {
      _json['additionalContexts'] =
          additionalContexts.map((value) => value.toJson()).toList();
    }
    if (artifactStorageSourceUri != null) {
      _json['artifactStorageSourceUri'] = artifactStorageSourceUri;
    }
    if (context != null) {
      _json['context'] = context.toJson();
    }
    if (fileHashes != null) {
      _json['fileHashes'] =
          fileHashes.map((key, item) => core.MapEntry(key, item.toJson()));
    }
    return _json;
  }
}

/// A SourceContext is a reference to a tree of files.
///
/// A SourceContext together with a path point to a unique revision of a single
/// file or directory.
class SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  CloudRepoSourceContext cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  GerritSourceContext gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  GitSourceContext git;

  /// Labels with user defined metadata.
  core.Map<core.String, core.String> labels;

  SourceContext();

  SourceContext.fromJson(core.Map _json) {
    if (_json.containsKey('cloudRepo')) {
      cloudRepo = CloudRepoSourceContext.fromJson(
          _json['cloudRepo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gerrit')) {
      gerrit = GerritSourceContext.fromJson(
          _json['gerrit'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('git')) {
      git = GitSourceContext.fromJson(
          _json['git'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudRepo != null) {
      _json['cloudRepo'] = cloudRepo.toJson();
    }
    if (gerrit != null) {
      _json['gerrit'] = gerrit.toJson();
    }
    if (git != null) {
      _json['git'] = git.toJson();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
    }
    return _json;
  }
}

/// Version contains structured information about the version of a package.
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  core.int epoch;

  /// Whether this version is specifying part of an inclusive range.
  ///
  /// Grafeas does not have the capability to specify version ranges; instead we
  /// have fields that specify start version and end versions. At times this is
  /// insufficient - we also need to specify whether the version is included in
  /// the range or is excluded from the range. This boolean is expected to be
  /// set to true when the version is included in a range.
  core.bool inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VERSION_KIND_UNSPECIFIED" : Unknown.
  /// - "NORMAL" : A standard package version.
  /// - "MINIMUM" : A special version representing negative infinity.
  /// - "MAXIMUM" : A special version representing positive infinity.
  core.String kind;

  /// Required only when version kind is NORMAL.
  ///
  /// The main part of the version name.
  core.String name;

  /// The iteration of the package build from the above version.
  core.String revision;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey('epoch')) {
      epoch = _json['epoch'] as core.int;
    }
    if (_json.containsKey('inclusive')) {
      inclusive = _json['inclusive'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (epoch != null) {
      _json['epoch'] = epoch;
    }
    if (inclusive != null) {
      _json['inclusive'] = inclusive;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// Vulnerability provides metadata about a security vulnerability in a Note.
class Vulnerability {
  /// The CVSS score for this vulnerability.
  core.double cvssScore;

  /// The full description of the CVSSv3.
  CVSSv3 cvssV3;

  /// All information about the package to specifically identify this
  /// vulnerability.
  ///
  /// One entry per (version range and cpe_uri) the package vulnerability has
  /// manifested in.
  core.List<Detail> details;

  /// Note provider assigned impact of the vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String severity;

  /// The time this information was last changed at the source.
  ///
  /// This is an upstream timestamp from the underlying information source -
  /// e.g. Ubuntu security tracker.
  core.String sourceUpdateTime;

  /// Windows details get their own format because the information format and
  /// model don't match a normal detail.
  ///
  /// Specifically Windows updates are done as patches, thus Windows
  /// vulnerabilities really are a missing package, rather than a package being
  /// at an incorrect version.
  core.List<WindowsDetail> windowsDetails;

  Vulnerability();

  Vulnerability.fromJson(core.Map _json) {
    if (_json.containsKey('cvssScore')) {
      cvssScore = (_json['cvssScore'] as core.num).toDouble();
    }
    if (_json.containsKey('cvssV3')) {
      cvssV3 = CVSSv3.fromJson(
          _json['cvssV3'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<Detail>((value) =>
              Detail.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('severity')) {
      severity = _json['severity'] as core.String;
    }
    if (_json.containsKey('sourceUpdateTime')) {
      sourceUpdateTime = _json['sourceUpdateTime'] as core.String;
    }
    if (_json.containsKey('windowsDetails')) {
      windowsDetails = (_json['windowsDetails'] as core.List)
          .map<WindowsDetail>((value) => WindowsDetail.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cvssScore != null) {
      _json['cvssScore'] = cvssScore;
    }
    if (cvssV3 != null) {
      _json['cvssV3'] = cvssV3.toJson();
    }
    if (details != null) {
      _json['details'] = details.map((value) => value.toJson()).toList();
    }
    if (severity != null) {
      _json['severity'] = severity;
    }
    if (sourceUpdateTime != null) {
      _json['sourceUpdateTime'] = sourceUpdateTime;
    }
    if (windowsDetails != null) {
      _json['windowsDetails'] =
          windowsDetails.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The location of the vulnerability.
class VulnerabilityLocation {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) format.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  ///
  /// Required.
  core.String cpeUri;

  /// The package being described.
  ///
  /// Required.
  core.String package;

  /// The version of the package being described.
  ///
  /// Required.
  Version version;

  VulnerabilityLocation();

  VulnerabilityLocation.fromJson(core.Map _json) {
    if (_json.containsKey('cpeUri')) {
      cpeUri = _json['cpeUri'] as core.String;
    }
    if (_json.containsKey('package')) {
      package = _json['package'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = Version.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpeUri != null) {
      _json['cpeUri'] = cpeUri;
    }
    if (package != null) {
      _json['package'] = package;
    }
    if (version != null) {
      _json['version'] = version.toJson();
    }
    return _json;
  }
}

/// A summary of how many vulnerability occurrences there are per resource and
/// severity type.
class VulnerabilityOccurrencesSummary {
  /// A listing by resource of the number of fixable and total vulnerabilities.
  core.List<FixableTotalByDigest> counts;

  VulnerabilityOccurrencesSummary();

  VulnerabilityOccurrencesSummary.fromJson(core.Map _json) {
    if (_json.containsKey('counts')) {
      counts = (_json['counts'] as core.List)
          .map<FixableTotalByDigest>((value) => FixableTotalByDigest.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (counts != null) {
      _json['counts'] = counts.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class WindowsDetail {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which
  /// the vulnerability manifests.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  ///
  /// Required.
  core.String cpeUri;

  /// The description of the vulnerability.
  core.String description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability.
  ///
  /// Note that there may be multiple hotfixes (and thus multiple KBs) that
  /// mitigate a given vulnerability. Currently any listed kb's presence is
  /// considered a fix.
  ///
  /// Required.
  core.List<KnowledgeBase> fixingKbs;

  /// The name of the vulnerability.
  ///
  /// Required.
  core.String name;

  WindowsDetail();

  WindowsDetail.fromJson(core.Map _json) {
    if (_json.containsKey('cpeUri')) {
      cpeUri = _json['cpeUri'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('fixingKbs')) {
      fixingKbs = (_json['fixingKbs'] as core.List)
          .map<KnowledgeBase>((value) => KnowledgeBase.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpeUri != null) {
      _json['cpeUri'] = cpeUri;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (fixingKbs != null) {
      _json['fixingKbs'] = fixingKbs.map((value) => value.toJson()).toList();
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}
