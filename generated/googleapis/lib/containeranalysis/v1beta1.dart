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

/// Container Analysis API - v1beta1
///
/// This API is a prerequisite for leveraging Artifact Analysis scanning
/// capabilities in Artifact Registry. In addition, the Container Analysis API
/// is an implementation of the Grafeas API, which enables storing, querying,
/// and retrieval of critical metadata about all of your software artifacts.
///
/// For more information, see
/// <https://cloud.google.com/container-analysis/api/reference/rest/>
///
/// Create an instance of [ContainerAnalysisApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsNotesResource]
///       - [ProjectsLocationsNotesOccurrencesResource]
///     - [ProjectsLocationsOccurrencesResource]
///     - [ProjectsLocationsResourcesResource]
///   - [ProjectsNotesResource]
///     - [ProjectsNotesOccurrencesResource]
///   - [ProjectsOccurrencesResource]
///   - [ProjectsResourcesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// This API is a prerequisite for leveraging Artifact Analysis scanning
/// capabilities in Artifact Registry.
///
/// In addition, the Container Analysis API is an implementation of the Grafeas
/// API, which enables storing, querying, and retrieval of critical metadata
/// about all of your software artifacts.
class ContainerAnalysisApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContainerAnalysisApi(
    http.Client client, {
    core.String rootUrl = 'https://containeranalysis.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsNotesResource get notes => ProjectsNotesResource(_requester);
  ProjectsOccurrencesResource get occurrences =>
      ProjectsOccurrencesResource(_requester);
  ProjectsResourcesResource get resources =>
      ProjectsResourcesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNotesResource get notes =>
      ProjectsLocationsNotesResource(_requester);
  ProjectsLocationsOccurrencesResource get occurrences =>
      ProjectsLocationsOccurrencesResource(_requester);
  ProjectsLocationsResourcesResource get resources =>
      ProjectsLocationsResourcesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsNotesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNotesOccurrencesResource get occurrences =>
      ProjectsLocationsNotesOccurrencesResource(_requester);

  ProjectsLocationsNotesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new notes in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the notes are to be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the note is to be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noteId != null) 'noteId': [noteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified note.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
  async.Future<Note> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notes for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list notes for in the form
  /// of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of notes to return in the list. Must be positive. Max
  /// allowed page size is 1000. If not specified, page size defaults to 20.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// Notes and report all unreachable regions in the `unreachable` field in the
  /// response. Only applicable for requests in the global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified note.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the note in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNotesOccurrencesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNotesOccurrencesResource(commons.ApiRequester client)
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notes/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNoteOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOccurrencesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOccurrencesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new occurrences in batch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the occurrences are to be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in the form of
  /// `projects/[PROJECT_ID]`, under which the occurrence is to be created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified occurrence.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
  async.Future<Occurrence> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
  async.Future<Note> getNotes(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a summary of the number and severity of occurrences.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to get a vulnerability
  /// summary for in the form of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// occurrence summaries and report all unreachable regions in the
  /// `unreachable` field in the response. Only applicable for requests in the
  /// global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:vulnerabilitySummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VulnerabilityOccurrencesSummary.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists occurrences for the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project to list occurrences for in
  /// the form of `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of occurrences to return in the list. Must be
  /// positive. Max allowed page size is 1000. If not specified, page size
  /// defaults to 20.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// Occurrences and report all unreachable regions in the `unreachable` field
  /// in the response. Only applicable for requests in the global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/occurrences/\[^/\]+$`.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an SBOM and other dependency information for the given resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource in the form of
  /// `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/resources/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExportSBOMResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExportSBOMResponse> exportSBOM(
    ExportSBOMRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':exportSBOM';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExportSBOMResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a summary of the packages within a given resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource to get a packages summary for
  /// in the form of `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/resources/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PackagesSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PackagesSummaryResponse> generatePackagesSummary(
    GeneratePackagesSummaryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':generatePackagesSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PackagesSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noteId != null) 'noteId': [noteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Note> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// Notes and report all unreachable regions in the `unreachable` field in the
  /// response. Only applicable for requests in the global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNoteOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Occurrence> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Note> getNotes(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// occurrence summaries and report all unreachable regions in the
  /// `unreachable` field in the response. Only applicable for requests in the
  /// global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:vulnerabilitySummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VulnerabilityOccurrencesSummary.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [returnPartialSuccess] - If set, the request will return all reachable
  /// Occurrences and report all unreachable regions in the `unreachable` field
  /// in the response. Only applicable for requests in the global region.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsResourcesResource(commons.ApiRequester client) : _requester = client;

  /// Generates an SBOM and other dependency information for the given resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource in the form of
  /// `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`.
  /// Value must have pattern `^projects/\[^/\]+/resources/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExportSBOMResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExportSBOMResponse> exportSBOM(
    ExportSBOMRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':exportSBOM';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExportSBOMResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a summary of the packages within a given resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource to get a packages summary for
  /// in the form of `projects/[PROJECT_ID]/resources/[RESOURCE_URL]`.
  /// Value must have pattern `^projects/\[^/\]+/resources/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PackagesSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PackagesSummaryResponse> generatePackagesSummary(
    GeneratePackagesSummaryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$name') + ':generatePackagesSummary';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PackagesSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An alias to a repo revision.
typedef AliasContext = $AliasContext;

/// Indicates which analysis completed successfully.
///
/// Multiple types of analysis can be performed on a single resource.
typedef AnalysisCompleted = $AnalysisCompleted;

/// Artifact describes a build product.
typedef Artifact = $Artifact00;

/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  core.String? sha256;

  ArtifactHashes({this.sha256});

  ArtifactHashes.fromJson(core.Map json_)
    : this(sha256: json_['sha256'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (sha256 != null) 'sha256': sha256!,
  };
}

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  core.List<core.String>? artifactRule;

  ArtifactRule({this.artifactRule});

  ArtifactRule.fromJson(core.Map json_)
    : this(
        artifactRule:
            (json_['artifactRule'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (artifactRule != null) 'artifactRule': artifactRule!,
  };
}

/// Assessment provides all information that is related to a single
/// vulnerability for this product.
class Assessment {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE)
  /// tracking number for the vulnerability.
  ///
  /// Deprecated: Use vulnerability_id instead to denote CVEs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? cve;

  /// Contains information about the impact of this vulnerability, this will
  /// change with time.
  core.List<core.String>? impacts;

  /// Justification provides the justification when the state of the assessment
  /// if NOT_AFFECTED.
  Justification? justification;

  /// A detailed description of this Vex.
  core.String? longDescription;

  /// Holds a list of references associated with this vulnerability item and
  /// assessment.
  ///
  /// These uris have additional information about the vulnerability and the
  /// assessment itself. E.g. Link to a document which details how this
  /// assessment concluded the state of this vulnerability.
  core.List<RelatedUrl>? relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  core.List<Remediation>? remediations;

  /// A one sentence description of this Vex.
  core.String? shortDescription;

  /// Provides the state of this Vulnerability assessment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state is specified.
  /// - "AFFECTED" : This product is known to be affected by this vulnerability.
  /// - "NOT_AFFECTED" : This product is known to be not affected by this
  /// vulnerability.
  /// - "FIXED" : This product contains a fix for this vulnerability.
  /// - "UNDER_INVESTIGATION" : It is not known yet whether these versions are
  /// or are not affected by the vulnerability. However, it is still under
  /// investigation.
  core.String? state;

  /// The vulnerability identifier for this Assessment.
  ///
  /// Will hold one of common identifiers e.g. CVE, GHSA etc.
  core.String? vulnerabilityId;

  Assessment({
    this.cve,
    this.impacts,
    this.justification,
    this.longDescription,
    this.relatedUris,
    this.remediations,
    this.shortDescription,
    this.state,
    this.vulnerabilityId,
  });

  Assessment.fromJson(core.Map json_)
    : this(
        cve: json_['cve'] as core.String?,
        impacts:
            (json_['impacts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        justification:
            json_.containsKey('justification')
                ? Justification.fromJson(
                  json_['justification'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        longDescription: json_['longDescription'] as core.String?,
        relatedUris:
            (json_['relatedUris'] as core.List?)
                ?.map(
                  (value) => RelatedUrl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        remediations:
            (json_['remediations'] as core.List?)
                ?.map(
                  (value) => Remediation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shortDescription: json_['shortDescription'] as core.String?,
        state: json_['state'] as core.String?,
        vulnerabilityId: json_['vulnerabilityId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cve != null) 'cve': cve!,
    if (impacts != null) 'impacts': impacts!,
    if (justification != null) 'justification': justification!,
    if (longDescription != null) 'longDescription': longDescription!,
    if (relatedUris != null) 'relatedUris': relatedUris!,
    if (remediations != null) 'remediations': remediations!,
    if (shortDescription != null) 'shortDescription': shortDescription!,
    if (state != null) 'state': state!,
    if (vulnerabilityId != null) 'vulnerabilityId': vulnerabilityId!,
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

  Attestation({this.genericSignedAttestation, this.pgpSignedAttestation});

  Attestation.fromJson(core.Map json_)
    : this(
        genericSignedAttestation:
            json_.containsKey('genericSignedAttestation')
                ? GenericSignedAttestation.fromJson(
                  json_['genericSignedAttestation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pgpSignedAttestation:
            json_.containsKey('pgpSignedAttestation')
                ? PgpSignedAttestation.fromJson(
                  json_['pgpSignedAttestation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (genericSignedAttestation != null)
      'genericSignedAttestation': genericSignedAttestation!,
    if (pgpSignedAttestation != null)
      'pgpSignedAttestation': pgpSignedAttestation!,
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

  Authority({this.hint});

  Authority.fromJson(core.Map json_)
    : this(
        hint:
            json_.containsKey('hint')
                ? Hint.fromJson(
                  json_['hint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hint != null) 'hint': hint!,
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

  Basis({this.fingerprint, this.resourceUrl});

  Basis.fromJson(core.Map json_)
    : this(
        fingerprint:
            json_.containsKey('fingerprint')
                ? Fingerprint.fromJson(
                  json_['fingerprint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceUrl: json_['resourceUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fingerprint != null) 'fingerprint': fingerprint!,
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

  BatchCreateNotesRequest({this.notes});

  BatchCreateNotesRequest.fromJson(core.Map json_)
    : this(
        notes: (json_['notes'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Note.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (notes != null) 'notes': notes!,
  };
}

/// Response for creating notes in batch.
class BatchCreateNotesResponse {
  /// The notes that were created.
  core.List<Note>? notes;

  BatchCreateNotesResponse({this.notes});

  BatchCreateNotesResponse.fromJson(core.Map json_)
    : this(
        notes:
            (json_['notes'] as core.List?)
                ?.map(
                  (value) => Note.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  BatchCreateOccurrencesRequest({this.occurrences});

  BatchCreateOccurrencesRequest.fromJson(core.Map json_)
    : this(
        occurrences:
            (json_['occurrences'] as core.List?)
                ?.map(
                  (value) => Occurrence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (occurrences != null) 'occurrences': occurrences!,
  };
}

/// Response for creating occurrences in batch.
class BatchCreateOccurrencesResponse {
  /// The occurrences that were created.
  core.List<Occurrence>? occurrences;

  BatchCreateOccurrencesResponse({this.occurrences});

  BatchCreateOccurrencesResponse.fromJson(core.Map json_)
    : this(
        occurrences:
            (json_['occurrences'] as core.List?)
                ?.map(
                  (value) => Occurrence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
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

  Build({this.builderVersion, this.signature});

  Build.fromJson(core.Map json_)
    : this(
        builderVersion: json_['builderVersion'] as core.String?,
        signature:
            json_.containsKey('signature')
                ? BuildSignature.fromJson(
                  json_['signature'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builderVersion != null) 'builderVersion': builderVersion!,
    if (signature != null) 'signature': signature!,
  };
}

class BuildDefinition {
  core.String? buildType;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? externalParameters;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? internalParameters;
  core.List<ResourceDescriptor>? resolvedDependencies;

  BuildDefinition({
    this.buildType,
    this.externalParameters,
    this.internalParameters,
    this.resolvedDependencies,
  });

  BuildDefinition.fromJson(core.Map json_)
    : this(
        buildType: json_['buildType'] as core.String?,
        externalParameters:
            json_.containsKey('externalParameters')
                ? json_['externalParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        internalParameters:
            json_.containsKey('internalParameters')
                ? json_['internalParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        resolvedDependencies:
            (json_['resolvedDependencies'] as core.List?)
                ?.map(
                  (value) => ResourceDescriptor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildType != null) 'buildType': buildType!,
    if (externalParameters != null) 'externalParameters': externalParameters!,
    if (internalParameters != null) 'internalParameters': internalParameters!,
    if (resolvedDependencies != null)
      'resolvedDependencies': resolvedDependencies!,
  };
}

typedef BuildMetadata = $BuildMetadata;

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

  BuildProvenance.fromJson(core.Map json_)
    : this(
        buildOptions: (json_['buildOptions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        builderVersion: json_['builderVersion'] as core.String?,
        builtArtifacts:
            (json_['builtArtifacts'] as core.List?)
                ?.map(
                  (value) => Artifact.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        commands:
            (json_['commands'] as core.List?)
                ?.map(
                  (value) => Command.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        id: json_['id'] as core.String?,
        logsUri: json_['logsUri'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        sourceProvenance:
            json_.containsKey('sourceProvenance')
                ? Source.fromJson(
                  json_['sourceProvenance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        startTime: json_['startTime'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
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

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  BuildSignature({this.keyId, this.keyType, this.publicKey, this.signature});

  BuildSignature.fromJson(core.Map json_)
    : this(
        keyId: json_['keyId'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        publicKey: json_['publicKey'] as core.String?,
        signature: json_['signature'] as core.String?,
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
typedef ByProducts = $Shared18;

/// Common Vulnerability Scoring System.
///
/// This message is compatible with CVSS v2 and v3. For CVSS v2 details, see
/// https://www.first.org/cvss/v2/guide CVSS v2 calculator:
/// https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details,
/// see https://www.first.org/cvss/specification-document CVSS v3 calculator:
/// https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
typedef CVSS = $CVSS01;

/// Common Vulnerability Scoring System version 3.
///
/// For details, see https://www.first.org/cvss/specification-document
///
/// Deprecated.
typedef CVSSv3 = $CVSSv300;

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext? aliasContext;

  /// The ID of the repo.
  RepoId? repoId;

  /// A revision ID.
  core.String? revisionId;

  CloudRepoSourceContext({this.aliasContext, this.repoId, this.revisionId});

  CloudRepoSourceContext.fromJson(core.Map json_)
    : this(
        aliasContext:
            json_.containsKey('aliasContext')
                ? AliasContext.fromJson(
                  json_['aliasContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        repoId:
            json_.containsKey('repoId')
                ? RepoId.fromJson(
                  json_['repoId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        revisionId: json_['revisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aliasContext != null) 'aliasContext': aliasContext!,
    if (repoId != null) 'repoId': repoId!,
    if (revisionId != null) 'revisionId': revisionId!,
  };
}

/// Command describes a step performed as part of the build pipeline.
typedef Command = $Command;

/// An artifact that can be deployed in some runtime.
typedef Deployable = $Shared17;

/// The period during which some deployable was active in a runtime.
typedef Deployment = $Shared07;

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

  Derived.fromJson(core.Map json_)
    : this(
        baseResourceUrl: json_['baseResourceUrl'] as core.String?,
        distance: json_['distance'] as core.int?,
        fingerprint:
            json_.containsKey('fingerprint')
                ? Fingerprint.fromJson(
                  json_['fingerprint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        layerInfo:
            (json_['layerInfo'] as core.List?)
                ?.map(
                  (value) => Layer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseResourceUrl != null) 'baseResourceUrl': baseResourceUrl!,
    if (distance != null) 'distance': distance!,
    if (fingerprint != null) 'fingerprint': fingerprint!,
    if (layerInfo != null) 'layerInfo': layerInfo!,
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

  Detail.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        description: json_['description'] as core.String?,
        fixedLocation:
            json_.containsKey('fixedLocation')
                ? VulnerabilityLocation.fromJson(
                  json_['fixedLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isObsolete: json_['isObsolete'] as core.bool?,
        maxAffectedVersion:
            json_.containsKey('maxAffectedVersion')
                ? Version.fromJson(
                  json_['maxAffectedVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        minAffectedVersion:
            json_.containsKey('minAffectedVersion')
                ? Version.fromJson(
                  json_['minAffectedVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        package: json_['package'] as core.String?,
        packageType: json_['packageType'] as core.String?,
        severityName: json_['severityName'] as core.String?,
        source: json_['source'] as core.String?,
        sourceUpdateTime: json_['sourceUpdateTime'] as core.String?,
        vendor: json_['vendor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpeUri != null) 'cpeUri': cpeUri!,
    if (description != null) 'description': description!,
    if (fixedLocation != null) 'fixedLocation': fixedLocation!,
    if (isObsolete != null) 'isObsolete': isObsolete!,
    if (maxAffectedVersion != null) 'maxAffectedVersion': maxAffectedVersion!,
    if (minAffectedVersion != null) 'minAffectedVersion': minAffectedVersion!,
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

  Details({this.attestation});

  Details.fromJson(core.Map json_)
    : this(
        attestation:
            json_.containsKey('attestation')
                ? Attestation.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attestation != null) 'attestation': attestation!,
  };
}

/// Digest information.
typedef Digest = $Digest;

/// Provides information about the analysis status of a discovered resource.
class Discovered {
  AnalysisCompleted? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource.
  ///
  /// There could be 0 or more of these errors.
  core.List<Status>? analysisError;

  /// The status of discovery for the resource.
  /// Possible string values are:
  /// - "ANALYSIS_STATUS_UNSPECIFIED" : Unknown.
  /// - "PENDING" : Resource is known but no action has been taken yet.
  /// - "SCANNING" : Resource is being analyzed.
  /// - "FINISHED_SUCCESS" : Analysis has finished successfully.
  /// - "COMPLETE" : Analysis has completed.
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

  /// Files that make up the resource described by the occurrence.
  core.List<File>? files;

  /// The last time continuous analysis was done for this resource.
  ///
  /// Deprecated, do not use.
  core.String? lastAnalysisTime;

  /// The last time this resource was scanned.
  core.String? lastScanTime;

  /// The status of an SBOM generation.
  SBOMStatus? sbomStatus;

  Discovered({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.files,
    this.lastAnalysisTime,
    this.lastScanTime,
    this.sbomStatus,
  });

  Discovered.fromJson(core.Map json_)
    : this(
        analysisCompleted:
            json_.containsKey('analysisCompleted')
                ? AnalysisCompleted.fromJson(
                  json_['analysisCompleted']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        analysisError:
            (json_['analysisError'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        analysisStatus: json_['analysisStatus'] as core.String?,
        analysisStatusError:
            json_.containsKey('analysisStatusError')
                ? Status.fromJson(
                  json_['analysisStatusError']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        continuousAnalysis: json_['continuousAnalysis'] as core.String?,
        files:
            (json_['files'] as core.List?)
                ?.map(
                  (value) => File.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastAnalysisTime: json_['lastAnalysisTime'] as core.String?,
        lastScanTime: json_['lastScanTime'] as core.String?,
        sbomStatus:
            json_.containsKey('sbomStatus')
                ? SBOMStatus.fromJson(
                  json_['sbomStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analysisCompleted != null) 'analysisCompleted': analysisCompleted!,
    if (analysisError != null) 'analysisError': analysisError!,
    if (analysisStatus != null) 'analysisStatus': analysisStatus!,
    if (analysisStatusError != null)
      'analysisStatusError': analysisStatusError!,
    if (continuousAnalysis != null) 'continuousAnalysis': continuousAnalysis!,
    if (files != null) 'files': files!,
    if (lastAnalysisTime != null) 'lastAnalysisTime': lastAnalysisTime!,
    if (lastScanTime != null) 'lastScanTime': lastScanTime!,
    if (sbomStatus != null) 'sbomStatus': sbomStatus!,
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
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents an SBOM Reference.
  core.String? analysisKind;

  Discovery({this.analysisKind});

  Discovery.fromJson(core.Map json_)
    : this(analysisKind: json_['analysisKind'] as core.String?);

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

  Distribution.fromJson(core.Map json_)
    : this(
        architecture: json_['architecture'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        description: json_['description'] as core.String?,
        latestVersion:
            json_.containsKey('latestVersion')
                ? Version.fromJson(
                  json_['latestVersion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintainer: json_['maintainer'] as core.String?,
        url: json_['url'] as core.String?,
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

/// DocumentNote represents an SPDX Document Creation Information section:
/// https://spdx.github.io/spdx-spec/2-document-creation-information/
typedef DocumentNote = $DocumentNote;

/// DocumentOccurrence represents an SPDX Document Creation Information section:
/// https://spdx.github.io/spdx-spec/2-document-creation-information/
typedef DocumentOccurrence = $DocumentOccurrence;

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

  set payloadAsBytes(core.List<core.int> bytes_) {
    payload = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? payloadType;
  core.List<EnvelopeSignature>? signatures;

  Envelope({this.payload, this.payloadType, this.signatures});

  Envelope.fromJson(core.Map json_)
    : this(
        payload: json_['payload'] as core.String?,
        payloadType: json_['payloadType'] as core.String?,
        signatures:
            (json_['signatures'] as core.List?)
                ?.map(
                  (value) => EnvelopeSignature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (payload != null) 'payload': payload!,
    if (payloadType != null) 'payloadType': payloadType!,
    if (signatures != null) 'signatures': signatures!,
  };
}

typedef EnvelopeSignature = $EnvelopeSignature;

/// Defines an object for the environment field in in-toto links.
///
/// The suggested fields are "variables", "filesystem", and "workdir".
typedef Environment = $Shared18;

/// The request to a call of ExportSBOM
typedef ExportSBOMRequest = $Empty;

/// The response from a call to ExportSBOM
class ExportSBOMResponse {
  /// The name of the discovery occurrence in the form
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID} It can be used to track
  /// the progression of the SBOM export.
  core.String? discoveryOccurrenceId;

  ExportSBOMResponse({this.discoveryOccurrenceId});

  ExportSBOMResponse.fromJson(core.Map json_)
    : this(
        discoveryOccurrenceId: json_['discoveryOccurrenceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discoveryOccurrenceId != null)
      'discoveryOccurrenceId': discoveryOccurrenceId!,
  };
}

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

/// An External Reference allows a Package to reference an external source of
/// additional information, metadata, enumerations, asset identifiers, or
/// downloadable content believed to be relevant to the Package
typedef ExternalRef = $ExternalRef;
typedef File = $File00;

/// Container message for hashes of byte content of files, used in source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
  ///
  /// Required.
  core.List<Hash>? fileHash;

  FileHashes({this.fileHash});

  FileHashes.fromJson(core.Map json_)
    : this(
        fileHash:
            (json_['fileHash'] as core.List?)
                ?.map(
                  (value) => Hash.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileHash != null) 'fileHash': fileHash!,
  };
}

/// FileNote represents an SPDX File Information section:
/// https://spdx.github.io/spdx-spec/4-file-information/
typedef FileNote = $FileNote;

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

  /// This field contains the license the SPDX file creator has concluded as
  /// governing the file or alternative values if the governing license cannot
  /// be determined
  License? licenseConcluded;

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
    this.licenseConcluded,
    this.notice,
  });

  FileOccurrence.fromJson(core.Map json_)
    : this(
        attributions:
            (json_['attributions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        comment: json_['comment'] as core.String?,
        contributors:
            (json_['contributors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        copyright: json_['copyright'] as core.String?,
        filesLicenseInfo:
            (json_['filesLicenseInfo'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        licenseConcluded:
            json_.containsKey('licenseConcluded')
                ? License.fromJson(
                  json_['licenseConcluded']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        notice: json_['notice'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributions != null) 'attributions': attributions!,
    if (comment != null) 'comment': comment!,
    if (contributors != null) 'contributors': contributors!,
    if (copyright != null) 'copyright': copyright!,
    if (filesLicenseInfo != null) 'filesLicenseInfo': filesLicenseInfo!,
    if (id != null) 'id': id!,
    if (licenseConcluded != null) 'licenseConcluded': licenseConcluded!,
    if (notice != null) 'notice': notice!,
  };
}

/// A set of properties that uniquely identify a given Docker image.
typedef Fingerprint = $Fingerprint;

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

  FixableTotalByDigest.fromJson(core.Map json_)
    : this(
        fixableCount: json_['fixableCount'] as core.String?,
        resource:
            json_.containsKey('resource')
                ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        severity: json_['severity'] as core.String?,
        totalCount: json_['totalCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fixableCount != null) 'fixableCount': fixableCount!,
    if (resource != null) 'resource': resource!,
    if (severity != null) 'severity': severity!,
    if (totalCount != null) 'totalCount': totalCount!,
  };
}

/// GeneratePackagesSummaryRequest is the request body for the
/// GeneratePackagesSummary API method.
///
/// It just takes a single name argument, referring to the resource.
typedef GeneratePackagesSummaryRequest = $Empty;

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

  set serializedPayloadAsBytes(core.List<core.int> bytes_) {
    serializedPayload = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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

  GenericSignedAttestation.fromJson(core.Map json_)
    : this(
        contentType: json_['contentType'] as core.String?,
        serializedPayload: json_['serializedPayload'] as core.String?,
        signatures:
            (json_['signatures'] as core.List?)
                ?.map(
                  (value) => Signature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentType != null) 'contentType': contentType!,
    if (serializedPayload != null) 'serializedPayload': serializedPayload!,
    if (signatures != null) 'signatures': signatures!,
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

  GerritSourceContext.fromJson(core.Map json_)
    : this(
        aliasContext:
            json_.containsKey('aliasContext')
                ? AliasContext.fromJson(
                  json_['aliasContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gerritProject: json_['gerritProject'] as core.String?,
        hostUri: json_['hostUri'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
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

  GetIamPolicyRequest({this.options});

  GetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        options:
            json_.containsKey('options')
                ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions00;

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
typedef GitSourceContext = $GitSourceContext;

/// Details of a build occurrence.
class GrafeasV1beta1BuildDetails {
  InTotoSlsaProvenanceV1? inTotoSlsaProvenanceV1;

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
    this.inTotoSlsaProvenanceV1,
    this.provenance,
    this.provenanceBytes,
  });

  GrafeasV1beta1BuildDetails.fromJson(core.Map json_)
    : this(
        inTotoSlsaProvenanceV1:
            json_.containsKey('inTotoSlsaProvenanceV1')
                ? InTotoSlsaProvenanceV1.fromJson(
                  json_['inTotoSlsaProvenanceV1']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? BuildProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenanceBytes: json_['provenanceBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inTotoSlsaProvenanceV1 != null)
      'inTotoSlsaProvenanceV1': inTotoSlsaProvenanceV1!,
    if (provenance != null) 'provenance': provenance!,
    if (provenanceBytes != null) 'provenanceBytes': provenanceBytes!,
  };
}

/// Details of a deployment occurrence.
class GrafeasV1beta1DeploymentDetails {
  /// Deployment history for the resource.
  ///
  /// Required.
  Deployment? deployment;

  GrafeasV1beta1DeploymentDetails({this.deployment});

  GrafeasV1beta1DeploymentDetails.fromJson(core.Map json_)
    : this(
        deployment:
            json_.containsKey('deployment')
                ? Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deployment != null) 'deployment': deployment!,
  };
}

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Analysis status for the discovered resource.
  ///
  /// Required.
  Discovered? discovered;

  GrafeasV1beta1DiscoveryDetails({this.discovered});

  GrafeasV1beta1DiscoveryDetails.fromJson(core.Map json_)
    : this(
        discovered:
            json_.containsKey('discovered')
                ? Discovered.fromJson(
                  json_['discovered'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (discovered != null) 'discovered': discovered!,
  };
}

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// The child image derived from the base image.
  ///
  /// Required. Immutable.
  Derived? derivedImage;

  GrafeasV1beta1ImageDetails({this.derivedImage});

  GrafeasV1beta1ImageDetails.fromJson(core.Map json_)
    : this(
        derivedImage:
            json_.containsKey('derivedImage')
                ? Derived.fromJson(
                  json_['derivedImage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (derivedImage != null) 'derivedImage': derivedImage!,
  };
}

class GrafeasV1beta1IntotoArtifact {
  ArtifactHashes? hashes;
  core.String? resourceUri;

  GrafeasV1beta1IntotoArtifact({this.hashes, this.resourceUri});

  GrafeasV1beta1IntotoArtifact.fromJson(core.Map json_)
    : this(
        hashes:
            json_.containsKey('hashes')
                ? ArtifactHashes.fromJson(
                  json_['hashes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceUri: json_['resourceUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hashes != null) 'hashes': hashes!,
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

  GrafeasV1beta1IntotoDetails({this.signatures, this.signed});

  GrafeasV1beta1IntotoDetails.fromJson(core.Map json_)
    : this(
        signatures:
            (json_['signatures'] as core.List?)
                ?.map(
                  (value) => GrafeasV1beta1IntotoSignature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        signed:
            json_.containsKey('signed')
                ? Link.fromJson(
                  json_['signed'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (signatures != null) 'signatures': signatures!,
    if (signed != null) 'signed': signed!,
  };
}

/// A signature object consists of the KeyID used and the signature itself.
class GrafeasV1beta1IntotoSignature {
  core.String? keyid;
  core.String? sig;

  GrafeasV1beta1IntotoSignature({this.keyid, this.sig});

  GrafeasV1beta1IntotoSignature.fromJson(core.Map json_)
    : this(
        keyid: json_['keyid'] as core.String?,
        sig: json_['sig'] as core.String?,
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

  GrafeasV1beta1PackageDetails({this.installation});

  GrafeasV1beta1PackageDetails.fromJson(core.Map json_)
    : this(
        installation:
            json_.containsKey('installation')
                ? Installation.fromJson(
                  json_['installation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (installation != null) 'installation': installation!,
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

  /// The cvss v2 score for the vulnerability.
  CVSS? cvssV2;

  /// The cvss v3 score for the vulnerability.
  CVSS? cvssV3;

  /// CVSS version used to populate cvss_score and severity.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CVSS_VERSION_UNSPECIFIED"
  /// - "CVSS_VERSION_2"
  /// - "CVSS_VERSION_3"
  core.String? cvssVersion;

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

  /// Occurrence-specific extra details about the vulnerability.
  core.String? extraDetails;

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
  VexAssessment? vexAssessment;

  GrafeasV1beta1VulnerabilityDetails({
    this.cvssScore,
    this.cvssV2,
    this.cvssV3,
    this.cvssVersion,
    this.effectiveSeverity,
    this.extraDetails,
    this.longDescription,
    this.packageIssue,
    this.relatedUrls,
    this.severity,
    this.shortDescription,
    this.type,
    this.vexAssessment,
  });

  GrafeasV1beta1VulnerabilityDetails.fromJson(core.Map json_)
    : this(
        cvssScore: (json_['cvssScore'] as core.num?)?.toDouble(),
        cvssV2:
            json_.containsKey('cvssV2')
                ? CVSS.fromJson(
                  json_['cvssV2'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cvssV3:
            json_.containsKey('cvssV3')
                ? CVSS.fromJson(
                  json_['cvssV3'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cvssVersion: json_['cvssVersion'] as core.String?,
        effectiveSeverity: json_['effectiveSeverity'] as core.String?,
        extraDetails: json_['extraDetails'] as core.String?,
        longDescription: json_['longDescription'] as core.String?,
        packageIssue:
            (json_['packageIssue'] as core.List?)
                ?.map(
                  (value) => PackageIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        relatedUrls:
            (json_['relatedUrls'] as core.List?)
                ?.map(
                  (value) => RelatedUrl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        severity: json_['severity'] as core.String?,
        shortDescription: json_['shortDescription'] as core.String?,
        type: json_['type'] as core.String?,
        vexAssessment:
            json_.containsKey('vexAssessment')
                ? VexAssessment.fromJson(
                  json_['vexAssessment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cvssScore != null) 'cvssScore': cvssScore!,
    if (cvssV2 != null) 'cvssV2': cvssV2!,
    if (cvssV3 != null) 'cvssV3': cvssV3!,
    if (cvssVersion != null) 'cvssVersion': cvssVersion!,
    if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
    if (extraDetails != null) 'extraDetails': extraDetails!,
    if (longDescription != null) 'longDescription': longDescription!,
    if (packageIssue != null) 'packageIssue': packageIssue!,
    if (relatedUrls != null) 'relatedUrls': relatedUrls!,
    if (severity != null) 'severity': severity!,
    if (shortDescription != null) 'shortDescription': shortDescription!,
    if (type != null) 'type': type!,
    if (vexAssessment != null) 'vexAssessment': vexAssessment!,
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
  /// - "GO_MODULE_H1" : Dirhash of a Go module's source code which is then
  /// hex-encoded. See b/244466565 and
  /// https://github.com/in-toto/attestation/pull/108.
  /// - "SHA512" : A SHA-512 hash.
  core.String? type;

  /// The hash value.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  Hash({this.type, this.value});

  Hash.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
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
typedef Hint = $Hint;

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

  InToto.fromJson(core.Map json_)
    : this(
        expectedCommand:
            (json_['expectedCommand'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        expectedMaterials:
            (json_['expectedMaterials'] as core.List?)
                ?.map(
                  (value) => ArtifactRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        expectedProducts:
            (json_['expectedProducts'] as core.List?)
                ?.map(
                  (value) => ArtifactRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        signingKeys:
            (json_['signingKeys'] as core.List?)
                ?.map(
                  (value) => SigningKey.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        stepName: json_['stepName'] as core.String?,
        threshold: json_['threshold'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expectedCommand != null) 'expectedCommand': expectedCommand!,
    if (expectedMaterials != null) 'expectedMaterials': expectedMaterials!,
    if (expectedProducts != null) 'expectedProducts': expectedProducts!,
    if (signingKeys != null) 'signingKeys': signingKeys!,
    if (stepName != null) 'stepName': stepName!,
    if (threshold != null) 'threshold': threshold!,
  };
}

class InTotoSlsaProvenanceV1 {
  /// InToto spec defined at
  /// https://github.com/in-toto/attestation/tree/main/spec#statement
  core.String? P_type;
  SlsaProvenanceV1? predicate;
  core.String? predicateType;
  core.List<Subject>? subject;

  InTotoSlsaProvenanceV1({
    this.P_type,
    this.predicate,
    this.predicateType,
    this.subject,
  });

  InTotoSlsaProvenanceV1.fromJson(core.Map json_)
    : this(
        P_type: json_['_type'] as core.String?,
        predicate:
            json_.containsKey('predicate')
                ? SlsaProvenanceV1.fromJson(
                  json_['predicate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        predicateType: json_['predicateType'] as core.String?,
        subject:
            (json_['subject'] as core.List?)
                ?.map(
                  (value) => Subject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (P_type != null) '_type': P_type!,
    if (predicate != null) 'predicate': predicate!,
    if (predicateType != null) 'predicateType': predicateType!,
    if (subject != null) 'subject': subject!,
  };
}

/// This represents how a particular software package may be installed on a
/// system.
class Installation {
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

  Installation({
    this.architecture,
    this.cpeUri,
    this.license,
    this.location,
    this.name,
    this.packageType,
    this.version,
  });

  Installation.fromJson(core.Map json_)
    : this(
        architecture: json_['architecture'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        license:
            json_.containsKey('license')
                ? License.fromJson(
                  json_['license'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        location:
            (json_['location'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        packageType: json_['packageType'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
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

/// Justification provides the justification when the state of the assessment if
/// NOT_AFFECTED.
typedef Justification = $Justification;

class KnowledgeBase {
  /// The KB name (generally of the form KB\[0-9\]+ i.e. KB123456).
  core.String? name;

  /// A link to the KB in the Windows update catalog -
  /// https://www.catalog.update.microsoft.com/
  core.String? url;

  KnowledgeBase({this.name, this.url});

  KnowledgeBase.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        url: json_['url'] as core.String?,
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

  Layer({this.arguments, this.directive});

  Layer.fromJson(core.Map json_)
    : this(
        arguments: json_['arguments'] as core.String?,
        directive: json_['directive'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arguments != null) 'arguments': arguments!,
    if (directive != null) 'directive': directive!,
  };
}

/// License information.
typedef License = $License;

/// Per license count
class LicensesSummary {
  /// The number of fixable vulnerabilities associated with this resource.
  core.String? count;

  /// The license of the package.
  ///
  /// Note that the format of this value is not guaranteed. It may be nil, an
  /// empty string, a boolean value (A | B), a differently formed boolean value
  /// (A OR B), etc...
  core.String? license;

  LicensesSummary({this.count, this.license});

  LicensesSummary.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        license: json_['license'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (license != null) 'license': license!,
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

  Link.fromJson(core.Map json_)
    : this(
        byproducts:
            json_.containsKey('byproducts')
                ? ByProducts.fromJson(
                  json_['byproducts'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        command:
            (json_['command'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        environment:
            json_.containsKey('environment')
                ? Environment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        materials:
            (json_['materials'] as core.List?)
                ?.map(
                  (value) => GrafeasV1beta1IntotoArtifact.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        products:
            (json_['products'] as core.List?)
                ?.map(
                  (value) => GrafeasV1beta1IntotoArtifact.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (byproducts != null) 'byproducts': byproducts!,
    if (command != null) 'command': command!,
    if (environment != null) 'environment': environment!,
    if (materials != null) 'materials': materials!,
    if (products != null) 'products': products!,
  };
}

/// Response for listing occurrences for a note.
class ListNoteOccurrencesResponse {
  /// Token to provide to skip to a particular spot in the list.
  core.String? nextPageToken;

  /// The occurrences attached to the specified note.
  core.List<Occurrence>? occurrences;

  ListNoteOccurrencesResponse({this.nextPageToken, this.occurrences});

  ListNoteOccurrencesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        occurrences:
            (json_['occurrences'] as core.List?)
                ?.map(
                  (value) => Occurrence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  /// Unordered list.
  ///
  /// Unreachable regions. Populated for requests from the global region when
  /// `return_partial_success` is set. Format: projects//locations/
  core.List<core.String>? unreachable;

  ListNotesResponse({this.nextPageToken, this.notes, this.unreachable});

  ListNotesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        notes:
            (json_['notes'] as core.List?)
                ?.map(
                  (value) => Note.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (notes != null) 'notes': notes!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  /// Unordered list.
  ///
  /// Unreachable regions. Populated for requests from the global region when
  /// `return_partial_success` is set. Format: projects//locations/
  core.List<core.String>? unreachable;

  ListOccurrencesResponse({
    this.nextPageToken,
    this.occurrences,
    this.unreachable,
  });

  ListOccurrencesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        occurrences:
            (json_['occurrences'] as core.List?)
                ?.map(
                  (value) => Occurrence.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (occurrences != null) 'occurrences': occurrences!,
    if (unreachable != null) 'unreachable': unreachable!,
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
  /// Deprecated.
  core.String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String? path;

  /// The version installed at this location.
  ///
  /// Deprecated.
  Version? version;

  Location({this.cpeUri, this.path, this.version});

  Location.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        path: json_['path'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpeUri != null) 'cpeUri': cpeUri!,
    if (path != null) 'path': path!,
    if (version != null) 'version': version!,
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
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents an SBOM Reference.
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

  /// A note describing a software bill of materials.
  DocumentNote? sbom;

  /// A note describing an SBOM reference.
  SBOMReferenceNote? sbomReference;

  /// A one sentence description of this note.
  core.String? shortDescription;

  /// A note describing an SPDX File.
  FileNote? spdxFile;

  /// A note describing an SPDX Package.
  PackageInfoNote? spdxPackage;

  /// A note describing an SPDX File.
  RelationshipNote? spdxRelationship;

  /// The time this note was last updated.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? updateTime;

  /// A note describing a package vulnerability.
  Vulnerability? vulnerability;

  /// A note describing a vulnerability assessment.
  VulnerabilityAssessmentNote? vulnerabilityAssessment;

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
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Note.fromJson(core.Map json_)
    : this(
        attestationAuthority:
            json_.containsKey('attestationAuthority')
                ? Authority.fromJson(
                  json_['attestationAuthority']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        baseImage:
            json_.containsKey('baseImage')
                ? Basis.fromJson(
                  json_['baseImage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        build:
            json_.containsKey('build')
                ? Build.fromJson(
                  json_['build'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        deployable:
            json_.containsKey('deployable')
                ? Deployable.fromJson(
                  json_['deployable'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        discovery:
            json_.containsKey('discovery')
                ? Discovery.fromJson(
                  json_['discovery'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        expirationTime: json_['expirationTime'] as core.String?,
        intoto:
            json_.containsKey('intoto')
                ? InToto.fromJson(
                  json_['intoto'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        longDescription: json_['longDescription'] as core.String?,
        name: json_['name'] as core.String?,
        package:
            json_.containsKey('package')
                ? Package.fromJson(
                  json_['package'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        relatedNoteNames:
            (json_['relatedNoteNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        relatedUrl:
            (json_['relatedUrl'] as core.List?)
                ?.map(
                  (value) => RelatedUrl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sbom:
            json_.containsKey('sbom')
                ? DocumentNote.fromJson(
                  json_['sbom'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sbomReference:
            json_.containsKey('sbomReference')
                ? SBOMReferenceNote.fromJson(
                  json_['sbomReference'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shortDescription: json_['shortDescription'] as core.String?,
        spdxFile:
            json_.containsKey('spdxFile')
                ? FileNote.fromJson(
                  json_['spdxFile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spdxPackage:
            json_.containsKey('spdxPackage')
                ? PackageInfoNote.fromJson(
                  json_['spdxPackage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spdxRelationship:
            json_.containsKey('spdxRelationship')
                ? RelationshipNote.fromJson(
                  json_['spdxRelationship']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        vulnerability:
            json_.containsKey('vulnerability')
                ? Vulnerability.fromJson(
                  json_['vulnerability'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerabilityAssessment:
            json_.containsKey('vulnerabilityAssessment')
                ? VulnerabilityAssessmentNote.fromJson(
                  json_['vulnerabilityAssessment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attestationAuthority != null)
      'attestationAuthority': attestationAuthority!,
    if (baseImage != null) 'baseImage': baseImage!,
    if (build != null) 'build': build!,
    if (createTime != null) 'createTime': createTime!,
    if (deployable != null) 'deployable': deployable!,
    if (discovery != null) 'discovery': discovery!,
    if (expirationTime != null) 'expirationTime': expirationTime!,
    if (intoto != null) 'intoto': intoto!,
    if (kind != null) 'kind': kind!,
    if (longDescription != null) 'longDescription': longDescription!,
    if (name != null) 'name': name!,
    if (package != null) 'package': package!,
    if (relatedNoteNames != null) 'relatedNoteNames': relatedNoteNames!,
    if (relatedUrl != null) 'relatedUrl': relatedUrl!,
    if (sbom != null) 'sbom': sbom!,
    if (sbomReference != null) 'sbomReference': sbomReference!,
    if (shortDescription != null) 'shortDescription': shortDescription!,
    if (spdxFile != null) 'spdxFile': spdxFile!,
    if (spdxPackage != null) 'spdxPackage': spdxPackage!,
    if (spdxRelationship != null) 'spdxRelationship': spdxRelationship!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vulnerability != null) 'vulnerability': vulnerability!,
    if (vulnerabilityAssessment != null)
      'vulnerabilityAssessment': vulnerabilityAssessment!,
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

  /// https://github.com/secure-systems-lab/dsse
  Envelope? envelope;

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
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents an SBOM Reference.
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

  /// Describes a specific software bill of materials document.
  DocumentOccurrence? sbom;

  /// Describes a specific SBOM reference occurrences.
  SBOMReferenceOccurrence? sbomReference;

  /// Describes a specific SPDX File.
  FileOccurrence? spdxFile;

  /// Describes a specific SPDX Package.
  PackageInfoOccurrence? spdxPackage;

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
    this.envelope,
    this.installation,
    this.intoto,
    this.kind,
    this.name,
    this.noteName,
    this.remediation,
    this.resource,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.vulnerability,
  });

  Occurrence.fromJson(core.Map json_)
    : this(
        attestation:
            json_.containsKey('attestation')
                ? Details.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        build:
            json_.containsKey('build')
                ? GrafeasV1beta1BuildDetails.fromJson(
                  json_['build'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        deployment:
            json_.containsKey('deployment')
                ? GrafeasV1beta1DeploymentDetails.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        derivedImage:
            json_.containsKey('derivedImage')
                ? GrafeasV1beta1ImageDetails.fromJson(
                  json_['derivedImage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        discovered:
            json_.containsKey('discovered')
                ? GrafeasV1beta1DiscoveryDetails.fromJson(
                  json_['discovered'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        envelope:
            json_.containsKey('envelope')
                ? Envelope.fromJson(
                  json_['envelope'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        installation:
            json_.containsKey('installation')
                ? GrafeasV1beta1PackageDetails.fromJson(
                  json_['installation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intoto:
            json_.containsKey('intoto')
                ? GrafeasV1beta1IntotoDetails.fromJson(
                  json_['intoto'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        noteName: json_['noteName'] as core.String?,
        remediation: json_['remediation'] as core.String?,
        resource:
            json_.containsKey('resource')
                ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sbom:
            json_.containsKey('sbom')
                ? DocumentOccurrence.fromJson(
                  json_['sbom'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sbomReference:
            json_.containsKey('sbomReference')
                ? SBOMReferenceOccurrence.fromJson(
                  json_['sbomReference'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spdxFile:
            json_.containsKey('spdxFile')
                ? FileOccurrence.fromJson(
                  json_['spdxFile'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spdxPackage:
            json_.containsKey('spdxPackage')
                ? PackageInfoOccurrence.fromJson(
                  json_['spdxPackage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        spdxRelationship:
            json_.containsKey('spdxRelationship')
                ? RelationshipOccurrence.fromJson(
                  json_['spdxRelationship']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        vulnerability:
            json_.containsKey('vulnerability')
                ? GrafeasV1beta1VulnerabilityDetails.fromJson(
                  json_['vulnerability'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attestation != null) 'attestation': attestation!,
    if (build != null) 'build': build!,
    if (createTime != null) 'createTime': createTime!,
    if (deployment != null) 'deployment': deployment!,
    if (derivedImage != null) 'derivedImage': derivedImage!,
    if (discovered != null) 'discovered': discovered!,
    if (envelope != null) 'envelope': envelope!,
    if (installation != null) 'installation': installation!,
    if (intoto != null) 'intoto': intoto!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (noteName != null) 'noteName': noteName!,
    if (remediation != null) 'remediation': remediation!,
    if (resource != null) 'resource': resource!,
    if (sbom != null) 'sbom': sbom!,
    if (sbomReference != null) 'sbomReference': sbomReference!,
    if (spdxFile != null) 'spdxFile': spdxFile!,
    if (spdxPackage != null) 'spdxPackage': spdxPackage!,
    if (spdxRelationship != null) 'spdxRelationship': spdxRelationship!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vulnerability != null) 'vulnerability': vulnerability!,
  };
}

/// Package represents a particular package version.
class Package {
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

  Package({
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

  Package.fromJson(core.Map json_)
    : this(
        architecture: json_['architecture'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        description: json_['description'] as core.String?,
        digest:
            (json_['digest'] as core.List?)
                ?.map(
                  (value) => Digest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        distribution:
            (json_['distribution'] as core.List?)
                ?.map(
                  (value) => Distribution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        license:
            json_.containsKey('license')
                ? License.fromJson(
                  json_['license'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintainer: json_['maintainer'] as core.String?,
        name: json_['name'] as core.String?,
        packageType: json_['packageType'] as core.String?,
        url: json_['url'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
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

/// PackageInfoNote represents an SPDX Package Information section:
/// https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoNote {
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
  License? licenseDeclared;

  /// If the package identified in the SPDX file originated from a different
  /// person or organization than identified as Package Supplier, this field
  /// identifies from where or whom the package originally came
  core.String? originator;

  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  core.String? packageType;

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

  PackageInfoNote({
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
    this.packageType,
    this.summaryDescription,
    this.supplier,
    this.title,
    this.verificationCode,
    this.version,
  });

  PackageInfoNote.fromJson(core.Map json_)
    : this(
        analyzed: json_['analyzed'] as core.bool?,
        attribution: json_['attribution'] as core.String?,
        checksum: json_['checksum'] as core.String?,
        copyright: json_['copyright'] as core.String?,
        detailedDescription: json_['detailedDescription'] as core.String?,
        downloadLocation: json_['downloadLocation'] as core.String?,
        externalRefs:
            (json_['externalRefs'] as core.List?)
                ?.map(
                  (value) => ExternalRef.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        filesLicenseInfo:
            (json_['filesLicenseInfo'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        homePage: json_['homePage'] as core.String?,
        licenseDeclared:
            json_.containsKey('licenseDeclared')
                ? License.fromJson(
                  json_['licenseDeclared']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        originator: json_['originator'] as core.String?,
        packageType: json_['packageType'] as core.String?,
        summaryDescription: json_['summaryDescription'] as core.String?,
        supplier: json_['supplier'] as core.String?,
        title: json_['title'] as core.String?,
        verificationCode: json_['verificationCode'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analyzed != null) 'analyzed': analyzed!,
    if (attribution != null) 'attribution': attribution!,
    if (checksum != null) 'checksum': checksum!,
    if (copyright != null) 'copyright': copyright!,
    if (detailedDescription != null)
      'detailedDescription': detailedDescription!,
    if (downloadLocation != null) 'downloadLocation': downloadLocation!,
    if (externalRefs != null) 'externalRefs': externalRefs!,
    if (filesLicenseInfo != null) 'filesLicenseInfo': filesLicenseInfo!,
    if (homePage != null) 'homePage': homePage!,
    if (licenseDeclared != null) 'licenseDeclared': licenseDeclared!,
    if (originator != null) 'originator': originator!,
    if (packageType != null) 'packageType': packageType!,
    if (summaryDescription != null) 'summaryDescription': summaryDescription!,
    if (supplier != null) 'supplier': supplier!,
    if (title != null) 'title': title!,
    if (verificationCode != null) 'verificationCode': verificationCode!,
    if (version != null) 'version': version!,
  };
}

/// PackageInfoOccurrence represents an SPDX Package Information section:
/// https://spdx.github.io/spdx-spec/3-package-information/
class PackageInfoOccurrence {
  /// A place for the SPDX file creator to record any general comments about the
  /// package being described
  core.String? comment;

  /// Provide the actual file name of the package, or path of the directory
  /// being treated as a package
  core.String? filename;

  /// Provide a place for the SPDX file creator to record a web site that serves
  /// as the package's home page
  ///
  /// Output only.
  core.String? homePage;

  /// Uniquely identify any element in an SPDX document which may be referenced
  /// by other elements
  core.String? id;

  /// package or alternative values, if the governing license cannot be
  /// determined
  License? licenseConcluded;

  /// The type of package: OS, MAVEN, GO, GO_STDLIB, etc.
  ///
  /// Output only.
  core.String? packageType;

  /// Provide a place for the SPDX file creator to record any relevant
  /// background information or additional comments about the origin of the
  /// package
  core.String? sourceInfo;

  /// A short description of the package
  ///
  /// Output only.
  core.String? summaryDescription;

  /// Identify the full name of the package as given by the Package Originator
  ///
  /// Output only.
  core.String? title;

  /// Identify the version of the package
  ///
  /// Output only.
  core.String? version;

  PackageInfoOccurrence({
    this.comment,
    this.filename,
    this.homePage,
    this.id,
    this.licenseConcluded,
    this.packageType,
    this.sourceInfo,
    this.summaryDescription,
    this.title,
    this.version,
  });

  PackageInfoOccurrence.fromJson(core.Map json_)
    : this(
        comment: json_['comment'] as core.String?,
        filename: json_['filename'] as core.String?,
        homePage: json_['homePage'] as core.String?,
        id: json_['id'] as core.String?,
        licenseConcluded:
            json_.containsKey('licenseConcluded')
                ? License.fromJson(
                  json_['licenseConcluded']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        packageType: json_['packageType'] as core.String?,
        sourceInfo: json_['sourceInfo'] as core.String?,
        summaryDescription: json_['summaryDescription'] as core.String?,
        title: json_['title'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (comment != null) 'comment': comment!,
    if (filename != null) 'filename': filename!,
    if (homePage != null) 'homePage': homePage!,
    if (id != null) 'id': id!,
    if (licenseConcluded != null) 'licenseConcluded': licenseConcluded!,
    if (packageType != null) 'packageType': packageType!,
    if (sourceInfo != null) 'sourceInfo': sourceInfo!,
    if (summaryDescription != null) 'summaryDescription': summaryDescription!,
    if (title != null) 'title': title!,
    if (version != null) 'version': version!,
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

  PackageIssue.fromJson(core.Map json_)
    : this(
        affectedLocation:
            json_.containsKey('affectedLocation')
                ? VulnerabilityLocation.fromJson(
                  json_['affectedLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        effectiveSeverity: json_['effectiveSeverity'] as core.String?,
        fixedLocation:
            json_.containsKey('fixedLocation')
                ? VulnerabilityLocation.fromJson(
                  json_['fixedLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        packageType: json_['packageType'] as core.String?,
        severityName: json_['severityName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (affectedLocation != null) 'affectedLocation': affectedLocation!,
    if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
    if (fixedLocation != null) 'fixedLocation': fixedLocation!,
    if (packageType != null) 'packageType': packageType!,
    if (severityName != null) 'severityName': severityName!,
  };
}

/// A summary of the packages found within the given resource.
class PackagesSummaryResponse {
  /// A listing by license name of each of the licenses and their counts.
  core.List<LicensesSummary>? licensesSummary;

  /// The unique URL of the image or the container for which this summary
  /// applies.
  core.String? resourceUrl;

  PackagesSummaryResponse({this.licensesSummary, this.resourceUrl});

  PackagesSummaryResponse.fromJson(core.Map json_)
    : this(
        licensesSummary:
            (json_['licensesSummary'] as core.List?)
                ?.map(
                  (value) => LicensesSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resourceUrl: json_['resourceUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (licensesSummary != null) 'licensesSummary': licensesSummary!,
    if (resourceUrl != null) 'resourceUrl': resourceUrl!,
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
  /// character hexadecimal string. See
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

  PgpSignedAttestation({this.contentType, this.pgpKeyId, this.signature});

  PgpSignedAttestation.fromJson(core.Map json_)
    : this(
        contentType: json_['contentType'] as core.String?,
        pgpKeyId: json_['pgpKeyId'] as core.String?,
        signature: json_['signature'] as core.String?,
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
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
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

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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

  Policy({this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Product contains information about a product and how to uniquely identify
/// it.
typedef Product = $Product;

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
typedef ProjectRepoId = $ProjectRepoId;

class ProvenanceBuilder {
  core.List<ResourceDescriptor>? builderDependencies;
  core.String? id;
  core.Map<core.String, core.String>? version;

  ProvenanceBuilder({this.builderDependencies, this.id, this.version});

  ProvenanceBuilder.fromJson(core.Map json_)
    : this(
        builderDependencies:
            (json_['builderDependencies'] as core.List?)
                ?.map(
                  (value) => ResourceDescriptor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        id: json_['id'] as core.String?,
        version: (json_['version'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builderDependencies != null)
      'builderDependencies': builderDependencies!,
    if (id != null) 'id': id!,
    if (version != null) 'version': version!,
  };
}

/// Publisher contains information about the publisher of this Note.
typedef Publisher = $Publisher00;

/// Metadata for any related URL information.
typedef RelatedUrl = $RelatedUrl;

/// RelationshipNote represents an SPDX Relationship section:
/// https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
typedef RelationshipNote = $RelationshipNote;

/// RelationshipOccurrence represents an SPDX Relationship section:
/// https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
typedef RelationshipOccurrence = $RelationshipOccurrence;

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class Remediation {
  /// Contains a comprehensive human-readable discussion of the remediation.
  core.String? details;

  /// The type of remediation that can be applied.
  /// Possible string values are:
  /// - "REMEDIATION_TYPE_UNSPECIFIED" : No remediation type specified.
  /// - "MITIGATION" : A MITIGATION is available.
  /// - "NO_FIX_PLANNED" : No fix is planned.
  /// - "NONE_AVAILABLE" : Not available.
  /// - "VENDOR_FIX" : A vendor fix is available.
  /// - "WORKAROUND" : A workaround is available.
  core.String? remediationType;

  /// Contains the URL where to obtain the remediation.
  RelatedUrl? remediationUri;

  Remediation({this.details, this.remediationType, this.remediationUri});

  Remediation.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        remediationType: json_['remediationType'] as core.String?,
        remediationUri:
            json_.containsKey('remediationUri')
                ? RelatedUrl.fromJson(
                  json_['remediationUri']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (remediationType != null) 'remediationType': remediationType!,
    if (remediationUri != null) 'remediationUri': remediationUri!,
  };
}

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  ProjectRepoId? projectRepoId;

  /// A server-assigned, globally unique identifier.
  core.String? uid;

  RepoId({this.projectRepoId, this.uid});

  RepoId.fromJson(core.Map json_)
    : this(
        projectRepoId:
            json_.containsKey('projectRepoId')
                ? ProjectRepoId.fromJson(
                  json_['projectRepoId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (projectRepoId != null) 'projectRepoId': projectRepoId!,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Hash? contentHash;

  /// Deprecated, do not use.
  ///
  /// Use uri instead. The name of the resource. For example, the name of a
  /// Docker image - "Debian".
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? name;

  /// The unique URI of the resource.
  ///
  /// For example, `https://gcr.io/project/image@sha256:foo` for a Docker image.
  ///
  /// Required.
  core.String? uri;

  Resource({this.contentHash, this.name, this.uri});

  Resource.fromJson(core.Map json_)
    : this(
        contentHash:
            json_.containsKey('contentHash')
                ? Hash.fromJson(
                  json_['contentHash'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentHash != null) 'contentHash': contentHash!,
    if (name != null) 'name': name!,
    if (uri != null) 'uri': uri!,
  };
}

typedef ResourceDescriptor = $ResourceDescriptor;

class RunDetails {
  ProvenanceBuilder? builder;
  core.List<ResourceDescriptor>? byproducts;
  BuildMetadata? metadata;

  RunDetails({this.builder, this.byproducts, this.metadata});

  RunDetails.fromJson(core.Map json_)
    : this(
        builder:
            json_.containsKey('builder')
                ? ProvenanceBuilder.fromJson(
                  json_['builder'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        byproducts:
            (json_['byproducts'] as core.List?)
                ?.map(
                  (value) => ResourceDescriptor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? BuildMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builder != null) 'builder': builder!,
    if (byproducts != null) 'byproducts': byproducts!,
    if (metadata != null) 'metadata': metadata!,
  };
}

/// The note representing an SBOM reference.
typedef SBOMReferenceNote = $SBOMReferenceNote;

/// The occurrence representing an SBOM reference as applied to a specific
/// resource.
///
/// The occurrence follows the DSSE specification. See
/// https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more
/// details.
class SBOMReferenceOccurrence {
  /// The actual payload that contains the SBOM reference data.
  SbomReferenceIntotoPayload? payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes.
  ///
  /// Since it's in the intoto format, this value is expected to be
  /// 'application/vnd.in-toto+json'.
  core.String? payloadType;

  /// The signatures over the payload.
  core.List<EnvelopeSignature>? signatures;

  SBOMReferenceOccurrence({this.payload, this.payloadType, this.signatures});

  SBOMReferenceOccurrence.fromJson(core.Map json_)
    : this(
        payload:
            json_.containsKey('payload')
                ? SbomReferenceIntotoPayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        payloadType: json_['payloadType'] as core.String?,
        signatures:
            (json_['signatures'] as core.List?)
                ?.map(
                  (value) => EnvelopeSignature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (payload != null) 'payload': payload!,
    if (payloadType != null) 'payloadType': payloadType!,
    if (signatures != null) 'signatures': signatures!,
  };
}

/// The status of an SBOM generation.
typedef SBOMStatus = $SBOMStatus;

/// The actual payload that contains the SBOM Reference data.
///
/// The payload follows the intoto statement specification. See
/// https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for
/// more details.
class SbomReferenceIntotoPayload {
  /// Identifier for the schema of the Statement.
  core.String? P_type;

  /// Additional parameters of the Predicate.
  ///
  /// Includes the actual data about the SBOM.
  SbomReferenceIntotoPredicate? predicate;

  /// URI identifying the type of the Predicate.
  core.String? predicateType;

  /// Set of software artifacts that the attestation applies to.
  ///
  /// Each element represents a single software artifact.
  core.List<Subject>? subject;

  SbomReferenceIntotoPayload({
    this.P_type,
    this.predicate,
    this.predicateType,
    this.subject,
  });

  SbomReferenceIntotoPayload.fromJson(core.Map json_)
    : this(
        P_type: json_['_type'] as core.String?,
        predicate:
            json_.containsKey('predicate')
                ? SbomReferenceIntotoPredicate.fromJson(
                  json_['predicate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        predicateType: json_['predicateType'] as core.String?,
        subject:
            (json_['subject'] as core.List?)
                ?.map(
                  (value) => Subject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (P_type != null) '_type': P_type!,
    if (predicate != null) 'predicate': predicate!,
    if (predicateType != null) 'predicateType': predicateType!,
    if (subject != null) 'subject': subject!,
  };
}

/// A predicate which describes the SBOM being referenced.
typedef SbomReferenceIntotoPredicate = $SbomReferenceIntotoPredicate;

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({this.policy});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
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

  SigningKey({this.keyId, this.keyScheme, this.keyType, this.publicKeyValue});

  SigningKey.fromJson(core.Map json_)
    : this(
        keyId: json_['keyId'] as core.String?,
        keyScheme: json_['keyScheme'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        publicKeyValue: json_['publicKeyValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keyId != null) 'keyId': keyId!,
    if (keyScheme != null) 'keyScheme': keyScheme!,
    if (keyType != null) 'keyType': keyType!,
    if (publicKeyValue != null) 'publicKeyValue': publicKeyValue!,
  };
}

/// Keep in sync with schema at
/// https://github.com/slsa-framework/slsa/blob/main/docs/provenance/schema/v1/provenance.proto
/// Builder renamed to ProvenanceBuilder because of Java conflicts.
class SlsaProvenanceV1 {
  BuildDefinition? buildDefinition;
  RunDetails? runDetails;

  SlsaProvenanceV1({this.buildDefinition, this.runDetails});

  SlsaProvenanceV1.fromJson(core.Map json_)
    : this(
        buildDefinition:
            json_.containsKey('buildDefinition')
                ? BuildDefinition.fromJson(
                  json_['buildDefinition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        runDetails:
            json_.containsKey('runDetails')
                ? RunDetails.fromJson(
                  json_['runDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildDefinition != null) 'buildDefinition': buildDefinition!,
    if (runDetails != null) 'runDetails': runDetails!,
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

  Source.fromJson(core.Map json_)
    : this(
        additionalContexts:
            (json_['additionalContexts'] as core.List?)
                ?.map(
                  (value) => SourceContext.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        artifactStorageSourceUri:
            json_['artifactStorageSourceUri'] as core.String?,
        context:
            json_.containsKey('context')
                ? SourceContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileHashes:
            (json_['fileHashes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                FileHashes.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalContexts != null) 'additionalContexts': additionalContexts!,
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

  SourceContext({this.cloudRepo, this.gerrit, this.git, this.labels});

  SourceContext.fromJson(core.Map json_)
    : this(
        cloudRepo:
            json_.containsKey('cloudRepo')
                ? CloudRepoSourceContext.fromJson(
                  json_['cloudRepo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gerrit:
            json_.containsKey('gerrit')
                ? GerritSourceContext.fromJson(
                  json_['gerrit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        git:
            json_.containsKey('git')
                ? GitSourceContext.fromJson(
                  json_['git'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
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
typedef Status = $Status00;

/// Set of software artifacts that the attestation applies to.
///
/// Each element represents a single software artifact.
class Subject {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See
  /// https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  core.Map<core.String, core.String>? digest;

  /// Identifier to distinguish this artifact from others within the subject.
  core.String? name;

  Subject({this.digest, this.name});

  Subject.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (digest != null) 'digest': digest!,
    if (name != null) 'name': name!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

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

  Version({this.epoch, this.inclusive, this.kind, this.name, this.revision});

  Version.fromJson(core.Map json_)
    : this(
        epoch: json_['epoch'] as core.int?,
        inclusive: json_['inclusive'] as core.bool?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        revision: json_['revision'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (epoch != null) 'epoch': epoch!,
    if (inclusive != null) 'inclusive': inclusive!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (revision != null) 'revision': revision!,
  };
}

/// VexAssessment provides all publisher provided Vex information that is
/// related to this vulnerability.
class VexAssessment {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE)
  /// tracking number for the vulnerability.
  ///
  /// Deprecated: Use vulnerability_id instead to denote CVEs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? cve;

  /// Contains information about the impact of this vulnerability, this will
  /// change with time.
  core.List<core.String>? impacts;

  /// Justification provides the justification when the state of the assessment
  /// if NOT_AFFECTED.
  Justification? justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was
  /// generated.
  ///
  /// This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  core.String? noteName;

  /// Holds a list of references associated with this vulnerability item and
  /// assessment.
  core.List<RelatedUrl>? relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  core.List<Remediation>? remediations;

  /// Provides the state of this Vulnerability assessment.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state is specified.
  /// - "AFFECTED" : This product is known to be affected by this vulnerability.
  /// - "NOT_AFFECTED" : This product is known to be not affected by this
  /// vulnerability.
  /// - "FIXED" : This product contains a fix for this vulnerability.
  /// - "UNDER_INVESTIGATION" : It is not known yet whether these versions are
  /// or are not affected by the vulnerability. However, it is still under
  /// investigation.
  core.String? state;

  /// The vulnerability identifier for this Assessment.
  ///
  /// Will hold one of common identifiers e.g. CVE, GHSA etc.
  core.String? vulnerabilityId;

  VexAssessment({
    this.cve,
    this.impacts,
    this.justification,
    this.noteName,
    this.relatedUris,
    this.remediations,
    this.state,
    this.vulnerabilityId,
  });

  VexAssessment.fromJson(core.Map json_)
    : this(
        cve: json_['cve'] as core.String?,
        impacts:
            (json_['impacts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        justification:
            json_.containsKey('justification')
                ? Justification.fromJson(
                  json_['justification'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        noteName: json_['noteName'] as core.String?,
        relatedUris:
            (json_['relatedUris'] as core.List?)
                ?.map(
                  (value) => RelatedUrl.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        remediations:
            (json_['remediations'] as core.List?)
                ?.map(
                  (value) => Remediation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        state: json_['state'] as core.String?,
        vulnerabilityId: json_['vulnerabilityId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cve != null) 'cve': cve!,
    if (impacts != null) 'impacts': impacts!,
    if (justification != null) 'justification': justification!,
    if (noteName != null) 'noteName': noteName!,
    if (relatedUris != null) 'relatedUris': relatedUris!,
    if (remediations != null) 'remediations': remediations!,
    if (state != null) 'state': state!,
    if (vulnerabilityId != null) 'vulnerabilityId': vulnerabilityId!,
  };
}

/// Vulnerability provides metadata about a security vulnerability in a Note.
class Vulnerability {
  /// The CVSS score for this vulnerability.
  core.double? cvssScore;

  /// The full description of the CVSS for version 2.
  CVSS? cvssV2;

  /// The full description of the CVSS for version 3.
  CVSSv3? cvssV3;

  /// CVSS version used to populate cvss_score and severity.
  /// Possible string values are:
  /// - "CVSS_VERSION_UNSPECIFIED"
  /// - "CVSS_VERSION_2"
  /// - "CVSS_VERSION_3"
  core.String? cvssVersion;

  /// A list of CWE for this vulnerability.
  ///
  /// For details, see: https://cwe.mitre.org/index.html
  core.List<core.String>? cwe;

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
    this.cvssV2,
    this.cvssV3,
    this.cvssVersion,
    this.cwe,
    this.details,
    this.severity,
    this.sourceUpdateTime,
    this.windowsDetails,
  });

  Vulnerability.fromJson(core.Map json_)
    : this(
        cvssScore: (json_['cvssScore'] as core.num?)?.toDouble(),
        cvssV2:
            json_.containsKey('cvssV2')
                ? CVSS.fromJson(
                  json_['cvssV2'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cvssV3:
            json_.containsKey('cvssV3')
                ? CVSSv3.fromJson(
                  json_['cvssV3'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cvssVersion: json_['cvssVersion'] as core.String?,
        cwe:
            (json_['cwe'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        details:
            (json_['details'] as core.List?)
                ?.map(
                  (value) => Detail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        severity: json_['severity'] as core.String?,
        sourceUpdateTime: json_['sourceUpdateTime'] as core.String?,
        windowsDetails:
            (json_['windowsDetails'] as core.List?)
                ?.map(
                  (value) => WindowsDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cvssScore != null) 'cvssScore': cvssScore!,
    if (cvssV2 != null) 'cvssV2': cvssV2!,
    if (cvssV3 != null) 'cvssV3': cvssV3!,
    if (cvssVersion != null) 'cvssVersion': cvssVersion!,
    if (cwe != null) 'cwe': cwe!,
    if (details != null) 'details': details!,
    if (severity != null) 'severity': severity!,
    if (sourceUpdateTime != null) 'sourceUpdateTime': sourceUpdateTime!,
    if (windowsDetails != null) 'windowsDetails': windowsDetails!,
  };
}

/// A single VulnerabilityAssessmentNote represents one particular product's
/// vulnerability assessment for one CVE.
class VulnerabilityAssessmentNote {
  /// Represents a vulnerability assessment for the product.
  Assessment? assessment;

  /// Identifies the language used by this document, corresponding to IETF BCP
  /// 47 / RFC 5646.
  core.String? languageCode;

  /// A detailed description of this Vex.
  core.String? longDescription;

  /// The product affected by this vex.
  Product? product;

  /// Publisher details of this Note.
  Publisher? publisher;

  /// A one sentence description of this Vex.
  core.String? shortDescription;

  /// The title of the note.
  ///
  /// E.g. `Vex-Debian-11.4`
  core.String? title;

  VulnerabilityAssessmentNote({
    this.assessment,
    this.languageCode,
    this.longDescription,
    this.product,
    this.publisher,
    this.shortDescription,
    this.title,
  });

  VulnerabilityAssessmentNote.fromJson(core.Map json_)
    : this(
        assessment:
            json_.containsKey('assessment')
                ? Assessment.fromJson(
                  json_['assessment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        longDescription: json_['longDescription'] as core.String?,
        product:
            json_.containsKey('product')
                ? Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        publisher:
            json_.containsKey('publisher')
                ? Publisher.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shortDescription: json_['shortDescription'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assessment != null) 'assessment': assessment!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (longDescription != null) 'longDescription': longDescription!,
    if (product != null) 'product': product!,
    if (publisher != null) 'publisher': publisher!,
    if (shortDescription != null) 'shortDescription': shortDescription!,
    if (title != null) 'title': title!,
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

  VulnerabilityLocation({this.cpeUri, this.package, this.version});

  VulnerabilityLocation.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        package: json_['package'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpeUri != null) 'cpeUri': cpeUri!,
    if (package != null) 'package': package!,
    if (version != null) 'version': version!,
  };
}

/// A summary of how many vulnerability occurrences there are per resource and
/// severity type.
class VulnerabilityOccurrencesSummary {
  /// A listing by resource of the number of fixable and total vulnerabilities.
  core.List<FixableTotalByDigest>? counts;

  /// Unordered list.
  ///
  /// Unreachable regions. Populated for requests from the global region when
  /// `return_partial_success` is set. Format: projects//locations/
  core.List<core.String>? unreachable;

  VulnerabilityOccurrencesSummary({this.counts, this.unreachable});

  VulnerabilityOccurrencesSummary.fromJson(core.Map json_)
    : this(
        counts:
            (json_['counts'] as core.List?)
                ?.map(
                  (value) => FixableTotalByDigest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (counts != null) 'counts': counts!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  WindowsDetail({this.cpeUri, this.description, this.fixingKbs, this.name});

  WindowsDetail.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        description: json_['description'] as core.String?,
        fixingKbs:
            (json_['fixingKbs'] as core.List?)
                ?.map(
                  (value) => KnowledgeBase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpeUri != null) 'cpeUri': cpeUri!,
    if (description != null) 'description': description!,
    if (fixingKbs != null) 'fixingKbs': fixingKbs!,
    if (name != null) 'name': name!,
  };
}
