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

/// Container Analysis API - v1alpha1
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
///   - [ProjectsNotesResource]
///     - [ProjectsNotesOccurrencesResource]
///   - [ProjectsOccurrencesResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsScanConfigsResource]
/// - [ProvidersResource]
///   - [ProvidersNotesResource]
///     - [ProvidersNotesOccurrencesResource]
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
  ProvidersResource get providers => ProvidersResource(_requester);

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

  ProjectsNotesResource get notes => ProjectsNotesResource(_requester);
  ProjectsOccurrencesResource get occurrences =>
      ProjectsOccurrencesResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsScanConfigsResource get scanConfigs =>
      ProjectsScanConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsNotesResource {
  final commons.ApiRequester _requester;

  ProjectsNotesOccurrencesResource get occurrences =>
      ProjectsNotesOccurrencesResource(_requester);

  ProjectsNotesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new `Note`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - This field contains the project Id for example:
  /// "projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [name] - The name of the project. Should be of the form
  /// "providers/{provider_id}". @Deprecated
  ///
  /// [noteId] - The ID to use for this note.
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
    core.String? name,
    core.String? noteId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if (noteId != null) 'noteId': [noteId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given `Note` from the system.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// "providers/{provider_id}/notes/{NOTE_ID}"
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested `Note`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// "providers/{provider_id}/notes/{NOTE_ID}"
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a note or an `Occurrence` resource.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively. Attempting to call this method on a
  /// resource without the required permission will result in a
  /// `PERMISSION_DENIED` error. Attempting to call this method on a
  /// non-existent resource will result in a `NOT_FOUND` error if the user has
  /// list permission on the project, or a `PERMISSION_DENIED` error otherwise.
  /// The resource takes the following formats:
  /// `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and
  /// projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all `Notes` for a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - This field contains the project Id for example:
  /// "projects/{PROJECT_ID}".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [name] - The name field will contain the project Id for example:
  /// "providers/{provider_id} @Deprecated
  ///
  /// [pageSize] - Number of notes to return in the list.
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
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing `Note`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note. Should be of the form
  /// "projects/{provider_id}/notes/{note_id}".
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified \`Note\` or
  /// \`Occurrence\`.
  ///
  /// Requires \`containeranalysis.notes.setIamPolicy\` or
  /// \`containeranalysis.occurrences.setIamPolicy\` permission if the resource
  /// is a \`Note\` or an \`Occurrence\`, respectively. Attempting to call this
  /// method without these permissions will result in a \` \`PERMISSION_DENIED\`
  /// error. Attempting to call this method on a non-existent resource will
  /// result in a \`NOT_FOUND\` error if the user has
  /// \`containeranalysis.notes.list\` permission on a \`Note\` or
  /// \`containeranalysis.occurrences.list\` on an \`Occurrence\`, or a
  /// \`PERMISSION_DENIED\` error otherwise. The resource takes the following
  /// formats: \`projects/{projectid}/occurrences/{occurrenceid}\` for
  /// occurrences and projects/{projectid}/notes/{noteid} for notes
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence resource.
  ///
  /// Requires list permission on the project (for example,
  /// "storage.objects.list" on the containing bucket for testing permission of
  /// an object). Attempting to call this method on a non-existent resource will
  /// result in a `NOT_FOUND` error if the user has list permission on the
  /// project, or a `PERMISSION_DENIED` error otherwise. The resource takes the
  /// following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for
  /// `Occurrences` and `projects/{PROJECT_ID}/notes/{NOTE_ID}` for `Notes`
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

  /// Lists `Occurrences` referencing the specified `Note`.
  ///
  /// Use this method to get all occurrences referencing your `Note` across all
  /// your customer projects.
  ///
  /// Request parameters:
  ///
  /// [name] - The name field will contain the note name for example:
  /// "provider/{provider_id}/notes/{note_id}"
  /// Value must have pattern `^projects/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of notes to return in the list.
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/occurrences';

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

  /// Creates a new `Occurrence`.
  ///
  /// Use this method to create `Occurrences` for a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - This field contains the project Id for example:
  /// "projects/{project_id}"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [name] - The name of the project. Should be of the form
  /// "projects/{project_id}". @Deprecated
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
    core.String? name,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/occurrences';

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

  /// Deletes the given `Occurrence` from the system.
  ///
  /// Use this when an `Occurrence` is no longer applicable for the given
  /// resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form of
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested `Occurrence`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence of the form
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Occurrence.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a note or an `Occurrence` resource.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively. Attempting to call this method on a
  /// resource without the required permission will result in a
  /// `PERMISSION_DENIED` error. Attempting to call this method on a
  /// non-existent resource will result in a `NOT_FOUND` error if the user has
  /// list permission on the project, or a `PERMISSION_DENIED` error otherwise.
  /// The resource takes the following formats:
  /// `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and
  /// projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the `Note` attached to the given `Occurrence`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence in the form
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/notes';

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
  /// [parent] - This contains the project Id for example: projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetVulnzOccurrencesSummaryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetVulnzOccurrencesSummaryResponse> getVulnerabilitySummary(
    core.String parent, {
    core.String? filter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' +
        core.Uri.encodeFull('$parent') +
        '/occurrences:vulnerabilitySummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetVulnzOccurrencesSummaryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists active `Occurrences` for a given project matching the filters.
  ///
  /// Request parameters:
  ///
  /// [parent] - This contains the project Id for example:
  /// projects/{project_id}.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [kind] - The kind of occurrences to filter on.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown
  /// - "PACKAGE_VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD_DETAILS" : The note and occurrence assert build provenance.
  /// - "IMAGE_BASIS" : This represents an image basis relationship.
  /// - "PACKAGE_MANAGER" : This represents a package installed via a package
  /// manager.
  /// - "DEPLOYABLE" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION_AUTHORITY" : This represents a logical "role" that can
  /// attest to artifacts.
  /// - "UPGRADE" : This represents an available software upgrade.
  /// - "COMPLIANCE" : This represents a compliance check that can be applied to
  /// a resource.
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents a reference to an SBOM.
  /// - "SECRET" : This represents a secret.
  ///
  /// [name] - The name field contains the project Id. For example:
  /// "projects/{project_id} @Deprecated
  ///
  /// [pageSize] - Number of occurrences to return in the list.
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
    core.String? kind,
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (kind != null) 'kind': [kind],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/occurrences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOccurrencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing occurrence.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the occurrence. Should be of the form
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID}".
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

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

  /// Sets the access control policy on the specified \`Note\` or
  /// \`Occurrence\`.
  ///
  /// Requires \`containeranalysis.notes.setIamPolicy\` or
  /// \`containeranalysis.occurrences.setIamPolicy\` permission if the resource
  /// is a \`Note\` or an \`Occurrence\`, respectively. Attempting to call this
  /// method without these permissions will result in a \` \`PERMISSION_DENIED\`
  /// error. Attempting to call this method on a non-existent resource will
  /// result in a \`NOT_FOUND\` error if the user has
  /// \`containeranalysis.notes.list\` permission on a \`Note\` or
  /// \`containeranalysis.occurrences.list\` on an \`Occurrence\`, or a
  /// \`PERMISSION_DENIED\` error otherwise. The resource takes the following
  /// formats: \`projects/{projectid}/occurrences/{occurrenceid}\` for
  /// occurrences and projects/{projectid}/notes/{noteid} for notes
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence resource.
  ///
  /// Requires list permission on the project (for example,
  /// "storage.objects.list" on the containing bucket for testing permission of
  /// an object). Attempting to call this method on a non-existent resource will
  /// result in a `NOT_FOUND` error if the user has list permission on the
  /// project, or a `PERMISSION_DENIED` error otherwise. The resource takes the
  /// following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for
  /// `Occurrences` and `projects/{PROJECT_ID}/notes/{NOTE_ID}` for `Notes`
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new `Operation`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project Id that this operation should be created under.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    CreateOperationRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/operations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing operation returns an error if operation does not
  /// exist.
  ///
  /// The only valid operations are to update mark the done bit change the
  /// result.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the Operation. Should be of the form
  /// "projects/{provider_id}/operations/{operation_id}".
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    UpdateOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsScanConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsScanConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a specific scan configuration for a project.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the ScanConfig in the form
  /// projects/{project_id}/scanConfigs/{scan_config_id}
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
  async.Future<ScanConfig> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists scan configurations for a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - This containers the project Id i.e.: projects/{project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - The number of items to return.
  ///
  /// [pageToken] - The page token to use for the next request.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/scanConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScanConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the scan configuration to a new value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The scan config to update of the form
  /// projects/{project_id}/scanConfigs/{scan_config_id}.
  /// Value must have pattern `^projects/\[^/\]+/scanConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The fields to update.
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
  async.Future<ScanConfig> patch(
    ScanConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ScanConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProvidersResource {
  final commons.ApiRequester _requester;

  ProvidersNotesResource get notes => ProvidersNotesResource(_requester);

  ProvidersResource(commons.ApiRequester client) : _requester = client;
}

class ProvidersNotesResource {
  final commons.ApiRequester _requester;

  ProvidersNotesOccurrencesResource get occurrences =>
      ProvidersNotesOccurrencesResource(_requester);

  ProvidersNotesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new `Note`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the project. Should be of the form
  /// "providers/{provider_id}". @Deprecated
  /// Value must have pattern `^providers/\[^/\]+$`.
  ///
  /// [noteId] - The ID to use for this note.
  ///
  /// [parent] - This field contains the project Id for example:
  /// "projects/{project_id}
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
    core.String name, {
    core.String? noteId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (noteId != null) 'noteId': [noteId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/notes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given `Note` from the system.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// "providers/{provider_id}/notes/{NOTE_ID}"
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested `Note`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note in the form of
  /// "providers/{provider_id}/notes/{NOTE_ID}"
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a note or an `Occurrence` resource.
  ///
  /// Requires `containeranalysis.notes.setIamPolicy` or
  /// `containeranalysis.occurrences.setIamPolicy` permission if the resource is
  /// a note or occurrence, respectively. Attempting to call this method on a
  /// resource without the required permission will result in a
  /// `PERMISSION_DENIED` error. Attempting to call this method on a
  /// non-existent resource will result in a `NOT_FOUND` error if the user has
  /// list permission on the project, or a `PERMISSION_DENIED` error otherwise.
  /// The resource takes the following formats:
  /// `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and
  /// projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all `Notes` for a given project.
  ///
  /// Request parameters:
  ///
  /// [name] - The name field will contain the project Id for example:
  /// "providers/{provider_id} @Deprecated
  /// Value must have pattern `^providers/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of notes to return in the list.
  ///
  /// [pageToken] - Token to provide to skip to a particular spot in the list.
  ///
  /// [parent] - This field contains the project Id for example:
  /// "projects/{PROJECT_ID}".
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
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/notes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing `Note`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the note. Should be of the form
  /// "projects/{provider_id}/notes/{note_id}".
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Note.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified \`Note\` or
  /// \`Occurrence\`.
  ///
  /// Requires \`containeranalysis.notes.setIamPolicy\` or
  /// \`containeranalysis.occurrences.setIamPolicy\` permission if the resource
  /// is a \`Note\` or an \`Occurrence\`, respectively. Attempting to call this
  /// method without these permissions will result in a \` \`PERMISSION_DENIED\`
  /// error. Attempting to call this method on a non-existent resource will
  /// result in a \`NOT_FOUND\` error if the user has
  /// \`containeranalysis.notes.list\` permission on a \`Note\` or
  /// \`containeranalysis.occurrences.list\` on an \`Occurrence\`, or a
  /// \`PERMISSION_DENIED\` error otherwise. The resource takes the following
  /// formats: \`projects/{projectid}/occurrences/{occurrenceid}\` for
  /// occurrences and projects/{projectid}/notes/{noteid} for notes
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified note or
  /// occurrence resource.
  ///
  /// Requires list permission on the project (for example,
  /// "storage.objects.list" on the containing bucket for testing permission of
  /// an object). Attempting to call this method on a non-existent resource will
  /// result in a `NOT_FOUND` error if the user has list permission on the
  /// project, or a `PERMISSION_DENIED` error otherwise. The resource takes the
  /// following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for
  /// `Occurrences` and `projects/{PROJECT_ID}/notes/{NOTE_ID}` for `Notes`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
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
        'v1alpha1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

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

class ProvidersNotesOccurrencesResource {
  final commons.ApiRequester _requester;

  ProvidersNotesOccurrencesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists `Occurrences` referencing the specified `Note`.
  ///
  /// Use this method to get all occurrences referencing your `Note` across all
  /// your customer projects.
  ///
  /// Request parameters:
  ///
  /// [name] - The name field will contain the note name for example:
  /// "provider/{provider_id}/notes/{note_id}"
  /// Value must have pattern `^providers/\[^/\]+/notes/\[^/\]+$`.
  ///
  /// [filter] - The filter expression.
  ///
  /// [pageSize] - Number of notes to return in the list.
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

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name') + '/occurrences';

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

/// Indicates which analysis completed successfully.
///
/// Multiple types of analysis can be performed on a single resource.
class AnalysisCompleted {
  /// type of analysis that were completed on a resource.
  core.List<core.String>? analysisType;

  AnalysisCompleted({this.analysisType});

  AnalysisCompleted.fromJson(core.Map json_)
    : this(
        analysisType:
            (json_['analysisType'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analysisType != null) 'analysisType': analysisType!,
  };
}

/// Artifact describes a build product.
class Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
  /// container.
  core.String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest
  /// like gcr.io/projectID/imagename@sha256:123456
  core.String? id;

  /// Name of the artifact.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. This field is
  /// deprecated in favor of the plural `names` field; it continues to exist
  /// here to allow existing BuildProvenance serialized to json in
  /// google.devtools.containeranalysis.v1alpha1.BuildDetails.provenance_bytes
  /// to deserialize back into proto.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? name;

  /// Related artifact names.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. Note that a single
  /// Artifact ID can have multiple names, for example if two tags are applied
  /// to one image.
  core.List<core.String>? names;

  Artifact({this.checksum, this.id, this.name, this.names});

  Artifact.fromJson(core.Map json_)
    : this(
        checksum: json_['checksum'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        names:
            (json_['names'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checksum != null) 'checksum': checksum!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (names != null) 'names': names!,
  };
}

/// Assessment provides all information that is related to a single
/// vulnerability for this product.
class Assessment {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE)
  /// tracking number for the vulnerability.
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
  core.List<URI>? relatedUris;

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
                  (value) => URI.fromJson(
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
/// The authenticity of an Attestation can be verified using the attached
/// signature. If the verifier trusts the public key of the signer, then
/// verifying the signature is sufficient to establish trust. In this
/// circumstance, the AttestationAuthority to which this Attestation is attached
/// is primarily useful for look-up (how to find this Attestation if you already
/// know the Authority and artifact to be verified) and intent (which authority
/// was this attestation intended to sign for).
class Attestation {
  PgpSignedAttestation? pgpSignedAttestation;

  Attestation({this.pgpSignedAttestation});

  Attestation.fromJson(core.Map json_)
    : this(
        pgpSignedAttestation:
            json_.containsKey('pgpSignedAttestation')
                ? PgpSignedAttestation.fromJson(
                  json_['pgpSignedAttestation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pgpSignedAttestation != null)
      'pgpSignedAttestation': pgpSignedAttestation!,
  };
}

/// Note kind that represents a logical attestation "role" or "authority".
///
/// For example, an organization might have one `AttestationAuthority` for "QA"
/// and one for "build". This Note is intended to act strictly as a grouping
/// mechanism for the attached Occurrences (Attestations). This grouping
/// mechanism also provides a security boundary, since IAM ACLs gate the ability
/// for a principle to attach an Occurrence to a given Note. It also provides a
/// single point of lookup to find all attached Attestation Occurrences, even if
/// they don't all live in the same project.
class AttestationAuthority {
  AttestationAuthorityHint? hint;

  AttestationAuthority({this.hint});

  AttestationAuthority.fromJson(core.Map json_)
    : this(
        hint:
            json_.containsKey('hint')
                ? AttestationAuthorityHint.fromJson(
                  json_['hint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hint != null) 'hint': hint!,
  };
}

/// This submessage provides human-readable hints about the purpose of the
/// AttestationAuthority.
///
/// Because the name of a Note acts as its resource reference, it is important
/// to disambiguate the canonical name of the Note (which might be a UUID for
/// security purposes) from "readable" names more suitable for debug output.
/// Note that these hints should NOT be used to look up AttestationAuthorities
/// in security sensitive contexts, such as when looking up Attestations to
/// verify.
class AttestationAuthorityHint {
  /// The human readable name of this Attestation Authority, for example "qa".
  core.String? humanReadableName;

  AttestationAuthorityHint({this.humanReadableName});

  AttestationAuthorityHint.fromJson(core.Map json_)
    : this(humanReadableName: json_['humanReadableName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (humanReadableName != null) 'humanReadableName': humanReadableName!,
  };
}

/// BaseImage describes a base image of a container image.
typedef BaseImage = $BaseImage;

/// Basis describes the base image portion (Note) of the DockerImage
/// relationship.
///
/// Linked occurrences are derived from this or an equivalent image via: FROM Or
/// an equivalent reference, e.g. a tag of the resource_url.
class Basis {
  /// The fingerprint of the base image.
  Fingerprint? fingerprint;

  /// The resource_url for the resource representing the basis of associated
  /// occurrence images.
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

/// Message encapsulating build provenance details.
class BuildDetails {
  /// In-Toto Slsa Provenance V1 represents a slsa provenance meeting the slsa
  /// spec, wrapped in an in-toto statement.
  ///
  /// This allows for direct jsonification of a to-spec in-toto slsa statement
  /// with a to-spec slsa provenance.
  InTotoSlsaProvenanceV1? inTotoSlsaProvenanceV1;

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

  /// The actual provenance
  BuildProvenance? provenance;

  /// Serialized JSON representation of the provenance, used in generating the
  /// `BuildSignature` in the corresponding Result.
  ///
  /// After verifying the signature, `provenance_bytes` can be unmarshalled and
  /// compared to the provenance to confirm that it is unchanged. A
  /// base64-encoded string representation of the provenance bytes is used for
  /// the signature in order to interoperate with openssl which expects this
  /// format for signature verification. The serialized form is captured both to
  /// avoid ambiguity in how the provenance is marshalled to json as well to
  /// prevent incompatibilities with future changes.
  core.String? provenanceBytes;

  BuildDetails({
    this.inTotoSlsaProvenanceV1,
    this.intotoProvenance,
    this.intotoStatement,
    this.provenance,
    this.provenanceBytes,
  });

  BuildDetails.fromJson(core.Map json_)
    : this(
        inTotoSlsaProvenanceV1:
            json_.containsKey('inTotoSlsaProvenanceV1')
                ? InTotoSlsaProvenanceV1.fromJson(
                  json_['inTotoSlsaProvenanceV1']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intotoProvenance:
            json_.containsKey('intotoProvenance')
                ? InTotoProvenance.fromJson(
                  json_['intotoProvenance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intotoStatement:
            json_.containsKey('intotoStatement')
                ? InTotoStatement.fromJson(
                  json_['intotoStatement']
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
    if (intotoProvenance != null) 'intotoProvenance': intotoProvenance!,
    if (intotoStatement != null) 'intotoStatement': intotoStatement!,
    if (provenance != null) 'provenance': provenance!,
    if (provenanceBytes != null) 'provenanceBytes': provenanceBytes!,
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
  core.String? finishTime;

  /// Unique identifier of the build.
  core.String? id;

  /// Google Cloud Storage bucket where logs were written.
  core.String? logsBucket;

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
    this.finishTime,
    this.id,
    this.logsBucket,
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
        finishTime: json_['finishTime'] as core.String?,
        id: json_['id'] as core.String?,
        logsBucket: json_['logsBucket'] as core.String?,
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
    if (finishTime != null) 'finishTime': finishTime!,
    if (id != null) 'id': id!,
    if (logsBucket != null) 'logsBucket': logsBucket!,
    if (projectId != null) 'projectId': projectId!,
    if (sourceProvenance != null) 'sourceProvenance': sourceProvenance!,
    if (startTime != null) 'startTime': startTime!,
    if (triggerId != null) 'triggerId': triggerId!,
  };
}

/// Message encapsulating the signature of the verified build.
class BuildSignature {
  /// An Id for the key used to sign.
  ///
  /// This could be either an Id for the key stored in `public_key` (such as the
  /// Id or fingerprint for a PGP key, or the CN for a cert), or a reference to
  /// an external key (such as a reference to a key in Cloud Key Management
  /// Service).
  core.String? keyId;

  /// The type of the key, either stored in `public_key` or referenced in
  /// `key_id`
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

  /// Signature of the related `BuildProvenance`, encoded in a base64 string.
  core.String? signature;

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

/// Note holding the version of the provider's builder and the signature of the
/// provenance message in linked BuildDetails.
class BuildType {
  /// Version of the builder which produced this Note.
  core.String? builderVersion;

  /// Signature of the build in Occurrences pointing to the Note containing this
  /// `BuilderDetails`.
  BuildSignature? signature;

  BuildType({this.builderVersion, this.signature});

  BuildType.fromJson(core.Map json_)
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

typedef BuilderConfig = $Shared02;

/// Common Vulnerability Scoring System.
///
/// This message is compatible with CVSS v2 and v3. For CVSS v2 details, see
/// https://www.first.org/cvss/v2/guide CVSS v2 calculator:
/// https://nvd.nist.gov/vuln-metrics/cvss/v2-calculator For CVSS v3 details,
/// see https://www.first.org/cvss/specification-document CVSS v3 calculator:
/// https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator
typedef CVSS = $CVSS01;

/// A compliance check that is a CIS benchmark.
class CisBenchmark {
  /// The profile level of this CIS benchmark check.
  core.int? profileLevel;

  /// The severity level of this CIS benchmark check.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? severity;

  CisBenchmark({this.profileLevel, this.severity});

  CisBenchmark.fromJson(core.Map json_)
    : this(
        profileLevel: json_['profileLevel'] as core.int?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (profileLevel != null) 'profileLevel': profileLevel!,
    if (severity != null) 'severity': severity!,
  };
}

/// Command describes a step performed as part of the build pipeline.
class Command {
  /// Command-line arguments used when executing this Command.
  core.List<core.String>? args;

  /// Working directory (relative to project source root) used when running this
  /// Command.
  core.String? dir;

  /// Environment variables set before running this Command.
  core.List<core.String>? env;

  /// Optional unique identifier for this Command, used in wait_for to reference
  /// this Command as a dependency.
  core.String? id;

  /// Name of the command, as presented on the command line, or if the command
  /// is packaged as a Docker container, as presented to `docker pull`.
  core.String? name;

  /// The ID(s) of the Command(s) that this Command depends on.
  core.List<core.String>? waitFor;

  Command({this.args, this.dir, this.env, this.id, this.name, this.waitFor});

  Command.fromJson(core.Map json_)
    : this(
        args:
            (json_['args'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        dir: json_['dir'] as core.String?,
        env:
            (json_['env'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        waitFor:
            (json_['waitFor'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef Completeness = $Completeness;

/// ComplianceNote encapsulates all information about a specific compliance
/// check.
class ComplianceNote {
  /// Right now we only have one compliance type, but we may add additional
  /// types in the future.
  CisBenchmark? cisBenchmark;

  /// A description about this compliance check.
  core.String? description;

  /// Potential impact of the suggested remediation
  core.String? impact;

  /// A rationale for the existence of this compliance check.
  core.String? rationale;

  /// A description of remediation steps if the compliance check fails.
  core.String? remediation;

  /// Serialized scan instructions with a predefined format.
  core.String? scanInstructions;
  core.List<core.int> get scanInstructionsAsBytes =>
      convert.base64.decode(scanInstructions!);

  set scanInstructionsAsBytes(core.List<core.int> bytes_) {
    scanInstructions = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The title that identifies this compliance check.
  core.String? title;

  /// The OS and config versions the benchmark applies to.
  core.List<ComplianceVersion>? version;

  ComplianceNote({
    this.cisBenchmark,
    this.description,
    this.impact,
    this.rationale,
    this.remediation,
    this.scanInstructions,
    this.title,
    this.version,
  });

  ComplianceNote.fromJson(core.Map json_)
    : this(
        cisBenchmark:
            json_.containsKey('cisBenchmark')
                ? CisBenchmark.fromJson(
                  json_['cisBenchmark'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        impact: json_['impact'] as core.String?,
        rationale: json_['rationale'] as core.String?,
        remediation: json_['remediation'] as core.String?,
        scanInstructions: json_['scanInstructions'] as core.String?,
        title: json_['title'] as core.String?,
        version:
            (json_['version'] as core.List?)
                ?.map(
                  (value) => ComplianceVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cisBenchmark != null) 'cisBenchmark': cisBenchmark!,
    if (description != null) 'description': description!,
    if (impact != null) 'impact': impact!,
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
  /// The reason for non compliance of these files.
  core.String? nonComplianceReason;

  /// A list of files which are violating compliance checks.
  core.List<NonCompliantFile>? nonCompliantFiles;

  /// The OS and config version the benchmark was run on.
  ComplianceVersion? version;

  ComplianceOccurrence({
    this.nonComplianceReason,
    this.nonCompliantFiles,
    this.version,
  });

  ComplianceOccurrence.fromJson(core.Map json_)
    : this(
        nonComplianceReason: json_['nonComplianceReason'] as core.String?,
        nonCompliantFiles:
            (json_['nonCompliantFiles'] as core.List?)
                ?.map(
                  (value) => NonCompliantFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        version:
            json_.containsKey('version')
                ? ComplianceVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nonComplianceReason != null)
      'nonComplianceReason': nonComplianceReason!,
    if (nonCompliantFiles != null) 'nonCompliantFiles': nonCompliantFiles!,
    if (version != null) 'version': version!,
  };
}

/// Describes the CIS benchmark version that is applicable to a given OS and os
/// version.
typedef ComplianceVersion = $ComplianceVersion;

/// Request for creating an operation
class CreateOperationRequest {
  /// The operation to create.
  Operation? operation;

  /// The ID to use for this operation.
  core.String? operationId;

  CreateOperationRequest({this.operation, this.operationId});

  CreateOperationRequest.fromJson(core.Map json_)
    : this(
        operation:
            json_.containsKey('operation')
                ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        operationId: json_['operationId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (operation != null) 'operation': operation!,
    if (operationId != null) 'operationId': operationId!,
  };
}

/// A note describing an attestation
class DSSEAttestationNote {
  /// DSSEHint hints at the purpose of the attestation authority.
  DSSEHint? hint;

  DSSEAttestationNote({this.hint});

  DSSEAttestationNote.fromJson(core.Map json_)
    : this(
        hint:
            json_.containsKey('hint')
                ? DSSEHint.fromJson(
                  json_['hint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hint != null) 'hint': hint!,
  };
}

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures
  /// in this metadata.
  Envelope? envelope;
  InTotoStatement? statement;

  DSSEAttestationOccurrence({this.envelope, this.statement});

  DSSEAttestationOccurrence.fromJson(core.Map json_)
    : this(
        envelope:
            json_.containsKey('envelope')
                ? Envelope.fromJson(
                  json_['envelope'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        statement:
            json_.containsKey('statement')
                ? InTotoStatement.fromJson(
                  json_['statement'] as core.Map<core.String, core.dynamic>,
                )
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
typedef DSSEHint = $DSSEHint;

/// An artifact that can be deployed in some runtime.
class Deployable {
  /// Resource URI for the artifact being deployed.
  core.List<core.String>? resourceUri;

  Deployable({this.resourceUri});

  Deployable.fromJson(core.Map json_)
    : this(
        resourceUri:
            (json_['resourceUri'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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
  core.String? deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown
  /// - "GKE" : Google Container Engine
  /// - "FLEX" : Google App Engine: Flexible Environment
  /// - "CUSTOM" : Custom user-defined platform
  core.String? platform;

  /// Resource URI for the artifact being deployed taken from the deployable
  /// field with the same name.
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

  Deployment.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        config: json_['config'] as core.String?,
        deployTime: json_['deployTime'] as core.String?,
        platform: json_['platform'] as core.String?,
        resourceUri:
            (json_['resourceUri'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        undeployTime: json_['undeployTime'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
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

/// Identifies all occurrences of this vulnerability in the package for a
/// specific distro/location For example: glibc in cpe:/o:debian:debian_linux:8
/// for versions 2.1 - 2.2
class Detail {
  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) in which
  /// the vulnerability manifests.
  ///
  /// Examples include distro or storage location for vulnerable jar. This field
  /// can be used as a filter in list requests.
  core.String? cpeUri;

  /// A vendor-specific description of this note.
  core.String? description;

  /// The fix for this specific package version.
  VulnerabilityLocation? fixedLocation;

  /// Whether this Detail is obsolete.
  ///
  /// Occurrences are expected not to point to obsolete details.
  core.bool? isObsolete;

  /// The max version of the package in which the vulnerability exists.
  Version? maxAffectedVersion;

  /// The min version of the package in which the vulnerability exists.
  Version? minAffectedVersion;

  /// The name of the package where the vulnerability was found.
  ///
  /// This field can be used as a filter in list requests.
  core.String? package;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc)
  core.String? packageType;

  /// The severity (eg: distro assigned severity) for this vulnerability.
  core.String? severityName;

  /// The source from which the information in this Detail was obtained.
  core.String? source;

  /// The vendor of the product.
  ///
  /// e.g. "google"
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
    if (vendor != null) 'vendor': vendor!,
  };
}

/// Digest information.
typedef Digest = $Digest;

/// Provides information about the scan status of a discovered resource.
class Discovered {
  /// The list of analysis that were completed for a resource.
  AnalysisCompleted? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource.
  ///
  /// There could be 0 or more of these errors.
  core.List<Status>? analysisError;

  /// The status of discovery for the resource.
  /// Possible string values are:
  /// - "ANALYSIS_STATUS_UNSPECIFIED" : Unknown
  /// - "PENDING" : Resource is known but no action has been taken yet.
  /// - "SCANNING" : Resource is being analyzed.
  /// - "COMPLETE" : Analysis has completed
  /// - "FINISHED_SUCCESS" : Analysis has finished successfully.
  /// - "FINISHED_FAILED" : Analysis has finished unsuccessfully, the analysis
  /// itself is in a bad state.
  /// - "FINISHED_UNSUPPORTED" : The resource is known not to be supported.
  core.String? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user.
  ///
  /// The LocalizedMessage output only and populated by the API.
  Status? analysisStatusError;

  /// The time occurrences related to this discovery occurrence were archived.
  core.String? archiveTime;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String? continuousAnalysis;

  /// The CPE of the resource being scanned.
  core.String? cpe;

  /// Files that make up the resource described by the occurrence.
  ///
  /// Optional.
  core.List<File>? files;

  /// The last time this resource was scanned.
  core.String? lastScanTime;

  /// An operation that indicates the status of the current scan.
  ///
  /// This field is deprecated, do not use.
  ///
  /// Output only.
  Operation? operation;

  /// The status of an SBOM generation.
  ///
  /// Output only.
  SBOMStatus? sbomStatus;

  /// The status of a vulnerability attestation generation.
  ///
  /// Output only.
  VulnerabilityAttestation? vulnerabilityAttestation;

  Discovered({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.archiveTime,
    this.continuousAnalysis,
    this.cpe,
    this.files,
    this.lastScanTime,
    this.operation,
    this.sbomStatus,
    this.vulnerabilityAttestation,
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
        archiveTime: json_['archiveTime'] as core.String?,
        continuousAnalysis: json_['continuousAnalysis'] as core.String?,
        cpe: json_['cpe'] as core.String?,
        files:
            (json_['files'] as core.List?)
                ?.map(
                  (value) => File.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastScanTime: json_['lastScanTime'] as core.String?,
        operation:
            json_.containsKey('operation')
                ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sbomStatus:
            json_.containsKey('sbomStatus')
                ? SBOMStatus.fromJson(
                  json_['sbomStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerabilityAttestation:
            json_.containsKey('vulnerabilityAttestation')
                ? VulnerabilityAttestation.fromJson(
                  json_['vulnerabilityAttestation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analysisCompleted != null) 'analysisCompleted': analysisCompleted!,
    if (analysisError != null) 'analysisError': analysisError!,
    if (analysisStatus != null) 'analysisStatus': analysisStatus!,
    if (analysisStatusError != null)
      'analysisStatusError': analysisStatusError!,
    if (archiveTime != null) 'archiveTime': archiveTime!,
    if (continuousAnalysis != null) 'continuousAnalysis': continuousAnalysis!,
    if (cpe != null) 'cpe': cpe!,
    if (files != null) 'files': files!,
    if (lastScanTime != null) 'lastScanTime': lastScanTime!,
    if (operation != null) 'operation': operation!,
    if (sbomStatus != null) 'sbomStatus': sbomStatus!,
    if (vulnerabilityAttestation != null)
      'vulnerabilityAttestation': vulnerabilityAttestation!,
  };
}

/// A note that indicates a type of analysis a provider would perform.
///
/// This note exists in a provider's project. A `Discovery` occurrence is
/// created in a consumer's project at the start of analysis. The occurrence's
/// operation will indicate the status of the analysis. Absence of an occurrence
/// linked to this note for a resource indicates that analysis hasn't started.
class Discovery {
  /// The kind of analysis that is handled by this discovery.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown
  /// - "PACKAGE_VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD_DETAILS" : The note and occurrence assert build provenance.
  /// - "IMAGE_BASIS" : This represents an image basis relationship.
  /// - "PACKAGE_MANAGER" : This represents a package installed via a package
  /// manager.
  /// - "DEPLOYABLE" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION_AUTHORITY" : This represents a logical "role" that can
  /// attest to artifacts.
  /// - "UPGRADE" : This represents an available software upgrade.
  /// - "COMPLIANCE" : This represents a compliance check that can be applied to
  /// a resource.
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents a reference to an SBOM.
  /// - "SECRET" : This represents a secret.
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
/// e.g. Debian's jessie-backports dpkg mirror
class Distribution {
  /// The CPU architecture for which packages in this distribution channel were
  /// built
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture
  /// - "X86" : X86 architecture
  /// - "X64" : X64 architecture
  core.String? architecture;

  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
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

/// DocumentNote represents an SPDX Document Creation Infromation section:
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
  /// The bytes being signed
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> bytes_) {
    payload = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The type of payload being signed
  core.String? payloadType;

  /// The signatures over the payload
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

/// A DSSE signature
class EnvelopeSignature {
  /// A reference id to the key being used for signing
  core.String? keyid;

  /// The signature itself
  core.String? sig;
  core.List<core.int> get sigAsBytes => convert.base64.decode(sig!);

  set sigAsBytes(core.List<core.int> bytes_) {
    sig = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  EnvelopeSignature({this.keyid, this.sig});

  EnvelopeSignature.fromJson(core.Map json_)
    : this(
        keyid: json_['keyid'] as core.String?,
        sig: json_['sig'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keyid != null) 'keyid': keyid!,
    if (sig != null) 'sig': sig!,
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

/// A file as part of a resource.
class File {
  /// The digest(s) of the file.
  ///
  /// Optional.
  core.Map<core.String, core.String>? digest;

  /// The name of the file.
  ///
  /// Optional.
  core.String? name;

  File({this.digest, this.name});

  File.fromJson(core.Map json_)
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

/// Container message for hashes of byte content of files, used in Source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
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

/// Indicates the location at which a package was found.
class FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate
  /// the path to war file combined with the path to jar file.
  core.String? filePath;

  /// Each package found in a file should have its own layer metadata (that is,
  /// information from the origin layer of the package).
  LayerDetails? layerDetails;

  FileLocation({this.filePath, this.layerDetails});

  FileLocation.fromJson(core.Map json_)
    : this(
        filePath: json_['filePath'] as core.String?,
        layerDetails:
            json_.containsKey('layerDetails')
                ? LayerDetails.fromJson(
                  json_['layerDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filePath != null) 'filePath': filePath!,
    if (layerDetails != null) 'layerDetails': layerDetails!,
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
class Fingerprint {
  /// The layer-id of the final layer in the Docker image's v1 representation.
  ///
  /// This field can be used as a filter in list requests.
  core.String? v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  core.List<core.String>? v2Blob;

  /// The name of the image's v2 blobs computed via: \[bottom\] := v2_blobbottom
  /// := sha256(v2_blob\[N\] + " " + v2_name\[N+1\]) Only the name of the final
  /// blob is kept.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? v2Name;

  Fingerprint({this.v1Name, this.v2Blob, this.v2Name});

  Fingerprint.fromJson(core.Map json_)
    : this(
        v1Name: json_['v1Name'] as core.String?,
        v2Blob:
            (json_['v2Blob'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        v2Name: json_['v2Name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (v1Name != null) 'v1Name': v1Name!,
    if (v2Blob != null) 'v2Blob': v2Blob!,
    if (v2Name != null) 'v2Name': v2Name!,
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

/// A summary of how many vulnz occurrences there are per severity type.
///
/// counts by groups, or if we should have different summary messages like this.
class GetVulnzOccurrencesSummaryResponse {
  /// A map of how many occurrences were found for each severity.
  core.List<SeverityCount>? counts;

  GetVulnzOccurrencesSummaryResponse({this.counts});

  GetVulnzOccurrencesSummaryResponse.fromJson(core.Map json_)
    : this(
        counts:
            (json_['counts'] as core.List?)
                ?.map(
                  (value) => SeverityCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (counts != null) 'counts': counts!,
  };
}

/// An alias to a repo revision.
typedef GoogleDevtoolsContaineranalysisV1alpha1AliasContext = $AliasContext;

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  GoogleDevtoolsContaineranalysisV1alpha1AliasContext? aliasContext;

  /// The ID of the repo.
  GoogleDevtoolsContaineranalysisV1alpha1RepoId? repoId;

  /// A revision ID.
  core.String? revisionId;

  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromJson(
    core.Map json_,
  ) : this(
        aliasContext:
            json_.containsKey('aliasContext')
                ? GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromJson(
                  json_['aliasContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        repoId:
            json_.containsKey('repoId')
                ? GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromJson(
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

/// A SourceContext referring to a Gerrit project.
class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext {
  /// An alias, which may be a branch or tag.
  GoogleDevtoolsContaineranalysisV1alpha1AliasContext? aliasContext;

  /// The full project name within the host.
  ///
  /// Projects may be nested, so "project/subproject" is a valid project name.
  /// The "repo name" is the hostURI/project.
  core.String? gerritProject;

  /// The URI of a running Gerrit instance.
  core.String? hostUri;

  /// A revision (commit) ID.
  core.String? revisionId;

  GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromJson(
    core.Map json_,
  ) : this(
        aliasContext:
            json_.containsKey('aliasContext')
                ? GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromJson(
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

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext {
  /// Git commit hash.
  ///
  /// Required.
  core.String? revisionId;

  /// Git repository URL.
  core.String? url;

  GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext({
    this.revisionId,
    this.url,
  });

  GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromJson(
    core.Map json_,
  ) : this(
        revisionId: json_['revisionId'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (revisionId != null) 'revisionId': revisionId!,
    if (url != null) 'url': url!,
  };
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
typedef GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId = $ProjectRepoId;

/// A unique identifier for a Cloud Repo.
class GoogleDevtoolsContaineranalysisV1alpha1RepoId {
  /// A combination of a project ID and a repo name.
  GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId? projectRepoId;

  /// A server-assigned, globally unique identifier.
  core.String? uid;

  GoogleDevtoolsContaineranalysisV1alpha1RepoId({this.projectRepoId, this.uid});

  GoogleDevtoolsContaineranalysisV1alpha1RepoId.fromJson(core.Map json_)
    : this(
        projectRepoId:
            json_.containsKey('projectRepoId')
                ? GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId.fromJson(
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

/// Identifies the entity that executed the recipe, which is trusted to have
/// correctly performed the operation and populated this provenance.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder {
  /// URI indicating the builder’s identity.
  core.String? id;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder({
    this.id,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
    core.Map json_,
  ) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

/// Indicates that the builder claims certain fields in this message to be
/// complete.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness {
  /// If true, the builder claims that invocation.environment is complete.
  core.bool? environment;

  /// If true, the builder claims that materials is complete.
  core.bool? materials;

  /// If true, the builder claims that invocation.parameters is complete.
  core.bool? parameters;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness({
    this.environment,
    this.materials,
    this.parameters,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
    core.Map json_,
  ) : this(
        environment: json_['environment'] as core.bool?,
        materials: json_['materials'] as core.bool?,
        parameters: json_['parameters'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (environment != null) 'environment': environment!,
    if (materials != null) 'materials': materials!,
    if (parameters != null) 'parameters': parameters!,
  };
}

/// Describes where the config file that kicked off the build came from.
///
/// This is effectively a pointer to the source where buildConfig came from.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource {
  /// Collection of cryptographic digests for the contents of the artifact
  /// specified by invocation.configSource.uri.
  core.Map<core.String, core.String>? digest;

  /// String identifying the entry point into the build.
  core.String? entryPoint;

  /// URI indicating the identity of the source of the config.
  core.String? uri;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource({
    this.digest,
    this.entryPoint,
    this.uri,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
    core.Map json_,
  ) : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        entryPoint: json_['entryPoint'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (digest != null) 'digest': digest!,
    if (entryPoint != null) 'entryPoint': entryPoint!,
    if (uri != null) 'uri': uri!,
  };
}

/// Identifies the event that kicked off the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation {
  /// Describes where the config file that kicked off the build came from.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource?
  configSource;

  /// Any other builder-controlled inputs necessary for correctly evaluating the
  /// build.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? environment;

  /// Collection of all external inputs that influenced the build on top of
  /// invocation.configSource.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
    core.Map json_,
  ) : this(
        configSource:
            json_.containsKey('configSource')
                ? GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
                  json_['configSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        environment:
            json_.containsKey('environment')
                ? json_['environment'] as core.Map<core.String, core.dynamic>
                : null,
        parameters:
            json_.containsKey('parameters')
                ? json_['parameters'] as core.Map<core.String, core.dynamic>
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
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial {
  /// Collection of cryptographic digests for the contents of this artifact.
  core.Map<core.String, core.String>? digest;

  /// The method by which this artifact was referenced during the build.
  core.String? uri;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial({
    this.digest,
    this.uri,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
    core.Map json_,
  ) : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (digest != null) 'digest': digest!,
    if (uri != null) 'uri': uri!,
  };
}

/// Other properties of the build.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata {
  /// The timestamp of when the build completed.
  core.String? buildFinishedOn;

  /// Identifies this particular build invocation, which can be useful for
  /// finding associated logs or other ad-hoc analysis.
  core.String? buildInvocationId;

  /// The timestamp of when the build started.
  core.String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be
  /// complete.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness?
  completeness;

  /// If true, the builder claims that running invocation on materials will
  /// produce bit-for-bit identical output.
  core.bool? reproducible;

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
    core.Map json_,
  ) : this(
        buildFinishedOn: json_['buildFinishedOn'] as core.String?,
        buildInvocationId: json_['buildInvocationId'] as core.String?,
        buildStartedOn: json_['buildStartedOn'] as core.String?,
        completeness:
            json_.containsKey('completeness')
                ? GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reproducible: json_['reproducible'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
    if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
    if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
    if (completeness != null) 'completeness': completeness!,
    if (reproducible != null) 'reproducible': reproducible!,
  };
}

/// A SourceContext is a reference to a tree of files.
///
/// A SourceContext together with a path point to a unique revision of a single
/// file or directory.
class GoogleDevtoolsContaineranalysisV1alpha1SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext? cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext? git;

  /// Labels with user defined metadata.
  core.Map<core.String, core.String>? labels;

  GoogleDevtoolsContaineranalysisV1alpha1SourceContext({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromJson(core.Map json_)
    : this(
        cloudRepo:
            json_.containsKey('cloudRepo')
                ? GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.fromJson(
                  json_['cloudRepo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gerrit:
            json_.containsKey('gerrit')
                ? GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.fromJson(
                  json_['gerrit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        git:
            json_.containsKey('git')
                ? GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.fromJson(
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

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  /// Possible string values are:
  /// - "NONE" : No hash requested.
  /// - "SHA256" : A sha256 hash.
  /// - "GO_MODULE_H1" : Dirhash of a Go module's source code which is then
  /// hex-encoded.
  core.String? type;

  /// The hash value.
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

/// Helps in identifying the underlying product.
///
/// This should be treated like a one-of field. Only one field should be set in
/// this proto. This is a workaround because spanner indexes on one-of fields
/// restrict addition and deletion of fields.
class IdentifierHelper {
  /// The field that is set in the API proto.
  /// Possible string values are:
  /// - "IDENTIFIER_HELPER_FIELD_UNSPECIFIED" : The helper isn't set.
  /// - "GENERIC_URI" : The generic_uri one-of field is set.
  core.String? field;

  /// Contains a URI which is vendor-specific.
  ///
  /// Example: The artifact repository URL of an image.
  core.String? genericUri;

  IdentifierHelper({this.field, this.genericUri});

  IdentifierHelper.fromJson(core.Map json_)
    : this(
        field: json_['field'] as core.String?,
        genericUri: json_['genericUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
    if (genericUri != null) 'genericUri': genericUri!,
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

  InTotoProvenance.fromJson(core.Map json_)
    : this(
        builderConfig:
            json_.containsKey('builderConfig')
                ? BuilderConfig.fromJson(
                  json_['builderConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        materials:
            (json_['materials'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recipe:
            json_.containsKey('recipe')
                ? Recipe.fromJson(
                  json_['recipe'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builderConfig != null) 'builderConfig': builderConfig!,
    if (materials != null) 'materials': materials!,
    if (metadata != null) 'metadata': metadata!,
    if (recipe != null) 'recipe': recipe!,
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

/// Spec defined at
/// https://github.com/in-toto/attestation/tree/main/spec#statement The
/// serialized InTotoStatement will be stored as Envelope.payload.
///
/// Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatement {
  /// Always "https://in-toto.io/Statement/v0.1".
  core.String? P_type;

  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  core.String? predicateType;

  /// Generic Grafeas provenance.
  InTotoProvenance? provenance;

  /// SLSA 0.1 provenance.
  SlsaProvenance? slsaProvenance;

  /// SLSA 0.2 provenance.
  SlsaProvenanceZeroTwo? slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  core.List<Subject>? subject;

  InTotoStatement({
    this.P_type,
    this.predicateType,
    this.provenance,
    this.slsaProvenance,
    this.slsaProvenanceZeroTwo,
    this.subject,
  });

  InTotoStatement.fromJson(core.Map json_)
    : this(
        P_type: json_['_type'] as core.String?,
        predicateType: json_['predicateType'] as core.String?,
        provenance:
            json_.containsKey('provenance')
                ? InTotoProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        slsaProvenance:
            json_.containsKey('slsaProvenance')
                ? SlsaProvenance.fromJson(
                  json_['slsaProvenance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        slsaProvenanceZeroTwo:
            json_.containsKey('slsaProvenanceZeroTwo')
                ? SlsaProvenanceZeroTwo.fromJson(
                  json_['slsaProvenanceZeroTwo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
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
    if (predicateType != null) 'predicateType': predicateType!,
    if (provenance != null) 'provenance': provenance!,
    if (slsaProvenance != null) 'slsaProvenance': slsaProvenance!,
    if (slsaProvenanceZeroTwo != null)
      'slsaProvenanceZeroTwo': slsaProvenanceZeroTwo!,
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
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture
  /// - "X86" : X86 architecture
  /// - "X64" : X64 architecture
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
  /// Output only.
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

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  /// Possible string values are:
  /// - "DIRECTIVE_UNSPECIFIED" : Default value for unsupported/missing
  /// directive
  /// - "MAINTAINER" : https://docs.docker.com/engine/reference/builder/
  /// - "RUN" : https://docs.docker.com/engine/reference/builder/
  /// - "CMD" : https://docs.docker.com/engine/reference/builder/
  /// - "LABEL" : https://docs.docker.com/engine/reference/builder/
  /// - "EXPOSE" : https://docs.docker.com/engine/reference/builder/
  /// - "ENV" : https://docs.docker.com/engine/reference/builder/
  /// - "ADD" : https://docs.docker.com/engine/reference/builder/
  /// - "COPY" : https://docs.docker.com/reference/builder/#copy
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

/// Details about the layer a package was found in.
class LayerDetails {
  /// The base images the layer is found within.
  core.List<BaseImage>? baseImages;

  /// The layer build command that was used to build the layer.
  ///
  /// This may not be found in all layers depending on how the container image
  /// is built.
  core.String? command;

  /// The diff ID (sha256 hash) of the layer in the container image.
  core.String? diffId;

  /// The index of the layer in the container image.
  core.int? index;

  LayerDetails({this.baseImages, this.command, this.diffId, this.index});

  LayerDetails.fromJson(core.Map json_)
    : this(
        baseImages:
            (json_['baseImages'] as core.List?)
                ?.map(
                  (value) => BaseImage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        command: json_['command'] as core.String?,
        diffId: json_['diffId'] as core.String?,
        index: json_['index'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseImages != null) 'baseImages': baseImages!,
    if (command != null) 'command': command!,
    if (diffId != null) 'diffId': diffId!,
    if (index != null) 'index': index!,
  };
}

/// License information.
typedef License = $License;

/// Response including listed occurrences for a note.
class ListNoteOccurrencesResponse {
  /// Token to receive the next page of notes.
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

/// Response including listed notes.
class ListNotesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// The occurrences requested
  core.List<Note>? notes;

  ListNotesResponse({this.nextPageToken, this.notes});

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
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (notes != null) 'notes': notes!,
  };
}

/// Response including listed active occurrences.
class ListOccurrencesResponse {
  /// The next pagination token in the list response.
  ///
  /// It should be used as `page_token` for the following request. An empty
  /// value means no more results.
  core.String? nextPageToken;

  /// The occurrences requested.
  core.List<Occurrence>? occurrences;

  ListOccurrencesResponse({this.nextPageToken, this.occurrences});

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
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (occurrences != null) 'occurrences': occurrences!,
  };
}

/// A list of scan configs for the project.
class ListScanConfigsResponse {
  /// A page token to pass in order to get more scan configs.
  core.String? nextPageToken;

  /// The set of scan configs.
  core.List<ScanConfig>? scanConfigs;

  ListScanConfigsResponse({this.nextPageToken, this.scanConfigs});

  ListScanConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        scanConfigs:
            (json_['scanConfigs'] as core.List?)
                ?.map(
                  (value) => ScanConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (scanConfigs != null) 'scanConfigs': scanConfigs!,
  };
}

/// An occurrence of a particular package installation found within a system's
/// filesystem.
///
/// e.g. glibc was found in /var/lib/dpkg/status
class Location {
  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting
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

/// Material is a material used in the generation of the provenance
class Material {
  /// digest is a map from a hash algorithm (e.g. sha256) to the value in the
  /// material
  core.Map<core.String, core.String>? digest;

  /// uri is the uri of the material
  core.String? uri;

  Material({this.digest, this.uri});

  Material.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (digest != null) 'digest': digest!,
    if (uri != null) 'uri': uri!,
  };
}

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

  Metadata.fromJson(core.Map json_)
    : this(
        buildFinishedOn: json_['buildFinishedOn'] as core.String?,
        buildInvocationId: json_['buildInvocationId'] as core.String?,
        buildStartedOn: json_['buildStartedOn'] as core.String?,
        completeness:
            json_.containsKey('completeness')
                ? Completeness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reproducible: json_['reproducible'] as core.bool?,
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
class NonCompliantFile {
  /// Command to display the non-compliant files.
  core.String? displayCommand;

  /// display_command is a single command that can be used to display a list of
  /// non compliant files.
  ///
  /// When there is no such command, we can also iterate a list of non compliant
  /// file using 'path'. Empty if `display_command` is set.
  core.String? path;

  /// Explains why a file is non compliant for a CIS check.
  core.String? reason;

  NonCompliantFile({this.displayCommand, this.path, this.reason});

  NonCompliantFile.fromJson(core.Map json_)
    : this(
        displayCommand: json_['displayCommand'] as core.String?,
        path: json_['path'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayCommand != null) 'displayCommand': displayCommand!,
    if (path != null) 'path': path!,
    if (reason != null) 'reason': reason!,
  };
}

/// Provides a detailed description of a `Note`.
class Note {
  /// A note describing an attestation role.
  AttestationAuthority? attestationAuthority;

  /// A note describing a base image.
  Basis? baseImage;

  /// Build provenance type for a verifiable build.
  BuildType? buildType;

  /// A note describing a compliance check.
  ComplianceNote? compliance;

  /// The time this note was created.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? createTime;

  /// A note describing something that can be deployed.
  Deployable? deployable;

  /// A note describing a provider/analysis type.
  Discovery? discovery;

  /// A note describing a dsse attestation note.
  DSSEAttestationNote? dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  core.String? expirationTime;

  /// This explicitly denotes which kind of note is specified.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown
  /// - "PACKAGE_VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD_DETAILS" : The note and occurrence assert build provenance.
  /// - "IMAGE_BASIS" : This represents an image basis relationship.
  /// - "PACKAGE_MANAGER" : This represents a package installed via a package
  /// manager.
  /// - "DEPLOYABLE" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION_AUTHORITY" : This represents a logical "role" that can
  /// attest to artifacts.
  /// - "UPGRADE" : This represents an available software upgrade.
  /// - "COMPLIANCE" : This represents a compliance check that can be applied to
  /// a resource.
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents a reference to an SBOM.
  /// - "SECRET" : This represents a secret.
  core.String? kind;

  /// A detailed description of this `Note`.
  core.String? longDescription;

  /// The name of the note in the form
  /// "projects/{provider_project_id}/notes/{NOTE_ID}"
  core.String? name;

  /// A note describing a package hosted by various package managers.
  Package? package;

  /// URLs associated with this note
  core.List<RelatedUrl>? relatedUrl;

  /// A note describing a software bill of materials.
  DocumentNote? sbom;

  /// A note describing a reference to an SBOM.
  SBOMReferenceNote? sbomReference;

  /// A note describing a secret.
  SecretNote? secret;

  /// A one sentence description of this `Note`.
  core.String? shortDescription;

  /// A note describing an SPDX File.
  FileNote? spdxFile;

  /// A note describing an SPDX Package.
  PackageInfoNote? spdxPackage;

  /// A note describing a relationship between SPDX elements.
  RelationshipNote? spdxRelationship;

  /// The time this note was last updated.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  core.String? updateTime;

  /// A note describing an upgrade.
  UpgradeNote? upgrade;

  /// A note describing a vulnerability assessment.
  VulnerabilityAssessmentNote? vulnerabilityAssessment;

  /// A package vulnerability type of note.
  VulnerabilityType? vulnerabilityType;

  Note({
    this.attestationAuthority,
    this.baseImage,
    this.buildType,
    this.compliance,
    this.createTime,
    this.deployable,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.kind,
    this.longDescription,
    this.name,
    this.package,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.secret,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.upgrade,
    this.vulnerabilityAssessment,
    this.vulnerabilityType,
  });

  Note.fromJson(core.Map json_)
    : this(
        attestationAuthority:
            json_.containsKey('attestationAuthority')
                ? AttestationAuthority.fromJson(
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
        buildType:
            json_.containsKey('buildType')
                ? BuildType.fromJson(
                  json_['buildType'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        compliance:
            json_.containsKey('compliance')
                ? ComplianceNote.fromJson(
                  json_['compliance'] as core.Map<core.String, core.dynamic>,
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
        dsseAttestation:
            json_.containsKey('dsseAttestation')
                ? DSSEAttestationNote.fromJson(
                  json_['dsseAttestation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        expirationTime: json_['expirationTime'] as core.String?,
        kind: json_['kind'] as core.String?,
        longDescription: json_['longDescription'] as core.String?,
        name: json_['name'] as core.String?,
        package:
            json_.containsKey('package')
                ? Package.fromJson(
                  json_['package'] as core.Map<core.String, core.dynamic>,
                )
                : null,
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
        secret:
            json_.containsKey('secret')
                ? SecretNote.fromJson(
                  json_['secret'] as core.Map<core.String, core.dynamic>,
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
        upgrade:
            json_.containsKey('upgrade')
                ? UpgradeNote.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerabilityAssessment:
            json_.containsKey('vulnerabilityAssessment')
                ? VulnerabilityAssessmentNote.fromJson(
                  json_['vulnerabilityAssessment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerabilityType:
            json_.containsKey('vulnerabilityType')
                ? VulnerabilityType.fromJson(
                  json_['vulnerabilityType']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attestationAuthority != null)
      'attestationAuthority': attestationAuthority!,
    if (baseImage != null) 'baseImage': baseImage!,
    if (buildType != null) 'buildType': buildType!,
    if (compliance != null) 'compliance': compliance!,
    if (createTime != null) 'createTime': createTime!,
    if (deployable != null) 'deployable': deployable!,
    if (discovery != null) 'discovery': discovery!,
    if (dsseAttestation != null) 'dsseAttestation': dsseAttestation!,
    if (expirationTime != null) 'expirationTime': expirationTime!,
    if (kind != null) 'kind': kind!,
    if (longDescription != null) 'longDescription': longDescription!,
    if (name != null) 'name': name!,
    if (package != null) 'package': package!,
    if (relatedUrl != null) 'relatedUrl': relatedUrl!,
    if (sbom != null) 'sbom': sbom!,
    if (sbomReference != null) 'sbomReference': sbomReference!,
    if (secret != null) 'secret': secret!,
    if (shortDescription != null) 'shortDescription': shortDescription!,
    if (spdxFile != null) 'spdxFile': spdxFile!,
    if (spdxPackage != null) 'spdxPackage': spdxPackage!,
    if (spdxRelationship != null) 'spdxRelationship': spdxRelationship!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upgrade != null) 'upgrade': upgrade!,
    if (vulnerabilityAssessment != null)
      'vulnerabilityAssessment': vulnerabilityAssessment!,
    if (vulnerabilityType != null) 'vulnerabilityType': vulnerabilityType!,
  };
}

/// `Occurrence` includes information about analysis occurrences for an image.
class Occurrence {
  /// Describes an attestation of an artifact.
  Attestation? attestation;

  /// Build details for a verifiable build.
  BuildDetails? buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  ComplianceOccurrence? compliance;

  /// The time this `Occurrence` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Describes the deployment of an artifact on a runtime.
  Deployment? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  Derived? derivedImage;

  /// Describes the initial scan status for this resource.
  Discovered? discovered;

  /// This represents a DSSE attestation occurrence
  DSSEAttestationOccurrence? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  Envelope? envelope;

  /// Describes the installation of a package on the linked resource.
  Installation? installation;

  /// This explicitly denotes which of the `Occurrence` details are specified.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown
  /// - "PACKAGE_VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD_DETAILS" : The note and occurrence assert build provenance.
  /// - "IMAGE_BASIS" : This represents an image basis relationship.
  /// - "PACKAGE_MANAGER" : This represents a package installed via a package
  /// manager.
  /// - "DEPLOYABLE" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION_AUTHORITY" : This represents a logical "role" that can
  /// attest to artifacts.
  /// - "UPGRADE" : This represents an available software upgrade.
  /// - "COMPLIANCE" : This represents a compliance check that can be applied to
  /// a resource.
  /// - "SBOM" : This represents a software bill of materials.
  /// - "SPDX_PACKAGE" : This represents an SPDX Package.
  /// - "SPDX_FILE" : This represents an SPDX File.
  /// - "SPDX_RELATIONSHIP" : This represents an SPDX Relationship.
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  /// - "VULNERABILITY_ASSESSMENT" : This represents a Vulnerability Assessment.
  /// - "SBOM_REFERENCE" : This represents a reference to an SBOM.
  /// - "SECRET" : This represents a secret.
  core.String? kind;

  /// The name of the `Occurrence` in the form
  /// "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
  ///
  /// Output only.
  core.String? name;

  /// An analysis note associated with this image, in the form
  /// "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a
  /// filter in list requests.
  core.String? noteName;

  /// A description of actions that can be taken to remedy the `Note`
  core.String? remediation;

  ///  The resource for which the `Occurrence` applies.
  Resource? resource;

  /// The unique URL of the image or the container for which the `Occurrence`
  /// applies.
  ///
  /// For example, https://gcr.io/project/image@sha256:foo This field can be
  /// used as a filter in list requests.
  core.String? resourceUrl;

  /// Describes a specific software bill of materials document.
  DocumentOccurrence? sbom;

  /// This represents an SBOM reference occurrence
  SBOMReferenceOccurrence? sbomReference;

  /// This represents a secret occurrence
  SecretOccurrence? secret;

  /// Describes a specific SPDX File.
  FileOccurrence? spdxFile;

  /// Describes a specific SPDX Package.
  PackageInfoOccurrence? spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  RelationshipOccurrence? spdxRelationship;

  /// The time this `Occurrence` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Describes an upgrade.
  UpgradeOccurrence? upgrade;

  /// Details of a security vulnerability note.
  VulnerabilityDetails? vulnerabilityDetails;

  Occurrence({
    this.attestation,
    this.buildDetails,
    this.compliance,
    this.createTime,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.dsseAttestation,
    this.envelope,
    this.installation,
    this.kind,
    this.name,
    this.noteName,
    this.remediation,
    this.resource,
    this.resourceUrl,
    this.sbom,
    this.sbomReference,
    this.secret,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.updateTime,
    this.upgrade,
    this.vulnerabilityDetails,
  });

  Occurrence.fromJson(core.Map json_)
    : this(
        attestation:
            json_.containsKey('attestation')
                ? Attestation.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        buildDetails:
            json_.containsKey('buildDetails')
                ? BuildDetails.fromJson(
                  json_['buildDetails'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        compliance:
            json_.containsKey('compliance')
                ? ComplianceOccurrence.fromJson(
                  json_['compliance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        deployment:
            json_.containsKey('deployment')
                ? Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        derivedImage:
            json_.containsKey('derivedImage')
                ? Derived.fromJson(
                  json_['derivedImage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        discovered:
            json_.containsKey('discovered')
                ? Discovered.fromJson(
                  json_['discovered'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dsseAttestation:
            json_.containsKey('dsseAttestation')
                ? DSSEAttestationOccurrence.fromJson(
                  json_['dsseAttestation']
                      as core.Map<core.String, core.dynamic>,
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
                ? Installation.fromJson(
                  json_['installation'] as core.Map<core.String, core.dynamic>,
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
        resourceUrl: json_['resourceUrl'] as core.String?,
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
        secret:
            json_.containsKey('secret')
                ? SecretOccurrence.fromJson(
                  json_['secret'] as core.Map<core.String, core.dynamic>,
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
        upgrade:
            json_.containsKey('upgrade')
                ? UpgradeOccurrence.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vulnerabilityDetails:
            json_.containsKey('vulnerabilityDetails')
                ? VulnerabilityDetails.fromJson(
                  json_['vulnerabilityDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attestation != null) 'attestation': attestation!,
    if (buildDetails != null) 'buildDetails': buildDetails!,
    if (compliance != null) 'compliance': compliance!,
    if (createTime != null) 'createTime': createTime!,
    if (deployment != null) 'deployment': deployment!,
    if (derivedImage != null) 'derivedImage': derivedImage!,
    if (discovered != null) 'discovered': discovered!,
    if (dsseAttestation != null) 'dsseAttestation': dsseAttestation!,
    if (envelope != null) 'envelope': envelope!,
    if (installation != null) 'installation': installation!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (noteName != null) 'noteName': noteName!,
    if (remediation != null) 'remediation': remediation!,
    if (resource != null) 'resource': resource!,
    if (resourceUrl != null) 'resourceUrl': resourceUrl!,
    if (sbom != null) 'sbom': sbom!,
    if (sbomReference != null) 'sbomReference': sbomReference!,
    if (secret != null) 'secret': secret!,
    if (spdxFile != null) 'spdxFile': spdxFile!,
    if (spdxPackage != null) 'spdxPackage': spdxPackage!,
    if (spdxRelationship != null) 'spdxRelationship': spdxRelationship!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upgrade != null) 'upgrade': upgrade!,
    if (vulnerabilityDetails != null)
      'vulnerabilityDetails': vulnerabilityDetails!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// This represents a particular package that is distributed over various
/// channels.
///
/// e.g. glibc (aka libc6) is distributed by many, at various versions.
class Package {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  ///
  /// Architecture will be blank for language packages.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture
  /// - "X86" : X86 architecture
  /// - "X64" : X64 architecture
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
  VulnerabilityLocation? affectedLocation;

  /// The distro or language system assigned severity for this vulnerability
  /// when that is available and note provider assigned severity when distro or
  /// language system has not yet assigned a severity for this vulnerability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? effectiveSeverity;

  /// The location of the available fix for vulnerability.
  VulnerabilityLocation? fixedLocation;

  /// The type of package (e.g. OS, MAVEN, GO).
  core.String? packageType;
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
class Product {
  /// Token that identifies a product so that it can be referred to from other
  /// parts in the document.
  ///
  /// There is no predefined format as long as it uniquely identifies a group in
  /// the context of the current document.
  core.String? id;

  /// Helps in identifying the underlying product.
  IdentifierHelper? identifierHelper;

  /// Name of the product.
  core.String? name;

  Product({this.id, this.identifierHelper, this.name});

  Product.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        identifierHelper:
            json_.containsKey('identifierHelper')
                ? IdentifierHelper.fromJson(
                  json_['identifierHelper']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (identifierHelper != null) 'identifierHelper': identifierHelper!,
    if (name != null) 'name': name!,
  };
}

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

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
class Recipe {
  /// Collection of all external inputs that influenced the build on top of
  /// recipe.definedInMaterial and recipe.entryPoint.
  ///
  /// For example, if the recipe type were "make", then this might be the flags
  /// passed to make aside from the target, which is captured in
  /// recipe.entryPoint.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? arguments;

  /// Index in materials containing the recipe steps that are not implied by
  /// recipe.type.
  ///
  /// For example, if the recipe type were "make", then this would point to the
  /// source containing the Makefile, not the make program itself. Set to -1 if
  /// the recipe doesn't come from a material, as zero is default unset value
  /// for int64.
  core.String? definedInMaterial;

  /// String identifying the entry point into the build.
  ///
  /// This is often a path to a configuration file and/or a target label within
  /// that file. The syntax and meaning are defined by recipe.type. For example,
  /// if the recipe type were "make", then this would reference the directory in
  /// which to run make as well as which target to use.
  core.String? entryPoint;

  /// Any other builder-controlled inputs necessary for correctly evaluating the
  /// recipe.
  ///
  /// Usually only needed for reproducing the build but not evaluated as part of
  /// policy.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? environment;

  /// URI indicating what type of recipe was performed.
  ///
  /// It determines the meaning of recipe.entryPoint, recipe.arguments,
  /// recipe.environment, and materials.
  core.String? type;

  Recipe({
    this.arguments,
    this.definedInMaterial,
    this.entryPoint,
    this.environment,
    this.type,
  });

  Recipe.fromJson(core.Map json_)
    : this(
        arguments:
            (json_['arguments'] as core.List?)
                ?.map((value) => value as core.Map<core.String, core.dynamic>)
                .toList(),
        definedInMaterial: json_['definedInMaterial'] as core.String?,
        entryPoint: json_['entryPoint'] as core.String?,
        environment:
            (json_['environment'] as core.List?)
                ?.map((value) => value as core.Map<core.String, core.dynamic>)
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arguments != null) 'arguments': arguments!,
    if (definedInMaterial != null) 'definedInMaterial': definedInMaterial!,
    if (entryPoint != null) 'entryPoint': entryPoint!,
    if (environment != null) 'environment': environment!,
    if (type != null) 'type': type!,
  };
}

/// Metadata for any related URL information
class RelatedUrl {
  /// Label to describe usage of the URL
  core.String? label;

  /// Specific URL to associate with the note
  core.String? url;

  RelatedUrl({this.label, this.url});

  RelatedUrl.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (label != null) 'label': label!,
    if (url != null) 'url': url!,
  };
}

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
  URI? remediationUri;

  Remediation({this.details, this.remediationType, this.remediationUri});

  Remediation.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        remediationType: json_['remediationType'] as core.String?,
        remediationUri:
            json_.containsKey('remediationUri')
                ? URI.fromJson(
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

/// RepoSource describes the location of the source in a Google Cloud Source
/// Repository.
class RepoSource {
  /// Name of the branch to build.
  core.String? branchName;

  /// Explicit commit SHA to build.
  core.String? commitSha;

  /// ID of the project that owns the repo.
  core.String? projectId;

  /// Name of the repo.
  core.String? repoName;

  /// Name of the tag to build.
  core.String? tagName;

  RepoSource({
    this.branchName,
    this.commitSha,
    this.projectId,
    this.repoName,
    this.tagName,
  });

  RepoSource.fromJson(core.Map json_)
    : this(
        branchName: json_['branchName'] as core.String?,
        commitSha: json_['commitSha'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        repoName: json_['repoName'] as core.String?,
        tagName: json_['tagName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (branchName != null) 'branchName': branchName!,
    if (commitSha != null) 'commitSha': commitSha!,
    if (projectId != null) 'projectId': projectId!,
    if (repoName != null) 'repoName': repoName!,
    if (tagName != null) 'tagName': tagName!,
  };
}

///  Resource is an entity that can have metadata.
///
/// E.g., a Docker image.
class Resource {
  /// The hash of the resource content.
  ///
  /// E.g., the Docker digest.
  Hash? contentHash;

  /// The name of the resource.
  ///
  /// E.g., the name of a Docker image - "Debian".
  core.String? name;

  /// The unique URI of the resource.
  ///
  /// E.g., "https://gcr.io/project/image@sha256:foo" for a Docker image.
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
class SBOMStatus {
  /// If there was an error generating an SBOM, this will indicate what that
  /// error was.
  ///
  /// Output only.
  core.String? error;

  /// The progress of the SBOM generation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SBOM_STATE_UNSPECIFIED" : Default unknown state.
  /// - "PENDING" : SBOM scanning is pending.
  /// - "COMPLETE" : SBOM scanning has completed.
  core.String? sbomState;

  SBOMStatus({this.error, this.sbomState});

  SBOMStatus.fromJson(core.Map json_)
    : this(
        error: json_['error'] as core.String?,
        sbomState: json_['sbomState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (sbomState != null) 'sbomState': sbomState!,
  };
}

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

/// Indicates various scans and whether they are turned on or off.
class ScanConfig {
  /// The time this scan config was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A human-readable description of what the `ScanConfig` does.
  ///
  /// Output only.
  core.String? description;

  /// Indicates whether the Scan is enabled.
  core.bool? enabled;

  /// The name of the ScanConfig in the form
  /// “projects/{project_id}/scanConfigs/{scan_config_id}".
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

  ScanConfig.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (enabled != null) 'enabled': enabled!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The location of the secret.
class SecretLocation {
  /// The secret is found from a file.
  FileLocation? fileLocation;

  SecretLocation({this.fileLocation});

  SecretLocation.fromJson(core.Map json_)
    : this(
        fileLocation:
            json_.containsKey('fileLocation')
                ? FileLocation.fromJson(
                  json_['fileLocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fileLocation != null) 'fileLocation': fileLocation!,
  };
}

/// The note representing a secret.
typedef SecretNote = $Empty;

/// The occurrence provides details of a secret.
class SecretOccurrence {
  /// Type of secret.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SECRET_KIND_UNSPECIFIED" : Unspecified
  /// - "SECRET_KIND_UNKNOWN" : The secret kind is unknown.
  /// - "SECRET_KIND_GCP_SERVICE_ACCOUNT_KEY" : A GCP service account key per:
  /// https://cloud.google.com/iam/docs/creating-managing-service-account-keys
  core.String? kind;

  /// Locations where the secret is detected.
  ///
  /// Optional.
  core.List<SecretLocation>? locations;

  /// Status of the secret.
  ///
  /// Optional.
  core.List<SecretStatus>? statuses;

  SecretOccurrence({this.kind, this.locations, this.statuses});

  SecretOccurrence.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => SecretLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        statuses:
            (json_['statuses'] as core.List?)
                ?.map(
                  (value) => SecretStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (locations != null) 'locations': locations!,
    if (statuses != null) 'statuses': statuses!,
  };
}

/// The status of the secret with a timestamp.
typedef SecretStatus = $SecretStatus;

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

/// The number of occurrences created for a specific severity.
class SeverityCount {
  /// The number of occurrences with the severity.
  core.String? count;

  /// The severity of the occurrences.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? severity;

  SeverityCount({this.count, this.severity});

  SeverityCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (severity != null) 'severity': severity!,
  };
}

/// SlsaBuilder encapsulates the identity of the builder of this provenance.
class SlsaBuilder {
  /// id is the id of the slsa provenance builder
  core.String? id;

  SlsaBuilder({this.id});

  SlsaBuilder.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {if (id != null) 'id': id!};
}

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

  SlsaMetadata.fromJson(core.Map json_)
    : this(
        buildFinishedOn: json_['buildFinishedOn'] as core.String?,
        buildInvocationId: json_['buildInvocationId'] as core.String?,
        buildStartedOn: json_['buildStartedOn'] as core.String?,
        completeness:
            json_.containsKey('completeness')
                ? SlsaCompleteness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        reproducible: json_['reproducible'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
    if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
    if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
    if (completeness != null) 'completeness': completeness!,
    if (reproducible != null) 'reproducible': reproducible!,
  };
}

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenance {
  /// builder is the builder of this provenance
  SlsaBuilder? builder;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  ///
  /// This is considered to be incomplete unless metadata.completeness.materials
  /// is true. Unset or null is equivalent to empty.
  core.List<Material>? materials;

  /// metadata is the metadata of the provenance
  SlsaMetadata? metadata;

  /// Identifies the configuration used for the build.
  ///
  /// When combined with materials, this SHOULD fully describe the build, such
  /// that re-running this recipe results in bit-for-bit identical output (if
  /// the build is reproducible).
  SlsaRecipe? recipe;

  SlsaProvenance({this.builder, this.materials, this.metadata, this.recipe});

  SlsaProvenance.fromJson(core.Map json_)
    : this(
        builder:
            json_.containsKey('builder')
                ? SlsaBuilder.fromJson(
                  json_['builder'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        materials:
            (json_['materials'] as core.List?)
                ?.map(
                  (value) => Material.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? SlsaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        recipe:
            json_.containsKey('recipe')
                ? SlsaRecipe.fromJson(
                  json_['recipe'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builder != null) 'builder': builder!,
    if (materials != null) 'materials': materials!,
    if (metadata != null) 'metadata': metadata!,
    if (recipe != null) 'recipe': recipe!,
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

/// SlsaProvenanceZeroTwo is the slsa provenance as defined by the slsa spec.
///
/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo {
  /// Lists the steps in the build.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? buildConfig;

  /// URI indicating what type of build was performed.
  core.String? buildType;

  /// Identifies the entity that executed the recipe, which is trusted to have
  /// correctly performed the operation and populated this provenance.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder?
  builder;

  /// Identifies the event that kicked off the build.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation?
  invocation;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  core.List<
    GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
  >?
  materials;

  /// Other properties of the build.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata?
  metadata;

  SlsaProvenanceZeroTwo({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  SlsaProvenanceZeroTwo.fromJson(core.Map json_)
    : this(
        buildConfig:
            json_.containsKey('buildConfig')
                ? json_['buildConfig'] as core.Map<core.String, core.dynamic>
                : null,
        buildType: json_['buildType'] as core.String?,
        builder:
            json_.containsKey('builder')
                ? GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
                  json_['builder'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        invocation:
            json_.containsKey('invocation')
                ? GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
                  json_['invocation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        materials:
            (json_['materials'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
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
  core.List<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>?
  additionalContexts;

  /// If provided, the input binary artifacts for the build came from this
  /// location.
  StorageSource? artifactStorageSource;

  /// If provided, the source code used for the build came from this location.
  GoogleDevtoolsContaineranalysisV1alpha1SourceContext? context;

  /// Hash(es) of the build source, which can be used to verify that the
  /// original source integrity was maintained in the build.
  ///
  /// The keys to this map are file paths used as build source and the values
  /// contain the hash values for those files. If the build source came in a
  /// single package such as a gzipped tarfile (.tar.gz), the FileHash will be
  /// for the single path to that file.
  core.Map<core.String, FileHashes>? fileHashes;

  /// If provided, get source from this location in a Cloud Repo.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  RepoSource? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  StorageSource? storageSource;

  Source({
    this.additionalContexts,
    this.artifactStorageSource,
    this.context,
    this.fileHashes,
    this.repoSource,
    this.storageSource,
  });

  Source.fromJson(core.Map json_)
    : this(
        additionalContexts:
            (json_['additionalContexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        artifactStorageSource:
            json_.containsKey('artifactStorageSource')
                ? StorageSource.fromJson(
                  json_['artifactStorageSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        context:
            json_.containsKey('context')
                ? GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromJson(
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
        repoSource:
            json_.containsKey('repoSource')
                ? RepoSource.fromJson(
                  json_['repoSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageSource:
            json_.containsKey('storageSource')
                ? StorageSource.fromJson(
                  json_['storageSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalContexts != null) 'additionalContexts': additionalContexts!,
    if (artifactStorageSource != null)
      'artifactStorageSource': artifactStorageSource!,
    if (context != null) 'context': context!,
    if (fileHashes != null) 'fileHashes': fileHashes!,
    if (repoSource != null) 'repoSource': repoSource!,
    if (storageSource != null) 'storageSource': storageSource!,
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

/// StorageSource describes the location of the source in an archive file in
/// Google Cloud Storage.
class StorageSource {
  /// Google Cloud Storage bucket containing source (see
  /// [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  core.String? bucket;

  /// Google Cloud Storage generation for the object.
  core.String? generation;

  /// Google Cloud Storage object containing source.
  core.String? object;

  StorageSource({this.bucket, this.generation, this.object});

  StorageSource.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        generation: json_['generation'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (generation != null) 'generation': generation!,
    if (object != null) 'object': object!,
  };
}

/// Subject refers to the subject of the intoto statement
class Subject {
  /// "": "" Algorithms can be e.g. sha256, sha512 See
  /// https://github.com/in-toto/attestation/blob/main/spec/v1/digest_set.md.
  core.Map<core.String, core.String>? digest;

  /// name is the name of the Subject used here
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

/// An URI message.
class URI {
  /// A label for the URI.
  core.String? label;

  /// The unique resource identifier.
  core.String? uri;

  URI({this.label, this.uri});

  URI.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (label != null) 'label': label!,
    if (uri != null) 'uri': uri!,
  };
}

/// Request for updating an existing operation
class UpdateOperationRequest {
  /// The operation to create.
  Operation? operation;

  /// The fields to update.
  core.String? updateMask;

  UpdateOperationRequest({this.operation, this.updateMask});

  UpdateOperationRequest.fromJson(core.Map json_)
    : this(
        operation:
            json_.containsKey('operation')
                ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (operation != null) 'operation': operation!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// The Upgrade Distribution represents metadata about the Upgrade for each
/// operating system (CPE).
///
/// Some distributions have additional metadata around updates, classifying them
/// into various categories and severities.
class UpgradeDistribution {
  /// The operating system classification of this Upgrade, as specified by the
  /// upstream operating system upgrade feed.
  core.String? classification;

  /// Required - The specific operating system this metadata applies to.
  ///
  /// See https://cpe.mitre.org/specification/.
  core.String? cpeUri;

  /// The cve that would be resolved by this upgrade.
  core.List<core.String>? cve;

  /// The severity as specified by the upstream operating system.
  core.String? severity;

  UpgradeDistribution({
    this.classification,
    this.cpeUri,
    this.cve,
    this.severity,
  });

  UpgradeDistribution.fromJson(core.Map json_)
    : this(
        classification: json_['classification'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        cve:
            (json_['cve'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (classification != null) 'classification': classification!,
    if (cpeUri != null) 'cpeUri': cpeUri!,
    if (cve != null) 'cve': cve!,
    if (severity != null) 'severity': severity!,
  };
}

/// An Upgrade Note represents a potential upgrade of a package to a given
/// version.
///
/// For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
/// there will be a Upgrade Note.
class UpgradeNote {
  /// Metadata about the upgrade for each specific operating system.
  core.List<UpgradeDistribution>? distributions;

  /// Required - The package this Upgrade is for.
  core.String? package;

  /// Required - The version of the package in machine + human readable form.
  Version? version;

  UpgradeNote({this.distributions, this.package, this.version});

  UpgradeNote.fromJson(core.Map json_)
    : this(
        distributions:
            (json_['distributions'] as core.List?)
                ?.map(
                  (value) => UpgradeDistribution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        package: json_['package'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (distributions != null) 'distributions': distributions!,
    if (package != null) 'package': package!,
    if (version != null) 'version': version!,
  };
}

/// An Upgrade Occurrence represents that a specific resource_url could install
/// a specific upgrade.
///
/// This presence is supplied via local sources (i.e. it is present in the
/// mirror and the running system has noticed its availability).
class UpgradeOccurrence {
  /// Metadata about the upgrade for available for the specific operating system
  /// for the resource_url.
  ///
  /// This allows efficient filtering, as well as making it easier to use the
  /// occurrence.
  UpgradeDistribution? distribution;

  /// Required - The package this Upgrade is for.
  core.String? package;

  /// Required - The version of the package in a machine + human readable form.
  Version? parsedVersion;

  UpgradeOccurrence({this.distribution, this.package, this.parsedVersion});

  UpgradeOccurrence.fromJson(core.Map json_)
    : this(
        distribution:
            json_.containsKey('distribution')
                ? UpgradeDistribution.fromJson(
                  json_['distribution'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        package: json_['package'] as core.String?,
        parsedVersion:
            json_.containsKey('parsedVersion')
                ? Version.fromJson(
                  json_['parsedVersion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (distribution != null) 'distribution': distribution!,
    if (package != null) 'package': package!,
    if (parsedVersion != null) 'parsedVersion': parsedVersion!,
  };
}

/// Version contains structured information about the version of the package.
///
/// For a discussion of this in Debian/Ubuntu:
/// http://serverfault.com/questions/604541/debian-packages-version-convention
/// For a discussion of this in Redhat/Fedora/Centos:
/// http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  core.int? epoch;

  /// Whether this version is vulnerable, when defining the version bounds.
  ///
  /// For example, if the minimum version is 2.0, inclusive=true would say 2.0
  /// is vulnerable, while inclusive=false would say it's not
  core.bool? inclusive;

  /// Distinguish between sentinel MIN/MAX versions and normal versions.
  ///
  /// If kind is not NORMAL, then the other fields are ignored.
  /// Possible string values are:
  /// - "NORMAL" : A standard package version, defined by the other fields.
  /// - "MINIMUM" : A special version representing negative infinity, other
  /// fields are ignored.
  /// - "MAXIMUM" : A special version representing positive infinity, other
  /// fields are ignored.
  core.String? kind;

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
  ///
  /// These uris have additional information about the vulnerability and the
  /// assessment itself. E.g. Link to a document which details how this
  /// assessment concluded the state of this vulnerability.
  core.List<URI>? relatedUris;

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
                  (value) => URI.fromJson(
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

/// A single VulnerabilityAssessmentNote represents one particular product's
/// vulnerability assessment for one CVE.
///
/// Multiple VulnerabilityAssessmentNotes together form a Vex statement. Please
/// go/sds-vex-example for a sample Vex statement in the CSAF format.
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

/// The status of a vulnerability attestation generation.
class VulnerabilityAttestation {
  /// If failure, the error reason for why the attestation generation failed.
  ///
  /// Output only.
  core.String? error;

  /// The last time we attempted to generate an attestation.
  ///
  /// Output only.
  core.String? lastAttemptTime;

  /// The success/failure state of the latest attestation attempt.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VULNERABILITY_ATTESTATION_STATE_UNSPECIFIED" : Default unknown state.
  /// - "SUCCESS" : Attestation was successfully generated and stored.
  /// - "FAILURE" : Attestation was unsuccessfully generated and stored.
  core.String? state;

  VulnerabilityAttestation({this.error, this.lastAttemptTime, this.state});

  VulnerabilityAttestation.fromJson(core.Map json_)
    : this(
        error: json_['error'] as core.String?,
        lastAttemptTime: json_['lastAttemptTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (lastAttemptTime != null) 'lastAttemptTime': lastAttemptTime!,
    if (state != null) 'state': state!,
  };
}

/// Used by Occurrence to point to where the vulnerability exists and how to fix
/// it.
class VulnerabilityDetails {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0-10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double? cvssScore;

  /// The CVSS v2 score of this vulnerability.
  CVSS? cvssV2;

  /// The CVSS v3 score of this vulnerability.
  CVSS? cvssV3;

  /// CVSS version used to populate cvss_score and severity.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CVSS_VERSION_UNSPECIFIED" : CVSS Version unspecified.
  /// - "CVSS_VERSION_2" : CVSS v2.
  /// - "CVSS_VERSION_3" : CVSS v3.
  core.String? cvssVersion;

  /// The distro assigned severity for this vulnerability when that is available
  /// and note provider assigned severity when distro has not yet assigned a
  /// severity for this vulnerability.
  ///
  /// When there are multiple package issues for this vulnerability, they can
  /// have different effective severities because some might come from the
  /// distro and some might come from installed language packs (e.g. Maven JARs
  /// or Go binaries). For this reason, it is advised to use the effective
  /// severity on the PackageIssue level, as this field may eventually be
  /// deprecated. In the case where multiple PackageIssues have different
  /// effective severities, the one set here will be the highest severity of any
  /// of the PackageIssues.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? effectiveSeverity;

  /// Occurrence-specific extra details about the vulnerability.
  core.String? extraDetails;

  /// The set of affected locations and their fixes (if available) within the
  /// associated resource.
  core.List<PackageIssue>? packageIssue;

  /// The note provider assigned Severity of the vulnerability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? severity;

  /// The type of package; whether native or non native(ruby gems, node.js
  /// packages etc).
  ///
  /// This may be deprecated in the future because we can have multiple
  /// PackageIssues with different package types.
  core.String? type;

  /// VexAssessment provides all publisher provided Vex information that is
  /// related to this vulnerability for this resource.
  VexAssessment? vexAssessment;

  VulnerabilityDetails({
    this.cvssScore,
    this.cvssV2,
    this.cvssV3,
    this.cvssVersion,
    this.effectiveSeverity,
    this.extraDetails,
    this.packageIssue,
    this.severity,
    this.type,
    this.vexAssessment,
  });

  VulnerabilityDetails.fromJson(core.Map json_)
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
        packageIssue:
            (json_['packageIssue'] as core.List?)
                ?.map(
                  (value) => PackageIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        severity: json_['severity'] as core.String?,
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
    if (packageIssue != null) 'packageIssue': packageIssue!,
    if (severity != null) 'severity': severity!,
    if (type != null) 'type': type!,
    if (vexAssessment != null) 'vexAssessment': vexAssessment!,
  };
}

/// The location of the vulnerability
class VulnerabilityLocation {
  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) format.
  ///
  /// Examples include distro or storage location for vulnerable jar. This field
  /// can be used as a filter in list requests.
  core.String? cpeUri;

  /// The file location at which this package was found.
  core.List<FileLocation>? fileLocation;

  /// The package being described.
  core.String? package;

  /// The version of the package being described.
  ///
  /// This field can be used as a filter in list requests.
  Version? version;

  VulnerabilityLocation({
    this.cpeUri,
    this.fileLocation,
    this.package,
    this.version,
  });

  VulnerabilityLocation.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        fileLocation:
            (json_['fileLocation'] as core.List?)
                ?.map(
                  (value) => FileLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
    if (fileLocation != null) 'fileLocation': fileLocation!,
    if (package != null) 'package': package!,
    if (version != null) 'version': version!,
  };
}

/// VulnerabilityType provides metadata about a security vulnerability.
class VulnerabilityType {
  /// The CVSS score for this Vulnerability.
  core.double? cvssScore;

  /// The full description of the CVSS for version 2.
  CVSS? cvssV2;

  /// CVSS version used to populate cvss_score and severity.
  /// Possible string values are:
  /// - "CVSS_VERSION_UNSPECIFIED" : CVSS Version unspecified.
  /// - "CVSS_VERSION_2" : CVSS v2.
  /// - "CVSS_VERSION_3" : CVSS v3.
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

  /// Note provider assigned impact of the vulnerability
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown Impact
  /// - "MINIMAL" : Minimal Impact
  /// - "LOW" : Low Impact
  /// - "MEDIUM" : Medium Impact
  /// - "HIGH" : High Impact
  /// - "CRITICAL" : Critical Impact
  core.String? severity;

  VulnerabilityType({
    this.cvssScore,
    this.cvssV2,
    this.cvssVersion,
    this.cwe,
    this.details,
    this.severity,
  });

  VulnerabilityType.fromJson(core.Map json_)
    : this(
        cvssScore: (json_['cvssScore'] as core.num?)?.toDouble(),
        cvssV2:
            json_.containsKey('cvssV2')
                ? CVSS.fromJson(
                  json_['cvssV2'] as core.Map<core.String, core.dynamic>,
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
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cvssScore != null) 'cvssScore': cvssScore!,
    if (cvssV2 != null) 'cvssV2': cvssV2!,
    if (cvssVersion != null) 'cvssVersion': cvssVersion!,
    if (cwe != null) 'cwe': cwe!,
    if (details != null) 'details': details!,
    if (severity != null) 'severity': severity!,
  };
}
