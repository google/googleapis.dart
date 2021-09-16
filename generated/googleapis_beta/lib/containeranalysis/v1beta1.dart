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

import '../src/empty.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// An implementation of the Grafeas API, which stores, and enables querying and
/// retrieval of critical metadata about all of your software artifacts.
class ContainerAnalysisApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContainerAnalysisApi(http.Client client,
      {core.String rootUrl = 'https://containeranalysis.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? noteId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (noteId != null) 'noteId': [noteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/occurrences';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + '/notes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? filter,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:vulnerabilitySummary';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
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
  core.String? kind;

  /// The alias name.
  core.String? name;

  AliasContext({
    this.kind,
    this.name,
  });

  AliasContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Artifact describes a build product.
class Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
  /// container.
  core.String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest
  /// like `gcr.io/projectID/imagename@sha256:123456`.
  core.String? id;

  /// Related artifact names.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. Note that a single
  /// Artifact ID can have multiple names, for example if two tags are applied
  /// to one image.
  core.List<core.String>? names;

  Artifact({
    this.checksum,
    this.id,
    this.names,
  });

  Artifact.fromJson(core.Map _json)
      : this(
          checksum: _json.containsKey('checksum')
              ? _json['checksum'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksum != null) 'checksum': checksum!,
        if (id != null) 'id': id!,
        if (names != null) 'names': names!,
      };
}

/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  core.String? sha256;

  ArtifactHashes({
    this.sha256,
  });

  ArtifactHashes.fromJson(core.Map _json)
      : this(
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256 != null) 'sha256': sha256!,
      };
}

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  core.List<core.String>? artifactRule;

  ArtifactRule({
    this.artifactRule,
  });

  ArtifactRule.fromJson(core.Map _json)
      : this(
          artifactRule: _json.containsKey('artifactRule')
              ? (_json['artifactRule'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactRule != null) 'artifactRule': artifactRule!,
      };
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
  GenericSignedAttestation? genericSignedAttestation;

  /// A PGP signed attestation.
  PgpSignedAttestation? pgpSignedAttestation;

  Attestation({
    this.genericSignedAttestation,
    this.pgpSignedAttestation,
  });

  Attestation.fromJson(core.Map _json)
      : this(
          genericSignedAttestation:
              _json.containsKey('genericSignedAttestation')
                  ? GenericSignedAttestation.fromJson(
                      _json['genericSignedAttestation']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          pgpSignedAttestation: _json.containsKey('pgpSignedAttestation')
              ? PgpSignedAttestation.fromJson(_json['pgpSignedAttestation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (genericSignedAttestation != null)
          'genericSignedAttestation': genericSignedAttestation!.toJson(),
        if (pgpSignedAttestation != null)
          'pgpSignedAttestation': pgpSignedAttestation!.toJson(),
      };
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
  Hint? hint;

  Authority({
    this.hint,
  });

  Authority.fromJson(core.Map _json)
      : this(
          hint: _json.containsKey('hint')
              ? Hint.fromJson(
                  _json['hint'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hint != null) 'hint': hint!.toJson(),
      };
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
  Fingerprint? fingerprint;

  /// The resource_url for the resource representing the basis of associated
  /// occurrence images.
  ///
  /// Required. Immutable.
  core.String? resourceUrl;

  Basis({
    this.fingerprint,
    this.resourceUrl,
  });

  Basis.fromJson(core.Map _json)
      : this(
          fingerprint: _json.containsKey('fingerprint')
              ? Fingerprint.fromJson(
                  _json['fingerprint'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceUrl: _json.containsKey('resourceUrl')
              ? _json['resourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fingerprint != null) 'fingerprint': fingerprint!.toJson(),
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
      };
}

/// Request to create notes in batch.
class BatchCreateNotesRequest {
  /// The notes to create, the key is expected to be the note ID.
  ///
  /// Max allowed length is 1000.
  ///
  /// Required.
  core.Map<core.String, Note>? notes;

  BatchCreateNotesRequest({
    this.notes,
  });

  BatchCreateNotesRequest.fromJson(core.Map _json)
      : this(
          notes: _json.containsKey('notes')
              ? (_json['notes'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Note.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notes != null)
          'notes': notes!.map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// Response for creating notes in batch.
class BatchCreateNotesResponse {
  /// The notes that were created.
  core.List<Note>? notes;

  BatchCreateNotesResponse({
    this.notes,
  });

  BatchCreateNotesResponse.fromJson(core.Map _json)
      : this(
          notes: _json.containsKey('notes')
              ? (_json['notes'] as core.List)
                  .map<Note>((value) => Note.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notes != null)
          'notes': notes!.map((value) => value.toJson()).toList(),
      };
}

/// Request to create occurrences in batch.
class BatchCreateOccurrencesRequest {
  /// The occurrences to create.
  ///
  /// Max allowed length is 1000.
  ///
  /// Required.
  core.List<Occurrence>? occurrences;

  BatchCreateOccurrencesRequest({
    this.occurrences,
  });

  BatchCreateOccurrencesRequest.fromJson(core.Map _json)
      : this(
          occurrences: _json.containsKey('occurrences')
              ? (_json['occurrences'] as core.List)
                  .map<Occurrence>((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrences != null)
          'occurrences': occurrences!.map((value) => value.toJson()).toList(),
      };
}

/// Response for creating occurrences in batch.
class BatchCreateOccurrencesResponse {
  /// The occurrences that were created.
  core.List<Occurrence>? occurrences;

  BatchCreateOccurrencesResponse({
    this.occurrences,
  });

  BatchCreateOccurrencesResponse.fromJson(core.Map _json)
      : this(
          occurrences: _json.containsKey('occurrences')
              ? (_json['occurrences'] as core.List)
                  .map<Occurrence>((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrences != null)
          'occurrences': occurrences!.map((value) => value.toJson()).toList(),
      };
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
  Expr? condition;

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
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!.toJson(),
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in the build details occurrence.
class Build {
  /// Version of the builder which produced this build.
  ///
  /// Required. Immutable.
  core.String? builderVersion;

  /// Signature of the build in occurrences pointing to this build note
  /// containing build details.
  BuildSignature? signature;

  Build({
    this.builderVersion,
    this.signature,
  });

  Build.fromJson(core.Map _json)
      : this(
          builderVersion: _json.containsKey('builderVersion')
              ? _json['builderVersion'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? BuildSignature.fromJson(
                  _json['signature'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builderVersion != null) 'builderVersion': builderVersion!,
        if (signature != null) 'signature': signature!.toJson(),
      };
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
  core.Map<core.String, core.String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  core.String? builderVersion;

  /// Output of the build.
  core.List<Artifact>? builtArtifacts;

  /// Commands requested by the build.
  core.List<Command>? commands;

  /// Time at which the build was created.
  core.String? createTime;

  /// E-mail address of the user who initiated this build.
  ///
  /// Note that this was the user's e-mail address at the time the build was
  /// initiated; this address may not represent the same end-user for all time.
  core.String? creator;

  /// Time at which execution of the build was finished.
  core.String? endTime;

  /// Unique identifier of the build.
  ///
  /// Required.
  core.String? id;

  /// URI where any logs for this provenance were written.
  core.String? logsUri;

  /// ID of the project.
  core.String? projectId;

  /// Details of the Source input to the build.
  Source? sourceProvenance;

  /// Time at which execution of the build was started.
  core.String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  core.String? triggerId;

  BuildProvenance({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.endTime,
    this.id,
    this.logsUri,
    this.projectId,
    this.sourceProvenance,
    this.startTime,
    this.triggerId,
  });

  BuildProvenance.fromJson(core.Map _json)
      : this(
          buildOptions: _json.containsKey('buildOptions')
              ? (_json['buildOptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          builderVersion: _json.containsKey('builderVersion')
              ? _json['builderVersion'] as core.String
              : null,
          builtArtifacts: _json.containsKey('builtArtifacts')
              ? (_json['builtArtifacts'] as core.List)
                  .map<Artifact>((value) => Artifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          commands: _json.containsKey('commands')
              ? (_json['commands'] as core.List)
                  .map<Command>((value) => Command.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? _json['creator'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          logsUri: _json.containsKey('logsUri')
              ? _json['logsUri'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          sourceProvenance: _json.containsKey('sourceProvenance')
              ? Source.fromJson(_json['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          triggerId: _json.containsKey('triggerId')
              ? _json['triggerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildOptions != null) 'buildOptions': buildOptions!,
        if (builderVersion != null) 'builderVersion': builderVersion!,
        if (builtArtifacts != null)
          'builtArtifacts':
              builtArtifacts!.map((value) => value.toJson()).toList(),
        if (commands != null)
          'commands': commands!.map((value) => value.toJson()).toList(),
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (logsUri != null) 'logsUri': logsUri!,
        if (projectId != null) 'projectId': projectId!,
        if (sourceProvenance != null)
          'sourceProvenance': sourceProvenance!.toJson(),
        if (startTime != null) 'startTime': startTime!,
        if (triggerId != null) 'triggerId': triggerId!,
      };
}

/// Message encapsulating the signature of the verified build.
class BuildSignature {
  /// An ID for the key used to sign.
  ///
  /// This could be either an ID for the key stored in `public_key` (such as the
  /// ID or fingerprint for a PGP key, or the CN for a cert), or a reference to
  /// an external key (such as a reference to a key in Cloud Key Management
  /// Service).
  core.String? keyId;

  /// The type of the key, either stored in `public_key` or referenced in
  /// `key_id`.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : `KeyType` is not set.
  /// - "PGP_ASCII_ARMORED" : `PGP ASCII Armored` public key.
  /// - "PKIX_PEM" : `PKIX PEM` public key.
  core.String? keyType;

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
  core.String? publicKey;

  /// Signature of the related `BuildProvenance`.
  ///
  /// In JSON, this is base-64 encoded.
  ///
  /// Required.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  BuildSignature({
    this.keyId,
    this.keyType,
    this.publicKey,
    this.signature,
  });

  BuildSignature.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
          keyType: _json.containsKey('keyType')
              ? _json['keyType'] as core.String
              : null,
          publicKey: _json.containsKey('publicKey')
              ? _json['publicKey'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (keyType != null) 'keyType': keyType!,
        if (publicKey != null) 'publicKey': publicKey!,
        if (signature != null) 'signature': signature!,
      };
}

/// Defines an object for the byproducts field in in-toto links.
///
/// The suggested fields are "stderr", "stdout", and "return-value".
class ByProducts {
  core.Map<core.String, core.String>? customValues;

  ByProducts({
    this.customValues,
  });

  ByProducts.fromJson(core.Map _json)
      : this(
          customValues: _json.containsKey('customValues')
              ? (_json['customValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customValues != null) 'customValues': customValues!,
      };
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
  core.String? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability
  /// that are constant over time and across user environments.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED"
  /// - "ATTACK_VECTOR_NETWORK"
  /// - "ATTACK_VECTOR_ADJACENT"
  /// - "ATTACK_VECTOR_LOCAL"
  /// - "ATTACK_VECTOR_PHYSICAL"
  core.String? attackVector;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double? baseScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? confidentialityImpact;
  core.double? exploitabilityScore;
  core.double? impactScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? integrityImpact;

  ///
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED"
  /// - "PRIVILEGES_REQUIRED_NONE"
  /// - "PRIVILEGES_REQUIRED_LOW"
  /// - "PRIVILEGES_REQUIRED_HIGH"
  core.String? privilegesRequired;

  ///
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED"
  /// - "SCOPE_UNCHANGED"
  /// - "SCOPE_CHANGED"
  core.String? scope;

  ///
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED"
  /// - "USER_INTERACTION_NONE"
  /// - "USER_INTERACTION_REQUIRED"
  core.String? userInteraction;

  CVSSv3({
    this.attackComplexity,
    this.attackVector,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  CVSSv3.fromJson(core.Map _json)
      : this(
          attackComplexity: _json.containsKey('attackComplexity')
              ? _json['attackComplexity'] as core.String
              : null,
          attackVector: _json.containsKey('attackVector')
              ? _json['attackVector'] as core.String
              : null,
          availabilityImpact: _json.containsKey('availabilityImpact')
              ? _json['availabilityImpact'] as core.String
              : null,
          baseScore: _json.containsKey('baseScore')
              ? (_json['baseScore'] as core.num).toDouble()
              : null,
          confidentialityImpact: _json.containsKey('confidentialityImpact')
              ? _json['confidentialityImpact'] as core.String
              : null,
          exploitabilityScore: _json.containsKey('exploitabilityScore')
              ? (_json['exploitabilityScore'] as core.num).toDouble()
              : null,
          impactScore: _json.containsKey('impactScore')
              ? (_json['impactScore'] as core.num).toDouble()
              : null,
          integrityImpact: _json.containsKey('integrityImpact')
              ? _json['integrityImpact'] as core.String
              : null,
          privilegesRequired: _json.containsKey('privilegesRequired')
              ? _json['privilegesRequired'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          userInteraction: _json.containsKey('userInteraction')
              ? _json['userInteraction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackComplexity != null) 'attackComplexity': attackComplexity!,
        if (attackVector != null) 'attackVector': attackVector!,
        if (availabilityImpact != null)
          'availabilityImpact': availabilityImpact!,
        if (baseScore != null) 'baseScore': baseScore!,
        if (confidentialityImpact != null)
          'confidentialityImpact': confidentialityImpact!,
        if (exploitabilityScore != null)
          'exploitabilityScore': exploitabilityScore!,
        if (impactScore != null) 'impactScore': impactScore!,
        if (integrityImpact != null) 'integrityImpact': integrityImpact!,
        if (privilegesRequired != null)
          'privilegesRequired': privilegesRequired!,
        if (scope != null) 'scope': scope!,
        if (userInteraction != null) 'userInteraction': userInteraction!,
      };
}

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext? aliasContext;

  /// The ID of the repo.
  RepoId? repoId;

  /// A revision ID.
  core.String? revisionId;

  CloudRepoSourceContext({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  CloudRepoSourceContext.fromJson(core.Map _json)
      : this(
          aliasContext: _json.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  _json['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          repoId: _json.containsKey('repoId')
              ? RepoId.fromJson(
                  _json['repoId'] as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliasContext != null) 'aliasContext': aliasContext!.toJson(),
        if (repoId != null) 'repoId': repoId!.toJson(),
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Command describes a step performed as part of the build pipeline.
class Command {
  /// Command-line arguments used when executing this command.
  core.List<core.String>? args;

  /// Working directory (relative to project source root) used when running this
  /// command.
  core.String? dir;

  /// Environment variables set before running this command.
  core.List<core.String>? env;

  /// Optional unique identifier for this command, used in wait_for to reference
  /// this command as a dependency.
  core.String? id;

  /// Name of the command, as presented on the command line, or if the command
  /// is packaged as a Docker container, as presented to `docker pull`.
  ///
  /// Required.
  core.String? name;

  /// The ID(s) of the command(s) that this command depends on.
  core.List<core.String>? waitFor;

  Command({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  Command.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          waitFor: _json.containsKey('waitFor')
              ? (_json['waitFor'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (dir != null) 'dir': dir!,
        if (env != null) 'env': env!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (waitFor != null) 'waitFor': waitFor!,
      };
}

/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Resource URI for the artifact being deployed.
  ///
  /// Required.
  core.List<core.String>? resourceUri;

  Deployable({
    this.resourceUri,
  });

  Deployable.fromJson(core.Map _json)
      : this(
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// The period during which some deployable was active in a runtime.
class Deployment {
  /// Address of the runtime element hosting this deployment.
  core.String? address;

  /// Configuration used to create this deployment.
  core.String? config;

  /// Beginning of the lifetime of this deployment.
  ///
  /// Required.
  core.String? deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown.
  /// - "GKE" : Google Container Engine.
  /// - "FLEX" : Google App Engine: Flexible Environment.
  /// - "CUSTOM" : Custom user-defined platform.
  core.String? platform;

  /// Resource URI for the artifact being deployed taken from the deployable
  /// field with the same name.
  ///
  /// Output only.
  core.List<core.String>? resourceUri;

  /// End of the lifetime of this deployment.
  core.String? undeployTime;

  /// Identity of the user that triggered this deployment.
  core.String? userEmail;

  Deployment({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  Deployment.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          deployTime: _json.containsKey('deployTime')
              ? _json['deployTime'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          undeployTime: _json.containsKey('undeployTime')
              ? _json['undeployTime'] as core.String
              : null,
          userEmail: _json.containsKey('userEmail')
              ? _json['userEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (config != null) 'config': config!,
        if (deployTime != null) 'deployTime': deployTime!,
        if (platform != null) 'platform': platform!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (undeployTime != null) 'undeployTime': undeployTime!,
        if (userEmail != null) 'userEmail': userEmail!,
      };
}

/// Derived describes the derived image portion (Occurrence) of the DockerImage
/// relationship.
///
/// This image would be produced from a Dockerfile with FROM .
class Derived {
  /// This contains the base image URL for the derived image occurrence.
  ///
  /// Output only.
  core.String? baseResourceUrl;

  /// The number of layers by which this image differs from the associated image
  /// basis.
  ///
  /// Output only.
  core.int? distance;

  /// The fingerprint of the derived image.
  ///
  /// Required.
  Fingerprint? fingerprint;

  /// This contains layer-specific metadata, if populated it has length
  /// "distance" and is ordered with \[distance\] being the layer immediately
  /// following the base image and \[1\] being the final layer.
  core.List<Layer>? layerInfo;

  Derived({
    this.baseResourceUrl,
    this.distance,
    this.fingerprint,
    this.layerInfo,
  });

  Derived.fromJson(core.Map _json)
      : this(
          baseResourceUrl: _json.containsKey('baseResourceUrl')
              ? _json['baseResourceUrl'] as core.String
              : null,
          distance: _json.containsKey('distance')
              ? _json['distance'] as core.int
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? Fingerprint.fromJson(
                  _json['fingerprint'] as core.Map<core.String, core.dynamic>)
              : null,
          layerInfo: _json.containsKey('layerInfo')
              ? (_json['layerInfo'] as core.List)
                  .map<Layer>((value) => Layer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseResourceUrl != null) 'baseResourceUrl': baseResourceUrl!,
        if (distance != null) 'distance': distance!,
        if (fingerprint != null) 'fingerprint': fingerprint!.toJson(),
        if (layerInfo != null)
          'layerInfo': layerInfo!.map((value) => value.toJson()).toList(),
      };
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
  core.String? cpeUri;

  /// A vendor-specific description of this note.
  core.String? description;

  /// The fix for this specific package version.
  VulnerabilityLocation? fixedLocation;

  /// Whether this detail is obsolete.
  ///
  /// Occurrences are expected not to point to obsolete details.
  core.bool? isObsolete;

  /// The max version of the package in which the vulnerability exists.
  Version? maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  Version? minAffectedVersion;

  /// The name of the package where the vulnerability was found.
  ///
  /// Required.
  core.String? package;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc).
  core.String? packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  core.String? severityName;

  /// The source from which the information in this Detail was obtained.
  core.String? source;

  /// The time this information was last changed at the source.
  ///
  /// This is an upstream timestamp from the underlying information source -
  /// e.g. Ubuntu security tracker.
  core.String? sourceUpdateTime;

  /// The name of the vendor of the product.
  core.String? vendor;

  Detail({
    this.cpeUri,
    this.description,
    this.fixedLocation,
    this.isObsolete,
    this.maxAffectedVersion,
    this.minAffectedVersion,
    this.package,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Detail.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fixedLocation: _json.containsKey('fixedLocation')
              ? VulnerabilityLocation.fromJson(
                  _json['fixedLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          isObsolete: _json.containsKey('isObsolete')
              ? _json['isObsolete'] as core.bool
              : null,
          maxAffectedVersion: _json.containsKey('maxAffectedVersion')
              ? Version.fromJson(_json['maxAffectedVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minAffectedVersion: _json.containsKey('minAffectedVersion')
              ? Version.fromJson(_json['minAffectedVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
          severityName: _json.containsKey('severityName')
              ? _json['severityName'] as core.String
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          sourceUpdateTime: _json.containsKey('sourceUpdateTime')
              ? _json['sourceUpdateTime'] as core.String
              : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (description != null) 'description': description!,
        if (fixedLocation != null) 'fixedLocation': fixedLocation!.toJson(),
        if (isObsolete != null) 'isObsolete': isObsolete!,
        if (maxAffectedVersion != null)
          'maxAffectedVersion': maxAffectedVersion!.toJson(),
        if (minAffectedVersion != null)
          'minAffectedVersion': minAffectedVersion!.toJson(),
        if (package != null) 'package': package!,
        if (packageType != null) 'packageType': packageType!,
        if (severityName != null) 'severityName': severityName!,
        if (source != null) 'source': source!,
        if (sourceUpdateTime != null) 'sourceUpdateTime': sourceUpdateTime!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Details of an attestation occurrence.
class Details {
  /// Attestation for the resource.
  ///
  /// Required.
  Attestation? attestation;

  Details({
    this.attestation,
  });

  Details.fromJson(core.Map _json)
      : this(
          attestation: _json.containsKey('attestation')
              ? Attestation.fromJson(
                  _json['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!.toJson(),
      };
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
  core.String? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user.
  ///
  /// The LocalizedMessage is output only and populated by the API.
  Status? analysisStatusError;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown.
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String? continuousAnalysis;

  /// The last time continuous analysis was done for this resource.
  ///
  /// Deprecated, do not use.
  core.String? lastAnalysisTime;

  Discovered({
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.lastAnalysisTime,
  });

  Discovered.fromJson(core.Map _json)
      : this(
          analysisStatus: _json.containsKey('analysisStatus')
              ? _json['analysisStatus'] as core.String
              : null,
          analysisStatusError: _json.containsKey('analysisStatusError')
              ? Status.fromJson(_json['analysisStatusError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          continuousAnalysis: _json.containsKey('continuousAnalysis')
              ? _json['continuousAnalysis'] as core.String
              : null,
          lastAnalysisTime: _json.containsKey('lastAnalysisTime')
              ? _json['lastAnalysisTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisStatus != null) 'analysisStatus': analysisStatus!,
        if (analysisStatusError != null)
          'analysisStatusError': analysisStatusError!.toJson(),
        if (continuousAnalysis != null)
          'continuousAnalysis': continuousAnalysis!,
        if (lastAnalysisTime != null) 'lastAnalysisTime': lastAnalysisTime!,
      };
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
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  core.String? analysisKind;

  Discovery({
    this.analysisKind,
  });

  Discovery.fromJson(core.Map _json)
      : this(
          analysisKind: _json.containsKey('analysisKind')
              ? _json['analysisKind'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisKind != null) 'analysisKind': analysisKind!,
      };
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
  core.String? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// Required.
  core.String? cpeUri;

  /// The distribution channel-specific description of this package.
  core.String? description;

  /// The latest available version of this package in this distribution channel.
  Version? latestVersion;

  /// A freeform string denoting the maintainer of this package.
  core.String? maintainer;

  /// The distribution channel-specific homepage for this package.
  core.String? url;

  Distribution({
    this.architecture,
    this.cpeUri,
    this.description,
    this.latestVersion,
    this.maintainer,
    this.url,
  });

  Distribution.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          latestVersion: _json.containsKey('latestVersion')
              ? Version.fromJson(
                  _json['latestVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          maintainer: _json.containsKey('maintainer')
              ? _json['maintainer'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (description != null) 'description': description!,
        if (latestVersion != null) 'latestVersion': latestVersion!.toJson(),
        if (maintainer != null) 'maintainer': maintainer!,
        if (url != null) 'url': url!,
      };
}

/// DocumentNote represents an SPDX Document Creation Infromation section:
/// https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentNote {
  /// Compliance with the SPDX specification includes populating the SPDX fields
  /// therein with data related to such fields ("SPDX-Metadata")
  core.String? dataLicence;

  /// Provide a reference number that can be used to understand how to parse and
  /// interpret the rest of the file
  core.String? spdxVersion;

  DocumentNote({
    this.dataLicence,
    this.spdxVersion,
  });

  DocumentNote.fromJson(core.Map _json)
      : this(
          dataLicence: _json.containsKey('dataLicence')
              ? _json['dataLicence'] as core.String
              : null,
          spdxVersion: _json.containsKey('spdxVersion')
              ? _json['spdxVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataLicence != null) 'dataLicence': dataLicence!,
        if (spdxVersion != null) 'spdxVersion': spdxVersion!,
      };
}

/// DocumentOccurrence represents an SPDX Document Creation Information section:
/// https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentOccurrence {
  /// Identify when the SPDX file was originally created.
  ///
  /// The date is to be specified according to combined date and time in UTC
  /// format as specified in ISO 8601 standard
  core.String? createTime;

  /// A field for creators of the SPDX file to provide general comments about
  /// the creation of the SPDX file or any other relevant comment not included
  /// in the other fields
  core.String? creatorComment;

  /// Identify who (or what, in the case of a tool) created the SPDX file.
  ///
  /// If the SPDX file was created by an individual, indicate the person's name
  core.List<core.String>? creators;

  /// A field for creators of the SPDX file content to provide comments to the
  /// consumers of the SPDX document
  core.String? documentComment;

  /// Identify any external SPDX documents referenced within this SPDX document
  core.List<core.String>? externalDocumentRefs;

  /// Identify the current SPDX document which may be referenced in
  /// relationships by other files, packages internally and documents externally
  core.String? id;

  /// A field for creators of the SPDX file to provide the version of the SPDX
  /// License List used when the SPDX file was created
  core.String? licenseListVersion;

  /// Provide an SPDX document specific namespace as a unique absolute Uniform
  /// Resource Identifier (URI) as specified in RFC-3986, with the exception of
  /// the ‘#’ delimiter
  core.String? namespace;

  /// Identify name of this document as designated by creator
  core.String? title;

  DocumentOccurrence({
    this.createTime,
    this.creatorComment,
    this.creators,
    this.documentComment,
    this.externalDocumentRefs,
    this.id,
    this.licenseListVersion,
    this.namespace,
    this.title,
  });

  DocumentOccurrence.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creatorComment: _json.containsKey('creatorComment')
              ? _json['creatorComment'] as core.String
              : null,
          creators: _json.containsKey('creators')
              ? (_json['creators'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          documentComment: _json.containsKey('documentComment')
              ? _json['documentComment'] as core.String
              : null,
          externalDocumentRefs: _json.containsKey('externalDocumentRefs')
              ? (_json['externalDocumentRefs'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          licenseListVersion: _json.containsKey('licenseListVersion')
              ? _json['licenseListVersion'] as core.String
              : null,
          namespace: _json.containsKey('namespace')
              ? _json['namespace'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creatorComment != null) 'creatorComment': creatorComment!,
        if (creators != null) 'creators': creators!,
        if (documentComment != null) 'documentComment': documentComment!,
        if (externalDocumentRefs != null)
          'externalDocumentRefs': externalDocumentRefs!,
        if (id != null) 'id': id!,
        if (licenseListVersion != null)
          'licenseListVersion': licenseListVersion!,
        if (namespace != null) 'namespace': namespace!,
        if (title != null) 'title': title!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Defines an object for the environment field in in-toto links.
///
/// The suggested fields are "variables", "filesystem", and "workdir".
class Environment {
  core.Map<core.String, core.String>? customValues;

  Environment({
    this.customValues,
  });

  Environment.fromJson(core.Map _json)
      : this(
          customValues: _json.containsKey('customValues')
              ? (_json['customValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customValues != null) 'customValues': customValues!,
      };
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
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// An External Reference allows a Package to reference an external source of
/// additional information, metadata, enumerations, asset identifiers, or
/// downloadable content believed to be relevant to the Package
class ExternalRef {
  /// An External Reference allows a Package to reference an external source of
  /// additional information, metadata, enumerations, asset identifiers, or
  /// downloadable content believed to be relevant to the Package
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Unspecified
  /// - "SECURITY" : Security (e.g. cpe22Type, cpe23Type)
  /// - "PACKAGE_MANAGER" : Package Manager (e.g. maven-central, npm, nuget,
  /// bower, purl)
  /// - "PERSISTENT_ID" : Persistent-Id (e.g. swh)
  /// - "OTHER" : Other
  core.String? category;

  /// Human-readable information about the purpose and target of the reference
  core.String? comment;

  /// The unique string with no spaces necessary to access the package-specific
  /// information, metadata, or content within the target location
  core.String? locator;

  /// Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
  core.String? type;

  ExternalRef({
    this.category,
    this.comment,
    this.locator,
    this.type,
  });

  ExternalRef.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          locator: _json.containsKey('locator')
              ? _json['locator'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (comment != null) 'comment': comment!,
        if (locator != null) 'locator': locator!,
        if (type != null) 'type': type!,
      };
}

/// Container message for hashes of byte content of files, used in source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
  ///
  /// Required.
  core.List<Hash>? fileHash;

  FileHashes({
    this.fileHash,
  });

  FileHashes.fromJson(core.Map _json)
      : this(
          fileHash: _json.containsKey('fileHash')
              ? (_json['fileHash'] as core.List)
                  .map<Hash>((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null)
          'fileHash': fileHash!.map((value) => value.toJson()).toList(),
      };
}

/// FileNote represents an SPDX File Information section:
/// https://spdx.github.io/spdx-spec/4-file-information/
class FileNote {
  /// Provide a unique identifier to match analysis information on each specific
  /// file in a package
  core.List<core.String>? checksum;

  /// This field provides information about the type of file identified
  /// Possible string values are:
  /// - "FILE_TYPE_UNSPECIFIED" : Unspecified
  /// - "SOURCE" : The file is human readable source code (.c, .html, etc.)
  /// - "BINARY" : The file is a compiled object, target image or binary
  /// executable (.o, .a, etc.)
  /// - "ARCHIVE" : The file represents an archive (.tar, .jar, etc.)
  /// - "APPLICATION" : The file is associated with a specific application type
  /// (MIME type of application / * )
  /// - "AUDIO" : The file is associated with an audio file (MIME type of audio
  /// / * , e.g. .mp3)
  /// - "IMAGE" : The file is associated with an picture image file (MIME type
  /// of image / * , e.g., .jpg, .gif)
  /// - "TEXT" : The file is human readable text file (MIME type of text / * )
  /// - "VIDEO" : The file is associated with a video file type (MIME type of
  /// video / * )
  /// - "DOCUMENTATION" : The file serves as documentation
  /// - "SPDX" : The file is an SPDX document
  /// - "OTHER" : The file doesn't fit into the above categories (generated
  /// artifacts, data files, etc.)
  core.String? fileType;

  /// Identify the full path and filename that corresponds to the file
  /// information in this section
  core.String? title;

  FileNote({
    this.checksum,
    this.fileType,
    this.title,
  });

  FileNote.fromJson(core.Map _json)
      : this(
          checksum: _json.containsKey('checksum')
              ? (_json['checksum'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksum != null) 'checksum': checksum!,
        if (fileType != null) 'fileType': fileType!,
        if (title != null) 'title': title!,
      };
}

/// FileOccurrence represents an SPDX File Information section:
/// https://spdx.github.io/spdx-spec/4-file-information/
class FileOccurrence {
  /// This field provides a place for the SPDX data creator to record, at the
  /// file level, acknowledgements that may be needed to be communicated in some
  /// contexts
  core.List<core.String>? attributions;

  /// This field provides a place for the SPDX file creator to record any
  /// general comments about the file
  core.String? comment;

  /// This field provides a place for the SPDX file creator to record file
  /// contributors
  core.List<core.String>? contributors;

  /// Identify the copyright holder of the file, as well as any dates present
  core.String? copyright;

  /// This field contains the license information actually found in the file, if
  /// any
  core.List<core.String>? filesLicenseInfo;

  /// Uniquely identify any element in an SPDX document which may be referenced
  /// by other elements
  core.String? id;

  /// This field provides a place for the SPDX file creator to record any
  /// relevant background references or analysis that went in to arriving at the
  /// Concluded License for a file
  core.String? licenseComments;

  /// This field contains the license the SPDX file creator has concluded as
  /// governing the file or alternative values if the governing license cannot
  /// be determined
  core.String? licenseConcluded;

  /// This field provides a place for the SPDX file creator to record license
  /// notices or other such related notices found in the file
  core.String? notice;

  FileOccurrence({
    this.attributions,
    this.comment,
    this.contributors,
    this.copyright,
    this.filesLicenseInfo,
    this.id,
    this.licenseComments,
    this.licenseConcluded,
    this.notice,
  });

  FileOccurrence.fromJson(core.Map _json)
      : this(
          attributions: _json.containsKey('attributions')
              ? (_json['attributions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          contributors: _json.containsKey('contributors')
              ? (_json['contributors'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          copyright: _json.containsKey('copyright')
              ? _json['copyright'] as core.String
              : null,
          filesLicenseInfo: _json.containsKey('filesLicenseInfo')
              ? (_json['filesLicenseInfo'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          licenseComments: _json.containsKey('licenseComments')
              ? _json['licenseComments'] as core.String
              : null,
          licenseConcluded: _json.containsKey('licenseConcluded')
              ? _json['licenseConcluded'] as core.String
              : null,
          notice: _json.containsKey('notice')
              ? _json['notice'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributions != null) 'attributions': attributions!,
        if (comment != null) 'comment': comment!,
        if (contributors != null) 'contributors': contributors!,
        if (copyright != null) 'copyright': copyright!,
        if (filesLicenseInfo != null) 'filesLicenseInfo': filesLicenseInfo!,
        if (id != null) 'id': id!,
        if (licenseComments != null) 'licenseComments': licenseComments!,
        if (licenseConcluded != null) 'licenseConcluded': licenseConcluded!,
        if (notice != null) 'notice': notice!,
      };
}

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  ///
  /// Required.
  core.String? v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  ///
  /// Required.
  core.List<core.String>? v2Blob;

  /// The name of the image's v2 blobs computed via: \[bottom\] := v2_blobbottom
  /// := sha256(v2_blob\[N\] + " " + v2_name\[N+1\]) Only the name of the final
  /// blob is kept.
  ///
  /// Output only.
  core.String? v2Name;

  Fingerprint({
    this.v1Name,
    this.v2Blob,
    this.v2Name,
  });

  Fingerprint.fromJson(core.Map _json)
      : this(
          v1Name: _json.containsKey('v1Name')
              ? _json['v1Name'] as core.String
              : null,
          v2Blob: _json.containsKey('v2Blob')
              ? (_json['v2Blob'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          v2Name: _json.containsKey('v2Name')
              ? _json['v2Name'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v1Name != null) 'v1Name': v1Name!,
        if (v2Blob != null) 'v2Blob': v2Blob!,
        if (v2Name != null) 'v2Name': v2Name!,
      };
}

/// Per resource and severity counts of fixable and total vulnerabilities.
class FixableTotalByDigest {
  /// The number of fixable vulnerabilities associated with this resource.
  core.String? fixableCount;

  /// The affected resource.
  Resource? resource;

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
  core.String? severity;

  /// The total number of vulnerabilities associated with this resource.
  core.String? totalCount;

  FixableTotalByDigest({
    this.fixableCount,
    this.resource,
    this.severity,
    this.totalCount,
  });

  FixableTotalByDigest.fromJson(core.Map _json)
      : this(
          fixableCount: _json.containsKey('fixableCount')
              ? _json['fixableCount'] as core.String
              : null,
          resource: _json.containsKey('resource')
              ? Resource.fromJson(
                  _json['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixableCount != null) 'fixableCount': fixableCount!,
        if (resource != null) 'resource': resource!.toJson(),
        if (severity != null) 'severity': severity!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
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
  core.String? contentType;

  /// The serialized payload that is verified by one or more `signatures`.
  ///
  /// The encoding and semantic meaning of this payload must match what is set
  /// in `content_type`.
  core.String? serializedPayload;
  core.List<core.int> get serializedPayloadAsBytes =>
      convert.base64.decode(serializedPayload!);

  set serializedPayloadAsBytes(core.List<core.int> _bytes) {
    serializedPayload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// One or more signatures over `serialized_payload`.
  ///
  /// Verifier implementations should consider this attestation message verified
  /// if at least one `signature` verifies `serialized_payload`. See `Signature`
  /// in common.proto for more details on signature structure and verification.
  core.List<Signature>? signatures;

  GenericSignedAttestation({
    this.contentType,
    this.serializedPayload,
    this.signatures,
  });

  GenericSignedAttestation.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          serializedPayload: _json.containsKey('serializedPayload')
              ? _json['serializedPayload'] as core.String
              : null,
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
                  .map<Signature>((value) => Signature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (serializedPayload != null) 'serializedPayload': serializedPayload!,
        if (signatures != null)
          'signatures': signatures!.map((value) => value.toJson()).toList(),
      };
}

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext? aliasContext;

  /// The full project name within the host.
  ///
  /// Projects may be nested, so "project/subproject" is a valid project name.
  /// The "repo name" is the hostURI/project.
  core.String? gerritProject;

  /// The URI of a running Gerrit instance.
  core.String? hostUri;

  /// A revision (commit) ID.
  core.String? revisionId;

  GerritSourceContext({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  GerritSourceContext.fromJson(core.Map _json)
      : this(
          aliasContext: _json.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  _json['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          gerritProject: _json.containsKey('gerritProject')
              ? _json['gerritProject'] as core.String
              : null,
          hostUri: _json.containsKey('hostUri')
              ? _json['hostUri'] as core.String
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliasContext != null) 'aliasContext': aliasContext!.toJson(),
        if (gerritProject != null) 'gerritProject': gerritProject!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!.toJson(),
      };
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
  core.int? requestedPolicyVersion;

  GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
}

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
class GitSourceContext {
  /// Git commit hash.
  core.String? revisionId;

  /// Git repository URL.
  core.String? url;

  GitSourceContext({
    this.revisionId,
    this.url,
  });

  GitSourceContext.fromJson(core.Map _json)
      : this(
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (url != null) 'url': url!,
      };
}

/// Metadata for all operations used and required for all operations that
/// created by Container Analysis Providers
class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata {
  /// The time this operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time that this operation was marked completed or failed.
  ///
  /// Output only.
  core.String? endTime;

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata({
    this.createTime,
    this.endTime,
  });

  GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata.fromJson(
      core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
      };
}

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetails {
  /// The actual provenance for the build.
  ///
  /// Required.
  BuildProvenance? provenance;

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
  core.String? provenanceBytes;

  GrafeasV1beta1BuildDetails({
    this.provenance,
    this.provenanceBytes,
  });

  GrafeasV1beta1BuildDetails.fromJson(core.Map _json)
      : this(
          provenance: _json.containsKey('provenance')
              ? BuildProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          provenanceBytes: _json.containsKey('provenanceBytes')
              ? _json['provenanceBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (provenanceBytes != null) 'provenanceBytes': provenanceBytes!,
      };
}

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Deployment history for the resource.
  ///
  /// Required.
  Deployment? deployment;

  GrafeasV1beta1DeploymentDetails({
    this.deployment,
  });

  GrafeasV1beta1DeploymentDetails.fromJson(core.Map _json)
      : this(
          deployment: _json.containsKey('deployment')
              ? Deployment.fromJson(
                  _json['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployment != null) 'deployment': deployment!.toJson(),
      };
}

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Analysis status for the discovered resource.
  ///
  /// Required.
  Discovered? discovered;

  GrafeasV1beta1DiscoveryDetails({
    this.discovered,
  });

  GrafeasV1beta1DiscoveryDetails.fromJson(core.Map _json)
      : this(
          discovered: _json.containsKey('discovered')
              ? Discovered.fromJson(
                  _json['discovered'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discovered != null) 'discovered': discovered!.toJson(),
      };
}

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// The child image derived from the base image.
  ///
  /// Required. Immutable.
  Derived? derivedImage;

  GrafeasV1beta1ImageDetails({
    this.derivedImage,
  });

  GrafeasV1beta1ImageDetails.fromJson(core.Map _json)
      : this(
          derivedImage: _json.containsKey('derivedImage')
              ? Derived.fromJson(
                  _json['derivedImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (derivedImage != null) 'derivedImage': derivedImage!.toJson(),
      };
}

class GrafeasV1beta1IntotoArtifact {
  ArtifactHashes? hashes;
  core.String? resourceUri;

  GrafeasV1beta1IntotoArtifact({
    this.hashes,
    this.resourceUri,
  });

  GrafeasV1beta1IntotoArtifact.fromJson(core.Map _json)
      : this(
          hashes: _json.containsKey('hashes')
              ? ArtifactHashes.fromJson(
                  _json['hashes'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hashes != null) 'hashes': hashes!.toJson(),
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// This corresponds to a signed in-toto link - it is made up of one or more
/// signatures and the in-toto link itself.
///
/// This is used for occurrences of a Grafeas in-toto note.
class GrafeasV1beta1IntotoDetails {
  core.List<GrafeasV1beta1IntotoSignature>? signatures;
  Link? signed;

  GrafeasV1beta1IntotoDetails({
    this.signatures,
    this.signed,
  });

  GrafeasV1beta1IntotoDetails.fromJson(core.Map _json)
      : this(
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
                  .map<GrafeasV1beta1IntotoSignature>((value) =>
                      GrafeasV1beta1IntotoSignature.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          signed: _json.containsKey('signed')
              ? Link.fromJson(
                  _json['signed'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signatures != null)
          'signatures': signatures!.map((value) => value.toJson()).toList(),
        if (signed != null) 'signed': signed!.toJson(),
      };
}

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignature {
  core.String? keyid;
  core.String? sig;

  GrafeasV1beta1IntotoSignature({
    this.keyid,
    this.sig,
  });

  GrafeasV1beta1IntotoSignature.fromJson(core.Map _json)
      : this(
          keyid:
              _json.containsKey('keyid') ? _json['keyid'] as core.String : null,
          sig: _json.containsKey('sig') ? _json['sig'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyid != null) 'keyid': keyid!,
        if (sig != null) 'sig': sig!,
      };
}

/// Details of a package occurrence.
class GrafeasV1beta1PackageDetails {
  /// Where the package was installed.
  ///
  /// Required.
  Installation? installation;

  GrafeasV1beta1PackageDetails({
    this.installation,
  });

  GrafeasV1beta1PackageDetails.fromJson(core.Map _json)
      : this(
          installation: _json.containsKey('installation')
              ? Installation.fromJson(
                  _json['installation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (installation != null) 'installation': installation!.toJson(),
      };
}

/// Details of a vulnerability Occurrence.
class GrafeasV1beta1VulnerabilityDetails {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0-10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double? cvssScore;

  /// The distro assigned severity for this vulnerability when it is available,
  /// and note provider assigned severity when distro has not yet assigned a
  /// severity for this vulnerability.
  ///
  /// When there are multiple PackageIssues for this vulnerability, they can
  /// have different effective severities because some might be provided by the
  /// distro while others are provided by the language ecosystem for a language
  /// pack. For this reason, it is advised to use the effective severity on the
  /// PackageIssue level. In the case where multiple PackageIssues have
  /// differing effective severities, this field should be the highest severity
  /// for any of the PackageIssues.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? effectiveSeverity;

  /// A detailed description of this vulnerability.
  ///
  /// Output only.
  core.String? longDescription;

  /// The set of affected locations and their fixes (if available) within the
  /// associated resource.
  ///
  /// Required.
  core.List<PackageIssue>? packageIssue;

  /// URLs related to this vulnerability.
  ///
  /// Output only.
  core.List<RelatedUrl>? relatedUrls;

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
  core.String? severity;

  /// A one sentence description of this vulnerability.
  ///
  /// Output only.
  core.String? shortDescription;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc)
  core.String? type;

  GrafeasV1beta1VulnerabilityDetails({
    this.cvssScore,
    this.effectiveSeverity,
    this.longDescription,
    this.packageIssue,
    this.relatedUrls,
    this.severity,
    this.shortDescription,
    this.type,
  });

  GrafeasV1beta1VulnerabilityDetails.fromJson(core.Map _json)
      : this(
          cvssScore: _json.containsKey('cvssScore')
              ? (_json['cvssScore'] as core.num).toDouble()
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          longDescription: _json.containsKey('longDescription')
              ? _json['longDescription'] as core.String
              : null,
          packageIssue: _json.containsKey('packageIssue')
              ? (_json['packageIssue'] as core.List)
                  .map<PackageIssue>((value) => PackageIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relatedUrls: _json.containsKey('relatedUrls')
              ? (_json['relatedUrls'] as core.List)
                  .map<RelatedUrl>((value) => RelatedUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          shortDescription: _json.containsKey('shortDescription')
              ? _json['shortDescription'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssScore != null) 'cvssScore': cvssScore!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (packageIssue != null)
          'packageIssue': packageIssue!.map((value) => value.toJson()).toList(),
        if (relatedUrls != null)
          'relatedUrls': relatedUrls!.map((value) => value.toJson()).toList(),
        if (severity != null) 'severity': severity!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (type != null) 'type': type!,
      };
}

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HASH_TYPE_UNSPECIFIED" : Unknown.
  /// - "SHA256" : A SHA-256 hash.
  core.String? type;

  /// The hash value.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash({
    this.type,
    this.value,
  });

  Hash.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
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
  core.String? humanReadableName;

  Hint({
    this.humanReadableName,
  });

  Hint.fromJson(core.Map _json)
      : this(
          humanReadableName: _json.containsKey('humanReadableName')
              ? _json['humanReadableName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReadableName != null) 'humanReadableName': humanReadableName!,
      };
}

/// This contains the fields corresponding to the definition of a software
/// supply chain step in an in-toto layout.
///
/// This information goes into a Grafeas note.
class InToto {
  /// This field contains the expected command used to perform the step.
  core.List<core.String>? expectedCommand;

  /// The following fields contain in-toto artifact rules identifying the
  /// artifacts that enter this supply chain step, and exit the supply chain
  /// step, i.e. materials and products of the step.
  core.List<ArtifactRule>? expectedMaterials;
  core.List<ArtifactRule>? expectedProducts;

  /// This field contains the public keys that can be used to verify the
  /// signatures on the step metadata.
  core.List<SigningKey>? signingKeys;

  /// This field identifies the name of the step in the supply chain.
  core.String? stepName;

  /// This field contains a value that indicates the minimum number of keys that
  /// need to be used to sign the step's in-toto link.
  core.String? threshold;

  InToto({
    this.expectedCommand,
    this.expectedMaterials,
    this.expectedProducts,
    this.signingKeys,
    this.stepName,
    this.threshold,
  });

  InToto.fromJson(core.Map _json)
      : this(
          expectedCommand: _json.containsKey('expectedCommand')
              ? (_json['expectedCommand'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          expectedMaterials: _json.containsKey('expectedMaterials')
              ? (_json['expectedMaterials'] as core.List)
                  .map<ArtifactRule>((value) => ArtifactRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          expectedProducts: _json.containsKey('expectedProducts')
              ? (_json['expectedProducts'] as core.List)
                  .map<ArtifactRule>((value) => ArtifactRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          signingKeys: _json.containsKey('signingKeys')
              ? (_json['signingKeys'] as core.List)
                  .map<SigningKey>((value) => SigningKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          stepName: _json.containsKey('stepName')
              ? _json['stepName'] as core.String
              : null,
          threshold: _json.containsKey('threshold')
              ? _json['threshold'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedCommand != null) 'expectedCommand': expectedCommand!,
        if (expectedMaterials != null)
          'expectedMaterials':
              expectedMaterials!.map((value) => value.toJson()).toList(),
        if (expectedProducts != null)
          'expectedProducts':
              expectedProducts!.map((value) => value.toJson()).toList(),
        if (signingKeys != null)
          'signingKeys': signingKeys!.map((value) => value.toJson()).toList(),
        if (stepName != null) 'stepName': stepName!,
        if (threshold != null) 'threshold': threshold!,
      };
}

/// This represents how a particular software package may be installed on a
/// system.
class Installation {
  /// All of the places within the filesystem versions of this package have been
  /// found.
  ///
  /// Required.
  core.List<Location>? location;

  /// The name of the installed package.
  ///
  /// Output only.
  core.String? name;

  Installation({
    this.location,
    this.name,
  });

  Installation.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? (_json['location'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null)
          'location': location!.map((value) => value.toJson()).toList(),
        if (name != null) 'name': name!,
      };
}

class KnowledgeBase {
  /// The KB name (generally of the form KB\[0-9\]+ i.e. KB123456).
  core.String? name;

  /// A link to the KB in the Windows update catalog -
  /// https://www.catalog.update.microsoft.com/
  core.String? url;

  KnowledgeBase({
    this.name,
    this.url,
  });

  KnowledgeBase.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (url != null) 'url': url!,
      };
}

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String? arguments;

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
  core.String? directive;

  Layer({
    this.arguments,
    this.directive,
  });

  Layer.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? _json['arguments'] as core.String
              : null,
          directive: _json.containsKey('directive')
              ? _json['directive'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (directive != null) 'directive': directive!,
      };
}

/// This corresponds to an in-toto link.
class Link {
  /// ByProducts are data generated as part of a software supply chain step, but
  /// are not the actual result of the step.
  ByProducts? byproducts;

  /// This field contains the full command executed for the step.
  ///
  /// This can also be empty if links are generated for operations that aren't
  /// directly mapped to a specific command. Each term in the command is an
  /// independent string in the list. An example of a command in the in-toto
  /// metadata field is: "command": \["git", "clone",
  /// "https://github.com/in-toto/demo-project.git"\]
  core.List<core.String>? command;

  /// This is a field that can be used to capture information about the
  /// environment.
  ///
  /// It is suggested for this field to contain information that details
  /// environment variables, filesystem information, and the present working
  /// directory. The recommended structure of this field is: "environment": {
  /// "custom_values": { "variables": "", "filesystem": "", "workdir": "", "":
  /// "..." } }
  Environment? environment;

  /// Materials are the supply chain artifacts that go into the step and are
  /// used for the operation performed.
  ///
  /// The key of the map is the path of the artifact and the structure contains
  /// the recorded hash information. An example is: "materials": \[ {
  /// "resource_uri": "foo/bar", "hashes": { "sha256": "ebebf...", : } } \]
  core.List<GrafeasV1beta1IntotoArtifact>? materials;

  /// Products are the supply chain artifacts generated as a result of the step.
  ///
  /// The structure is identical to that of materials.
  core.List<GrafeasV1beta1IntotoArtifact>? products;

  Link({
    this.byproducts,
    this.command,
    this.environment,
    this.materials,
    this.products,
  });

  Link.fromJson(core.Map _json)
      : this(
          byproducts: _json.containsKey('byproducts')
              ? ByProducts.fromJson(
                  _json['byproducts'] as core.Map<core.String, core.dynamic>)
              : null,
          command: _json.containsKey('command')
              ? (_json['command'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          environment: _json.containsKey('environment')
              ? Environment.fromJson(
                  _json['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map<GrafeasV1beta1IntotoArtifact>((value) =>
                      GrafeasV1beta1IntotoArtifact.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
                  .map<GrafeasV1beta1IntotoArtifact>((value) =>
                      GrafeasV1beta1IntotoArtifact.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byproducts != null) 'byproducts': byproducts!.toJson(),
        if (command != null) 'command': command!,
        if (environment != null) 'environment': environment!.toJson(),
        if (materials != null)
          'materials': materials!.map((value) => value.toJson()).toList(),
        if (products != null)
          'products': products!.map((value) => value.toJson()).toList(),
      };
}

/// Response for listing occurrences for a note.
class ListNoteOccurrencesResponse {
  /// Token to provide to skip to a particular spot in the list.
  core.String? nextPageToken;

  /// The occurrences attached to the specified note.
  core.List<Occurrence>? occurrences;

  ListNoteOccurrencesResponse({
    this.nextPageToken,
    this.occurrences,
  });

  ListNoteOccurrencesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          occurrences: _json.containsKey('occurrences')
              ? (_json['occurrences'] as core.List)
                  .map<Occurrence>((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (occurrences != null)
          'occurrences': occurrences!.map((value) => value.toJson()).toList(),
      };
}

/// Response for listing notes.
class ListNotesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  /// The notes requested.
  core.List<Note>? notes;

  ListNotesResponse({
    this.nextPageToken,
    this.notes,
  });

  ListNotesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          notes: _json.containsKey('notes')
              ? (_json['notes'] as core.List)
                  .map<Note>((value) => Note.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (notes != null)
          'notes': notes!.map((value) => value.toJson()).toList(),
      };
}

/// Response for listing occurrences.
class ListOccurrencesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  /// The occurrences requested.
  core.List<Occurrence>? occurrences;

  ListOccurrencesResponse({
    this.nextPageToken,
    this.occurrences,
  });

  ListOccurrencesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          occurrences: _json.containsKey('occurrences')
              ? (_json['occurrences'] as core.List)
                  .map<Occurrence>((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (occurrences != null)
          'occurrences': occurrences!.map((value) => value.toJson()).toList(),
      };
}

/// Response for listing scan configurations.
class ListScanConfigsResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  /// The scan configurations requested.
  core.List<ScanConfig>? scanConfigs;

  ListScanConfigsResponse({
    this.nextPageToken,
    this.scanConfigs,
  });

  ListScanConfigsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          scanConfigs: _json.containsKey('scanConfigs')
              ? (_json['scanConfigs'] as core.List)
                  .map<ScanConfig>((value) => ScanConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scanConfigs != null)
          'scanConfigs': scanConfigs!.map((value) => value.toJson()).toList(),
      };
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
  core.String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String? path;

  /// The version installed at this location.
  Version? version;

  Location({
    this.cpeUri,
    this.path,
    this.version,
  });

  Location.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (path != null) 'path': path!,
        if (version != null) 'version': version!.toJson(),
      };
}

/// A type of analysis that can be done for a resource.
class Note {
  /// A note describing an attestation role.
  Authority? attestationAuthority;

  /// A note describing a base image.
  Basis? baseImage;

  /// A note describing build provenance for a verifiable build.
  Build? build;

  /// The time this note was created.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? createTime;

  /// A note describing something that can be deployed.
  Deployable? deployable;

  /// A note describing the initial analysis of a resource.
  Discovery? discovery;

  /// Time of expiration for this note.
  ///
  /// Empty if note does not expire.
  core.String? expirationTime;

  /// A note describing an in-toto link.
  InToto? intoto;

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
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  core.String? kind;

  /// A detailed description of this note.
  core.String? longDescription;

  /// The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// Output only.
  core.String? name;

  /// A note describing a package hosted by various package managers.
  Package? package;

  /// Other notes related to this note.
  core.List<core.String>? relatedNoteNames;

  /// URLs associated with this note.
  core.List<RelatedUrl>? relatedUrl;

  /// A note describing SPDX Document which represents SBOM.
  DocumentNote? sbom;

  /// A one sentence description of this note.
  core.String? shortDescription;

  /// A note describing SPDX File.
  FileNote? spdxFile;

  /// A note describing SPDX Package.
  PackageNote? spdxPackage;

  /// A note describing SPDX Relationship.
  RelationshipNote? spdxRelationship;

  /// The time this note was last updated.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? updateTime;

  /// A note describing a package vulnerability.
  Vulnerability? vulnerability;

  Note({
    this.attestationAuthority,
    this.baseImage,
    this.build,
    this.createTime,
    this.deployable,
    this.discovery,
    this.expirationTime,
    this.intoto,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbom,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.vulnerability,
  });

  Note.fromJson(core.Map _json)
      : this(
          attestationAuthority: _json.containsKey('attestationAuthority')
              ? Authority.fromJson(_json['attestationAuthority']
                  as core.Map<core.String, core.dynamic>)
              : null,
          baseImage: _json.containsKey('baseImage')
              ? Basis.fromJson(
                  _json['baseImage'] as core.Map<core.String, core.dynamic>)
              : null,
          build: _json.containsKey('build')
              ? Build.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deployable: _json.containsKey('deployable')
              ? Deployable.fromJson(
                  _json['deployable'] as core.Map<core.String, core.dynamic>)
              : null,
          discovery: _json.containsKey('discovery')
              ? Discovery.fromJson(
                  _json['discovery'] as core.Map<core.String, core.dynamic>)
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          intoto: _json.containsKey('intoto')
              ? InToto.fromJson(
                  _json['intoto'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          longDescription: _json.containsKey('longDescription')
              ? _json['longDescription'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          package: _json.containsKey('package')
              ? Package.fromJson(
                  _json['package'] as core.Map<core.String, core.dynamic>)
              : null,
          relatedNoteNames: _json.containsKey('relatedNoteNames')
              ? (_json['relatedNoteNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          relatedUrl: _json.containsKey('relatedUrl')
              ? (_json['relatedUrl'] as core.List)
                  .map<RelatedUrl>((value) => RelatedUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sbom: _json.containsKey('sbom')
              ? DocumentNote.fromJson(
                  _json['sbom'] as core.Map<core.String, core.dynamic>)
              : null,
          shortDescription: _json.containsKey('shortDescription')
              ? _json['shortDescription'] as core.String
              : null,
          spdxFile: _json.containsKey('spdxFile')
              ? FileNote.fromJson(
                  _json['spdxFile'] as core.Map<core.String, core.dynamic>)
              : null,
          spdxPackage: _json.containsKey('spdxPackage')
              ? PackageNote.fromJson(
                  _json['spdxPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          spdxRelationship: _json.containsKey('spdxRelationship')
              ? RelationshipNote.fromJson(_json['spdxRelationship']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          vulnerability: _json.containsKey('vulnerability')
              ? Vulnerability.fromJson(
                  _json['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestationAuthority != null)
          'attestationAuthority': attestationAuthority!.toJson(),
        if (baseImage != null) 'baseImage': baseImage!.toJson(),
        if (build != null) 'build': build!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (deployable != null) 'deployable': deployable!.toJson(),
        if (discovery != null) 'discovery': discovery!.toJson(),
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (intoto != null) 'intoto': intoto!.toJson(),
        if (kind != null) 'kind': kind!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (name != null) 'name': name!,
        if (package != null) 'package': package!.toJson(),
        if (relatedNoteNames != null) 'relatedNoteNames': relatedNoteNames!,
        if (relatedUrl != null)
          'relatedUrl': relatedUrl!.map((value) => value.toJson()).toList(),
        if (sbom != null) 'sbom': sbom!.toJson(),
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (spdxFile != null) 'spdxFile': spdxFile!.toJson(),
        if (spdxPackage != null) 'spdxPackage': spdxPackage!.toJson(),
        if (spdxRelationship != null)
          'spdxRelationship': spdxRelationship!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
        if (vulnerability != null) 'vulnerability': vulnerability!.toJson(),
      };
}

/// An instance of an analysis type that has been found on a resource.
class Occurrence {
  /// Describes an attestation of an artifact.
  Details? attestation;

  /// Describes a verifiable build.
  GrafeasV1beta1BuildDetails? build;

  /// The time this occurrence was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Describes the deployment of an artifact on a runtime.
  GrafeasV1beta1DeploymentDetails? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  GrafeasV1beta1ImageDetails? derivedImage;

  /// Describes when a resource was discovered.
  GrafeasV1beta1DiscoveryDetails? discovered;

  /// Describes the installation of a package on the linked resource.
  GrafeasV1beta1PackageDetails? installation;

  /// Describes a specific in-toto link.
  GrafeasV1beta1IntotoDetails? intoto;

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
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  core.String? kind;

  /// The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  ///
  /// Output only.
  core.String? name;

  /// The analysis note associated with this occurrence, in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Required. Immutable.
  core.String? noteName;

  /// A description of actions that can be taken to remedy the note.
  core.String? remediation;

  /// The resource for which the occurrence applies.
  ///
  /// Required. Immutable.
  Resource? resource;

  /// Describes a specific SPDX Document.
  DocumentOccurrence? sbom;

  /// Describes a specific SPDX File.
  FileOccurrence? spdxFile;

  /// Describes a specific SPDX Package.
  PackageOccurrence? spdxPackage;

  /// Describes a specific SPDX Relationship.
  RelationshipOccurrence? spdxRelationship;

  /// The time this occurrence was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Describes a security vulnerability.
  GrafeasV1beta1VulnerabilityDetails? vulnerability;

  Occurrence({
    this.attestation,
    this.build,
    this.createTime,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.installation,
    this.intoto,
    this.kind,
    this.name,
    this.noteName,
    this.remediation,
    this.resource,
    this.sbom,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.vulnerability,
  });

  Occurrence.fromJson(core.Map _json)
      : this(
          attestation: _json.containsKey('attestation')
              ? Details.fromJson(
                  _json['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          build: _json.containsKey('build')
              ? GrafeasV1beta1BuildDetails.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deployment: _json.containsKey('deployment')
              ? GrafeasV1beta1DeploymentDetails.fromJson(
                  _json['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          derivedImage: _json.containsKey('derivedImage')
              ? GrafeasV1beta1ImageDetails.fromJson(
                  _json['derivedImage'] as core.Map<core.String, core.dynamic>)
              : null,
          discovered: _json.containsKey('discovered')
              ? GrafeasV1beta1DiscoveryDetails.fromJson(
                  _json['discovered'] as core.Map<core.String, core.dynamic>)
              : null,
          installation: _json.containsKey('installation')
              ? GrafeasV1beta1PackageDetails.fromJson(
                  _json['installation'] as core.Map<core.String, core.dynamic>)
              : null,
          intoto: _json.containsKey('intoto')
              ? GrafeasV1beta1IntotoDetails.fromJson(
                  _json['intoto'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          noteName: _json.containsKey('noteName')
              ? _json['noteName'] as core.String
              : null,
          remediation: _json.containsKey('remediation')
              ? _json['remediation'] as core.String
              : null,
          resource: _json.containsKey('resource')
              ? Resource.fromJson(
                  _json['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          sbom: _json.containsKey('sbom')
              ? DocumentOccurrence.fromJson(
                  _json['sbom'] as core.Map<core.String, core.dynamic>)
              : null,
          spdxFile: _json.containsKey('spdxFile')
              ? FileOccurrence.fromJson(
                  _json['spdxFile'] as core.Map<core.String, core.dynamic>)
              : null,
          spdxPackage: _json.containsKey('spdxPackage')
              ? PackageOccurrence.fromJson(
                  _json['spdxPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          spdxRelationship: _json.containsKey('spdxRelationship')
              ? RelationshipOccurrence.fromJson(_json['spdxRelationship']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          vulnerability: _json.containsKey('vulnerability')
              ? GrafeasV1beta1VulnerabilityDetails.fromJson(
                  _json['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!.toJson(),
        if (build != null) 'build': build!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (deployment != null) 'deployment': deployment!.toJson(),
        if (derivedImage != null) 'derivedImage': derivedImage!.toJson(),
        if (discovered != null) 'discovered': discovered!.toJson(),
        if (installation != null) 'installation': installation!.toJson(),
        if (intoto != null) 'intoto': intoto!.toJson(),
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (noteName != null) 'noteName': noteName!,
        if (remediation != null) 'remediation': remediation!,
        if (resource != null) 'resource': resource!.toJson(),
        if (sbom != null) 'sbom': sbom!.toJson(),
        if (spdxFile != null) 'spdxFile': spdxFile!.toJson(),
        if (spdxPackage != null) 'spdxPackage': spdxPackage!.toJson(),
        if (spdxRelationship != null)
          'spdxRelationship': spdxRelationship!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
        if (vulnerability != null) 'vulnerability': vulnerability!.toJson(),
      };
}

/// This represents a particular package that is distributed over various
/// channels.
///
/// E.g., glibc (aka libc6) is distributed by many, at various versions.
class Package {
  /// The various channels by which a package is distributed.
  core.List<Distribution>? distribution;

  /// The name of the package.
  ///
  /// Required. Immutable.
  core.String? name;

  Package({
    this.distribution,
    this.name,
  });

  Package.fromJson(core.Map _json)
      : this(
          distribution: _json.containsKey('distribution')
              ? (_json['distribution'] as core.List)
                  .map<Distribution>((value) => Distribution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distribution != null)
          'distribution': distribution!.map((value) => value.toJson()).toList(),
        if (name != null) 'name': name!,
      };
}

/// This message wraps a location affected by a vulnerability and its associated
/// fix (if one is available).
class PackageIssue {
  /// The location of the vulnerability.
  ///
  /// Required.
  VulnerabilityLocation? affectedLocation;

  /// The distro or language system assigned severity for this vulnerability
  /// when that is available and note provider assigned severity when it is not
  /// available.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? effectiveSeverity;

  /// The location of the available fix for vulnerability.
  VulnerabilityLocation? fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  core.String? packageType;

  /// Deprecated, use Details.effective_severity instead The severity (e.g.,
  /// distro assigned severity) for this vulnerability.
  core.String? severityName;

  PackageIssue({
    this.affectedLocation,
    this.effectiveSeverity,
    this.fixedLocation,
    this.packageType,
    this.severityName,
  });

  PackageIssue.fromJson(core.Map _json)
      : this(
          affectedLocation: _json.containsKey('affectedLocation')
              ? VulnerabilityLocation.fromJson(_json['affectedLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          fixedLocation: _json.containsKey('fixedLocation')
              ? VulnerabilityLocation.fromJson(
                  _json['fixedLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
          severityName: _json.containsKey('severityName')
              ? _json['severityName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedLocation != null)
          'affectedLocation': affectedLocation!.toJson(),
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fixedLocation != null) 'fixedLocation': fixedLocation!.toJson(),
        if (packageType != null) 'packageType': packageType!,
        if (severityName != null) 'severityName': severityName!,
      };
}

/// PackageNote represents an SPDX Package Information section:
/// https://spdx.github.io/spdx-spec/3-package-information/
class PackageNote {
  /// Indicates whether the file content of this package has been available for
  /// or subjected to analysis when creating the SPDX document
  core.bool? analyzed;

  /// A place for the SPDX data creator to record, at the package level,
  /// acknowledgements that may be needed to be communicated in some contexts
  core.String? attribution;

  /// Provide an independently reproducible mechanism that permits unique
  /// identification of a specific package that correlates to the data in this
  /// SPDX file
  core.String? checksum;

  /// Identify the copyright holders of the package, as well as any dates
  /// present
  core.String? copyright;

  /// A more detailed description of the package
  core.String? detailedDescription;

  /// This section identifies the download Universal Resource Locator (URL), or
  /// a specific location within a version control system (VCS) for the package
  /// at the time that the SPDX file was created
  core.String? downloadLocation;

  /// ExternalRef
  core.List<ExternalRef>? externalRefs;

  /// Contain the license the SPDX file creator has concluded as governing the
  /// This field is to contain a list of all licenses found in the package.
  ///
  /// The relationship between licenses (i.e., conjunctive, disjunctive) is not
  /// specified in this field – it is simply a listing of all licenses found
  core.List<core.String>? filesLicenseInfo;

  /// Provide a place for the SPDX file creator to record a web site that serves
  /// as the package's home page
  core.String? homePage;

  /// List the licenses that have been declared by the authors of the package
  core.String? licenseDeclared;

  /// If the package identified in the SPDX file originated from a different
  /// person or organization than identified as Package Supplier, this field
  /// identifies from where or whom the package originally came
  core.String? originator;

  /// A short description of the package
  core.String? summaryDescription;

  /// Identify the actual distribution source for the package/directory
  /// identified in the SPDX file
  core.String? supplier;

  /// Identify the full name of the package as given by the Package Originator
  core.String? title;

  /// This field provides an independently reproducible mechanism identifying
  /// specific contents of a package based on the actual files (except the SPDX
  /// file itself, if it is included in the package) that make up each package
  /// and that correlates to the data in this SPDX file
  core.String? verificationCode;

  /// Identify the version of the package
  core.String? version;

  PackageNote({
    this.analyzed,
    this.attribution,
    this.checksum,
    this.copyright,
    this.detailedDescription,
    this.downloadLocation,
    this.externalRefs,
    this.filesLicenseInfo,
    this.homePage,
    this.licenseDeclared,
    this.originator,
    this.summaryDescription,
    this.supplier,
    this.title,
    this.verificationCode,
    this.version,
  });

  PackageNote.fromJson(core.Map _json)
      : this(
          analyzed: _json.containsKey('analyzed')
              ? _json['analyzed'] as core.bool
              : null,
          attribution: _json.containsKey('attribution')
              ? _json['attribution'] as core.String
              : null,
          checksum: _json.containsKey('checksum')
              ? _json['checksum'] as core.String
              : null,
          copyright: _json.containsKey('copyright')
              ? _json['copyright'] as core.String
              : null,
          detailedDescription: _json.containsKey('detailedDescription')
              ? _json['detailedDescription'] as core.String
              : null,
          downloadLocation: _json.containsKey('downloadLocation')
              ? _json['downloadLocation'] as core.String
              : null,
          externalRefs: _json.containsKey('externalRefs')
              ? (_json['externalRefs'] as core.List)
                  .map<ExternalRef>((value) => ExternalRef.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filesLicenseInfo: _json.containsKey('filesLicenseInfo')
              ? (_json['filesLicenseInfo'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          homePage: _json.containsKey('homePage')
              ? _json['homePage'] as core.String
              : null,
          licenseDeclared: _json.containsKey('licenseDeclared')
              ? _json['licenseDeclared'] as core.String
              : null,
          originator: _json.containsKey('originator')
              ? _json['originator'] as core.String
              : null,
          summaryDescription: _json.containsKey('summaryDescription')
              ? _json['summaryDescription'] as core.String
              : null,
          supplier: _json.containsKey('supplier')
              ? _json['supplier'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          verificationCode: _json.containsKey('verificationCode')
              ? _json['verificationCode'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzed != null) 'analyzed': analyzed!,
        if (attribution != null) 'attribution': attribution!,
        if (checksum != null) 'checksum': checksum!,
        if (copyright != null) 'copyright': copyright!,
        if (detailedDescription != null)
          'detailedDescription': detailedDescription!,
        if (downloadLocation != null) 'downloadLocation': downloadLocation!,
        if (externalRefs != null)
          'externalRefs': externalRefs!.map((value) => value.toJson()).toList(),
        if (filesLicenseInfo != null) 'filesLicenseInfo': filesLicenseInfo!,
        if (homePage != null) 'homePage': homePage!,
        if (licenseDeclared != null) 'licenseDeclared': licenseDeclared!,
        if (originator != null) 'originator': originator!,
        if (summaryDescription != null)
          'summaryDescription': summaryDescription!,
        if (supplier != null) 'supplier': supplier!,
        if (title != null) 'title': title!,
        if (verificationCode != null) 'verificationCode': verificationCode!,
        if (version != null) 'version': version!,
      };
}

/// PackageOccurrence represents an SPDX Package Information section:
/// https://spdx.github.io/spdx-spec/3-package-information/
class PackageOccurrence {
  /// A place for the SPDX file creator to record any general comments about the
  /// package being described
  core.String? comment;

  /// Provide the actual file name of the package, or path of the directory
  /// being treated as a package
  core.String? filename;

  /// Uniquely identify any element in an SPDX document which may be referenced
  /// by other elements
  core.String? id;

  /// This field provides a place for the SPDX file creator to record any
  /// relevant background information or analysis that went in to arriving at
  /// the Concluded License for a package
  core.String? licenseComments;

  /// package or alternative values, if the governing license cannot be
  /// determined
  core.String? licenseConcluded;

  /// Provide a place for the SPDX file creator to record any relevant
  /// background information or additional comments about the origin of the
  /// package
  core.String? sourceInfo;

  PackageOccurrence({
    this.comment,
    this.filename,
    this.id,
    this.licenseComments,
    this.licenseConcluded,
    this.sourceInfo,
  });

  PackageOccurrence.fromJson(core.Map _json)
      : this(
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          filename: _json.containsKey('filename')
              ? _json['filename'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          licenseComments: _json.containsKey('licenseComments')
              ? _json['licenseComments'] as core.String
              : null,
          licenseConcluded: _json.containsKey('licenseConcluded')
              ? _json['licenseConcluded'] as core.String
              : null,
          sourceInfo: _json.containsKey('sourceInfo')
              ? _json['sourceInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comment != null) 'comment': comment!,
        if (filename != null) 'filename': filename!,
        if (id != null) 'id': id!,
        if (licenseComments != null) 'licenseComments': licenseComments!,
        if (licenseConcluded != null) 'licenseConcluded': licenseConcluded!,
        if (sourceInfo != null) 'sourceInfo': sourceInfo!,
      };
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
  core.String? contentType;

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
  core.String? pgpKeyId;

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
  core.String? signature;

  PgpSignedAttestation({
    this.contentType,
    this.pgpKeyId,
    this.signature,
  });

  PgpSignedAttestation.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          pgpKeyId: _json.containsKey('pgpKeyId')
              ? _json['pgpKeyId'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (pgpKeyId != null) 'pgpKeyId': pgpKeyId!,
        if (signature != null) 'signature': signature!,
      };
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
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding>? bindings;

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
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

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
  core.int? version;

  Policy({
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map<Binding>((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null)
          'bindings': bindings!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
class ProjectRepoId {
  /// The ID of the project.
  core.String? projectId;

  /// The name of the repo.
  ///
  /// Leave empty for the default repo.
  core.String? repoName;

  ProjectRepoId({
    this.projectId,
    this.repoName,
  });

  ProjectRepoId.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
      };
}

/// Metadata for any related URL information.
class RelatedUrl {
  /// Label to describe usage of the URL.
  core.String? label;

  /// Specific URL associated with the resource.
  core.String? url;

  RelatedUrl({
    this.label,
    this.url,
  });

  RelatedUrl.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (url != null) 'url': url!,
      };
}

/// RelationshipNote represents an SPDX Relationship section:
/// https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
typedef RelationshipNote = $Empty;

/// RelationshipOccurrence represents an SPDX Relationship section:
/// https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipOccurrence {
  /// A place for the SPDX file creator to record any general comments about the
  /// relationship
  core.String? comment;

  /// Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  core.String? source;

  /// Also referred to as SPDXRef-B The target SPDC element (file, package, etc)
  /// In cases where there are "known unknowns", the use of the keyword
  /// NOASSERTION can be used The keywords NONE can be used to indicate that an
  /// SPDX element (package/file/snippet) has no other elements connected by
  /// some relationship to it
  core.String? target;

  /// The type of relationship between the source and target SPDX elements
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified
  /// - "DESCRIBES" : Is to be used when SPDXRef-DOCUMENT describes SPDXRef-A
  /// - "DESCRIBED_BY" : Is to be used when SPDXRef-A is described by
  /// SPDXREF-Document
  /// - "CONTAINS" : Is to be used when SPDXRef-A contains SPDXRef-B
  /// - "CONTAINED_BY" : Is to be used when SPDXRef-A is contained by SPDXRef-B
  /// - "DEPENDS_ON" : Is to be used when SPDXRef-A depends on SPDXRef-B
  /// - "DEPENDENCY_OF" : Is to be used when SPDXRef-A is dependency of
  /// SPDXRef-B
  /// - "DEPENDENCY_MANIFEST_OF" : Is to be used when SPDXRef-A is a manifest
  /// file that lists a set of dependencies for SPDXRef-B
  /// - "BUILD_DEPENDENCY_OF" : Is to be used when SPDXRef-A is a build
  /// dependency of SPDXRef-B
  /// - "DEV_DEPENDENCY_OF" : Is to be used when SPDXRef-A is a development
  /// dependency of SPDXRef-B
  /// - "OPTIONAL_DEPENDENCY_OF" : Is to be used when SPDXRef-A is an optional
  /// dependency of SPDXRef-B
  /// - "PROVIDED_DEPENDENCY_OF" : Is to be used when SPDXRef-A is a to be
  /// provided dependency of SPDXRef-B
  /// - "TEST_DEPENDENCY_OF" : Is to be used when SPDXRef-A is a test dependency
  /// of SPDXRef-B
  /// - "RUNTIME_DEPENDENCY_OF" : Is to be used when SPDXRef-A is a dependency
  /// required for the execution of SPDXRef-B
  /// - "EXAMPLE_OF" : Is to be used when SPDXRef-A is an example of SPDXRef-B
  /// - "GENERATES" : Is to be used when SPDXRef-A generates SPDXRef-B
  /// - "GENERATED_FROM" : Is to be used when SPDXRef-A was generated from
  /// SPDXRef-B
  /// - "ANCESTOR_OF" : Is to be used when SPDXRef-A is an ancestor (same
  /// lineage but pre-dates) SPDXRef-B
  /// - "DESCENDANT_OF" : Is to be used when SPDXRef-A is a descendant of (same
  /// lineage but postdates) SPDXRef-B
  /// - "VARIANT_OF" : Is to be used when SPDXRef-A is a variant of (same
  /// lineage but not clear which came first) SPDXRef-B
  /// - "DISTRIBUTION_ARTIFACT" : Is to be used when distributing SPDXRef-A
  /// requires that SPDXRef-B also be distributed
  /// - "PATCH_FOR" : Is to be used when SPDXRef-A is a patch file for (to be
  /// applied to) SPDXRef-B
  /// - "PATCH_APPLIED" : Is to be used when SPDXRef-A is a patch file that has
  /// been applied to SPDXRef-B
  /// - "COPY_OF" : Is to be used when SPDXRef-A is an exact copy of SPDXRef-B
  /// - "FILE_ADDED" : Is to be used when SPDXRef-A is a file that was added to
  /// SPDXRef-B
  /// - "FILE_DELETED" : Is to be used when SPDXRef-A is a file that was deleted
  /// from SPDXRef-B
  /// - "FILE_MODIFIED" : Is to be used when SPDXRef-A is a file that was
  /// modified from SPDXRef-B
  /// - "EXPANDED_FROM_ARCHIVE" : Is to be used when SPDXRef-A is expanded from
  /// the archive SPDXRef-B
  /// - "DYNAMIC_LINK" : Is to be used when SPDXRef-A dynamically links to
  /// SPDXRef-B
  /// - "STATIC_LINK" : Is to be used when SPDXRef-A statically links to
  /// SPDXRef-B
  /// - "DATA_FILE_OF" : Is to be used when SPDXRef-A is a data file used in
  /// SPDXRef-B
  /// - "TEST_CASE_OF" : Is to be used when SPDXRef-A is a test case used in
  /// testing SPDXRef-B
  /// - "BUILD_TOOL_OF" : Is to be used when SPDXRef-A is used to build
  /// SPDXRef-B
  /// - "DEV_TOOL_OF" : Is to be used when SPDXRef-A is used as a development
  /// tool for SPDXRef-B
  /// - "TEST_OF" : Is to be used when SPDXRef-A is used for testing SPDXRef-B
  /// - "TEST_TOOL_OF" : Is to be used when SPDXRef-A is used as a test tool for
  /// SPDXRef-B
  /// - "DOCUMENTATION_OF" : Is to be used when SPDXRef-A provides documentation
  /// of SPDXRef-B
  /// - "OPTIONAL_COMPONENT_OF" : Is to be used when SPDXRef-A is an optional
  /// component of SPDXRef-B
  /// - "METAFILE_OF" : Is to be used when SPDXRef-A is a metafile of SPDXRef-B
  /// - "PACKAGE_OF" : Is to be used when SPDXRef-A is used as a package as part
  /// of SPDXRef-B
  /// - "AMENDS" : Is to be used when (current) SPDXRef-DOCUMENT amends the SPDX
  /// information in SPDXRef-B
  /// - "PREREQUISITE_FOR" : Is to be used when SPDXRef-A is a prerequisite for
  /// SPDXRef-B
  /// - "HAS_PREREQUISITE" : Is to be used when SPDXRef-A has as a prerequisite
  /// SPDXRef-B
  /// - "OTHER" : Is to be used for a relationship which has not been defined in
  /// the formal SPDX specification. A description of the relationship should be
  /// included in the Relationship comments field
  core.String? type;

  RelationshipOccurrence({
    this.comment,
    this.source,
    this.target,
    this.type,
  });

  RelationshipOccurrence.fromJson(core.Map _json)
      : this(
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comment != null) 'comment': comment!,
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
        if (type != null) 'type': type!,
      };
}

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  ProjectRepoId? projectRepoId;

  /// A server-assigned, globally unique identifier.
  core.String? uid;

  RepoId({
    this.projectRepoId,
    this.uid,
  });

  RepoId.fromJson(core.Map _json)
      : this(
          projectRepoId: _json.containsKey('projectRepoId')
              ? ProjectRepoId.fromJson(
                  _json['projectRepoId'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectRepoId != null) 'projectRepoId': projectRepoId!.toJson(),
        if (uid != null) 'uid': uid!,
      };
}

/// An entity that can have metadata.
///
/// For example, a Docker image.
class Resource {
  /// Deprecated, do not use.
  ///
  /// Use uri instead. The hash of the resource content. For example, the Docker
  /// digest.
  Hash? contentHash;

  /// Deprecated, do not use.
  ///
  /// Use uri instead. The name of the resource. For example, the name of a
  /// Docker image - "Debian".
  core.String? name;

  /// The unique URI of the resource.
  ///
  /// For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ///
  /// Required.
  core.String? uri;

  Resource({
    this.contentHash,
    this.name,
    this.uri,
  });

  Resource.fromJson(core.Map _json)
      : this(
          contentHash: _json.containsKey('contentHash')
              ? Hash.fromJson(
                  _json['contentHash'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentHash != null) 'contentHash': contentHash!.toJson(),
        if (name != null) 'name': name!,
        if (uri != null) 'uri': uri!,
      };
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
  core.String? createTime;

  /// A human-readable description of what the scan configuration does.
  ///
  /// Output only.
  core.String? description;

  /// Whether the scan is enabled.
  core.bool? enabled;

  /// The name of the scan configuration in the form of
  /// `projects/[PROJECT_ID]/scanConfigs/[SCAN_CONFIG_ID]`.
  ///
  /// Output only.
  core.String? name;

  /// The time this scan config was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ScanConfig({
    this.createTime,
    this.description,
    this.enabled,
    this.name,
    this.updateTime,
  });

  ScanConfig.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (enabled != null) 'enabled': enabled!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!.toJson(),
      };
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
  core.String? publicKeyId;

  /// The content of the signature, an opaque bytestring.
  ///
  /// The payload that this signature verifies MUST be unambiguously provided
  /// with the Signature during verification. A wrapper message might provide
  /// the payload explicitly. Alternatively, a message might have a canonical
  /// serialization that can always be unambiguously computed to derive the
  /// payload.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Signature({
    this.publicKeyId,
    this.signature,
  });

  Signature.fromJson(core.Map _json)
      : this(
          publicKeyId: _json.containsKey('publicKeyId')
              ? _json['publicKeyId'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKeyId != null) 'publicKeyId': publicKeyId!,
        if (signature != null) 'signature': signature!,
      };
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
  core.String? keyId;

  /// This field contains the corresponding signature scheme.
  ///
  /// Eg: "rsassa-pss-sha256".
  core.String? keyScheme;

  /// This field identifies the specific signing method.
  ///
  /// Eg: "rsa", "ed25519", and "ecdsa".
  core.String? keyType;

  /// This field contains the actual public key.
  core.String? publicKeyValue;

  SigningKey({
    this.keyId,
    this.keyScheme,
    this.keyType,
    this.publicKeyValue,
  });

  SigningKey.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
          keyScheme: _json.containsKey('keyScheme')
              ? _json['keyScheme'] as core.String
              : null,
          keyType: _json.containsKey('keyType')
              ? _json['keyType'] as core.String
              : null,
          publicKeyValue: _json.containsKey('publicKeyValue')
              ? _json['publicKeyValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (keyScheme != null) 'keyScheme': keyScheme!,
        if (keyType != null) 'keyType': keyType!,
        if (publicKeyValue != null) 'publicKeyValue': publicKeyValue!,
      };
}

/// Source describes the location of the source used for the build.
class Source {
  /// If provided, some of the source code used for the build may be found in
  /// these locations, in the case where the source repository had multiple
  /// remotes or submodules.
  ///
  /// This list will not include the context specified in the context field.
  core.List<SourceContext>? additionalContexts;

  /// If provided, the input binary artifacts for the build came from this
  /// location.
  core.String? artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  SourceContext? context;

  /// Hash(es) of the build source, which can be used to verify that the
  /// original source integrity was maintained in the build.
  ///
  /// The keys to this map are file paths used as build source and the values
  /// contain the hash values for those files. If the build source came in a
  /// single package such as a gzipped tarfile (.tar.gz), the FileHash will be
  /// for the single path to that file.
  core.Map<core.String, FileHashes>? fileHashes;

  Source({
    this.additionalContexts,
    this.artifactStorageSourceUri,
    this.context,
    this.fileHashes,
  });

  Source.fromJson(core.Map _json)
      : this(
          additionalContexts: _json.containsKey('additionalContexts')
              ? (_json['additionalContexts'] as core.List)
                  .map<SourceContext>((value) => SourceContext.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          artifactStorageSourceUri:
              _json.containsKey('artifactStorageSourceUri')
                  ? _json['artifactStorageSourceUri'] as core.String
                  : null,
          context: _json.containsKey('context')
              ? SourceContext.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          fileHashes: _json.containsKey('fileHashes')
              ? (_json['fileHashes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    FileHashes.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalContexts != null)
          'additionalContexts':
              additionalContexts!.map((value) => value.toJson()).toList(),
        if (artifactStorageSourceUri != null)
          'artifactStorageSourceUri': artifactStorageSourceUri!,
        if (context != null) 'context': context!.toJson(),
        if (fileHashes != null)
          'fileHashes':
              fileHashes!.map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// A SourceContext is a reference to a tree of files.
///
/// A SourceContext together with a path point to a unique revision of a single
/// file or directory.
class SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  CloudRepoSourceContext? cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  GerritSourceContext? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  GitSourceContext? git;

  /// Labels with user defined metadata.
  core.Map<core.String, core.String>? labels;

  SourceContext({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  SourceContext.fromJson(core.Map _json)
      : this(
          cloudRepo: _json.containsKey('cloudRepo')
              ? CloudRepoSourceContext.fromJson(
                  _json['cloudRepo'] as core.Map<core.String, core.dynamic>)
              : null,
          gerrit: _json.containsKey('gerrit')
              ? GerritSourceContext.fromJson(
                  _json['gerrit'] as core.Map<core.String, core.dynamic>)
              : null,
          git: _json.containsKey('git')
              ? GitSourceContext.fromJson(
                  _json['git'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRepo != null) 'cloudRepo': cloudRepo!.toJson(),
        if (gerrit != null) 'gerrit': gerrit!.toJson(),
        if (git != null) 'git': git!.toJson(),
        if (labels != null) 'labels': labels!,
      };
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
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsResponse({
    this.permissions,
  });

  TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Version contains structured information about the version of a package.
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  core.int? epoch;

  /// Whether this version is specifying part of an inclusive range.
  ///
  /// Grafeas does not have the capability to specify version ranges; instead we
  /// have fields that specify start version and end versions. At times this is
  /// insufficient - we also need to specify whether the version is included in
  /// the range or is excluded from the range. This boolean is expected to be
  /// set to true when the version is included in a range.
  core.bool? inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VERSION_KIND_UNSPECIFIED" : Unknown.
  /// - "NORMAL" : A standard package version.
  /// - "MINIMUM" : A special version representing negative infinity.
  /// - "MAXIMUM" : A special version representing positive infinity.
  core.String? kind;

  /// Required only when version kind is NORMAL.
  ///
  /// The main part of the version name.
  core.String? name;

  /// The iteration of the package build from the above version.
  core.String? revision;

  Version({
    this.epoch,
    this.inclusive,
    this.kind,
    this.name,
    this.revision,
  });

  Version.fromJson(core.Map _json)
      : this(
          epoch: _json.containsKey('epoch') ? _json['epoch'] as core.int : null,
          inclusive: _json.containsKey('inclusive')
              ? _json['inclusive'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (epoch != null) 'epoch': epoch!,
        if (inclusive != null) 'inclusive': inclusive!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (revision != null) 'revision': revision!,
      };
}

/// Vulnerability provides metadata about a security vulnerability in a Note.
class Vulnerability {
  /// The CVSS score for this vulnerability.
  core.double? cvssScore;

  /// The full description of the CVSSv3.
  CVSSv3? cvssV3;

  /// All information about the package to specifically identify this
  /// vulnerability.
  ///
  /// One entry per (version range and cpe_uri) the package vulnerability has
  /// manifested in.
  core.List<Detail>? details;

  /// Note provider assigned impact of the vulnerability.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? severity;

  /// The time this information was last changed at the source.
  ///
  /// This is an upstream timestamp from the underlying information source -
  /// e.g. Ubuntu security tracker.
  core.String? sourceUpdateTime;

  /// Windows details get their own format because the information format and
  /// model don't match a normal detail.
  ///
  /// Specifically Windows updates are done as patches, thus Windows
  /// vulnerabilities really are a missing package, rather than a package being
  /// at an incorrect version.
  core.List<WindowsDetail>? windowsDetails;

  Vulnerability({
    this.cvssScore,
    this.cvssV3,
    this.details,
    this.severity,
    this.sourceUpdateTime,
    this.windowsDetails,
  });

  Vulnerability.fromJson(core.Map _json)
      : this(
          cvssScore: _json.containsKey('cvssScore')
              ? (_json['cvssScore'] as core.num).toDouble()
              : null,
          cvssV3: _json.containsKey('cvssV3')
              ? CVSSv3.fromJson(
                  _json['cvssV3'] as core.Map<core.String, core.dynamic>)
              : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<Detail>((value) => Detail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          sourceUpdateTime: _json.containsKey('sourceUpdateTime')
              ? _json['sourceUpdateTime'] as core.String
              : null,
          windowsDetails: _json.containsKey('windowsDetails')
              ? (_json['windowsDetails'] as core.List)
                  .map<WindowsDetail>((value) => WindowsDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssScore != null) 'cvssScore': cvssScore!,
        if (cvssV3 != null) 'cvssV3': cvssV3!.toJson(),
        if (details != null)
          'details': details!.map((value) => value.toJson()).toList(),
        if (severity != null) 'severity': severity!,
        if (sourceUpdateTime != null) 'sourceUpdateTime': sourceUpdateTime!,
        if (windowsDetails != null)
          'windowsDetails':
              windowsDetails!.map((value) => value.toJson()).toList(),
      };
}

/// The location of the vulnerability.
class VulnerabilityLocation {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) format.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  ///
  /// Required.
  core.String? cpeUri;

  /// The package being described.
  ///
  /// Required.
  core.String? package;

  /// The version of the package being described.
  ///
  /// Required.
  Version? version;

  VulnerabilityLocation({
    this.cpeUri,
    this.package,
    this.version,
  });

  VulnerabilityLocation.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (package != null) 'package': package!,
        if (version != null) 'version': version!.toJson(),
      };
}

/// A summary of how many vulnerability occurrences there are per resource and
/// severity type.
class VulnerabilityOccurrencesSummary {
  /// A listing by resource of the number of fixable and total vulnerabilities.
  core.List<FixableTotalByDigest>? counts;

  VulnerabilityOccurrencesSummary({
    this.counts,
  });

  VulnerabilityOccurrencesSummary.fromJson(core.Map _json)
      : this(
          counts: _json.containsKey('counts')
              ? (_json['counts'] as core.List)
                  .map<FixableTotalByDigest>((value) =>
                      FixableTotalByDigest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (counts != null)
          'counts': counts!.map((value) => value.toJson()).toList(),
      };
}

class WindowsDetail {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which
  /// the vulnerability manifests.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  ///
  /// Required.
  core.String? cpeUri;

  /// The description of the vulnerability.
  core.String? description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability.
  ///
  /// Note that there may be multiple hotfixes (and thus multiple KBs) that
  /// mitigate a given vulnerability. Currently any listed kb's presence is
  /// considered a fix.
  ///
  /// Required.
  core.List<KnowledgeBase>? fixingKbs;

  /// The name of the vulnerability.
  ///
  /// Required.
  core.String? name;

  WindowsDetail({
    this.cpeUri,
    this.description,
    this.fixingKbs,
    this.name,
  });

  WindowsDetail.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fixingKbs: _json.containsKey('fixingKbs')
              ? (_json['fixingKbs'] as core.List)
                  .map<KnowledgeBase>((value) => KnowledgeBase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (description != null) 'description': description!,
        if (fixingKbs != null)
          'fixingKbs': fixingKbs!.map((value) => value.toJson()).toList(),
        if (name != null) 'name': name!,
      };
}
