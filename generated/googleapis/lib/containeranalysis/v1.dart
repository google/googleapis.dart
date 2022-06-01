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

/// Container Analysis API - v1
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
library containeranalysis.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/notes:batchCreate';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (noteId != null) 'noteId': [noteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/notes';

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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/notes';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/occurrences';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/occurrences:batchCreate';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/occurrences';

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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

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

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/notes';

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

    final _url = 'v1/' +
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/occurrences';

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

/// An alias to a repo revision.
typedef AliasContext = $AliasContext;

/// Artifact describes a build product.
typedef Artifact = $Artifact;

/// Note kind that represents a logical attestation "role" or "authority".
///
/// For example, an organization might have one `Authority` for "QA" and one for
/// "build". This note is intended to act strictly as a grouping mechanism for
/// the attached occurrences (Attestations). This grouping mechanism also
/// provides a security boundary, since IAM ACLs gate the ability for a
/// principle to attach an occurrence to a given note. It also provides a single
/// point of lookup to find all attached attestation occurrences, even if they
/// don't all live in the same project.
class AttestationNote {
  /// Hint hints at the purpose of the attestation authority.
  Hint? hint;

  AttestationNote({
    this.hint,
  });

  AttestationNote.fromJson(core.Map _json)
      : this(
          hint: _json.containsKey('hint')
              ? Hint.fromJson(
                  _json['hint'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hint != null) 'hint': hint!,
      };
}

/// Occurrence that represents a single "attestation".
///
/// The authenticity of an attestation can be verified using the attached
/// signature. If the verifier trusts the public key of the signer, then
/// verifying the signature is sufficient to establish trust. In this
/// circumstance, the authority to which this attestation is attached is
/// primarily useful for lookup (how to find this attestation if you already
/// know the authority and artifact to be verified) and intent (for which
/// authority this attestation was intended to sign.
class AttestationOccurrence {
  /// One or more JWTs encoding a self-contained attestation.
  ///
  /// Each JWT encodes the payload that it verifies within the JWT itself.
  /// Verifier implementation SHOULD ignore the `serialized_payload` field when
  /// verifying these JWTs. If only JWTs are present on this
  /// AttestationOccurrence, then the `serialized_payload` SHOULD be left empty.
  /// Each JWT SHOULD encode a claim specific to the `resource_uri` of this
  /// Occurrence, but this is not validated by Grafeas metadata API
  /// implementations. The JWT itself is opaque to Grafeas.
  core.List<Jwt>? jwts;

  /// The serialized payload that is verified by one or more `signatures`.
  ///
  /// Required.
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

  AttestationOccurrence({
    this.jwts,
    this.serializedPayload,
    this.signatures,
  });

  AttestationOccurrence.fromJson(core.Map _json)
      : this(
          jwts: _json.containsKey('jwts')
              ? (_json['jwts'] as core.List)
                  .map((value) => Jwt.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serializedPayload: _json.containsKey('serializedPayload')
              ? _json['serializedPayload'] as core.String
              : null,
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
                  .map((value) => Signature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jwts != null) 'jwts': jwts!,
        if (serializedPayload != null) 'serializedPayload': serializedPayload!,
        if (signatures != null) 'signatures': signatures!,
      };
}

/// Request to create notes in batch.
class BatchCreateNotesRequest {
  /// The notes to create.
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
        if (notes != null) 'notes': notes!,
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
                  .map((value) => Note.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notes != null) 'notes': notes!,
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
                  .map((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrences != null) 'occurrences': occurrences!,
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
                  .map((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrences != null) 'occurrences': occurrences!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
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

  /// Role that is assigned to the list of `members`, or principals.
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
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in the build details occurrence.
class BuildNote {
  /// Version of the builder which produced this build.
  ///
  /// Required. Immutable.
  core.String? builderVersion;

  BuildNote({
    this.builderVersion,
  });

  BuildNote.fromJson(core.Map _json)
      : this(
          builderVersion: _json.containsKey('builderVersion')
              ? _json['builderVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builderVersion != null) 'builderVersion': builderVersion!,
      };
}

/// Details of a build occurrence.
class BuildOccurrence {
  /// See InTotoStatement for the replacement.
  ///
  /// In-toto Provenance representation as defined in spec.
  ///
  /// Deprecated.
  InTotoProvenance? intotoProvenance;

  /// In-toto Statement representation as defined in spec.
  ///
  /// The intoto_statement can contain any type of provenance. The serialized
  /// payload of the statement can be stored and signed in the Occurrence's
  /// envelope.
  InTotoStatement? intotoStatement;

  /// The actual provenance for the build.
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

  BuildOccurrence({
    this.intotoProvenance,
    this.intotoStatement,
    this.provenance,
    this.provenanceBytes,
  });

  BuildOccurrence.fromJson(core.Map _json)
      : this(
          intotoProvenance: _json.containsKey('intotoProvenance')
              ? InTotoProvenance.fromJson(_json['intotoProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          intotoStatement: _json.containsKey('intotoStatement')
              ? InTotoStatement.fromJson(_json['intotoStatement']
                  as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? BuildProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          provenanceBytes: _json.containsKey('provenanceBytes')
              ? _json['provenanceBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intotoProvenance != null) 'intotoProvenance': intotoProvenance!,
        if (intotoStatement != null) 'intotoStatement': intotoStatement!,
        if (provenance != null) 'provenance': provenance!,
        if (provenanceBytes != null) 'provenanceBytes': provenanceBytes!,
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
                  .map((value) => Artifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          commands: _json.containsKey('commands')
              ? (_json['commands'] as core.List)
                  .map((value) => Command.fromJson(
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
        if (builtArtifacts != null) 'builtArtifacts': builtArtifacts!,
        if (commands != null) 'commands': commands!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (logsUri != null) 'logsUri': logsUri!,
        if (projectId != null) 'projectId': projectId!,
        if (sourceProvenance != null) 'sourceProvenance': sourceProvenance!,
        if (startTime != null) 'startTime': startTime!,
        if (triggerId != null) 'triggerId': triggerId!,
      };
}

typedef BuilderConfig = $Shared00;

/// Common Vulnerability Scoring System.
///
/// For details, see https://www.first.org/cvss/specification-document This is a
/// message we will try to use for storing various versions of CVSS rather than
/// making a separate proto for storing a specific version.
typedef CVSS = $CVSS;

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

/// The category to which the update belongs.
typedef Category = $Category;

/// A compliance check that is a CIS benchmark.
class CisBenchmark {
  core.int? profileLevel;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? severity;

  CisBenchmark({
    this.profileLevel,
    this.severity,
  });

  CisBenchmark.fromJson(core.Map _json)
      : this(
          profileLevel: _json.containsKey('profileLevel')
              ? _json['profileLevel'] as core.int
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (profileLevel != null) 'profileLevel': profileLevel!,
        if (severity != null) 'severity': severity!,
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
        if (aliasContext != null) 'aliasContext': aliasContext!,
        if (repoId != null) 'repoId': repoId!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Command describes a step performed as part of the build pipeline.
typedef Command = $Command;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef Completeness = $Completeness;

class ComplianceNote {
  CisBenchmark? cisBenchmark;

  /// A description about this compliance check.
  core.String? description;

  /// A rationale for the existence of this compliance check.
  core.String? rationale;

  /// A description of remediation steps if the compliance check fails.
  core.String? remediation;

  /// Serialized scan instructions with a predefined format.
  core.String? scanInstructions;
  core.List<core.int> get scanInstructionsAsBytes =>
      convert.base64.decode(scanInstructions!);

  set scanInstructionsAsBytes(core.List<core.int> _bytes) {
    scanInstructions =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The title that identifies this compliance check.
  core.String? title;

  /// The OS and config versions the benchmark applies to.
  core.List<ComplianceVersion>? version;

  ComplianceNote({
    this.cisBenchmark,
    this.description,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  ComplianceNote.fromJson(core.Map _json)
      : this(
          cisBenchmark: _json.containsKey('cisBenchmark')
              ? CisBenchmark.fromJson(
                  _json['cisBenchmark'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          rationale: _json.containsKey('rationale')
              ? _json['rationale'] as core.String
              : null,
          remediation: _json.containsKey('remediation')
              ? _json['remediation'] as core.String
              : null,
          scanInstructions: _json.containsKey('scanInstructions')
              ? _json['scanInstructions'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          version: _json.containsKey('version')
              ? (_json['version'] as core.List)
                  .map((value) => ComplianceVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cisBenchmark != null) 'cisBenchmark': cisBenchmark!,
        if (description != null) 'description': description!,
        if (rationale != null) 'rationale': rationale!,
        if (remediation != null) 'remediation': remediation!,
        if (scanInstructions != null) 'scanInstructions': scanInstructions!,
        if (title != null) 'title': title!,
        if (version != null) 'version': version!,
      };
}

/// An indication that the compliance checks in the associated ComplianceNote
/// were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence {
  core.String? nonComplianceReason;
  core.List<NonCompliantFile>? nonCompliantFiles;

  ComplianceOccurrence({
    this.nonComplianceReason,
    this.nonCompliantFiles,
  });

  ComplianceOccurrence.fromJson(core.Map _json)
      : this(
          nonComplianceReason: _json.containsKey('nonComplianceReason')
              ? _json['nonComplianceReason'] as core.String
              : null,
          nonCompliantFiles: _json.containsKey('nonCompliantFiles')
              ? (_json['nonCompliantFiles'] as core.List)
                  .map((value) => NonCompliantFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nonComplianceReason != null)
          'nonComplianceReason': nonComplianceReason!,
        if (nonCompliantFiles != null) 'nonCompliantFiles': nonCompliantFiles!,
      };
}

/// Describes the CIS benchmark version that is applicable to a given OS and os
/// version.
class ComplianceVersion {
  /// The name of the document that defines this benchmark, e.g. "CIS
  /// Container-Optimized OS".
  core.String? benchmarkDocument;

  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is
  /// applicable to.
  core.String? cpeUri;

  /// The version of the benchmark.
  ///
  /// This is set to the version of the OS-specific CIS document the benchmark
  /// is defined in.
  core.String? version;

  ComplianceVersion({
    this.benchmarkDocument,
    this.cpeUri,
    this.version,
  });

  ComplianceVersion.fromJson(core.Map _json)
      : this(
          benchmarkDocument: _json.containsKey('benchmarkDocument')
              ? _json['benchmarkDocument'] as core.String
              : null,
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (benchmarkDocument != null) 'benchmarkDocument': benchmarkDocument!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (version != null) 'version': version!,
      };
}

class DSSEAttestationNote {
  /// DSSEHint hints at the purpose of the attestation authority.
  DSSEHint? hint;

  DSSEAttestationNote({
    this.hint,
  });

  DSSEAttestationNote.fromJson(core.Map _json)
      : this(
          hint: _json.containsKey('hint')
              ? DSSEHint.fromJson(
                  _json['hint'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hint != null) 'hint': hint!,
      };
}

/// Prefer to use a regular Occurrence, and populate the Envelope at the top
/// level of the Occurrence.
///
/// Deprecated.
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures
  /// in this metadata.
  Envelope? envelope;
  InTotoStatement? statement;

  DSSEAttestationOccurrence({
    this.envelope,
    this.statement,
  });

  DSSEAttestationOccurrence.fromJson(core.Map _json)
      : this(
          envelope: _json.containsKey('envelope')
              ? Envelope.fromJson(
                  _json['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          statement: _json.containsKey('statement')
              ? InTotoStatement.fromJson(
                  _json['statement'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (envelope != null) 'envelope': envelope!,
        if (statement != null) 'statement': statement!,
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
class DSSEHint {
  /// The human readable name of this attestation authority, for example
  /// "cloudbuild-prod".
  ///
  /// Required.
  core.String? humanReadableName;

  DSSEHint({
    this.humanReadableName,
  });

  DSSEHint.fromJson(core.Map _json)
      : this(
          humanReadableName: _json.containsKey('humanReadableName')
              ? _json['humanReadableName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReadableName != null) 'humanReadableName': humanReadableName!,
      };
}

/// An artifact that can be deployed in some runtime.
class DeploymentNote {
  /// Resource URI for the artifact being deployed.
  ///
  /// Required.
  core.List<core.String>? resourceUri;

  DeploymentNote({
    this.resourceUri,
  });

  DeploymentNote.fromJson(core.Map _json)
      : this(
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// The period during which some deployable was active in a runtime.
typedef DeploymentOccurrence = $DeploymentOccurrence;

/// A detail for a distro and package affected by this vulnerability and its
/// associated fix (if one is available).
class Detail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability
  /// affects.
  ///
  /// Required.
  core.String? affectedCpeUri;

  /// The package this vulnerability affects.
  ///
  /// Required.
  core.String? affectedPackage;

  /// The version number at the end of an interval in which this vulnerability
  /// exists.
  ///
  /// A vulnerability can affect a package between version numbers that are
  /// disjoint sets of intervals (example: \[1.0.0-1.1.0\], \[2.4.6-2.4.8\] and
  /// \[4.5.6-4.6.8\]) each of which will be represented in its own Detail. If a
  /// specific affected version is provided by a vulnerability database,
  /// affected_version_start and affected_version_end will be the same in that
  /// Detail.
  Version? affectedVersionEnd;

  /// The version number at the start of an interval in which this vulnerability
  /// exists.
  ///
  /// A vulnerability can affect a package between version numbers that are
  /// disjoint sets of intervals (example: \[1.0.0-1.1.0\], \[2.4.6-2.4.8\] and
  /// \[4.5.6-4.6.8\]) each of which will be represented in its own Detail. If a
  /// specific affected version is provided by a vulnerability database,
  /// affected_version_start and affected_version_end will be the same in that
  /// Detail.
  Version? affectedVersionStart;

  /// A vendor-specific description of this vulnerability.
  core.String? description;

  /// The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to
  /// update to that contains a fix for this vulnerability.
  ///
  /// It is possible for this to be different from the affected_cpe_uri.
  core.String? fixedCpeUri;

  /// The distro recommended package to update to that contains a fix for this
  /// vulnerability.
  ///
  /// It is possible for this to be different from the affected_package.
  core.String? fixedPackage;

  /// The distro recommended version to update to that contains a fix for this
  /// vulnerability.
  ///
  /// Setting this to VersionKind.MAXIMUM means no such version is yet
  /// available.
  Version? fixedVersion;

  /// Whether this detail is obsolete.
  ///
  /// Occurrences are expected not to point to obsolete details.
  core.bool? isObsolete;

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  core.String? packageType;

  /// The distro assigned severity of this vulnerability.
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
    this.affectedCpeUri,
    this.affectedPackage,
    this.affectedVersionEnd,
    this.affectedVersionStart,
    this.description,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.isObsolete,
    this.packageType,
    this.severityName,
    this.source,
    this.sourceUpdateTime,
    this.vendor,
  });

  Detail.fromJson(core.Map _json)
      : this(
          affectedCpeUri: _json.containsKey('affectedCpeUri')
              ? _json['affectedCpeUri'] as core.String
              : null,
          affectedPackage: _json.containsKey('affectedPackage')
              ? _json['affectedPackage'] as core.String
              : null,
          affectedVersionEnd: _json.containsKey('affectedVersionEnd')
              ? Version.fromJson(_json['affectedVersionEnd']
                  as core.Map<core.String, core.dynamic>)
              : null,
          affectedVersionStart: _json.containsKey('affectedVersionStart')
              ? Version.fromJson(_json['affectedVersionStart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fixedCpeUri: _json.containsKey('fixedCpeUri')
              ? _json['fixedCpeUri'] as core.String
              : null,
          fixedPackage: _json.containsKey('fixedPackage')
              ? _json['fixedPackage'] as core.String
              : null,
          fixedVersion: _json.containsKey('fixedVersion')
              ? Version.fromJson(
                  _json['fixedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          isObsolete: _json.containsKey('isObsolete')
              ? _json['isObsolete'] as core.bool
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
        if (affectedCpeUri != null) 'affectedCpeUri': affectedCpeUri!,
        if (affectedPackage != null) 'affectedPackage': affectedPackage!,
        if (affectedVersionEnd != null)
          'affectedVersionEnd': affectedVersionEnd!,
        if (affectedVersionStart != null)
          'affectedVersionStart': affectedVersionStart!,
        if (description != null) 'description': description!,
        if (fixedCpeUri != null) 'fixedCpeUri': fixedCpeUri!,
        if (fixedPackage != null) 'fixedPackage': fixedPackage!,
        if (fixedVersion != null) 'fixedVersion': fixedVersion!,
        if (isObsolete != null) 'isObsolete': isObsolete!,
        if (packageType != null) 'packageType': packageType!,
        if (severityName != null) 'severityName': severityName!,
        if (source != null) 'source': source!,
        if (sourceUpdateTime != null) 'sourceUpdateTime': sourceUpdateTime!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Digest information.
class Digest {
  /// `SHA1`, `SHA512` etc.
  core.String? algo;

  /// Value of the digest encoded.
  ///
  /// For example: SHA512 - base64 encoding, SHA1 - hex encoding.
  core.String? digestValue;

  Digest({
    this.algo,
    this.digestValue,
  });

  Digest.fromJson(core.Map _json)
      : this(
          algo: _json.containsKey('algo') ? _json['algo'] as core.String : null,
          digestValue: _json.containsKey('digestValue')
              ? _json['digestValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algo != null) 'algo': algo!,
        if (digestValue != null) 'digestValue': digestValue!,
      };
}

/// A note that indicates a type of analysis a provider would perform.
///
/// This note exists in a provider's project. A `Discovery` occurrence is
/// created in a consumer's project at the start of analysis.
class DiscoveryNote {
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
  /// - "UPGRADE" : This represents an available package upgrade.
  /// - "COMPLIANCE" : This represents a Compliance Note
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  core.String? analysisKind;

  DiscoveryNote({
    this.analysisKind,
  });

  DiscoveryNote.fromJson(core.Map _json)
      : this(
          analysisKind: _json.containsKey('analysisKind')
              ? _json['analysisKind'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisKind != null) 'analysisKind': analysisKind!,
      };
}

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrence {
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

  /// The time occurrences related to this discovery occurrence were archived.
  ///
  /// Output only.
  core.String? archiveTime;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown.
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String? continuousAnalysis;

  /// The CPE of the resource being scanned.
  core.String? cpe;

  /// The last time this resource was scanned.
  core.String? lastScanTime;

  DiscoveryOccurrence({
    this.analysisStatus,
    this.analysisStatusError,
    this.archiveTime,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
  });

  DiscoveryOccurrence.fromJson(core.Map _json)
      : this(
          analysisStatus: _json.containsKey('analysisStatus')
              ? _json['analysisStatus'] as core.String
              : null,
          analysisStatusError: _json.containsKey('analysisStatusError')
              ? Status.fromJson(_json['analysisStatusError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          archiveTime: _json.containsKey('archiveTime')
              ? _json['archiveTime'] as core.String
              : null,
          continuousAnalysis: _json.containsKey('continuousAnalysis')
              ? _json['continuousAnalysis'] as core.String
              : null,
          cpe: _json.containsKey('cpe') ? _json['cpe'] as core.String : null,
          lastScanTime: _json.containsKey('lastScanTime')
              ? _json['lastScanTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisStatus != null) 'analysisStatus': analysisStatus!,
        if (analysisStatusError != null)
          'analysisStatusError': analysisStatusError!,
        if (archiveTime != null) 'archiveTime': archiveTime!,
        if (continuousAnalysis != null)
          'continuousAnalysis': continuousAnalysis!,
        if (cpe != null) 'cpe': cpe!,
        if (lastScanTime != null) 'lastScanTime': lastScanTime!,
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
        if (latestVersion != null) 'latestVersion': latestVersion!,
        if (maintainer != null) 'maintainer': maintainer!,
        if (url != null) 'url': url!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// MUST match
/// https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto.
///
/// An authenticated message of arbitrary type.
class Envelope {
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.String? payloadType;
  core.List<EnvelopeSignature>? signatures;

  Envelope({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Envelope.fromJson(core.Map _json)
      : this(
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.String
              : null,
          payloadType: _json.containsKey('payloadType')
              ? _json['payloadType'] as core.String
              : null,
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
                  .map((value) => EnvelopeSignature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
        if (payloadType != null) 'payloadType': payloadType!,
        if (signatures != null) 'signatures': signatures!,
      };
}

typedef EnvelopeSignature = $EnvelopeSignature;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
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
typedef Expr = $Expr;

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
                  .map((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null) 'fileHash': fileHash!,
      };
}

/// A set of properties that uniquely identify a given Docker image.
typedef Fingerprint = $Fingerprint;

/// Per resource and severity counts of fixable and total vulnerabilities.
class FixableTotalByDigest {
  /// The number of fixable vulnerabilities associated with this resource.
  core.String? fixableCount;

  /// The affected resource.
  core.String? resourceUri;

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
    this.resourceUri,
    this.severity,
    this.totalCount,
  });

  FixableTotalByDigest.fromJson(core.Map _json)
      : this(
          fixableCount: _json.containsKey('fixableCount')
              ? _json['fixableCount'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
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
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (severity != null) 'severity': severity!,
        if (totalCount != null) 'totalCount': totalCount!,
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
        if (aliasContext != null) 'aliasContext': aliasContext!,
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
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
typedef GitSourceContext = $GitSourceContext;

/// Indicates the location at which a package was found.
typedef GrafeasV1FileLocation = $FileLocation;

/// Identifies the entity that executed the recipe, which is trusted to have
/// correctly performed the operation and populated this provenance.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = $Shared00;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    = $GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness;

/// Describes where the config file that kicked off the build came from.
///
/// This is effectively a pointer to the source where buildConfig came from.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    = $GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource;

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation {
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource? configSource;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? environment;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(core.Map _json)
      : this(
          configSource: _json.containsKey('configSource')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
                  _json['configSource'] as core.Map<core.String, core.dynamic>)
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.Map<core.String, core.dynamic>
              : null,
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSource != null) 'configSource': configSource!,
        if (environment != null) 'environment': environment!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// The collection of artifacts that influenced the build including sources,
/// dependencies, build tools, base images, and so on.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = $Material;

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata {
  core.String? buildFinishedOn;
  core.String? buildInvocationId;
  core.String? buildStartedOn;
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness? completeness;
  core.bool? reproducible;

  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(core.Map _json)
      : this(
          buildFinishedOn: _json.containsKey('buildFinishedOn')
              ? _json['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: _json.containsKey('buildInvocationId')
              ? _json['buildInvocationId'] as core.String
              : null,
          buildStartedOn: _json.containsKey('buildStartedOn')
              ? _json['buildStartedOn'] as core.String
              : null,
          completeness: _json.containsKey('completeness')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
                  _json['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: _json.containsKey('reproducible')
              ? _json['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

/// Container message for hash values.
typedef Hash = $Hash;

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

/// The unique identifier of the update.
typedef Identity = $Identity;

/// Basis describes the base image portion (Note) of the DockerImage
/// relationship.
///
/// Linked occurrences are derived from this or an equivalent image via: FROM Or
/// an equivalent reference, e.g., a tag of the resource_url.
class ImageNote {
  /// The fingerprint of the base image.
  ///
  /// Required. Immutable.
  Fingerprint? fingerprint;

  /// The resource_url for the resource representing the basis of associated
  /// occurrence images.
  ///
  /// Required. Immutable.
  core.String? resourceUrl;

  ImageNote({
    this.fingerprint,
    this.resourceUrl,
  });

  ImageNote.fromJson(core.Map _json)
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
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
      };
}

/// Details of the derived image portion of the DockerImage relationship.
///
/// This image would be produced from a Dockerfile with FROM .
class ImageOccurrence {
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

  ImageOccurrence({
    this.baseResourceUrl,
    this.distance,
    this.fingerprint,
    this.layerInfo,
  });

  ImageOccurrence.fromJson(core.Map _json)
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
                  .map((value) => Layer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseResourceUrl != null) 'baseResourceUrl': baseResourceUrl!,
        if (distance != null) 'distance': distance!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (layerInfo != null) 'layerInfo': layerInfo!,
      };
}

class InTotoProvenance {
  /// required
  BuilderConfig? builderConfig;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  ///
  /// This is considered to be incomplete unless metadata.completeness.materials
  /// is true. Unset or null is equivalent to empty.
  core.List<core.String>? materials;
  Metadata? metadata;

  /// Identifies the configuration used for the build.
  ///
  /// When combined with materials, this SHOULD fully describe the build, such
  /// that re-running this recipe results in bit-for-bit identical output (if
  /// the build is reproducible). required
  Recipe? recipe;

  InTotoProvenance({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  InTotoProvenance.fromJson(core.Map _json)
      : this(
          builderConfig: _json.containsKey('builderConfig')
              ? BuilderConfig.fromJson(
                  _json['builderConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? Metadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          recipe: _json.containsKey('recipe')
              ? Recipe.fromJson(
                  _json['recipe'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builderConfig != null) 'builderConfig': builderConfig!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
        if (recipe != null) 'recipe': recipe!,
      };
}

/// Spec defined at
/// https://github.com/in-toto/attestation/tree/main/spec#statement The
/// serialized InTotoStatement will be stored as Envelope.payload.
///
/// Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatement {
  /// Always `https://in-toto.io/Statement/v0.1`.
  core.String? P_type;

  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  core.String? predicateType;
  InTotoProvenance? provenance;
  SlsaProvenance? slsaProvenance;
  SlsaProvenanceZeroTwo? slsaProvenanceZeroTwo;
  core.List<Subject>? subject;

  InTotoStatement({
    this.P_type,
    this.predicateType,
    this.provenance,
    this.slsaProvenance,
    this.slsaProvenanceZeroTwo,
    this.subject,
  });

  InTotoStatement.fromJson(core.Map _json)
      : this(
          P_type:
              _json.containsKey('_type') ? _json['_type'] as core.String : null,
          predicateType: _json.containsKey('predicateType')
              ? _json['predicateType'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? InTotoProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          slsaProvenance: _json.containsKey('slsaProvenance')
              ? SlsaProvenance.fromJson(_json['slsaProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          slsaProvenanceZeroTwo: _json.containsKey('slsaProvenanceZeroTwo')
              ? SlsaProvenanceZeroTwo.fromJson(_json['slsaProvenanceZeroTwo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subject: _json.containsKey('subject')
              ? (_json['subject'] as core.List)
                  .map((value) => Subject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_type != null) '_type': P_type!,
        if (predicateType != null) 'predicateType': predicateType!,
        if (provenance != null) 'provenance': provenance!,
        if (slsaProvenance != null) 'slsaProvenance': slsaProvenance!,
        if (slsaProvenanceZeroTwo != null)
          'slsaProvenanceZeroTwo': slsaProvenanceZeroTwo!,
        if (subject != null) 'subject': subject!,
      };
}

typedef Jwt = $Jwt;

class KnowledgeBase {
  /// The KB name (generally of the form KB\[0-9\]+ (e.g., KB123456)).
  core.String? name;

  /// A link to the KB in the
  /// [Windows update catalog](https://www.catalog.update.microsoft.com/).
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
typedef Layer = $Layer;

/// License information.
typedef License = $License;

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
                  .map((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (occurrences != null) 'occurrences': occurrences!,
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
                  .map((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (occurrences != null) 'occurrences': occurrences!,
      };
}

/// An occurrence of a particular package installation found within a system's
/// filesystem.
///
/// E.g., glibc was found in `/var/lib/dpkg/status`.
class Location {
  /// The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  ///
  /// Deprecated.
  core.String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String? path;

  /// The version installed at this location.
  ///
  /// Deprecated.
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
        if (version != null) 'version': version!,
      };
}

typedef Material = $Material;

/// Other properties of the build.
class Metadata {
  /// The timestamp of when the build completed.
  core.String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for
  /// finding associated logs or other ad-hoc analysis.
  ///
  /// The value SHOULD be globally unique, per in-toto Provenance spec.
  core.String? buildInvocationId;

  /// The timestamp of when the build started.
  core.String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be
  /// complete.
  Completeness? completeness;

  /// If true, the builder claims that running the recipe on materials will
  /// produce bit-for-bit identical output.
  core.bool? reproducible;

  Metadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  Metadata.fromJson(core.Map _json)
      : this(
          buildFinishedOn: _json.containsKey('buildFinishedOn')
              ? _json['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: _json.containsKey('buildInvocationId')
              ? _json['buildInvocationId'] as core.String
              : null,
          buildStartedOn: _json.containsKey('buildStartedOn')
              ? _json['buildStartedOn'] as core.String
              : null,
          completeness: _json.containsKey('completeness')
              ? Completeness.fromJson(
                  _json['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: _json.containsKey('reproducible')
              ? _json['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

/// Details about files that caused a compliance check to fail.
///
/// display_command is a single command that can be used to display a list of
/// non compliant files. When there is no such command, we can also iterate a
/// list of non compliant file using 'path'.
typedef NonCompliantFile = $NonCompliantFile;

/// A type of analysis that can be done for a resource.
class Note {
  /// A note describing an attestation role.
  AttestationNote? attestation;

  /// A note describing build provenance for a verifiable build.
  BuildNote? build;

  /// A note describing a compliance check.
  ComplianceNote? compliance;

  /// The time this note was created.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? createTime;

  /// A note describing something that can be deployed.
  DeploymentNote? deployment;

  /// A note describing the initial analysis of a resource.
  DiscoveryNote? discovery;

  /// A note describing a dsse attestation note.
  DSSEAttestationNote? dsseAttestation;

  /// Time of expiration for this note.
  ///
  /// Empty if note does not expire.
  core.String? expirationTime;

  /// A note describing a base image.
  ImageNote? image;

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
  /// - "UPGRADE" : This represents an available package upgrade.
  /// - "COMPLIANCE" : This represents a Compliance Note
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  core.String? kind;

  /// A detailed description of this note.
  core.String? longDescription;

  /// The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// Output only.
  core.String? name;

  /// A note describing a package hosted by various package managers.
  PackageNote? package;

  /// Other notes related to this note.
  core.List<core.String>? relatedNoteNames;

  /// URLs associated with this note.
  core.List<RelatedUrl>? relatedUrl;

  /// A one sentence description of this note.
  core.String? shortDescription;

  /// The time this note was last updated.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? updateTime;

  /// A note describing available package upgrades.
  UpgradeNote? upgrade;

  /// A note describing a package vulnerability.
  VulnerabilityNote? vulnerability;

  Note({
    this.attestation,
    this.build,
    this.compliance,
    this.createTime,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.image,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedNoteNames,
    this.relatedUrl,
    this.shortDescription,
    this.updateTime,
    this.upgrade,
    this.vulnerability,
  });

  Note.fromJson(core.Map _json)
      : this(
          attestation: _json.containsKey('attestation')
              ? AttestationNote.fromJson(
                  _json['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          build: _json.containsKey('build')
              ? BuildNote.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          compliance: _json.containsKey('compliance')
              ? ComplianceNote.fromJson(
                  _json['compliance'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deployment: _json.containsKey('deployment')
              ? DeploymentNote.fromJson(
                  _json['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          discovery: _json.containsKey('discovery')
              ? DiscoveryNote.fromJson(
                  _json['discovery'] as core.Map<core.String, core.dynamic>)
              : null,
          dsseAttestation: _json.containsKey('dsseAttestation')
              ? DSSEAttestationNote.fromJson(_json['dsseAttestation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          image: _json.containsKey('image')
              ? ImageNote.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          longDescription: _json.containsKey('longDescription')
              ? _json['longDescription'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          package: _json.containsKey('package')
              ? PackageNote.fromJson(
                  _json['package'] as core.Map<core.String, core.dynamic>)
              : null,
          relatedNoteNames: _json.containsKey('relatedNoteNames')
              ? (_json['relatedNoteNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          relatedUrl: _json.containsKey('relatedUrl')
              ? (_json['relatedUrl'] as core.List)
                  .map((value) => RelatedUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shortDescription: _json.containsKey('shortDescription')
              ? _json['shortDescription'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          upgrade: _json.containsKey('upgrade')
              ? UpgradeNote.fromJson(
                  _json['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
          vulnerability: _json.containsKey('vulnerability')
              ? VulnerabilityNote.fromJson(
                  _json['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!,
        if (build != null) 'build': build!,
        if (compliance != null) 'compliance': compliance!,
        if (createTime != null) 'createTime': createTime!,
        if (deployment != null) 'deployment': deployment!,
        if (discovery != null) 'discovery': discovery!,
        if (dsseAttestation != null) 'dsseAttestation': dsseAttestation!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (image != null) 'image': image!,
        if (kind != null) 'kind': kind!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (name != null) 'name': name!,
        if (package != null) 'package': package!,
        if (relatedNoteNames != null) 'relatedNoteNames': relatedNoteNames!,
        if (relatedUrl != null) 'relatedUrl': relatedUrl!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgrade != null) 'upgrade': upgrade!,
        if (vulnerability != null) 'vulnerability': vulnerability!,
      };
}

/// An instance of an analysis type that has been found on a resource.
class Occurrence {
  /// Describes an attestation of an artifact.
  AttestationOccurrence? attestation;

  /// Describes a verifiable build.
  BuildOccurrence? build;

  /// Describes a compliance violation on a linked resource.
  ComplianceOccurrence? compliance;

  /// The time this occurrence was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Describes the deployment of an artifact on a runtime.
  DeploymentOccurrence? deployment;

  /// Describes when a resource was discovered.
  DiscoveryOccurrence? discovery;

  /// Describes an attestation of an artifact using dsse.
  DSSEAttestationOccurrence? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  Envelope? envelope;

  /// Describes how this resource derives from the basis in the associated note.
  ImageOccurrence? image;

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
  /// - "UPGRADE" : This represents an available package upgrade.
  /// - "COMPLIANCE" : This represents a Compliance Note
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
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

  /// Describes the installation of a package on the linked resource.
  PackageOccurrence? package;

  /// A description of actions that can be taken to remedy the note.
  core.String? remediation;

  /// A URI that represents the resource for which the occurrence applies.
  ///
  /// For example, `https://gcr.io/project/image@sha256:123abc` for a Docker
  /// image.
  ///
  /// Required. Immutable.
  core.String? resourceUri;

  /// The time this occurrence was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Describes an available package upgrade on the linked resource.
  UpgradeOccurrence? upgrade;

  /// Describes a security vulnerability.
  VulnerabilityOccurrence? vulnerability;

  Occurrence({
    this.attestation,
    this.build,
    this.compliance,
    this.createTime,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.envelope,
    this.image,
    this.kind,
    this.name,
    this.noteName,
    this.package,
    this.remediation,
    this.resourceUri,
    this.updateTime,
    this.upgrade,
    this.vulnerability,
  });

  Occurrence.fromJson(core.Map _json)
      : this(
          attestation: _json.containsKey('attestation')
              ? AttestationOccurrence.fromJson(
                  _json['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          build: _json.containsKey('build')
              ? BuildOccurrence.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          compliance: _json.containsKey('compliance')
              ? ComplianceOccurrence.fromJson(
                  _json['compliance'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deployment: _json.containsKey('deployment')
              ? DeploymentOccurrence.fromJson(
                  _json['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          discovery: _json.containsKey('discovery')
              ? DiscoveryOccurrence.fromJson(
                  _json['discovery'] as core.Map<core.String, core.dynamic>)
              : null,
          dsseAttestation: _json.containsKey('dsseAttestation')
              ? DSSEAttestationOccurrence.fromJson(_json['dsseAttestation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          envelope: _json.containsKey('envelope')
              ? Envelope.fromJson(
                  _json['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          image: _json.containsKey('image')
              ? ImageOccurrence.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          noteName: _json.containsKey('noteName')
              ? _json['noteName'] as core.String
              : null,
          package: _json.containsKey('package')
              ? PackageOccurrence.fromJson(
                  _json['package'] as core.Map<core.String, core.dynamic>)
              : null,
          remediation: _json.containsKey('remediation')
              ? _json['remediation'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          upgrade: _json.containsKey('upgrade')
              ? UpgradeOccurrence.fromJson(
                  _json['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
          vulnerability: _json.containsKey('vulnerability')
              ? VulnerabilityOccurrence.fromJson(
                  _json['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!,
        if (build != null) 'build': build!,
        if (compliance != null) 'compliance': compliance!,
        if (createTime != null) 'createTime': createTime!,
        if (deployment != null) 'deployment': deployment!,
        if (discovery != null) 'discovery': discovery!,
        if (dsseAttestation != null) 'dsseAttestation': dsseAttestation!,
        if (envelope != null) 'envelope': envelope!,
        if (image != null) 'image': image!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (noteName != null) 'noteName': noteName!,
        if (package != null) 'package': package!,
        if (remediation != null) 'remediation': remediation!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgrade != null) 'upgrade': upgrade!,
        if (vulnerability != null) 'vulnerability': vulnerability!,
      };
}

/// A detail for a distro and package this vulnerability occurrence was found in
/// and its associated fix (if one is available).
class PackageIssue {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
  /// found in.
  ///
  /// Required.
  core.String? affectedCpeUri;

  /// The package this vulnerability was found in.
  ///
  /// Required.
  core.String? affectedPackage;

  /// The version of the package that is installed on the resource affected by
  /// this vulnerability.
  ///
  /// Required.
  Version? affectedVersion;

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

  /// The location at which this package was found.
  core.List<GrafeasV1FileLocation>? fileLocation;

  /// Whether a fix is available for this package.
  ///
  /// Output only.
  core.bool? fixAvailable;

  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
  /// fixed in.
  ///
  /// It is possible for this to be different from the affected_cpe_uri.
  core.String? fixedCpeUri;

  /// The package this vulnerability was fixed in.
  ///
  /// It is possible for this to be different from the affected_package.
  core.String? fixedPackage;

  /// The version of the package this vulnerability was fixed in.
  ///
  /// Setting this to VersionKind.MAXIMUM means no fix is yet available.
  ///
  /// Required.
  Version? fixedVersion;

  /// The type of package (e.g. OS, MAVEN, GO).
  core.String? packageType;

  PackageIssue({
    this.affectedCpeUri,
    this.affectedPackage,
    this.affectedVersion,
    this.effectiveSeverity,
    this.fileLocation,
    this.fixAvailable,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.packageType,
  });

  PackageIssue.fromJson(core.Map _json)
      : this(
          affectedCpeUri: _json.containsKey('affectedCpeUri')
              ? _json['affectedCpeUri'] as core.String
              : null,
          affectedPackage: _json.containsKey('affectedPackage')
              ? _json['affectedPackage'] as core.String
              : null,
          affectedVersion: _json.containsKey('affectedVersion')
              ? Version.fromJson(_json['affectedVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          fileLocation: _json.containsKey('fileLocation')
              ? (_json['fileLocation'] as core.List)
                  .map((value) => GrafeasV1FileLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fixAvailable: _json.containsKey('fixAvailable')
              ? _json['fixAvailable'] as core.bool
              : null,
          fixedCpeUri: _json.containsKey('fixedCpeUri')
              ? _json['fixedCpeUri'] as core.String
              : null,
          fixedPackage: _json.containsKey('fixedPackage')
              ? _json['fixedPackage'] as core.String
              : null,
          fixedVersion: _json.containsKey('fixedVersion')
              ? Version.fromJson(
                  _json['fixedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedCpeUri != null) 'affectedCpeUri': affectedCpeUri!,
        if (affectedPackage != null) 'affectedPackage': affectedPackage!,
        if (affectedVersion != null) 'affectedVersion': affectedVersion!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fileLocation != null) 'fileLocation': fileLocation!,
        if (fixAvailable != null) 'fixAvailable': fixAvailable!,
        if (fixedCpeUri != null) 'fixedCpeUri': fixedCpeUri!,
        if (fixedPackage != null) 'fixedPackage': fixedPackage!,
        if (fixedVersion != null) 'fixedVersion': fixedVersion!,
        if (packageType != null) 'packageType': packageType!,
      };
}

/// PackageNote represents a particular package version.
class PackageNote {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  ///
  /// Architecture will be blank for language packages.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture.
  /// - "X86" : X86 architecture.
  /// - "X64" : X64 architecture.
  core.String? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// The cpe_uri will be blank for language packages.
  core.String? cpeUri;

  /// The description of this package.
  core.String? description;

  /// Hash value, typically a file digest, that allows unique identification a
  /// specific package.
  core.List<Digest>? digest;

  /// The various channels by which a package is distributed.
  ///
  /// Deprecated.
  core.List<Distribution>? distribution;

  /// Licenses that have been declared by the authors of the package.
  License? license;

  /// A freeform text denoting the maintainer of this package.
  core.String? maintainer;

  /// The name of the package.
  ///
  /// Required. Immutable.
  core.String? name;

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  core.String? packageType;

  /// The homepage for this package.
  core.String? url;

  /// The version of the package.
  Version? version;

  PackageNote({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    this.name,
    this.packageType,
    this.url,
    this.version,
  });

  PackageNote.fromJson(core.Map _json)
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
          digest: _json.containsKey('digest')
              ? (_json['digest'] as core.List)
                  .map((value) => Digest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          distribution: _json.containsKey('distribution')
              ? (_json['distribution'] as core.List)
                  .map((value) => Distribution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          license: _json.containsKey('license')
              ? License.fromJson(
                  _json['license'] as core.Map<core.String, core.dynamic>)
              : null,
          maintainer: _json.containsKey('maintainer')
              ? _json['maintainer'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (description != null) 'description': description!,
        if (digest != null) 'digest': digest!,
        if (distribution != null) 'distribution': distribution!,
        if (license != null) 'license': license!,
        if (maintainer != null) 'maintainer': maintainer!,
        if (name != null) 'name': name!,
        if (packageType != null) 'packageType': packageType!,
        if (url != null) 'url': url!,
        if (version != null) 'version': version!,
      };
}

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  ///
  /// Architecture will be blank for language packages.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture.
  /// - "X86" : X86 architecture.
  /// - "X64" : X64 architecture.
  core.String? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// The cpe_uri will be blank for language packages.
  ///
  /// Output only.
  core.String? cpeUri;

  /// Licenses that have been declared by the authors of the package.
  License? license;

  /// All of the places within the filesystem versions of this package have been
  /// found.
  core.List<Location>? location;

  /// The name of the installed package.
  ///
  /// Required. Output only.
  core.String? name;

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  ///
  /// Output only.
  core.String? packageType;

  /// The version of the package.
  ///
  /// Output only.
  Version? version;

  PackageOccurrence({
    this.architecture,
    this.cpeUri,
    this.license,
    this.location,
    this.name,
    this.packageType,
    this.version,
  });

  PackageOccurrence.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          license: _json.containsKey('license')
              ? License.fromJson(
                  _json['license'] as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? (_json['location'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (license != null) 'license': license!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (packageType != null) 'packageType': packageType!,
        if (version != null) 'version': version!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
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
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
typedef ProjectRepoId = $ProjectRepoId;

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
typedef Recipe = $Recipe;

/// Metadata for any related URL information.
typedef RelatedUrl = $RelatedUrl;

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
        if (projectRepoId != null) 'projectRepoId': projectRepoId!,
        if (uid != null) 'uid': uid!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
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
        if (policy != null) 'policy': policy!,
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
typedef Signature = $Signature;
typedef SlsaBuilder = $Shared00;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef SlsaCompleteness = $Completeness;

/// Other properties of the build.
class SlsaMetadata {
  /// The timestamp of when the build completed.
  core.String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for
  /// finding associated logs or other ad-hoc analysis.
  ///
  /// The value SHOULD be globally unique, per in-toto Provenance spec.
  core.String? buildInvocationId;

  /// The timestamp of when the build started.
  core.String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be
  /// complete.
  SlsaCompleteness? completeness;

  /// If true, the builder claims that running the recipe on materials will
  /// produce bit-for-bit identical output.
  core.bool? reproducible;

  SlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  SlsaMetadata.fromJson(core.Map _json)
      : this(
          buildFinishedOn: _json.containsKey('buildFinishedOn')
              ? _json['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: _json.containsKey('buildInvocationId')
              ? _json['buildInvocationId'] as core.String
              : null,
          buildStartedOn: _json.containsKey('buildStartedOn')
              ? _json['buildStartedOn'] as core.String
              : null,
          completeness: _json.containsKey('completeness')
              ? SlsaCompleteness.fromJson(
                  _json['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: _json.containsKey('reproducible')
              ? _json['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

class SlsaProvenance {
  /// required
  SlsaBuilder? builder;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  ///
  /// This is considered to be incomplete unless metadata.completeness.materials
  /// is true. Unset or null is equivalent to empty.
  core.List<Material>? materials;
  SlsaMetadata? metadata;

  /// Identifies the configuration used for the build.
  ///
  /// When combined with materials, this SHOULD fully describe the build, such
  /// that re-running this recipe results in bit-for-bit identical output (if
  /// the build is reproducible). required
  SlsaRecipe? recipe;

  SlsaProvenance({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  SlsaProvenance.fromJson(core.Map _json)
      : this(
          builder: _json.containsKey('builder')
              ? SlsaBuilder.fromJson(
                  _json['builder'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map((value) => Material.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? SlsaMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          recipe: _json.containsKey('recipe')
              ? SlsaRecipe.fromJson(
                  _json['recipe'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builder != null) 'builder': builder!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
        if (recipe != null) 'recipe': recipe!,
      };
}

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? buildConfig;
  core.String? buildType;
  GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder? builder;
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation? invocation;
  core.List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>? materials;
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata? metadata;

  SlsaProvenanceZeroTwo({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  SlsaProvenanceZeroTwo.fromJson(core.Map _json)
      : this(
          buildConfig: _json.containsKey('buildConfig')
              ? _json['buildConfig'] as core.Map<core.String, core.dynamic>
              : null,
          buildType: _json.containsKey('buildType')
              ? _json['buildType'] as core.String
              : null,
          builder: _json.containsKey('builder')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
                  _json['builder'] as core.Map<core.String, core.dynamic>)
              : null,
          invocation: _json.containsKey('invocation')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
                  _json['invocation'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map((value) =>
                      GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildConfig != null) 'buildConfig': buildConfig!,
        if (buildType != null) 'buildType': buildType!,
        if (builder != null) 'builder': builder!,
        if (invocation != null) 'invocation': invocation!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
typedef SlsaRecipe = $SlsaRecipe;

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
                  .map((value) => SourceContext.fromJson(
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
          'additionalContexts': additionalContexts!,
        if (artifactStorageSourceUri != null)
          'artifactStorageSourceUri': artifactStorageSourceUri!,
        if (context != null) 'context': context!,
        if (fileHashes != null) 'fileHashes': fileHashes!,
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
        if (cloudRepo != null) 'cloudRepo': cloudRepo!,
        if (gerrit != null) 'gerrit': gerrit!,
        if (git != null) 'git': git!,
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
typedef Status = $Status;
typedef Subject = $Subject;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The Upgrade Distribution represents metadata about the Upgrade for each
/// operating system (CPE).
///
/// Some distributions have additional metadata around updates, classifying them
/// into various categories and severities.
typedef UpgradeDistribution = $UpgradeDistribution;

/// An Upgrade Note represents a potential upgrade of a package to a given
/// version.
///
/// For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
/// there will be an Upgrade Note. For Windows, windows_update field represents
/// the information related to the update.
class UpgradeNote {
  /// Metadata about the upgrade for each specific operating system.
  core.List<UpgradeDistribution>? distributions;

  /// Required for non-Windows OS.
  ///
  /// The package this Upgrade is for.
  core.String? package;

  /// Required for non-Windows OS.
  ///
  /// The version of the package in machine + human readable form.
  Version? version;

  /// Required for Windows OS.
  ///
  /// Represents the metadata about the Windows update.
  WindowsUpdate? windowsUpdate;

  UpgradeNote({
    this.distributions,
    this.package,
    this.version,
    this.windowsUpdate,
  });

  UpgradeNote.fromJson(core.Map _json)
      : this(
          distributions: _json.containsKey('distributions')
              ? (_json['distributions'] as core.List)
                  .map((value) => UpgradeDistribution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsUpdate: _json.containsKey('windowsUpdate')
              ? WindowsUpdate.fromJson(
                  _json['windowsUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distributions != null) 'distributions': distributions!,
        if (package != null) 'package': package!,
        if (version != null) 'version': version!,
        if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!,
      };
}

/// An Upgrade Occurrence represents that a specific resource_url could install
/// a specific upgrade.
///
/// This presence is supplied via local sources (i.e. it is present in the
/// mirror and the running system has noticed its availability). For Windows,
/// both distribution and windows_update contain information for the Windows
/// update.
class UpgradeOccurrence {
  /// Metadata about the upgrade for available for the specific operating system
  /// for the resource_url.
  ///
  /// This allows efficient filtering, as well as making it easier to use the
  /// occurrence.
  UpgradeDistribution? distribution;

  /// Required for non-Windows OS.
  ///
  /// The package this Upgrade is for.
  core.String? package;

  /// Required for non-Windows OS.
  ///
  /// The version of the package in a machine + human readable form.
  Version? parsedVersion;

  /// Required for Windows OS.
  ///
  /// Represents the metadata about the Windows update.
  WindowsUpdate? windowsUpdate;

  UpgradeOccurrence({
    this.distribution,
    this.package,
    this.parsedVersion,
    this.windowsUpdate,
  });

  UpgradeOccurrence.fromJson(core.Map _json)
      : this(
          distribution: _json.containsKey('distribution')
              ? UpgradeDistribution.fromJson(
                  _json['distribution'] as core.Map<core.String, core.dynamic>)
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          parsedVersion: _json.containsKey('parsedVersion')
              ? Version.fromJson(
                  _json['parsedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsUpdate: _json.containsKey('windowsUpdate')
              ? WindowsUpdate.fromJson(
                  _json['windowsUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distribution != null) 'distribution': distribution!,
        if (package != null) 'package': package!,
        if (parsedVersion != null) 'parsedVersion': parsedVersion!,
        if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!,
      };
}

/// Version contains structured information about the version of a package.
typedef Version = $Version;

/// A security vulnerability that can be found in resources.
class VulnerabilityNote {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10
  /// indicates high severity.
  core.double? cvssScore;

  /// The full description of the CVSSv3 for this vulnerability.
  CVSSv3? cvssV3;

  /// Details of all known distros and packages affected by this vulnerability.
  core.List<Detail>? details;

  /// The note provider assigned severity of this vulnerability.
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

  VulnerabilityNote({
    this.cvssScore,
    this.cvssV3,
    this.details,
    this.severity,
    this.sourceUpdateTime,
    this.windowsDetails,
  });

  VulnerabilityNote.fromJson(core.Map _json)
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
                  .map((value) => Detail.fromJson(
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
                  .map((value) => WindowsDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssScore != null) 'cvssScore': cvssScore!,
        if (cvssV3 != null) 'cvssV3': cvssV3!,
        if (details != null) 'details': details!,
        if (severity != null) 'severity': severity!,
        if (sourceUpdateTime != null) 'sourceUpdateTime': sourceUpdateTime!,
        if (windowsDetails != null) 'windowsDetails': windowsDetails!,
      };
}

/// An occurrence of a severity vulnerability on a resource.
class VulnerabilityOccurrence {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double? cvssScore;

  /// The cvss v3 score for the vulnerability.
  CVSS? cvssv3;

  /// The distro assigned severity for this vulnerability when it is available,
  /// otherwise this is the note provider assigned severity.
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

  /// Whether at least one of the affected packages has a fix available.
  ///
  /// Output only.
  core.bool? fixAvailable;

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

  /// The note provider assigned severity of this vulnerability.
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

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  core.String? type;

  VulnerabilityOccurrence({
    this.cvssScore,
    this.cvssv3,
    this.effectiveSeverity,
    this.fixAvailable,
    this.longDescription,
    this.packageIssue,
    this.relatedUrls,
    this.severity,
    this.shortDescription,
    this.type,
  });

  VulnerabilityOccurrence.fromJson(core.Map _json)
      : this(
          cvssScore: _json.containsKey('cvssScore')
              ? (_json['cvssScore'] as core.num).toDouble()
              : null,
          cvssv3: _json.containsKey('cvssv3')
              ? CVSS.fromJson(
                  _json['cvssv3'] as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          fixAvailable: _json.containsKey('fixAvailable')
              ? _json['fixAvailable'] as core.bool
              : null,
          longDescription: _json.containsKey('longDescription')
              ? _json['longDescription'] as core.String
              : null,
          packageIssue: _json.containsKey('packageIssue')
              ? (_json['packageIssue'] as core.List)
                  .map((value) => PackageIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relatedUrls: _json.containsKey('relatedUrls')
              ? (_json['relatedUrls'] as core.List)
                  .map((value) => RelatedUrl.fromJson(
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
        if (cvssv3 != null) 'cvssv3': cvssv3!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fixAvailable != null) 'fixAvailable': fixAvailable!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (packageIssue != null) 'packageIssue': packageIssue!,
        if (relatedUrls != null) 'relatedUrls': relatedUrls!,
        if (severity != null) 'severity': severity!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (type != null) 'type': type!,
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
                  .map((value) => FixableTotalByDigest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (counts != null) 'counts': counts!,
      };
}

class WindowsDetail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability
  /// affects.
  ///
  /// Required.
  core.String? cpeUri;

  /// The description of this vulnerability.
  core.String? description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability.
  ///
  /// Note that there may be multiple hotfixes (and thus multiple KBs) that
  /// mitigate a given vulnerability. Currently any listed KBs presence is
  /// considered a fix.
  ///
  /// Required.
  core.List<KnowledgeBase>? fixingKbs;

  /// The name of this vulnerability.
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
                  .map((value) => KnowledgeBase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (description != null) 'description': description!,
        if (fixingKbs != null) 'fixingKbs': fixingKbs!,
        if (name != null) 'name': name!,
      };
}

/// Windows Update represents the metadata about the update for the Windows
/// operating system.
///
/// The fields in this message come from the Windows Update API documented at
/// https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdate {
  /// The list of categories to which the update belongs.
  core.List<Category>? categories;

  /// The localized description of the update.
  core.String? description;

  /// Required - The unique identifier for the update.
  Identity? identity;

  /// The Microsoft Knowledge Base article IDs that are associated with the
  /// update.
  core.List<core.String>? kbArticleIds;

  /// The last published timestamp of the update.
  core.String? lastPublishedTimestamp;

  /// The hyperlink to the support information for the update.
  core.String? supportUrl;

  /// The localized title of the update.
  core.String? title;

  WindowsUpdate({
    this.categories,
    this.description,
    this.identity,
    this.kbArticleIds,
    this.lastPublishedTimestamp,
    this.supportUrl,
    this.title,
  });

  WindowsUpdate.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          identity: _json.containsKey('identity')
              ? Identity.fromJson(
                  _json['identity'] as core.Map<core.String, core.dynamic>)
              : null,
          kbArticleIds: _json.containsKey('kbArticleIds')
              ? (_json['kbArticleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastPublishedTimestamp: _json.containsKey('lastPublishedTimestamp')
              ? _json['lastPublishedTimestamp'] as core.String
              : null,
          supportUrl: _json.containsKey('supportUrl')
              ? _json['supportUrl'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (description != null) 'description': description!,
        if (identity != null) 'identity': identity!,
        if (kbArticleIds != null) 'kbArticleIds': kbArticleIds!,
        if (lastPublishedTimestamp != null)
          'lastPublishedTimestamp': lastPublishedTimestamp!,
        if (supportUrl != null) 'supportUrl': supportUrl!,
        if (title != null) 'title': title!,
      };
}
